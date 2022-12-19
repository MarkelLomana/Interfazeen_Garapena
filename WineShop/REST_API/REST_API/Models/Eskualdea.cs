using System;
using System.Collections.Generic;
using System.Linq;
using System.Threading.Tasks;
using System.ComponentModel.DataAnnotations;

namespace REST_API.Models
{
    public class Eskualdea
    {
        [Key]
        public int Id { get; set; }
        public string Izena { get; set; }
        public int HerrialdeaId { get; set; }
        public virtual Herrialdea Herrialdea { get; set; }
        public virtual IList<Upeltegia> Upeltegiak { get; set; }
    }
}
