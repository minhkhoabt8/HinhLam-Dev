using HinhLam_Infrastructure.Services.Menu;
using Microsoft.AspNetCore.Mvc;

namespace HinhLam_Dev.Controllers
{
    public class ServiceController : Controller
    {
        private readonly IMenuService _menuService;

        public ServiceController(IMenuService menuService)
        {
            _menuService = menuService;
        }

        [HttpGet("/dich-vu")]
        public IActionResult Service()
        {
            return View();
        }

        [HttpGet("/cn/services-chinese/", Name = "ServiceCN")]
        public IActionResult ServiceCN()
        {
            return View("Service-cn");
        }

        [HttpGet("/en/services/", Name = "ServiceEN")]
        public IActionResult ServiceEN()
        {
            return View("Service-en");
        }

        [HttpGet("/dich-vu/go-roi-so-sach-ke-toan-dich-vu-ke-toan-hoan-thue/", Name = "ServiceDetailsEN")]
        public IActionResult ServiceDetailsEN()
        {
            //var result = _menuService.GetContentOfMenu("Gỡ rối sổ sách kế toán");
            return View("ServiceDetails");
        }
    }
}
