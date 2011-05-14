using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using BIZ.DTO;
using BIZ.DAO;

namespace BIZ.BUS
{
    public class ServiceTransBUS
    {
        public static int InsertServiceTrans(SERVICE_TRANS_DTO service)
        {
            try
            {
                int madv=ServiceTransDAO.InsertServiceTrans(service);
                if (madv == -1)
                    return -1;
              /*  foreach (TransportType type in types)
                {
                    type.Madv = madv;
                    ServiceTransDAO.InsertTransType(type);
                }*/
                return 1;
            }
            catch (Exception e)
            {
                throw e;
            }
        }
        public static List<SERVICE_TRANS_DTO> SelectServiceTrans()
        {
            try
            {
                return ServiceTransDAO.SelectServiceTrans();
            }
            catch (Exception e)
            {
                throw e;
            }
        }
        public static int DeleteServiceTrans(int madv)
        {
            try
            {
                return ServiceTransDAO.DeleteServiceTrans(madv);
            }
            catch (Exception e)
            {
                throw e;
            }
        }
        public static SERVICE_TRANS_DTO GetServiceTransInfor(int madv)
        {
            try
            {
                return ServiceTransDAO.GetInfoServiceTrans(madv);
            }
            catch (Exception e)
            {
                throw e;
            }
        }
        public static int UpdateServiceTrans(SERVICE_TRANS_DTO service)
        {
            try
            {
                return ServiceTransDAO.UpdateServiceTrans(service);
            }
            catch (Exception e)
            {
                throw e;
            }
        }
    }
}
