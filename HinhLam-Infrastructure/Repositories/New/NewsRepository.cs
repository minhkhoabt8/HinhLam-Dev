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
                    .Include(m => m.NewsContents).ThenInclude(ms => ms.Content)
                    .Include(m => m.FileNews).ThenInclude(fn => fn.File)
                    .Where(m =>
                        (m.LinkHref.Contains(newsName) || m.LinkHrefCn.Contains(newsName) || m.LinkHrefEn.Contains(newsName)) &&
                        m.Status == true &&
                        m.NewsContents.Any(ms => ms.Content.Status == true))
                    .FirstOrDefault();
        }

        public List<News> GetAllNews()
        {
            return _dbContext.News
                .Where(n => n.Status == true && n.NewsContents.Any(nc => nc.Content.Status == true) && n.FileNews.Any(nc => nc.File.Status == true))
                .Include(m => m.NewsContents)
                    .ThenInclude(nc=>nc.Content)
                .Include(m => m.FileNews)
                    .ThenInclude(nc=>nc.File)
                .ToList();
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
