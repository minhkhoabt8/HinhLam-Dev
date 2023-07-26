﻿using HinhLam_DataObject.ViewModels;
using HinhLam_DataObject.Models;
using HinhLam_Infrastructure.Services.Menu;
using Microsoft.AspNetCore.Mvc;
using System.Diagnostics;
using Mailjet.Client;
using HinhLam_Infrastructure.Services.Email.Repositories;
using HinhLam_DataObject.ViewModel;
using HinhLam_Infrastructure.Services.Home;

namespace HinhLam_Dev.Controllers
{
    public class HomeController : Controller
    {
        private readonly ILogger<HomeController> _logger;
        private readonly IMenuService _menuService;
        private readonly IHomeService _homeService;

        public HomeController(ILogger<HomeController> logger, IMenuService menuService,IHomeService homeService )
        {
            _logger = logger;
            _menuService = menuService;
            _homeService = homeService;
            
        }

        [HttpGet()]
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

        [HttpPost("/hot-contact")]
        public IActionResult Contact([FromForm] string email)
        {
            _homeService.SendRecruitmentEmail(email);
            return Redirect("Home");
        }
        
    }
}