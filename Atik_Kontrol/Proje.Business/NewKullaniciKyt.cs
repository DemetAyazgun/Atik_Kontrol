using Proje.DataAccess;
using System;
using System.Collections;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;

using System.Text;
using System.Threading.Tasks;
namespace Proje.Business
{
    public class NewKullaniciKyt
    {
        public string TC { get; set; }
        public string Il { get; set; }
        public string Ilce { get; set; }
        public string Ad { get; set; }
        public string Soyad { get; set; }
        public string Tel { get; set; }
        public string Eposta { get; set; }
        public string Sifre { get; set; }
        public string SifreTekrar { get; set; }

        public List<DataAccess.KullaniciKyt> GetAll()
        {
            AtikUygulamaEntities db = new AtikUygulamaEntities();
            var result = db.KullaniciKyt.ToList();
            return result;
        }

       
        public void KullaniciKaydet(Proje.DataAccess.KullaniciKyt gelen)
        {
            AtikUygulamaEntities db = new AtikUygulamaEntities();
            Proje.DataAccess.KullaniciKyt yenikullanici = new Proje.DataAccess.KullaniciKyt();
            yenikullanici.Ad = gelen.Ad;
            yenikullanici.Eposta = gelen.Eposta;
            yenikullanici.Sifre = gelen.Sifre;
            yenikullanici.Il = gelen.Il;
            yenikullanici.Ilce = gelen.Ilce;
            yenikullanici.Soyad = gelen.Soyad;
            yenikullanici.Tc = gelen.Tc;
            yenikullanici.Tel = gelen.Tel;
            yenikullanici.SifreTekrar = gelen.SifreTekrar;

            db.KullaniciKyt.Add(yenikullanici);
            db.SaveChanges();


        }

       


    }
}
