﻿//------------------------------------------------------------------------------
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
    using System.Data.Entity;
    using System.Data.Entity.Infrastructure;
    
    public partial class AtikKontrolEntities : DbContext
    {
        public AtikKontrolEntities()
            : base("name=AtikKontrolEntities")
        {
        }
    
        protected override void OnModelCreating(DbModelBuilder modelBuilder)
        {
            throw new UnintentionalCodeFirstException();
        }
    
        public virtual DbSet<DepoAlani> DepoAlani { get; set; }
        public virtual DbSet<Egitim> Egitim { get; set; }
        public virtual DbSet<FaliyetUst> FaliyetUst { get; set; }
        public virtual DbSet<IletisimBilgi> IletisimBilgi { get; set; }
        public virtual DbSet<Kompost> Kompost { get; set; }
        public virtual DbSet<KullaniciKyt> KullaniciKyt { get; set; }
        public virtual DbSet<sysdiagrams> sysdiagrams { get; set; }
        public virtual DbSet<ToplananAtik> ToplananAtik { get; set; }
        public virtual DbSet<VergiGiris> VergiGiris { get; set; }
        public virtual DbSet<YerlestirilenEkipman> YerlestirilenEkipman { get; set; }
        public virtual DbSet<TesisBilgisi> TesisBilgisi { get; set; }
    }
}
