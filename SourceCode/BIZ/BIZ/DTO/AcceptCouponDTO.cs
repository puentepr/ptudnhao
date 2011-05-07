using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace BIZ.DTO
{
    public class AcceptCouponDTO
    {
        private string _linkWS;

        public string LinkWS
        {
            get { return _linkWS; }
            set { _linkWS = value; }
        }
        private string _mcUserName;

        public string McUserName
        {
            get { return _mcUserName; }
            set { _mcUserName = value; }
        }
        private string _mcPassWord;

        public string McPassWord
        {
            get { return _mcPassWord; }
            set { _mcPassWord = value; }
        }
        private string _tenDN;

        public string TenDN
        {
            get { return _tenDN; }
            set { _tenDN = value; }
        }
    }
}
