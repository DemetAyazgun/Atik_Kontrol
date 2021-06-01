using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Proje.Web
{
    public partial class Kullanici : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }


        protected void BtnGiris_Click(object sender, EventArgs e)
        {
            SqlConnection con = new SqlConnection("data source=LAPTOP-6IV30HTO\\SQLEXPRESS;initial catalog=AtikKontrol;integrated security=True;");
            con.Open();

            SqlCommand cmd = new SqlCommand("Select * from KullaniciKyt where Eposta='"+TxtGiris.Text+"' and Sifre ='"+TxtSifre.Text+"'", con);
            SqlDataReader dr = cmd.ExecuteReader();

            if(dr.Read())
            {
                Session["Ad"] = dr["Ad"].ToString();
                Response.Redirect("default.aspx");

            }
            else
            {
                Response.Write("Kullanıcı Adı veya Şifre Hatalı");
            }

        }
    }
}