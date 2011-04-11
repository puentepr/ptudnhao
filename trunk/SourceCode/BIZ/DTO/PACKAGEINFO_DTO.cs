using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;

namespace DTO
{
    public class PACKAGEINFO_DTO
    {
        private int _maPackage;

        public int MaPackage
        {
            get { return _maPackage; }
            set { _maPackage = value; }
        }
        private int _maServiceTrans;

        public int MaServiceTrans
        {
            get { return _maServiceTrans; }
            set { _maServiceTrans = value; }
        }
        private string _packageInfo;

        public string PackageInfo
        {
            get { return _packageInfo; }
            set { _packageInfo = value; }
        }
        private string _uRL;

        public string URL
        {
            get { return _uRL; }
            set { _uRL = value; }
        }

        public PACKAGEINFO_DTO()
        {
            this._maPackage = 0;
            this._maServiceTrans = 0;
            this._packageInfo = "";
            this._uRL = "";
        }
        public PACKAGEINFO_DTO(int maPK, int maST, string pkInfo, string url)
        {
            this._maPackage = maPK;
            this._maServiceTrans = maST;
            this._packageInfo = pkInfo;
            this._uRL = url;
        }
    }
}
