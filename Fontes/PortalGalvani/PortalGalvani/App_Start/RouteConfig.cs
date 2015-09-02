using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;
using System.Web.Routing;

namespace PortalGalvani
{
    public class RouteConfig
    {
        public static void RegisterRoutes(RouteCollection routes)
        {
            routes.IgnoreRoute("{resource}.axd/{*pathInfo}");

            

            routes.MapRoute(
                name: "Index4",
                url: "Interna/{internaid}/{titulo}",
                defaults: new { controller = "Interna", action = "Index", internaid = string.Empty }
            );

            routes.MapRoute(
                name: "Index5",
                url: "Materia/{internaid}/{titulo}",
                defaults: new { controller = "Interna", action = "Index", internaid = string.Empty }
            );

            routes.MapRoute(
                name: "Index6",
                url: "Noticia/{internaid}/{titulo}",
                defaults: new { controller = "Interna", action = "Index", internaid = string.Empty }
            );

            routes.MapRoute(
                name: "Index7",
                url: "Evento/{internaid}/{titulo}",
                defaults: new { controller = "Interna", action = "Index", internaid = string.Empty }
            );

            routes.MapRoute(
                name: "Index8",
                url: "Artigo/{internaid}/{titulo}",
                defaults: new { controller = "Interna", action = "Index", internaid = string.Empty }
            );

            routes.MapRoute(
                name: "Default",
                url: "{controller}/{action}/{id}",
                defaults: new { controller = "Home", action = "Index", id = UrlParameter.Optional }
            );
        }
    }
}