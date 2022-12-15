using REST_API.Models;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Threading.Tasks;

namespace REST_API.Services
{
    public interface IEskualdeaService
    {
        Task<List<Eskualdea>> GetEskualdeak();
    }
}
