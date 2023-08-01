using System;
using System.Collections.Generic;

namespace HinhLam_DataObject.Models
{
    public partial class News
    {
        public News()
        {
            FileNews = new HashSet<FileNews>();
            NewsContents = new HashSet<NewsContent>();
        }

        public string NewsId { get; set; } = null!;
        public string Title { get; set; } = null!;
        public string TitleCn { get; set; } = null!;
        public string TitleEn { get; set; } = null!;
        public string ShortDescription { get; set; }
        public string ShortDescriptionEn { get; set; }
        public string ShortDescriptionCn { get; set; }
        public string LinkHref { get; set; } = null!;
        public string LinkHrefEn { get; set; } = null!;
        public string LinkHrefCn { get; set; } = null!;
        public bool Status { get; set; }
        public DateTime CreateDate { get; set; }

        public virtual ICollection<FileNews> FileNews { get; set; }
        public virtual ICollection<NewsContent> NewsContents { get; set; }
    }
}
