namespace WineShop.Services
{
    public class ArdoaService
    {
        private Uri rutaTodos = new Uri("https://localhost/api/Ardoa/");
        public async Task<IList<ArdoaUpeltegi>> GetMota(int id)
        {
            List<ArdoaUpeltegi> ardoaUpeltegiList = new List<ArdoaUpeltegi>();
            Uri rutaUpeltegiak = new Uri(rutaTodos, "Mota/" + id.ToString());
            using (var httpClient = new HttpClient())
            {
                using (var response = await httpClient.GetAsync(rutaUpeltegiak))
                {
                    string apiResponse = await response.Content.ReadAsStringAsync();
                    ardoaUpeltegiList = JsonConvert.DeserializeObject<List<ArdoaUpeltegi>>(apiResponse);
                }
            }
            return ardoaUpeltegiList;
        }
    }
}
