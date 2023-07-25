using HinhLam_DataObject.Models;
using System;
using System.Collections.Generic;
using System.Text;

namespace HinhLam_DataObject.ViewModels
{
    public class SubMenuInfoModel
    {
        public string SubMenuID { get; set; }
        public string Title { get; set; }
        public string Description { get; set; }
        public DateTime CreatedDate { get; set; }
        public List<Content> Contents { get; set; }
    }

    public class CreateSubMenuModel
    {
        public string Title { get; set; }
        public string Description { get; set; }
    }

    public class UpdateSubMenuModel
    {
        public string SubMenuID { get; set; }
        public string Title { get; set; }
        public string Description { get; set; }
    }
}
