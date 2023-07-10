using AutoMapper;
using HinhLam_DataObject.Model;
using HinhLam_DataObject.ViewModels;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace HinhLam_Infrastructure.Mapper
{
    public class MappingProfile : Profile
    {
        public MappingProfile() 
        {
            CreateMap<Menu,MenuInfoModel>();
            CreateMap<CreateMenuModel, Menu>();
            CreateMap<UpdateMenuModel, Menu>();
        }
    }
}
