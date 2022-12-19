using System;
using System.Collections.Generic;
using System.Linq;
using System.Runtime.CompilerServices;
using System.Threading.Tasks;
using Microsoft.AspNetCore.Mvc;
using REST_API.Models;

namespace REST_API.Services
{
    public interface ISaskiaAleaService
    {
        Task<List<SaskiaAlea>> GetSaskiaAleak();
        Task<List<SaskiaAlea>> GetSaskiaAlea(string id);
        Task PutSaskiaAlea(SaskiaAlea saskiaAlea);
        Task PostSaskiaAlea(SaskiaAlea saskiaAlea);
        Task DeleteSaskiaAlea(SaskiaAlea saskiaAlea);
        bool SaskiaAleaExists(int id);
    }
}
