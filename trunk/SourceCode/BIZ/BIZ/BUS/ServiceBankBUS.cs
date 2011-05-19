using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using BIZ.DAO;
using BIZ.DTO;

namespace BIZ.BUS
{
    public class ServiceBankBUS
    {
        #region Thêm 1 ServiceBank
        public static int InsertServiceBank(SERVICE_BANK_DTO bank)
        {
            try
            {
                return ServiceBankDAO.InsertServiceBank(bank);
            }
            catch (Exception ex)
            {
                
                throw ex;
            }
        }
        #endregion

        #region Lấy danh sách ServiceBank đang sử dung
        public static List<SERVICE_BANK_DTO> LayDanhSachServiceBank(int trangthai)
        {
            try
            {
                return ServiceBankDAO.LayDanhSachServiceBankTheoTrangThai(trangthai);
            }
            catch (Exception ex)
            {
                
                throw ex;
            }
        }
        #endregion

        #region Xóa ServiceBank
        #endregion
    }
}
