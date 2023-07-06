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

        
        public IActionResult Home()
        {
            return View();
        }

        [HttpGet("/cn/", Name = "HomeCN")]
        public IActionResult HomeCN()
        {
            return View("Home-cn");
        }

        [HttpGet("/en/", Name = "HomeEN")]
        public IActionResult HomeEN()
        {
            return View("Home-en");
        }

    }
}