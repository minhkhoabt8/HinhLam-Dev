using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace HinhLam_Infrastructure.Repositories.New
{
    public interface INewsRepository
    {
        HinhLam_DataObject.Models.News GetNewsById(string id);
        List<HinhLam_DataObject.Models.News> GetAllNews();
        void Remove(HinhLam_DataObject.Models.News news);
        void Create(HinhLam_DataObject.Models.News news);
        void Update(HinhLam_DataObject.Models.News news);
        HinhLam_DataObject.Models.News? GetAllContentOfNews(string newsName);
    }
}
