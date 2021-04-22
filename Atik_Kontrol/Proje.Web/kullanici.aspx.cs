using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
namespace Proje.Web
{
    public partial class kullanici : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            Proje.Business.kullaniciListele kl = new Business.kullaniciListele();

            var sonuc = kl.Listele();
            GridView1.DataSource = sonuc;
            GridView1.DataBind();
        }
    }
}