
using HinhLam_DataObject.Model;
using Microsoft.AspNetCore.Identity;
using Microsoft.AspNetCore.Identity.EntityFrameworkCore;
using Microsoft.EntityFrameworkCore;
using Microsoft.Extensions.Options;
using System;
using System.Collections.Generic;
using System.Text;


namespace HinhLam_DataObject.DataAccess
{
    public class ApplicationDbContext : IdentityDbContext
    {
        public ApplicationDbContext(DbContextOptions options) : base(options)
        {
        }

        protected override void OnModelCreating(ModelBuilder builder)
        {

            base.OnModelCreating(builder);

            builder.Entity<Content>(b =>
            {

                b.HasMany(e => e.SubMenuContent)
                    .WithOne(e => e.Content)
                    .HasForeignKey(ur => ur.ContentId)
                    .IsRequired();
            });

            builder.Entity<Menu>(b =>
            {

                b.HasMany(e => e.MenuSubMenu)
                    .WithOne(e => e.Menu)
                    .HasForeignKey(ur => ur.MenuId)
                    .IsRequired();
            });

            builder.Entity<SubMenu>(b =>
            {

                b.HasMany(e => e.SubMenuContent)
                    .WithOne(e => e.SubMenu)
                    .HasForeignKey(ur => ur.SubMenuId)
                    .IsRequired();

                b.HasMany(e => e.MenuSubMenu)
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
