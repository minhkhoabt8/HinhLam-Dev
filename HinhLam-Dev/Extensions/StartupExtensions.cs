using HinhLam_DataObject.DataAccess;
using Microsoft.EntityFrameworkCore;
using System.Configuration;

namespace HinhLam_Dev.Extensions
{
    public static class StartupExtensions
    {
       
        public static void AddBusinessServices(this IServiceCollection services)
        {
            //services.AddScoped<IUserServices, UserServices>();
            //services.AddScoped<IMailService, MailService>();
            //services.AddScoped<IContentService, ContentService>();
            //services.AddScoped<IMenuService, MenuService>();
            //services.AddScoped<ISubMenuService, SubMenuService>();
            //services.AddScoped<IRoleService, RoleService>();
        }
        public static void ConfigureServices(IServiceCollection services, IConfiguration configuration)
        {
            services.AddDbContext<ApplicationDbContext>(options =>
                 options.UseSqlServer(configuration.GetConnectionString("DefaultConnectionString")));


            // Other services configuration...
        }
    }
}
