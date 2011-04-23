﻿using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Data;
using System.Data.SqlClient;
using System.Web;
using DTO;
using DAO;

namespace BUS
{
    public class CouponBUS
    {
        public static void CreateCoupon(COUPON_DTO couDTO)
        {
            try
            {
                CouponDAO.CreateCoupon(couDTO);
            }
            catch (Exception ex)
            {
                throw ex;
            }
        }
    }
}
