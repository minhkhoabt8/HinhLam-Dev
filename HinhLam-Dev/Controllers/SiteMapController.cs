using Microsoft.AspNetCore.Mvc;

namespace HinhLam_Dev.Controllers
{
    public class SiteMapController : Controller
    {
        [Route("hinhlam-sitemap-route")]
        [HttpGet]
        public IActionResult SiteMap()
        {
            return PhysicalFile(Path.Combine(Directory.GetCurrentDirectory(), "wwwroot", "sitemap.xml"), "application/xml");
        }
    }
}
