using HinhLam_Dev.Models;
using HinhLam_Infrastructure.Services.Menu;
using Microsoft.AspNetCore.Mvc;
using System.Diagnostics;

namespace HinhLam_Dev.Controllers
{
    public class HomeController : Controller
    {
        private readonly ILogger<HomeController> _logger;
        private readonly IMenuService _menuService;

        public HomeController(ILogger<HomeController> logger, IMenuService menuService)
        {
            _logger = logger;
            _menuService = menuService;
        }

        
        public IActionResult Home()
        {
            var result = _menuService.GetAllMenu();
            return View(result);
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