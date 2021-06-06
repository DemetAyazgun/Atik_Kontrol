using Proje.DataAccess;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Proje.Web
{
    public partial class GirisKaydol : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void GIRIS_Click(object sender, EventArgs e)
        {
            AtikUygulamaEntities db = new AtikUygulamaEntities(); // vt cagırdık

            var k1 = db.KullaniciKyt.Where(k => k.Eposta == TxtGiris.Text && k.Sifre == TxtSifreG.Text).FirstOrDefault();
            if (k1 != null)
            {
                Session.Add("kullanicimail", TxtGiris.Text);

                Session.Add("sifre", TxtSifreG.Text);

                Session.Add("girisdurumu", 1);


                Response.Redirect("Default.aspx");
            }
            else
            {
                
                lblUyari1.Text = "Kullanici Bulunamadı";
            }
            
            
        }

        protected void BtnKaydol_Click(object sender, EventArgs e)
        {
            List<string> mailler = new List<string>();
            List<string> tcler = new List<string>();
            AtikUygulamaEntities db = new AtikUygulamaEntities(); // vt cagırdık
            foreach (var item in db.KullaniciKyt)
            {
                mailler.Add(item.Eposta);
                tcler.Add(item.Tc);
            }

            if (tcler.Contains(TxtTc.Text))
            {
                lblUyari1.Text = "Kimlik no kayıtlı";
            }
            else if(mailler.Contains(TxtPosta.Text)){
                lblUyari1.Text = "Eposta kayıtlı";
            }
            else if (TxtSifre.Text != TxtSifreTekrar.Text)
            {
                lblUyari1.Text = "Şifreler Uyuşmuyor";
            }
            else
            {
                
                Proje.Business.NewKullaniciKyt kyt = new Proje.Business.NewKullaniciKyt(); // businesdaki c las işlemleri yap
                Proje.DataAccess.KullaniciKyt yeni = new Proje.DataAccess.KullaniciKyt(); // vt clası yeni kullanici burdan  oluştur.
                
                yeni.Ad = TxtAd.Text;
                yeni.Eposta = TxtPosta.Text;
                yeni.Il = TxtIl.Text;
                yeni.Ilce = TxtIlce.Text;
                yeni.Soyad = TxtSoyad.Text;
                yeni.Tc = TxtTc.Text;
                yeni.Tel = TxtTel.Text;
                yeni.Sifre = TxtSifre.Text;
                yeni.SifreTekrar = TxtSifreTekrar.Text;
                

                //--
                kyt.KullaniciKaydet(yeni);

                lblUyari1.Text = "*Kayıt Başarıyla Tamamlandı";
            }
        }
    }
}