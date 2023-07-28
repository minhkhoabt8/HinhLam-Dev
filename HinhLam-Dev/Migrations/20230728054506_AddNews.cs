using System;
using Microsoft.EntityFrameworkCore.Migrations;

#nullable disable

namespace HinhLam_Dev.Migrations
{
    public partial class AddNews : Migration
    {
        protected override void Up(MigrationBuilder migrationBuilder)
        {
            migrationBuilder.CreateTable(
                name: "Category",
                columns: table => new
                {
                    CateId = table.Column<string>(type: "nvarchar(50)", maxLength: 50, nullable: false),
                    CateName = table.Column<string>(type: "nvarchar(100)", maxLength: 100, nullable: false),
                    CateNameEN = table.Column<string>(type: "nvarchar(100)", maxLength: 100, nullable: false),
                    CateNameCN = table.Column<string>(type: "nvarchar(100)", maxLength: 100, nullable: false),
                    CreateDate = table.Column<DateTime>(type: "datetime2", nullable: false),
                    Status = table.Column<bool>(type: "bit", nullable: false)
                },
                constraints: table =>
                {
                    table.PrimaryKey("PK_Category", x => x.CateId);
                });

            migrationBuilder.CreateTable(
                name: "Consult",
                columns: table => new
                {
                    ConsultId = table.Column<string>(type: "nvarchar(50)", maxLength: 50, nullable: false),
                    CustomerName = table.Column<string>(type: "nvarchar(50)", maxLength: 50, nullable: false),
                    CustomerCompany = table.Column<string>(type: "nvarchar(50)", maxLength: 50, nullable: false),
                    Email = table.Column<string>(type: "nvarchar(50)", maxLength: 50, nullable: false),
                    PhoneNumber = table.Column<string>(type: "nvarchar(50)", maxLength: 50, nullable: false),
                    Contents = table.Column<string>(type: "ntext", nullable: true),
                    CreatedDate = table.Column<DateTime>(type: "datetime2", nullable: false),
                    Response = table.Column<string>(type: "ntext", nullable: true),
                    ResponseStatus = table.Column<bool>(type: "bit", nullable: false),
                    ResponseDate = table.Column<DateTime>(type: "datetime2", nullable: true),
                    IsDelete = table.Column<bool>(type: "bit", nullable: false)
                },
                constraints: table =>
                {
                    table.PrimaryKey("PK_Consult", x => x.ConsultId);
                });

            migrationBuilder.CreateTable(
                name: "Content",
                columns: table => new
                {
                    ContentID = table.Column<string>(type: "nvarchar(50)", maxLength: 50, nullable: false),
                    Title = table.Column<string>(type: "nvarchar(250)", maxLength: 250, nullable: false),
                    Contents = table.Column<string>(type: "ntext", nullable: false),
                    ContentsCN = table.Column<string>(type: "ntext", nullable: false),
                    ContentsEN = table.Column<string>(type: "ntext", nullable: false),
                    CreatedDate = table.Column<DateTime>(type: "datetime2", nullable: false),
                    Status = table.Column<bool>(type: "bit", nullable: false),
                    ContentCount = table.Column<int>(type: "int", nullable: false),
                    TitleCN = table.Column<string>(type: "nvarchar(250)", maxLength: 250, nullable: false),
                    TitleEN = table.Column<string>(type: "nvarchar(250)", maxLength: 250, nullable: false)
                },
                constraints: table =>
                {
                    table.PrimaryKey("PK_Content", x => x.ContentID);
                });

            migrationBuilder.CreateTable(
                name: "News",
                columns: table => new
                {
                    NewsId = table.Column<string>(type: "nvarchar(50)", maxLength: 50, nullable: false),
                    Title = table.Column<string>(type: "nvarchar(150)", maxLength: 150, nullable: false),
                    TitleCN = table.Column<string>(type: "nvarchar(150)", maxLength: 150, nullable: false),
                    TitleEN = table.Column<string>(type: "nvarchar(150)", maxLength: 150, nullable: false),
                    LinkHref = table.Column<string>(type: "nvarchar(150)", maxLength: 150, nullable: false),
                    Status = table.Column<bool>(type: "bit", nullable: false),
                    CreateDate = table.Column<DateTime>(type: "datetime2", nullable: false)
                },
                constraints: table =>
                {
                    table.PrimaryKey("PK_News", x => x.NewsId);
                });

            migrationBuilder.CreateTable(
                name: "SubMenu",
                columns: table => new
                {
                    SubMenuID = table.Column<string>(type: "nvarchar(50)", maxLength: 50, nullable: false),
                    Title = table.Column<string>(type: "nvarchar(100)", maxLength: 100, nullable: true),
                    TitleEN = table.Column<string>(type: "nvarchar(100)", maxLength: 100, nullable: true),
                    TitleCN = table.Column<string>(type: "nvarchar(100)", maxLength: 100, nullable: true),
                    Description = table.Column<string>(type: "ntext", nullable: false),
                    CreatedDate = table.Column<DateTime>(type: "datetime2", nullable: false),
                    Status = table.Column<bool>(type: "bit", nullable: false),
                    SubMenuCount = table.Column<int>(type: "int", nullable: false),
                    DescriptionCN = table.Column<string>(type: "ntext", nullable: false, defaultValueSql: "(N'')"),
                    DescriptionEN = table.Column<string>(type: "ntext", nullable: false, defaultValueSql: "(N'')")
                },
                constraints: table =>
                {
                    table.PrimaryKey("PK_SubMenu", x => x.SubMenuID);
                });

            migrationBuilder.CreateTable(
                name: "Menu",
                columns: table => new
                {
                    MenuId = table.Column<string>(type: "nvarchar(50)", maxLength: 50, nullable: false),
                    MenuName = table.Column<string>(type: "nvarchar(100)", maxLength: 100, nullable: false),
                    MenuNameCN = table.Column<string>(type: "nvarchar(100)", maxLength: 100, nullable: false),
                    MenuNameEN = table.Column<string>(type: "nvarchar(100)", maxLength: 100, nullable: false),
                    CateId = table.Column<string>(type: "nvarchar(50)", maxLength: 50, nullable: false),
                    CreatedDate = table.Column<DateTime>(type: "datetime2", nullable: false),
                    Status = table.Column<bool>(type: "bit", nullable: false),
                    MenuCount = table.Column<int>(type: "int", nullable: false),
                    HrefLink = table.Column<string>(type: "nvarchar(100)", maxLength: 100, nullable: false, defaultValueSql: "(N'')"),
                    HrefLinkCN = table.Column<string>(type: "nvarchar(100)", maxLength: 100, nullable: false, defaultValueSql: "(N'')"),
                    HrefLinkEN = table.Column<string>(type: "nvarchar(100)", maxLength: 100, nullable: false, defaultValueSql: "(N'')")
                },
                constraints: table =>
                {
                    table.PrimaryKey("PK_Menu", x => x.MenuId);
                    table.ForeignKey(
                        name: "FK_Menu_Category",
                        column: x => x.CateId,
                        principalTable: "Category",
                        principalColumn: "CateId",
                        onDelete: ReferentialAction.Cascade);
                });

            migrationBuilder.CreateTable(
                name: "NewsContent",
                columns: table => new
                {
                    NewsId = table.Column<string>(type: "nvarchar(50)", maxLength: 50, nullable: true),
                    ContentId = table.Column<string>(type: "nvarchar(50)", maxLength: 50, nullable: true)
                },
                constraints: table =>
                {
                    table.ForeignKey(
                        name: "FK_NewsContent_Content",
                        column: x => x.ContentId,
                        principalTable: "Content",
                        principalColumn: "ContentID");
                    table.ForeignKey(
                        name: "FK_NewsContent_News",
                        column: x => x.NewsId,
                        principalTable: "News",
                        principalColumn: "NewsId");
                });

            migrationBuilder.CreateTable(
                name: "SubMenuContent",
                columns: table => new
                {
                    Id = table.Column<string>(type: "nvarchar(450)", nullable: false),
                    SubMenuId = table.Column<string>(type: "nvarchar(50)", maxLength: 50, nullable: false),
                    ContentId = table.Column<string>(type: "nvarchar(50)", maxLength: 50, nullable: false)
                },
                constraints: table =>
                {
                    table.PrimaryKey("PK_SubMenuContent", x => x.Id);
                    table.ForeignKey(
                        name: "FK_SubMenuContent_Content_ContentId",
                        column: x => x.ContentId,
                        principalTable: "Content",
                        principalColumn: "ContentID",
                        onDelete: ReferentialAction.Cascade);
                    table.ForeignKey(
                        name: "FK_SubMenuContent_SubMenu_SubMenuId",
                        column: x => x.SubMenuId,
                        principalTable: "SubMenu",
                        principalColumn: "SubMenuID",
                        onDelete: ReferentialAction.Cascade);
                });

            migrationBuilder.CreateTable(
                name: "MenuSubMenu",
                columns: table => new
                {
                    Id = table.Column<string>(type: "nvarchar(450)", nullable: false),
                    MenuId = table.Column<string>(type: "nvarchar(50)", maxLength: 50, nullable: false),
                    SubMenuId = table.Column<string>(type: "nvarchar(50)", maxLength: 50, nullable: false)
                },
                constraints: table =>
                {
                    table.PrimaryKey("PK_MenuSubMenu", x => x.Id);
                    table.ForeignKey(
                        name: "FK_MenuSubMenu_Menu_MenuId",
                        column: x => x.MenuId,
                        principalTable: "Menu",
                        principalColumn: "MenuId",
                        onDelete: ReferentialAction.Cascade);
                    table.ForeignKey(
                        name: "FK_MenuSubMenu_SubMenu_SubMenuId",
                        column: x => x.SubMenuId,
                        principalTable: "SubMenu",
                        principalColumn: "SubMenuID",
                        onDelete: ReferentialAction.Cascade);
                });

            migrationBuilder.CreateIndex(
                name: "IX_Menu_CateId",
                table: "Menu",
                column: "CateId");

            migrationBuilder.CreateIndex(
                name: "IX_MenuSubMenu_MenuId",
                table: "MenuSubMenu",
                column: "MenuId");

            migrationBuilder.CreateIndex(
                name: "IX_MenuSubMenu_SubMenuId",
                table: "MenuSubMenu",
                column: "SubMenuId");

            migrationBuilder.CreateIndex(
                name: "IX_NewsContent_ContentId",
                table: "NewsContent",
                column: "ContentId");

            migrationBuilder.CreateIndex(
                name: "IX_NewsContent_NewsId",
                table: "NewsContent",
                column: "NewsId");

            migrationBuilder.CreateIndex(
                name: "IX_SubMenuContent_ContentId",
                table: "SubMenuContent",
                column: "ContentId");

            migrationBuilder.CreateIndex(
                name: "IX_SubMenuContent_SubMenuId",
                table: "SubMenuContent",
                column: "SubMenuId");
        }

        protected override void Down(MigrationBuilder migrationBuilder)
        {
            migrationBuilder.DropTable(
                name: "Consult");

            migrationBuilder.DropTable(
                name: "MenuSubMenu");

            migrationBuilder.DropTable(
                name: "NewsContent");

            migrationBuilder.DropTable(
                name: "SubMenuContent");

            migrationBuilder.DropTable(
                name: "Menu");

            migrationBuilder.DropTable(
                name: "News");

            migrationBuilder.DropTable(
                name: "Content");

            migrationBuilder.DropTable(
                name: "SubMenu");

            migrationBuilder.DropTable(
                name: "Category");
        }
    }
}
