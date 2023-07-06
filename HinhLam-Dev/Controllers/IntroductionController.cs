using Microsoft.AspNetCore.Mvc;

namespace HinhLam_Dev.Controllers
{
    public class IntroductionController : Controller
    {
        [HttpGet("/gioi-thieu")]
        public IActionResult Introduction()
        {
            return View();
        }
    }
}
