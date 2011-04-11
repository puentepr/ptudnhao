using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;

namespace DTO
{
    public class BTS_BIZ_DTO
    {
        private int _maThamSo;
        private string _tenThamSo;
        private string _kieuDuLieu;
        private string _giaTri;
        private int _tinhTrangThamSo;

        public BTS_BIZ_DTO()
        {
            this._maThamSo = 0;
            this._tenThamSo = "";
            this._kieuDuLieu = "";
            this._giaTri = "";
            this._tinhTrangThamSo = 0;
        }

        public BTS_BIZ_DTO(int code, string name, string type, string value, int status)
        {
            this._maThamSo = code;
            this._tenThamSo = name;
            this._kieuDuLieu = type;
            this._giaTri = value;
            this._tinhTrangThamSo = status;
        }
        
        public int maThamSo
        {
            get { return this._maThamSo; }
            set { this._maThamSo = value; }
        }
        public string tenThamSo
        {
            get { return this._tenThamSo; }
            set { this._tenThamSo = value; }
        }
        public string kieuDuLieu
        {
            get { return this._kieuDuLieu; }
            set { this._kieuDuLieu = value; }
        }
        public string giaTri
        {
            get { return this._giaTri; }
            set { this._giaTri = value; }
        }
        public int tinhTrangThamSo
        {
            get { return this._tinhTrangThamSo; }
            set { this._tinhTrangThamSo = value; }
        }
    }
}
