using System;
using System.Collections.Generic;
using System.Linq;
using System.Threading.Tasks;
using Microsoft.EntityFrameworkCore;
using REST_API.Models;

namespace REST_API.Data
{
    public class WineShopDbContext : DbContext
    {
        public WineShopDbContext(DbContextOptions<WineShopDbContext> options) : base(options)
        {
        }
        public DbSet<Ardoa> Ardoa { get; set; }
        public DbSet<Herrialdea> Herrialdea { get; set; }
        public DbSet<Eskualdea> Eskualdea { get; set; }
        public DbSet<Upeltegia> Upeltegia { get; set; }
        public DbSet<Mota> Mota { get; set; }
        public DbSet<SaskiaAlea> SaskiaAlea { get; set; }
        public DbSet<Erosketa> Erosketa { get; set; }
        public DbSet<BezeroaEskaera> BezeroaEskaera { get; set; }

    }
}
