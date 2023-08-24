using Microsoft.AspNetCore.Mvc;

namespace HinhLam_Dev.Controllers
{
    public class SiteMapController : Controller
    {
        [Route("hinhlam-sitemap-route")] // Change this route to match the route defined in the endpoint mapping
        [HttpGet]
        public IActionResult SiteMap()
        {
            return PhysicalFile(Path.Combine(Directory.GetCurrentDirectory(), "wwwroot", "sitemap.xml"), "application/xml");
        }
    }
}
