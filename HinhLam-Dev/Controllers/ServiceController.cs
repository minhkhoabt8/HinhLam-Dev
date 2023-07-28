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

        [HttpGet("/en/services/{name}", Name = "ServiceDetailsEN")]
        public IActionResult ServiceDetailsEN(string name)
        {
            var result = _menuService.GetAllContentOfMenu(name);
            if(result == null)
            {
                return View("Error");
            }
            return View("ServiceDetails-en", result);
        }

        [HttpGet("/cn/services-chinese/{name}", Name = "ServiceDetailsCN")]
        public IActionResult ServiceDetailsCN(string name)
        {
            var result = _menuService.GetAllContentOfMenu(name);
            if (result == null)
            {
                return View("Error");
            }
            return View("ServiceDetails-cn", result);
        }

        [HttpGet("/dich-vu/{name}", Name = "ServiceDetails")]
        public IActionResult Services(string name)
        {
            var result = _menuService.GetAllContentOfMenu(name);
            if (result == null)
            {
                return View("Error");
            }
            return View("ServiceDetails", result);
        }
    }
}
