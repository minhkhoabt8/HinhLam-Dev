using HinhLam_Infrastructure.Services.News;
using Microsoft.AspNetCore.Mvc;
using System.Xml.Linq;

namespace HinhLam_Dev.Controllers
{
    public class NewsController : Controller
    {
        private readonly INewsService _newsService;

        public NewsController(INewsService newsService)
        {
            _newsService = newsService;
        }

        [HttpGet("/tin-tuc")]
        public IActionResult News()
        {
            return View("News");
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

        [HttpGet("/tin-tuc/{name}", Name = "NewsDetails")]
        public IActionResult NewsDetails(string name)
        {
            var result = _newsService.GetAllContentsOfNews(name);
            if (result == null)
            {
                return View("Error");
            }
            return View("NewsDetails", result);
           
        }

        [HttpGet("/en/news/{name}", Name = "NewsDetailsEN")]
        public IActionResult NewsDetailsEN(string name)
        {
            var result = _newsService.GetAllContentsOfNews(name);
            if (result == null)
            {
                return View("Error");
            }
            return View("NewsDetails-en", result);

        }

        [HttpGet("/cn/news-chinese/{name}", Name = "NewsDetailsCN")]
        public IActionResult NewsDetailsCN(string name)
        {
            var result = _newsService.GetAllContentsOfNews(name);
            if (result == null)
            {
                return View("Error");
            }
            return View("NewsDetails-cn", result);

        }

        [HttpGet("/tintuc/p", Name = "PaginatedNews")]
        public IActionResult PaginatedNews([FromQuery] int p)
        {
            // Assuming _newsService.PaginatedNews(trang, 10) returns the paginated data
            var result = _newsService.PaginatedNews(p, 6);

            return View("NewsDetails", result);
        }

    }
}
