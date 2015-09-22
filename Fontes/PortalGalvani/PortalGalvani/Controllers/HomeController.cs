using PortalGalvani.Models;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Net.Mail;
using System.Web;
using System.Web.Mvc;

namespace PortalGalvani.Controllers
{
    public class HomeController : Controller
    {
        //
        // GET: /Home/

        //public ActionResult Index()
        //{
        //    int idiomaId = Portal.GetIdiomaId();

        //    Portal model = new Portal(idiomaId);

        //    model.ExibeVideo = true;
        //    model.ExibeContatoRapido = true;

        //    IntegracaoGruppo.IntegracaoPortalClient IG = new IntegracaoGruppo.IntegracaoPortalClient();
        //    var publicacao = IG.CarregarHome(1, idiomaId);
        //    if (publicacao.PublicacaoId != 0)
        //    {
        //        model.Conteudo = publicacao;
        //    }

        //    ViewBag.Title = "Galvani Engenharia";

        //    return View(model);
        //}

        public ActionResult Index(FormCollection form)
        {
            int idiomaId = Portal.GetIdiomaId();

            Portal model = new Portal(idiomaId);

            if (Request.QueryString.HasKeys())
            {
                if (Request.QueryString.GetValues("VersaoDesktop").GetValue(0) == "")
                {
                    model.VersaoDesktop = true;
                }
            }


            model.ExibeVideo = true;
            model.ExibeContatoRapido = true;

            IntegracaoGruppo.IntegracaoPortalClient IG = new IntegracaoGruppo.IntegracaoPortalClient();
            var publicacao = IG.CarregarHome(1, idiomaId);
            if (publicacao.PublicacaoId != 0)
            {
                model.Conteudo = publicacao;
            }

            ViewBag.Title = "Galvani Engenharia";

            #region --> Envio de E-mail
            if (!String.IsNullOrEmpty(Request.Form["contatoRapido"]) && !String.IsNullOrEmpty(Request.Form["telefone"]))
            {
                model.NrProtocoloContato = DateTime.Now.ToString("yyMMddHHmmssCfff");

                string nome = Request.Form["nome"];
                string email = "no-reply@galvaniengenharia.com.br"; //Quando for contato rápido, não existe captura de email.
                string telefone = Request.Form["telefone"];
                string assunto = Request.Form["assunto"];
                string cidade = Request.Form["cidade"];
                string enviaMensagem = "Solicitação de contato rápido solicitado via site.";

                try
                {
                    var c = model.Configuracao;

                    var SiteNome = "Galvani Engenharia";

                    enviaMensagem = "<b>Contato via Portal " + SiteNome + "</b><br /><br />" +
                                    "Nome: " + nome + "<br />" +
                                    "Telefone: " + telefone + "<br />" +
                                    "E-mail: " + email + "<br />" +
                                    "Assunto: " + assunto + "<br />" +
                                    "Nr Controle: <b>" + model.NrProtocoloContato + "</b><br /><br />" +
                                    "Cidade: " + cidade + "<br /><br />" +
                                    "Mensagem: <br>" + enviaMensagem;



                    System.Net.Mail.SmtpClient client = new System.Net.Mail.SmtpClient();
                    client.Host = c.EmailHost;
                    //client.EnableSsl = true;
                    client.Port = c.EmailPorta;
                    client.Credentials = new System.Net.NetworkCredential(c.EmailUsername, c.EmailPassword);
                    MailMessage mail = new MailMessage();
                    mail.Sender = new System.Net.Mail.MailAddress(c.EmailUsername, c.EmailDisplayName);
                    mail.From = new MailAddress("no-reply@galvaniengenharia.com.br", c.EmailDisplayName);
                    mail.To.Add(new MailAddress(c.EmailDestino));
                    mail.ReplyToList.Add(new MailAddress(email));
                    mail.Subject = "Contato Portal";
                    mail.Body = enviaMensagem;
                    mail.IsBodyHtml = true;
                    mail.Priority = MailPriority.High;

                    try
                    {
                        client.Send(mail);
                    }
                    catch (System.Exception erro)
                    {
                        //trata erro
                    }
                    finally
                    {
                        mail = null;
                    }
                }
                catch (Exception ex)
                {
                    string erro = ex.InnerException.ToString();
                    //return ex.Message.ToString() + erro;
                }
            }
            #endregion

            return View(model);
        }

        public ActionResult SessionCulture(string lang, string ReturnUrl = "")
        {
            var langCookie = new HttpCookie("langGalvani", lang) { HttpOnly = true };
            Response.AppendCookie(langCookie);

            ConfigurarDadosDeCultura(lang);

            if (string.IsNullOrWhiteSpace(ReturnUrl))
            {
                return RedirectToAction("Index", "Home", new { culture = lang });
            }
            else
            {
                return Redirect(ReturnUrl);
            }
        }

        private void ConfigurarDadosDeCultura(string lang)
        {
            var currentCulture = HttpContext.Request.Cookies["langGalvani"] != null
                ? HttpContext.Request.Cookies["langGalvani"].Value
                : "pt-BR";

            if (currentCulture != lang)
            {
                //ConfigurarUrlDeConsulta();
            }
        }

    }
}
