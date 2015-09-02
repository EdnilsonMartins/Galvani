using System;
using System.Collections.Generic;
using System.IO;
using System.Linq;
using System.Web;

namespace PortalGalvani
{
    /// <summary>
    /// Summary description for HandlerFile
    /// </summary>
    public class HandlerFile : IHttpHandler
    {

        public void ProcessRequest(HttpContext context)
        {
            context.Response.ContentType = "image/jpg";

            //Gravar arquivo:
            byte[] imagemBytes = null;
            string caminhoCompletoImagem = "";

            try
            {
                IntegracaoGruppo.IntegracaoPortalClient IG = new IntegracaoGruppo.IntegracaoPortalClient();

                var ArquivoId = context.Request.QueryString["id"];

                if (!String.IsNullOrEmpty(ArquivoId) && ArquivoId != "0")
                {
                    //ArquivoDAL model = new ArquivoDAL();
                    //var arquivo = model.CarregarArquivo(Convert.ToInt32(ArquivoId));
                    var arquivo = IG.CarregarArquivo(Convert.ToInt32(ArquivoId));
                    
                    if (arquivo.Content != null)
                    {
                        context.Response.ContentType = arquivo.Tipo;

                        //Nova implementação.
                        if (String.IsNullOrEmpty(arquivo.FileName))
                        {
                            arquivo.FileName = "Arquivo";
                            if (arquivo.Tipo == "application/pdf") arquivo.FileName += ".pdf";
                            else if (arquivo.Tipo == "image/gif") arquivo.FileName += ".gif";
                            else if (arquivo.Tipo == "image/jpeg") arquivo.FileName += ".jpg";
                            else if (arquivo.Tipo == "image/png") arquivo.FileName += ".png";
                            else if (arquivo.Tipo.IndexOf("word") > 0) arquivo.FileName += ".docx";
                            else if (arquivo.Tipo.IndexOf("excel") > 0) arquivo.FileName += ".xlsx";

                        }

                        context.Response.AddHeader("Content-Disposition", "attachment; filename=" + arquivo.FileName);


                        //--
                        MemoryStream ms = new MemoryStream(arquivo.Content);
                        ms.WriteTo(context.Response.OutputStream);

                    }
                }
                //context.Response.ContentType = "image/jpg";
                //context.Response.WriteFile(context.Server.MapPath("~/Images/Portal/Evento02.jpg"));

            }
            catch (Exception ex)
            {
                var s = ex.Message;
            }
        }

        public bool IsReusable
        {
            get
            {
                return false;
            }
        }
    }
}