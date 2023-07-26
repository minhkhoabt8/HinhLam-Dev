using HinhLam_Infrastructure.Services.Menu;
using Microsoft.AspNetCore.Mvc;
using Microsoft.AspNetCore.Mvc.RazorPages;
using static HinhLam_DataObject.ViewModels.ConsultViewModel;

namespace HinhLam_Dev.Controllers
{
    public class ContactController : Controller
    {
        private readonly IMenuService _menuService;

        public ContactController(IMenuService menuService)
        {
            _menuService = menuService;
        }

        [HttpGet("/lien-he")]
        public IActionResult Contact()
        {
            return View();
        }

        [HttpGet("/cn/contact-chinese/", Name = "ContactCN")]
        public IActionResult HomeCN()
        {
            return View("Contact-cn");
        }

        [HttpGet("/en/contact/", Name = "ContactEN")]
        public IActionResult HomeEN()
        {
            return View("Contact-en");
        }

        [HttpPost("/lien-he")]
        public IActionResult Contact([FromForm] ConsultWriteModel model)
        {
            if (ModelState.IsValid)
            {
                _menuService.SendConsultEmail(model);
                return View("Contact");
            }
            return View("Contact");
        }
    }
}
