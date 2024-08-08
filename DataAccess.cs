using System;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;
using System.Diagnostics;
using System.Linq;
using System.Web;

namespace ST10141464POE
{
    public class DataAccess
    {
        static string connectionString = "Data Source = clouddatabase1.database.windows.net; Initial Catalog = KhumaloCraft_2024-06-23T16-10Z; User ID =Samkelo; Password=SamRock28";
        static SqlConnection databaseConnection = new SqlConnection(connectionString);
        static SqlCommand command;

        public void ConnectToDatabase()
        {
            if (databaseConnection.State == ConnectionState.Closed)
            {
                databaseConnection.Open();
            }
        }

        public void DisconnectFromDatabase()
        {
            if (databaseConnection.State == ConnectionState.Open)
            {
                databaseConnection.Close();
            }
        }

        public void SignUp(string name, string password, string email)
        {
            try
            {
                ConnectToDatabase();
                string sql = "INSERT INTO Users(name, email, password, staff) VALUES (@name, @email, @password, @staff)";
                command = new SqlCommand(sql, databaseConnection);
                command.Parameters.AddWithValue("@name", name);
                command.Parameters.AddWithValue("@password", password);
                command.Parameters.AddWithValue("@email", email);
                command.Parameters.AddWithValue("@staff", "no");
                int rowsAffected = command.ExecuteNonQuery();

                if (rowsAffected > 0)
                {
                    
                }
                else
                {
                    
                }
            }
            catch (Exception ex)
            {
                
            }
            finally
            {
                DisconnectFromDatabase();
            }
        }
        public User LoginUser(string email, string password)
        {
            try
            {
                ConnectToDatabase();
                string sql = "SELECT * FROM Users WHERE email = @Email AND password = @Password";
                command = new SqlCommand(sql, databaseConnection);
                command.Parameters.AddWithValue("@Email", email);
                command.Parameters.AddWithValue("@Password", password);
                SqlDataAdapter adapter = new SqlDataAdapter(command);
                DataTable dataTable = new DataTable();
                adapter.Fill(dataTable);

                if (dataTable.Rows.Count == 0)
                {
                    return null;
                }

                User temp = new User
                {
                    email = dataTable.Rows[0]["email"].ToString(),
                    name = dataTable.Rows[0]["name"].ToString(),
                    staff = dataTable.Rows[0]["staff"].ToString().Equals("yes"),
                    id = Convert.ToInt32(dataTable.Rows[0]["userID"].ToString())
                };

                // Store username in session
                HttpContext.Current.Session["Username"] = temp.name;

                return temp;
            }
            catch (Exception ex)
            {
                // Log or handle the error
                return null;
            }
            finally
            {
                DisconnectFromDatabase();
            }
        }

        public List<Product> GetProducts()
        {
            List<Product> menu = new List<Product>();
            try
            {
                ConnectToDatabase();
                string sql = "SELECT * FROM Product";
                command = new SqlCommand(sql, databaseConnection);
                SqlDataAdapter dataAdapter = new SqlDataAdapter(command);
                DataTable dataTable = new DataTable();
                dataAdapter.Fill(dataTable);

                foreach (DataRow row in dataTable.Rows)
                {
                    menu.Add(new Product
                    {
                        productID = Convert.ToInt32(row["productID"]),
                        name = row["name"].ToString(),
                        description = row["description"].ToString(),
                        price = Convert.ToDouble(row["price"]),
                        imageURL = row["imageURL"].ToString(),
                        categoryName = row["categoryName"].ToString(),
                        AvailabilityStatus = row["AvailabilityStatus"].ToString(),
                    });
                }
            }
            catch (Exception ex)
            {

                Debug.WriteLine("Error in GetProducts: " + ex.Message);
            }
            finally
            {
                DisconnectFromDatabase();
            }
            return menu;
        }


        public void SubmitOrder(List<Product> cart)
        {
            double total = 0;
            string orderString = "";
            foreach (Product item in cart)
            {
                total += item.price;
                orderString += $"{item.name},";
            }

            databaseConnection.Open();
            string sql = "INSERT INTO [transactions] (orderTime, orderTotal, orderDetails, userID, status) VALUES (@orderTime, @orderTotal, @orderDetails, @userID, @status)";
            command = new SqlCommand(sql, databaseConnection);
            command.Parameters.AddWithValue("@orderTime", DateTime.Now);
            command.Parameters.AddWithValue("@orderTotal", total);
            command.Parameters.AddWithValue("@orderDetails", orderString);
            command.Parameters.AddWithValue("@userID", UserHolder.loggedInUser.id);
            command.Parameters.AddWithValue("@status", "open");
            command.ExecuteNonQuery();
            databaseConnection.Close();
        }
        public List<Order> GetAllOrders()
        {
            List<Order> orders = new List<Order>();
            databaseConnection.Open();
            string sql = "SELECT * FROM [order]";
            command = new SqlCommand(sql, databaseConnection);
            command.ExecuteNonQuery();
            SqlDataAdapter adapter = new SqlDataAdapter(command);
            DataTable dataTable = new DataTable();
            adapter.Fill(dataTable);
            databaseConnection.Close();
            foreach (DataRow row in dataTable.Rows)
            {
                orders.Add(new Order
                {
                    orderID = Convert.ToInt32(row["orderID"].ToString()),
                    orderTime = DateTime.Parse(row["orderTime"].ToString()),
                    orderTotal = Double.Parse(row["orderTotal"].ToString()),
                    orderDetails = row["orderDetails"].ToString(),
                    userID = Convert.ToInt32(row["UserID"].ToString()),
                    status = row["status"].ToString()


                });
            }
            return orders;
        }
        public List<Order> GetUserOrder(int userID)
        {
            List<Order> orders = new List<Order>();
            databaseConnection.Open();
            string sql = "SELECT * FROM [transactions] WHERE userID = @userID";
            command = new SqlCommand(sql, databaseConnection);
            command.Parameters.AddWithValue("@userID", userID);
            command.ExecuteNonQuery();
            SqlDataAdapter adapter = new SqlDataAdapter(command);
            DataTable dataTable = new DataTable();
            adapter.Fill(dataTable);
            databaseConnection.Close();
            foreach (DataRow row in dataTable.Rows)
            {
                orders.Add(new Order
                {
                    orderID = Convert.ToInt32(row["orderID"].ToString()),
                    orderTime = DateTime.Parse(row["orderTime"].ToString()),
                    orderTotal = Double.Parse(row["orderTotal"].ToString()),
                    orderDetails = row["orderDetails"].ToString(),
                    userID = Convert.ToInt32(row["UserID"].ToString()),
                    status = row["status"].ToString()


                });
            }
            return orders;
        }
        public Order GetOrderByID(int orderID)
        {
            Order order = null;
            using (SqlConnection databaseConnection = new SqlConnection(connectionString))
            {
                databaseConnection.Open();
                string sql = "SELECT * FROM [transactions] WHERE orderID = @orderID";
                SqlCommand command = new SqlCommand(sql, databaseConnection);
                command.Parameters.AddWithValue("@orderID", orderID);

                SqlDataAdapter adapter = new SqlDataAdapter(command);
                DataTable dataTable = new DataTable();
                adapter.Fill(dataTable);
                databaseConnection.Close();

                if (dataTable.Rows.Count > 0)
                {
                    DataRow row = dataTable.Rows[0];
                    order = new Order
                    {
                        orderID = Convert.ToInt32(row["orderID"]),
                        orderTime = DateTime.Parse(row["orderTime"].ToString()),
                        orderTotal = Double.Parse(row["orderTotal"].ToString()),
                        orderDetails = row["orderDetails"].ToString(),
                        userID = Convert.ToInt32(row["userID"]),
                        status = row["status"].ToString()
                    };
                }
            }
            return order;
        }

        public void UpdateOrder(int orderID, string status)
        {
            using (SqlConnection databaseConnection = new SqlConnection(connectionString))
            {
                databaseConnection.Open();
                string sql = "UPDATE [transactions] SET status = @status WHERE orderID = @orderID";
                SqlCommand command = new SqlCommand(sql, databaseConnection);
                command.Parameters.AddWithValue("@orderID", orderID);
                command.Parameters.AddWithValue("@status", status);
                command.ExecuteNonQuery();
            }
        }

        public void AddNewProduct(Product item)
        {
            databaseConnection.Open();
            string sql = "INSERT INTO Product VALUES (@name, @description, @price, @imageURL, @categoryName, @AvailabilityStatus)";
            command = new SqlCommand(sql, databaseConnection);
            command.Parameters.AddWithValue("@name", item.name);
            command.Parameters.AddWithValue("@description", item.description);
            command.Parameters.AddWithValue("@price", item.price);
            command.Parameters.AddWithValue("@imageURL", item.imageURL);
            command.Parameters.AddWithValue("@categoryName", item.categoryName);
            command.Parameters.AddWithValue("@AvailabilityStatus", item.AvailabilityStatus);
            command.ExecuteNonQuery();
            databaseConnection.Close();

        }
        public User GetUserById(int userId)
        {
            User user = null;
            try
            {
                ConnectToDatabase();
                string sql = "SELECT * FROM Users WHERE userID = @userID";
                command = new SqlCommand(sql, databaseConnection);
                command.Parameters.AddWithValue("@userID", userId);
                SqlDataAdapter adapter = new SqlDataAdapter(command);
                DataTable dataTable = new DataTable();
                adapter.Fill(dataTable);

                if (dataTable.Rows.Count > 0)
                {
                    DataRow row = dataTable.Rows[0];
                    user = new User
                    {
                        id = Convert.ToInt32(row["userID"]),
                        name = row["name"].ToString(),
                        email = row["email"].ToString(),
                        
                        staff = row["staff"].ToString().Equals("yes")
                    };
                }
            }
            catch (Exception ex)
            {
                Debug.WriteLine("Error in GetUserById: " + ex.Message);
            }
            finally
            {
                DisconnectFromDatabase();
            }
            return user;
        }
    
    public List<Product> GetProductList()
        {
            List<Product> productList = new List<Product>();

            using (SqlConnection connection = new SqlConnection(connectionString))
            {
                string query = "SELECT * FROM Product";
                SqlCommand command = new SqlCommand(query, connection);

                connection.Open();
                SqlDataReader reader = command.ExecuteReader();

                while (reader.Read())
                {
                    Product product = new Product
                    {

                        name = reader["name"].ToString(),
                        description = reader["description"].ToString(),
                        price = Convert.ToDouble(reader["price"]),
                        imageURL = reader["imageURL"].ToString()
                    };

                    productList.Add(product);
                }

                reader.Close();
            }

            return productList;
        }

        public List<Order> GetUserCompletedOrders(int userId)
        {
            List<Order> completedOrders = new List<Order>();

            using (SqlConnection connection = new SqlConnection(connectionString))
            {
                string query = @"SELECT orderID, orderTime, orderTotal, status, 
                        name AS productName, description AS orderDetails, 
                        price AS Price, imageURL AS productImageUrl
                        FROM [Order]
                        WHERE UserID = @UserID AND Status IN ('completed', 'in progress', 'open')";

                SqlCommand command = new SqlCommand(query, connection);
                command.Parameters.AddWithValue("@UserID", userId);

                connection.Open();
                SqlDataReader reader = command.ExecuteReader();

                while (reader.Read())
                {
                    Order order = new Order
                    {
                        orderID = Convert.ToInt32(reader["orderID"]),
                        orderTime = Convert.ToDateTime(reader["orderTime"]),
                        orderTotal = Convert.ToDouble(reader["orderTotal"]),
                        status = reader["status"].ToString(),
                        productName = reader["productName"].ToString(),
                        orderDetails = reader["orderDetails"].ToString(),
                        Price = Convert.ToDouble(reader["price"]),
                        productImageUrl = reader["imageUrl"].ToString()
                    };

                    completedOrders.Add(order);
                }

                reader.Close();
            }

            return completedOrders;
        }
        public static void MarkOrderAsCompleted(int orderId)
        {
            using (SqlConnection connection = new SqlConnection(connectionString))
            {
                string query = "UPDATE [transactions] SET Status = 'Completed' WHERE OrderID = @OrderId";

                using (SqlCommand command = new SqlCommand(query, connection))
                {
                    command.Parameters.AddWithValue("@OrderId", orderId);

                    connection.Open();
                    command.ExecuteNonQuery();
                }
            }

        }

    }
}




