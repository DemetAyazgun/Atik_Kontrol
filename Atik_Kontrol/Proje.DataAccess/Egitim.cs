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
    
    public partial class Egitim
    {
        public int EgitimID { get; set; }
        public string Icerik { get; set; }
        public string HedefKitle { get; set; }
        public Nullable<System.DateTime> EgitimTarihi { get; set; }
        public Nullable<int> KatilimciSayisi { get; set; }
    
        public virtual FaliyetUst FaliyetUst { get; set; }
    }
}
