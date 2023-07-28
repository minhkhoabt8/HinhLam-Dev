using HinhLam_DataObject.DataAccess;
using HinhLam_DataObject.Models;
using Microsoft.EntityFrameworkCore;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace HinhLam_Infrastructure.Repositories.New
{
    public class NewsRepository : INewsRepository
    {
        private readonly HinhLamDBContext _dbContext;

        public NewsRepository(HinhLamDBContext dbContext)
        {
            _dbContext = dbContext;
        }

        public void Create(News news)
        {
            throw new NotImplementedException();
        }

        public News? GetAllContentOfNews(string newsName)
        {
            return _dbContext.News
                .Include(m => m.NewsContents)
                    .ThenInclude(ms => ms.Content)
                .Where(m => (m.LinkHref.Contains(newsName) || m.LinkHrefCn.Contains(newsName) || m.LinkHrefEn.Contains(newsName)) && m.Status == true)
                .FirstOrDefault(m => m.NewsContents.Any(ms => ms.Content.Status == true));
        }

        public List<News> GetAllNews()
        {
            throw new NotImplementedException();
        }

        public News GetNewsById(string id)
        {
            throw new NotImplementedException();
        }

        public void Remove(News news)
        {
            throw new NotImplementedException();
        }

        public void Update(News news)
        {
            throw new NotImplementedException();
        }
    }
}
