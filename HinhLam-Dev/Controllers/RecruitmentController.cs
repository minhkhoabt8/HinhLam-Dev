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

        [HttpGet("/en/careers/", Name = "Recruitment-chinese")]
        public IActionResult RecruitmentEN()
        {
            return View("Recruitment-en");
        }
        [HttpGet("/cn/careers-chinese/", Name = "Recruitment")]
        public IActionResult RecruitmentCN()
        {
            return View("Recruitment-cn");
        }
    }
}
