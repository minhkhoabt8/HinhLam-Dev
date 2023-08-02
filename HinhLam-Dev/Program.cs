using AutoMapper;
using HinhLam_Dev.Extensions;
using HinhLam_Infrastructure.Mapper;

var builder = WebApplication.CreateBuilder(args);

// Add services to the container.
builder.Services.AddControllersWithViews();
builder.Services.AddBusinessServices();
builder.Services.AddRepositories();
builder.Services.AddDbContext(builder.Configuration);
builder.Services.AddAutoMapper();
builder.Services.AddEmailSettings(builder.Configuration);

var app = builder.Build();

// Configure the HTTP request pipeline.
if (!app.Environment.IsDevelopment())
{

    builder.Services.AddConfigureLogging();

    app.UseExceptionHandler("/Home/Error");
    // The default HSTS value is 30 days. You may want to change this for production scenarios, see https://aka.ms/aspnetcore-hsts.
    app.UseHsts();
}
app.UseHttpsRedirection();
app.UseStaticFiles();

app.UseRouting();

app.UseAuthorization();

app.UseEndpoints(endpoints =>
{
    endpoints.MapControllerRoute(
        name: "en",
        pattern: "en/{controller=Home}/{action=Home}"
    );

    endpoints.MapControllerRoute(
        name: "cn",
        pattern: "cn/{controller=Home}/{action=Home}"
    );

    endpoints.MapControllerRoute(
        name: "default",
        pattern: "{controller=Home}/{action=Home}"
    );

    endpoints.MapControllerRoute(
        name: "en-services",
        pattern: "en/services/{name}",
        defaults: new { controller = "Service", action = "ServiceDetailsEN" }
    );

    endpoints.MapControllerRoute(
        name: "cn-services",
        pattern: "cn/services-chinese/{name}",
        defaults: new { controller = "Service", action = "ServiceDetailsCN" }
    );

    endpoints.MapControllerRoute(
        name: "services",
        pattern: "dich-vu/{name}",
        defaults: new { controller = "Service", action = "Services" }
    );
    endpoints.MapControllerRoute(
       name: "en-news",
       pattern: "en/news/{name}",
       defaults: new { controller = "News", action = "NewsDetailsEN" }
   );

    endpoints.MapControllerRoute(
        name: "en-news",
        pattern: "cn/news-chinese/{name}",
        defaults: new { controller = "News", action = "NewsDetailsCN" }
    );

    endpoints.MapControllerRoute(
        name: "news",
        pattern: "tin-tuc/{name}",
        defaults: new { controller = "News", action = "NewsDetails" }
    );
    
});

app.Run();



