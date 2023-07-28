using System;
using System.Collections.Generic;

namespace HinhLam_DataObject.Models
{
    public partial class Category
    {
        public Category()
        {
            Menus = new HashSet<Menu>();
        }

        public string CateId { get; set; } = Guid.NewGuid().ToString();
        public string CateName { get; set; } = null!;
        public string CateNameEn { get; set; } = null!;
        public string CateNameCn { get; set; } = null!;
        public DateTime CreateDate { get; set; } = DateTime.Now;
        public bool Status { get; set; } = true;

        public virtual ICollection<Menu> Menus { get; set; }
    }
}
