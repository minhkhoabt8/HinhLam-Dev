
using HinhLam_DataObject.Model;
using Microsoft.AspNetCore.Identity.EntityFrameworkCore;
using Microsoft.EntityFrameworkCore;
using System.Reflection.Emit;


namespace HinhLam_DataObject.DataAccess
{
    public class ApplicationDbContext : DbContext
    {
        public ApplicationDbContext(DbContextOptions<ApplicationDbContext> options) : base(options)
        {
        }

        protected override void OnModelCreating(ModelBuilder builder)
        {

            base.OnModelCreating(builder);

            builder.Entity<Content>(b =>
            {
                b.ToTable("Content");

                b.HasKey(e => e.ContentID);
                b.Property(e => e.ContentID).HasMaxLength(50);

                b.Property(e => e.Title).HasColumnType("nvarchar").HasMaxLength(100).IsRequired();
                b.Property(e => e.Contents).HasColumnType("ntext").IsRequired();
                b.Property(e => e.ContentsCN).HasColumnType("ntext").IsRequired();
                b.Property(e => e.ContentsEN).HasColumnType("ntext").IsRequired();
                b.Property(e => e.ContentCount).HasColumnType("int");

                b.HasMany(e => e.SubMenuContent)
                    .WithOne(e => e.Content)
                    .HasForeignKey(ur => ur.ContentId)
                    .IsRequired();

            });

            builder.Entity<Menu>(b =>
            {
                b.ToTable("Menu");

                b.HasKey(e => e.MenuId);
                b.Property(e => e.MenuId).HasMaxLength(50);

                b.Property(e => e.MenuName).HasColumnType("nvarchar").HasMaxLength(100).IsRequired();
                b.Property(e => e.MenuNameCN).HasColumnType("nvarchar").HasMaxLength(100).IsRequired();
                b.Property(e => e.MenuNameEN).HasColumnType("nvarchar").HasMaxLength(100).IsRequired();
                b.Property(e => e.HrefLink).HasColumnType("nvarchar").HasMaxLength(100);
                b.Property(e => e.HrefLinkCN).HasColumnType("nvarchar").HasMaxLength(100);
                b.Property(e => e.HrefLinkEN).HasColumnType("nvarchar").HasMaxLength(100);
                b.Property(e => e.MenuCount).HasColumnType("int");

                b.HasMany(e => e.MenuSubMenu)
                    .WithOne(e => e.Menu)
                    .HasForeignKey(ur => ur.MenuId)
                    .IsRequired();


            });

 
            builder.Entity<SubMenu>(b =>
            {
                b.ToTable("SubMenu");

                b.HasKey(e => e.SubMenuID);
                b.Property(e => e.SubMenuID).HasMaxLength(50);

                b.Property(e => e.Title).HasColumnType("nvarchar").HasMaxLength(100).IsRequired();
                b.Property(e => e.TitleEN).HasColumnType("nvarchar").HasMaxLength(100).IsRequired();
                b.Property(e => e.TitleCN).HasColumnType("nvarchar").HasMaxLength(100).IsRequired();
                b.Property(e => e.Description).HasColumnType("ntext").HasMaxLength(100);
                b.Property(e => e.SubMenuCount).HasColumnType("int");

                b.HasMany(e => e.MenuSubMenu)
                    .WithOne(e => e.SubMenu)
                    .HasForeignKey(ur => ur.SubMenuId)
                    .IsRequired();

                b.HasMany(e => e.SubMenuContent)
                    .WithOne(e => e.SubMenu)
                    .HasForeignKey(ur => ur.SubMenuId)
                    .IsRequired();

            });

        }

        public virtual DbSet<Menu> Menu { get; set; }

        public virtual DbSet<SubMenu> SubMenu { get; set; }

        public virtual DbSet<Content> Content { get; set; }

        public virtual DbSet<SubMenuContent> SubMenuContent { get; set; }
        public virtual DbSet<MenuSubMenu> MenuSubMenu { get; set; }
    }
}
