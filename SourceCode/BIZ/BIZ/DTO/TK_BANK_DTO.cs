using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;

namespace BIZ.DTO
{
    public class TK_BANK_DTO
    {
        private string _soTaiKhoan;

        public string SoTaiKhoan
        {
            get { return _soTaiKhoan; }
            set { _soTaiKhoan = value; }
        }
        private string _maBank;

        public string MaBank
        {
            get { return _maBank; }
            set { _maBank = value; }
        }

        public TK_BANK_DTO()
        {
            this._soTaiKhoan = "";
            this._maBank = "";
        }
        public TK_BANK_DTO(string soTK, string maB)
        {
            this._soTaiKhoan = soTK;
            this._maBank = maB;
        }
    }
}
