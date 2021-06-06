using Proje.DataAccess;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Web.WebPages.Html;

namespace Proje.Business
{
    public class AtikIslem
    {
        public string Plaka { get; set; }
        public string Ruhsat { get; set; }
        public string Adres { get; set; }
        public string Tur { get; set; }
        public string Kurum { get; set; }
        public string TAd { get; set; }
        public string TSoyad { get; set; }
        public string TTel { get; set; }
        public string ITarih { get; set; }

        public List<DataAccess.AtikIslem> GetAll()
        {
            AtikUygulamaEntities db = new AtikUygulamaEntities();
        var result = db.AtikIslem.ToList();
            return result;
        }
        public void AtikTanim(Proje.DataAccess.AtikIslem gelen)
        {
            AtikUygulamaEntities db = new AtikUygulamaEntities();
            Proje.DataAccess.AtikIslem yeniTanim = new Proje.DataAccess.AtikIslem();
            yeniTanim.Plaka = gelen.Plaka;
            yeniTanim.Ruhsat = gelen.Ruhsat;
            yeniTanim.TAd = gelen.TAd;
            yeniTanim.TSoyad = gelen.TSoyad;
            yeniTanim.TTel = gelen.TTel;
            yeniTanim.ITarih = gelen.ITarih;
            yeniTanim.Adres = gelen.Adres;
            yeniTanim.Tur = gelen.Tur;
            yeniTanim.Kurum = gelen.Kurum;

            db.AtikIslem.Add(yeniTanim);
            db.SaveChanges();


        }
    }
}
