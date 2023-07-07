using Microsoft.AspNetCore.Mvc;

namespace HinhLam_Dev.Controllers
{
    public class ServiceController : Controller
    {

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
            return View("ServiceDetails");
        }
    }
}
