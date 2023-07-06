using System;
using System.Collections.Generic;
using System.Text;

namespace HinhLam_DataObject.ViewModels
{
    public class ContentInfoModel
    {
        public string ContentID { get; set; }
        public string Title { get; set; }
        public string Contents { get; set; }
        public DateTime CreatedDate { get; set; }
    }

    public class CreateContentModel
    {
        public string Title { get; set; }
        public string Contents { get; set; }
    }


    public class UpdateContentModel
    {
        public string ContentID { get; set; }
        public string Title { get; set; }
        public string Contents { get; set; }
    }

    public class AddContentModel
    {
        public string subMenuId { get; set; }
        public List<string> contentIds { get; set; }
    }
}
