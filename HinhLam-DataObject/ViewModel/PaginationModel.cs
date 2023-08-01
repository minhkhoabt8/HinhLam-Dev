using HinhLam_DataObject.ViewModels;
using Microsoft.AspNetCore.Mvc;
using Microsoft.AspNetCore.Mvc.RazorPages;


namespace HinhLam_DataObject.ViewModel
{
    public class PaginationModel : PageModel
    {
        [BindProperty(SupportsGet = true)]
        //The current page number
        public int CurrentPage { get; set; } = 1;
        //The total number of records to be displayed
        public int Count { get; set; }
        //The number of records to display on each page (the page size)
        public int PageSize { get; set; } = 3;

        public int TotalPages => (int)Math.Ceiling(decimal.Divide(Count, PageSize));

        public List<MenuInfoModel> Pages { get; set;}
    }
}
