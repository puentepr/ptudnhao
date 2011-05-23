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

        #region Cập nhật thông tin service bank
        public static int CapNhatServiceBank(SERVICE_BANK_DTO bank)
        {
            try
            {
                return ServiceBankDAO.CapNhatServiceBank(bank);
            }
            catch (Exception ex)
            {                
                throw ex;
            }
        }
        #endregion
        public static List<SERVICE_BANK_DTO> LayDanhSachServiceBankAndEdit(int trangthai)
        {
            try
            {
                List<SERVICE_BANK_DTO>banks= ServiceBankDAO.LayDanhSachServiceBankTheoTrangThai(trangthai);
                foreach (SERVICE_BANK_DTO bank in banks)
                {
                    bank.MaBank += "+" + bank.Stk;
                }
                return banks;
            }
            catch (Exception ex)
            {

                throw ex;
            }
        }
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

        #region Lấy thông tin ServiceBank theo mã bank
        public static SERVICE_BANK_DTO LayServiceBankTheoMaBank(string mabank)
        {
            try
            {
                return ServiceBankDAO.LayServiceBankTheoMaBank(mabank);
            }
            catch (Exception ex)
            {
                
                throw ex;
            }
        }
        #endregion

        #region Xóa ServiceBank
        public static int XoaServiceBank(string mabank, int tinhtrang)
        {
            try
            {
                return ServiceBankDAO.XoaServiceBank(mabank, tinhtrang);
            }
            catch (Exception ex)
            {                
                throw ex;
            }
        }
        #endregion
    }
}
