using Microsoft.AspNetCore.Mvc;

namespace HinhLam_Dev.Controllers
{
    public class ErrorController : Controller
    {
        [Route("Error/{statusCode}")]
        public IActionResult HttpStatusCodeHandler(int statusCode)
        {
            // You can customize this method to handle different status codes if needed
            // For now, we'll just show the same error view for all status codes.
            return View("Error");
        }
    }
}
