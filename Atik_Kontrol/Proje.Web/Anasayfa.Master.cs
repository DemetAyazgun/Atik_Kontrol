﻿using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Proje.Web
{
    public partial class Anasayfa : System.Web.UI.MasterPage
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            try
            {
                if (Session["girisdurumu"].ToString() != "1")
                {
                    Response.Redirect("GirisKaydol.aspx");
                }
            }
            catch (Exception)
            {

                Response.Redirect("GirisKaydol.aspx"); 
            }

        }
    }
}