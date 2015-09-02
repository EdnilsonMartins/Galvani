using PortalGalvani.Models;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;

namespace PortalGalvani.Controllers
{
    public class InternaController : Controller
    {
        
        public ActionResult Index(string internaid = "", string titulo = "")
        {
            int idiomaId = Portal.GetIdiomaId();

            Portal model = new Portal(idiomaId);

            ViewBag.PublicacaoId = internaid;

            return View(model);
        }

    }
}
