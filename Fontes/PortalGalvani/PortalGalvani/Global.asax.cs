﻿using System;
using System.Collections.Generic;
using System.Globalization;
using System.Linq;
using System.Threading;
using System.Web;
using System.Web.Http;
using System.Web.Mvc;
using System.Web.Routing;

namespace PortalGalvani
{
    // Note: For instructions on enabling IIS6 or IIS7 classic mode, 
    // visit http://go.microsoft.com/?LinkId=9394801
    public class MvcApplication : System.Web.HttpApplication
    {
        protected void Application_Start()
        {
            AreaRegistration.RegisterAllAreas();

            WebApiConfig.Register(GlobalConfiguration.Configuration);
            FilterConfig.RegisterGlobalFilters(GlobalFilters.Filters);
            RouteConfig.RegisterRoutes(RouteTable.Routes);
        }

        protected void Application_AcquireRequestState(object sender, EventArgs e)
        {
            var languageCookie = HttpContext.Current.Request.Cookies["langGalvani"];

            if (languageCookie == null)
            {
                var langCookie = new HttpCookie("langGalvani", "pt-BR") { HttpOnly = true };
                Response.AppendCookie(langCookie);
                languageCookie = HttpContext.Current.Request.Cookies["langGalvani"];
            }

            CultureInfo cultureInfo = CultureInfo.GetCultureInfo(languageCookie.Value);

            Thread.CurrentThread.CurrentUICulture = cultureInfo;
            Thread.CurrentThread.CurrentCulture = CultureInfo.CreateSpecificCulture(cultureInfo.Name);
        }
    }
}