﻿// <auto-generated />
using System;
using HinhLam_DataObject.DataAccess;
using Microsoft.EntityFrameworkCore;
using Microsoft.EntityFrameworkCore.Infrastructure;
using Microsoft.EntityFrameworkCore.Metadata;
using Microsoft.EntityFrameworkCore.Migrations;
using Microsoft.EntityFrameworkCore.Storage.ValueConversion;

#nullable disable

namespace HinhLam_Dev.Migrations
{
    [DbContext(typeof(HinhLamDBContext))]
    [Migration("20230708023148_InitialCreate")]
    partial class InitialCreate
    {
        protected override void BuildTargetModel(ModelBuilder modelBuilder)
        {
#pragma warning disable 612, 618
            modelBuilder
                .HasAnnotation("ProductVersion", "6.0.10")
                .HasAnnotation("Relational:MaxIdentifierLength", 128);

            SqlServerModelBuilderExtensions.UseIdentityColumns(modelBuilder, 1L, 1);

            modelBuilder.Entity("HinhLam_DataObject.Model.Content", b =>
                {
                    b.Property<string>("ContentID")
                        .HasMaxLength(50)
                        .HasColumnType("nvarchar(50)");

                    b.Property<string>("Contents")
                        .IsRequired()
                        .HasColumnType("ntext");

                    b.Property<string>("ContentsCN")
                        .IsRequired()
                        .HasColumnType("ntext");

                    b.Property<string>("ContentsEN")
                        .IsRequired()
                        .HasColumnType("ntext");

                    b.Property<DateTime>("CreatedDate")
                        .HasColumnType("datetime2");

                    b.Property<bool>("Status")
                        .HasColumnType("bit");

                    b.Property<string>("Title")
                        .IsRequired()
                        .HasMaxLength(100)
                        .HasColumnType("nvarchar(100)");

                    b.HasKey("ContentID");

                    b.ToTable("Content", (string)null);
                });

            modelBuilder.Entity("HinhLam_DataObject.Model.Menu", b =>
                {
                    b.Property<string>("MenuId")
                        .HasMaxLength(50)
                        .HasColumnType("nvarchar(50)");

                    b.Property<DateTime>("CreatedDate")
                        .HasColumnType("datetime2");

                    b.Property<string>("MenuName")
                        .IsRequired()
                        .HasMaxLength(100)
                        .HasColumnType("nvarchar(100)");

                    b.Property<string>("MenuNameCN")
                        .IsRequired()
                        .HasMaxLength(100)
                        .HasColumnType("nvarchar(100)");

                    b.Property<string>("MenuNameEN")
                        .IsRequired()
                        .HasMaxLength(100)
                        .HasColumnType("nvarchar(100)");

                    b.Property<bool>("Status")
                        .HasColumnType("bit");

                    b.HasKey("MenuId");

                    b.ToTable("Menu", (string)null);
                });

            modelBuilder.Entity("HinhLam_DataObject.Model.MenuSubMenu", b =>
                {
                    b.Property<string>("Id")
                        .HasColumnType("nvarchar(450)");

                    b.Property<string>("MenuId")
                        .IsRequired()
                        .HasColumnType("nvarchar(50)");

                    b.Property<string>("SubMenuId")
                        .IsRequired()
                        .HasColumnType("nvarchar(50)");

                    b.HasKey("Id");

                    b.HasIndex("MenuId");

                    b.HasIndex("SubMenuId");

                    b.ToTable("MenuSubMenu");
                });

            modelBuilder.Entity("HinhLam_DataObject.Model.SubMenu", b =>
                {
                    b.Property<string>("SubMenuID")
                        .HasMaxLength(50)
                        .HasColumnType("nvarchar(50)");

                    b.Property<DateTime>("CreatedDate")
                        .HasColumnType("datetime2");

                    b.Property<string>("Description")
                        .IsRequired()
                        .HasMaxLength(100)
                        .HasColumnType("ntext");

                    b.Property<bool>("Status")
                        .HasColumnType("bit");

                    b.Property<string>("Title")
                        .IsRequired()
                        .HasMaxLength(100)
                        .HasColumnType("nvarchar(100)");

                    b.Property<string>("TitleCN")
                        .IsRequired()
                        .HasMaxLength(100)
                        .HasColumnType("nvarchar(100)");

                    b.Property<string>("TitleEN")
                        .IsRequired()
                        .HasMaxLength(100)
                        .HasColumnType("nvarchar(100)");

                    b.HasKey("SubMenuID");

                    b.ToTable("SubMenu", (string)null);
                });

            modelBuilder.Entity("HinhLam_DataObject.Model.SubMenuContent", b =>
                {
                    b.Property<string>("Id")
                        .HasColumnType("nvarchar(450)");

                    b.Property<string>("ContentId")
                        .IsRequired()
                        .HasColumnType("nvarchar(50)");

                    b.Property<string>("SubMenuId")
                        .IsRequired()
                        .HasColumnType("nvarchar(50)");

                    b.HasKey("Id");

                    b.HasIndex("ContentId");

                    b.HasIndex("SubMenuId");

                    b.ToTable("SubMenuContent");
                });

            modelBuilder.Entity("HinhLam_DataObject.Model.MenuSubMenu", b =>
                {
                    b.HasOne("HinhLam_DataObject.Model.Menu", "Menu")
                        .WithMany("MenuSubMenu")
                        .HasForeignKey("MenuId")
                        .OnDelete(DeleteBehavior.Cascade)
                        .IsRequired();

                    b.HasOne("HinhLam_DataObject.Model.SubMenu", "SubMenu")
                        .WithMany("MenuSubMenu")
                        .HasForeignKey("SubMenuId")
                        .OnDelete(DeleteBehavior.Cascade)
                        .IsRequired();

                    b.Navigation("Menu");

                    b.Navigation("SubMenu");
                });

            modelBuilder.Entity("HinhLam_DataObject.Model.SubMenuContent", b =>
                {
                    b.HasOne("HinhLam_DataObject.Model.Content", "Content")
                        .WithMany("SubMenuContent")
                        .HasForeignKey("ContentId")
                        .OnDelete(DeleteBehavior.Cascade)
                        .IsRequired();

                    b.HasOne("HinhLam_DataObject.Model.SubMenu", "SubMenu")
                        .WithMany("SubMenuContent")
                        .HasForeignKey("SubMenuId")
                        .OnDelete(DeleteBehavior.Cascade)
                        .IsRequired();

                    b.Navigation("Content");

                    b.Navigation("SubMenu");
                });

            modelBuilder.Entity("HinhLam_DataObject.Model.Content", b =>
                {
                    b.Navigation("SubMenuContent");
                });

            modelBuilder.Entity("HinhLam_DataObject.Model.Menu", b =>
                {
                    b.Navigation("MenuSubMenu");
                });

            modelBuilder.Entity("HinhLam_DataObject.Model.SubMenu", b =>
                {
                    b.Navigation("MenuSubMenu");

                    b.Navigation("SubMenuContent");
                });
#pragma warning restore 612, 618
        }
    }
}
