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
        public static void AddDataBaseContext(this IServiceCollection services, string connectionString)
        {
            /*services.AddDbContextPool<ApplicationDbContext>(option => option.UseSqlServer(connectionString, b => b.MigrationsAssembly("CTDWeb_API")));*/
            //services.AddDbContext<ApplicationDbContext>(options => {
            //    // Sử dụng MS SQL Server
            //    options.UseSqlServer(connectionString, b => b.MigrationsAssembly("CTDWeb_API"));
            //});

            //services.AddIdentityCore<AppUser>().AddEntityFrameworkStores<ApplicationDbContext>().AddDefaultTokenProviders();

            /*services.Configure<IdentityOptions>(options => {
                // Thiết lập về Password
               *//* options.Password.RequireDigit = false; // Không bắt phải có số
                options.Password.RequireLowercase = false; // Không bắt phải có chữ thường
                options.Password.RequireNonAlphanumeric = false; // Không bắt ký tự đặc biệt
                options.Password.RequireUppercase = false; // Không bắt buộc chữ in
                options.Password.RequiredLength = 3; // Số ký tự tối thiểu của password
                options.Password.RequiredUniqueChars = 1; // Số ký tự riêng biệt*//*

                // Cấu hình Lockout - khóa user
                *//*options.Lockout.DefaultLockoutTimeSpan = TimeSpan.FromMinutes(5); // Khóa 5 phút
                options.Lockout.MaxFailedAccessAttempts = 5; // Thất bại 5 lầ thì khóa
                options.Lockout.AllowedForNewUsers = true;*//*

                // Cấu hình về User.
                *//*options.User.AllowedUserNameCharacters = // các ký tự đặt tên user
                    "abcdefghijklmnopqrstuvwxyzABCDEFGHIJKLMNOPQRSTUVWXYZ0123456789-._@+";
                options.User.RequireUniqueEmail = true;  // Email là duy nhất*//*

                // Cấu hình đăng nhập.
                *//*options.SignIn.RequireConfirmedEmail = true;            // Cấu hình xác thực địa chỉ email (email phải tồn tại)
                options.SignIn.RequireConfirmedPhoneNumber = false;     // Xác thực số điện thoại*//*

            });*/
        }
    }
}
