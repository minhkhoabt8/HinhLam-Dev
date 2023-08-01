using System;
using System.Collections.Generic;
using HinhLam_DataObject.Models;
using Microsoft.EntityFrameworkCore;
using Microsoft.EntityFrameworkCore.Metadata;

namespace HinhLam_DataObject.DataAccess
{
    public partial class HinhLamDBContext : DbContext
    {
        public HinhLamDBContext()
        {
        }

        public HinhLamDBContext(DbContextOptions<HinhLamDBContext> options)
            : base(options)
        {
        }

        public virtual DbSet<Category> Categories { get; set; } = null!;
        public virtual DbSet<Consult> Consults { get; set; } = null!;
        public virtual DbSet<Content> Contents { get; set; } = null!;
        public virtual DbSet<HinhLam_DataObject.Models.File> Files { get; set; } = null!;
        public virtual DbSet<FileContent> FileContents { get; set; } = null!;
        public virtual DbSet<FileMenu> FileMenus { get; set; } = null!;
        public virtual DbSet<FileNews> FileNews { get; set; } = null!;
        public virtual DbSet<FileSubMenu> FileSubMenus { get; set; } = null!;
        public virtual DbSet<Menu> Menus { get; set; } = null!;
        public virtual DbSet<MenuSubMenu> MenuSubMenus { get; set; } = null!;
        public virtual DbSet<News> News { get; set; } = null!;
        public virtual DbSet<NewsContent> NewsContents { get; set; } = null!;
        public virtual DbSet<SubMenu> SubMenus { get; set; } = null!;
        public virtual DbSet<SubMenuContent> SubMenuContents { get; set; } = null!;

        protected override void OnModelCreating(ModelBuilder modelBuilder)
        {
            modelBuilder.Entity<Category>(entity =>
            {
                entity.HasKey(e => e.CateId);

                entity.ToTable("Category");

                entity.Property(e => e.CateId).HasMaxLength(50);

                entity.Property(e => e.CateName).HasMaxLength(100);

                entity.Property(e => e.CateNameCn)
                    .HasMaxLength(100)
                    .HasColumnName("CateNameCN");

                entity.Property(e => e.CateNameEn)
                    .HasMaxLength(100)
                    .HasColumnName("CateNameEN");
            });

            modelBuilder.Entity<Consult>(entity =>
            {
                entity.ToTable("Consult");

                entity.Property(e => e.ConsultId).HasMaxLength(50);

                entity.Property(e => e.Contents).HasColumnType("ntext");

                entity.Property(e => e.CustomerCompany).HasMaxLength(50);

                entity.Property(e => e.CustomerName).HasMaxLength(50);

                entity.Property(e => e.Email).HasMaxLength(50);

                entity.Property(e => e.PhoneNumber).HasMaxLength(50);

                entity.Property(e => e.Response).HasColumnType("ntext");
            });

            modelBuilder.Entity<Content>(entity =>
            {
                entity.ToTable("Content");

                entity.Property(e => e.ContentId)
                    .HasMaxLength(50)
                    .HasColumnName("ContentID");

                entity.Property(e => e.Contents).HasColumnType("ntext");

                entity.Property(e => e.ContentsCn)
                    .HasColumnType("ntext")
                    .HasColumnName("ContentsCN");

                entity.Property(e => e.ContentsEn)
                    .HasColumnType("ntext")
                    .HasColumnName("ContentsEN");

                entity.Property(e => e.Title).HasMaxLength(250);

                entity.Property(e => e.TitleCn)
                    .HasMaxLength(250)
                    .HasColumnName("TitleCN");

                entity.Property(e => e.TitleEn)
                    .HasMaxLength(250)
                    .HasColumnName("TitleEN");
            });

            modelBuilder.Entity<HinhLam_DataObject.Models.File>(entity =>
            {
                entity.ToTable("File");

                entity.Property(e => e.FileId).HasMaxLength(50);

                entity.Property(e => e.FileHref).HasMaxLength(150);

                entity.Property(e => e.FileName).HasMaxLength(150);
            });

            modelBuilder.Entity<FileContent>(entity =>
            {
                entity.ToTable("FileContent");

                entity.Property(e => e.Id).HasMaxLength(50);

                entity.Property(e => e.ContentId).HasMaxLength(50);

                entity.Property(e => e.FileId).HasMaxLength(50);

                entity.HasOne(d => d.Content)
                    .WithMany(p => p.FileContents)
                    .HasForeignKey(d => d.ContentId)
                    .HasConstraintName("FK_FileContent_Content");

                entity.HasOne(d => d.File)
                    .WithMany(p => p.FileContents)
                    .HasForeignKey(d => d.FileId)
                    .HasConstraintName("FK_FileContent_File");
            });

            modelBuilder.Entity<FileMenu>(entity =>
            {
                entity.ToTable("FileMenu");

                entity.Property(e => e.Id).HasMaxLength(50);

                entity.Property(e => e.FileId).HasMaxLength(50);

                entity.Property(e => e.MenuId).HasMaxLength(50);

                entity.HasOne(d => d.IdNavigation)
                    .WithOne(p => p.FileMenu)
                    .HasForeignKey<FileMenu>(d => d.Id)
                    .OnDelete(DeleteBehavior.ClientSetNull)
                    .HasConstraintName("FK_FileMenu_File");

                entity.HasOne(d => d.Menu)
                    .WithMany(p => p.FileMenus)
                    .HasForeignKey(d => d.MenuId)
                    .HasConstraintName("FK_FileMenu_Menu");
            });

            modelBuilder.Entity<FileNews>(entity =>
            {
                entity.Property(e => e.Id).HasMaxLength(50);

                entity.Property(e => e.FileId).HasMaxLength(50);

                entity.Property(e => e.NewsId).HasMaxLength(50);

                entity.HasOne(d => d.File)
                    .WithMany(p => p.FileNews)
                    .HasForeignKey(d => d.FileId)
                    .HasConstraintName("FK_FileNews_File");

                entity.HasOne(d => d.News)
                    .WithMany(p => p.FileNews)
                    .HasForeignKey(d => d.NewsId)
                    .HasConstraintName("FK_FileNews_News");
            });

            modelBuilder.Entity<FileSubMenu>(entity =>
            {
                entity.ToTable("FileSubMenu");

                entity.Property(e => e.Id).HasMaxLength(50);

                entity.Property(e => e.FileId).HasMaxLength(50);

                entity.Property(e => e.SubMenuId).HasMaxLength(50);

                entity.HasOne(d => d.IdNavigation)
                    .WithOne(p => p.FileSubMenu)
                    .HasForeignKey<FileSubMenu>(d => d.Id)
                    .OnDelete(DeleteBehavior.ClientSetNull)
                    .HasConstraintName("FK_FileSubMenu_File");

                entity.HasOne(d => d.SubMenu)
                    .WithMany(p => p.FileSubMenus)
                    .HasForeignKey(d => d.SubMenuId)
                    .HasConstraintName("FK_FileSubMenu_SubMenu");
            });

            modelBuilder.Entity<Menu>(entity =>
            {
                entity.ToTable("Menu");

                entity.Property(e => e.MenuId).HasMaxLength(50);

                entity.Property(e => e.CateId).HasMaxLength(50);

                entity.Property(e => e.HrefLink)
                    .HasMaxLength(100)
                    .HasDefaultValueSql("(N'')");

                entity.Property(e => e.HrefLinkCn)
                    .HasMaxLength(100)
                    .HasColumnName("HrefLinkCN")
                    .HasDefaultValueSql("(N'')");

                entity.Property(e => e.HrefLinkEn)
                    .HasMaxLength(100)
                    .HasColumnName("HrefLinkEN")
                    .HasDefaultValueSql("(N'')");

                entity.Property(e => e.MenuName).HasMaxLength(100);

                entity.Property(e => e.MenuNameCn)
                    .HasMaxLength(100)
                    .HasColumnName("MenuNameCN");

                entity.Property(e => e.MenuNameEn)
                    .HasMaxLength(100)
                    .HasColumnName("MenuNameEN");

                entity.HasOne(d => d.Cate)
                    .WithMany(p => p.Menus)
                    .HasForeignKey(d => d.CateId)
                    .HasConstraintName("FK_Menu_Category");
            });

            modelBuilder.Entity<MenuSubMenu>(entity =>
            {
                entity.ToTable("MenuSubMenu");

                entity.HasIndex(e => e.MenuId, "IX_MenuSubMenu_MenuId");

                entity.HasIndex(e => e.SubMenuId, "IX_MenuSubMenu_SubMenuId");

                entity.Property(e => e.MenuId).HasMaxLength(50);

                entity.Property(e => e.SubMenuId).HasMaxLength(50);

                entity.HasOne(d => d.Menu)
                    .WithMany(p => p.MenuSubMenus)
                    .HasForeignKey(d => d.MenuId);

                entity.HasOne(d => d.SubMenu)
                    .WithMany(p => p.MenuSubMenus)
                    .HasForeignKey(d => d.SubMenuId);
            });

            modelBuilder.Entity<News>(entity =>
            {
                entity.Property(e => e.NewsId).HasMaxLength(50);

                entity.Property(e => e.LinkHref).HasMaxLength(150);

                entity.Property(e => e.LinkHrefCn)
                    .HasMaxLength(150)
                    .HasColumnName("LinkHrefCN");

                entity.Property(e => e.LinkHrefEn)
                    .HasMaxLength(150)
                    .HasColumnName("LinkHrefEN");

                entity.Property(e => e.Title).HasMaxLength(150);

                entity.Property(e => e.TitleCn)
                    .HasMaxLength(150)
                    .HasColumnName("TitleCN");

                entity.Property(e => e.TitleEn)
                    .HasMaxLength(150)
                    .HasColumnName("TitleEN");
            });

            modelBuilder.Entity<NewsContent>(entity =>
            {
                entity.ToTable("NewsContent");

                entity.Property(e => e.Id).HasMaxLength(50);

                entity.Property(e => e.ContentId).HasMaxLength(50);

                entity.Property(e => e.NewsId).HasMaxLength(50);

                entity.HasOne(d => d.Content)
                    .WithMany(p => p.NewsContents)
                    .HasForeignKey(d => d.ContentId)
                    .HasConstraintName("FK_NewsContent_Content");

                entity.HasOne(d => d.News)
                    .WithMany(p => p.NewsContents)
                    .HasForeignKey(d => d.NewsId)
                    .HasConstraintName("FK_NewsContent_News");
            });

            modelBuilder.Entity<SubMenu>(entity =>
            {
                entity.ToTable("SubMenu");

                entity.Property(e => e.SubMenuId)
                    .HasMaxLength(50)
                    .HasColumnName("SubMenuID");

                entity.Property(e => e.Description).HasColumnType("ntext");

                entity.Property(e => e.DescriptionCn)
                    .HasColumnType("ntext")
                    .HasColumnName("DescriptionCN")
                    .HasDefaultValueSql("(N'')");

                entity.Property(e => e.DescriptionEn)
                    .HasColumnType("ntext")
                    .HasColumnName("DescriptionEN")
                    .HasDefaultValueSql("(N'')");

                entity.Property(e => e.Title).HasMaxLength(100);

                entity.Property(e => e.TitleCn)
                    .HasMaxLength(100)
                    .HasColumnName("TitleCN");

                entity.Property(e => e.TitleEn)
                    .HasMaxLength(100)
                    .HasColumnName("TitleEN");
            });

            modelBuilder.Entity<SubMenuContent>(entity =>
            {
                entity.ToTable("SubMenuContent");

                entity.HasIndex(e => e.ContentId, "IX_SubMenuContent_ContentId");

                entity.HasIndex(e => e.SubMenuId, "IX_SubMenuContent_SubMenuId");

                entity.Property(e => e.ContentId).HasMaxLength(50);

                entity.Property(e => e.SubMenuId).HasMaxLength(50);

                entity.HasOne(d => d.Content)
                    .WithMany(p => p.SubMenuContents)
                    .HasForeignKey(d => d.ContentId);

                entity.HasOne(d => d.SubMenu)
                    .WithMany(p => p.SubMenuContents)
                    .HasForeignKey(d => d.SubMenuId);
            });

            OnModelCreatingPartial(modelBuilder);
        }

        partial void OnModelCreatingPartial(ModelBuilder modelBuilder);
    }
}
