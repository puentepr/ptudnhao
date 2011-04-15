/*==============================================================*/
/* DBMS name:      Microsoft SQL Server 2005                    */
/* Created on:     4/9/2011 8:51:22 AM                          */
/*==============================================================*/
create database Biztmdt
go
use Biztmdt
go

if exists (select 1
   from sys.sysreferences r join sys.sysobjects o on (o.id = r.constid and o.type = 'F')
   where r.fkeyid = object_id('COUPON') and o.name = 'FK_COUPON_ASSOCIATI_SANPHAM')
alter table COUPON
   drop constraint FK_COUPON_ASSOCIATI_SANPHAM
go

if exists (select 1
   from sys.sysreferences r join sys.sysobjects o on (o.id = r.constid and o.type = 'F')
   where r.fkeyid = object_id('DONHANG') and o.name = 'FK_DONHANG_MUA_KHACHHAN')
alter table DONHANG
   drop constraint FK_DONHANG_MUA_KHACHHAN
go

if exists (select 1
   from sys.sysreferences r join sys.sysobjects o on (o.id = r.constid and o.type = 'F')
   where r.fkeyid = object_id('DONHANG') and o.name = 'FK_DONHANG_THUOCVE_PACKAGEI')
alter table DONHANG
   drop constraint FK_DONHANG_THUOCVE_PACKAGEI
go

if exists (select 1
   from sys.sysreferences r join sys.sysobjects o on (o.id = r.constid and o.type = 'F')
   where r.fkeyid = object_id('DONHANGCOUPON') and o.name = 'FK_DONHANGC_ASSOCIATI_COUPON')
alter table DONHANGCOUPON
   drop constraint FK_DONHANGC_ASSOCIATI_COUPON
go

if exists (select 1
   from sys.sysreferences r join sys.sysobjects o on (o.id = r.constid and o.type = 'F')
   where r.fkeyid = object_id('DONHANGCOUPON') and o.name = 'FK_DONHANGC_ASSOCIATI_YCWEBSER')
alter table DONHANGCOUPON
   drop constraint FK_DONHANGC_ASSOCIATI_YCWEBSER
go

if exists (select 1
   from sys.sysreferences r join sys.sysobjects o on (o.id = r.constid and o.type = 'F')
   where r.fkeyid = object_id('DONHANGCOUPON') and o.name = 'FK_DONHANGC_ASSOCIATI_SID')
alter table DONHANGCOUPON
   drop constraint FK_DONHANGC_ASSOCIATI_SID
go

if exists (select 1
   from sys.sysreferences r join sys.sysobjects o on (o.id = r.constid and o.type = 'F')
   where r.fkeyid = object_id('DONHANGCOUPON') and o.name = 'FK_DONHANGC_ASSOCIATI_PACKAGEI')
alter table DONHANGCOUPON
   drop constraint FK_DONHANGC_ASSOCIATI_PACKAGEI
go

if exists (select 1
   from sys.sysreferences r join sys.sysobjects o on (o.id = r.constid and o.type = 'F')
   where r.fkeyid = object_id('CHITIETDONHANG') and o.name = 'FK_GOMSP_GOMSP_DONHANG')
alter table CHITIETDONHANG
   drop constraint FK_GOMSP_GOMSP_DONHANG
go

if exists (select 1
   from sys.sysreferences r join sys.sysobjects o on (o.id = r.constid and o.type = 'F')
   where r.fkeyid = object_id('CHITIETDONHANG') and o.name = 'FK_GOMSP_GOMSP2_SANPHAM')
alter table CHITIETDONHANG
   drop constraint FK_GOMSP_GOMSP2_SANPHAM
go

if exists (select 1
   from sys.sysreferences r join sys.sysobjects o on (o.id = r.constid and o.type = 'F')
   where r.fkeyid = object_id('KHACHHANG') and o.name = 'FK_KHACHHAN_INHERITAN_USER')
alter table KHACHHANG
   drop constraint FK_KHACHHAN_INHERITAN_USER
go

if exists (select 1
   from sys.sysreferences r join sys.sysobjects o on (o.id = r.constid and o.type = 'F')
   where r.fkeyid = object_id('LOAISP') and o.name = 'FK_LOAISP_COLSP_NHOMLOAI')
alter table LOAISP
   drop constraint FK_LOAISP_COLSP_NHOMLOAI
go

if exists (select 1
   from sys.sysreferences r join sys.sysobjects o on (o.id = r.constid and o.type = 'F')
   where r.fkeyid = object_id('PACKAGEINFO') and o.name = 'FK_PACKAGEI_GOMCO_SERVICET')
alter table PACKAGEINFO
   drop constraint FK_PACKAGEI_GOMCO_SERVICET
go

if exists (select 1
   from sys.sysreferences r join sys.sysobjects o on (o.id = r.constid and o.type = 'F')
   where r.fkeyid = object_id('QUANTRI') and o.name = 'FK_QUANTRI_INHERITAN_USER')
alter table QUANTRI
   drop constraint FK_QUANTRI_INHERITAN_USER
go

if exists (select 1
   from sys.sysreferences r join sys.sysobjects o on (o.id = r.constid and o.type = 'F')
   where r.fkeyid = object_id('SANPHAM') and o.name = 'FK_SANPHAM_THUOC_LOAISP')
alter table SANPHAM
   drop constraint FK_SANPHAM_THUOC_LOAISP
go

if exists (select 1
   from sys.sysreferences r join sys.sysobjects o on (o.id = r.constid and o.type = 'F')
   where r.fkeyid = object_id('SID') and o.name = 'FK_SID_ASSOCIATI_YCWEBSER')
alter table SID
   drop constraint FK_SID_ASSOCIATI_YCWEBSER
go

if exists (select 1
   from sys.sysreferences r join sys.sysobjects o on (o.id = r.constid and o.type = 'F')
   where r.fkeyid = object_id('TKBANK') and o.name = 'FK_TKBANK_ASSOCIATI_SERVICEB')
alter table TKBANK
   drop constraint FK_TKBANK_ASSOCIATI_SERVICEB
go

if exists (select 1
   from sys.sysreferences r join sys.sysobjects o on (o.id = r.constid and o.type = 'F')
   where r.fkeyid = object_id('USERS') and o.name = 'FK_USER_GOM_LOAIUSER')
alter table USERS
   drop constraint FK_USER_GOM_LOAIUSER
go

if exists (select 1
   from sys.sysreferences r join sys.sysobjects o on (o.id = r.constid and o.type = 'F')
   where r.fkeyid = object_id('YCWEBSERVICE') and o.name = 'FK_YCWEBSER_REFERENCE_KHACHHAN')
alter table YCWEBSERVICE
   drop constraint FK_YCWEBSER_REFERENCE_KHACHHAN
go

if exists (select 1
            from  sysobjects
           where  id = object_id('BTS_BIZ')
            and   type = 'U')
   drop table BTS_BIZ
go

if exists (select 1
            from  sysindexes
           where  id    = object_id('COUPON')
            and   name  = 'ASSOCIATION_11_FK'
            and   indid > 0
            and   indid < 255)
   drop index COUPON.ASSOCIATION_11_FK
go

if exists (select 1
            from  sysobjects
           where  id = object_id('COUPON')
            and   type = 'U')
   drop table COUPON
go

if exists (select 1
            from  sysindexes
           where  id    = object_id('DONHANG')
            and   name  = 'THUOCVE_FK'
            and   indid > 0
            and   indid < 255)
   drop index DONHANG.THUOCVE_FK
go

if exists (select 1
            from  sysindexes
           where  id    = object_id('DONHANG')
            and   name  = 'MUA_FK'
            and   indid > 0
            and   indid < 255)
   drop index DONHANG.MUA_FK
go

if exists (select 1
            from  sysobjects
           where  id = object_id('DONHANG')
            and   type = 'U')
   drop table DONHANG
go

if exists (select 1
            from  sysindexes
           where  id    = object_id('DONHANGCOUPON')
            and   name  = 'ASSOCIATION_18_FK'
            and   indid > 0
            and   indid < 255)
   drop index DONHANGCOUPON.ASSOCIATION_18_FK
go

if exists (select 1
            from  sysindexes
           where  id    = object_id('DONHANGCOUPON')
            and   name  = 'ASSOCIATION_15_FK'
            and   indid > 0
            and   indid < 255)
   drop index DONHANGCOUPON.ASSOCIATION_15_FK
go

if exists (select 1
            from  sysindexes
           where  id    = object_id('DONHANGCOUPON')
            and   name  = 'ASSOCIATION_13_FK'
            and   indid > 0
            and   indid < 255)
   drop index DONHANGCOUPON.ASSOCIATION_13_FK
go

if exists (select 1
            from  sysindexes
           where  id    = object_id('DONHANGCOUPON')
            and   name  = 'ASSOCIATION_12_FK'
            and   indid > 0
            and   indid < 255)
   drop index DONHANGCOUPON.ASSOCIATION_12_FK
go

if exists (select 1
            from  sysobjects
           where  id = object_id('DONHANGCOUPON')
            and   type = 'U')
   drop table DONHANGCOUPON
go

if exists (select 1
            from  sysindexes
           where  id    = object_id('CHITIETDONHANG')
            and   name  = 'GOMSP2_FK'
            and   indid > 0
            and   indid < 255)
   drop index CHITIETDONHANG.GOMSP2_FK
go

if exists (select 1
            from  sysindexes
           where  id    = object_id('CHITIETDONHANG')
            and   name  = 'GOMSP_FK'
            and   indid > 0
            and   indid < 255)
   drop index CHITIETDONHANG.GOMSP_FK
go

if exists (select 1
            from  sysobjects
           where  id = object_id('CHITIETDONHANG')
            and   type = 'U')
   drop table CHITIETDONHANG
go

if exists (select 1
            from  sysobjects
           where  id = object_id('KHACHHANG')
            and   type = 'U')
   drop table KHACHHANG
go

if exists (select 1
            from  sysindexes
           where  id    = object_id('LOAISP')
            and   name  = 'COLSP_FK'
            and   indid > 0
            and   indid < 255)
   drop index LOAISP.COLSP_FK
go

if exists (select 1
            from  sysobjects
           where  id = object_id('LOAISP')
            and   type = 'U')
   drop table LOAISP
go

if exists (select 1
            from  sysobjects
           where  id = object_id('LOAIUSER')
            and   type = 'U')
   drop table LOAIUSER
go

if exists (select 1
            from  sysobjects
           where  id = object_id('NHOMLOAISP')
            and   type = 'U')
   drop table NHOMLOAISP
go

if exists (select 1
            from  sysindexes
           where  id    = object_id('PACKAGEINFO')
            and   name  = 'GOMCO_FK'
            and   indid > 0
            and   indid < 255)
   drop index PACKAGEINFO.GOMCO_FK
go

if exists (select 1
            from  sysobjects
           where  id = object_id('PACKAGEINFO')
            and   type = 'U')
   drop table PACKAGEINFO
go

if exists (select 1
            from  sysobjects
           where  id = object_id('QUANTRI')
            and   type = 'U')
   drop table QUANTRI
go

if exists (select 1
            from  sysindexes
           where  id    = object_id('SANPHAM')
            and   name  = 'THUOC_FK'
            and   indid > 0
            and   indid < 255)
   drop index SANPHAM.THUOC_FK
go

if exists (select 1
            from  sysobjects
           where  id = object_id('SANPHAM')
            and   type = 'U')
   drop table SANPHAM
go

if exists (select 1
            from  sysobjects
           where  id = object_id('SERVICEBANK')
            and   type = 'U')
   drop table SERVICEBANK
go

if exists (select 1
            from  sysobjects
           where  id = object_id('SERVICETRANS')
            and   type = 'U')
   drop table SERVICETRANS
go

if exists (select 1
            from  sysindexes
           where  id    = object_id('SID')
            and   name  = 'ASSOCIATION_16_FK'
            and   indid > 0
            and   indid < 255)
   drop index SID.ASSOCIATION_16_FK
go

if exists (select 1
            from  sysobjects
           where  id = object_id('SID')
            and   type = 'U')
   drop table SID
go

if exists (select 1
            from  sysindexes
           where  id    = object_id('TKBANK')
            and   name  = 'ASSOCIATION_19_FK'
            and   indid > 0
            and   indid < 255)
   drop index TKBANK.ASSOCIATION_19_FK
go

if exists (select 1
            from  sysobjects
           where  id = object_id('TKBANK')
            and   type = 'U')
   drop table TKBANK
go

if exists (select 1
            from  sysindexes
           where  id    = object_id('USERS')
            and   name  = 'GOM_FK'
            and   indid > 0
            and   indid < 255)
   drop index USERS.GOM_FK
go

if exists (select 1
            from  sysobjects
           where  id = object_id('USERS')
            and   type = 'U')
   drop table USERS
go

if exists (select 1
            from  sysobjects
           where  id = object_id('YCWEBSERVICE')
            and   type = 'U')
   drop table YCWEBSERVICE
go

/*==============================================================*/
/* Table: BTS_BIZ                                               */
/*==============================================================*/
create table BTS_BIZ (
   MATS                 int  identity(1,1)   not null,
   TENTS                nvarchar(50)          null,
   KIEUDL               nvarchar(20)          null,
   GIATRI               nvarchar(200)         null,
   TINHTRANGTS          int                  null,
   constraint PK_BTS_BIZ primary key nonclustered (MATS)
)
go

/*==============================================================*/
/* Table: COUPON                                                */
/*==============================================================*/
create table COUPON (
   MACP                 varchar(20)          not null,
   MASP                 varchar(10)             not null,
   GIASGIAM             float                null,
   THOIGIANBD           datetime             null,
   THOIGIANKT           datetime             null,
   SLSPMIN              float                null,
   TINHTRANGCP          nvarchar(20)          null,
   DIEUKIENSD           nvarchar(500)         null,
   GIAGOC               float                null,
   DVTIENTE             nvarchar(10)          null,
   LINKHINHANH          nvarchar(300)         null,
   SLCPMINGIAMGIA       int                  null,
   constraint PK_COUPON primary key nonclustered (MACP)
)
go

/*==============================================================*/
/* Index: ASSOCIATION_11_FK                                     */
/*==============================================================*/
create index ASSOCIATION_11_FK on COUPON (
MASP ASC
)
go

/*==============================================================*/
/* Table: DONHANG                                               */
/*==============================================================*/
create table DONHANG (
   MADH                 int identity(100,1)  not null,
   MAPK                 int                  null,
   USERNAME             varchar(30)             not null,
   NGAYDAT              datetime             null,
   NGAYGIAO             datetime             null,
   TONGTIEN             float                null,
   TINHTRANGDH          nvarchar(20)          null,
   DIACHINHAN           nvarchar(200)         null,
   DVTIENTE             nvarchar(10)          null,
   MAXN                 nvarchar(100)         null,
   NGAYHETHAN           datetime             null,
   constraint PK_DONHANG primary key nonclustered (MADH)
)
go

/*==============================================================*/
/* Index: MUA_FK                                                */
/*==============================================================*/
create index MUA_FK on DONHANG (
USERNAME ASC
)
go

/*==============================================================*/
/* Index: THUOCVE_FK                                            */
/*==============================================================*/
create index THUOCVE_FK on DONHANG (
MAPK ASC
)
go

/*==============================================================*/
/* Table: DONHANGCOUPON                                         */
/*==============================================================*/
create table DONHANGCOUPON (
   MA_WS                smallint             not null,
   MACP                 varchar(20)          not null,
   MAPK                 int                  null,
   S_ID                 varchar(100)         not null,
   MADHCP               int                  not null,
   NGAYDAT              datetime             null,
   NGAYGIAO             datetime             null,
   TONGTIEN             float                null,
   TINHTRANGDH          nvarchar(20)          null,
   DIACHINHAN           nvarchar(200)         null,
   DVTIENTE             nvarchar(10)          null,
   VALIDATECODE         nvarchar(100)         null,
   SOLUONGCP            int                  null,
   constraint PK_DONHANGCOUPON primary key (MADHCP)
)
go

/*==============================================================*/
/* Index: ASSOCIATION_12_FK                                     */
/*==============================================================*/
create index ASSOCIATION_12_FK on DONHANGCOUPON (
MACP ASC
)
go

/*==============================================================*/
/* Index: ASSOCIATION_13_FK                                     */
/*==============================================================*/
create index ASSOCIATION_13_FK on DONHANGCOUPON (
MA_WS ASC
)
go

/*==============================================================*/
/* Index: ASSOCIATION_15_FK                                     */
/*==============================================================*/
create index ASSOCIATION_15_FK on DONHANGCOUPON (
S_ID ASC
)
go

/*==============================================================*/
/* Index: ASSOCIATION_18_FK                                     */
/*==============================================================*/
create index ASSOCIATION_18_FK on DONHANGCOUPON (
MAPK ASC
)
go

/*==============================================================*/
/* Table: GOMSP                                                 */
/*==============================================================*/
create table CHITIETDONHANG (
   MADH                 int                  not null,
   MASP                 varchar(10)             not null,
   SOLUONG              float                null,
   DONGIA               float                null,
   DVTINH               nvarchar(10)          null,
   constraint PK_GOMSP primary key (MADH, MASP)
)
go

/*==============================================================*/
/* Index: GOMSP_FK                                              */
/*==============================================================*/
create index GOMSP_FK on CHITIETDONHANG (
MADH ASC
)
go

/*==============================================================*/
/* Index: GOMSP2_FK                                             */
/*==============================================================*/
create index GOMSP2_FK on CHITIETDONHANG (
MASP ASC
)
go

/*==============================================================*/
/* Table: KHACHHANG                                             */
/*==============================================================*/
create table KHACHHANG (
   USERNAME             varchar(30)             not null,
   TENDN                nvarchar(200)            null,
   DIACHI               nvarchar(80)             null,
   SDT                  varchar(15)             null,
   TENNDAIDIEN          nvarchar(30)             null,
   WEBSITE              varchar(100)            null,
   constraint PK_KHACHHANG primary key (USERNAME)
)
go

/*==============================================================*/
/* Table: LOAISP                                                */
/*==============================================================*/
create table LOAISP (
   MALSP                smallint  identity(1,1)           not null,
   MANHOM               int                  not null,
   TENLSP               nvarchar(50)          null,
   constraint PK_LOAISP primary key nonclustered (MALSP)
)
go

/*==============================================================*/
/* Index: COLSP_FK                                              */
/*==============================================================*/
create index COLSP_FK on LOAISP (
MANHOM ASC
)
go

/*==============================================================*/
/* Table: LOAIUSER                                              */
/*==============================================================*/
create table LOAIUSER (
   MALOAI               int                  not null,
   TENLOAI              nvarchar(20)             null,
   constraint PK_LOAIUSER primary key nonclustered (MALOAI)
)
go

/*==============================================================*/
/* Table: NHOMLOAISP                                            */
/*==============================================================*/
create table NHOMLOAISP (
   MANHOM               int    identity(1,1)  not null,
   TENNHOM              nvarchar(30)          null,
   constraint PK_NHOMLOAISP primary key nonclustered (MANHOM)
)
go

/*==============================================================*/
/* Table: PACKAGEINFO                                           */
/*==============================================================*/
create table PACKAGEINFO (
   MAPK                 int    identity(100,1) not null,
   MADV                 int                  not null,
   PACINFO              nvarchar(100)         null,
   URL                  varchar(300)         null,
   constraint PK_PACKAGEINFO primary key nonclustered (MAPK)
)
go

/*==============================================================*/
/* Index: GOMCO_FK                                              */
/*==============================================================*/
create index GOMCO_FK on PACKAGEINFO (
MADV ASC
)
go

/*==============================================================*/
/* Table: QUANTRI                                               */
/*==============================================================*/
create table QUANTRI (
   USERNAME             varchar(30)             not null,
   HOTEN                nvarchar(10)             null,
   DIACHI               nvarchar(80)             null,
   SDT                  varchar(15)             null,
   constraint PK_QUANTRI primary key (USERNAME)
)
go

/*==============================================================*/
/* Table: SANPHAM                                               */
/*==============================================================*/
create table SANPHAM (
   MASP                 varchar(10)             not null,
   MALSP                smallint             not null,
   TENSP                nvarchar(50)          null,
   HINHANH              varchar(100)         null,
   CHATLUONG            nvarchar(30)          null,
   GIA                  float                null,
   SOLUONG              float                null,
   DVTINH               nvarchar(10)          null,
   SLCONLAI             float                null,
   NGAYDSP              datetime             null,
   NGAYSD               datetime             null,
   TINHTRANGSP          nvarchar(20)          null,
   NGAYXOA              datetime             null,
   constraint PK_SANPHAM primary key nonclustered (MASP)
)
go

/*==============================================================*/
/* Index: THUOC_FK                                              */
/*==============================================================*/
create index THUOC_FK on SANPHAM (
MALSP ASC
)
go

/*==============================================================*/
/* Table: SERVICEBANK                                           */
/*==============================================================*/
create table SERVICEBANK (
   MABANK               varchar(50)          not null,
   TENBANK              nvarchar(80)          null,
   USERNAMEB            varchar(30)          null,
   PASSWORDB            varchar(30)          null,
   LINKWS               varchar(200)         null,
   ANHBANK              varchar(200)         null,
   TINHTRANGWS          int                  null,
   constraint PK_SERVICEBANK primary key nonclustered (MABANK)
)
go

/*==============================================================*/
/* Table: SERVICETRANS                                          */
/*==============================================================*/
create table SERVICETRANS (
   MADV                 int                  not null,
   TENCTY               nvarchar(300)         null,
   LINKWS               varchar(200)         null,
   USERNAME             varchar(30)          null,
   PASS_WORD            varchar(30)          null,
   constraint PK_SERVICETRANS primary key nonclustered (MADV)
)
go

/*==============================================================*/
/* Table: SID                                                   */
/*==============================================================*/
create table SID (
   S_ID                 varchar(100)         not null,
   MA_WS                smallint             not null,
   TINHTRANGID          int                  null,
   NGAYCAP              datetime             null,
   NGAYHETHIEULUC       datetime             null,
   constraint PK_SID primary key nonclustered (S_ID)
)
go

/*==============================================================*/
/* Index: ASSOCIATION_16_FK                                     */
/*==============================================================*/
create index ASSOCIATION_16_FK on SID (
MA_WS ASC
)
go

/*==============================================================*/
/* Table: TKBANK                                                */
/*==============================================================*/
create table TKBANK (
   MABANK               varchar(50)          not null,
   SOTK                 varchar(30)          not null,
   constraint PK_TKBANK primary key (SOTK)
)
go

/*==============================================================*/
/* Index: ASSOCIATION_19_FK                                     */
/*==============================================================*/
create index ASSOCIATION_19_FK on TKBANK (
MABANK ASC
)
go

/*==============================================================*/
/* Table: "USER"                                                */
/*==============================================================*/
create table USERS (
   USERNAME             varchar(30)             not null,
   MALOAI               int                  not null,
   PASS_WORD            varchar(30)             null,
   EMAIL                varchar(50)          null,
   TRANGTHAI            int                  null,
   constraint PK_USER primary key nonclustered (USERNAME)
)
go

/*==============================================================*/
/* Index: GOM_FK                                                */
/*==============================================================*/
create index GOM_FK on USERS (
MALOAI ASC
)
go

/*==============================================================*/
/* Table: YCWEBSERVICE                                          */
/*==============================================================*/
create table YCWEBSERVICE (
   MA                   smallint  identity(100,1) not null,
   USERNAME             varchar(30)             null,
   LINK                 varchar(200)         null,
   EMAIL                varchar(50)          null,
   TINHTRANGYC          int                  null,
   SOLUONGSIDCAP        int                  null,
   SLSIDDATHANHTOAN     int                  null,
   constraint PK_YCWEBSERVICE primary key nonclustered (MA)
)
go

alter table COUPON
   add constraint FK_COUPON_ASSOCIATI_SANPHAM foreign key (MASP)
      references SANPHAM (MASP)
go

alter table DONHANG
   add constraint FK_DONHANG_MUA_KHACHHAN foreign key (USERNAME)
      references KHACHHANG (USERNAME)
go

alter table DONHANG
   add constraint FK_DONHANG_THUOCVE_PACKAGEI foreign key (MAPK)
      references PACKAGEINFO (MAPK)
go

alter table DONHANGCOUPON
   add constraint FK_DONHANGC_ASSOCIATI_COUPON foreign key (MACP)
      references COUPON (MACP)
go

alter table DONHANGCOUPON
   add constraint FK_DONHANGC_ASSOCIATI_YCWEBSER foreign key (MA_WS)
      references YCWEBSERVICE (MA)
go

alter table DONHANGCOUPON
   add constraint FK_DONHANGC_ASSOCIATI_SID foreign key (S_ID)
      references SID (S_ID)
go

alter table DONHANGCOUPON
   add constraint FK_DONHANGC_ASSOCIATI_PACKAGEI foreign key (MAPK)
      references PACKAGEINFO (MAPK)
go

alter table CHITIETDONHANG
   add constraint FK_GOMSP_GOMSP_DONHANG foreign key (MADH)
      references DONHANG (MADH)
go

alter table CHITIETDONHANG
   add constraint FK_GOMSP_GOMSP2_SANPHAM foreign key (MASP)
      references SANPHAM (MASP)
go

alter table KHACHHANG
   add constraint FK_KHACHHAN_INHERITAN_USER foreign key (USERNAME)
      references USERS (USERNAME)
go

alter table LOAISP
   add constraint FK_LOAISP_COLSP_NHOMLOAI foreign key (MANHOM)
      references NHOMLOAISP (MANHOM)
go

alter table PACKAGEINFO
   add constraint FK_PACKAGEI_GOMCO_SERVICET foreign key (MADV)
      references SERVICETRANS (MADV)
go

alter table QUANTRI
   add constraint FK_QUANTRI_INHERITAN_USER foreign key (USERNAME)
      references USERS (USERNAME)
go

alter table SANPHAM
   add constraint FK_SANPHAM_THUOC_LOAISP foreign key (MALSP)
      references LOAISP (MALSP)
go

alter table SID
   add constraint FK_SID_ASSOCIATI_YCWEBSER foreign key (MA_WS)
      references YCWEBSERVICE (MA)
go

alter table TKBANK
   add constraint FK_TKBANK_ASSOCIATI_SERVICEB foreign key (MABANK)
      references SERVICEBANK (MABANK)
go

alter table USERS
   add constraint FK_USER_GOM_LOAIUSER foreign key (MALOAI)
      references LOAIUSER (MALOAI)
go

alter table YCWEBSERVICE
   add constraint FK_YCWEBSER_REFERENCE_KHACHHAN foreign key (USERNAME)
      references KHACHHANG (USERNAME)
go





Insert into LOAIUSER values(1,'Admin')
Insert into LOAIUSER values(2,'Manager')
Insert into LOAIUSER values(3,'Consumer')
if exists(Select * From sysobjects Where name='sp_InsertConsumer' and type='p')
drop proc sp_InsertConsumer
go
Create procedure sp_InsertConsumer
@username varchar(30),@password varchar(30),@email varchar(50),@tendn nvarchar(200),
@diachi nvarchar(80),@sdt varchar(15),@tendaidien nvarchar(30),@website varchar(100)
As
	begin tran
		Insert into USERS values(@username,3,@password,@email,0);
		if @@error<>0
		begin
			rollback tran
			return -1
		end
		Insert into KHACHHANG values(@username,@tendn,@diachi,@sdt,@tendaidien,@website)
		if @@error<>0
		begin
			rollback tran
			return -1
		end
	commit tran
	return 1
Go


--exec sp_InsertConsumer 'nam', 'nam','nam@gmail.com',N'beatifulhouseGroup',N'4-NCV-HCM','0128912890',
--'Nhân Tông','http://beatifulhouseGroup.com'

if exists(Select * From sysobjects Where name='sp_UpdateStatusUser' and type='p')
drop proc sp_UpdateStatusUser
go
Create procedure sp_UpdateStatusUser
@username varchar(30),@trangthai int
As
	Update USERS set TRANGTHAI=@trangthai Where USERNAME=@username;
	if @@error<>0
		return -1
	else
		return 0
Go

--exec sp_UpdateStatusUser 'nam',1

-- kiem tra tai khoan co ton tai, tra ra -1=khong ton tai, 0=ton tai chua active
--  1= ton tai& da active, output la loai user
if exists(Select * From sysobjects where name='sp_CheckAccountIsAvaliable' and type='p' )
drop proc sp_CheckAccountIsAvaliable
go
create procedure sp_CheckAccountIsAvaliable
@username varchar(30),@password varchar(30),@loaiuser int output
As
	Declare @status int
	set @loaiuser=0
	set @status=-1
	Select @status=TRANGTHAI,@loaiuser=MALOAI From USERS Where USERNAME=@username and PASS_WORD=@password;
	return @status
Go

/*Declare @loaiuser int,@status int
exec sp_CheckAccountIsAvaliable 'nam1','nam',@loaiuser output
print @loaiuser*/

--kiem tra username da ton tai chua, dung luc validate username khi dang ky
if exists(Select * From sysobjects Where name='sp_ValidateUsername' and type='p')
drop proc sp_ValidateUsername
go
create procedure sp_ValidateUsername @username varchar(30)
as
	Declare @count int
	Select @count=count(*) From USERS Where USERNAME=@username;
	return @count
go

--exec sp_ValidateUsername 'name'
