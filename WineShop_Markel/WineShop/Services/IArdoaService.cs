using WineShop.Models;

namespace WineShop.Services
{
    public interface IArdoaService
    {
        Task<IList<ArdoaUpeltegia>> GetMota(int id);
    }
}
