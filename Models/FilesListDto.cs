using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace Reception_Sgs.Models
{
    public class FilesListDto
    {
        private List<FilesDTO> _listFilesDto;

        public FilesListDto()
        {
            _listFilesDto = new List<FilesDTO>();
        }

        public List<FilesDTO> listFilesDto { get => _listFilesDto; set => _listFilesDto = value; }
        public int rsCode { get; set; }
        public string rsMessage { get; set; }
    }
}