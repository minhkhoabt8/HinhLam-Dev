using HinhLam_DataObject.ViewModels;
using HinhLam_DataObject.Models;
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
            var result = _menuService.GetAllMenu();
            return View("Home-cn", result);
        }

        [HttpGet("/en/", Name = "HomeEN")]
        public IActionResult HomeEN()
        {
            var result = _menuService.GetAllMenu();
            return View("Home-en", result);
        }

        [HttpPost("/my-lien-he")]
        public IActionResult Contact(string email)
        {
            //call send email
            throw new NotImplementedException();
        }
        
    }
}