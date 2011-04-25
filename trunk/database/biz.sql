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
   S_ID                 varchar(100)         not null,
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
	@tinhTrangSanPham nvarchar(20),
	@ngayXoa datetime
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
				Insert Into SANPHAM Values(@maSanPham, @maLoaiSanPham, @tenSanPham, @moTaSanPham, @linkHinhAnh, @chatLuong, @giaGoc, @soLuong, @donViTinh, @soLuongConLai, @ngayDangSanPham, @ngaySuaDoi, @tinhTrangSanPham, @ngayXoa);
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
	@photoHinhAnh nvarchar(300),
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
			Insert Into COUPON Values(@maCoupon, @maSanPham, @giaSeGiam, @thoiGianBatDau, @thoiGianKetThuc, @soLuongSanPhamMin, @tinhTrangCoupon, @dieuKienSuDung, @giaGoc, @donViTienTe, @photoHinhAnh, @soLuongCouponMinGiamGia)
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
	Select MASP, TENSP
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


/*webservice */
if exists(Select * From sysobjects Where name='sp_Authenticate' and type='p')
drop proc sp_Authenticate
go
Create Procedure sp_Authenticate
@username varchar(30),
@password varchar(200),
@sid varchar(100),
@ngaycap datetime,
@ngayhethieuluc datetime
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
			Insert into SID values(@sid,@ma,1,@ngaycap,@ngayhethieuluc);
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
	Select cp.MACP,sp.MASP,sp.TENSP,cp.GIAGOC,cp.GIASGIAM,cp.DVTIENTE,cp.SLCPMINGIAMGIA,sp.SLCONLAI,cp.SLSPMIN ,cp.THOIGIANBD,cp.THOIGIANKT,sp.MOTA,cp.DIEUKIENSD,sp.HINHANH
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
	Select @count=count(*) From DONHANGCOUPON Where MACP=@macp
Go

-- kiem tra SID co hop le khong ?
if exists(Select * From sysobjects Where name='sp_CheckAvaliableSID' and type='p')
drop proc sp_CheckAvaliableSID
go
Create procedure sp_CheckAvaliableSID
@sid varchar(100)
As
	declare @count int;
	Select @count=count(*) From SID Where S_ID=@sid and TINHTRANGID=1 and NGAYHETHIEULUC>=getdate();
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
	Select cp.MACP,sp.MASP,sp.TENSP,cp.GIAGOC,cp.GIASGIAM,cp.DVTIENTE,cp.SLCPMINGIAMGIA,sp.SLCONLAI,cp.SLSPMIN ,cp.THOIGIANBD,cp.THOIGIANKT,sp.MOTA,cp.DIEUKIENSD,sp.HINHANH
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
	Select cp.MACP,sp.MASP,sp.TENSP,cp.GIAGOC,cp.GIASGIAM,cp.DVTIENTE,cp.SLCPMINGIAMGIA,sp.SLCONLAI,cp.SLSPMIN ,cp.THOIGIANBD,cp.THOIGIANKT,sp.MOTA,cp.DIEUKIENSD,sp.HINHANH
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
	and i.TINHTRANGID=1 and i.NGAYHETHIEULUC>=getdate()and i.S_ID=@sid;
	Select @cp=MACP,@dvtiente=DVTIENTE,@price=GIAGOC From COUPON Where MACP=@couponId;
	--print @cp
	--print @maws
	if(@maws>0 and @cp is not null)
	begin
		Insert into DONHANGCOUPON(MA_WS,MACP,S_ID,NGAYDAT,TONGTIEN,TINHTRANGDH,DVTIENTE,SOLUONGCP) values(
		@maws,@couponId,@sid,getdate(),@price*@COUNT,N'Yêu cầu',@dvtiente,@count) ;
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
	and i.TINHTRANGID=1 and i.NGAYHETHIEULUC>=getdate()and i.S_ID=@sid;
	print 'toi @maws';
	if @maws>0
	begin
		declare @numbers int,@min int,@minPrice float,@couponId varchar(20),@masp varchar(10),@number int;

		Select @min=cp.SLCPMINGIAMGIA,@minPrice=cp.GIASGIAM,@couponId=cp.MACP,@masp=cp.MASP,@number=dh.SOLUONGCP
		From COUPON cp,DONHANGCOUPON dh Where dh.MADHCP=@validationCode and dh.MACP=cp.MACP;
		
		Update DONHANGCOUPON set TINHTRANGDH=N'Đặt hàng' Where MADHCP=@validationCode;
		Update YCWEBSERVICE set SOLUONGSIDCAP=SOLUONGSIDCAP+1 Where MA=@maws;
		Update SID set TINHTRANGID=0 Where S_ID=@sid;
		print 'toi update don hoang';
				/* Cập nhật số lượng sản phẩm còn lại */
		Update SANPHAM set  SLCONLAI=(SLCONLAI-@number) Where MASP=@masp;
		/* do cho nay chua xet so luong dat co vuot qua kha nang
	cung ung cua biz hong nen co the bi am ;) */
		Set @numbers=(Select sum(SOLUONGCP)From DONHANGCOUPON Where MA_WS=@maws and MACP=@couponId and TINHTRANGDH=N'Đặt hàng');
		/* chua xet so luong coupon dat co vuot qua kha nang cung cap
		 cua doanh nghiep hay khong, can xem xet lai thuoc tinh SLSPMIN cua Coupon
		xem mua chung co can thong tin nay hay khong ? */
	print 'toi set @numbers';
		if (@numbers+@number)>=@min 
		begin
			exec sp_UpdatePriceOfOrderCoupon @maws,@couponId,@minPrice;
			print 'toi update gia'
			if @@error=0
				return 1;
		end
		return 1;
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
	and i.TINHTRANGID=1 and i.NGAYHETHIEULUC>=getdate()and i.S_ID=@sid;
	if @maws>0
	begin
		print 'toi maws';
		declare @numbers int,@min int,@price float,@couponId varchar(20),@masp varchar(10),@number int;
		declare @ngayhethan datetime;
		Set @numbers=(Select sum(SOLUONGCP)From DONHANGCOUPON Where MA_WS=@maws and MACP=@couponId and TINHTRANGDH=N'Đặt hàng');
		Select @ngayhethan=cp.THOIGIANKT, @min=cp.SLCPMINGIAMGIA,@price=cp.GIAGOC,@couponId=cp.MACP,@masp=cp.MASP,@number=dh.SOLUONGCP
		From COUPON cp,DONHANGCOUPON dh Where dh.MADHCP=@validationCode and dh.MACP=cp.MACP;
		if @ngayhethan>=getdate()
		begin
			print 'toi ngay het han';
			Delete From DONHANGCOUPON Where MADHCP=@validationCode;
		print 'delete donhang';
			Delete From SID Where S_ID=@sid;
			print @couponId;
			print 'delete sid'
			/* sau khi xoa, xem xet cap nhat lại giá don hang nếu sl nhỏ hơn sl thỏa coupon */
			Update YCWEBSERVICE set SOLUONGSIDCAP=SOLUONGSIDCAP-1 Where MA=@maws;
		print 'update ws'
			Update SANPHAM set  SLCONLAI=(SLCONLAI+@number) Where MASP=@masp;
			if (@numbers-@number)<@min
			begin
				exec sp_UpdatePriceOfOrderCoupon @maws,@couponId,@price;
			print 'update ordercoupon'
			end
			return 1
		end
		else
			return -1;
	end
	else
		return -1;
	return -1;
Go


--exec  sp_CancelOrder 'EA-DA-5C-38-80-65-DB-C6-43-BA-EB-30-B0-DA-A1-1C',311