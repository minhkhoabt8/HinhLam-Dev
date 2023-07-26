using Microsoft.AspNetCore.Http;
using System;
using System.Collections.Generic;
using System.ComponentModel.DataAnnotations;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace HinhLam_DataObject.ViewModel
{
    public class RecruitmentViewModel
    {
        public class RecruitmentInfoModel
        {
            //public string RecruitmentId { get; set; }
            public string CandidateName { get; set; }

            public string Email { get; set; }
            public string PhoneNumber { get; set; }
            public string ApplyPosition { get; set; }

            public IFormFile ApplyFile { get; set; }

        }

        public class RecruimentWriteModel
        {
            [Required]
            public string CandidateName { get; set; }
            [Required]
            public string Email { get; set; }
            [Required]
            public string PhoneNumber { get; set; }
            [Required]
            public string ApplyPosition { get; set; }
            [Required]
            public IFormFile ApplyFile { get; set; }
        }

    }
}
