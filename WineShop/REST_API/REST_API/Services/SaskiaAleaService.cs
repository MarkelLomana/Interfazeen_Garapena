using System;
using System.Collections.Generic;
using System.Linq;
using System.Threading.Tasks;
using Microsoft.EntityFrameworkCore;
using Microsoft.AspNetCore.Mvc;
using REST_API.Models;
using REST_API.Data;
using System.Runtime.CompilerServices;

namespace REST_API.Services
{
    public class SaskiaAleaService : ISaskiaAleaService
    {
        private readonly WineShopDbContext _context;

        public SaskiaAleaService(WineShopDbContext context)
        {
            _context = context;
        }
        public async Task<List<SaskiaAlea>> GetSaskiaAleak()
        {
            return await _context.SaskiaAlea.ToListAsync();
        }
        public async Task<SaskiaAlea> GetSaskiaAlea(int id)
        {
            return await _context.SaskiaAlea
                .SingleOrDefaultAsync(a => a.Id == id);
        }
        public async Task PutSaskiaAlea(SaskiaAlea saskiaAlea)
        {
            _context.Entry(saskiaAlea).State = EntityState.Modified;
            await _context.SaveChangesAsync();
        }
        public async Task PostSaskiaAlea(SaskiaAlea saskiaAlea)
        {
            _context.SaskiaAlea.Add(saskiaAlea);
            await _context.SaveChangesAsync();
        }
        public async Task DeleteSaskiaAlea(SaskiaAlea saskiaAlea)
        {
            _context.SaskiaAlea.Remove(saskiaAlea);
            await _context.SaveChangesAsync();
        }
        public bool SaskiaAleaExists(int id)
        {
            return _context.SaskiaAlea.Any(e => e.Id == id);
        }
    }
}
