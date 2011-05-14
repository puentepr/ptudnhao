﻿//------------------------------------------------------------------------------
// <auto-generated>
//     This code was generated by a tool.
//     Runtime Version:2.0.50727.3620
//
//     Changes to this file may cause incorrect behavior and will be lost if
//     the code is regenerated.
// </auto-generated>
//------------------------------------------------------------------------------

// 
// This source code was auto-generated by Microsoft.VSDesigner, Version 2.0.50727.3620.
// 
#pragma warning disable 1591

namespace BizWebservice.VanChuyen {
    using System.Diagnostics;
    using System.Web.Services;
    using System.ComponentModel;
    using System.Web.Services.Protocols;
    using System;
    using System.Xml.Serialization;
    
    
    /// <remarks/>
    [System.CodeDom.Compiler.GeneratedCodeAttribute("System.Web.Services", "2.0.50727.3053")]
    [System.Diagnostics.DebuggerStepThroughAttribute()]
    [System.ComponentModel.DesignerCategoryAttribute("code")]
    [System.Web.Services.WebServiceBindingAttribute(Name="FedexWebService1Soap", Namespace="http://tempuri.org/")]
    public partial class FedexWebService1 : System.Web.Services.Protocols.SoapHttpClientProtocol {
        
        private System.Threading.SendOrPostCallback AuthenticateOperationCompleted;
        
        private System.Threading.SendOrPostCallback TransportGoodsOperationCompleted;
        
        private System.Threading.SendOrPostCallback GetPackageInfoOperationCompleted;
        
        private System.Threading.SendOrPostCallback CancelPackageOperationCompleted;
        
        private System.Threading.SendOrPostCallback GetTranportsOperationCompleted;
        
        private bool useDefaultCredentialsSetExplicitly;
        
        /// <remarks/>
        public FedexWebService1() {
            this.Url = global::BizWebservice.Properties.Settings.Default.BizWebservice_VanChuyen_FedexWebService1;
            if ((this.IsLocalFileSystemWebService(this.Url) == true)) {
                this.UseDefaultCredentials = true;
                this.useDefaultCredentialsSetExplicitly = false;
            }
            else {
                this.useDefaultCredentialsSetExplicitly = true;
            }
        }
        
        public new string Url {
            get {
                return base.Url;
            }
            set {
                if ((((this.IsLocalFileSystemWebService(base.Url) == true) 
                            && (this.useDefaultCredentialsSetExplicitly == false)) 
                            && (this.IsLocalFileSystemWebService(value) == false))) {
                    base.UseDefaultCredentials = false;
                }
                base.Url = value;
            }
        }
        
        public new bool UseDefaultCredentials {
            get {
                return base.UseDefaultCredentials;
            }
            set {
                base.UseDefaultCredentials = value;
                this.useDefaultCredentialsSetExplicitly = true;
            }
        }
        
        /// <remarks/>
        public event AuthenticateCompletedEventHandler AuthenticateCompleted;
        
        /// <remarks/>
        public event TransportGoodsCompletedEventHandler TransportGoodsCompleted;
        
        /// <remarks/>
        public event GetPackageInfoCompletedEventHandler GetPackageInfoCompleted;
        
        /// <remarks/>
        public event CancelPackageCompletedEventHandler CancelPackageCompleted;
        
        /// <remarks/>
        public event GetTranportsCompletedEventHandler GetTranportsCompleted;
        
        /// <remarks/>
        [System.Web.Services.Protocols.SoapDocumentMethodAttribute("http://tempuri.org/Authenticate", RequestNamespace="http://tempuri.org/", ResponseNamespace="http://tempuri.org/", Use=System.Web.Services.Description.SoapBindingUse.Literal, ParameterStyle=System.Web.Services.Protocols.SoapParameterStyle.Wrapped)]
        public string Authenticate(string username, string password) {
            object[] results = this.Invoke("Authenticate", new object[] {
                        username,
                        password});
            return ((string)(results[0]));
        }
        
        /// <remarks/>
        public void AuthenticateAsync(string username, string password) {
            this.AuthenticateAsync(username, password, null);
        }
        
        /// <remarks/>
        public void AuthenticateAsync(string username, string password, object userState) {
            if ((this.AuthenticateOperationCompleted == null)) {
                this.AuthenticateOperationCompleted = new System.Threading.SendOrPostCallback(this.OnAuthenticateOperationCompleted);
            }
            this.InvokeAsync("Authenticate", new object[] {
                        username,
                        password}, this.AuthenticateOperationCompleted, userState);
        }
        
        private void OnAuthenticateOperationCompleted(object arg) {
            if ((this.AuthenticateCompleted != null)) {
                System.Web.Services.Protocols.InvokeCompletedEventArgs invokeArgs = ((System.Web.Services.Protocols.InvokeCompletedEventArgs)(arg));
                this.AuthenticateCompleted(this, new AuthenticateCompletedEventArgs(invokeArgs.Results, invokeArgs.Error, invokeArgs.Cancelled, invokeArgs.UserState));
            }
        }
        
        /// <remarks/>
        [System.Web.Services.Protocols.SoapDocumentMethodAttribute("http://tempuri.org/TransportGoods", RequestNamespace="http://tempuri.org/", ResponseNamespace="http://tempuri.org/", Use=System.Web.Services.Description.SoapBindingUse.Literal, ParameterStyle=System.Web.Services.Protocols.SoapParameterStyle.Wrapped)]
        public string TransportGoods(string sid, string packageInfo, int NumberOfItems, System.DateTime GetPackageFromBiz, string CustomerAddress, int TransportType, string BizAddress) {
            object[] results = this.Invoke("TransportGoods", new object[] {
                        sid,
                        packageInfo,
                        NumberOfItems,
                        GetPackageFromBiz,
                        CustomerAddress,
                        TransportType,
                        BizAddress});
            return ((string)(results[0]));
        }
        
        /// <remarks/>
        public void TransportGoodsAsync(string sid, string packageInfo, int NumberOfItems, System.DateTime GetPackageFromBiz, string CustomerAddress, int TransportType, string BizAddress) {
            this.TransportGoodsAsync(sid, packageInfo, NumberOfItems, GetPackageFromBiz, CustomerAddress, TransportType, BizAddress, null);
        }
        
        /// <remarks/>
        public void TransportGoodsAsync(string sid, string packageInfo, int NumberOfItems, System.DateTime GetPackageFromBiz, string CustomerAddress, int TransportType, string BizAddress, object userState) {
            if ((this.TransportGoodsOperationCompleted == null)) {
                this.TransportGoodsOperationCompleted = new System.Threading.SendOrPostCallback(this.OnTransportGoodsOperationCompleted);
            }
            this.InvokeAsync("TransportGoods", new object[] {
                        sid,
                        packageInfo,
                        NumberOfItems,
                        GetPackageFromBiz,
                        CustomerAddress,
                        TransportType,
                        BizAddress}, this.TransportGoodsOperationCompleted, userState);
        }
        
        private void OnTransportGoodsOperationCompleted(object arg) {
            if ((this.TransportGoodsCompleted != null)) {
                System.Web.Services.Protocols.InvokeCompletedEventArgs invokeArgs = ((System.Web.Services.Protocols.InvokeCompletedEventArgs)(arg));
                this.TransportGoodsCompleted(this, new TransportGoodsCompletedEventArgs(invokeArgs.Results, invokeArgs.Error, invokeArgs.Cancelled, invokeArgs.UserState));
            }
        }
        
        /// <remarks/>
        [System.Web.Services.Protocols.SoapDocumentMethodAttribute("http://tempuri.org/GetPackageInfo", RequestNamespace="http://tempuri.org/", ResponseNamespace="http://tempuri.org/", Use=System.Web.Services.Description.SoapBindingUse.Literal, ParameterStyle=System.Web.Services.Protocols.SoapParameterStyle.Wrapped)]
        public string GetPackageInfo(string sid, string packageURL) {
            object[] results = this.Invoke("GetPackageInfo", new object[] {
                        sid,
                        packageURL});
            return ((string)(results[0]));
        }
        
        /// <remarks/>
        public void GetPackageInfoAsync(string sid, string packageURL) {
            this.GetPackageInfoAsync(sid, packageURL, null);
        }
        
        /// <remarks/>
        public void GetPackageInfoAsync(string sid, string packageURL, object userState) {
            if ((this.GetPackageInfoOperationCompleted == null)) {
                this.GetPackageInfoOperationCompleted = new System.Threading.SendOrPostCallback(this.OnGetPackageInfoOperationCompleted);
            }
            this.InvokeAsync("GetPackageInfo", new object[] {
                        sid,
                        packageURL}, this.GetPackageInfoOperationCompleted, userState);
        }
        
        private void OnGetPackageInfoOperationCompleted(object arg) {
            if ((this.GetPackageInfoCompleted != null)) {
                System.Web.Services.Protocols.InvokeCompletedEventArgs invokeArgs = ((System.Web.Services.Protocols.InvokeCompletedEventArgs)(arg));
                this.GetPackageInfoCompleted(this, new GetPackageInfoCompletedEventArgs(invokeArgs.Results, invokeArgs.Error, invokeArgs.Cancelled, invokeArgs.UserState));
            }
        }
        
        /// <remarks/>
        [System.Web.Services.Protocols.SoapDocumentMethodAttribute("http://tempuri.org/CancelPackage", RequestNamespace="http://tempuri.org/", ResponseNamespace="http://tempuri.org/", Use=System.Web.Services.Description.SoapBindingUse.Literal, ParameterStyle=System.Web.Services.Protocols.SoapParameterStyle.Wrapped)]
        public float CancelPackage(string sid, string packageURL) {
            object[] results = this.Invoke("CancelPackage", new object[] {
                        sid,
                        packageURL});
            return ((float)(results[0]));
        }
        
        /// <remarks/>
        public void CancelPackageAsync(string sid, string packageURL) {
            this.CancelPackageAsync(sid, packageURL, null);
        }
        
        /// <remarks/>
        public void CancelPackageAsync(string sid, string packageURL, object userState) {
            if ((this.CancelPackageOperationCompleted == null)) {
                this.CancelPackageOperationCompleted = new System.Threading.SendOrPostCallback(this.OnCancelPackageOperationCompleted);
            }
            this.InvokeAsync("CancelPackage", new object[] {
                        sid,
                        packageURL}, this.CancelPackageOperationCompleted, userState);
        }
        
        private void OnCancelPackageOperationCompleted(object arg) {
            if ((this.CancelPackageCompleted != null)) {
                System.Web.Services.Protocols.InvokeCompletedEventArgs invokeArgs = ((System.Web.Services.Protocols.InvokeCompletedEventArgs)(arg));
                this.CancelPackageCompleted(this, new CancelPackageCompletedEventArgs(invokeArgs.Results, invokeArgs.Error, invokeArgs.Cancelled, invokeArgs.UserState));
            }
        }
        
        /// <remarks/>
        [System.Web.Services.Protocols.SoapDocumentMethodAttribute("http://tempuri.org/GetTranports", RequestNamespace="http://tempuri.org/", ResponseNamespace="http://tempuri.org/", Use=System.Web.Services.Description.SoapBindingUse.Literal, ParameterStyle=System.Web.Services.Protocols.SoapParameterStyle.Wrapped)]
        public TransportCompany[] GetTranports() {
            object[] results = this.Invoke("GetTranports", new object[0]);
            return ((TransportCompany[])(results[0]));
        }
        
        /// <remarks/>
        public void GetTranportsAsync() {
            this.GetTranportsAsync(null);
        }
        
        /// <remarks/>
        public void GetTranportsAsync(object userState) {
            if ((this.GetTranportsOperationCompleted == null)) {
                this.GetTranportsOperationCompleted = new System.Threading.SendOrPostCallback(this.OnGetTranportsOperationCompleted);
            }
            this.InvokeAsync("GetTranports", new object[0], this.GetTranportsOperationCompleted, userState);
        }
        
        private void OnGetTranportsOperationCompleted(object arg) {
            if ((this.GetTranportsCompleted != null)) {
                System.Web.Services.Protocols.InvokeCompletedEventArgs invokeArgs = ((System.Web.Services.Protocols.InvokeCompletedEventArgs)(arg));
                this.GetTranportsCompleted(this, new GetTranportsCompletedEventArgs(invokeArgs.Results, invokeArgs.Error, invokeArgs.Cancelled, invokeArgs.UserState));
            }
        }
        
        /// <remarks/>
        public new void CancelAsync(object userState) {
            base.CancelAsync(userState);
        }
        
        private bool IsLocalFileSystemWebService(string url) {
            if (((url == null) 
                        || (url == string.Empty))) {
                return false;
            }
            System.Uri wsUri = new System.Uri(url);
            if (((wsUri.Port >= 1024) 
                        && (string.Compare(wsUri.Host, "localHost", System.StringComparison.OrdinalIgnoreCase) == 0))) {
                return true;
            }
            return false;
        }
    }
    
    /// <remarks/>
    [System.CodeDom.Compiler.GeneratedCodeAttribute("System.Xml", "2.0.50727.3053")]
    [System.SerializableAttribute()]
    [System.Diagnostics.DebuggerStepThroughAttribute()]
    [System.ComponentModel.DesignerCategoryAttribute("code")]
    [System.Xml.Serialization.XmlTypeAttribute(Namespace="http://tempuri.org/")]
    public partial class TransportCompany {
        
        private string tenCongTyVanChuyenField;
        
        private string maCongTyVanChuyenField;
        
        private TransportType[] hinhThucVanChuyenField;
        
        /// <remarks/>
        public string TenCongTyVanChuyen {
            get {
                return this.tenCongTyVanChuyenField;
            }
            set {
                this.tenCongTyVanChuyenField = value;
            }
        }
        
        /// <remarks/>
        public string MaCongTyVanChuyen {
            get {
                return this.maCongTyVanChuyenField;
            }
            set {
                this.maCongTyVanChuyenField = value;
            }
        }
        
        /// <remarks/>
        public TransportType[] HinhThucVanChuyen {
            get {
                return this.hinhThucVanChuyenField;
            }
            set {
                this.hinhThucVanChuyenField = value;
            }
        }
    }
    
    /// <remarks/>
    [System.CodeDom.Compiler.GeneratedCodeAttribute("System.Xml", "2.0.50727.3053")]
    [System.SerializableAttribute()]
    [System.Diagnostics.DebuggerStepThroughAttribute()]
    [System.ComponentModel.DesignerCategoryAttribute("code")]
    [System.Xml.Serialization.XmlTypeAttribute(Namespace="http://tempuri.org/")]
    public partial class TransportType {
        
        private string maHinhThucVanChuyenField;
        
        private string tenHinhThucVanChuyenField;
        
        private float giaField;
        
        private string donViTienField;
        
        /// <remarks/>
        public string MaHinhThucVanChuyen {
            get {
                return this.maHinhThucVanChuyenField;
            }
            set {
                this.maHinhThucVanChuyenField = value;
            }
        }
        
        /// <remarks/>
        public string TenHinhThucVanChuyen {
            get {
                return this.tenHinhThucVanChuyenField;
            }
            set {
                this.tenHinhThucVanChuyenField = value;
            }
        }
        
        /// <remarks/>
        public float Gia {
            get {
                return this.giaField;
            }
            set {
                this.giaField = value;
            }
        }
        
        /// <remarks/>
        public string DonViTien {
            get {
                return this.donViTienField;
            }
            set {
                this.donViTienField = value;
            }
        }
    }
    
    /// <remarks/>
    [System.CodeDom.Compiler.GeneratedCodeAttribute("System.Web.Services", "2.0.50727.3053")]
    public delegate void AuthenticateCompletedEventHandler(object sender, AuthenticateCompletedEventArgs e);
    
    /// <remarks/>
    [System.CodeDom.Compiler.GeneratedCodeAttribute("System.Web.Services", "2.0.50727.3053")]
    [System.Diagnostics.DebuggerStepThroughAttribute()]
    [System.ComponentModel.DesignerCategoryAttribute("code")]
    public partial class AuthenticateCompletedEventArgs : System.ComponentModel.AsyncCompletedEventArgs {
        
        private object[] results;
        
        internal AuthenticateCompletedEventArgs(object[] results, System.Exception exception, bool cancelled, object userState) : 
                base(exception, cancelled, userState) {
            this.results = results;
        }
        
        /// <remarks/>
        public string Result {
            get {
                this.RaiseExceptionIfNecessary();
                return ((string)(this.results[0]));
            }
        }
    }
    
    /// <remarks/>
    [System.CodeDom.Compiler.GeneratedCodeAttribute("System.Web.Services", "2.0.50727.3053")]
    public delegate void TransportGoodsCompletedEventHandler(object sender, TransportGoodsCompletedEventArgs e);
    
    /// <remarks/>
    [System.CodeDom.Compiler.GeneratedCodeAttribute("System.Web.Services", "2.0.50727.3053")]
    [System.Diagnostics.DebuggerStepThroughAttribute()]
    [System.ComponentModel.DesignerCategoryAttribute("code")]
    public partial class TransportGoodsCompletedEventArgs : System.ComponentModel.AsyncCompletedEventArgs {
        
        private object[] results;
        
        internal TransportGoodsCompletedEventArgs(object[] results, System.Exception exception, bool cancelled, object userState) : 
                base(exception, cancelled, userState) {
            this.results = results;
        }
        
        /// <remarks/>
        public string Result {
            get {
                this.RaiseExceptionIfNecessary();
                return ((string)(this.results[0]));
            }
        }
    }
    
    /// <remarks/>
    [System.CodeDom.Compiler.GeneratedCodeAttribute("System.Web.Services", "2.0.50727.3053")]
    public delegate void GetPackageInfoCompletedEventHandler(object sender, GetPackageInfoCompletedEventArgs e);
    
    /// <remarks/>
    [System.CodeDom.Compiler.GeneratedCodeAttribute("System.Web.Services", "2.0.50727.3053")]
    [System.Diagnostics.DebuggerStepThroughAttribute()]
    [System.ComponentModel.DesignerCategoryAttribute("code")]
    public partial class GetPackageInfoCompletedEventArgs : System.ComponentModel.AsyncCompletedEventArgs {
        
        private object[] results;
        
        internal GetPackageInfoCompletedEventArgs(object[] results, System.Exception exception, bool cancelled, object userState) : 
                base(exception, cancelled, userState) {
            this.results = results;
        }
        
        /// <remarks/>
        public string Result {
            get {
                this.RaiseExceptionIfNecessary();
                return ((string)(this.results[0]));
            }
        }
    }
    
    /// <remarks/>
    [System.CodeDom.Compiler.GeneratedCodeAttribute("System.Web.Services", "2.0.50727.3053")]
    public delegate void CancelPackageCompletedEventHandler(object sender, CancelPackageCompletedEventArgs e);
    
    /// <remarks/>
    [System.CodeDom.Compiler.GeneratedCodeAttribute("System.Web.Services", "2.0.50727.3053")]
    [System.Diagnostics.DebuggerStepThroughAttribute()]
    [System.ComponentModel.DesignerCategoryAttribute("code")]
    public partial class CancelPackageCompletedEventArgs : System.ComponentModel.AsyncCompletedEventArgs {
        
        private object[] results;
        
        internal CancelPackageCompletedEventArgs(object[] results, System.Exception exception, bool cancelled, object userState) : 
                base(exception, cancelled, userState) {
            this.results = results;
        }
        
        /// <remarks/>
        public float Result {
            get {
                this.RaiseExceptionIfNecessary();
                return ((float)(this.results[0]));
            }
        }
    }
    
    /// <remarks/>
    [System.CodeDom.Compiler.GeneratedCodeAttribute("System.Web.Services", "2.0.50727.3053")]
    public delegate void GetTranportsCompletedEventHandler(object sender, GetTranportsCompletedEventArgs e);
    
    /// <remarks/>
    [System.CodeDom.Compiler.GeneratedCodeAttribute("System.Web.Services", "2.0.50727.3053")]
    [System.Diagnostics.DebuggerStepThroughAttribute()]
    [System.ComponentModel.DesignerCategoryAttribute("code")]
    public partial class GetTranportsCompletedEventArgs : System.ComponentModel.AsyncCompletedEventArgs {
        
        private object[] results;
        
        internal GetTranportsCompletedEventArgs(object[] results, System.Exception exception, bool cancelled, object userState) : 
                base(exception, cancelled, userState) {
            this.results = results;
        }
        
        /// <remarks/>
        public TransportCompany[] Result {
            get {
                this.RaiseExceptionIfNecessary();
                return ((TransportCompany[])(this.results[0]));
            }
        }
    }
}

#pragma warning restore 1591