using HinhLam_Dev.Models;
using Microsoft.AspNetCore.Mvc;
using System.Diagnostics;

namespace HinhLam_Dev.Controllers
{
    public class HomeController : Controller
    {
        private readonly ILogger<HomeController> _logger;

        public HomeController(ILogger<HomeController> logger)
        {
            _logger = logger;
        }

        [HttpGet("/gioi-thieu")]
        public IActionResult Introduction()
        {
            return View();
        }

        //[HttpGet("/trang-chu")]
        public IActionResult Home()
        {
            return View();
        }

        [HttpGet("/dich-vu")]
        public IActionResult Service()
        {
            return View();
        }

        [HttpGet("/tin-tuc")]
        public IActionResult News()
        {
            return View();
        }

        [HttpGet("/tuyen-dung")]
        public IActionResult Recruitment()
        {
            return View();
        }

        [HttpGet("/lien-he")]
        public IActionResult Contact()
        {
            return View();
        }

        [ResponseCache(Duration = 0, Location = ResponseCacheLocation.None, NoStore = true)]
        public IActionResult Error()
        {
            return View(new ErrorViewModel { RequestId = Activity.Current?.Id ?? HttpContext.TraceIdentifier });
        }
    }
}