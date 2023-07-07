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

        [HttpGet("/cn/news-chinese", Name = "news-chinese")]
        public IActionResult IntroductionCN()
        {
            return View("News-cn");
        }

        [HttpGet("/en/news", Name = "news")]
        public IActionResult IntroductionEN()
        {
            return View("News-en");
        }
    }
}
