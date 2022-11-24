using Microsoft.EntityFrameworkCore;
using REST_API.Data;
using REST_API.Models;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Threading.Tasks;

namespace REST_API.Services
{
    public class EskualdeaService : IEskualdeaService
    {
        private readonly WineShopDbContext _context;

        public EskualdeaService(WineShopDbContext context)
        {
            _context = context;
        }
        public async Task<List<Eskualdea>> GetEskualdeak()
        {
            return await _context.Eskualdea.ToListAsync();
        }
    }
}
