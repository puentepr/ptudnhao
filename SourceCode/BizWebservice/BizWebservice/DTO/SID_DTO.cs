using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;

namespace BizWebservice.DTO
{
    public class SID_DTO
    {
        private string _sID;

        public string SID
        {
            get { return _sID; }
            set { _sID = value; }
        }
        private int _maWebService;

        public int MaWebService
        {
            get { return _maWebService; }
            set { _maWebService = value; }
        }
        private int _tinhTrangSid;

        public int TinhTrangSid
        {
            get { return _tinhTrangSid; }
            set { _tinhTrangSid = value; }
        }
        private DateTime _ngayCap;

        public DateTime NgayCap
        {
            get { return _ngayCap; }
            set { _ngayCap = value; }
        }
       /* private DateTime _ngayHetHieuLuc;

        public DateTime NgayHetHieuLuc
        {
            get { return _ngayHetHieuLuc; }
            set { _ngayHetHieuLuc = value; }
        }*/

        public SID_DTO()
        {
            this._sID = "";
            this._maWebService = 0;
            this._tinhTrangSid = 0;
            this._ngayCap = DateTime.MaxValue;
           // this._ngayHetHieuLuc = DateTime.MaxValue;
        }
        public SID_DTO(string sid, int maWS, int tinhTrangSid, DateTime ngayCap, DateTime ngayHHL)
        {
            this._sID = sid;
            this._maWebService = maWS;
            this._tinhTrangSid = tinhTrangSid;
            this._ngayCap = ngayCap;
          //  this._ngayHetHieuLuc = ngayHHL;
        }
    }
}
