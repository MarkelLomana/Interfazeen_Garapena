using Wineshop.Models;

namespace Wineshop.Services
{
    public interface ISaskiaService
    {
        Task SaskiaGehitu(int ardoaId, string saskiaId);
        Task<List<SaskiaAlea>> SaskiaLortuAleak(string saskiaId);

        Task EskaeraBezeroaGehitu(BezeroaEskaera bezeroaEskaera);
        Task EskaeraSortu(BezeroaEskaera bezeroaEskaera, string saskiaId);
    }

}
