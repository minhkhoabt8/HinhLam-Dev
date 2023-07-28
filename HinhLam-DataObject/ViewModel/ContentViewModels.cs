using System;
using System.Collections.Generic;
using System.Text;

namespace HinhLam_DataObject.ViewModels
{
    public class ContentInfoModel
    {
        public string ContentId { get; set; } = null!;
        public string Title { get; set; } = null!;
        public string Contents { get; set; } = null!;
        public string ContentsCn { get; set; } = null!;
        public string ContentsEn { get; set; } = null!;
        public DateTime CreatedDate { get; set; }
        public bool Status { get; set; }
        public int ContentCount { get; set; }
        public string TitleCn { get; set; } = null!;
        public string TitleEn { get; set; } = null!;
    }

    public class CreateContentModel
    {
        public string Title { get; set; } = null!;
        public string TitleCn { get; set; } = null!;
        public string TitleEn { get; set; } = null!;
        public string Contents { get; set; }
        public string ContentsCn { get; set; } = null!;
        public string ContentsEn { get; set; } = null!;
        public int ContentCount { get; set; }
    }


    public class UpdateContentModel
    {
        public string ContentID { get; set; }
        public string Title { get; set; }
        public string Contents { get; set; }
        public string ContentsCn { get; set; } = null!;
        public string ContentsEn { get; set; } = null!;
    }

    public class AddContentModel
    {
        public string subMenuId { get; set; }
        public List<string> contentIds { get; set; }
    }
}
