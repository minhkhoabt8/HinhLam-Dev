using HinhLam_DataObject.Models;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace HinhLam_DataObject.ViewModels
{
    public class NewsViewModels
    {
        public class NewsInfoModels
        {
            public string NewsId { get; set; }
            public string Title { get; set; } 
            public string TitleCn { get; set; }
            public string TitleEn { get; set; }
            public string ShortDescription { get; set; }
            public string ShortDescriptionEn { get; set; }
            public string ShortDescriptionCn { get; set; }
            public string LinkHref { get; set; } 

            public string LinkHrefEn { get; set; } 
            public string LinkHrefCn { get; set; } 

            public bool Status { get; set; }
            public DateTime CreateDate { get; set; }
            public List<Content>? Contents { get; set; }
            public List<HinhLam_DataObject.Models.File>? FileNews { get; set; }
        }

        public class NewsCreateModels
        {
            public string Title { get; set; } = null!;
            public string TitleCn { get; set; } = null!;
            public string TitleEn { get; set; } = null!;
            public string LinkHref { get; set; } = null!;
        }
    }
}
