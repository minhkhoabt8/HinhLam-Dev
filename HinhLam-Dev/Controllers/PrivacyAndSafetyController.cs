using Microsoft.AspNetCore.Mvc;

namespace HinhLam_Dev.Controllers
{
    public class PrivacyAndSafetyController : Controller
    {
        [HttpGet("/chinh-sach-bao-mat")]
        public IActionResult Privacy()
        {
            return View("Privacy");
        }

        [HttpGet("en/privacy-en")]
        public IActionResult PrivacyEN()
        {
            return View("Privacy-en");
        }

        [HttpGet("cn/privacy-cn")]
        public IActionResult PrivacyCN()
        {
            return View("Privacy-cn");
        }
    }
}
