using System;
using System.Collections.Generic;

namespace HinhLam_DataObject.Models

{
    public partial class Content
    {
        public Content()
        {
            SubMenuContents = new HashSet<SubMenuContent>();
        }

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

        public virtual ICollection<SubMenuContent> SubMenuContents { get; set; }
    }
}
