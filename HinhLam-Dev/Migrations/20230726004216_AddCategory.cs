using System;
using Microsoft.EntityFrameworkCore.Migrations;

#nullable disable

namespace HinhLam_Dev.Migrations
{
    public partial class AddCategory : Migration
    {
        protected override void Up(MigrationBuilder migrationBuilder)
        {
            migrationBuilder.AlterColumn<string>(
                name: "TitleEN",
                table: "SubMenu",
                type: "nvarchar(100)",
                maxLength: 100,
                nullable: true,
                oldClrType: typeof(string),
                oldType: "nvarchar(100)",
                oldMaxLength: 100);

            migrationBuilder.AlterColumn<string>(
                name: "TitleCN",
                table: "SubMenu",
                type: "nvarchar(100)",
                maxLength: 100,
                nullable: true,
                oldClrType: typeof(string),
                oldType: "nvarchar(100)",
                oldMaxLength: 100);

            migrationBuilder.AlterColumn<string>(
                name: "Title",
                table: "SubMenu",
                type: "nvarchar(100)",
                maxLength: 100,
                nullable: true,
                oldClrType: typeof(string),
                oldType: "nvarchar(100)",
                oldMaxLength: 100);

            migrationBuilder.AlterColumn<string>(
                name: "DescriptionEN",
                table: "SubMenu",
                type: "ntext",
                nullable: false,
                defaultValueSql: "(N'')",
                oldClrType: typeof(string),
                oldType: "ntext",
                oldMaxLength: 100);

            migrationBuilder.AlterColumn<string>(
                name: "DescriptionCN",
                table: "SubMenu",
                type: "ntext",
                nullable: false,
                defaultValueSql: "(N'')",
                oldClrType: typeof(string),
                oldType: "ntext",
                oldMaxLength: 100);

            migrationBuilder.AlterColumn<string>(
                name: "HrefLinkEN",
                table: "Menu",
                type: "nvarchar(100)",
                maxLength: 100,
                nullable: false,
                defaultValueSql: "(N'')",
                oldClrType: typeof(string),
                oldType: "nvarchar(100)",
                oldMaxLength: 100);

            migrationBuilder.AlterColumn<string>(
                name: "HrefLinkCN",
                table: "Menu",
                type: "nvarchar(100)",
                maxLength: 100,
                nullable: false,
                defaultValueSql: "(N'')",
                oldClrType: typeof(string),
                oldType: "nvarchar(100)",
                oldMaxLength: 100);

            migrationBuilder.AlterColumn<string>(
                name: "HrefLink",
                table: "Menu",
                type: "nvarchar(100)",
                maxLength: 100,
                nullable: false,
                defaultValueSql: "(N'')",
                oldClrType: typeof(string),
                oldType: "nvarchar(100)",
                oldMaxLength: 100);

            migrationBuilder.AddColumn<string>(
                name: "CateId",
                table: "Menu",
                type: "nvarchar(50)",
                maxLength: 50,
                nullable: true);

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

            migrationBuilder.CreateIndex(
                name: "IX_Menu_CateId",
                table: "Menu",
                column: "CateId");

            migrationBuilder.AddForeignKey(
                name: "FK_Menu_Category",
                table: "Menu",
                column: "CateId",
                principalTable: "Category",
                principalColumn: "CateId");
        }

        protected override void Down(MigrationBuilder migrationBuilder)
        {
            migrationBuilder.DropForeignKey(
                name: "FK_Menu_Category",
                table: "Menu");

            migrationBuilder.DropTable(
                name: "Category");

            migrationBuilder.DropIndex(
                name: "IX_Menu_CateId",
                table: "Menu");

            migrationBuilder.DropColumn(
                name: "CateId",
                table: "Menu");

            migrationBuilder.AlterColumn<string>(
                name: "TitleEN",
                table: "SubMenu",
                type: "nvarchar(100)",
                maxLength: 100,
                nullable: false,
                defaultValue: "",
                oldClrType: typeof(string),
                oldType: "nvarchar(100)",
                oldMaxLength: 100,
                oldNullable: true);

            migrationBuilder.AlterColumn<string>(
                name: "TitleCN",
                table: "SubMenu",
                type: "nvarchar(100)",
                maxLength: 100,
                nullable: false,
                defaultValue: "",
                oldClrType: typeof(string),
                oldType: "nvarchar(100)",
                oldMaxLength: 100,
                oldNullable: true);

            migrationBuilder.AlterColumn<string>(
                name: "Title",
                table: "SubMenu",
                type: "nvarchar(100)",
                maxLength: 100,
                nullable: false,
                defaultValue: "",
                oldClrType: typeof(string),
                oldType: "nvarchar(100)",
                oldMaxLength: 100,
                oldNullable: true);

            migrationBuilder.AlterColumn<string>(
                name: "DescriptionEN",
                table: "SubMenu",
                type: "ntext",
                maxLength: 100,
                nullable: false,
                oldClrType: typeof(string),
                oldType: "ntext",
                oldDefaultValueSql: "(N'')");

            migrationBuilder.AlterColumn<string>(
                name: "DescriptionCN",
                table: "SubMenu",
                type: "ntext",
                maxLength: 100,
                nullable: false,
                oldClrType: typeof(string),
                oldType: "ntext",
                oldDefaultValueSql: "(N'')");

            migrationBuilder.AlterColumn<string>(
                name: "HrefLinkEN",
                table: "Menu",
                type: "nvarchar(100)",
                maxLength: 100,
                nullable: false,
                oldClrType: typeof(string),
                oldType: "nvarchar(100)",
                oldMaxLength: 100,
                oldDefaultValueSql: "(N'')");

            migrationBuilder.AlterColumn<string>(
                name: "HrefLinkCN",
                table: "Menu",
                type: "nvarchar(100)",
                maxLength: 100,
                nullable: false,
                oldClrType: typeof(string),
                oldType: "nvarchar(100)",
                oldMaxLength: 100,
                oldDefaultValueSql: "(N'')");

            migrationBuilder.AlterColumn<string>(
                name: "HrefLink",
                table: "Menu",
                type: "nvarchar(100)",
                maxLength: 100,
                nullable: false,
                oldClrType: typeof(string),
                oldType: "nvarchar(100)",
                oldMaxLength: 100,
                oldDefaultValueSql: "(N'')");
        }
    }
}
