//------------------------------------------------------------------------------
// <auto-generated>
//     This code was generated from a template.
//
//     Manual changes to this file may cause unexpected behavior in your application.
//     Manual changes to this file will be overwritten if the code is regenerated.
// </auto-generated>
//------------------------------------------------------------------------------

namespace Proje.DataAccess
{
    using System;
    using System.Collections.Generic;
    
    public partial class FaliyetUst
    {
        public int FaliyetID { get; set; }
        public string KurumAd { get; set; }
        public string KurumTur { get; set; }
        public string UygulamaAlani { get; set; }
        public string Aciklama { get; set; }
        public Nullable<System.DateTime> IslemTarihi { get; set; }
        public string FaliyetTurleri { get; set; }
    
        public virtual DepoAlani DepoAlani { get; set; }
        public virtual Egitim Egitim { get; set; }
        public virtual Kompost Kompost { get; set; }
        public virtual ToplananAtik ToplananAtik { get; set; }
        public virtual YerlestirilenEkipman YerlestirilenEkipman { get; set; }
        public virtual TesisBilgisi TesisBilgisi { get; set; }
    }
}