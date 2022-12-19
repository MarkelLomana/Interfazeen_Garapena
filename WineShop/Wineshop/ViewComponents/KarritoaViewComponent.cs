using Microsoft.AspNetCore.Mvc;
using Wineshop.Models;
using Wineshop.Services;

namespace Wineshop.ViewComponents

{
    public class KarritoaViewComponent : ViewComponent
    {
        private readonly ISaskiaService _saskiaService;

        public KarritoaViewComponent(ISaskiaService saskiaService)
        {
            _saskiaService = saskiaService;
        }
        
        public async Task<IViewComponentResult> InvokeAsync(String id){
            //ViewBag.id = id;
            List<SaskiaAlea> saskiAlea = await _saskiaService.SaskiaLortuAleak(id);
            ViewBag.kantitatea = saskiAlea.Count(); 
            return View();
        }
    }
}
