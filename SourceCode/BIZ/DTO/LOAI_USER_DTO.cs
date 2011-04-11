using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;

namespace DTO
{
    public class LOAI_USER_DTO
    {
        private int _maLoaiUser;

        public int MaLoaiUser
        {
            get { return _maLoaiUser; }
            set { _maLoaiUser = value; }
        }
        private string _tenLoaiUser;

        public string TenLoaiUser
        {
            get { return _tenLoaiUser; }
            set { _tenLoaiUser = value; }
        }

        public LOAI_USER_DTO()
        {
            this._maLoaiUser = 0;
            this._tenLoaiUser = "";
        }
        public LOAI_USER_DTO(int maLU, string tenLU)
        {
            this._maLoaiUser = maLU;
            this._tenLoaiUser = tenLU;
        }
    }
}
