using System;
using System.Collections.Generic;

namespace HinhLam_DataObject.Models
{
    public partial class News
    {
        public string NewsId { get; set; } = null!;
        public string Title { get; set; } = null!;
        public string TitleCn { get; set; } = null!;
        public string TitleEn { get; set; } = null!;
        public string LinkHref { get; set; } = null!;
        public bool Status { get; set; }
        public DateTime CreateDate { get; set; }
    }
}
