using HinhLam_DataObject.DataAccess;
using HinhLam_Infrastructure.Mapper;
using HinhLam_Infrastructure.Repositories.Menu;
using HinhLam_Infrastructure.Services.Menu;
using Microsoft.AspNetCore.Hosting;
using Microsoft.EntityFrameworkCore;
using Microsoft.Extensions.Localization;
using Microsoft.Extensions.Options;
using Microsoft.Extensions.WebEncoders;
using System.Configuration;
using System.Globalization;
using System.Reflection;
using System.Text.Encodings.Web;
using System.Text.Unicode;
using Microsoft.Extensions.Localization;
using HinhLam_Infrastructure.Services.Email.Repositories;
using HinhLam_Infrastructure.Services.Email.Services;
using HinhLam_DataObject.ViewModel;
using HinhLam_Infrastructure.Services.Recruiment;
using HinhLam_Infrastructure.Repositories.Recruiment;
using HinhLam_Infrastructure.Services.Home;
using HinhLam_Infrastructure.Repositories.Home;

namespace HinhLam_Dev.Extensions
{
    public static class StartupExtensions
    {

        public static void AddBusinessServices(this IServiceCollection services)
        {
            services.AddScoped<IMenuService, MenuService>();

            services.AddScoped<IEmailServices, EmailServices>();
            services.AddScoped<IRecruimentService, RecruimentService>();
            services.AddScoped<IHomeService, HomeService>();


        }

        public static void AddRepositories(this IServiceCollection services)
        {
            services.AddScoped<IMenuRepository, MenuRepository>();
            services.AddScoped<IRecuimentRepository, RecruimentRepository>();
            services.AddScoped<IHomeRepository, HomeRepository>();

        }

        //install AutoMapper.Extensions.Microsoft.DependencyInjection
        public static void AddAutoMapper(this IServiceCollection services)
        {
            services.AddAutoMapper(typeof(MappingProfile));
        }

        public static void AddEmailSettings(this IServiceCollection services, IConfiguration configuration)
        {
            services.Configure<EmailSettings>(configuration.GetSection("EmailSettings"));
        }

        public static void UsingUtf8(this IServiceCollection services)
        {
            services.Configure<WebEncoderOptions>(options =>
            {
                options.TextEncoderSettings = new TextEncoderSettings(UnicodeRanges.All);
            });
        }
        
        public static void AddDbContext(this IServiceCollection services, IConfiguration configuration)
        {
            // Other service registrations...
            services.AddDbContext<HinhLamDBContext>(opt =>
            {
                opt.UseSqlServer(configuration.GetConnectionString("DefaultConnectionString"),
                    b => b.MigrationsAssembly(Assembly.GetExecutingAssembly().GetName().Name)
                );
            });
        }
    }
}
