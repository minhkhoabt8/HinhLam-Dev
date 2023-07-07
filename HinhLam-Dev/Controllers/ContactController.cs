using Microsoft.AspNetCore.Mvc;

namespace HinhLam_Dev.Controllers
{
    public class ContactController : Controller
    {
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
    }
}
