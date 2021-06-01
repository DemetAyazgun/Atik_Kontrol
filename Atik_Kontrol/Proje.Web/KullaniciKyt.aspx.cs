using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Proje.Web
{
    public partial class KullaniciKyt : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void BtnKaydol_Click(object sender, EventArgs e)
        {
            SqlConnection con = new SqlConnection("data source=LAPTOP-6IV30HTO\\SQLEXPRESS;initial catalog=AtikKontrol;integrated security=True;");
            SqlCommand cmd = new SqlCommand("INSERT INTO KullaniciKyt(TC,Il,Ilce,Ad,Soyad,Tel,Eposta,Sifre) VALUES ('" + TxtTc.Text+ "','" + TxtIl.Text + "','" + TxtIlce.Text + "','" + TxtAd.Text + "','" + TxtSoyad.Text + "','" + TxtTel.Text + "','" + TxtPosta.Text + "','" + TxtSifre.Text + "')", con);
            con.Open();

            
            cmd.ExecuteNonQuery();
           
            lblUyari.Text = "*Kayıt Başarıyla Tamamlandı";
            con.Close();
        }


    }
}