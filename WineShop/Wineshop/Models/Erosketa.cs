using System.ComponentModel.DataAnnotations;

namespace Wineshop.Models
{
    public class Erosketa
    {
            [Key]
            public int Id { get; set; }
            public int Kantitatea { get; set; }
            public int ArdoaId { get; set; }
            public int BezeroaEskaeraId { get; set; }
        
    }
}
