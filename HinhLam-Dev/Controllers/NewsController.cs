using Microsoft.AspNetCore.Mvc;

namespace HinhLam_Dev.Controllers
{
    public class NewsController : Controller
    {
        [HttpGet("/tin-tuc")]
        public IActionResult News()
        {
            return View();
        }
    }
}
