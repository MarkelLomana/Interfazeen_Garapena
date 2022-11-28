using Newtonsoft.Json;
using WineShop.Models;

namespace WineShop.Services
{
    public class ArdoaService
    {
        private Uri rutaTodos = new Uri("https://localhost:44367/api/Ardoa/");
        public async Task<IList<ArdoaUpeltegia>> GetMota(int id)
        {
            List<ArdoaUpeltegia> ardoaUpeltegiList = new List<ArdoaUpeltegia>();
            Uri rutaUpeltegiak = new Uri(rutaTodos, "Mota/" + id.ToString());
            using (var httpClient = new HttpClient())
            {
                using (var response = await httpClient.GetAsync(rutaUpeltegiak))
                {
                    string apiResponse = await response.Content.ReadAsStringAsync();
                    ardoaUpeltegiList = JsonConvert.DeserializeObject<List<ArdoaUpeltegia>>(apiResponse);
                }
            }
            return ardoaUpeltegiList;
        }

    }
}
