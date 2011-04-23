using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Data;
using System.Data.SqlClient;
using System.Configuration;
using System.Xml;

namespace DAO
{
    public class MyDataProvider
    {
        //protected string _connectionString =  @"Data Source=.\SQLEXPRESS;AttachDbFilename=|DataDirectory|\test2011.mdf;Integrated Security=True;Connect Timeout=30;User Instance=True";
       // protected string _connectionString = "workstation id=test2011.mssql.somee.com;packet size=4096;user id=khtn;pwd=khtn2011;data source=test2011.mssql.somee.com;persist security info=False;initial catalog=test2011";
        // ConfigurationManager.ConnectionStrings["ConnectionString"].ToString();
        //protected string _connectionString = @"Data Source=.\SQLExpress;Persist Security Info=True;Integrated Security=SSPI;Initial Catalog=tmdt2011_test2011";
        
        /*This is connection string of Nhieu*/
        //protected string _connectionString = @"Data Source=.\SQLEXPRESS;Initial Catalog=Biztmdt;Integrated Security=SSPI;";
        //protected string _connectionString = "workstation id=Biztmdt.mssql.somee.com;packet size=4096;user id=khtn;pwd=khtn2011;data source=Biztmdt.mssql.somee.com;persist security info=False;initial catalog=Biztmdt";
        /*This is connection string of Phong*/
        protected string _connectionString = @"Data Source=PHONGVU;Initial Catalog=Biztmdt;Integrated Security=True";
        
        protected SqlConnection _connection;
        protected SqlDataAdapter _adapter;
        protected SqlCommand _command;
        //public static string ConnectionString
        //{
        //    get
        //    {
        //        return _connectionString;
        //    }
        //    set
        //    {
        //        _connectionString = value;
        //    }
        //}
        public MyDataProvider()
        {
           // XmlDocument doc = new XmlDocument();
           // doc.Load("../BIZ/BIZ/connectionstring.xml");
           // _connectionString=doc.GetElementsByTagName("connectionstring").Item(0).InnerXml;
            
            this._connection = new SqlConnection(_connectionString);
        }
      
        public void connect()
        {
            if(_connection.State==ConnectionState.Closed)
                _connection.Open();
        }

        public void disconnect()
        {
            this._connection.Close();
        }

        public SqlDataReader executeQuery(string sqlString)
        {
            this._command = new SqlCommand(sqlString, _connection);
            return this._command.ExecuteReader();
        }

        public void executeNonQuery(string sqlString)
        {
            this._command = new SqlCommand(sqlString, _connection);
            this._command.ExecuteNonQuery();
        }
      
        public int executeNonQuery(string sqlString,List<SqlParameter>sqlParameters)
        {
            this._command = new SqlCommand(sqlString, _connection);
            createParameters(sqlParameters);
            return this._command.ExecuteNonQuery();
        }
        public object executeScalar(string sqlString)
        {
            this._command = new SqlCommand(sqlString, _connection);
            return this._command.ExecuteScalar();
        }
        public object excuteScalar(string sqlString, List<SqlParameter> sqlParameters)
        {
            this._command = new SqlCommand(sqlString, _connection);
            createParameters(sqlParameters);
            return this._command.ExecuteScalar();
        }
        public DataSet executeQueryDataSet(string sqlString)
        {
            DataSet ds = new DataSet();
            this._adapter = new SqlDataAdapter();
            this._command = new SqlCommand(sqlString, _connection);
            this._adapter.SelectCommand = this._command;
            this._adapter.Fill(ds);
            return ds;
        }
        public DataSet executeQueryDataSet(string sqlString, List<SqlParameter>sqlParameters)
        {
            DataSet ds = new DataSet();
            this._adapter = new SqlDataAdapter();
            this._command = new SqlCommand(sqlString, _connection);
            createParameters(sqlParameters);
            this._adapter.SelectCommand = this._command;
            this._adapter.Fill(ds);
            return ds;
        }

        private void createParameters(List<SqlParameter> sqlParameters)
        {
            if (_command == null)
                _command = new SqlCommand();
            for (int i = 0; i < sqlParameters.Count; i++)
                _command.Parameters.Add(sqlParameters[i]);
        }
        public DataTable executeQueryDataTable(string sqlString)
        {
            DataSet ds = executeQueryDataSet(sqlString);
            if (ds != null && ds.Tables.Count > 0)
                return ds.Tables[0];
            return null;
        }
        public DataTable executeQueryDataTable(string sqlString,List<SqlParameter>sqlParameters )
        {

            DataSet ds = executeQueryDataSet(sqlString,sqlParameters);
            if (ds != null && ds.Tables.Count > 0)
                return ds.Tables[0];
            return null;
        }

        /* cho phan store procedure */
       
        public int executeNonQueryProcedure(string sqlString, List<SqlParameter> sqlParameters)
        {
            this._command = new SqlCommand(sqlString, _connection);
            this._command.CommandType = CommandType.StoredProcedure;
            createParameters(sqlParameters);
            return this._command.ExecuteNonQuery();
        }

        public DataSet executeQueryDataSetProcedure(string sqlString, List<SqlParameter> sqlParameters)
        {
            DataSet ds = new DataSet();
            this._adapter = new SqlDataAdapter();
            this._command = new SqlCommand(sqlString, _connection);
            this._command.CommandType = CommandType.StoredProcedure;
            createParameters(sqlParameters);
            this._adapter.SelectCommand = this._command;
            this._adapter.Fill(ds);
            return ds;
        }
        public DataTable executeQueryDataTableProcedure(string sqlString, List<SqlParameter> sqlParameters)
        {

            DataSet ds = executeQueryDataSetProcedure(sqlString, sqlParameters);
            if (ds != null && ds.Tables.Count > 0)
                return ds.Tables[0];
            return null;
        }
        /*
         * vi du su dung MyProvider nha may ban
         * 
         * B1: tao 1 doi tuong MyDataProvider
         * MyDataProvider provider = new MyDataProvider();
         * 
         * B2: tao cau truy van
         * string sqlStr = "Select * From NhanVien";
         * 
         * B3: ket noi
         * provider.connect();
         * 
         * B4: thuc thi cau lenh mong muon va su dung ket qua.
         * day la vi du lay ban nhan vien roi dua vao 1 DataGridView
         * dtgvNhanVien.DataSource = provider.executeQueryDataTable(sqlStr);
         * 
         * B5: dong ket noi
         * provider.disconnect();
         * 
         * Da test va chay ok!
        */
    }
}
