using Microsoft.EntityFrameworkCore.Migrations;

#nullable disable

namespace HinhLam_Dev.Migrations
{
    public partial class AddPosition : Migration
    {
        protected override void Up(MigrationBuilder migrationBuilder)
        {
            migrationBuilder.AddColumn<int>(
                name: "SubMenuCount",
                table: "SubMenu",
                type: "int",
                nullable: false,
                defaultValue: 0);

            migrationBuilder.AddColumn<int>(
                name: "MenuCount",
                table: "Menu",
                type: "int",
                nullable: false,
                defaultValue: 0);

            migrationBuilder.AddColumn<int>(
                name: "ContentCount",
                table: "Content",
                type: "int",
                nullable: false,
                defaultValue: 0);
        }

        protected override void Down(MigrationBuilder migrationBuilder)
        {
            migrationBuilder.DropColumn(
                name: "SubMenuCount",
                table: "SubMenu");

            migrationBuilder.DropColumn(
                name: "MenuCount",
                table: "Menu");

            migrationBuilder.DropColumn(
                name: "ContentCount",
                table: "Content");
        }
    }
}
