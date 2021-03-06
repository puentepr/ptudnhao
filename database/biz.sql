
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
/*
if exists (select 1
   from sys.sysreferences r join sys.sysobjects o on (o.id = r.constid and o.type = 'F')
   where r.fkeyid = object_id('DONHANGCOUPON') and o.name = 'FK_DONHANGC_ASSOCIATI_SID')
alter table DONHANGCOUPON
   drop constraint FK_DONHANGC_ASSOCIATI_SID
go
*/
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
/*
if exists (select 1
   from sys.sysreferences r join sys.sysobjects o on (o.id = r.constid and o.type = 'F')
   where r.fkeyid = object_id('TKBANK') and o.name = 'FK_TKBANK_ASSOCIATI_SERVICEB')
alter table TKBANK
   drop constraint FK_TKBANK_ASSOCIATI_SERVICEB
go*/

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
/*
if exists (select 1
            from  sysindexes
           where  id    = object_id('DONHANGCOUPON')
            and   name  = 'ASSOCIATION_15_FK'
            and   indid > 0
            and   indid < 255)
   drop index DONHANGCOUPON.ASSOCIATION_15_FK
go*/

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
/*
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
go*/

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
   SLSPMIN              int	                 null,
   TINHTRANGCP          nvarchar(20)          null,
   DIEUKIENSD           nvarchar(500)         null,
   GIAGOC               float                null,
   DVTIENTE             nvarchar(10)          null,
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
 /*  S_ID                 varchar(100)         not null,*/
   MADHCP               int  identity(100,1)   not null,
   NGAYDAT              datetime             null,
   NGAYGIAO             datetime             null,
   TONGTIEN             float                null,
   TINHTRANGDH          nvarchar(20)          null,
   DIACHINHAN           nvarchar(200)         null,
   DVTIENTE             nvarchar(10)          null,
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
/*create index ASSOCIATION_15_FK on DONHANGCOUPON (
S_ID ASC
)
go*/

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
   HOTEN                nvarchar(50)             null,
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
   MOTA					nvarchar(3000)		null,
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
   WEBSITE				varchar(200)		null,
	STK					varchar(100)	null,
   constraint PK_SERVICEBANK primary key nonclustered (MABANK)
)
go

/*==============================================================*/
/* Table: SERVICETRANS                                          */
/*==============================================================*/
create table SERVICETRANS (
   MADV                 int  identity(1,1)   not null,
   TENCTY               nvarchar(300)         null,
   LINKWS               varchar(200)         null,
   USERNAME             varchar(30)          null,
   PASS_WORD            varchar(30)          null,
	TINHTRANG			int					null,
	WEBSITE				varchar(200)		null,
	BIZADDRESS nvarchar(200) null,
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
  /* NGAYHETHIEULUC       datetime             null,*/
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
/*create table TKBANK (
   MABANK               varchar(50)          not null,
   SOTK                 varchar(30)          not null,
   constraint PK_TKBANK primary key (SOTK)
)
go*/

/*==============================================================*/
/* Index: ASSOCIATION_19_FK                                     */
/*==============================================================*/
/*create index ASSOCIATION_19_FK on TKBANK (
MABANK ASC
)
go*/

/*==============================================================*/
/* Table: "USER"                                                */
/*==============================================================*/
create table USERS (
   USERNAME             varchar(30)             not null,
   MALOAI               int                  not null,
   PASS_WORD            varchar(200)             null,
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
   TENDN                nvarchar(200)        null,  
   LINK                 varchar(200)         null,
   EMAIL                varchar(50)          null,
   TINHTRANGYC          int                  null,
   SOLUONGSIDCAP        int                  null,
   SLSIDDATHANHTOAN     int                  null,
	LINKWS	nvarchar(200)	null,
	MCUSERNAME varchar(50) null,
	MCPASSWORD varchar(100) null,
   constraint PK_YCWEBSERVICE primary key nonclustered (MA)
)
go

/*==============================================================*/
/* Table: TRANSTYPE                                          */
/*==============================================================*/
/*create table TRANSTYPE
(
	ID int identity(1,1) not null,
	MA varchar(3) not null,
	TEN nvarchar(100),
	GIA float,
	DVTIEN nvarchar(50),
	MADV int,
	constraint PK_ID primary key (ID)

)
go
alter table TRANSTYPE
	add constraint FK_TRANSTYPE_SERVICETRANS_MA foreign key(MADV)
		references SERVICETRANS(MADV)*/
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
/*
alter table DONHANGCOUPON
   add constraint FK_DONHANGC_ASSOCIATI_SID foreign key (S_ID)
      references SID (S_ID)
go
*/
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
/*
alter table TKBANK
   add constraint FK_TKBANK_ASSOCIATI_SERVICEB foreign key (MABANK)
      references SERVICEBANK (MABANK)
go
*/
alter table USERS
   add constraint FK_USER_GOM_LOAIUSER foreign key (MALOAI)
      references LOAIUSER (MALOAI)
go

alter table YCWEBSERVICE
   add constraint FK_YCWEBSER_REFERENCE_KHACHHAN foreign key (USERNAME)
      references KHACHHANG (USERNAME)
go





if exists(Select * From sysobjects Where name='sp_InsertConsumer' and type='p')
drop proc sp_InsertConsumer
go
Create procedure sp_InsertConsumer
@username varchar(30),@password varchar(200),@email varchar(50),@tendn nvarchar(200),
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


-- kiem tra tai khoan co ton tai, tra ra -1=khong ton tai, 0=ton tai chua active
--  1= ton tai& da active, output la loai user
if exists(Select * From sysobjects where name='sp_CheckAccountIsAvaliable' and type='p' )
drop proc sp_CheckAccountIsAvaliable
go
create procedure sp_CheckAccountIsAvaliable
@username varchar(30),@password varchar(200),@loaiuser int output
As
	Declare @status int
	Select @status=TRANGTHAI,@loaiuser=MALOAI From USERS Where USERNAME=@username and PASS_WORD=@password;
	return @status
Go

/*Declare @loaiuser int,@status int
exec sp_CheckAccountIsAvaliable 'khtn','E1-0A-DC-39-49-BA-59-AB-BE-56-E0-57-F2-0F-88-3E',@loaiuser output
print @loaiuser*/
/*
Declare @loaiuser int,@status int,@username varchar(30),@password varchar(200)
set @username='khtn'
set @password='E1-0A-DC-39-49-BA-59-AB-BE-56-E0-57-F2-0F-88-3E'
Select @status=TRANGTHAI,@loaiuser=MALOAI From USERS Where USERNAME=@username and PASS_WORD=@password;
print @status;
print @loaiuser;
*/
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


--Cac Procedure Cua Phong
/*
If Exists(Select * From sysobjects where name='sp_ThemNhomLoaiSanPham' and type='p' )
Drop Procedure sp_ThemNhomLoaiSanPham
Go
Create Procedure sp_ThemNhomLoaiSanPham
	@tenNhom nvarchar(30)
AS
	Begin Tran
		Declare @maNhom int;
		Set @maNhom = 1;
		While Exists(Select * From NHOMLOAISP Where MANHOM = @maNhom)
		Begin
			Set @maNhom = @maNhom + 1;
		End
		If Not Exists(Select * From NHOMLOAISP Where TENNHOM = @tenNhom)
		Begin
			Insert Into NHOMLOAISP Values(@maNhom, @tenNhom);
			Commit Tran;
		End
		Else
			Rollback Tran;
			Return;
GO*/
/*
Exec sp_ThemNhomLoaiSanPham 'G?ch'
Select * From NHOMLOAISP
*/
/*
If Exists(Select * From sysobjects where name='sp_ThemLoaiSanPham' and type='p' )
Drop Procedure sp_ThemLoaiSanPham
Go
Create Procedure sp_ThemLoaiSanPham
	@maNhom int,
	@tenLSP nvarchar(50)
AS
	Begin
		Declare @maLSP smallint;
		Set @maLSP = 1;
		While Exists(Select * From LOAISP lsp Where lsp.MALSP = @maLSP)
		Begin
			Set @maLSP = @maLSP + 1;
		End
		If @maNhom In (Select MaNHOM From NHOMLOAISP)
			If Not Exists(Select * From LOAISP Where TENLSP = @tenLSP)
			Begin
				Insert Into LOAISP Values(@maLSP, @maNhom, @tenLSP);
				Commit Tran;
			End
			Else
				Rollback Tran;
				Return;
	End
GO*/
/*
Exec sp_ThemLoaiSanPham 1, 'Sat 8'
Select * From LOAISP
*/

If Exists(Select * From sysobjects where name='sp_ThemSanPham' and type='p' )
Drop Procedure sp_ThemSanPham
Go
Create Procedure sp_ThemSanPham
	@maSanPham varchar(10),
	@maLoaiSanPham smallint,
	@tenSanPham nvarchar(50),
	@moTaSanPham nvarchar(3000),
	@linkHinhAnh varchar(100),
	@chatLuong nvarchar(30),
	@giaGoc float,
	@soLuong float,
	@donViTinh nvarchar(10),
	@soLuongConLai float,
	@ngayDangSanPham datetime,
	@ngaySuaDoi datetime,
	@tinhTrangSanPham nvarchar(20)
AS
	Begin Tran
		If(Exists(Select * From SANPHAM sp Where sp.MASP = @maSanPham))
		Begin
			Rollback Tran;
			--print N'Du Lieu Da Co';
			Return;
		End
		Else
			If(@maLoaiSanPham In (Select MALSP From LOAISP))
			Begin
				Insert Into SANPHAM(MASP,MALSP,TENSP,MOTA,HINHANH,CHATLUONG,GIA,SOLUONG,DVTINH,SLCONLAI,NGAYDSP,NGAYSD,TINHTRANGSP,NGAYXOA)
			 Values(@maSanPham, @maLoaiSanPham, @tenSanPham, @moTaSanPham, @linkHinhAnh, @chatLuong, @giaGoc, @soLuong, @donViTinh, @soLuongConLai, @ngayDangSanPham, @ngaySuaDoi, @tinhTrangSanPham, null);
				Commit Tran;
				Return;
			End
			Else
				Rollback Tran;
				--print N'Chua Co Loai San Pham';
				return;
	--End
Go
/*
Exec sp_ThemSanPham 'SP2',7,'San Pham 1','SPImage.png','Tot',100,120,'bao',100,'2011-4-15','2011-4-15','da thanh toan','2011-4-15'
Select * From SANPHAM
*/

If Exists(Select * From sysobjects where name='sp_TaoCoupon' and type='p' )
Drop Procedure sp_TaoCoupon
Go
Create Procedure sp_TaoCoupon
	@maCoupon varchar(20),
	@maSanPham varchar(10),
	@giaSeGiam float,
	@thoiGianBatDau datetime,
	@thoiGianKetThuc datetime,
	@soLuongSanPhamMin int,
	@tinhTrangCoupon nvarchar(200),
	@dieuKienSuDung nvarchar(500),
	@giaGoc float,
	@donViTienTe nvarchar(10),
	@soLuongCouponMinGiamGia int
AS
	Begin Tran
		If(Exists(Select * From COUPON cp Where cp.MACP = @maCoupon) or (Not Exists(Select * From SANPHAM sp Where sp.MASP = @maSanPham)))
		Begin
			Rollback Tran;
			--print N'Du Lieu Da Co';
			Return;
		End
		Else
			Insert Into COUPON Values(@maCoupon, @maSanPham, @giaSeGiam, @thoiGianBatDau, @thoiGianKetThuc, @soLuongSanPhamMin, @tinhTrangCoupon, @dieuKienSuDung, @giaGoc, @donViTienTe, @soLuongCouponMinGiamGia)
			Commit Tran;
			Return;
GO
/*
Exec sp_TaoCoupon 'CP01','SP1',120,'2011-4-25','2011-4-22',12,'active','dksd',200,'USD','MyIamge.png',10
Select * From COUPON
*/

If Exists(Select * From sysobjects where name='sp_LayDanhSachSanPham' and type='p' )
Drop Procedure sp_LayDanhSachSanPham
Go
Create Procedure sp_LayDanhSachSanPham
AS
	Select MASP, TENSP,GIA
	From SANPHAM Where TINHTRANGSP=1;
GO
--Exec sp_LayDanhSachSanPham


If Exists(Select * From sysobjects where name='sp_LayDanhSachLoaiSanPham' and type='p' )
Drop Procedure sp_LayDanhSachLoaiSanPham
Go
Create Procedure sp_LayDanhSachLoaiSanPham
AS
	Select * From LOAISP
GO
--Exec sp_LayDanhSachLoaiSanPham


If Exists(Select * From sysobjects where name='sp_LayDanhSachLoaiSanPhamTheoNhom' and type='p' )
Drop Procedure sp_LayDanhSachLoaiSanPhamTheoNhom
Go
Create Procedure sp_LayDanhSachLoaiSanPhamTheoNhom
	@maNhomLSP int
AS
	Select lsp.MALSP, lsp.TENLSP
	From LOAISP lsp
	Where lsp.MANHOM = @maNhomLSP;
GO
--Exec sp_LayDanhSachLoaiSanPhamTheoNhom 2


If Exists(Select * From sysobjects where name='sp_LayDanhSachNhomLoaiSanPham' and type='p' )
Drop Procedure sp_LayDanhSachNhomLoaiSanPham
Go
Create Procedure sp_LayDanhSachNhomLoaiSanPham
AS
	Select * From NHOMLOAISP
GO
--Exec sp_LayDanhSachNhomLoaiSanPham

/* lấy thông tin sản phẩm */
If Exists(Select * From sysobjects where name='sp_GetProductInfor' and type='p' )
Drop Procedure sp_GetProductInfor
Go
Create Procedure sp_GetProductInfor
@masp varchar(10),@soluong int output
As
	Declare @muaweb int, @muachung int;
	Select @muaweb=count(distinct(dh.MADH)) 
		From DONHANG dh , dbo.CHITIETDONHANG ct 
			Where dh.MADH=ct.MADH and ct.MASP=@masp and dh.TINHTRANGDH=N'Đặt mua';
	if @muaweb is null
		set @muaweb=0;
	Select @muachung=count(distinct(dc.MADHCP))
		From DONHANGCOUPON dc,COUPON cp 
			Where cp.MASP=@masp and cp.MACP=dc.MACP and dc.TINHTRANGDH=N'Đặt vận chuyển';
	if @muachung is null
		set @muachung=0;
	set @soluong=@muaweb+@muachung;
	Select * From SANPHAM Where MASP=@masp;
Go

/* lấy danh sách 9 sản phẩm mới nhất */
If Exists(Select * From sysobjects where name='sp_SelectNewProducts' and type='p' )
Drop Procedure sp_SelectNewProducts
Go
Create Procedure sp_SelectNewProducts
As
	Select TOP 9 * 
	From SANPHAM 
	Where TINHTRANGSP=N'1' 
	Order by NGAYDSP DESC
Go

/* lấy danh sách 9 sản phẩm được cập nhật gần nhất */
If Exists(Select * From sysobjects where name='sp_SelectModifyProducts' and type='p' )
Drop Procedure sp_SelectModifyProducts
Go
Create Procedure sp_SelectModifyProducts
As
	Select TOP 9 * 
	From SANPHAM 
	Where TINHTRANGSP=N'1' 
	Order by NGAYSD DESC
Go

/*webservice */
if exists(Select * From sysobjects Where name='sp_Authenticate' and type='p')
drop proc sp_Authenticate
go
Create Procedure sp_Authenticate
@username varchar(30),
@password varchar(200),
@sid varchar(100),
@ngaycap datetime
/*@ngayhethieuluc datetime*/
As
	Declare @count int;
	Select @count=count(*) From USERS Where USERNAME=@username and PASS_WORD=@password;	
print @count;
print 'account';
	if(@count>0)
	begin
		Declare @ma int,@tinhtrang int
		set @tinhtrang=-1;
		Select @ma=MA,@tinhtrang=TINHTRANGYC From YCWEBSERVICE Where USERNAME=@username;
print @ma;
		if(@ma>0 and @tinhtrang=1)
		begin
			Insert into SID values(@sid,@ma,1,@ngaycap);
			return 1
		end
		else
		begin
		--	if(@tinhtrang=0)
			return @tinhtrang
		end
	end
	else
	begin
		return -2;
	end
Go

--exec sp_Authenticate 'khtn','E1-0A-DC-39-49-BA-59-AB-BE-56-E0-57-F2-0F-88-3E','dkjafkjasfja','2/12/2011','2/12/2011'

/* procedure FindAllCoupons */
if exists(Select * From sysobjects Where name='sp_FindAllCoupons' and type='p')
drop proc sp_FindAllCoupons
go
Create procedure sp_FindAllCoupons
As
	Select sp.DVTINH,cp.MACP,sp.MASP,sp.TENSP,cp.GIAGOC,cp.GIASGIAM,cp.DVTIENTE,cp.SLCPMINGIAMGIA,sp.SLCONLAI,cp.SLSPMIN ,cp.THOIGIANBD,cp.THOIGIANKT,sp.MOTA,cp.DIEUKIENSD,sp.HINHANH
	From SANPHAM sp,COUPON cp Where sp.MASP=cp.MASP and cp.TINHTRANGCP=1 and cp.THOIGIANKT>=getdate()
Go

--exec sp_FindAllCoupons
-- lay tat ca coupon dang co hieu luc
if exists(Select * From sysobjects Where name='sp_CountOrderCoupon' and type='p')
drop proc sp_CountOrderCoupon
go
Create procedure sp_CountOrderCoupon
@macp varchar(20),@count int output
As
	Select @count=sum(SOLUONGCP) From DONHANGCOUPON Where MACP=@macp and (TINHTRANGDH=N'Đặt hàng' or TINHTRANGDH=N'Đã duyệt' or TINHTRANGDH=N'Đặt vận chuyển');
	if @count is null
		set @count=0;
Go

/*
declare @count int
exec sp_CountOrderCoupon 'CP003',@count output
print @count
Select sum(SOLUONGCP) From DONHANGCOUPON Where MACP='CP003' and TINHTRANGDH=N'Đặt hàng';
*/


/* lấy tất cả coupon trong hệ thống, cả coupon đã hết hạn, sắp xếp giảm theo thời gian*/
if exists(Select * From sysobjects Where name='sp_SelectAnyCoupon' and type='p')
drop proc sp_SelectAnyCoupon
go
Create procedure sp_SelectAnyCoupon
As
	Select sp.DVTINH,cp.MACP,sp.MASP,cp.TINHTRANGCP,sp.TENSP,cp.GIAGOC,cp.GIASGIAM,cp.DVTIENTE,cp.SLCPMINGIAMGIA,sp.SLCONLAI,cp.SLSPMIN ,cp.THOIGIANBD,cp.THOIGIANKT,sp.MOTA,cp.DIEUKIENSD,sp.HINHANH
	From SANPHAM sp,COUPON cp Where sp.MASP=cp.MASP and TINHTRANGCP<>N'-1'
	Order by THOIGIANKT DESC
Go

-- kiem tra SID co hop le khong ?
if exists(Select * From sysobjects Where name='sp_CheckAvaliableSID' and type='p')
drop proc sp_CheckAvaliableSID
go
Create procedure sp_CheckAvaliableSID
@sid varchar(100)
As
	declare @count int;
	Select @count=count(*) From SID Where S_ID=@sid and TINHTRANGID=1 ;
	return @count;
Go

-- tim coupon theo yeu cau
if exists(Select * From sysobjects Where name='sp_FindCoupons' and type='p')
drop proc sp_FindCoupons
go
Create procedure sp_FindCoupons
@productName nvarchar(50),
@startDate datetime,
@endDate datetime,
@minPrice int,
@maxPrice int
As
	Select sp.DVTINH,cp.MACP,sp.MASP,sp.TENSP,cp.GIAGOC,cp.GIASGIAM,cp.DVTIENTE,cp.SLCPMINGIAMGIA,sp.SLCONLAI,cp.SLSPMIN ,cp.THOIGIANBD,cp.THOIGIANKT,sp.MOTA,cp.DIEUKIENSD,sp.HINHANH
	From SANPHAM sp,COUPON cp Where sp.MASP=cp.MASP and sp.TENSP like @productName
	and @minPrice<=cp.GIASGIAM and cp.GIASGIAM<=@maxPrice and @startDate<=cp.THOIGIANBD
	and cp.THOIGIANKT<=@endDate and cp.TINHTRANGCP=1
Go
-- exec sp_FindCoupons '%dun%','4/20/2011','4/30/2011',450000,450000
-- lay thong tin coupon the couponid
if exists(Select * From sysobjects Where name='sp_FindCouponInfo' and type='p')
drop proc sp_FindCouponInfo
go
Create procedure sp_FindCouponInfo
@couponId varchar(20)
As
	Select sp.DVTINH,cp.TINHTRANGCP,cp.MACP,sp.MASP,sp.TENSP,cp.GIAGOC,cp.GIASGIAM,cp.DVTIENTE,cp.SLCPMINGIAMGIA,sp.SLCONLAI,cp.SLSPMIN ,cp.THOIGIANBD,cp.THOIGIANKT,sp.MOTA,cp.DIEUKIENSD,sp.HINHANH
	From SANPHAM sp,COUPON cp Where sp.MASP=cp.MASP and cp.MACP=@couponId
Go

-- register coupon
if exists(Select * From sysobjects Where name='sp_RegisterCoupon' and type='p')
drop proc sp_RegisterCoupon
go
Create procedure sp_RegisterCoupon
@couponId varchar(20)
As
	declare @count int;
	Select @count=count(*) From COUPON Where MACP=@couponId and TINHTRANGCP=1 and THOIGIANKT>=getdate();
print @count;
	return @count;
Go
-- exec sp_RegisterCoupon 'CPVL1'

/* lay so luong coupon duoc dat cua 1 don hang */
if exists(Select * From sysobjects Where name='sp_GetNumberCouponInOrder' and type='p')
drop proc sp_GetNumberCouponInOrder
go
Create procedure sp_GetNumberCouponInOrder
@madh int,@soluong int output
As
	Select @soluong=SOLUONGCP From DONHANGCOUPON Where MADHCP=@madh;
	if @soluong is null
		set @soluong=0;
Go

/* lay so luong coupon duoc dat cua 1 don hang đã được duyệt */
if exists(Select * From sysobjects Where name='sp_GetNumberCouponInOrderAccept' and type='p')
drop proc sp_GetNumberCouponInOrderAccept
go
Create procedure sp_GetNumberCouponInOrderAccept
@madh int,@soluong int output
As
	Select @soluong=SOLUONGCP From DONHANGCOUPON Where MADHCP=@madh and TINHTRANGDH=N'Đã duyệt';
	if @soluong is null
		set @soluong=0;
Go
-- update price of order coupon
if exists(Select * From sysobjects Where name='sp_UpdatePriceOfOrderCoupon' and type='p')
drop proc sp_UpdatePriceOfOrderCoupon
go
Create procedure sp_UpdatePriceOfOrderCoupon
@maws int,@couponId varchar(20),@minPrice float
As
	Update DONHANGCOUPON set TONGTIEN=SOLUONGCP*@minPrice Where MA_WS=@maws and MACP=@couponId and TINHTRANGDH=N'Đặt hàng';
Go

-- order coupon
if exists(Select * From sysobjects Where name='sp_OrderCoupon' and type='p')
drop proc sp_OrderCoupon
go
Create procedure sp_OrderCoupon
@sid varchar(100),@couponId varchar(20),@count int,@orderId int output
As
	declare @maws int,@dvtiente nvarchar(10),@cp varchar(20),@price int;
	Select @maws=y.MA From YCWEBSERVICE y,SID i Where i.MA_WS=y.MA and y.TINHTRANGYC=1
	and i.TINHTRANGID=1 and i.S_ID=@sid;
	Select @cp=MACP,@dvtiente=DVTIENTE,@price=GIAGOC From COUPON Where MACP=@couponId;
	--print @cp
	--print @maws
	if(@maws>0 and @cp is not null)
	begin
		Insert into DONHANGCOUPON(MA_WS,MACP,NGAYDAT,TONGTIEN,TINHTRANGDH,DVTIENTE,SOLUONGCP) values(
		@maws,@couponId,getdate(),@price*@COUNT,N'Yêu cầu',@dvtiente,@count) ;
		if @@error=0
		begin
			--print 'nam'
			Set @orderId=(Select max(MADHCP) From DONHANGCOUPON);
		/*	declare @numbers int;
			Set @numbers=(Select sum(SOLUONGCP)From DONHANGCOUPON Where MA_WS=@maws and MACP=@couponId);
			if @numbers>=@min
				exec sp_UpdatePriceOfOrderCoupon @maws,@couponId,@minPrice;
			--print @orderId*/
			return 1;
		end
	end
	else
	begin
		return -1;
	end
Go
/*
declare @order int
 exec sp_OrderCoupon '45-28-6E-66-A8-D0-E8-23-52-96-A3-2F-C8-BF-C1-82','CPVL1',2,@order
print @order
*/
-- validateOrder
if exists(Select * From sysobjects Where name='sp_ValidateOrder' and type='p')
drop proc sp_ValidateOrder
go
Create procedure sp_ValidateOrder
@sid varchar(100),@validationCode int
As
	declare @maws int,@count int;
	Select @maws=y.MA,@count=y.SOLUONGSIDCAP From YCWEBSERVICE y,SID i Where i.MA_WS=y.MA and y.TINHTRANGYC=1
	and i.TINHTRANGID=1 and i.S_ID=@sid;
	print 'toi @maws';
	if @maws>0
	begin
		declare @numbers int,@slcl float,@min int,@couponId varchar(20),@spmin int,@masp varchar(10),@number int;

		Select @min=cp.SLCPMINGIAMGIA,@spmin=cp.SLSPMIN,@couponId=cp.MACP,@masp=cp.MASP,@number=dh.SOLUONGCP
		From COUPON cp,DONHANGCOUPON dh Where dh.MADHCP=@validationCode and dh.MACP=cp.MACP;
		Select @slcl=SLCONLAI From SANPHAM Where MASP=@masp;

		Set @numbers=(Select sum(SOLUONGCP)From DONHANGCOUPON Where MA_WS=@maws and MACP=@couponId and TINHTRANGDH=N'Đặt hàng');
		if @numbers is null
			set @numbers=0;
		Delete From SID Where S_ID=@sid;
		if (@number+@numbers)<=(@slcl/@spmin)
		begin
			Update DONHANGCOUPON set TINHTRANGDH=N'Đặt hàng' Where MADHCP=@validationCode;
			Update YCWEBSERVICE set SOLUONGSIDCAP=SOLUONGSIDCAP+1 Where MA=@maws;
			print 'toi update don hoang';
			return 1;
		end
		else
		begin
			Delete From DONHANGCOUPON Where MADHCP=@validationCode;
			return -1;
		end
				/* Cập nhật số lượng sản phẩm còn lại */
	--	Update SANPHAM set  SLCONLAI=(SLCONLAI-@number) Where MASP=@masp;
		/* do cho nay chua xet so luong dat co vuot qua kha nang
	cung ung cua biz hong nen co the bi am ;) */
		
		/* chua xet so luong coupon dat co vuot qua kha nang cung cap
		 cua doanh nghiep hay khong, can xem xet lai thuoc tinh SLSPMIN cua Coupon
		xem mua chung co can thong tin nay hay khong ? */
	--print 'toi set @numbers';
		/*if @numbers>=@min 
		begin
			exec sp_UpdatePriceOfOrderCoupon @maws,@couponId,@minPrice;
			print 'toi update gia'
			if @@error=0
				return 1;
		end*/ -- cho này chưa update giá được
		
		/*else
		begin
			Update DONHANGCOUPON set TINHTRANGDH=N'Đặt hàng' Where MADHCP=@validationCode;
			Update YCWEBSERVICE set SOLUONGSIDCAP=SOLUONGSIDCAP+1 Where MA=@maws;
			Update SANPHAM set  SLCONLAI=(SLCONLAI-@number) Where MASP=@masp;
			print 'toi updat don hang, san pham else';
			if @@error=0
				return 1;
		end*/
	end
	else
		return -1;
	return -1;
Go


--exec sp_ValidateOrder '45-28-6E-66-A8-D0-E8-23-52-96-A3-2F-C8-BF-C1-82',307
if exists(Select * From sysobjects Where name='sp_CancelOrder' and type='p')
drop proc sp_CancelOrder
go
Create procedure sp_CancelOrder
@sid varchar(100),@validationCode int
As
	/* kiem tra sid hop le ? va ngay huy co hop le hong ? */
	declare @maws int,@count int;
	Select @maws=y.MA,@count=y.SOLUONGSIDCAP From YCWEBSERVICE y,SID i Where i.MA_WS=y.MA and y.TINHTRANGYC=1
	and i.TINHTRANGID=1 and i.S_ID=@sid;
	if @maws>0
	begin
		--print 'toi maws';
		declare @numbers int,@min int,@price float,@couponId varchar(20),@masp varchar(10),@number int;
		declare @ngayhethan datetime;
		Set @numbers=(Select sum(SOLUONGCP)From DONHANGCOUPON Where MA_WS=@maws and MACP=@couponId and TINHTRANGDH=N'Đặt hàng');
		Select @ngayhethan=cp.THOIGIANKT, @min=cp.SLCPMINGIAMGIA,@price=cp.GIAGOC,@couponId=cp.MACP,@masp=cp.MASP,@number=dh.SOLUONGCP
		From COUPON cp,DONHANGCOUPON dh Where dh.MADHCP=@validationCode and dh.MACP=cp.MACP and dh.TINHTRANGDH=N'Đặt hàng';
		Delete From SID Where S_ID=@sid;		
		if @ngayhethan is not null and @ngayhethan>=getdate()
		begin
			--print 'toi ngay het han';
			Delete From DONHANGCOUPON Where MADHCP=@validationCode;
		--print 'delete donhang';
			print @couponId;
		--	print 'delete sid'
			/* sau khi xoa, xem xet cap nhat lại giá don hang nếu sl nhỏ hơn sl thỏa coupon */
			Update YCWEBSERVICE set SOLUONGSIDCAP=SOLUONGSIDCAP-1 Where MA=@maws;
		--print 'update ws'
			--Update SANPHAM set  SLCONLAI=(SLCONLAI+@number) Where MASP=@masp;
		/*	if (@numbers-@number)<@min
			begin
				exec sp_UpdatePriceOfOrderCoupon @maws,@couponId,@price;
			print 'update ordercoupon'
			end*/
			return 1
		end
		else
			return -1;
	end
	else
		return -1;
	return -1;
Go

/* update order coupon */
if exists(Select * From sysobjects Where name='sp_UpdateStatusOrder' and type='p')
drop proc sp_UpdateStatusOrder
go
Create proc sp_UpdateStatusOrder
@madh int,@tinhtrang nvarchar(20)
As
	Update DONHANGCOUPON set TINHTRANGDH=@tinhtrang Where MADHCP=@madh;
Go

-- them webservice trans
if exists(Select * From sysobjects Where name='sp_InsertServiceTrans' and type='p')
drop proc sp_InsertServiceTrans
go
Create procedure sp_InsertServiceTrans
@tencty nvarchar(300),@linkws varchar(200),@username varchar(30),
@password varchar(30),@website varchar(200),@bizaddress nvarchar(200)
As
	Insert into SERVICETRANS(TENCTY,LINKWS,USERNAME,PASS_WORD,TINHTRANG,WEBSITE,BIZADDRESS)values(@tencty,@linkws,@username,@password,1,@website,@bizaddress);
	if @@error<>0
		return -1;
	Declare @id int;
	Set @id=(Select max(MADV) From SERVICETRANS);
	return @id;
Go

/* insert transtype */
/*
if exists(Select * From sysobjects Where name='sp_InsertTransType' and type='p')
drop proc sp_InsertTransType
go
Create procedure sp_InsertTransType
@ma varchar(3),@ten nvarchar(100),@gia float,@dvtien nvarchar(50),@madv int
As
	Insert into TRANSTYPE(MA,TEN,GIA,DVTIEN,MADV) values(@ma,@ten,@gia,@dvtien,@madv);
Go
*/
/* lay danh sach loai van chuyen */
/*
if exists(Select * From sysobjects Where name='sp_SelectTransType' and type='p')
drop proc sp_SelectTransType
go
Create procedure sp_SelectTransType
@madv int
As
	Select * From TRANSTYPE Where MADV=@madv;
Go
*/
/* lấy link webservice của công ty vận chuyển */
if exists(Select * From sysobjects Where name='sp_GetLinkServiceTrans' and type='p')
drop proc sp_GetLinkServiceTrans
go
Create procedure sp_GetLinkServiceTrans
@madv int,@link varchar(200) output
As
	if exists(Select * From SERVICETRANS Where MADV=@madv)
	begin
		Select @link=LINKWS From SERVICETRANS Where MADV=@madv;
	end
	else
		set @link='';
Go

/* lấy thông tin dịch vụ vận chuyển theo mã */
if exists(Select * From sysobjects Where name='sp_GetInfoServiceTrans' and type='p')
drop proc sp_GetInfoServiceTrans
go
Create procedure sp_GetInfoServiceTrans
@madv int
As
	Select* From SERVICETRANS Where MADV=@madv;
Go

/* update dịch vụ vận chuyển */
if exists(Select * From sysobjects Where name='sp_UpdateServiceTrans' and type='p')
drop proc sp_UpdateServiceTrans
go
Create procedure sp_UpdateServiceTrans
@madv int,@tencty nvarchar(300),@linkws varchar(200),
@website varchar(200),@tinhtrang int
As
	Update SERVICETRANS set TENCTY=@tencty,LINKWS=@linkws,WEBSITE=@website,
		TINHTRANG=@tinhtrang Where MADV=@madv
	if @@error<>0
		return -1
	return 1
Go


/* lay danh sach cac dich vu van chuyen */
if exists(Select * From sysobjects Where name='sp_SelectServiceTrans' and type='p')
drop proc sp_SelectServiceTrans
go
Create procedure sp_SelectServiceTrans
As
	Select * From SERVICETRANS Where TINHTRANG=1;
Go

if exists(Select * From sysobjects Where name='sp_DeleteServiceTrans' and type='p')
drop proc sp_DeleteServiceTrans
go
Create procedure sp_DeleteServiceTrans
@madv int,@tinhtrang int
As
	Update SERVICETRANS set TINHTRANG=@tinhtrang Where MADV=@madv;
	if @@error<>0
		return -1
	return 1
Go

/* lay danh sach coupon het han chưa xử lý */

if exists(Select * From sysobjects Where name='sp_SelectExCoupon' and type='p')
drop proc sp_SelectExCoupon
go
Create procedure sp_SelectExCoupon
As
	Select MACP,THOIGIANKT,SLCPMINGIAMGIA From COUPON Where TINHTRANGCP=1 and THOIGIANKT<getdate();
Go

/* lấy danh sách don hang cho coupon */
if exists(Select * From sysobjects Where name='sp_SelectOrderExCoupon' and type='p')
drop proc sp_SelectOrderExCoupon
go
Create procedure sp_SelectOrderExCoupon
@macp varchar(20),@count int output,@ws int output
As
	exec sp_CountOrderCoupon @macp,@count output;
	print @count;
	Select @ws= count(distinct(MA_WS)) From DONHANGCOUPON Where MACP=@macp;
	Select dh.MADHCP,dh.NGAYDAT,dh.SOLUONGCP,y.TENDN,dh.TINHTRANGDH
	From DONHANGCOUPON dh,YCWEBSERVICE y 
	Where dh.MACP=@macp and dh.MA_WS=y.MA 
	Group by y.MA,dh.MADHCP,dh.NGAYDAT,dh.SOLUONGCP,y.TENDN,dh.TINHTRANGDH;
Go

/*
Declare @count int,@ws int
exec sp_SelectOrderExCoupon 'CP003',@count,@ws

Select dh.MADHCP,dh.NGAYDAT,dh.SOLUONGCP,y.TENDN 
From DONHANGCOUPON dh,YCWEBSERVICE y 
Where dh.MACP='CP003' and dh.MA_WS=y.MA 
Group by y.MA,dh.MADHCP,dh.NGAYDAT,dh.SOLUONGCP,y.TENDN;
*/

if exists(Select * From sysobjects Where name='sp_AceptOrderExCoupon' and type='p')
drop proc sp_AceptOrderExCoupon
go
Create procedure sp_AceptOrderExCoupon
@macp varchar(20),@typePrice int,@price float output,@dvtien nvarchar(10) output
As
	Declare @originalPrice float,@saleOfPrice float;
	Select @originalPrice=GIAGOC,@saleOfPrice=GIASGIAM,@dvtien=DVTIENTE From COUPON Where MACP=@macp;
	if @typePrice=1
		set @price=	@originalPrice;
	else
		set @price=@saleOfPrice;
	 print @price;
	print @dvtien
	Update DONHANGCOUPON set TONGTIEN=@price*SOLUONGCP, TINHTRANGDH=N'Đã duyệt' Where MACP=@macp and TINHTRANGDH=N'Đặt hàng' ;
	Update COUPON set TINHTRANGCP=0 Where MACP=@macp;
	Select distinct y.LINKWS, y.MCUSERNAME,y.MCPASSWORD,y.TENDN From YCWEBSERVICE y,DONHANGCOUPON dh Where y.MA=dh.MA_WS and dh.MACP=@macp and TINHTRANGDH=N'Đã duyệt';
Go
/*
Declare @price float,@dvtien nvarchar(10)
exec sp_AceptOrderExCoupon 'CP003',1,@price output,@dvtien output
print @price;
print @dvtien;
*/
/* xac nhan van chuyen confirmOrdercoupon */
if exists(Select * From sysobjects Where name='sp_ConfirmOrderCoupon' and type='p')
drop proc sp_ConfirmOrderCoupon
go
Create procedure sp_ConfirmOrderCoupon
@madh int,@diachi nvarchar(200),@sid varchar(100)
As
	Declare @masp varchar(10),@slspmin int,@slcoupon int
	Select @masp=cp.MASP,@slspmin=cp.SLSPMIN,@slcoupon=dh.SOLUONGCP From DONHANGCOUPON dh,COUPON cp
		Where dh.MACP=cp.MACP and dh.MADHCP=@madh;
	begin tran
		Update DONHANGCOUPON set TINHTRANGDH=N'Đặt vận chuyển',DIACHINHAN=@diachi Where MADHCP=@madh and TINHTRANGDH=N'Đã duyệt';
		if @@error<>0
		begin
			rollback tran;
			return -1;
		end
	--Declare @slconlai float;
	--Select @slconlai=
		Update SANPHAM set SLCONLAI=SLCONLAI-(@slspmin*@slcoupon)where MASP=@masp;
		Delete From SID Where S_ID=@sid
		if @@error<>0
		begin
			rollback tran;
			return -1;
		end
	commit tran
	return 1;		
Go

/* end webservice */
--exec  sp_CancelOrder 'EA-DA-5C-38-80-65-DB-C6-43-BA-EB-30-B0-DA-A1-1C',311
--************************************************************--------------------
--2.2.5 YÊU CẦU SỬ DỤNG WEBSERVICE
--thêm 1 yêu cầu webservice mới

if exists(Select * From sysobjects Where name='sp_Insert_ycwebservice' and type='p')
DROP PROCEDURE sp_Insert_ycwebservice
GO
CREATE PROCEDURE sp_Insert_ycwebservice
	   @username		VARCHAR(30), 
	   @tendoanhnghiep  NVARCHAR(200),
	   @link            VARCHAR(200), 
	   @email           VARCHAR(50),
	   @linkws			nvarchar(200),
	   @mcusername varchar(50),
	   @mcpassword varchar(100) 
AS 
BEGIN      
	 INSERT INTO YCWEBSERVICE(USERNAME,TENDN,LINK,EMAIL,TINHTRANGYC,SOLUONGSIDCAP,SLSIDDATHANHTOAN,LINKWS,MCUSERNAME,MCPASSWORD) 
	 VALUES (@username,@tendoanhnghiep,@link,@email,0,0,0,@linkws,@mcusername,@mcpassword) 
END 
Go
--kiểm tra user, pass hợp lệ
if exists(Select * From sysobjects Where name='sp_KiemTra_UserName_PassWord_HopLe' and type='p')
DROP PROCEDURE sp_KiemTra_UserName_PassWord_HopLe
GO

CREATE PROC sp_KiemTra_UserName_PassWord_HopLe
@username varchar(30),
@pass     varchar(200)

AS
	DECLARE @count int
	SELECT @count=count(*)
	FROM USERS
	WHERE USERNAME = @username and PASS_WORD = @pass and TRANGTHAI=1

	RETURN @count 
Go
--************************************************************--------------------
--Lấy các yêu cầu mới
if exists(Select * From sysobjects Where name='sp_SelectAllNewRequest' and type='p')
drop proc sp_SelectAllNewRequest
go
Create procedure sp_SelectAllNewRequest
As
	Select * From YCWEBSERVICE Where TINHTRANGYC=0;
Go

if exists(Select * From sysobjects Where name='sp_UpdateStatusRequest' and type='p')
drop proc sp_UpdateStatusRequest
go
Create procedure sp_UpdateStatusRequest
@ma int,@tinhtrang int
As
	Update YCWEBSERVICE set TINHTRANGYC=@tinhtrang Where MA=@ma;
Go

--************************************************************--------------------
--2.2.1
--Xem thông tin tài khoản
if exists(Select * From sysobjects Where name='sp_XemThongTinTaiKhoan' and type='p')
DROP PROCEDURE sp_XemThongTinTaiKhoan
GO
CREATE PROC sp_XemThongTinTaiKhoan
@username varchar(30)
AS
	SELECT *
	FROM KHACHHANG
	WHERE USERNAME = @username
GO
--Cập nhật thông tin tài khoản
if exists(Select * From sysobjects Where name='sp_UpdateTaiKhoanKhachHang' and type='p')
DROP PROCEDURE sp_UpdateTaiKhoanKhachHang
GO

CREATE PROC sp_UpdateTaiKhoanKhachHang
@username varchar(30),
@tendn nvarchar(200),
@diachi nvarchar(80),
@sdt varchar(15),
@tendaidien nvarchar(30),
@website varchar(100)

AS
	UPDATE KHACHHANG
	SET TENDN=@tendn,DIACHI=@diachi,SDT=@sdt,TENNDAIDIEN=@tendaidien,WEBSITE=@website
	WHERE USERNAME=@username 
	
	if @@error<>0
		return -1
	return 1
GO
--************************************************************--------------------
--2.4.5 xem danh sách tài khoản
--1/lấy danh sách user
if exists(Select * From sysobjects Where name='sp_LayDanhSachUser' and type='p')
DROP PROCEDURE sp_LayDanhSachUser
GO
CREATE PROC sp_LayDanhSachUser
AS
	select *from USERS
Go
--2/Lấy thông tin User theo username
if exists(Select * From sysobjects Where name='sp_LayThongTinUserTheoUserName' and type='p')
DROP PROCEDURE sp_LayThongTinUserTheoUserName
GO
CREATE PROC sp_LayThongTinUserTheoUserName
@username varchar(30)
AS
	SELECT *	FROM USERS	WHERE USERNAME = @username
GO	

--3/Lấy thông tin quản trị theo username
if exists(Select * From sysobjects Where name='sp_LayThongTinQuanTriTheoUserName' and type='p')
DROP PROCEDURE sp_LayThongTinQuanTriTheoUserName
GO

CREATE PROC sp_LayThongTinQuanTriTheoUserName
@username varchar(30)
AS
	SELECT *	FROM QUANTRI	WHERE USERNAME = @username
GO	

--4/Lấy danh sách username theo vai trò
if exists(Select * From sysobjects Where name='sp_LayDanhSachUserTheoLoaiUser' and type='p')
DROP PROCEDURE sp_LayDanhSachUserTheoLoaiUser
GO

CREATE PROC sp_LayDanhSachUserTheoLoaiUser
@tenloai nvarchar(20) 
AS
	select u.USERNAME,u.MALOAI,u.PASS_WORD,u.EMAIL,u.TRANGTHAI
	from USERS u, LOAIUSER l
	where u.MALOAI=l.MALOAI and l.TENLOAI= @tenloai
GO

--5/Lấy danh sách vai trò
if exists(Select * From sysobjects Where name='sp_LayDanhSachLoaiUser' and type='p')
DROP PROCEDURE sp_LayDanhSachLoaiUser
GO

CREATE PROC sp_LayDanhSachLoaiUser
AS
	select *from LOAIUSER
GO

--************************************************************--------------------
--2.4.1 Xem danh sách webservice ngân hàng đang sử dụng
--1/lấy danh sách SERVICEBANK theo mã bank
if exists(Select * From sysobjects Where name='sp_LaySERVICEBANKTheoMaBank' and type='p')
DROP PROCEDURE sp_LaySERVICEBANKTheoMaBank
GO

CREATE PROC sp_LaySERVICEBANKTheoMaBank
@MABANK varchar(50)
AS
  select * from SERVICEBANK where MABANK=@MABANK
  
GO  
    --exec sp_LayDanhSachSERVICEBANK 1
--2/lấy danh sách SERVICEBANK theo trạng thái
if exists(Select * From sysobjects Where name='sp_LayDanhSachSERVICEBANKTheoTrangThai' and type='p')
DROP PROCEDURE sp_LayDanhSachSERVICEBANKTheoTrangThai
GO

CREATE PROC sp_LayDanhSachSERVICEBANKTheoTrangThai
@trangthai int
AS
  select * from SERVICEBANK where TINHTRANGWS=@trangthai
GO

--3/thêm webservice ngân hàng mới
if exists(Select * From sysobjects Where name='sp_Insert_SERVICEBANK' and type='p')
DROP PROCEDURE sp_Insert_SERVICEBANK

GO
CREATE PROCEDURE sp_Insert_SERVICEBANK
@MABANK		 varchar(50),
@TENBANK     nvarchar(80),
@USERNAMEB   varchar(30),
@PASSWORDB   varchar(30),
@LINKWS      varchar(200),
@ANHBANK     varchar(200),
@TINHTRANGWS int,
@WEBSITE     varchar(200),
@stk		varchar(100)
AS 
BEGIN      
	 INSERT INTO SERVICEBANK(MABANK,TENBANK,USERNAMEB,PASSWORDB,LINKWS,ANHBANK,TINHTRANGWS,WEBSITE,STK) 
	                  VALUES(@MABANK,@TENBANK,@USERNAMEB,@PASSWORDB,@LINKWS,@ANHBANK,@TINHTRANGWS,@WEBSITE,@stk) 
END 
GO

--exec sp_Insert_SERVICEBANK 'MSB','Maritime Bank','test1','123','http://msb.somee.com/WS/KhachHangWS.asmx',null,1,'http://msb.somee.com/'
	--select * from SERVICEBANK
go
--4/cập nhật webservice ngân hàng(PASSWORDB,LINKWS,TINHTRANGWS,WEBSITE)
if exists(Select * From sysobjects Where name='sp_UpdateSERVICEBANK' and type='p')
DROP PROCEDURE sp_UpdateSERVICEBANK
GO

CREATE PROC sp_UpdateSERVICEBANK
@mabank		 varchar(50),
@tenbank     nvarchar(80),
@pass   varchar(30),
@linkws      varchar(200),
@tinhtrangws int,
@website     varchar(200),
@stk		varchar(100)
AS
	UPDATE SERVICEBANK
	SET TENBANK=@tenbank,PASSWORDB=@pass,LINKWS=@linkws,TINHTRANGWS=@tinhtrangws,WEBSITE=@website,STK=@stk
	WHERE MABANK=@mabank
	
	if @@error<>0
		return -1
	return 1
GO

--xóa webserice ngân hàng
if exists(Select * From sysobjects Where name='sp_DeleteSERVICEBANK' and type='p')
DROP PROCEDURE sp_DeleteSERVICEBANK
GO

CREATE PROC sp_DeleteSERVICEBANK
@ma		 varchar(50),
@tinhtrang int
AS
	UPDATE SERVICEBANK
	SET TINHTRANGWS=@tinhtrang
	WHERE MABANK=@ma
	
	if @@error<>0
		return -1
	return 1
GO

--************************************************************--------------------

-- cap nhat tai  khoan cua dịch vụ vận chuyển
if exists(Select * From sysobjects Where name='sp_UpdateAccountServiceTrans' and type='p')
drop proc sp_UpdateAccountServiceTrans
go
Create procedure sp_UpdateAccountServiceTrans
@madv int,@username varchar(30),@password varchar(30)
As
	Update SERVICETRANS set USERNAME=@username,PASS_WORD=@password Where MADV=@madv
	if @@error<>0
		return -1;
	return 1;
Go


/**************************************************************/
--Lấy danh sách yêu cầu đang sử dụng
if exists(Select * From sysobjects Where name='sp_SelectRequest' and type='p')
drop proc sp_SelectRequest
go
Create procedure sp_SelectRequest
As
	Select * From YCWEBSERVICE Where TINHTRANGYC<>0;
Go


-- tìm nâng cao

/**************************************************************/
--2.3.1 xem danh sách sản phẩm

--Lấy danh sách sản phẩm theo tình trạng
if exists(Select * From sysobjects Where name='sp_LayDanhSachSanPhamTheoTrangThai' and type='p')
drop proc sp_LayDanhSachSanPhamTheoTrangThai
go
Create procedure sp_LayDanhSachSanPhamTheoTrangThai
@TINHTRANGSP nvarchar(20)
As
	Select * From SANPHAM Where TINHTRANGSP=@TINHTRANGSP;
Go

--lấy loại sản phẩm theo mã loại sp
if exists(select * from sysobjects where name='sp_LayLoaiSanPhamTheoMaLoaiSP' and type='p')
drop proc sp_LayLoaiSanPhamTheoMaLoaiSP
go

create proc sp_LayLoaiSanPhamTheoMaLoaiSP
@MALSP int
AS
	Select * from LOAISP where MALSP=@MALSP;
go

--cập nhật thông tin sản phẩm
if exists(select * from sysobjects where name='sp_UpdateSanPham' and type='p')
drop proc sp_UpdateSanPham
go
create proc sp_UpdateSanPham
@MASP	varchar(10)	,
@MOTA	nvarchar(3000),
@CHATLUONG	nvarchar(30),
@GIA	float	,
@SOLUONG	float,
@SLCONLAI  float,
@DVTINH	nvarchar(10),
@TINHTRANGSP	nvarchar(20),
@NGAYSD  datetime
AS
	update SANPHAM
	set MOTA=@MOTA,CHATLUONG=@CHATLUONG, GIA=@GIA, SOLUONG=@SOLUONG,SLCONLAI=@SLCONLAI,
	 DVTINH=@DVTINH, TINHTRANGSP=@TINHTRANGSP,NGAYSD=@NGAYSD
	where MASP=@MASP
	if @@error<>0
		return -1;
	return 1;
go



--Xóa thông tin sản phẩm
if exists(Select * From sysobjects Where name='sp_DeleteSanPham' and type='p')
DROP PROCEDURE sp_DeleteSanPham
GO

CREATE PROC sp_DeleteSanPham
@MASP	varchar(10)	,
@NGAYXOA  datetime,
@TINHTRANGSP	nvarchar(20)
AS
	UPDATE SANPHAM
	SET TINHTRANGSP=@TINHTRANGSP , NGAYXOA=@NGAYXOA
	WHERE MASP=@MASP
	
	if @@error<>0
		return -1
	return 1
GO

/*Tim kiem thong tin san pham nhanh*/If Exists(Select * From sysobjects Where name='sp_TimKiemCoBan')
Drop Procedure sp_TimKiemCoBan
Go
Create Procedure sp_TimKiemCoBan
	@keyWord nvarchar(200)
AS
	Select Distinct /*cp.MACP, */sp.MASP, sp.TENSP, sp.MOTA, sp.CHATLUONG, sp.GIA, sp.HINHANH, sp.SLCONLAI
	From SANPHAM sp/*, COUPON cp*/
	Where TINHTRANGSP<>N'-1' and ((sp.TENSP LIKE ('%' + @keyWord + '%') or sp.CHATLUONG LIKE ('%' + @keyWord + '%') or
	sp.DVTINH LIKE ('%' + @keyWord + '%') or sp.TINHTRANGSP LIKE ('%' + @keyWord + '%')
	or sp.GIA LIKE ('%' + @keyWord + '%') or sp.MOTA LIKE ('%' + @keyWord + '%')))
	/*and sp.MASP = cp.MASP*/
GO


If Exists(Select * From sysobjects Where name='sp_XemThongTinChiTietDonHang' and type='p')
Drop Procedure sp_XemThongTinChiTietDonHang
Go
Create Procedure sp_XemThongTinChiTietDonHang
	@maDonHang int
AS
	Select ct.MASP, ct.SOLUONG, ct.DONGIA, ct.DVTINH
	From DONHANG dh, CHITIETDONHANG ct/*, SANPHAM sp*/
	Where dh.MADH = @maDonHang /*and ct.MASP = sp.MASP*/ and ct.MADH = dh.MADH
GO

If(OBJECT_ID('sp_LayThongTinDonHangBangMaDH','p') IS NOT NULL)
Drop Procedure sp_LayThongTinDonHangBangMaDH
Go
Create Procedure sp_LayThongTinDonHangBangMaDH
	@maDonHang int
AS
	Select dh.MADH, dh.NGAYDAT, dh.TONGTIEN, dh.DVTIENTE, dh.TINHTRANGDH, info.URL,
	kh.WEBSITE, kh.TENNDAIDIEN
	From DONHANG dh, PACKAGEINFO info, KHACHHANG kh
	Where dh.MADH = @maDonHang and dh.MAPK = info.MAPK and dh.USERNAME = kh.USERNAME
GO

/**************************************************************/
-- tìm nâng cao
if exists(Select * From sysobjects Where name='sp_AdvanceSearch' and type='p')
drop proc sp_AdvanceSearch
go
Create procedure sp_AdvanceSearch
@tensp nvarchar(50),@malsp smallint,@chatluong nvarchar(30),
@minprice float,@maxprice float,@put nvarchar(100) output
As
	set @put=@tensp;
	Select * From SANPHAM Where TENSP like @tensp  and MALSP=@malsp and TINHTRANGSP<>N'-1'
	and(CHATLUONG like @chatluong or (GIA>=@minprice and GIA<=@maxprice))
Go
	
/* phan thanh toan */
-- tao don hang
if exists(Select * From sysobjects Where name='sp_InsertOrder' and type='p')
drop proc sp_InsertOrder
go
Create procedure sp_InsertOrder
@username varchar(30),@tongtien float,@diachi nvarchar(200),@ngaygiao datetime,
@dvtiente nvarchar(10),@madh int output
As
	Insert into DONHANG(MAPK,USERNAME,NGAYDAT,NGAYGIAO,TONGTIEN,TINHTRANGDH,DIACHINHAN,DVTIENTE)
		values(null,@username,getdate(),@ngaygiao,@tongtien,N'Đặt hàng',@diachi,@dvtiente);
	SET @madh = SCOPE_IDENTITY()
Go

-- insert chi tiet don hang
if exists(Select * From sysobjects Where name='sp_InsertCTOrder' and type='p')
drop proc sp_InsertCTOrder
go
Create procedure sp_InsertCTOrder
@madh int,@masp varchar(10),@sl  float,@price float,@dvtinh nvarchar(10)
As
	Insert into CHITIETDONHANG(MADH,MASP,SOLUONG,DONGIA,DVTINH)
		values(@madh,@masp,@sl,@price,@dvtinh);
Go

-- insert packageInfor
if exists(Select * From sysobjects Where name='sp_InsertPackage' and type='p')
drop proc sp_InsertPackage
go
Create procedure sp_InsertPackage
@madv int,@pacinfo nvarchar(100),@url varchar(300),
@madh int,@mapk int output
As
	Insert into PACKAGEINFO(MADV,PACINFO,URL)values(@madv,@pacinfo,@url);
	SET @mapk=SCOPE_IDENTITY()
	Update DONHANG set MAPK=@mapk,TINHTRANGDH=N'Đã thanh toán' Where MADH=@madh
Go


-- cập nhật số lượng sản phẩm
if exists(Select * From sysobjects Where name='sp_UpdateSLProduct' and type='p')
drop proc sp_UpdateSLProduct
go
Create procedure sp_UpdateSLProduct
@masp varchar(10),@soluong float
As
	Declare @slc float;
	Select @slc=SLCONLAI From SANPHAM Where MASP=@masp;
	if @slc is null
	 	set @slc=0
	Declare @sl float
	set @sl=@slc-@soluong
	if @sl<0
		set @sl=0
	Update SANPHAM set SLCONLAI=@sl Where MASP=@masp;
Go

-- lấy danh sách đơn hàng khách đã mua
if exists(Select * From sysobjects Where name='sp_SelectOrderKH' and type='p')
drop proc sp_SelectOrderKH
go
Create procedure sp_SelectOrderKH
@username varchar(30)
As
	Select dh.MADH,dh.NGAYDAT,dh.TONGTIEN,dh.TINHTRANGDH,dh.DIACHINHAN,dh.DVTIENTE,p.URL,p.MAPK
		From DONHANG dh,PACKAGEINFO p Where dh.USERNAME=@username and dh.TINHTRANGDH=N'Đã thanh toán' and dh.MAPK is not null and dh.MAPK=p.MAPK

Go


-- lay danh sach san pham theo loai
If Exists(Select * From sysobjects where name='sp_SelectProducts1' and type='p' )
Drop Procedure sp_SelectProducts1
Go
Create Procedure sp_SelectProducts1
@loai int
As
	Select TOP 9 * 
	From SANPHAM 
	Where TINHTRANGSP=N'1' and  MALSP=@loai
	Order by NGAYSD DESC
Go


-- lay danh sach san pham cung loai
If Exists(Select * From sysobjects where name='sp_SelectProducts2' and type='p' )
Drop Procedure sp_SelectProducts2
Go
Create Procedure sp_SelectProducts2
@loai int,@masp varchar(10)
As
	Select TOP 9 * 
	From SANPHAM 
	Where TINHTRANGSP=N'1' and  MALSP=@loai and MASP<>@masp
	Order by NGAYSD DESC
Go

-- delete coupon
If Exists(Select * From sysobjects where name='sp_DeleteCoupon' and type='p' )
Drop Procedure sp_DeleteCoupon
Go
Create Procedure sp_DeleteCoupon
@macp varchar(20)
As
	Update COUPON set TINHTRANGCP=N'-1' Where MACP=@macp; 
Go



--update coupon
If Exists(Select * From sysobjects where name='sp_UpdateCoupon1' and type='p' )
Drop Procedure sp_UpdateCoupon1
Go
Create Procedure sp_UpdateCoupon1
@macp varchar(20),@start datetime,@end datetime,@slspmin int,@giasgiam float,
@dksd nvarchar(500),@giagoc float,@slcpmin int
As
	Update COUPON set GIASGIAM=@giasgiam,THOIGIANBD=@start,
		THOIGIANKT=@end,SLSPMIN=@slspmin,DIEUKIENSD=@dksd,GIAGOC=@giagoc,
	SLCPMINGIAMGIA=@slcpmin Where MACP=@macp; 
Go

-- lay thong tin coupon
If Exists(Select * From sysobjects where name='sp_SelectCouponInfor1' and type='p' )
Drop Procedure sp_SelectCouponInfor1
Go
Create Procedure sp_SelectCouponInfor1
@macp varchar(20)
As
	Select * From COUPON cp,SANPHAM sp Where cp.MACP=@macp and cp.MASP=sp.MASP;
Go

--Thống kê
CREATE VIEW [dbo].[V_DoanhThuLoaiSPTheoDHCP]
AS
SELECT     dbo.LOAISP.TENLSP, dbo.COUPON.MASP, dbo.SANPHAM.TENSP, dbo.DONHANGCOUPON.MADHCP, dbo.DONHANGCOUPON.NGAYDAT, 
                      dbo.DONHANGCOUPON.TONGTIEN, dbo.DONHANGCOUPON.SOLUONGCP, dbo.COUPON.SLSPMIN, dbo.COUPON.SLCPMINGIAMGIA
FROM         dbo.DONHANGCOUPON INNER JOIN
                      dbo.COUPON ON dbo.DONHANGCOUPON.MACP = dbo.COUPON.MACP INNER JOIN
                      dbo.SANPHAM ON dbo.COUPON.MASP = dbo.SANPHAM.MASP INNER JOIN
                      dbo.LOAISP ON dbo.SANPHAM.MALSP = dbo.LOAISP.MALSP
WHERE     (dbo.DONHANGCOUPON.TINHTRANGDH = N'Đặt vận chuyển')
GO

--thống kê
CREATE VIEW [dbo].[V_DoanhThuLoaiSPTheoDH]
AS
SELECT     dbo.CHITIETDONHANG.MASP, dbo.SANPHAM.TENSP, dbo.LOAISP.TENLSP, dbo.DONHANG.NGAYDAT, dbo.DONHANG.TONGTIEN, dbo.DONHANG.MADH, 
                      dbo.CHITIETDONHANG.SOLUONG, dbo.CHITIETDONHANG.DONGIA
FROM         dbo.CHITIETDONHANG INNER JOIN
                      dbo.DONHANG ON dbo.CHITIETDONHANG.MADH = dbo.DONHANG.MADH INNER JOIN
                      dbo.SANPHAM ON dbo.CHITIETDONHANG.MASP = dbo.SANPHAM.MASP INNER JOIN
                      dbo.LOAISP ON dbo.SANPHAM.MALSP = dbo.LOAISP.MALSP
WHERE     (dbo.DONHANG.TINHTRANGDH = N'Đã thanh toán')
GO


-- lay danh sach don hang coupon theo username
/* lấy danh sách don hang cho coupon */
if exists(Select * From sysobjects Where name='sp_SelectOrderCouponByUsername' and type='p')
drop proc sp_SelectOrderCouponByUsername
go
Create procedure sp_SelectOrderCouponByUsername
@username varchar(30)
As
	Select sp.TENSP,sp.MASP,dh.MADHCP,dh.NGAYDAT,dh.TONGTIEN,dh.TINHTRANGDH,
	dh.DVTIENTE,dh.SOLUONGCP
	 From DONHANGCOUPON dh,YCWEBSERVICE y,COUPON c,SANPHAM sp
		Where y.USERNAME=@username and y.MA=dh.MA_WS and dh.MACP=c.MACP 
			and c.MASP=sp.MASP and dh.TINHTRANGDH=N'Đặt vận chuyển';
	
Go


if exists(Select * From sysobjects Where name='sp_LaMuaChung' and type='p')
drop proc sp_LaMuaChung
go
create procedure sp_LaMuaChung
@username varchar(30)
as
	Declare @count int
	Select @count=count(*) From YCWEBSERVICE Where USERNAME=@username;
	return @count
go


/*Insert du lieu */

Insert into LOAIUSER values(1,'Admin')
Insert into LOAIUSER values(2,'Manager')
Insert into LOAIUSER values(3,'Consumer')

/* Tai khoan manager */
Insert into USERS values('manager1',2,'EB-01-0F-C4-3A-C2-CF-80-F7-AD-78-33-67-26-F8-03','forgetforgive1986@gmail.com',1)
Insert into QUANTRI values('manager1',N'Phong',N'HCM','012346597')

Insert into USERS values('manager2',2,'EB-01-0F-C4-3A-C2-CF-80-F7-AD-78-33-67-26-F8-03','forgetforgive1986@gmail.com',1)
Insert into QUANTRI values('manager2',N'Phong',N'HCM','012346597')

Insert into USERS values('manager3',2,'EB-01-0F-C4-3A-C2-CF-80-F7-AD-78-33-67-26-F8-03','forgetforgive1986@gmail.com',1)
Insert into QUANTRI values('manager3',N'Phong',N'HCM','012346597')

Insert into USERS values('admin1',1,'EB-01-0F-C4-3A-C2-CF-80-F7-AD-78-33-67-26-F8-03','forgetforgive1986@gmail.com',1)
Insert into QUANTRI values('admin1',N'Phong',N'HCM','012346597')

Insert into USERS values('admin2',1,'EB-01-0F-C4-3A-C2-CF-80-F7-AD-78-33-67-26-F8-03','forgetforgive1986@gmail.com',1)
Insert into QUANTRI values('admin2',N'Phong',N'HCM','012346597')

Insert into USERS values('admin3',1,'EB-01-0F-C4-3A-C2-CF-80-F7-AD-78-33-67-26-F8-03','forgetforgive1986@gmail.com',1)
Insert into QUANTRI values('admin3',N'Phong',N'HCM','012346597')

/* insert data for NHOMLOAISP */
Insert into NHOMLOAISP(TENNHOM)values(N'Vật liệu xây dựng')
Insert into NHOMLOAISP(TENNHOM)values(N'Thiết bị nội thất')
/* insert data for LOAISP*/
Insert into LOAISP(MANHOM,TENLSP)values(1,N'Vật liệu thô')
Insert into LOAISP(MANHOM,TENLSP)values(1,N'Vật liệu hoàn thiện')
Insert into LOAISP(MANHOM,TENLSP)values(1,N'Hệ thống ống và phụ kiện')
Insert into LOAISP(MANHOM,TENLSP)values(1,N'Vật liệu đặt biệt')
Insert into LOAISP(MANHOM,TENLSP)values(2,N'Đồ nội thất trong nhà')
Insert into LOAISP(MANHOM,TENLSP)values(2,N'Thiết bị nhà tắm - vệ sinh')
Insert into LOAISP(MANHOM,TENLSP)values(2,N'Thiết bị nhà bếp')

exec sp_InsertConsumer 'user1', 'EB-01-0F-C4-3A-C2-CF-80-F7-AD-78-33-67-26-F8-03','nhieunguyenkhtn@gmail.com',N'beatifulhouseGroup',N'4-NCV-HCM','0128912890',
'Nhân Tông','http://beatifulhouseGroup.com'
exec sp_UpdateStatusUser 'user1',1

exec sp_InsertConsumer 'user2', 'EB-01-0F-C4-3A-C2-CF-80-F7-AD-78-33-67-26-F8-03','nhieunguyenkhtn@gmail.com',N'beatifulhouseGroup',N'4-NCV-HCM','0128912890',
'Nhân Tông','http://beatifulhouseGroup.com'
exec sp_UpdateStatusUser 'user2',1

/*insert TABLE SERVICEBANK*/
insert into SERVICEBANK(MABANK,TENBANK,USERNAMEB,PASSWORDB,LINKWS,ANHBANK,TINHTRANGWS,WEBSITE,STK)
values('MSB','Maritime Bank','dnbiz','dnbiz','http://msb.somee.com/WS/KhachHangWS.asmx','acb.png',1,'http://msb.somee.com/','5379576900039885')

/*insert servicetrans */
exec sp_InsertServiceTrans N'Xuyên Á','http://fedexgroup4a.somee.com/FedexWebService.asmx','demo2','123456','http://fedexgroup4a.somee.com/',N'227 - Nguyễn Văn Cừ - Quận 5 , Tp Hồ Chí Minh'
exec sp_InsertServiceTrans N'Cybox','http://fedexgroup4a.somee.com/FedexWebService.asmx','demo2','123456','http://fedexgroup4a.somee.com/',N'227 - Nguyễn Văn Cừ - Quận 5 , Tp Hồ Chí Minh'



GO
INSERT [dbo].[SANPHAM] ([MASP], [MALSP], [TENSP], [MOTA], [HINHANH], [CHATLUONG], [GIA], [SOLUONG], [DVTINH], [SLCONLAI], [NGAYDSP], [NGAYSD], [TINHTRANGSP], [NGAYXOA]) VALUES (N'NT001', 7, N'Bếp Kagaro', N'Chất lượng tốt, mẫu mã đẹp, giá cả hợp lý, đạt tiêu chuẩn hàng Việt Nam chất lượng cao.', N'bep-karador.jpg', N'tốt 3*', 500000, 100, N'cái', 100, CAST(0x00009EF400000000 AS DateTime), CAST(0x00009EF400000000 AS DateTime), N'1', NULL)
INSERT [dbo].[SANPHAM] ([MASP], [MALSP], [TENSP], [MOTA], [HINHANH], [CHATLUONG], [GIA], [SOLUONG], [DVTINH], [SLCONLAI], [NGAYDSP], [NGAYSD], [TINHTRANGSP], [NGAYXOA]) VALUES (N'NGSE-SL', 2, N'NGSE-SL Ngói sóng lớn', N'NGSE-SL là ngói màu Secoin loại sóng lớn. Ngói được sản xuất trên công nghệ tiên tiến của Nhật bản, có chất lượng cao và được thị trường tin dùng.', N'1991-5340-thickbox.gif', N'Tốt 4*', 9900, 100000, N'Viên', 100000, CAST(0x00009EF400000000 AS DateTime), CAST(0x00009EF400000000 AS DateTime), N'1', NULL)
INSERT [dbo].[SANPHAM] ([MASP], [MALSP], [TENSP], [MOTA], [HINHANH], [CHATLUONG], [GIA], [SOLUONG], [DVTINH], [SLCONLAI], [NGAYDSP], [NGAYSD], [TINHTRANGSP], [NGAYXOA]) VALUES (N'NT002', 7, N'Máy rửa bát đôi Fisher', N'Bề mặt Inox, máy rửa bát đôi Fisher & Paykel có độ bền cao, màu sắc thân thiện, tiết kiệm điện năng, an toàn với sức khỏe gia đình . Rửa 12 bộ bát đĩa cùng lúc, dung tích 14,2 lít.', N'mayruabat.gif', N'tốt 2*', 600000, 200, N'máy', 200, CAST(0x00009EF400000000 AS DateTime), CAST(0x00009EF400000000 AS DateTime), N'1', NULL)
INSERT [dbo].[SANPHAM] ([MASP], [MALSP], [TENSP], [MOTA], [HINHANH], [CHATLUONG], [GIA], [SOLUONG], [DVTINH], [SLCONLAI], [NGAYDSP], [NGAYSD], [TINHTRANGSP], [NGAYXOA]) VALUES (N'NT003', 7, N'Tủ kệ bếp kinghome', N'Màu sắc đa dạng, bền ,đẹp, kiểu dáng hiện tại, kích thước theo yêu cầu,  màu sơn đẹp, đạt tiêu chuẩn hàng Việt Nam chất lượng cao.', N'tu-ke-bep-kinghome_1268618617.gif', N'tốt 4*', 400000, 200, N'tủ', 198, CAST(0x00009EF400000000 AS DateTime), CAST(0x00009EF400000000 AS DateTime), N'1', NULL)
INSERT [dbo].[SANPHAM] ([MASP], [MALSP], [TENSP], [MOTA], [HINHANH], [CHATLUONG], [GIA], [SOLUONG], [DVTINH], [SLCONLAI], [NGAYDSP], [NGAYSD], [TINHTRANGSP], [NGAYXOA]) VALUES (N'NT004', 7, N'Kệ nhà bếp KingHome', N'Kiểu dáng đa dạng, màu sắc đẹp, giao hàng tận nơi . Chất lượng MFC kháng ẩm, độ bền cao. 3 năm liền đạt danh hiệu hàng Việt Nam chất lượng cao.', N'tu-ke-bep-kinghome_1234.gif', N'tốt 4*', 800000, 450, N'tủ', 448, CAST(0x00009EF400000000 AS DateTime), CAST(0x00009EF400000000 AS DateTime), N'1', NULL)
INSERT [dbo].[SANPHAM] ([MASP], [MALSP], [TENSP], [MOTA], [HINHANH], [CHATLUONG], [GIA], [SOLUONG], [DVTINH], [SLCONLAI], [NGAYDSP], [NGAYSD], [TINHTRANGSP], [NGAYXOA]) VALUES (N'NT005', 7, N'Rổ INOX mạ chrome', N'Rổ INOX mạ chrome úp chén dĩa đứng có khay
Kích thước : 410 X 660 X 170mm
Chất liệu : Inox mạ Chrome
Tính năng : RAY GIẢM CHẤN
Xuất xứ : CAVALLO
Hãng sản xuất : CAVALLO ', N'ro-inox-ma-chrome-ca.gif', N'tốt 4*', 800000, 450, N'cái', 450, CAST(0x00009EF400000000 AS DateTime), CAST(0x00009EF400000000 AS DateTime), N'1', NULL)
INSERT [dbo].[SANPHAM] ([MASP], [MALSP], [TENSP], [MOTA], [HINHANH], [CHATLUONG], [GIA], [SOLUONG], [DVTINH], [SLCONLAI], [NGAYDSP], [NGAYSD], [TINHTRANGSP], [NGAYXOA]) VALUES (N'NT007', 7, N'Tủ bếp IMAX12', N'Hãng sản xuất : Công ty nội thất IMAX
Xuất xứ : Việt Nam
Mã sản phẩm : TB12
Kích thước : 0
Chất liệu : Gỗ tự nhiên
Kiểu dáng : Hiện đại
Kiểu cửa : 0
Màu sắc : nâu đỏ
Tính năng : Sang trọng, hiện đại và tiện nghi ', N'tu-bep-imax12_1279016181.gif', N'tốt 4*', 500000, 250, N'cái', 250, CAST(0x00009EF400000000 AS DateTime), CAST(0x00009EF400000000 AS DateTime), N'1', NULL)
INSERT [dbo].[SANPHAM] ([MASP], [MALSP], [TENSP], [MOTA], [HINHANH], [CHATLUONG], [GIA], [SOLUONG], [DVTINH], [SLCONLAI], [NGAYDSP], [NGAYSD], [TINHTRANGSP], [NGAYXOA]) VALUES (N'NT008', 6, N'Bình nước nóng Ariston', N'Hãng sản xuất : Ariston
Mã sản phẩm : BELLO series (Y/G)
Xuất xứ :
Loại : Bình nước nóng trực tiếp điện
Công suất : 4500W
Màu sắc :
Tính năng :
Điện thế : 230V
Cường độ dòng điện : 20.5A
Trọng lượng : 4kg ', N'binh-nuoc-nong-ariston-bello.gif', N'tốt 4*', 600000, 250, N'cái', 250, CAST(0x00009EF400000000 AS DateTime), CAST(0x00009EF400000000 AS DateTime), N'1', NULL)
INSERT [dbo].[SANPHAM] ([MASP], [MALSP], [TENSP], [MOTA], [HINHANH], [CHATLUONG], [GIA], [SOLUONG], [DVTINH], [SLCONLAI], [NGAYDSP], [NGAYSD], [TINHTRANGSP], [NGAYXOA]) VALUES (N'NT009', 6, N'Chậu chân lửng Toto', N'Hãng sản xuất : Toto
Xuất xứ : 0
Mã sản phẩm : LW820CJ/LW820HFJ
Chất liệu : Sứ
Màu sắc : Xanh nhạt
Chiều dài : 0
Chiều rộng : 0
Chiều cao chậu : 0
Chiều cao chân : 0
Tính năng : tiềm năng', N'chau-chan-lung-toto-ma-lw820cj-lw820h.gif', N'tốt 4*', 600000, 250, N'chậu', 250, CAST(0x00009EF400000000 AS DateTime), CAST(0x00009EF400000000 AS DateTime), N'1', NULL)
INSERT [dbo].[SANPHAM] ([MASP], [MALSP], [TENSP], [MOTA], [HINHANH], [CHATLUONG], [GIA], [SOLUONG], [DVTINH], [SLCONLAI], [NGAYDSP], [NGAYSD], [TINHTRANGSP], [NGAYXOA]) VALUES (N'NT011', 6, N'Lô giấy vệ sinh Toto', N'Hãng sản xuất : Toto
Xuất xứ : Việt Nam
Mã sản phẩm : LW820CJ/LW820HFJ
Chất liệu : Sứ
Màu sắc : Xanh nhạt
Tính năng : tiềm năng', N'lo-giay-ve-sinh-toto-ma-s216p.gif', N'tốt 3*', 200000, 250, N'cái', 250, CAST(0x00009EF400000000 AS DateTime), CAST(0x00009EF400000000 AS DateTime), N'1', NULL)
INSERT [dbo].[SANPHAM] ([MASP], [MALSP], [TENSP], [MOTA], [HINHANH], [CHATLUONG], [GIA], [SOLUONG], [DVTINH], [SLCONLAI], [NGAYDSP], [NGAYSD], [TINHTRANGSP], [NGAYXOA]) VALUES (N'NT012', 6, N'Vách ngăn vệ sinh', N'Hãng sản xuất : Toto
Xuất xứ : Việt Nam
Mã sản phẩm : LW820CJ/LW820HFJ
Đạt danh hiệu hàng Việt Nam chất lượng cao trong 3 năm liên tiếp', N'vach-ngan-ve-sinh-3-ma-vn.gif', N'tốt 3*', 200000, 200, N'cái', 200, CAST(0x00009EF400000000 AS DateTime), CAST(0x00009EF400000000 AS DateTime), N'1', NULL)
INSERT [dbo].[SANPHAM] ([MASP], [MALSP], [TENSP], [MOTA], [HINHANH], [CHATLUONG], [GIA], [SOLUONG], [DVTINH], [SLCONLAI], [NGAYDSP], [NGAYSD], [TINHTRANGSP], [NGAYXOA]) VALUES (N'NT013', 6, N'Chậu rửa Inox', N'Hãng sản xuất : Picenza
Xuất xứ : Việt Nam
Chất liệu : Inox
Màu sắc : đa dạng
Chiều dài : 110 cm
Chiều rộng : 49 cm
Chiều cao chậu : 20 cm
Chiều cao chân : 0
Tính năng : rửa đủ thứ', N'chau-rua-inox-ma-tb3.gif', N'tốt 3*', 200000, 200, N'chậu', 200, CAST(0x00009EF400000000 AS DateTime), CAST(0x00009EF400000000 AS DateTime), N'1', NULL)
INSERT [dbo].[SANPHAM] ([MASP], [MALSP], [TENSP], [MOTA], [HINHANH], [CHATLUONG], [GIA], [SOLUONG], [DVTINH], [SLCONLAI], [NGAYDSP], [NGAYSD], [TINHTRANGSP], [NGAYXOA]) VALUES (N'VLT01_Supe', 1, N'Gạch Bêtông nhẹ Super LTB', N'Cách âm, chịu nhiệt, chịu lực, chịu trọng tải gió lùa ', N'gach-betong-nhe-super-ltb.gif', N'Tốt', 1200000, 500, N'm3', 500, CAST(0x00009EF500000000 AS DateTime), CAST(0x00009EF500000000 AS DateTime), N'1', NULL)
INSERT [dbo].[SANPHAM] ([MASP], [MALSP], [TENSP], [MOTA], [HINHANH], [CHATLUONG], [GIA], [SOLUONG], [DVTINH], [SLCONLAI], [NGAYDSP], [NGAYSD], [TINHTRANGSP], [NGAYXOA]) VALUES (N'VLT02_S30', 1, N'Burcast 350 S 30', N'bền kiềm chống mài mòn, chống bám dính', N'burcast-350-s-30.gif', N'Tốt 3*', 245000, 10000, N'Bao', 10000, CAST(0x00009EF500000000 AS DateTime), CAST(0x00009EF500000000 AS DateTime), N'1', NULL)
INSERT [dbo].[SANPHAM] ([MASP], [MALSP], [TENSP], [MOTA], [HINHANH], [CHATLUONG], [GIA], [SOLUONG], [DVTINH], [SLCONLAI], [NGAYDSP], [NGAYSD], [TINHTRANGSP], [NGAYXOA]) VALUES (N'VLT03_PLAS', 1, N'Phụ gia PLASTOCRETE N', N'Phụ gia chống thấm và siêu hóa dẻo PLASTOCRETE N', N'plastocrete-n_1268040173.gif', N'Tốt 3*', 450000, 1220, N'Thùng', 1220, CAST(0x00009EF500000000 AS DateTime), CAST(0x00009EF500000000 AS DateTime), N'1', NULL)
INSERT [dbo].[SANPHAM] ([MASP], [MALSP], [TENSP], [MOTA], [HINHANH], [CHATLUONG], [GIA], [SOLUONG], [DVTINH], [SLCONLAI], [NGAYDSP], [NGAYSD], [TINHTRANGSP], [NGAYXOA]) VALUES (N'VLDB001', 4, N'Tấm lợp cách nhiệt chống nóng OLYMPIC', N'Xuất xứ : Việt Nam
Độ dày : 0.30 mm - 0.50 mm ', N'VLDB001.jpg', N'Tốt', 147000, 100, N'm2', 100, CAST(0x00009EF500000000 AS DateTime), CAST(0x00009EF500000000 AS DateTime), N'1', NULL)
INSERT [dbo].[SANPHAM] ([MASP], [MALSP], [TENSP], [MOTA], [HINHANH], [CHATLUONG], [GIA], [SOLUONG], [DVTINH], [SLCONLAI], [NGAYDSP], [NGAYSD], [TINHTRANGSP], [NGAYXOA]) VALUES (N'NT014', 6, N'Bồn tắm đứng', N'Hãng sản xuất : Cult wall
Xuất xứ : Italy
Loại phòng tắm : Phòng tắm đứng độc lập
Điện năng tiêu thụ : tiết kiệm điện tối đa
Màu sắc kính chắn : trong suốt
Chất liệu : tổng hợp
Chiều cao : 2m
Tính năng : tắm', N'bon-tam-dung-cult-wall.gif', N'tốt 4*', 500000, 200, N'cái', 200, CAST(0x00009EF400000000 AS DateTime), CAST(0x00009EF400000000 AS DateTime), N'1', NULL)
INSERT [dbo].[SANPHAM] ([MASP], [MALSP], [TENSP], [MOTA], [HINHANH], [CHATLUONG], [GIA], [SOLUONG], [DVTINH], [SLCONLAI], [NGAYDSP], [NGAYSD], [TINHTRANGSP], [NGAYXOA]) VALUES (N'SNT01_MaXi', 2, N'SƠN NỘI THẤT MAXILARY BÁN BÓNG', N'Điểm nổi bật của MAXILARY đựơc thể hiện bởi:
  -  Sự bền màu.
  -  Độ phủ cao.
  -  Bề mặt láng mịn.
  -  Che lấp các khe nứt nhỏ.
  -  Màu sắc phong phú đa dạng.
  -  Chà rửa được.', N'419-1661-home.gif', N'Tốt', 1249000, 10000, N'Thùng', 10000, CAST(0x00009EF400000000 AS DateTime), CAST(0x00009EF400000000 AS DateTime), N'1', NULL)
INSERT [dbo].[SANPHAM] ([MASP], [MALSP], [TENSP], [MOTA], [HINHANH], [CHATLUONG], [GIA], [SOLUONG], [DVTINH], [SLCONLAI], [NGAYDSP], [NGAYSD], [TINHTRANGSP], [NGAYXOA]) VALUES (N'SNT02_HiTe', 1, N'SƠN HITEX CHỐNG NÓNG', N'Nippon HITEX chống nóng là lọai sơn nước ngọai thất cao cấp được nghiên cứu đặc biệt, có khả năng phản xạ một lượng lớn tia hồng ngoại từ mặt trời. Bề mặt sau khi được sơn phủ với HITEX chống nóng có khả năng làm giảm nhiệt độ cho không gian bên trong do đó sẽ tiêu hao ít điện năng hơn cho các thiết bị làm mát như máy điều hòa nhiệt độ', N'408-category.gif', N'Tốt 3*', 978000, 10000, N'Thùng', 10000, CAST(0x00009EF400000000 AS DateTime), CAST(0x00009EF400000000 AS DateTime), N'-1', CAST(0x00009EF400000000 AS DateTime))
INSERT [dbo].[SANPHAM] ([MASP], [MALSP], [TENSP], [MOTA], [HINHANH], [CHATLUONG], [GIA], [SOLUONG], [DVTINH], [SLCONLAI], [NGAYDSP], [NGAYSD], [TINHTRANGSP], [NGAYXOA]) VALUES (N'SNT03_DuLu', 2, N'DULUX-W.18L', N'DW.18L là sản phẩm sơn ngoài trời cao cấp Dulux loại thùng 18 lít màu chuẩn. Sản phẩm chất lượng cao, không chứa chì và thuỷ ngân nên không gây hại cho sức khoẻ và môi trường.', N'1357-4235-large.gif', N'Tốt 3*', 1765000, 10000, N'Thùng', 10000, CAST(0x00009EF400000000 AS DateTime), CAST(0x00009EF400000000 AS DateTime), N'1', NULL)
INSERT [dbo].[SANPHAM] ([MASP], [MALSP], [TENSP], [MOTA], [HINHANH], [CHATLUONG], [GIA], [SOLUONG], [DVTINH], [SLCONLAI], [NGAYDSP], [NGAYSD], [TINHTRANGSP], [NGAYXOA]) VALUES (N'DQ 8162', 2, N'LAVABO KÍNH DQ 8162', N'Lavabo DQ 8162 là sản phẩm Lavabo kính cao cấp của DO Glass - nhãn hiệu kính cao cấp hàng đầu tại Việt Nam.
Lavabo kính hiệu DQ - Với cấu trúc tuy đơn giản nhưng không hề làm mất đi cảm nhận về một vẻ đẹp sang trọng, một chất lượng tốt đến hoàn hảo...Tất cả sẽ đem lại niềm tự hào và sự thoải mái nhất nơi người sử dụng.', N'54-313-large.gif', N'Tốt 3*', 10140000, 10000, N'Bộ', 10000, CAST(0x00009EF400000000 AS DateTime), CAST(0x00009EF400000000 AS DateTime), N'1', NULL)
INSERT [dbo].[SANPHAM] ([MASP], [MALSP], [TENSP], [MOTA], [HINHANH], [CHATLUONG], [GIA], [SOLUONG], [DVTINH], [SLCONLAI], [NGAYDSP], [NGAYSD], [TINHTRANGSP], [NGAYXOA]) VALUES (N'GH.S900', 2, N'GIÁNG HƯƠNG SOLID 900', N'GH.S900 là sản phẩm ván sàn tự nhiên nguyên thanh loại gỗ Giáng Hương Lào, kích thước sản phẩm 15x90/92x900 mm.', N'1396-4733-thickbox.gif', N'Tốt 5*', 800000, 548, N'm2', 548, CAST(0x00009EF400000000 AS DateTime), CAST(0x00009EF400000000 AS DateTime), N'1', NULL)
INSERT [dbo].[SANPHAM] ([MASP], [MALSP], [TENSP], [MOTA], [HINHANH], [CHATLUONG], [GIA], [SOLUONG], [DVTINH], [SLCONLAI], [NGAYDSP], [NGAYSD], [TINHTRANGSP], [NGAYXOA]) VALUES (N'G407-1', 2, N'GẠCH MEN G407-1 VÂN GỖ', N'Sản phẩm vân gỗ được sao lại từ vân của các loại gỗ tự nhiên, thực sự sẽ làm căn nhà bạn gần với thiên nhiên. Phù hợp sử dụng tại phòng khách, phòng ngủ trong ngôi nhà của bạn.', N'2014-5378-large.gif', N'Tốt 3*', 13500, 10000, N'Viên', 10000, CAST(0x00009EF400000000 AS DateTime), CAST(0x00009EF400000000 AS DateTime), N'1', NULL)
INSERT [dbo].[SANPHAM] ([MASP], [MALSP], [TENSP], [MOTA], [HINHANH], [CHATLUONG], [GIA], [SOLUONG], [DVTINH], [SLCONLAI], [NGAYDSP], [NGAYSD], [TINHTRANGSP], [NGAYXOA]) VALUES (N'VLDB002', 4, N'Bông khoáng cách nhiệt-ROCKWOOL-Len đá', N'Bông khoáng cách nhiệt-ROCKWOOL-Len đá', N'VLDB002.jpeg', N'Tốt', 210000, 100, N'kiện', 100, CAST(0x00009EF500000000 AS DateTime), CAST(0x00009EF500000000 AS DateTime), N'1', NULL)
INSERT [dbo].[SANPHAM] ([MASP], [MALSP], [TENSP], [MOTA], [HINHANH], [CHATLUONG], [GIA], [SOLUONG], [DVTINH], [SLCONLAI], [NGAYDSP], [NGAYSD], [TINHTRANGSP], [NGAYXOA]) VALUES (N'VLDB003', 4, N'Băng tải cao su bố EP, NN', N'Hãng sản xuất : Nilos , HYC - GROUP
Xuất xứ : Đức, Đài Loan, Hàn Quốc, Trung Quốc, Liên Doanh Việt - Nhật
Loại : 10MPA - 25MPA
Tính năng : Chịu nhiệt, chịu dầu, chịu mài mòn, chịu ẩm ướt, chịu lực căng, lực kéo.', N'VLDB003.jpg', N'Tốt', 200, 100, N'm ', 100, CAST(0x00009EF500000000 AS DateTime), CAST(0x00009EF500000000 AS DateTime), N'1', NULL)
INSERT [dbo].[SANPHAM] ([MASP], [MALSP], [TENSP], [MOTA], [HINHANH], [CHATLUONG], [GIA], [SOLUONG], [DVTINH], [SLCONLAI], [NGAYDSP], [NGAYSD], [TINHTRANGSP], [NGAYXOA]) VALUES (N'VLDB004', 4, N'Keo dán nguội hai thành phần TL-T70 ', N'Hãng sản xuất : Nilos - Đức.
Xuất xứ : Cộng Hoà Liên Bang Đức.
Loại : Keo dán.
Kích thước : 1Kg.
Tính năng : Tạo độ kết dính cao với cao su, Độ bền cao, chịu nhiệt, chịu mài mòn.', N'VLDB004.jpg', N'Tốt', 600, 500, N'Bộ ', 500, CAST(0x00009EF500000000 AS DateTime), CAST(0x00009EF500000000 AS DateTime), N'1', NULL)
INSERT [dbo].[SANPHAM] ([MASP], [MALSP], [TENSP], [MOTA], [HINHANH], [CHATLUONG], [GIA], [SOLUONG], [DVTINH], [SLCONLAI], [NGAYDSP], [NGAYSD], [TINHTRANGSP], [NGAYXOA]) VALUES (N'VLDB005', 4, N'Cách Nhiệt XPS', N'Hãng sản xuất : RIMA.
Độ dày : 20mm - 100mm.
Kích thước : rộng : 600 – 900 - 1200 (mm) - dài : 1200 - 2400 (mm).
Hệ số dẫn nhiệt : ≤ 0.030 @ 90% RH, 25 0C (W/m.K).
Độ kháng ẩm : < 1 by Volume, 24hr @ 50mm %. 
Giới hạn chịu nhiệt : -60 ==> 75 oC.

', N'VLDB005.png', N'Tốt', 100000, 250, N'm2 ', 250, CAST(0x00009EF500000000 AS DateTime), CAST(0x00009EF500000000 AS DateTime), N'1', NULL)
INSERT [dbo].[SANPHAM] ([MASP], [MALSP], [TENSP], [MOTA], [HINHANH], [CHATLUONG], [GIA], [SOLUONG], [DVTINH], [SLCONLAI], [NGAYDSP], [NGAYSD], [TINHTRANGSP], [NGAYXOA]) VALUES (N'VLDB006', 4, N'Cách Nhiệt XPS', N'Xuất xứ : Việt Nam ', N'VLDB006.jpg', N'Tốt', 27500, 300, N'm2 ', 300, CAST(0x00009EF500000000 AS DateTime), CAST(0x00009EF500000000 AS DateTime), N'1', NULL)
INSERT [dbo].[SANPHAM] ([MASP], [MALSP], [TENSP], [MOTA], [HINHANH], [CHATLUONG], [GIA], [SOLUONG], [DVTINH], [SLCONLAI], [NGAYDSP], [NGAYSD], [TINHTRANGSP], [NGAYXOA]) VALUES (N'VLT04_GCL0', 1, N'Gạch chịu lửa', N'Gạch chịu lửa', N'kiemtinh.gif', N'Tốt', 13500, 1220, N'Viên', 1220, CAST(0x00009EF500000000 AS DateTime), CAST(0x00009EF500000000 AS DateTime), N'1', NULL)
INSERT [dbo].[SANPHAM] ([MASP], [MALSP], [TENSP], [MOTA], [HINHANH], [CHATLUONG], [GIA], [SOLUONG], [DVTINH], [SLCONLAI], [NGAYDSP], [NGAYSD], [TINHTRANGSP], [NGAYXOA]) VALUES (N'VLT05_Poly', 1, N'Tấm lợp PolyCarbonate', N'Đây là loại tấm lợp phẳng, được dùng nhằm lấy ánh sáng. Được sản xuất tại Việt Nam', N'tam-lop-polycarbonate.gif', N'Tốt 3*', 800000, 10000, N'Tấm', 10000, CAST(0x00009EF500000000 AS DateTime), CAST(0x00009EF500000000 AS DateTime), N'1', NULL)
INSERT [dbo].[SANPHAM] ([MASP], [MALSP], [TENSP], [MOTA], [HINHANH], [CHATLUONG], [GIA], [SOLUONG], [DVTINH], [SLCONLAI], [NGAYDSP], [NGAYSD], [TINHTRANGSP], [NGAYXOA]) VALUES (N'NTTN001', 5, N'Đồ trang trí bằng sắt mỹ thuật', N'Hãng sản xuất : Đông Ấn
Chất liệu : Sắt rèn
Xuất xứ : Việt Nam
', N'NTTN001.jpg', N'Tốt', 275000, 100, N'cái', 100, CAST(0x00009EF500000000 AS DateTime), CAST(0x00009EF500000000 AS DateTime), N'1', NULL)
INSERT [dbo].[SANPHAM] ([MASP], [MALSP], [TENSP], [MOTA], [HINHANH], [CHATLUONG], [GIA], [SOLUONG], [DVTINH], [SLCONLAI], [NGAYDSP], [NGAYSD], [TINHTRANGSP], [NGAYXOA]) VALUES (N'VLT06_SF3', 1, N'Shell Flintkote 3', N'Xuất xứ : Thailan 
Tính năng : Chống thấm 
Thành phần : Bitument ', N'', N'Tốt', 662000, 662, N'Thùng', 662, CAST(0x00009EF500000000 AS DateTime), CAST(0x00009EF500000000 AS DateTime), N'-1', CAST(0x00009EF500000000 AS DateTime))



/*

exec sp_InsertConsumer 'muachung4c', '2A-F5-FF-E5-AA-D0-F5-68-C8-36-4D-99-F2-88-3B-D1','homeland12589@gmail.com',N'Mua chung 4c',N'4-NCV-HCM','0128912890',
'HCM','http://4c.somee.com'
exec sp_UpdateStatusUser 'muachung4c',1

exec sp_InsertConsumer 'cristiro7', 'E1-0A-DC-39-49-BA-59-AB-BE-56-E0-57-F2-0F-88-3E','cristiro7@gmail.com',N'Nhom2A',N'4-NCV-HCM','0128912890',
'Nhom2A',''
exec sp_UpdateStatusUser 'cristiro7',1

exec sp_InsertConsumer 'mrkinh', '82-7C-CB-0E-EA-8A-70-6C-4C-34-A1-68-91-F8-4E-7B','truonggiang_12134@yahoo.com',N'MuaChungNhom1',N'4-NCV-HCM','0128912890',
'TruongGiang','http://muachungnhom1.somee.com/'
exec sp_UpdateStatusUser 'mrkinh',1

exec sp_InsertConsumer 'hotmoingay', 'FC-42-31-07-06-86-03-81-47-2F-3A-39-3A-6A-93-7E','deal.hotmoingay@gmail.com',N'Hot mỗi ngày',N'4-NCV-HCM','0128912890',
N'Nguyễn Hồ Trí Tín','http://www.hotmoingay.somee.com'
exec sp_UpdateStatusUser 'hotmoingay',1

exec sp_InsertConsumer 'nhom3a', 'E1-0A-DC-39-49-BA-59-AB-BE-56-E0-57-F2-0F-88-3E','khacvu1989@gmail.com',N'Nhom3A',N'4-NCV-HCM','0128912890',
'refg','http://muachung.hcmuns.name.vn/HeThongMuaTheonhom/'
exec sp_UpdateStatusUser 'nhom3a',1

exec sp_InsertConsumer 'toan.iter', 'DA-E4-1C-17-72-19-71-CF-E2-91-CC-C9-33-09-40-56','toan.iter@gmail.com',N'ChungMua',N'4-NCV-HCM','0128912890',
'fdg','http://aspspider.ws/toaniter'
exec sp_UpdateStatusUser 'toan.iter',1


INSERT INTO YCWEBSERVICE(USERNAME,TENDN,LINK,EMAIL,TINHTRANGYC,SOLUONGSIDCAP,SLSIDDATHANHTOAN,LINKWS,MCUSERNAME,MCPASSWORD) 
	 VALUES ('muachung4c',N'Mua chung 4c','http://4c.somee.com','homeland12589@gmail.com',1,0,0,'http://ws4c.somee.com/MuaChungWebService.asmx','abc','abc') 

INSERT INTO YCWEBSERVICE(USERNAME,TENDN,LINK,EMAIL,TINHTRANGYC,SOLUONGSIDCAP,SLSIDDATHANHTOAN,LINKWS,MCUSERNAME,MCPASSWORD) 
	 VALUES ('mrkinh',N'MuaChungNhom1','http://muachungnhom1.somee.com/','truonggiang_12134@yahoo.com',1,0,0,'http://muachungnhom1.somee.com/WebService/MuaChungWebService.asmx','nhom1d','12345') 

INSERT INTO YCWEBSERVICE(USERNAME,TENDN,LINK,EMAIL,TINHTRANGYC,SOLUONGSIDCAP,SLSIDDATHANHTOAN,LINKWS,MCUSERNAME,MCPASSWORD) 
	 VALUES ('cristiro7',N'Nhom2A','http://cristiro7.somee.com/','cristiro7@gmail.com',1,0,0,'http://cristiro7.somee.com/MuaChungWebService.asmx','admin','123456') 

INSERT INTO YCWEBSERVICE(USERNAME,TENDN,LINK,EMAIL,TINHTRANGYC,SOLUONGSIDCAP,SLSIDDATHANHTOAN,LINKWS,MCUSERNAME,MCPASSWORD) 
	 VALUES ('hotmoingay',N'Hot Mỗi Ngày','http://www.hotmoingay.somee.com','deal.hotmoingay@gmail.com',1,0,0,'http://www.hotmoingay.somee.com/MuaChung5B.asmx','hotmoingay','hotmoingay') 

INSERT INTO YCWEBSERVICE(USERNAME,TENDN,LINK,EMAIL,TINHTRANGYC,SOLUONGSIDCAP,SLSIDDATHANHTOAN,LINKWS,MCUSERNAME,MCPASSWORD) 
	 VALUES ('nhom3a',N'askdfasdgfa','http://asdfa.com','khacvu1989@gmail.com',1,0,0,'http://muachung.hcmuns.name.vn/Service/MuaChungWebService.asmx','nhom2b','123') 

INSERT INTO YCWEBSERVICE(USERNAME,TENDN,LINK,EMAIL,TINHTRANGYC,SOLUONGSIDCAP,SLSIDDATHANHTOAN,LINKWS,MCUSERNAME,MCPASSWORD) 
	 VALUES ('toan.iter',N'ChungMua - Team7C','http://aspspider.ws/toaniter','toan.iter@gmail.com',1,0,0,'http://aspspider.ws/toaniter/MuaChungWebService.asmx','team7c','team7c') 

*/