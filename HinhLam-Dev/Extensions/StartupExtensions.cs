using HinhLam_DataObject.DataAccess;
using HinhLam_Infrastructure.Mapper;
using HinhLam_Infrastructure.Repositories.Menu;
using HinhLam_Infrastructure.Services.Menu;
using Microsoft.AspNetCore.Hosting;
using Microsoft.EntityFrameworkCore;
using System.Configuration;
using System.Reflection;

namespace HinhLam_Dev.Extensions
{
    public static class StartupExtensions
    {
       
        public static void AddBusinessServices(this IServiceCollection services)
        {
            services.AddScoped<IMenuService, MenuService>();

        }

        public static void AddRepositories(this IServiceCollection services)
        {
            services.AddScoped<IMenuRepository, MenuRepository>();
        }

        //install AutoMapper.Extensions.Microsoft.DependencyInjection
        public static void AddAutoMapper(this IServiceCollection services)
        {
            services.AddAutoMapper(typeof(MappingProfile));
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
