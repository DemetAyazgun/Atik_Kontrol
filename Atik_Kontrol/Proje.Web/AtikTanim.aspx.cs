using Proje.DataAccess;
using System;
using System.Collections.Generic;
using System.Globalization;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Proje.Web
{
    public partial class AtikTanim : System.Web.UI.Page
    {
        
        Proje.Business.AtikIslem kyt = new Proje.Business.AtikIslem(); // businesdaki c las işlemleri yap
        Proje.DataAccess.AtikIslem yeni = new Proje.DataAccess.AtikIslem();
        AtikUygulamaEntities db = new AtikUygulamaEntities();
        protected void Page_Load(object sender, EventArgs e)
        {
            var k1 = db.AtikEkle.ToList();
            dllAdres.DataSource = k1;
            dllAdres.DataTextField = "AtikAdres";
           
            dllAdres.DataBind();
            yeni.Adres = dllAdres.Text;
            var k2 = db.AtikEkle.ToList();
            dllTur.DataSource = k2;
            dllTur.DataTextField = "AtikTur";
          
            dllTur.DataBind();
            yeni.Tur = dllTur.Text;
            var k3 = db.AtikEkle.ToList();
            dllKurum.DataSource = k3;
            dllKurum.DataTextField = "AtikIslem";
           
            dllKurum.DataBind();
            yeni.Kurum = dllKurum.Text;
        }

        protected void AKayit_Click(object sender, EventArgs e)
        {
            yeni.Ruhsat = TxtRuhsat.Text;
            yeni.Plaka = TxtPlaka.Text;
            
            yeni.TAd = TasıyıcıAd.Text;
            yeni.TSoyad = TasıyıcıSoyad.Text;
            yeni.TTel = TasıyıcıTel.Text;
            yeni.ITarih = IslemTarihi.Text;

            kyt.AtikTanim(yeni);
            lblUyari1.Text = "*Kayıt Başarıyla Tamamlandı";
        }
    }
}