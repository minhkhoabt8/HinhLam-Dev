using Microsoft.AspNetCore.Mvc;

namespace HinhLam_Dev.Controllers
{
    public class ContactController : Controller
    {
        [HttpGet("/lien-he")]
        public IActionResult Contact()
        {
            return View();
        }
    }
}
