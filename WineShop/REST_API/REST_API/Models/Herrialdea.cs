using System;
using System.Collections.Generic;
using System.Linq;
using System.Threading.Tasks;
using System.ComponentModel.DataAnnotations;

namespace REST_API.Models
{
    public class Herrialdea
    {
        [Key]
        public int Id { get; set; }
        public string Izena { get; set; }
        public virtual IList<Eskualdea> Eskualdeak { get; set; }
    }
}
