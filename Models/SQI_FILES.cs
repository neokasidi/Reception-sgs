using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace Reception_Sgs.Models
{
    public class SQI_FILES
    {
        public int SQIFI_AI_ID { get; set; }
        public string SQIFI_NAME { get; set; }
        public string SQIFI_PATH { get; set; }
        public string SQIFI_CONTENT_TYPE { get; set; }
        public DateTime? SQIFI_CREATE { get; set; }
        public DateTime? SQIFI_MODIFY { get; set; }
        public bool? SQIFI_STATE { get; set; }
        public long? SQIFI_IDOL { get; set; }
        public long? SQIFI_IDOI { get; set; }
        public long? SQIFI_IDOISP { get; set; }
        public string SQIFI_BUSINESS { get; set; }
        public int? SQIFI_VERSION { get; set; }
        public string SQIFI_COMENT { get; set; }
    }
}