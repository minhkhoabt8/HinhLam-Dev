using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace HinhLam_DataObject.ViewModel
{
    public class FileViewModel
    {
        public class FileInfoModel
        {
            public string Id { get; set; }
            public string FileName { get; set; }
            public string FileHref { get; set; }
            public DateTime CreateDate { get; set; }
            public bool IsPicture { get; set; }
            public bool Status { get; set; }

        }
    }
}
