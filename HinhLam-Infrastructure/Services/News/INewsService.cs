using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using static HinhLam_DataObject.ViewModels.NewsViewModels;

namespace HinhLam_Infrastructure.Services.News
{
    public interface INewsService
    {
        NewsInfoModels GetNewsById(string id);
        List<NewsInfoModels> GetAllNews();
        void Remove(string id);
        void Create(NewsCreateModels model);
        NewsInfoModels GetContentOfNews(string newsName);
        public NewsInfoModels GetAllContentsOfNews(string newsName);
        public List<NewsInfoModels> PaginatedNews(int currentPage, int PageSize);
    }
}
