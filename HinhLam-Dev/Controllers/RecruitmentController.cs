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
        public async Task<IActionResult> Recruitment([FromForm] RecruitmentInfoModel model, string language)
        {
            if (ModelState.IsValid)
            {
                var isEmailSent = await _recruimentService.SendRecruitmentEmail(model);
                switch (language)
                {
                    case "vn":
                        if (isEmailSent)
                        {
                            TempData["NotificationMessage"] = "Gửi Mail Thành Công! Cảm Ơn Quý Khách Đã Liên Hệ Với Chúng Tôi!";
                            TempData["NotificationType"] = "success";
                        }
                        else
                        {
                            TempData["NotificationMessage"] = "Có Lỗi Xảy Ra Khi Gửi Email. Vui Lòng Thử Lại Sau!";
                            TempData["NotificationType"] = "error";
                        }
                        break;

                    // Add more cases for other languages if needed
                    case "en":
                        // Handle French language here
                        if (isEmailSent)
                        {
                            TempData["NotificationMessage"] = "Send Email Successful! Thank You For Your Contact!";
                            TempData["NotificationType"] = "success";
                        }
                        else
                        {
                            TempData["NotificationMessage"] = "Sending Email Error. Please try again later!";
                            TempData["NotificationType"] = "error";
                        }
                        break;

                    case "cn":
                        if (isEmailSent)
                        {
                            TempData["NotificationMessage"] = "发送电子邮件成功！感谢您的联系！";
                            TempData["NotificationType"] = "success";
                        }
                        else
                        {
                            TempData["NotificationMessage"] = "发送电子邮件出错。请稍后再试！";
                            TempData["NotificationType"] = "error";
                        }
                        break;

                    // Add more cases for other languages as necessary

                    default:
                        // Default case if the language is not recognized
                        TempData["NotificationMessage"] = "Default message for unrecognized language";
                        TempData["NotificationType"] = "info";
                        break;
                }
                return View();
            }
            return View("Error");
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
