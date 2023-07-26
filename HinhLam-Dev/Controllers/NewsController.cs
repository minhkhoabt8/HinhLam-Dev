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

        [HttpGet("/dich-vu/bhxh-viet-nam-trien-khai-dang-ky-giao-dich-dien-tu-cho-ca-nhan-duoi-18-tuoi-chua-co-cmnd-cccd", Name = "NewsDetails")]
        public IActionResult NewsDetails()
        {
            return View("NewsDetails");
        }
    }
}
