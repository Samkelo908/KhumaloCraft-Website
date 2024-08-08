﻿using System;
using System.Collections.Generic;
using System.Linq;
using System.Net.Http;
using System.Web;
using System.Web.Optimization;
using System.Web.Routing;
using System.Web.Security;
using System.Web.SessionState;

namespace ST10141464POE
{
    public class Global : HttpApplication
    {
        void Application_Start(object sender, EventArgs e)
        {
        
            RouteConfig.RegisterRoutes(RouteTable.Routes);
            BundleConfig.RegisterBundles(BundleTable.Bundles);
            RegisterHttpClient();
        }
        private void RegisterHttpClient()
        {
            var httpClient = new HttpClient();
            Application["HttpClient"] = httpClient;
        }
    }
}