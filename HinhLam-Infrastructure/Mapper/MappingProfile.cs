using AutoMapper;
using HinhLam_DataObject.Model;
using HinhLam_DataObject.ViewModels;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using static HinhLam_DataObject.ViewModels.ConsultViewModel;

namespace HinhLam_Infrastructure.Mapper
{
    public class MappingProfile : Profile
    {
        public MappingProfile() 
        {
            CreateMap<Menu, MenuInfoModel>()
                .ForMember(dest => dest.SubMenus, opt => opt.MapFrom(src => src.MenuSubMenu.Select(c => c.SubMenu)))
                .ForMember(dest => dest.Contents, opt => opt.MapFrom(src => src.MenuSubMenu.SelectMany(ms => ms.SubMenu.SubMenuContent).Select(smc => smc.Content)));
            CreateMap<CreateMenuModel, Menu>();
            CreateMap<UpdateMenuModel, Menu>();

            CreateMap<SubMenu, SubMenuInfoModel>()
                .ForMember(dest => dest.Contents, opt => opt.MapFrom(src => src.SubMenuContent.Select(c => c.Content)));


            CreateMap<Consult, ConsultInfoModel>();
            CreateMap<ConsultWriteModel, Consult>();
        }
    }
}
