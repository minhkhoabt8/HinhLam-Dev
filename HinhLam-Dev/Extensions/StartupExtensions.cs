using HinhLam_DataObject.DataAccess;
using Microsoft.EntityFrameworkCore;
using System.Configuration;
using System.Reflection;

namespace HinhLam_Dev.Extensions
{
    public static class StartupExtensions
    {
       
        public static void AddBusinessServices(this IServiceCollection services)
        {
            
        }

        public static void AddRepositories(this IServiceCollection services)
        {

        }
            public static void AddDbContext(this IServiceCollection services, IConfiguration configuration)
        {

            services.AddDbContext<ApplicationDbContext>(opt =>
            {
                opt.UseSqlServer(configuration.GetConnectionString("DefaultConnectionString"),
                    b => b.MigrationsAssembly(Assembly.GetExecutingAssembly().GetName().Name)
                );
            });
        }
    }
}
