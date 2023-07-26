using HinhLam_DataObject.ViewModel;
using HinhLam_Infrastructure.Services.Recruiment;
using Microsoft.AspNetCore.Mvc;
using static HinhLam_DataObject.ViewModel.RecruitmentViewModel;

namespace HinhLam_Dev.Controllers
{
    public class RecruitmentController : Controller
    {
        private readonly IRecruimentService _recruimentService;

        public RecruitmentController(IRecruimentService recruimentService)
        {
            _recruimentService = recruimentService;
        }

        [HttpGet("/tuyen-dung")]
        public IActionResult Recruitment()
        {
            return View();
        }

        [HttpPost("/tuyen-dung")]
        public IActionResult Recruitment([FromForm] RecruitmentInfoModel model)
        {
            if (ModelState.IsValid)
            {
                _recruimentService.SendRecruitmentEmail(model);
                return View();
            }
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
