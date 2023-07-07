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
        [HttpGet("/cn/about-us-chinese", Name = "about-us-chinese")]
        public IActionResult IntroductionCN()
        {
            return View("Introduction-cn");
        }

        [HttpGet("/en/about-us", Name = "about-us")]
        public IActionResult IntroductionEN()
        {
            return View("Introduction-en");
        }
    }
}
