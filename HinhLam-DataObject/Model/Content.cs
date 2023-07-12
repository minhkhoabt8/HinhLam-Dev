﻿using System;
using System.Collections.Generic;
using System.ComponentModel.DataAnnotations;
using System.ComponentModel.DataAnnotations.Schema;
using System.Text;

namespace HinhLam_DataObject.Model
{
    [Table("Content")]
    public class Content
    {
        [Key][MaxLength(50)]
        public string ContentID { get; set; } = Guid.NewGuid().ToString();
        [Column(TypeName = "nvarchar")][MaxLength(100)]
        public string Title { get; set; }
        [Column(TypeName = "nvarchar")]
        [MaxLength(100)]
        public string TitleCN { get; set; }
        [Column(TypeName = "nvarchar")]
        [MaxLength(100)]
        public string TitleEN { get; set; }
        [Required][Column(TypeName = "ntext")]
        public string Contents { get; set; }
        [Required][Column(TypeName = "ntext")]
        public string ContentsCN { get; set; }
        [Required][Column(TypeName = "ntext")]
        public string ContentsEN { get; set; }
        public int ContentCount { get; set; }
        public DateTime CreatedDate { get; set; } = DateTime.Now;
        public bool Status { get; set; } = true;
        public virtual ICollection<SubMenuContent> SubMenuContent { get; set; }
    }
}