using Microsoft.AspNetCore.Mvc;

namespace HinhLam_Dev.Controllers
{
    public class ServiceController : Controller
    {

        [HttpGet("/dich-vu")]
        public IActionResult Service()
        {
            return View();
        }
    }
}
