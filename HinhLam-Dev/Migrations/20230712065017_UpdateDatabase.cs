using Microsoft.EntityFrameworkCore.Migrations;

#nullable disable

namespace HinhLam_Dev.Migrations
{
    public partial class UpdateDatabase : Migration
    {
        protected override void Up(MigrationBuilder migrationBuilder)
        {
            migrationBuilder.AddColumn<string>(
                name: "DescriptionCN",
                table: "SubMenu",
                type: "ntext",
                maxLength: 100,
                nullable: false,
                defaultValue: "");

            migrationBuilder.AddColumn<string>(
                name: "DescriptionEN",
                table: "SubMenu",
                type: "ntext",
                maxLength: 100,
                nullable: false,
                defaultValue: "");

            migrationBuilder.AddColumn<string>(
                name: "TitleCN",
                table: "Content",
                type: "nvarchar(100)",
                maxLength: 100,
                nullable: false,
                defaultValue: "");

            migrationBuilder.AddColumn<string>(
                name: "TitleEN",
                table: "Content",
                type: "nvarchar(100)",
                maxLength: 100,
                nullable: false,
                defaultValue: "");
        }

        protected override void Down(MigrationBuilder migrationBuilder)
        {
            migrationBuilder.DropColumn(
                name: "DescriptionCN",
                table: "SubMenu");

            migrationBuilder.DropColumn(
                name: "DescriptionEN",
                table: "SubMenu");

            migrationBuilder.DropColumn(
                name: "TitleCN",
                table: "Content");

            migrationBuilder.DropColumn(
                name: "TitleEN",
                table: "Content");
        }
    }
}
