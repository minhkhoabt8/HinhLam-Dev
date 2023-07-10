using System;
using System.Collections.Generic;
using System.Text;

namespace HinhLam_DataObject.ViewModels
{
    public class MenuInfoModel
    {
        public string MiD { get; set; }
        public string MenuName { get; set; }
        public string MenuNameEN { get;set; }
        public string MenuNameCN { get; set; }
        public DateTime CreatedDate { get; set; }
        public bool Status { get; set; }
    }

    public class CreateMenuModel
    {
        public string MenuName { get; set; }
        public string MenuNameEN { get; set; }
        public string MenuNameCN { get; set; }
    }

    public class UpdateMenuModel
    {
        public string MiD { get; set; }
        public string MenuName { get; set; }
        public string MenuNameEN { get; set; }
        public string MenuNameCN { get; set; }
    }

    public class AddSubMenuModel
    {
        public string MenuId { get; set; }
        public List<string> SubMenuIds { get; set; }
    }
}
