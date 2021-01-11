using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace Reception_Sgs.Models
{
    public class FilesDTO
    {
        public string fileBase { get; set; }
        public string fileName { get; set; }
        public string filePath { get; set; }
        public DateTime? createdDate { get; set; }
        public DateTime? modifyDate { get; set; }
        public int id { get; set; }
    }
}