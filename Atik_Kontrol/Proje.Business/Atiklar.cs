using Proje.DataAccess;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;


namespace Proje.Business
{
    public class Atiklar
    { 
        public string AtikAdres { get; set; }
        public string AtikTur { get; set; }
        public string AtikIslem { get; set; }
        public List<DataAccess.AtikEkle> GetAll()
        {
            AtikUygulamaEntities db = new AtikUygulamaEntities();
            var result = db.AtikEkle.ToList();
            return result;
        }
        public void AtikKaydet(Proje.DataAccess.AtikEkle gelen)
        {
            AtikUygulamaEntities db = new AtikUygulamaEntities();
            Proje.DataAccess.AtikEkle yeniAtik = new Proje.DataAccess.AtikEkle();
            yeniAtik.AtikAdres = gelen.AtikAdres;
            yeniAtik.AtikTur = gelen.AtikTur;
            yeniAtik.AtikIslem = gelen.AtikIslem;
            

            db.AtikEkle.Add(yeniAtik);
            db.SaveChanges();


        }
    }
}
