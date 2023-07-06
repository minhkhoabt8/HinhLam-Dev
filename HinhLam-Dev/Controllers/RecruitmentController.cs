using Microsoft.AspNetCore.Mvc;

namespace HinhLam_Dev.Controllers
{
    public class RecruitmentController : Controller
    {
        [HttpGet("/tuyen-dung")]
        public IActionResult Recruitment()
        {
            return View();
        }
    }
}
