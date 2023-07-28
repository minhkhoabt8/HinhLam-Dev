using System;
using System.Collections.Generic;

namespace HinhLam_DataObject.Models
{
    public partial class NewsContent
    {
        public string Id { get; set; } = Guid.NewGuid().ToString(); 
        public string? NewsId { get; set; }
        public string? ContentId { get; set; }

        public virtual Content? Content { get; set; }
        public virtual News? News { get; set; }
    }
}
