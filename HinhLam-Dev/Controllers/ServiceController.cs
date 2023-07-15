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

        [HttpGet("/dich-vu/{name}", Name = "ServiceDetails")]
        public IActionResult Services(string name)
        {
            //if(name == null)
            //{
            //    name = "Gỡ rối sổ sách kế toán";
            //}

            var result = _menuService.GetAllContentOfMenu(name);

            return View("ServiceDetails", result);
        }
    }
}
