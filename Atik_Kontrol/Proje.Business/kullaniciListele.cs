using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace Proje.Business
{
    public class kullaniciListele
    {
        public List<Proje.DataAccess.KullaniciKyt> Listele()
        {
            Proje.DataAccess.AtikKontrolEntities dp = new Proje.DataAccess.AtikKontrolEntities();
            var kullanicilistele = dp.KullaniciKyt.ToList();
            return kullanicilistele;

        }
    }
}
