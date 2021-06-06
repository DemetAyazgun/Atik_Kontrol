using System;
using System.Net.Mail;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using Proje.DataAccess;
using System.Net;

namespace Proje.Web
{
    public partial class SifremiUnuttum : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            //if(Session.Count > 0)
            //{
            //    Response.Redirect("Default.aspx");
            //}
        }
        AtikUygulamaEntities db = new AtikUygulamaEntities();
        protected void degis_Click(object sender, EventArgs e)
        {

        //    var model = db.KullaniciKyt.FirstOrDefault(x => x.Eposta == TxtDegis.Text);
        //    if(model != null)
        //    {
        //        MailMessage mail = new MailMessage();
        //        mail.IsBodyHtml = true;
        //        mail.To.Add(TxtDegis.Text);
        //        mail.From = new MailAddress("TestMaili.062021@gmail.com");
        //        mail.Subject = "Şifre Sıfırlama";
        //        mail.Body += "Merhaba Sayın" + model.Ad + "" + model.Soyad + "<br/> Kullanıcı Mailiniz=" + model.Eposta + "<br/> Şifreniz:" + model.Sifre;
        //        SmtpClient smp = new SmtpClient();
        //        smp.Port = 587;
        //        smp.Host = "smtp.gmail.com";
        //        smp.EnableSsl = true;
        //        smp.Credentials = new NetworkCredential("TestMaili.062021@gmail.com", "123test123");
        //        try
        //        {
        //            smp.Send(mail);
        //            db.SaveChanges();
        //            Response.Redirect("GirisKaydol.aspx");
        //        }
        //        catch(Exception)
        //        {
        //            lblUyari.Text = "Bir hata oluştu";
        //        }
        //    }
                

        }
    }
}