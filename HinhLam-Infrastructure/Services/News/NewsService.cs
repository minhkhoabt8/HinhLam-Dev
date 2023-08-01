using AutoMapper;
using HinhLam_DataObject.ViewModels;
using HinhLam_Infrastructure.Repositories.Menu;
using HinhLam_Infrastructure.Repositories.New;
using HinhLam_Infrastructure.Services.Email.Repositories;
using Microsoft.Extensions.Configuration;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using static HinhLam_DataObject.ViewModels.NewsViewModels;

namespace HinhLam_Infrastructure.Services.News
{
    public class NewsService : INewsService
    {
        private readonly INewsRepository _newsRepository;
        private readonly IMapper _mapper;

        public NewsService(INewsRepository newsRepository, IMapper mapper)
        {
            _newsRepository = newsRepository;
            _mapper = mapper;
        }

        public void Create(NewsCreateModels model)
        {
            throw new NotImplementedException();
        }

        public NewsInfoModels GetContentOfNews(string newsName)
        {
            throw new NotImplementedException();
        }

        public List<NewsInfoModels> GetAllNews()
        {
            var result = _newsRepository.GetAllNews();
            return _mapper.Map<List<NewsInfoModels>>(result);
            
        }

        public NewsInfoModels GetAllContentsOfNews(string newsName)
        {
            if (newsName != null)
            {
                var result = _newsRepository.GetAllContentOfNews(newsName);
                return _mapper.Map<NewsInfoModels>(result);
            }
            return null;
        }

        public NewsInfoModels GetNewsById(string id)
        {
            throw new NotImplementedException();
        }

        public void Remove(string id)
        {
            throw new NotImplementedException();
        }

        public List<NewsInfoModels> PaginatedNews(int currentPage, int pageSize)
        {
            var result = GetAllNews();
            return result.OrderBy(d => d.NewsId).Skip((currentPage - 1) * pageSize).Take(pageSize).ToList();
        }
    }
}
