using HinhLam_DataObject.ViewModels;
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
        public async Task<IActionResult> Contact([FromForm] string email, [FromForm] string language)
        {
            bool isEmailSent = await  _homeService.SendHotContactEmail(email);

            switch (language)
            {
                case "vn":
                    if (isEmailSent)
                    {
                        TempData["NotificationMessage"] = "Gửi Mail Thành Công! Cảm Ơn Quý Khách Đã Liên Hệ Với Chúng Tôi!";
                        TempData["NotificationType"] = "success";
                    }
                    else
                    {
                        TempData["NotificationMessage"] = "Có Lỗi Xảy Ra Khi Gửi Email. Vui Lòng Thử Lại Sau!";
                        TempData["NotificationType"] = "error";
                    }
                    break;

                // Add more cases for other languages if needed
                case "en":
                    // Handle French language here
                    if (isEmailSent)
                    {
                        TempData["NotificationMessage"] = "Send Email Successful! Thank You For Your Contact!";
                        TempData["NotificationType"] = "success";
                    }
                    else
                    {
                        TempData["NotificationMessage"] = "Sending Email Error. Please try again later!";
                        TempData["NotificationType"] = "error";
                    }
                    break;

                case "cn":
                    if (isEmailSent)
                    {
                        TempData["NotificationMessage"] = "发送电子邮件成功！感谢您的联系！";
                        TempData["NotificationType"] = "success";
                    }
                    else
                    {
                        TempData["NotificationMessage"] = "发送电子邮件出错。请稍后再试！";
                        TempData["NotificationType"] = "error";
                    }
                    break;

                // Add more cases for other languages as necessary

                default:
                    // Default case if the language is not recognized
                    TempData["NotificationMessage"] = "Default message for unrecognized language";
                    TempData["NotificationType"] = "info";
                    break;
            }
            return Redirect("Home");
        }
        
    }
}