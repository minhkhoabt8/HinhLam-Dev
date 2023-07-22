using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace HinhLam_DataObject.ViewModel
{
    public class EmailViewModel
    {
        public string To { get; set; }
        public string Subject { get; set; }
        public string Text { get; set; }
        public string ImagePath { get; set; }
    }

    public class EmailSettings
    {
        public string From { get; set; }
        public string SmtpServer { get; set; }
        public int Port { get; set; }
        public string UserName { get; set; }
        public string Password { get; set; }
    }
}
