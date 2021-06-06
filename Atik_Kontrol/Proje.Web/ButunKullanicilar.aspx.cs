using Proje.Business;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Proje.Web
{
    public partial class WebForm1 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
        }

        protected void gvUyeler_SelectedIndexChanged(object sender, EventArgs e)
        {
            if (gvUyeler.SelectedIndex > -1)
            {
                veriDoldur();
            }
        }
        public void veriDoldur()
        {
            ID.Text = gvUyeler.SelectedRow.Cells[1].Text;
            Tc.Text = gvUyeler.SelectedRow.Cells[2].Text;
            Il.Text = gvUyeler.SelectedRow.Cells[3].Text;
            Ilce.Text = gvUyeler.SelectedRow.Cells[4].Text;
            Ad.Text = gvUyeler.SelectedRow.Cells[5].Text;
            Soyad.Text = gvUyeler.SelectedRow.Cells[6].Text;
            Tel.Text = gvUyeler.SelectedRow.Cells[7].Text;
            Eposta.Text = gvUyeler.SelectedRow.Cells[8].Text;
            Sifre.Text = gvUyeler.SelectedRow.Cells[9].Text;
        }


        public void veriBosalt()
        {
            ID.Text = "";
            Tc.Text = "";
            Ad.Text = "";
            Soyad.Text = "";
            Tel.Text = "";
            Il.Text = "";
            Ilce.Text = "";
            Eposta.Text = "";
            Sifre.Text = "";

        }
        protected void Yeni_Click(object sender, EventArgs e)
        {
            veriBosalt();
        }
        protected void btnSil_Click(object sender, EventArgs e)
        {
            if (gvUyeler.SelectedIndex>-1)
            {
                if(dsUyeler.Delete()>0)
                {
                    lblUyari.Text = "Kayıt Silindi";
                    veriBosalt();
                }
                
            }
        }



        protected void btnKaydet_Click(object sender, EventArgs e)
        {
            
                if (gvUyeler.SelectedIndex > -1)
                {
                    if (dsUyeler.Update() > 0)
                    {
                        lblUyari.Text = "Kayıt Güncellendi";
                        veriBosalt();
                    }

                }
         
        }

       
    }
}