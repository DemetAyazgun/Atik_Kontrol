using Proje.DataAccess;
using System;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Proje.Web
{
    public partial class AtikKayit : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
        }


        protected void AKayit_Click(object sender, EventArgs e)
        {
            

            AtikUygulamaEntities db = new AtikUygulamaEntities(); // vt cagırdık
            if (TxtAdres.Text=="" || TxtTur.Text=="" || TxtIslem.Text=="")
            {
                lblUyari1.Text = "*Boş Alanları Doldurunuz";
            }
      
            else
            {

                Proje.Business.Atiklar kyt = new Proje.Business.Atiklar(); // businesdaki c las işlemleri yap
                Proje.DataAccess.AtikEkle yeni = new Proje.DataAccess.AtikEkle(); // vt clası yeni kullanici burdan  oluştur.

                yeni.AtikAdres = TxtAdres.Text;
                yeni.AtikTur = TxtTur.Text;
                yeni.AtikIslem = TxtIslem.Text;

                //--
                kyt.AtikKaydet(yeni);

                lblUyari1.Text = "*Kayıt Başarıyla Tamamlandı";
            }
            
        }
    }
}