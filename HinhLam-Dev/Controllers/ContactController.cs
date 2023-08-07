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
        public async Task<IActionResult> Contact([FromForm] ConsultWriteModel model, [FromForm] string language)
        {
            if (ModelState.IsValid)
            {
                var isEmailSent = await _menuService.SendConsultEmail(model);
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
                return View("Contact");
            }
            return View("Error");
        }
    }
}
