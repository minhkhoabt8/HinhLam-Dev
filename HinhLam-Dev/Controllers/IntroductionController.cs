using Microsoft.AspNetCore.Mvc;

namespace HinhLam_Dev.Controllers
{
    public class IntroductionController : Controller
    {
        private readonly ILogger<IntroductionController> _logger;

        public IntroductionController(ILogger<IntroductionController> logger)
        {
            _logger = logger;
        }
        public IActionResult Index()
        {
            return View();
        }
    }
}
