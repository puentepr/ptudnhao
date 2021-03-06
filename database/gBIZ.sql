USE [Biztmdt]
GO
/****** Object:  User [khtn]    Script Date: 06/01/2011 13:19:08 ******/
CREATE USER [khtn] WITHOUT LOGIN WITH DEFAULT_SCHEMA=[dbo]
GO
/****** Object:  Schema [khtn]    Script Date: 06/01/2011 13:18:52 ******/
CREATE SCHEMA [khtn] AUTHORIZATION [khtn]
GO
/****** Object:  Table [dbo].[LOAIUSER]    Script Date: 06/01/2011 13:19:08 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[LOAIUSER](
	[MALOAI] [int] NOT NULL,
	[TENLOAI] [nvarchar](20) NULL,
 CONSTRAINT [PK_LOAIUSER] PRIMARY KEY NONCLUSTERED 
(
	[MALOAI] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
INSERT [dbo].[LOAIUSER] ([MALOAI], [TENLOAI]) VALUES (1, N'Admin')
INSERT [dbo].[LOAIUSER] ([MALOAI], [TENLOAI]) VALUES (2, N'Manager')
INSERT [dbo].[LOAIUSER] ([MALOAI], [TENLOAI]) VALUES (3, N'Consumer')
/****** Object:  Table [dbo].[NHOMLOAISP]    Script Date: 06/01/2011 13:19:08 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[NHOMLOAISP](
	[MANHOM] [int] IDENTITY(1,1) NOT NULL,
	[TENNHOM] [nvarchar](30) NULL,
 CONSTRAINT [PK_NHOMLOAISP] PRIMARY KEY NONCLUSTERED 
(
	[MANHOM] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[NHOMLOAISP] ON
INSERT [dbo].[NHOMLOAISP] ([MANHOM], [TENNHOM]) VALUES (1, N'Vật liệu xây dựng')
INSERT [dbo].[NHOMLOAISP] ([MANHOM], [TENNHOM]) VALUES (2, N'Thiết bị nội thất')
SET IDENTITY_INSERT [dbo].[NHOMLOAISP] OFF
/****** Object:  Table [dbo].[SERVICEBANK]    Script Date: 06/01/2011 13:19:08 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[SERVICEBANK](
	[MABANK] [varchar](50) NOT NULL,
	[TENBANK] [nvarchar](80) NULL,
	[USERNAMEB] [varchar](30) NULL,
	[PASSWORDB] [varchar](30) NULL,
	[LINKWS] [varchar](200) NULL,
	[ANHBANK] [varchar](200) NULL,
	[TINHTRANGWS] [int] NULL,
	[WEBSITE] [varchar](200) NULL,
	[STK] [varchar](100) NULL,
 CONSTRAINT [PK_SERVICEBANK] PRIMARY KEY NONCLUSTERED 
(
	[MABANK] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
INSERT [dbo].[SERVICEBANK] ([MABANK], [TENBANK], [USERNAMEB], [PASSWORDB], [LINKWS], [ANHBANK], [TINHTRANGWS], [WEBSITE], [STK]) VALUES (N'MSB', N'Maritime Bank', N'dnbiz', N'dnbiz', N'http://msb.somee.com/WS/KhachHangWS.asmx', N'acb.png', 1, N'http://msb.somee.com/', N'5379576900039885')
/****** Object:  Table [dbo].[SERVICETRANS]    Script Date: 06/01/2011 13:19:08 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[SERVICETRANS](
	[MADV] [int] IDENTITY(1,1) NOT NULL,
	[TENCTY] [nvarchar](300) NULL,
	[LINKWS] [varchar](200) NULL,
	[USERNAME] [varchar](30) NULL,
	[PASS_WORD] [varchar](30) NULL,
	[TINHTRANG] [int] NULL,
	[WEBSITE] [varchar](200) NULL,
	[BIZADDRESS] [nvarchar](200) NULL,
 CONSTRAINT [PK_SERVICETRANS] PRIMARY KEY NONCLUSTERED 
(
	[MADV] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
SET IDENTITY_INSERT [dbo].[SERVICETRANS] ON
INSERT [dbo].[SERVICETRANS] ([MADV], [TENCTY], [LINKWS], [USERNAME], [PASS_WORD], [TINHTRANG], [WEBSITE], [BIZADDRESS]) VALUES (1, N'Xuyên Á', N'http://fedexgroup4a.somee.com/FedexWebService.asmx', N'demo2', N'123456', 1, N'http://fedexgroup4a.somee.com/', N'227 - Nguyễn Văn Cừ - Quận 5 , Tp Hồ Chí Minh')
INSERT [dbo].[SERVICETRANS] ([MADV], [TENCTY], [LINKWS], [USERNAME], [PASS_WORD], [TINHTRANG], [WEBSITE], [BIZADDRESS]) VALUES (2, N'Cybox', N'http://fedexgroup4a.somee.com/FedexWebService.asmx', N'demo2', N'123456', 1, N'http://fedexgroup4a.somee.com/', N'227 - Nguyễn Văn Cừ - Quận 5 , Tp Hồ Chí Minh')
INSERT [dbo].[SERVICETRANS] ([MADV], [TENCTY], [LINKWS], [USERNAME], [PASS_WORD], [TINHTRANG], [WEBSITE], [BIZADDRESS]) VALUES (3, N'khtn aldjfla', N'http://fedexgroup4a.somee.com/FedexWebService.asmx', N'fdsafsa', N'dsafasf', -1, N'http://fedexgroup4a.somee.com/FedexWebService.asmx', N'dasfas fsad f')
SET IDENTITY_INSERT [dbo].[SERVICETRANS] OFF
/****** Object:  Table [dbo].[BTS_BIZ]    Script Date: 06/01/2011 13:19:08 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[BTS_BIZ](
	[MATS] [int] IDENTITY(1,1) NOT NULL,
	[TENTS] [nvarchar](50) NULL,
	[KIEUDL] [nvarchar](20) NULL,
	[GIATRI] [nvarchar](200) NULL,
	[TINHTRANGTS] [int] NULL,
 CONSTRAINT [PK_BTS_BIZ] PRIMARY KEY NONCLUSTERED 
(
	[MATS] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[USERS]    Script Date: 06/01/2011 13:19:08 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[USERS](
	[USERNAME] [varchar](30) NOT NULL,
	[MALOAI] [int] NOT NULL,
	[PASS_WORD] [varchar](200) NULL,
	[EMAIL] [varchar](50) NULL,
	[TRANGTHAI] [int] NULL,
 CONSTRAINT [PK_USER] PRIMARY KEY NONCLUSTERED 
(
	[USERNAME] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
INSERT [dbo].[USERS] ([USERNAME], [MALOAI], [PASS_WORD], [EMAIL], [TRANGTHAI]) VALUES (N'manager1', 2, N'EB-01-0F-C4-3A-C2-CF-80-F7-AD-78-33-67-26-F8-03', N'forgetforgive1986@gmail.com', 1)
INSERT [dbo].[USERS] ([USERNAME], [MALOAI], [PASS_WORD], [EMAIL], [TRANGTHAI]) VALUES (N'manager2', 2, N'EB-01-0F-C4-3A-C2-CF-80-F7-AD-78-33-67-26-F8-03', N'forgetforgive1986@gmail.com', 1)
INSERT [dbo].[USERS] ([USERNAME], [MALOAI], [PASS_WORD], [EMAIL], [TRANGTHAI]) VALUES (N'manager3', 2, N'EB-01-0F-C4-3A-C2-CF-80-F7-AD-78-33-67-26-F8-03', N'forgetforgive1986@gmail.com', 1)
INSERT [dbo].[USERS] ([USERNAME], [MALOAI], [PASS_WORD], [EMAIL], [TRANGTHAI]) VALUES (N'admin1', 1, N'EB-01-0F-C4-3A-C2-CF-80-F7-AD-78-33-67-26-F8-03', N'forgetforgive1986@gmail.com', 1)
INSERT [dbo].[USERS] ([USERNAME], [MALOAI], [PASS_WORD], [EMAIL], [TRANGTHAI]) VALUES (N'admin2', 1, N'EB-01-0F-C4-3A-C2-CF-80-F7-AD-78-33-67-26-F8-03', N'forgetforgive1986@gmail.com', 1)
INSERT [dbo].[USERS] ([USERNAME], [MALOAI], [PASS_WORD], [EMAIL], [TRANGTHAI]) VALUES (N'admin3', 1, N'EB-01-0F-C4-3A-C2-CF-80-F7-AD-78-33-67-26-F8-03', N'forgetforgive1986@gmail.com', 1)
INSERT [dbo].[USERS] ([USERNAME], [MALOAI], [PASS_WORD], [EMAIL], [TRANGTHAI]) VALUES (N'user1', 3, N'EB-01-0F-C4-3A-C2-CF-80-F7-AD-78-33-67-26-F8-03', N'nhieunguyenkhtn@gmail.com', 1)
INSERT [dbo].[USERS] ([USERNAME], [MALOAI], [PASS_WORD], [EMAIL], [TRANGTHAI]) VALUES (N'user2', 3, N'EB-01-0F-C4-3A-C2-CF-80-F7-AD-78-33-67-26-F8-03', N'nhieunguyenkhtn@gmail.com', 1)
INSERT [dbo].[USERS] ([USERNAME], [MALOAI], [PASS_WORD], [EMAIL], [TRANGTHAI]) VALUES (N'muachung4c', 3, N'2A-F5-FF-E5-AA-D0-F5-68-C8-36-4D-99-F2-88-3B-D1', N'homeland12589@gmail.com', 1)
INSERT [dbo].[USERS] ([USERNAME], [MALOAI], [PASS_WORD], [EMAIL], [TRANGTHAI]) VALUES (N'cristiro7', 3, N'E1-0A-DC-39-49-BA-59-AB-BE-56-E0-57-F2-0F-88-3E', N'cristiro7@gmail.com', 1)
INSERT [dbo].[USERS] ([USERNAME], [MALOAI], [PASS_WORD], [EMAIL], [TRANGTHAI]) VALUES (N'mrkinh', 3, N'82-7C-CB-0E-EA-8A-70-6C-4C-34-A1-68-91-F8-4E-7B', N'truonggiang_12134@yahoo.com', 1)
INSERT [dbo].[USERS] ([USERNAME], [MALOAI], [PASS_WORD], [EMAIL], [TRANGTHAI]) VALUES (N'hotmoingay', 3, N'FC-42-31-07-06-86-03-81-47-2F-3A-39-3A-6A-93-7E', N'deal.hotmoingay@gmail.com', 1)
INSERT [dbo].[USERS] ([USERNAME], [MALOAI], [PASS_WORD], [EMAIL], [TRANGTHAI]) VALUES (N'nhom3a', 3, N'E1-0A-DC-39-49-BA-59-AB-BE-56-E0-57-F2-0F-88-3E', N'khacvu1989@gmail.com', 1)
INSERT [dbo].[USERS] ([USERNAME], [MALOAI], [PASS_WORD], [EMAIL], [TRANGTHAI]) VALUES (N'toan.iter', 3, N'DA-E4-1C-17-72-19-71-CF-E2-91-CC-C9-33-09-40-56', N'toan.iter@gmail.com', 1)
INSERT [dbo].[USERS] ([USERNAME], [MALOAI], [PASS_WORD], [EMAIL], [TRANGTHAI]) VALUES (N'test1', 3, N'EB-01-0F-C4-3A-C2-CF-80-F7-AD-78-33-67-26-F8-03', N'nhieunguyenkhtn@gmail.com', 0)
INSERT [dbo].[USERS] ([USERNAME], [MALOAI], [PASS_WORD], [EMAIL], [TRANGTHAI]) VALUES (N'test2', 3, N'EB-01-0F-C4-3A-C2-CF-80-F7-AD-78-33-67-26-F8-03', N'nhieunguyenkhtn@gmail.com', 1)
/****** Object:  Table [dbo].[KHACHHANG]    Script Date: 06/01/2011 13:19:08 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[KHACHHANG](
	[USERNAME] [varchar](30) NOT NULL,
	[TENDN] [nvarchar](200) NULL,
	[DIACHI] [nvarchar](80) NULL,
	[SDT] [varchar](15) NULL,
	[TENNDAIDIEN] [nvarchar](30) NULL,
	[WEBSITE] [varchar](100) NULL,
 CONSTRAINT [PK_KHACHHANG] PRIMARY KEY CLUSTERED 
(
	[USERNAME] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
INSERT [dbo].[KHACHHANG] ([USERNAME], [TENDN], [DIACHI], [SDT], [TENNDAIDIEN], [WEBSITE]) VALUES (N'cristiro7', N'Nhom2A', N'4-NCV-HCM', N'0128912890', N'Nhom2A', N'')
INSERT [dbo].[KHACHHANG] ([USERNAME], [TENDN], [DIACHI], [SDT], [TENNDAIDIEN], [WEBSITE]) VALUES (N'hotmoingay', N'Hot mỗi ngày', N'4-NCV-HCM', N'0128912890', N'Nguy?n H? Trí Tín', N'http://www.hotmoingay.somee.com')
INSERT [dbo].[KHACHHANG] ([USERNAME], [TENDN], [DIACHI], [SDT], [TENNDAIDIEN], [WEBSITE]) VALUES (N'mrkinh', N'MuaChungNhom1', N'4-NCV-HCM', N'0128912890', N'TruongGiang', N'http://muachungnhom1.somee.com/')
INSERT [dbo].[KHACHHANG] ([USERNAME], [TENDN], [DIACHI], [SDT], [TENNDAIDIEN], [WEBSITE]) VALUES (N'muachung4c', N'Mua chung 4c', N'4-NCV-HCM', N'0128912890', N'HCM', N'http://4c.somee.com')
INSERT [dbo].[KHACHHANG] ([USERNAME], [TENDN], [DIACHI], [SDT], [TENNDAIDIEN], [WEBSITE]) VALUES (N'nhom3a', N'Nhom3A', N'4-NCV-HCM', N'0128912890', N'refg', N'http://muachung.hcmuns.name.vn/HeThongMuaTheonhom/')
INSERT [dbo].[KHACHHANG] ([USERNAME], [TENDN], [DIACHI], [SDT], [TENNDAIDIEN], [WEBSITE]) VALUES (N'test1', N'Đông á', N'HCM', N'5106464646', N'Nhiều', N'http://www.google.com')
INSERT [dbo].[KHACHHANG] ([USERNAME], [TENDN], [DIACHI], [SDT], [TENNDAIDIEN], [WEBSITE]) VALUES (N'test2', N'Đông á', N'HCM', N'2654565464', N'Nhiều', N'http://www.google.com')
INSERT [dbo].[KHACHHANG] ([USERNAME], [TENDN], [DIACHI], [SDT], [TENNDAIDIEN], [WEBSITE]) VALUES (N'toan.iter', N'ChungMua', N'4-NCV-HCM', N'0128912890', N'fdg', N'http://aspspider.ws/toaniter')
INSERT [dbo].[KHACHHANG] ([USERNAME], [TENDN], [DIACHI], [SDT], [TENNDAIDIEN], [WEBSITE]) VALUES (N'user1', N'beatifulhouseGroup', N'4-NCV-HCM', N'0128912890', N'Nhân Tông', N'http://beatifulhouseGroup.com')
INSERT [dbo].[KHACHHANG] ([USERNAME], [TENDN], [DIACHI], [SDT], [TENNDAIDIEN], [WEBSITE]) VALUES (N'user2', N'beatifulhouseGroup', N'4-NCV-HCM', N'0128912890', N'Nhân Tông', N'http://beatifulhouseGroup.com')
/****** Object:  Table [dbo].[PACKAGEINFO]    Script Date: 06/01/2011 13:19:08 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[PACKAGEINFO](
	[MAPK] [int] IDENTITY(100,1) NOT NULL,
	[MADV] [int] NOT NULL,
	[PACINFO] [nvarchar](100) NULL,
	[URL] [varchar](300) NULL,
 CONSTRAINT [PK_PACKAGEINFO] PRIMARY KEY NONCLUSTERED 
(
	[MAPK] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
SET IDENTITY_INSERT [dbo].[PACKAGEINFO] ON
INSERT [dbo].[PACKAGEINFO] ([MAPK], [MADV], [PACINFO], [URL]) VALUES (100, 2, N'100', N'http://www.group4afedex.somee.com/XemChiTietQuaTrinhVanChuyen.aspx?url=6CB2A09297A769F5F92CCC51A8732130')
SET IDENTITY_INSERT [dbo].[PACKAGEINFO] OFF
/****** Object:  Table [dbo].[DONHANG]    Script Date: 06/01/2011 13:19:08 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[DONHANG](
	[MADH] [int] IDENTITY(100,1) NOT NULL,
	[MAPK] [int] NULL,
	[USERNAME] [varchar](30) NOT NULL,
	[NGAYDAT] [datetime] NULL,
	[NGAYGIAO] [datetime] NULL,
	[TONGTIEN] [float] NULL,
	[TINHTRANGDH] [nvarchar](20) NULL,
	[DIACHINHAN] [nvarchar](200) NULL,
	[DVTIENTE] [nvarchar](10) NULL,
	[MAXN] [nvarchar](100) NULL,
	[NGAYHETHAN] [datetime] NULL,
 CONSTRAINT [PK_DONHANG] PRIMARY KEY NONCLUSTERED 
(
	[MADH] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
SET IDENTITY_INSERT [dbo].[DONHANG] ON
INSERT [dbo].[DONHANG] ([MADH], [MAPK], [USERNAME], [NGAYDAT], [NGAYGIAO], [TONGTIEN], [TINHTRANGDH], [DIACHINHAN], [DVTIENTE], [MAXN], [NGAYHETHAN]) VALUES (100, 100, N'test2', CAST(0x00009EF4016E1F3A AS DateTime), CAST(0x00009EF40180A1BF AS DateTime), 2400000, N'Đã thanh toán', N'Q2, Nha Trang', N'VNĐ', NULL, NULL)
SET IDENTITY_INSERT [dbo].[DONHANG] OFF
/****** Object:  Table [dbo].[YCWEBSERVICE]    Script Date: 06/01/2011 13:19:08 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[YCWEBSERVICE](
	[MA] [smallint] IDENTITY(100,1) NOT NULL,
	[USERNAME] [varchar](30) NULL,
	[TENDN] [nvarchar](200) NULL,
	[LINK] [varchar](200) NULL,
	[EMAIL] [varchar](50) NULL,
	[TINHTRANGYC] [int] NULL,
	[SOLUONGSIDCAP] [int] NULL,
	[SLSIDDATHANHTOAN] [int] NULL,
	[LINKWS] [nvarchar](200) NULL,
	[MCUSERNAME] [varchar](50) NULL,
	[MCPASSWORD] [varchar](100) NULL,
 CONSTRAINT [PK_YCWEBSERVICE] PRIMARY KEY NONCLUSTERED 
(
	[MA] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
SET IDENTITY_INSERT [dbo].[YCWEBSERVICE] ON
INSERT [dbo].[YCWEBSERVICE] ([MA], [USERNAME], [TENDN], [LINK], [EMAIL], [TINHTRANGYC], [SOLUONGSIDCAP], [SLSIDDATHANHTOAN], [LINKWS], [MCUSERNAME], [MCPASSWORD]) VALUES (100, N'muachung4c', N'Mua chung 4c', N'http://4c.somee.com', N'homeland12589@gmail.com', 1, 0, 0, N'http://ws4c.somee.com/MuaChungWebService.asmx', N'abc', N'abc')
INSERT [dbo].[YCWEBSERVICE] ([MA], [USERNAME], [TENDN], [LINK], [EMAIL], [TINHTRANGYC], [SOLUONGSIDCAP], [SLSIDDATHANHTOAN], [LINKWS], [MCUSERNAME], [MCPASSWORD]) VALUES (101, N'mrkinh', N'MuaChungNhom1', N'http://muachungnhom1.somee.com/', N'truonggiang_12134@yahoo.com', 1, 0, 0, N'http://muachungnhom1.somee.com/WebService/MuaChungWebService.asmx', N'nhom1d', N'12345')
INSERT [dbo].[YCWEBSERVICE] ([MA], [USERNAME], [TENDN], [LINK], [EMAIL], [TINHTRANGYC], [SOLUONGSIDCAP], [SLSIDDATHANHTOAN], [LINKWS], [MCUSERNAME], [MCPASSWORD]) VALUES (102, N'cristiro7', N'Nhom2A', N'http://cristiro7.somee.com/', N'cristiro7@gmail.com', 1, 3, 0, N'http://cristiro7.somee.com/MuaChungWebService.asmx', N'admin', N'123456')
INSERT [dbo].[YCWEBSERVICE] ([MA], [USERNAME], [TENDN], [LINK], [EMAIL], [TINHTRANGYC], [SOLUONGSIDCAP], [SLSIDDATHANHTOAN], [LINKWS], [MCUSERNAME], [MCPASSWORD]) VALUES (103, N'hotmoingay', N'Hot Mỗi Ngày', N'http://www.hotmoingay.somee.com', N'deal.hotmoingay@gmail.com', 1, 0, 0, N'http://www.hotmoingay.somee.com/MuaChung5B.asmx', N'hotmoingay', N'hotmoingay')
INSERT [dbo].[YCWEBSERVICE] ([MA], [USERNAME], [TENDN], [LINK], [EMAIL], [TINHTRANGYC], [SOLUONGSIDCAP], [SLSIDDATHANHTOAN], [LINKWS], [MCUSERNAME], [MCPASSWORD]) VALUES (104, N'nhom3a', N'askdfasdgfa', N'http://asdfa.com', N'khacvu1989@gmail.com', 1, 0, 0, N'http://muachung.hcmuns.name.vn/Service/MuaChungWebService.asmx', N'nhom2b', N'123')
INSERT [dbo].[YCWEBSERVICE] ([MA], [USERNAME], [TENDN], [LINK], [EMAIL], [TINHTRANGYC], [SOLUONGSIDCAP], [SLSIDDATHANHTOAN], [LINKWS], [MCUSERNAME], [MCPASSWORD]) VALUES (105, N'toan.iter', N'ChungMua - Team7C', N'http://aspspider.ws/toaniter', N'toan.iter@gmail.com', 1, 4, 0, N'http://aspspider.ws/toaniter/MuaChungWebService.asmx', N'team7c', N'team7c')
INSERT [dbo].[YCWEBSERVICE] ([MA], [USERNAME], [TENDN], [LINK], [EMAIL], [TINHTRANGYC], [SOLUONGSIDCAP], [SLSIDDATHANHTOAN], [LINKWS], [MCUSERNAME], [MCPASSWORD]) VALUES (106, N'test2', N'MuaChung', N'http://google.com', N'nhieunguyenkhtn@gmail.com', 0, 0, 0, N'http://google.com.asmx', N'nhieu', N'nhieu')
SET IDENTITY_INSERT [dbo].[YCWEBSERVICE] OFF
/****** Object:  Table [dbo].[LOAISP]    Script Date: 06/01/2011 13:19:08 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[LOAISP](
	[MALSP] [smallint] IDENTITY(1,1) NOT NULL,
	[MANHOM] [int] NOT NULL,
	[TENLSP] [nvarchar](50) NULL,
 CONSTRAINT [PK_LOAISP] PRIMARY KEY NONCLUSTERED 
(
	[MALSP] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[LOAISP] ON
INSERT [dbo].[LOAISP] ([MALSP], [MANHOM], [TENLSP]) VALUES (1, 1, N'Vật liệu thô')
INSERT [dbo].[LOAISP] ([MALSP], [MANHOM], [TENLSP]) VALUES (2, 1, N'Vật liệu hoàn thiện')
INSERT [dbo].[LOAISP] ([MALSP], [MANHOM], [TENLSP]) VALUES (3, 1, N'Hệ thống ống và phụ kiện')
INSERT [dbo].[LOAISP] ([MALSP], [MANHOM], [TENLSP]) VALUES (4, 1, N'Vật liệu đặt biệt')
INSERT [dbo].[LOAISP] ([MALSP], [MANHOM], [TENLSP]) VALUES (5, 2, N'Đồ nội thất trong nhà')
INSERT [dbo].[LOAISP] ([MALSP], [MANHOM], [TENLSP]) VALUES (6, 2, N'Thiết bị nhà tắm - vệ sinh')
INSERT [dbo].[LOAISP] ([MALSP], [MANHOM], [TENLSP]) VALUES (7, 2, N'Thiết bị nhà bếp')
SET IDENTITY_INSERT [dbo].[LOAISP] OFF
/****** Object:  Table [dbo].[SANPHAM]    Script Date: 06/01/2011 13:19:08 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[SANPHAM](
	[MASP] [varchar](10) NOT NULL,
	[MALSP] [smallint] NOT NULL,
	[TENSP] [nvarchar](50) NULL,
	[MOTA] [nvarchar](3000) NULL,
	[HINHANH] [varchar](100) NULL,
	[CHATLUONG] [nvarchar](30) NULL,
	[GIA] [float] NULL,
	[SOLUONG] [float] NULL,
	[DVTINH] [nvarchar](10) NULL,
	[SLCONLAI] [float] NULL,
	[NGAYDSP] [datetime] NULL,
	[NGAYSD] [datetime] NULL,
	[TINHTRANGSP] [nvarchar](20) NULL,
	[NGAYXOA] [datetime] NULL,
 CONSTRAINT [PK_SANPHAM] PRIMARY KEY NONCLUSTERED 
(
	[MASP] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
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
/****** Object:  Table [dbo].[COUPON]    Script Date: 06/01/2011 13:19:08 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[COUPON](
	[MACP] [varchar](20) NOT NULL,
	[MASP] [varchar](10) NOT NULL,
	[GIASGIAM] [float] NULL,
	[THOIGIANBD] [datetime] NULL,
	[THOIGIANKT] [datetime] NULL,
	[SLSPMIN] [int] NULL,
	[TINHTRANGCP] [nvarchar](20) NULL,
	[DIEUKIENSD] [nvarchar](500) NULL,
	[GIAGOC] [float] NULL,
	[DVTIENTE] [nvarchar](10) NULL,
	[SLCPMINGIAMGIA] [int] NULL,
 CONSTRAINT [PK_COUPON] PRIMARY KEY NONCLUSTERED 
(
	[MACP] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
INSERT [dbo].[COUPON] ([MACP], [MASP], [GIASGIAM], [THOIGIANBD], [THOIGIANKT], [SLSPMIN], [TINHTRANGCP], [DIEUKIENSD], [GIAGOC], [DVTIENTE], [SLCPMINGIAMGIA]) VALUES (N'CP001', N'NT001', 3200000, CAST(0x00009EF100000000 AS DateTime), CAST(0x00009EF300000000 AS DateTime), 8, N'-1', N'Mua số lượng nhiều sẽ được biết ơn !', 4000000, N'VND', 8)
INSERT [dbo].[COUPON] ([MACP], [MASP], [GIASGIAM], [THOIGIANBD], [THOIGIANKT], [SLSPMIN], [TINHTRANGCP], [DIEUKIENSD], [GIAGOC], [DVTIENTE], [SLCPMINGIAMGIA]) VALUES (N'CP003', N'NT008', 1500000, CAST(0x00009EF500000000 AS DateTime), CAST(0x00009EF800000000 AS DateTime), 1, N'1', N'Chưa có', 2000000, N'VND', 12)
INSERT [dbo].[COUPON] ([MACP], [MASP], [GIASGIAM], [THOIGIANBD], [THOIGIANKT], [SLSPMIN], [TINHTRANGCP], [DIEUKIENSD], [GIAGOC], [DVTIENTE], [SLCPMINGIAMGIA]) VALUES (N'CP004', N'NT007', 2500000, CAST(0x00009EF500000000 AS DateTime), CAST(0x00009EF800000000 AS DateTime), 2, N'1', N'Chưa có', 3000000, N'VND', 12)
INSERT [dbo].[COUPON] ([MACP], [MASP], [GIASGIAM], [THOIGIANBD], [THOIGIANKT], [SLSPMIN], [TINHTRANGCP], [DIEUKIENSD], [GIAGOC], [DVTIENTE], [SLCPMINGIAMGIA]) VALUES (N'CP002', N'NT003', 1500000, CAST(0x00009EF500000000 AS DateTime), CAST(0x00009EF800000000 AS DateTime), 3, N'1', N'Mỗi coupon gồm 3 tủ kệ bếp. Phí vận chuyển khách hàng chịu', 2000000, N'VND', 13)
/****** Object:  Table [dbo].[DONHANGCOUPON]    Script Date: 06/01/2011 13:19:08 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[DONHANGCOUPON](
	[MA_WS] [smallint] NOT NULL,
	[MACP] [varchar](20) NOT NULL,
	[MAPK] [int] NULL,
	[MADHCP] [int] IDENTITY(100,1) NOT NULL,
	[NGAYDAT] [datetime] NULL,
	[NGAYGIAO] [datetime] NULL,
	[TONGTIEN] [float] NULL,
	[TINHTRANGDH] [nvarchar](20) NULL,
	[DIACHINHAN] [nvarchar](200) NULL,
	[DVTIENTE] [nvarchar](10) NULL,
	[SOLUONGCP] [int] NULL,
 CONSTRAINT [PK_DONHANGCOUPON] PRIMARY KEY CLUSTERED 
(
	[MADHCP] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
SET IDENTITY_INSERT [dbo].[DONHANGCOUPON] ON
INSERT [dbo].[DONHANGCOUPON] ([MA_WS], [MACP], [MAPK], [MADHCP], [NGAYDAT], [NGAYGIAO], [TONGTIEN], [TINHTRANGDH], [DIACHINHAN], [DVTIENTE], [SOLUONGCP]) VALUES (105, N'CP003', NULL, 100, CAST(0x00009EF401833D0D AS DateTime), NULL, 20000000, N'Đặt hàng', NULL, N'VND', 10)
INSERT [dbo].[DONHANGCOUPON] ([MA_WS], [MACP], [MAPK], [MADHCP], [NGAYDAT], [NGAYGIAO], [TONGTIEN], [TINHTRANGDH], [DIACHINHAN], [DVTIENTE], [SOLUONGCP]) VALUES (105, N'CP003', NULL, 101, CAST(0x00009EF40184F9C2 AS DateTime), NULL, 2000000, N'Đặt hàng', NULL, N'VND', 1)
INSERT [dbo].[DONHANGCOUPON] ([MA_WS], [MACP], [MAPK], [MADHCP], [NGAYDAT], [NGAYGIAO], [TONGTIEN], [TINHTRANGDH], [DIACHINHAN], [DVTIENTE], [SOLUONGCP]) VALUES (105, N'CP003', NULL, 102, CAST(0x00009EF401854689 AS DateTime), NULL, 2000000, N'Đặt hàng', NULL, N'VND', 1)
INSERT [dbo].[DONHANGCOUPON] ([MA_WS], [MACP], [MAPK], [MADHCP], [NGAYDAT], [NGAYGIAO], [TONGTIEN], [TINHTRANGDH], [DIACHINHAN], [DVTIENTE], [SOLUONGCP]) VALUES (105, N'CP003', NULL, 103, CAST(0x00009EF401862382 AS DateTime), NULL, 20000000, N'Đặt hàng', NULL, N'VND', 10)
SET IDENTITY_INSERT [dbo].[DONHANGCOUPON] OFF
/****** Object:  Table [dbo].[CHITIETDONHANG]    Script Date: 06/01/2011 13:19:08 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[CHITIETDONHANG](
	[MADH] [int] NOT NULL,
	[MASP] [varchar](10) NOT NULL,
	[SOLUONG] [float] NULL,
	[DONGIA] [float] NULL,
	[DVTINH] [nvarchar](10) NULL,
 CONSTRAINT [PK_GOMSP] PRIMARY KEY CLUSTERED 
(
	[MADH] ASC,
	[MASP] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
INSERT [dbo].[CHITIETDONHANG] ([MADH], [MASP], [SOLUONG], [DONGIA], [DVTINH]) VALUES (100, N'NT003', 2, 400000, N'tủ')
INSERT [dbo].[CHITIETDONHANG] ([MADH], [MASP], [SOLUONG], [DONGIA], [DVTINH]) VALUES (100, N'NT004', 2, 800000, N'tủ')
/****** Object:  Table [dbo].[QUANTRI]    Script Date: 06/01/2011 13:19:08 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[QUANTRI](
	[USERNAME] [varchar](30) NOT NULL,
	[HOTEN] [nvarchar](50) NULL,
	[DIACHI] [nvarchar](80) NULL,
	[SDT] [varchar](15) NULL,
 CONSTRAINT [PK_QUANTRI] PRIMARY KEY CLUSTERED 
(
	[USERNAME] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
INSERT [dbo].[QUANTRI] ([USERNAME], [HOTEN], [DIACHI], [SDT]) VALUES (N'admin1', N'Phong', N'HCM', N'012346597')
INSERT [dbo].[QUANTRI] ([USERNAME], [HOTEN], [DIACHI], [SDT]) VALUES (N'admin2', N'Phong', N'HCM', N'012346597')
INSERT [dbo].[QUANTRI] ([USERNAME], [HOTEN], [DIACHI], [SDT]) VALUES (N'admin3', N'Phong', N'HCM', N'012346597')
INSERT [dbo].[QUANTRI] ([USERNAME], [HOTEN], [DIACHI], [SDT]) VALUES (N'manager1', N'Phong', N'HCM', N'012346597')
INSERT [dbo].[QUANTRI] ([USERNAME], [HOTEN], [DIACHI], [SDT]) VALUES (N'manager2', N'Phong', N'HCM', N'012346597')
INSERT [dbo].[QUANTRI] ([USERNAME], [HOTEN], [DIACHI], [SDT]) VALUES (N'manager3', N'Phong', N'HCM', N'012346597')
/****** Object:  Table [dbo].[SID]    Script Date: 06/01/2011 13:19:08 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[SID](
	[S_ID] [varchar](100) NOT NULL,
	[MA_WS] [smallint] NOT NULL,
	[TINHTRANGID] [int] NULL,
	[NGAYCAP] [datetime] NULL,
 CONSTRAINT [PK_SID] PRIMARY KEY NONCLUSTERED 
(
	[S_ID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
INSERT [dbo].[SID] ([S_ID], [MA_WS], [TINHTRANGID], [NGAYCAP]) VALUES (N'5B-CB-12-FF-04-83-75-10-93-7D-BB-97-AC-32-49-13', 100, 1, CAST(0x00009EF400000000 AS DateTime))
INSERT [dbo].[SID] ([S_ID], [MA_WS], [TINHTRANGID], [NGAYCAP]) VALUES (N'8F-F5-56-52-27-15-9A-E2-C8-47-6E-63-93-32-4A-7B', 100, 1, CAST(0x00009EF400000000 AS DateTime))
INSERT [dbo].[SID] ([S_ID], [MA_WS], [TINHTRANGID], [NGAYCAP]) VALUES (N'26-72-80-10-3D-61-80-8A-1B-FA-AB-8C-BF-54-FA-38', 100, 1, CAST(0x00009EF400000000 AS DateTime))
INSERT [dbo].[SID] ([S_ID], [MA_WS], [TINHTRANGID], [NGAYCAP]) VALUES (N'EB-30-AC-DE-E6-D7-72-8C-1F-0F-5C-39-BA-C7-F2-82', 100, 1, CAST(0x00009EF400000000 AS DateTime))
INSERT [dbo].[SID] ([S_ID], [MA_WS], [TINHTRANGID], [NGAYCAP]) VALUES (N'3E-6F-EB-3B-F4-89-CE-70-D4-03-5D-47-68-D1-78-D5', 100, 1, CAST(0x00009EF400000000 AS DateTime))
INSERT [dbo].[SID] ([S_ID], [MA_WS], [TINHTRANGID], [NGAYCAP]) VALUES (N'64-73-D4-39-3B-8A-D3-16-6F-34-1B-73-FF-F3-DB-CD', 100, 1, CAST(0x00009EF400000000 AS DateTime))
INSERT [dbo].[SID] ([S_ID], [MA_WS], [TINHTRANGID], [NGAYCAP]) VALUES (N'F7-32-28-0F-95-BC-8B-A5-38-2C-89-B2-FE-F0-D6-76', 100, 1, CAST(0x00009EF400000000 AS DateTime))
INSERT [dbo].[SID] ([S_ID], [MA_WS], [TINHTRANGID], [NGAYCAP]) VALUES (N'4F-C6-44-71-5A-90-87-42-84-FE-2C-EB-F2-98-42-54', 100, 1, CAST(0x00009EF400000000 AS DateTime))
INSERT [dbo].[SID] ([S_ID], [MA_WS], [TINHTRANGID], [NGAYCAP]) VALUES (N'AA-4F-90-CE-B1-82-E2-B4-F4-DF-81-C0-7C-B9-42-C2', 100, 1, CAST(0x00009EF400000000 AS DateTime))
INSERT [dbo].[SID] ([S_ID], [MA_WS], [TINHTRANGID], [NGAYCAP]) VALUES (N'98-2C-4B-1E-78-45-56-0F-80-C8-EF-4F-29-8A-0B-E0', 100, 1, CAST(0x00009EF400000000 AS DateTime))
INSERT [dbo].[SID] ([S_ID], [MA_WS], [TINHTRANGID], [NGAYCAP]) VALUES (N'AA-CF-91-5D-9F-0A-F1-F7-7B-DE-59-18-BA-2F-BF-2C', 100, 1, CAST(0x00009EF400000000 AS DateTime))
INSERT [dbo].[SID] ([S_ID], [MA_WS], [TINHTRANGID], [NGAYCAP]) VALUES (N'E5-1E-65-37-11-48-19-C2-6D-DC-52-32-85-66-B6-14', 100, 1, CAST(0x00009EF400000000 AS DateTime))
INSERT [dbo].[SID] ([S_ID], [MA_WS], [TINHTRANGID], [NGAYCAP]) VALUES (N'9C-B3-25-FC-CE-ED-6A-64-CB-7C-48-C1-0A-C8-F4-B0', 100, 1, CAST(0x00009EF400000000 AS DateTime))
INSERT [dbo].[SID] ([S_ID], [MA_WS], [TINHTRANGID], [NGAYCAP]) VALUES (N'1D-80-7A-AE-08-EE-4D-55-22-53-F0-56-2C-69-F3-24', 100, 1, CAST(0x00009EF400000000 AS DateTime))
INSERT [dbo].[SID] ([S_ID], [MA_WS], [TINHTRANGID], [NGAYCAP]) VALUES (N'B8-0B-C1-34-80-CE-6D-7D-9F-E9-E6-23-BF-E9-C8-DD', 100, 1, CAST(0x00009EF400000000 AS DateTime))
INSERT [dbo].[SID] ([S_ID], [MA_WS], [TINHTRANGID], [NGAYCAP]) VALUES (N'89-84-A2-65-46-57-8B-B5-6E-5F-9D-8A-DF-44-54-C2', 100, 1, CAST(0x00009EF400000000 AS DateTime))
INSERT [dbo].[SID] ([S_ID], [MA_WS], [TINHTRANGID], [NGAYCAP]) VALUES (N'E4-DD-0E-74-68-EB-14-55-40-BD-44-FD-C0-82-0B-45', 100, 1, CAST(0x00009EF400000000 AS DateTime))
INSERT [dbo].[SID] ([S_ID], [MA_WS], [TINHTRANGID], [NGAYCAP]) VALUES (N'C9-10-91-82-53-18-C6-38-A4-A7-7B-FD-EC-A6-1B-A3', 100, 1, CAST(0x00009EF400000000 AS DateTime))
INSERT [dbo].[SID] ([S_ID], [MA_WS], [TINHTRANGID], [NGAYCAP]) VALUES (N'8D-1A-21-5C-95-CD-26-1A-18-F1-F1-65-C7-02-A3-D7', 100, 1, CAST(0x00009EF400000000 AS DateTime))
INSERT [dbo].[SID] ([S_ID], [MA_WS], [TINHTRANGID], [NGAYCAP]) VALUES (N'AD-F2-DE-54-69-6A-20-10-3F-CA-26-0D-8D-D3-74-EF', 100, 1, CAST(0x00009EF400000000 AS DateTime))
INSERT [dbo].[SID] ([S_ID], [MA_WS], [TINHTRANGID], [NGAYCAP]) VALUES (N'E8-BF-90-D1-E4-DB-A0-32-BC-7D-57-C2-70-11-AF-CD', 100, 1, CAST(0x00009EF400000000 AS DateTime))
INSERT [dbo].[SID] ([S_ID], [MA_WS], [TINHTRANGID], [NGAYCAP]) VALUES (N'9E-06-D6-2C-8A-29-8B-B9-37-04-4A-56-1E-A0-64-1A', 100, 1, CAST(0x00009EF400000000 AS DateTime))
INSERT [dbo].[SID] ([S_ID], [MA_WS], [TINHTRANGID], [NGAYCAP]) VALUES (N'A0-1A-08-86-50-6F-8F-B6-EF-F6-AF-8D-43-5D-0E-C8', 100, 1, CAST(0x00009EF400000000 AS DateTime))
INSERT [dbo].[SID] ([S_ID], [MA_WS], [TINHTRANGID], [NGAYCAP]) VALUES (N'75-1D-41-F1-9B-AD-7B-8B-44-21-12-EF-28-5E-1B-BF', 104, 1, CAST(0x00009EF400000000 AS DateTime))
INSERT [dbo].[SID] ([S_ID], [MA_WS], [TINHTRANGID], [NGAYCAP]) VALUES (N'C0-BA-44-62-66-C8-78-F9-3C-58-8A-F2-CF-B7-73-D3', 104, 1, CAST(0x00009EF400000000 AS DateTime))
INSERT [dbo].[SID] ([S_ID], [MA_WS], [TINHTRANGID], [NGAYCAP]) VALUES (N'C9-CD-14-0D-65-8C-84-77-AF-7C-4C-2C-F2-08-20-34', 104, 1, CAST(0x00009EF400000000 AS DateTime))
INSERT [dbo].[SID] ([S_ID], [MA_WS], [TINHTRANGID], [NGAYCAP]) VALUES (N'01-87-C8-43-F6-1D-A9-80-E3-EF-44-58-A8-E7-A9-3B', 104, 1, CAST(0x00009EF400000000 AS DateTime))
INSERT [dbo].[SID] ([S_ID], [MA_WS], [TINHTRANGID], [NGAYCAP]) VALUES (N'DE-CC-E2-8D-CD-2A-91-C9-5A-64-EF-19-41-EC-11-D9', 104, 1, CAST(0x00009EF400000000 AS DateTime))
INSERT [dbo].[SID] ([S_ID], [MA_WS], [TINHTRANGID], [NGAYCAP]) VALUES (N'AC-57-88-41-C7-C2-F1-26-1B-CB-D8-A2-4E-B0-3F-DB', 104, 1, CAST(0x00009EF400000000 AS DateTime))
INSERT [dbo].[SID] ([S_ID], [MA_WS], [TINHTRANGID], [NGAYCAP]) VALUES (N'74-17-2C-39-A1-31-4D-6E-35-BA-42-C8-E3-9E-C3-61', 104, 1, CAST(0x00009EF400000000 AS DateTime))
INSERT [dbo].[SID] ([S_ID], [MA_WS], [TINHTRANGID], [NGAYCAP]) VALUES (N'BC-30-5F-1B-91-CB-C9-0D-0F-0D-68-CC-2E-F3-18-EE', 104, 1, CAST(0x00009EF400000000 AS DateTime))
INSERT [dbo].[SID] ([S_ID], [MA_WS], [TINHTRANGID], [NGAYCAP]) VALUES (N'D5-49-ED-E2-D5-BE-74-82-88-C9-84-B3-37-A4-26-56', 104, 1, CAST(0x00009EF400000000 AS DateTime))
INSERT [dbo].[SID] ([S_ID], [MA_WS], [TINHTRANGID], [NGAYCAP]) VALUES (N'74-09-82-73-6E-BB-75-D1-49-0C-73-36-4A-50-BC-45', 104, 1, CAST(0x00009EF400000000 AS DateTime))
INSERT [dbo].[SID] ([S_ID], [MA_WS], [TINHTRANGID], [NGAYCAP]) VALUES (N'A5-CE-0E-A4-5D-23-11-79-6D-A5-E8-97-C7-8F-35-44', 104, 1, CAST(0x00009EF400000000 AS DateTime))
INSERT [dbo].[SID] ([S_ID], [MA_WS], [TINHTRANGID], [NGAYCAP]) VALUES (N'46-C7-A0-96-ED-1D-79-4A-88-52-3D-1A-E7-7B-D4-24', 104, 1, CAST(0x00009EF400000000 AS DateTime))
INSERT [dbo].[SID] ([S_ID], [MA_WS], [TINHTRANGID], [NGAYCAP]) VALUES (N'F8-3E-11-DF-A3-EF-D8-D4-39-5A-B4-40-2F-7E-9B-97', 104, 1, CAST(0x00009EF400000000 AS DateTime))
INSERT [dbo].[SID] ([S_ID], [MA_WS], [TINHTRANGID], [NGAYCAP]) VALUES (N'E8-E2-A0-C7-03-1D-92-37-75-AA-F9-6B-26-47-41-DC', 104, 1, CAST(0x00009EF400000000 AS DateTime))
INSERT [dbo].[SID] ([S_ID], [MA_WS], [TINHTRANGID], [NGAYCAP]) VALUES (N'2E-9E-7A-42-E3-33-46-75-12-54-FF-FC-2B-2D-DC-7E', 104, 1, CAST(0x00009EF400000000 AS DateTime))
INSERT [dbo].[SID] ([S_ID], [MA_WS], [TINHTRANGID], [NGAYCAP]) VALUES (N'62-D4-B2-FE-22-73-CB-94-60-0C-49-3B-EE-34-74-AF', 102, 1, CAST(0x00009EF400000000 AS DateTime))
INSERT [dbo].[SID] ([S_ID], [MA_WS], [TINHTRANGID], [NGAYCAP]) VALUES (N'D4-23-FD-4D-0C-79-2A-86-65-24-02-3F-5C-9E-50-E2', 102, 1, CAST(0x00009EF400000000 AS DateTime))
INSERT [dbo].[SID] ([S_ID], [MA_WS], [TINHTRANGID], [NGAYCAP]) VALUES (N'6B-42-84-65-30-6A-69-E6-98-6E-9C-FE-46-C1-CE-3C', 102, 1, CAST(0x00009EF400000000 AS DateTime))
INSERT [dbo].[SID] ([S_ID], [MA_WS], [TINHTRANGID], [NGAYCAP]) VALUES (N'26-5B-1A-2C-B2-40-F1-32-91-DF-90-CC-FC-5D-B3-02', 102, 1, CAST(0x00009EF400000000 AS DateTime))
INSERT [dbo].[SID] ([S_ID], [MA_WS], [TINHTRANGID], [NGAYCAP]) VALUES (N'03-5F-1B-20-11-33-1D-34-EA-63-09-21-2D-1A-9A-63', 100, 1, CAST(0x00009EF400000000 AS DateTime))
INSERT [dbo].[SID] ([S_ID], [MA_WS], [TINHTRANGID], [NGAYCAP]) VALUES (N'10-3D-1D-1C-87-12-9C-AB-22-F9-20-3D-27-A4-16-34', 100, 1, CAST(0x00009EF400000000 AS DateTime))
INSERT [dbo].[SID] ([S_ID], [MA_WS], [TINHTRANGID], [NGAYCAP]) VALUES (N'10-A9-D2-34-EB-BB-29-0E-6E-14-2A-E4-53-62-BA-98', 100, 1, CAST(0x00009EF400000000 AS DateTime))
INSERT [dbo].[SID] ([S_ID], [MA_WS], [TINHTRANGID], [NGAYCAP]) VALUES (N'90-2C-9B-70-16-62-EA-98-63-7A-CD-AA-E0-6C-EC-C9', 100, 1, CAST(0x00009EF400000000 AS DateTime))
INSERT [dbo].[SID] ([S_ID], [MA_WS], [TINHTRANGID], [NGAYCAP]) VALUES (N'FD-BB-C3-99-69-2B-38-0A-4C-E6-34-A4-6F-34-79-58', 100, 1, CAST(0x00009EF400000000 AS DateTime))
INSERT [dbo].[SID] ([S_ID], [MA_WS], [TINHTRANGID], [NGAYCAP]) VALUES (N'57-03-26-C5-8A-E0-9E-1C-37-EA-53-67-87-70-B5-76', 100, 1, CAST(0x00009EF400000000 AS DateTime))
INSERT [dbo].[SID] ([S_ID], [MA_WS], [TINHTRANGID], [NGAYCAP]) VALUES (N'9B-B3-48-88-40-3C-A2-CC-2E-05-D5-8C-78-A9-9B-4F', 100, 1, CAST(0x00009EF400000000 AS DateTime))
INSERT [dbo].[SID] ([S_ID], [MA_WS], [TINHTRANGID], [NGAYCAP]) VALUES (N'FF-7F-21-DA-8B-54-31-F2-8D-DE-C2-85-14-84-7B-8F', 100, 1, CAST(0x00009EF400000000 AS DateTime))
INSERT [dbo].[SID] ([S_ID], [MA_WS], [TINHTRANGID], [NGAYCAP]) VALUES (N'09-63-64-0B-24-4A-4D-62-2B-A9-00-BC-75-DE-4F-25', 100, 1, CAST(0x00009EF400000000 AS DateTime))
INSERT [dbo].[SID] ([S_ID], [MA_WS], [TINHTRANGID], [NGAYCAP]) VALUES (N'DA-08-DF-CD-9E-02-D5-F7-61-C3-82-A3-C7-EF-52-C1', 100, 1, CAST(0x00009EF400000000 AS DateTime))
INSERT [dbo].[SID] ([S_ID], [MA_WS], [TINHTRANGID], [NGAYCAP]) VALUES (N'7D-92-AF-DF-50-3B-20-11-13-D2-2F-77-9A-1F-C4-B0', 100, 1, CAST(0x00009EF400000000 AS DateTime))
INSERT [dbo].[SID] ([S_ID], [MA_WS], [TINHTRANGID], [NGAYCAP]) VALUES (N'99-56-96-04-1B-A3-17-24-9D-7E-11-C8-72-9C-D6-62', 100, 1, CAST(0x00009EF400000000 AS DateTime))
INSERT [dbo].[SID] ([S_ID], [MA_WS], [TINHTRANGID], [NGAYCAP]) VALUES (N'CC-88-25-3D-29-C1-73-FB-24-63-B2-FD-F1-57-82-D5', 100, 1, CAST(0x00009EF400000000 AS DateTime))
INSERT [dbo].[SID] ([S_ID], [MA_WS], [TINHTRANGID], [NGAYCAP]) VALUES (N'84-7F-E7-C9-B2-AC-BA-62-A1-97-9B-DE-77-52-79-6A', 100, 1, CAST(0x00009EF400000000 AS DateTime))
INSERT [dbo].[SID] ([S_ID], [MA_WS], [TINHTRANGID], [NGAYCAP]) VALUES (N'F1-7F-8D-13-73-85-36-09-00-92-47-64-14-3E-08-0D', 100, 1, CAST(0x00009EF400000000 AS DateTime))
INSERT [dbo].[SID] ([S_ID], [MA_WS], [TINHTRANGID], [NGAYCAP]) VALUES (N'B8-8D-E0-17-41-51-80-F3-5D-A7-8D-AD-2C-60-4F-65', 100, 1, CAST(0x00009EF400000000 AS DateTime))
INSERT [dbo].[SID] ([S_ID], [MA_WS], [TINHTRANGID], [NGAYCAP]) VALUES (N'B1-83-30-2F-2B-AB-29-13-13-4D-BA-63-A6-F3-06-30', 100, 1, CAST(0x00009EF400000000 AS DateTime))
INSERT [dbo].[SID] ([S_ID], [MA_WS], [TINHTRANGID], [NGAYCAP]) VALUES (N'15-49-CC-05-46-41-58-99-13-7E-0A-BC-F0-6A-E2-D3', 100, 1, CAST(0x00009EF400000000 AS DateTime))
INSERT [dbo].[SID] ([S_ID], [MA_WS], [TINHTRANGID], [NGAYCAP]) VALUES (N'BC-17-20-4B-EF-49-1F-D1-AC-F6-4F-F7-F7-42-D9-E3', 100, 1, CAST(0x00009EF400000000 AS DateTime))
INSERT [dbo].[SID] ([S_ID], [MA_WS], [TINHTRANGID], [NGAYCAP]) VALUES (N'7A-F6-F6-12-E6-74-BB-D9-83-00-09-9D-11-47-96-49', 100, 1, CAST(0x00009EF400000000 AS DateTime))
INSERT [dbo].[SID] ([S_ID], [MA_WS], [TINHTRANGID], [NGAYCAP]) VALUES (N'5C-71-31-0D-F1-3B-F0-B3-23-47-4E-07-A1-6D-95-8E', 100, 1, CAST(0x00009EF400000000 AS DateTime))
INSERT [dbo].[SID] ([S_ID], [MA_WS], [TINHTRANGID], [NGAYCAP]) VALUES (N'74-83-4D-3A-59-F9-8B-8B-9D-CA-5B-AB-D5-88-33-A4', 100, 1, CAST(0x00009EF400000000 AS DateTime))
INSERT [dbo].[SID] ([S_ID], [MA_WS], [TINHTRANGID], [NGAYCAP]) VALUES (N'39-7A-96-E2-36-F5-31-49-8D-8D-53-2D-8C-0A-22-D1', 100, 1, CAST(0x00009EF400000000 AS DateTime))
INSERT [dbo].[SID] ([S_ID], [MA_WS], [TINHTRANGID], [NGAYCAP]) VALUES (N'9C-28-6F-6F-10-FB-2F-50-DF-40-BE-53-DD-38-00-5A', 100, 1, CAST(0x00009EF400000000 AS DateTime))
INSERT [dbo].[SID] ([S_ID], [MA_WS], [TINHTRANGID], [NGAYCAP]) VALUES (N'EB-50-CA-A5-4B-72-0E-DD-23-9B-B4-66-62-E7-8A-CB', 100, 1, CAST(0x00009EF400000000 AS DateTime))
INSERT [dbo].[SID] ([S_ID], [MA_WS], [TINHTRANGID], [NGAYCAP]) VALUES (N'C7-41-BD-77-90-17-19-03-BA-33-A8-A6-E3-4B-98-6F', 100, 1, CAST(0x00009EF400000000 AS DateTime))
INSERT [dbo].[SID] ([S_ID], [MA_WS], [TINHTRANGID], [NGAYCAP]) VALUES (N'08-A6-A2-6F-6C-3E-DE-5C-CC-D8-A9-92-24-33-50-F2', 100, 1, CAST(0x00009EF400000000 AS DateTime))
INSERT [dbo].[SID] ([S_ID], [MA_WS], [TINHTRANGID], [NGAYCAP]) VALUES (N'8A-3E-5D-89-E2-73-5A-4F-B7-5A-00-27-61-37-07-CC', 100, 1, CAST(0x00009EF400000000 AS DateTime))
INSERT [dbo].[SID] ([S_ID], [MA_WS], [TINHTRANGID], [NGAYCAP]) VALUES (N'B2-3A-21-DA-9A-12-57-6E-0D-93-E0-70-AB-23-F2-89', 100, 1, CAST(0x00009EF400000000 AS DateTime))
INSERT [dbo].[SID] ([S_ID], [MA_WS], [TINHTRANGID], [NGAYCAP]) VALUES (N'0B-D3-7E-1C-83-6D-F6-2E-53-12-2A-D4-94-89-31-CA', 100, 1, CAST(0x00009EF400000000 AS DateTime))
INSERT [dbo].[SID] ([S_ID], [MA_WS], [TINHTRANGID], [NGAYCAP]) VALUES (N'2A-A9-97-3B-C0-CF-DD-C8-45-0D-CC-68-CC-4D-BC-EE', 100, 1, CAST(0x00009EF400000000 AS DateTime))
INSERT [dbo].[SID] ([S_ID], [MA_WS], [TINHTRANGID], [NGAYCAP]) VALUES (N'64-E5-33-2E-AB-B8-EA-FC-AA-75-F5-D9-36-53-E4-CD', 102, 1, CAST(0x00009EF400000000 AS DateTime))
INSERT [dbo].[SID] ([S_ID], [MA_WS], [TINHTRANGID], [NGAYCAP]) VALUES (N'97-B7-AE-3E-6C-6B-E4-EE-74-65-75-CB-94-1C-00-59', 102, 1, CAST(0x00009EF400000000 AS DateTime))
INSERT [dbo].[SID] ([S_ID], [MA_WS], [TINHTRANGID], [NGAYCAP]) VALUES (N'EB-89-78-5C-FC-0C-6B-8D-03-92-29-F7-09-2D-B8-79', 102, 1, CAST(0x00009EF400000000 AS DateTime))
INSERT [dbo].[SID] ([S_ID], [MA_WS], [TINHTRANGID], [NGAYCAP]) VALUES (N'53-64-28-C9-96-72-2B-84-24-FA-3A-CE-BD-01-1F-62', 104, 1, CAST(0x00009EF400000000 AS DateTime))
INSERT [dbo].[SID] ([S_ID], [MA_WS], [TINHTRANGID], [NGAYCAP]) VALUES (N'BD-C6-A1-1D-C3-25-03-40-3D-3F-B9-00-A6-D0-E9-8C', 104, 1, CAST(0x00009EF400000000 AS DateTime))
INSERT [dbo].[SID] ([S_ID], [MA_WS], [TINHTRANGID], [NGAYCAP]) VALUES (N'4A-E4-E5-3E-6D-E1-0C-4C-F5-D1-C5-1C-FC-FD-E5-D8', 104, 1, CAST(0x00009EF400000000 AS DateTime))
INSERT [dbo].[SID] ([S_ID], [MA_WS], [TINHTRANGID], [NGAYCAP]) VALUES (N'97-4D-B7-25-6B-CE-8D-FC-AD-2E-6A-5B-FA-4E-0B-79', 104, 1, CAST(0x00009EF400000000 AS DateTime))
INSERT [dbo].[SID] ([S_ID], [MA_WS], [TINHTRANGID], [NGAYCAP]) VALUES (N'36-9B-92-CB-19-6A-8A-D6-5C-BC-AB-8D-FA-A3-D2-47', 104, 1, CAST(0x00009EF400000000 AS DateTime))
INSERT [dbo].[SID] ([S_ID], [MA_WS], [TINHTRANGID], [NGAYCAP]) VALUES (N'98-C7-93-71-DD-99-1C-E5-82-6B-44-8C-0E-F2-29-77', 104, 1, CAST(0x00009EF400000000 AS DateTime))
INSERT [dbo].[SID] ([S_ID], [MA_WS], [TINHTRANGID], [NGAYCAP]) VALUES (N'34-56-C3-56-35-18-49-90-A3-AD-C5-2D-E2-5A-A0-5D', 104, 1, CAST(0x00009EF400000000 AS DateTime))
INSERT [dbo].[SID] ([S_ID], [MA_WS], [TINHTRANGID], [NGAYCAP]) VALUES (N'99-80-8B-9A-A8-EA-C1-CD-B9-EC-D3-A7-7F-8B-AA-BC', 104, 1, CAST(0x00009EF400000000 AS DateTime))
INSERT [dbo].[SID] ([S_ID], [MA_WS], [TINHTRANGID], [NGAYCAP]) VALUES (N'AA-AB-DA-5E-F5-0E-F9-C3-65-2F-3F-1B-55-9B-04-12', 104, 1, CAST(0x00009EF400000000 AS DateTime))
INSERT [dbo].[SID] ([S_ID], [MA_WS], [TINHTRANGID], [NGAYCAP]) VALUES (N'46-31-9E-E5-3C-49-0C-44-43-7E-CA-A5-12-FA-03-73', 104, 1, CAST(0x00009EF400000000 AS DateTime))
INSERT [dbo].[SID] ([S_ID], [MA_WS], [TINHTRANGID], [NGAYCAP]) VALUES (N'C2-9E-5F-37-FF-C8-92-46-58-A1-EE-A5-F8-88-BC-89', 104, 1, CAST(0x00009EF400000000 AS DateTime))
INSERT [dbo].[SID] ([S_ID], [MA_WS], [TINHTRANGID], [NGAYCAP]) VALUES (N'85-09-57-03-16-B6-60-3C-FE-A0-11-71-1E-D1-B8-1E', 104, 1, CAST(0x00009EF400000000 AS DateTime))
INSERT [dbo].[SID] ([S_ID], [MA_WS], [TINHTRANGID], [NGAYCAP]) VALUES (N'99-E6-94-F5-4F-7C-68-08-46-8B-D5-FC-79-F7-88-C4', 104, 1, CAST(0x00009EF400000000 AS DateTime))
INSERT [dbo].[SID] ([S_ID], [MA_WS], [TINHTRANGID], [NGAYCAP]) VALUES (N'E4-7D-6E-28-FC-83-68-7A-3B-3F-2F-32-9D-91-6B-F3', 104, 1, CAST(0x00009EF400000000 AS DateTime))
INSERT [dbo].[SID] ([S_ID], [MA_WS], [TINHTRANGID], [NGAYCAP]) VALUES (N'7E-59-B3-E7-44-2B-64-54-EC-4C-B9-F4-B4-7B-83-B0', 104, 1, CAST(0x00009EF400000000 AS DateTime))
INSERT [dbo].[SID] ([S_ID], [MA_WS], [TINHTRANGID], [NGAYCAP]) VALUES (N'58-23-97-FF-D9-B3-24-37-95-C5-DE-D5-85-FB-EB-D0', 104, 1, CAST(0x00009EF400000000 AS DateTime))
INSERT [dbo].[SID] ([S_ID], [MA_WS], [TINHTRANGID], [NGAYCAP]) VALUES (N'EE-49-6C-B5-A0-8C-27-81-87-61-FE-5C-CE-BA-80-30', 104, 1, CAST(0x00009EF400000000 AS DateTime))
INSERT [dbo].[SID] ([S_ID], [MA_WS], [TINHTRANGID], [NGAYCAP]) VALUES (N'F2-45-DC-A4-54-6B-1E-99-39-91-F1-ED-62-D0-92-1D', 104, 1, CAST(0x00009EF400000000 AS DateTime))
INSERT [dbo].[SID] ([S_ID], [MA_WS], [TINHTRANGID], [NGAYCAP]) VALUES (N'45-F5-81-06-7B-04-5E-FB-05-B2-1D-70-E0-D1-37-76', 104, 1, CAST(0x00009EF400000000 AS DateTime))
INSERT [dbo].[SID] ([S_ID], [MA_WS], [TINHTRANGID], [NGAYCAP]) VALUES (N'AF-FF-A4-18-69-1A-7A-1A-70-76-F5-A8-03-0F-61-BD', 104, 1, CAST(0x00009EF400000000 AS DateTime))
INSERT [dbo].[SID] ([S_ID], [MA_WS], [TINHTRANGID], [NGAYCAP]) VALUES (N'18-3A-F6-F9-30-60-57-E9-DA-CF-03-B0-D5-82-90-10', 104, 1, CAST(0x00009EF400000000 AS DateTime))
INSERT [dbo].[SID] ([S_ID], [MA_WS], [TINHTRANGID], [NGAYCAP]) VALUES (N'B5-9A-9E-FF-0B-3C-4A-2D-68-9A-36-91-18-12-C4-10', 104, 1, CAST(0x00009EF400000000 AS DateTime))
INSERT [dbo].[SID] ([S_ID], [MA_WS], [TINHTRANGID], [NGAYCAP]) VALUES (N'A4-F2-1A-A9-C9-4A-6C-68-A9-F2-E9-9A-FA-A9-0D-30', 100, 1, CAST(0x00009EF400000000 AS DateTime))
INSERT [dbo].[SID] ([S_ID], [MA_WS], [TINHTRANGID], [NGAYCAP]) VALUES (N'D6-49-06-56-6F-21-84-6B-0A-A2-93-5F-20-00-00-E5', 100, 1, CAST(0x00009EF400000000 AS DateTime))
INSERT [dbo].[SID] ([S_ID], [MA_WS], [TINHTRANGID], [NGAYCAP]) VALUES (N'9D-77-D1-70-69-A5-F6-6C-2D-78-A9-EC-53-21-74-B0', 100, 1, CAST(0x00009EF400000000 AS DateTime))
GO
print 'Processed 100 total records'
INSERT [dbo].[SID] ([S_ID], [MA_WS], [TINHTRANGID], [NGAYCAP]) VALUES (N'59-23-D1-5C-72-EC-BC-C2-FA-9D-88-D0-FE-2B-F1-53', 100, 1, CAST(0x00009EF400000000 AS DateTime))
INSERT [dbo].[SID] ([S_ID], [MA_WS], [TINHTRANGID], [NGAYCAP]) VALUES (N'24-AF-93-7E-3A-09-20-AC-07-83-0E-35-74-AE-4F-A9', 102, 1, CAST(0x00009EF400000000 AS DateTime))
INSERT [dbo].[SID] ([S_ID], [MA_WS], [TINHTRANGID], [NGAYCAP]) VALUES (N'F6-00-2D-8E-C7-7B-C9-2E-EA-23-F3-E2-5C-C5-4F-E0', 102, 1, CAST(0x00009EF400000000 AS DateTime))
INSERT [dbo].[SID] ([S_ID], [MA_WS], [TINHTRANGID], [NGAYCAP]) VALUES (N'F2-94-AE-1A-73-05-2D-CA-E1-CE-84-A0-09-C5-E2-41', 100, 1, CAST(0x00009EF400000000 AS DateTime))
INSERT [dbo].[SID] ([S_ID], [MA_WS], [TINHTRANGID], [NGAYCAP]) VALUES (N'A9-0F-7C-B9-F9-69-A4-FF-82-E1-66-A5-0F-1C-B3-CA', 104, 1, CAST(0x00009EF400000000 AS DateTime))
INSERT [dbo].[SID] ([S_ID], [MA_WS], [TINHTRANGID], [NGAYCAP]) VALUES (N'4B-27-0A-5E-11-C2-67-1F-CD-05-82-29-F4-70-1C-C6', 104, 1, CAST(0x00009EF400000000 AS DateTime))
INSERT [dbo].[SID] ([S_ID], [MA_WS], [TINHTRANGID], [NGAYCAP]) VALUES (N'EB-B1-F5-40-22-CF-24-87-2F-EC-B8-F2-4F-2F-FD-A2', 102, 1, CAST(0x00009EF400000000 AS DateTime))
INSERT [dbo].[SID] ([S_ID], [MA_WS], [TINHTRANGID], [NGAYCAP]) VALUES (N'EA-06-0F-69-1C-0A-05-CC-15-06-56-57-81-D3-C5-71', 104, 1, CAST(0x00009EF400000000 AS DateTime))
INSERT [dbo].[SID] ([S_ID], [MA_WS], [TINHTRANGID], [NGAYCAP]) VALUES (N'F6-1A-3D-5C-6C-BF-6C-31-B9-A6-3C-B5-95-33-5F-45', 104, 1, CAST(0x00009EF400000000 AS DateTime))
INSERT [dbo].[SID] ([S_ID], [MA_WS], [TINHTRANGID], [NGAYCAP]) VALUES (N'66-3C-33-8F-2F-02-54-6E-F1-C7-BF-CA-90-9F-5C-5A', 104, 1, CAST(0x00009EF400000000 AS DateTime))
INSERT [dbo].[SID] ([S_ID], [MA_WS], [TINHTRANGID], [NGAYCAP]) VALUES (N'98-2D-F8-36-3E-B3-5C-D5-FF-AE-3A-C9-57-14-DB-37', 102, 1, CAST(0x00009EF400000000 AS DateTime))
INSERT [dbo].[SID] ([S_ID], [MA_WS], [TINHTRANGID], [NGAYCAP]) VALUES (N'0A-BC-FD-C8-28-E9-4A-31-58-FE-21-E6-73-DF-D9-27', 104, 1, CAST(0x00009EF400000000 AS DateTime))
INSERT [dbo].[SID] ([S_ID], [MA_WS], [TINHTRANGID], [NGAYCAP]) VALUES (N'23-97-19-55-EA-4D-D9-97-2A-3E-3F-CC-D2-66-0A-11', 104, 1, CAST(0x00009EF400000000 AS DateTime))
INSERT [dbo].[SID] ([S_ID], [MA_WS], [TINHTRANGID], [NGAYCAP]) VALUES (N'A0-B1-06-C0-9B-12-61-C7-34-65-A8-86-DB-59-06-82', 104, 1, CAST(0x00009EF400000000 AS DateTime))
INSERT [dbo].[SID] ([S_ID], [MA_WS], [TINHTRANGID], [NGAYCAP]) VALUES (N'BA-51-C7-04-10-1F-58-D2-DD-75-2E-DB-B4-D0-B3-BB', 102, 1, CAST(0x00009EF400000000 AS DateTime))
INSERT [dbo].[SID] ([S_ID], [MA_WS], [TINHTRANGID], [NGAYCAP]) VALUES (N'0F-1D-6E-97-16-71-35-7C-D1-A7-99-B3-43-01-8F-8E', 102, 1, CAST(0x00009EF400000000 AS DateTime))
INSERT [dbo].[SID] ([S_ID], [MA_WS], [TINHTRANGID], [NGAYCAP]) VALUES (N'61-31-F7-27-E3-CB-DB-41-A0-0B-A5-70-CC-5F-48-85', 102, 1, CAST(0x00009EF400000000 AS DateTime))
INSERT [dbo].[SID] ([S_ID], [MA_WS], [TINHTRANGID], [NGAYCAP]) VALUES (N'4B-BB-43-83-29-52-86-EA-97-E6-EF-78-0B-3B-5C-D9', 102, 1, CAST(0x00009EF400000000 AS DateTime))
INSERT [dbo].[SID] ([S_ID], [MA_WS], [TINHTRANGID], [NGAYCAP]) VALUES (N'63-9E-EA-6E-F9-2A-EF-D7-B6-35-F5-1D-1F-54-A0-65', 102, 1, CAST(0x00009EF400000000 AS DateTime))
INSERT [dbo].[SID] ([S_ID], [MA_WS], [TINHTRANGID], [NGAYCAP]) VALUES (N'55-18-03-25-1D-2E-A2-3F-3F-D0-78-5F-5E-58-B6-7E', 104, 1, CAST(0x00009EF400000000 AS DateTime))
INSERT [dbo].[SID] ([S_ID], [MA_WS], [TINHTRANGID], [NGAYCAP]) VALUES (N'97-CA-E1-41-C5-C1-92-9A-79-28-34-72-26-A3-5F-16', 104, 1, CAST(0x00009EF400000000 AS DateTime))
INSERT [dbo].[SID] ([S_ID], [MA_WS], [TINHTRANGID], [NGAYCAP]) VALUES (N'04-B0-ED-29-86-54-0C-D4-72-47-60-F0-EC-97-44-21', 104, 1, CAST(0x00009EF400000000 AS DateTime))
INSERT [dbo].[SID] ([S_ID], [MA_WS], [TINHTRANGID], [NGAYCAP]) VALUES (N'DF-8B-0F-A3-CE-29-98-6E-EB-28-7A-E1-67-E6-18-79', 104, 1, CAST(0x00009EF400000000 AS DateTime))
INSERT [dbo].[SID] ([S_ID], [MA_WS], [TINHTRANGID], [NGAYCAP]) VALUES (N'D1-28-70-02-8F-99-8F-61-83-39-64-65-64-25-72-99', 104, 1, CAST(0x00009EF400000000 AS DateTime))
INSERT [dbo].[SID] ([S_ID], [MA_WS], [TINHTRANGID], [NGAYCAP]) VALUES (N'34-2E-FF-3B-E1-D1-D9-37-B4-51-27-B6-12-8F-CA-81', 104, 1, CAST(0x00009EF400000000 AS DateTime))
INSERT [dbo].[SID] ([S_ID], [MA_WS], [TINHTRANGID], [NGAYCAP]) VALUES (N'0B-CA-74-38-AD-8C-F1-76-90-32-AB-65-B9-0F-CB-9F', 104, 1, CAST(0x00009EF400000000 AS DateTime))
INSERT [dbo].[SID] ([S_ID], [MA_WS], [TINHTRANGID], [NGAYCAP]) VALUES (N'19-06-A4-CB-EC-65-97-E1-3B-49-89-0D-5E-5D-5E-26', 104, 1, CAST(0x00009EF400000000 AS DateTime))
INSERT [dbo].[SID] ([S_ID], [MA_WS], [TINHTRANGID], [NGAYCAP]) VALUES (N'7D-0E-4D-BA-63-F0-0A-0C-0D-78-7B-85-AF-DF-04-CF', 104, 1, CAST(0x00009EF400000000 AS DateTime))
INSERT [dbo].[SID] ([S_ID], [MA_WS], [TINHTRANGID], [NGAYCAP]) VALUES (N'EA-63-64-31-A1-E3-16-46-7A-E7-C7-F9-7A-75-99-9C', 104, 1, CAST(0x00009EF400000000 AS DateTime))
INSERT [dbo].[SID] ([S_ID], [MA_WS], [TINHTRANGID], [NGAYCAP]) VALUES (N'C4-48-3A-BD-0E-CF-9B-56-AE-53-19-B2-A8-7A-27-58', 104, 1, CAST(0x00009EF400000000 AS DateTime))
INSERT [dbo].[SID] ([S_ID], [MA_WS], [TINHTRANGID], [NGAYCAP]) VALUES (N'F3-A3-76-3B-E9-93-AB-DF-92-9E-05-15-D4-5A-2D-A9', 104, 1, CAST(0x00009EF400000000 AS DateTime))
INSERT [dbo].[SID] ([S_ID], [MA_WS], [TINHTRANGID], [NGAYCAP]) VALUES (N'07-FB-FE-5A-36-70-8C-F7-1F-36-70-3B-1D-01-CE-13', 104, 1, CAST(0x00009EF400000000 AS DateTime))
INSERT [dbo].[SID] ([S_ID], [MA_WS], [TINHTRANGID], [NGAYCAP]) VALUES (N'D4-B6-3D-76-A4-99-78-32-37-0D-B5-C9-F8-D5-FF-40', 104, 1, CAST(0x00009EF400000000 AS DateTime))
INSERT [dbo].[SID] ([S_ID], [MA_WS], [TINHTRANGID], [NGAYCAP]) VALUES (N'10-CA-57-C6-00-AA-4C-45-B8-64-EA-26-FD-77-A6-05', 104, 1, CAST(0x00009EF400000000 AS DateTime))
INSERT [dbo].[SID] ([S_ID], [MA_WS], [TINHTRANGID], [NGAYCAP]) VALUES (N'1E-ED-02-89-30-00-F7-8F-C8-AE-92-92-26-5B-56-68', 102, 1, CAST(0x00009EF400000000 AS DateTime))
INSERT [dbo].[SID] ([S_ID], [MA_WS], [TINHTRANGID], [NGAYCAP]) VALUES (N'D6-60-9E-C5-15-10-3C-36-10-7A-E1-C0-85-85-E3-13', 102, 1, CAST(0x00009EF400000000 AS DateTime))
INSERT [dbo].[SID] ([S_ID], [MA_WS], [TINHTRANGID], [NGAYCAP]) VALUES (N'C8-3E-B6-74-D3-22-CC-94-70-BF-08-04-BB-9E-68-B3', 102, 1, CAST(0x00009EF400000000 AS DateTime))
INSERT [dbo].[SID] ([S_ID], [MA_WS], [TINHTRANGID], [NGAYCAP]) VALUES (N'D0-59-4A-AA-C0-4A-69-E9-EE-6D-A1-CC-30-7A-E9-06', 105, 1, CAST(0x00009EF400000000 AS DateTime))
INSERT [dbo].[SID] ([S_ID], [MA_WS], [TINHTRANGID], [NGAYCAP]) VALUES (N'49-77-79-D2-4B-A5-9B-BC-33-85-B4-32-6B-E6-C3-BF', 105, 1, CAST(0x00009EF400000000 AS DateTime))
INSERT [dbo].[SID] ([S_ID], [MA_WS], [TINHTRANGID], [NGAYCAP]) VALUES (N'69-A7-49-E7-AB-40-5A-8F-53-F7-97-15-A9-56-91-89', 105, 1, CAST(0x00009EF400000000 AS DateTime))
INSERT [dbo].[SID] ([S_ID], [MA_WS], [TINHTRANGID], [NGAYCAP]) VALUES (N'7B-95-12-AB-E9-85-F8-5D-BC-CD-38-C7-F7-06-0A-36', 102, 1, CAST(0x00009EF400000000 AS DateTime))
INSERT [dbo].[SID] ([S_ID], [MA_WS], [TINHTRANGID], [NGAYCAP]) VALUES (N'48-07-48-15-A6-9E-3E-15-65-09-F3-C2-CB-6B-5A-17', 102, 1, CAST(0x00009EF400000000 AS DateTime))
INSERT [dbo].[SID] ([S_ID], [MA_WS], [TINHTRANGID], [NGAYCAP]) VALUES (N'46-B8-2D-29-40-1E-31-12-6F-16-55-C6-50-B8-71-83', 102, 1, CAST(0x00009EF400000000 AS DateTime))
INSERT [dbo].[SID] ([S_ID], [MA_WS], [TINHTRANGID], [NGAYCAP]) VALUES (N'5B-50-C8-2E-B4-66-F3-2A-49-DE-D9-0D-86-E5-4E-3C', 105, 1, CAST(0x00009EF400000000 AS DateTime))
INSERT [dbo].[SID] ([S_ID], [MA_WS], [TINHTRANGID], [NGAYCAP]) VALUES (N'77-07-36-CD-9A-B5-00-44-F7-FC-BC-4D-D1-8E-9C-83', 105, 1, CAST(0x00009EF400000000 AS DateTime))
INSERT [dbo].[SID] ([S_ID], [MA_WS], [TINHTRANGID], [NGAYCAP]) VALUES (N'54-B6-2F-64-AA-38-AF-5C-02-90-5E-33-A4-54-D2-74', 105, 1, CAST(0x00009EF400000000 AS DateTime))
INSERT [dbo].[SID] ([S_ID], [MA_WS], [TINHTRANGID], [NGAYCAP]) VALUES (N'4A-FE-10-4C-7E-E3-E6-4E-F7-FB-D3-DA-AA-C7-D1-94', 105, 1, CAST(0x00009EF400000000 AS DateTime))
INSERT [dbo].[SID] ([S_ID], [MA_WS], [TINHTRANGID], [NGAYCAP]) VALUES (N'DB-32-5F-58-56-73-79-28-23-68-BF-B0-B4-6B-F6-74', 104, 1, CAST(0x00009EF400000000 AS DateTime))
INSERT [dbo].[SID] ([S_ID], [MA_WS], [TINHTRANGID], [NGAYCAP]) VALUES (N'18-0F-2F-D9-5B-F2-0D-21-A6-32-E7-13-41-48-4F-5D', 104, 1, CAST(0x00009EF400000000 AS DateTime))
INSERT [dbo].[SID] ([S_ID], [MA_WS], [TINHTRANGID], [NGAYCAP]) VALUES (N'9C-C0-CB-86-6E-8A-57-C2-FA-04-8C-9F-A8-C4-F7-BF', 104, 1, CAST(0x00009EF400000000 AS DateTime))
INSERT [dbo].[SID] ([S_ID], [MA_WS], [TINHTRANGID], [NGAYCAP]) VALUES (N'02-45-37-73-E9-05-1F-A6-61-28-DD-5E-A0-F7-DE-9D', 104, 1, CAST(0x00009EF400000000 AS DateTime))
INSERT [dbo].[SID] ([S_ID], [MA_WS], [TINHTRANGID], [NGAYCAP]) VALUES (N'D8-11-CB-14-77-5D-D2-D6-F4-79-CD-09-55-E3-CE-85', 104, 1, CAST(0x00009EF400000000 AS DateTime))
INSERT [dbo].[SID] ([S_ID], [MA_WS], [TINHTRANGID], [NGAYCAP]) VALUES (N'DA-15-D0-5B-08-BF-8D-A9-54-2C-14-DE-B7-21-51-48', 105, 1, CAST(0x00009EF400000000 AS DateTime))
INSERT [dbo].[SID] ([S_ID], [MA_WS], [TINHTRANGID], [NGAYCAP]) VALUES (N'99-E7-A6-A8-33-B2-9C-F1-98-A8-7F-C5-A4-AA-D4-D8', 104, 1, CAST(0x00009EF400000000 AS DateTime))
INSERT [dbo].[SID] ([S_ID], [MA_WS], [TINHTRANGID], [NGAYCAP]) VALUES (N'38-07-BE-F0-B4-51-74-A0-51-14-FD-F8-F5-6E-94-2C', 104, 1, CAST(0x00009EF400000000 AS DateTime))
INSERT [dbo].[SID] ([S_ID], [MA_WS], [TINHTRANGID], [NGAYCAP]) VALUES (N'A6-7E-BC-60-8C-C2-3D-58-C8-97-21-A4-61-35-94-63', 104, 1, CAST(0x00009EF400000000 AS DateTime))
INSERT [dbo].[SID] ([S_ID], [MA_WS], [TINHTRANGID], [NGAYCAP]) VALUES (N'38-DA-CA-EC-10-EF-30-CB-76-FF-6E-E7-71-8E-B2-0D', 105, 1, CAST(0x00009EF400000000 AS DateTime))
INSERT [dbo].[SID] ([S_ID], [MA_WS], [TINHTRANGID], [NGAYCAP]) VALUES (N'72-5F-21-87-26-15-19-F1-64-7D-69-83-F1-3E-1E-F0', 105, 1, CAST(0x00009EF400000000 AS DateTime))
INSERT [dbo].[SID] ([S_ID], [MA_WS], [TINHTRANGID], [NGAYCAP]) VALUES (N'F1-36-C8-CA-18-30-7C-49-04-CA-DB-6C-E0-F1-3C-05', 105, 1, CAST(0x00009EF400000000 AS DateTime))
INSERT [dbo].[SID] ([S_ID], [MA_WS], [TINHTRANGID], [NGAYCAP]) VALUES (N'38-A1-DD-08-97-83-86-09-0C-A9-F9-A5-03-17-6C-67', 105, 1, CAST(0x00009EF400000000 AS DateTime))
INSERT [dbo].[SID] ([S_ID], [MA_WS], [TINHTRANGID], [NGAYCAP]) VALUES (N'DA-5F-7A-B4-78-A6-1A-36-FF-6F-EA-64-4F-84-56-5D', 105, 1, CAST(0x00009EF400000000 AS DateTime))
INSERT [dbo].[SID] ([S_ID], [MA_WS], [TINHTRANGID], [NGAYCAP]) VALUES (N'DA-22-0A-8B-C0-60-43-D3-D9-BC-4D-0C-9F-A3-57-A5', 105, 1, CAST(0x00009EF400000000 AS DateTime))
INSERT [dbo].[SID] ([S_ID], [MA_WS], [TINHTRANGID], [NGAYCAP]) VALUES (N'59-4A-FE-3E-00-37-D6-AA-43-C4-5C-ED-95-C9-C8-B9', 105, 1, CAST(0x00009EF400000000 AS DateTime))
INSERT [dbo].[SID] ([S_ID], [MA_WS], [TINHTRANGID], [NGAYCAP]) VALUES (N'87-2B-43-0F-94-37-52-D3-50-79-8A-6E-E8-0E-E5-A6', 105, 1, CAST(0x00009EF400000000 AS DateTime))
INSERT [dbo].[SID] ([S_ID], [MA_WS], [TINHTRANGID], [NGAYCAP]) VALUES (N'FE-1C-B2-18-82-18-3D-4E-E3-11-B8-FC-E4-27-11-14', 105, 1, CAST(0x00009EF400000000 AS DateTime))
INSERT [dbo].[SID] ([S_ID], [MA_WS], [TINHTRANGID], [NGAYCAP]) VALUES (N'DD-3F-BC-88-CC-DB-2F-B2-BA-3E-EC-46-AD-3C-57-F7', 105, 1, CAST(0x00009EF400000000 AS DateTime))
INSERT [dbo].[SID] ([S_ID], [MA_WS], [TINHTRANGID], [NGAYCAP]) VALUES (N'E4-C0-2C-AE-0A-B9-87-27-2C-1E-D4-70-E1-09-71-1A', 105, 1, CAST(0x00009EF400000000 AS DateTime))
INSERT [dbo].[SID] ([S_ID], [MA_WS], [TINHTRANGID], [NGAYCAP]) VALUES (N'EF-73-86-1A-A0-C7-2A-E6-44-2D-D7-5D-83-09-2F-41', 105, 1, CAST(0x00009EF400000000 AS DateTime))
INSERT [dbo].[SID] ([S_ID], [MA_WS], [TINHTRANGID], [NGAYCAP]) VALUES (N'EB-A0-66-E6-5F-32-B3-A3-BC-01-2E-6A-25-7D-53-67', 105, 1, CAST(0x00009EF400000000 AS DateTime))
INSERT [dbo].[SID] ([S_ID], [MA_WS], [TINHTRANGID], [NGAYCAP]) VALUES (N'7D-E1-26-E4-0E-55-54-80-9F-8D-35-33-F2-67-A1-CC', 105, 1, CAST(0x00009EF400000000 AS DateTime))
INSERT [dbo].[SID] ([S_ID], [MA_WS], [TINHTRANGID], [NGAYCAP]) VALUES (N'54-52-9F-AA-FE-D6-1B-49-5F-F4-4C-42-4D-89-64-61', 105, 1, CAST(0x00009EF400000000 AS DateTime))
INSERT [dbo].[SID] ([S_ID], [MA_WS], [TINHTRANGID], [NGAYCAP]) VALUES (N'73-11-5A-39-91-CE-8F-E6-6F-5C-15-76-C5-34-5D-08', 105, 1, CAST(0x00009EF400000000 AS DateTime))
INSERT [dbo].[SID] ([S_ID], [MA_WS], [TINHTRANGID], [NGAYCAP]) VALUES (N'81-F6-37-51-F4-E9-7C-7F-FF-70-1A-25-96-2F-F5-35', 105, 1, CAST(0x00009EF400000000 AS DateTime))
INSERT [dbo].[SID] ([S_ID], [MA_WS], [TINHTRANGID], [NGAYCAP]) VALUES (N'EA-72-40-74-DC-B7-B5-77-3C-C3-93-04-F4-41-39-3B', 102, 1, CAST(0x00009EF400000000 AS DateTime))
INSERT [dbo].[SID] ([S_ID], [MA_WS], [TINHTRANGID], [NGAYCAP]) VALUES (N'D0-F7-C1-54-7E-FE-8D-E6-31-B2-7E-F8-84-9F-F1-5D', 102, 1, CAST(0x00009EF400000000 AS DateTime))
INSERT [dbo].[SID] ([S_ID], [MA_WS], [TINHTRANGID], [NGAYCAP]) VALUES (N'1F-FA-34-65-05-DD-3C-46-79-CA-92-31-9C-A4-76-7B', 102, 1, CAST(0x00009EF400000000 AS DateTime))
INSERT [dbo].[SID] ([S_ID], [MA_WS], [TINHTRANGID], [NGAYCAP]) VALUES (N'65-EC-DB-63-0C-23-2A-E3-C0-40-6A-94-CD-E1-E6-08', 102, 1, CAST(0x00009EF400000000 AS DateTime))
INSERT [dbo].[SID] ([S_ID], [MA_WS], [TINHTRANGID], [NGAYCAP]) VALUES (N'AD-6E-43-F4-12-5C-1B-67-CE-E1-73-2D-9A-F8-05-28', 102, 1, CAST(0x00009EF400000000 AS DateTime))
INSERT [dbo].[SID] ([S_ID], [MA_WS], [TINHTRANGID], [NGAYCAP]) VALUES (N'B2-8C-0C-58-15-9D-B2-DE-81-DF-71-7F-CF-B6-C9-08', 102, 1, CAST(0x00009EF400000000 AS DateTime))
INSERT [dbo].[SID] ([S_ID], [MA_WS], [TINHTRANGID], [NGAYCAP]) VALUES (N'87-79-D6-AE-82-C7-41-3E-BC-78-3F-4B-82-55-34-80', 102, 1, CAST(0x00009EF400000000 AS DateTime))
INSERT [dbo].[SID] ([S_ID], [MA_WS], [TINHTRANGID], [NGAYCAP]) VALUES (N'C2-5B-18-68-06-25-C1-86-0E-4F-C4-12-14-A3-21-6B', 102, 1, CAST(0x00009EF400000000 AS DateTime))
INSERT [dbo].[SID] ([S_ID], [MA_WS], [TINHTRANGID], [NGAYCAP]) VALUES (N'D1-E7-DB-91-11-BF-01-4D-DD-B6-3E-69-D1-3A-5C-EC', 102, 1, CAST(0x00009EF400000000 AS DateTime))
INSERT [dbo].[SID] ([S_ID], [MA_WS], [TINHTRANGID], [NGAYCAP]) VALUES (N'5A-C2-D0-CA-AD-AA-9D-4D-33-1C-39-9E-36-14-9C-99', 100, 1, CAST(0x00009EF400000000 AS DateTime))
INSERT [dbo].[SID] ([S_ID], [MA_WS], [TINHTRANGID], [NGAYCAP]) VALUES (N'25-23-24-90-92-3A-64-22-0B-76-BC-99-08-01-D7-2A', 100, 1, CAST(0x00009EF400000000 AS DateTime))
INSERT [dbo].[SID] ([S_ID], [MA_WS], [TINHTRANGID], [NGAYCAP]) VALUES (N'3E-73-FE-51-00-F5-59-15-90-45-3E-74-53-75-F0-69', 100, 1, CAST(0x00009EF400000000 AS DateTime))
INSERT [dbo].[SID] ([S_ID], [MA_WS], [TINHTRANGID], [NGAYCAP]) VALUES (N'51-6A-B4-95-90-E5-B8-BB-7D-26-9D-7D-B4-6F-8E-C9', 100, 1, CAST(0x00009EF400000000 AS DateTime))
INSERT [dbo].[SID] ([S_ID], [MA_WS], [TINHTRANGID], [NGAYCAP]) VALUES (N'9C-48-65-37-E6-FC-4F-43-03-30-5D-70-CB-1F-77-89', 100, 1, CAST(0x00009EF400000000 AS DateTime))
INSERT [dbo].[SID] ([S_ID], [MA_WS], [TINHTRANGID], [NGAYCAP]) VALUES (N'27-C1-97-2A-DF-DA-0E-0D-F1-2C-76-8A-D2-0E-99-9B', 102, 1, CAST(0x00009EF400000000 AS DateTime))
INSERT [dbo].[SID] ([S_ID], [MA_WS], [TINHTRANGID], [NGAYCAP]) VALUES (N'23-B6-7E-BD-60-B0-DD-44-29-89-F5-44-57-8F-DD-5A', 102, 1, CAST(0x00009EF400000000 AS DateTime))
INSERT [dbo].[SID] ([S_ID], [MA_WS], [TINHTRANGID], [NGAYCAP]) VALUES (N'D5-5D-96-5A-68-A9-46-6A-D4-7A-4E-4E-6F-D7-C4-43', 102, 1, CAST(0x00009EF400000000 AS DateTime))
INSERT [dbo].[SID] ([S_ID], [MA_WS], [TINHTRANGID], [NGAYCAP]) VALUES (N'09-2A-B9-E2-DC-18-D0-E3-02-EA-7A-95-DA-CD-21-C0', 100, 1, CAST(0x00009EF400000000 AS DateTime))
INSERT [dbo].[SID] ([S_ID], [MA_WS], [TINHTRANGID], [NGAYCAP]) VALUES (N'5A-B0-4F-B1-FA-69-E1-BC-D9-11-B3-EE-6B-54-CC-9F', 100, 1, CAST(0x00009EF400000000 AS DateTime))
INSERT [dbo].[SID] ([S_ID], [MA_WS], [TINHTRANGID], [NGAYCAP]) VALUES (N'F3-CA-81-E1-89-8C-91-B3-35-68-B9-CB-2D-E8-8E-ED', 100, 1, CAST(0x00009EF400000000 AS DateTime))
INSERT [dbo].[SID] ([S_ID], [MA_WS], [TINHTRANGID], [NGAYCAP]) VALUES (N'89-52-C4-A4-BA-B7-73-FA-31-B1-57-D7-2A-F2-65-DE', 100, 1, CAST(0x00009EF500000000 AS DateTime))
INSERT [dbo].[SID] ([S_ID], [MA_WS], [TINHTRANGID], [NGAYCAP]) VALUES (N'73-E6-B9-66-C3-56-34-AE-E8-4E-AE-8A-52-EA-02-93', 102, 1, CAST(0x00009EF500000000 AS DateTime))
INSERT [dbo].[SID] ([S_ID], [MA_WS], [TINHTRANGID], [NGAYCAP]) VALUES (N'ED-29-1B-F9-BF-1B-00-63-5F-D8-49-10-4B-A9-09-43', 102, 1, CAST(0x00009EF500000000 AS DateTime))
INSERT [dbo].[SID] ([S_ID], [MA_WS], [TINHTRANGID], [NGAYCAP]) VALUES (N'C3-99-8F-EB-0C-9F-CC-39-47-C5-F1-EC-12-FC-65-41', 102, 1, CAST(0x00009EF500000000 AS DateTime))
INSERT [dbo].[SID] ([S_ID], [MA_WS], [TINHTRANGID], [NGAYCAP]) VALUES (N'DF-90-5A-89-B5-2E-88-76-A1-46-AF-F6-E9-05-B8-69', 102, 1, CAST(0x00009EF500000000 AS DateTime))
INSERT [dbo].[SID] ([S_ID], [MA_WS], [TINHTRANGID], [NGAYCAP]) VALUES (N'05-9E-5C-32-67-BF-31-1F-24-83-4F-B3-39-9A-34-70', 102, 1, CAST(0x00009EF500000000 AS DateTime))
INSERT [dbo].[SID] ([S_ID], [MA_WS], [TINHTRANGID], [NGAYCAP]) VALUES (N'84-77-D5-42-8E-7B-7B-6A-B9-40-3C-23-DD-4B-C2-40', 104, 1, CAST(0x00009EF400000000 AS DateTime))
INSERT [dbo].[SID] ([S_ID], [MA_WS], [TINHTRANGID], [NGAYCAP]) VALUES (N'3D-21-E5-59-84-15-14-83-69-D1-60-32-DA-01-BA-08', 104, 1, CAST(0x00009EF400000000 AS DateTime))
GO
print 'Processed 200 total records'
INSERT [dbo].[SID] ([S_ID], [MA_WS], [TINHTRANGID], [NGAYCAP]) VALUES (N'92-52-E5-CA-C9-61-4F-E6-DE-EE-EA-2D-57-2E-B7-8B', 104, 1, CAST(0x00009EF400000000 AS DateTime))
INSERT [dbo].[SID] ([S_ID], [MA_WS], [TINHTRANGID], [NGAYCAP]) VALUES (N'1A-0C-8C-B3-C7-DD-AF-CD-7B-C5-B3-14-0B-13-86-D6', 100, 1, CAST(0x00009EF400000000 AS DateTime))
INSERT [dbo].[SID] ([S_ID], [MA_WS], [TINHTRANGID], [NGAYCAP]) VALUES (N'10-50-59-1A-C9-0C-65-AC-D1-2A-4F-4C-2C-AE-CF-51', 102, 1, CAST(0x00009EF400000000 AS DateTime))
INSERT [dbo].[SID] ([S_ID], [MA_WS], [TINHTRANGID], [NGAYCAP]) VALUES (N'48-52-50-8D-6B-6F-7A-91-21-DB-AA-F2-C1-09-F5-72', 102, 1, CAST(0x00009EF400000000 AS DateTime))
INSERT [dbo].[SID] ([S_ID], [MA_WS], [TINHTRANGID], [NGAYCAP]) VALUES (N'9D-4E-7B-69-4D-F0-82-57-A9-69-30-05-9F-DF-9D-6A', 102, 1, CAST(0x00009EF400000000 AS DateTime))
INSERT [dbo].[SID] ([S_ID], [MA_WS], [TINHTRANGID], [NGAYCAP]) VALUES (N'EF-BA-BF-F7-2A-2D-AE-53-D6-98-89-75-A5-36-21-86', 102, 1, CAST(0x00009EF400000000 AS DateTime))
INSERT [dbo].[SID] ([S_ID], [MA_WS], [TINHTRANGID], [NGAYCAP]) VALUES (N'31-E3-18-79-DB-C4-C2-56-12-26-C6-22-2A-C2-67-27', 102, 1, CAST(0x00009EF400000000 AS DateTime))
INSERT [dbo].[SID] ([S_ID], [MA_WS], [TINHTRANGID], [NGAYCAP]) VALUES (N'18-1F-DD-62-43-08-CE-1C-68-9B-3D-A6-36-6B-8C-45', 105, 1, CAST(0x00009EF400000000 AS DateTime))
INSERT [dbo].[SID] ([S_ID], [MA_WS], [TINHTRANGID], [NGAYCAP]) VALUES (N'BE-3D-4B-9D-99-DF-E4-06-7C-26-BA-0B-F4-3F-DC-39', 102, 1, CAST(0x00009EF400000000 AS DateTime))
INSERT [dbo].[SID] ([S_ID], [MA_WS], [TINHTRANGID], [NGAYCAP]) VALUES (N'40-CA-00-00-0B-39-34-53-A8-5A-50-F8-29-C8-3A-8B', 100, 1, CAST(0x00009EF400000000 AS DateTime))
INSERT [dbo].[SID] ([S_ID], [MA_WS], [TINHTRANGID], [NGAYCAP]) VALUES (N'57-8F-E0-92-B1-01-DE-F8-AB-7B-54-41-C5-7A-5E-6D', 102, 1, CAST(0x00009EF500000000 AS DateTime))
INSERT [dbo].[SID] ([S_ID], [MA_WS], [TINHTRANGID], [NGAYCAP]) VALUES (N'6E-00-09-A3-27-21-80-A2-50-94-86-92-0B-4A-AD-E4', 102, 1, CAST(0x00009EF400000000 AS DateTime))
INSERT [dbo].[SID] ([S_ID], [MA_WS], [TINHTRANGID], [NGAYCAP]) VALUES (N'85-F0-D2-28-DB-C4-82-24-CA-4F-25-07-7C-77-22-F9', 104, 1, CAST(0x00009EF400000000 AS DateTime))
INSERT [dbo].[SID] ([S_ID], [MA_WS], [TINHTRANGID], [NGAYCAP]) VALUES (N'70-D3-E8-14-1D-A6-4E-F8-94-73-8B-62-74-E9-15-F8', 104, 1, CAST(0x00009EF400000000 AS DateTime))
INSERT [dbo].[SID] ([S_ID], [MA_WS], [TINHTRANGID], [NGAYCAP]) VALUES (N'92-0F-44-61-3B-4F-FA-B0-65-05-BA-75-DB-EB-6E-C5', 104, 1, CAST(0x00009EF400000000 AS DateTime))
INSERT [dbo].[SID] ([S_ID], [MA_WS], [TINHTRANGID], [NGAYCAP]) VALUES (N'A7-55-91-61-9D-F6-52-A4-12-A0-FE-5F-2C-DC-47-9C', 105, 1, CAST(0x00009EF400000000 AS DateTime))
INSERT [dbo].[SID] ([S_ID], [MA_WS], [TINHTRANGID], [NGAYCAP]) VALUES (N'2F-B2-FF-C7-6B-61-33-E9-A7-4C-B9-0A-42-52-C0-BC', 100, 1, CAST(0x00009EF400000000 AS DateTime))
INSERT [dbo].[SID] ([S_ID], [MA_WS], [TINHTRANGID], [NGAYCAP]) VALUES (N'A0-40-4E-21-71-7A-0A-3D-A4-1C-03-E1-58-47-13-84', 100, 1, CAST(0x00009EF400000000 AS DateTime))
INSERT [dbo].[SID] ([S_ID], [MA_WS], [TINHTRANGID], [NGAYCAP]) VALUES (N'4D-B1-BF-4E-BF-54-07-15-76-1A-AC-D8-BA-32-EA-69', 100, 1, CAST(0x00009EF400000000 AS DateTime))
INSERT [dbo].[SID] ([S_ID], [MA_WS], [TINHTRANGID], [NGAYCAP]) VALUES (N'E6-34-FA-9E-E7-57-A1-1C-92-A8-9C-46-E5-86-B6-50', 102, 1, CAST(0x00009EF400000000 AS DateTime))
INSERT [dbo].[SID] ([S_ID], [MA_WS], [TINHTRANGID], [NGAYCAP]) VALUES (N'03-A3-86-B1-A5-85-CB-8D-CD-D4-49-46-7C-B9-15-18', 100, 1, CAST(0x00009EF400000000 AS DateTime))
INSERT [dbo].[SID] ([S_ID], [MA_WS], [TINHTRANGID], [NGAYCAP]) VALUES (N'E2-6C-74-A0-F1-FD-F4-FF-59-4E-90-03-78-23-CF-30', 100, 1, CAST(0x00009EF400000000 AS DateTime))
INSERT [dbo].[SID] ([S_ID], [MA_WS], [TINHTRANGID], [NGAYCAP]) VALUES (N'70-21-2A-0F-A1-8C-E4-89-96-7F-EB-EA-EE-1A-01-8C', 102, 1, CAST(0x00009EF400000000 AS DateTime))
INSERT [dbo].[SID] ([S_ID], [MA_WS], [TINHTRANGID], [NGAYCAP]) VALUES (N'23-8B-70-B9-3B-18-76-B3-F1-CD-AD-15-86-ED-DD-1B', 102, 1, CAST(0x00009EF400000000 AS DateTime))
INSERT [dbo].[SID] ([S_ID], [MA_WS], [TINHTRANGID], [NGAYCAP]) VALUES (N'B8-5D-B6-0C-D8-39-D5-50-52-B1-A3-79-0A-7B-26-EB', 100, 1, CAST(0x00009EF400000000 AS DateTime))
INSERT [dbo].[SID] ([S_ID], [MA_WS], [TINHTRANGID], [NGAYCAP]) VALUES (N'D1-09-AF-E4-C2-74-5C-C3-89-A5-C9-11-A7-28-D2-38', 102, 1, CAST(0x00009EF400000000 AS DateTime))
INSERT [dbo].[SID] ([S_ID], [MA_WS], [TINHTRANGID], [NGAYCAP]) VALUES (N'C8-76-B9-B8-23-3E-97-23-6D-FF-7E-88-2C-A0-9E-5B', 100, 1, CAST(0x00009EF400000000 AS DateTime))
INSERT [dbo].[SID] ([S_ID], [MA_WS], [TINHTRANGID], [NGAYCAP]) VALUES (N'81-C2-F3-58-70-4D-C8-95-C6-5A-9D-BF-3A-2E-E7-60', 100, 1, CAST(0x00009EF400000000 AS DateTime))
INSERT [dbo].[SID] ([S_ID], [MA_WS], [TINHTRANGID], [NGAYCAP]) VALUES (N'69-21-D8-6A-9D-EF-AD-FF-FE-76-91-29-47-A2-89-D7', 100, 1, CAST(0x00009EF400000000 AS DateTime))
INSERT [dbo].[SID] ([S_ID], [MA_WS], [TINHTRANGID], [NGAYCAP]) VALUES (N'1B-F9-E4-71-79-72-ED-A0-3C-1E-81-A7-67-E4-6C-7D', 100, 1, CAST(0x00009EF500000000 AS DateTime))
INSERT [dbo].[SID] ([S_ID], [MA_WS], [TINHTRANGID], [NGAYCAP]) VALUES (N'22-67-5F-5C-A3-3F-B4-4A-AA-51-F2-C7-CB-4A-EC-BB', 100, 1, CAST(0x00009EF500000000 AS DateTime))
INSERT [dbo].[SID] ([S_ID], [MA_WS], [TINHTRANGID], [NGAYCAP]) VALUES (N'F7-62-2F-6C-78-58-87-EA-7C-9B-78-BC-DF-C4-9F-1E', 102, 1, CAST(0x00009EF500000000 AS DateTime))
INSERT [dbo].[SID] ([S_ID], [MA_WS], [TINHTRANGID], [NGAYCAP]) VALUES (N'03-56-7B-86-6A-90-E3-8C-14-6D-46-9C-74-F7-C3-CA', 102, 1, CAST(0x00009EF400000000 AS DateTime))
INSERT [dbo].[SID] ([S_ID], [MA_WS], [TINHTRANGID], [NGAYCAP]) VALUES (N'CF-60-BC-7C-05-7B-C6-B8-EB-7C-35-B0-5E-F3-30-BF', 102, 1, CAST(0x00009EF400000000 AS DateTime))
INSERT [dbo].[SID] ([S_ID], [MA_WS], [TINHTRANGID], [NGAYCAP]) VALUES (N'81-F8-5B-F6-9D-9D-7D-40-25-E1-E5-8A-72-AC-92-A6', 102, 1, CAST(0x00009EF500000000 AS DateTime))
INSERT [dbo].[SID] ([S_ID], [MA_WS], [TINHTRANGID], [NGAYCAP]) VALUES (N'0D-1B-D6-19-27-7B-E6-AE-B5-40-2B-07-41-74-47-BD', 102, 1, CAST(0x00009EF500000000 AS DateTime))
INSERT [dbo].[SID] ([S_ID], [MA_WS], [TINHTRANGID], [NGAYCAP]) VALUES (N'61-13-FE-F9-2E-A7-24-6B-1E-70-92-43-09-F5-EF-51', 102, 1, CAST(0x00009EF500000000 AS DateTime))
INSERT [dbo].[SID] ([S_ID], [MA_WS], [TINHTRANGID], [NGAYCAP]) VALUES (N'7F-3C-B7-E8-D3-19-71-FA-D3-C0-AC-0E-F3-94-CB-51', 102, 1, CAST(0x00009EF500000000 AS DateTime))
INSERT [dbo].[SID] ([S_ID], [MA_WS], [TINHTRANGID], [NGAYCAP]) VALUES (N'F8-AA-7B-A1-C0-72-A2-DE-BF-9A-42-98-83-8F-BD-53', 102, 1, CAST(0x00009EF500000000 AS DateTime))
INSERT [dbo].[SID] ([S_ID], [MA_WS], [TINHTRANGID], [NGAYCAP]) VALUES (N'FC-69-18-FB-CA-2D-6E-2B-4D-2A-B7-01-E4-47-16-4C', 102, 1, CAST(0x00009EF500000000 AS DateTime))
INSERT [dbo].[SID] ([S_ID], [MA_WS], [TINHTRANGID], [NGAYCAP]) VALUES (N'B1-6E-4F-A1-62-85-40-AA-2A-54-B7-66-C0-74-E2-DF', 105, 1, CAST(0x00009EF400000000 AS DateTime))
INSERT [dbo].[SID] ([S_ID], [MA_WS], [TINHTRANGID], [NGAYCAP]) VALUES (N'50-AE-F6-45-22-05-27-93-50-BE-24-C7-41-55-7F-F3', 105, 1, CAST(0x00009EF400000000 AS DateTime))
INSERT [dbo].[SID] ([S_ID], [MA_WS], [TINHTRANGID], [NGAYCAP]) VALUES (N'34-72-0C-D0-6B-89-ED-30-A9-3B-A9-DE-7E-B4-02-46', 105, 1, CAST(0x00009EF400000000 AS DateTime))
INSERT [dbo].[SID] ([S_ID], [MA_WS], [TINHTRANGID], [NGAYCAP]) VALUES (N'55-86-24-1D-41-05-FC-6E-56-68-A0-33-85-F5-68-9C', 105, 1, CAST(0x00009EF400000000 AS DateTime))
INSERT [dbo].[SID] ([S_ID], [MA_WS], [TINHTRANGID], [NGAYCAP]) VALUES (N'88-B8-C9-5A-6E-11-95-B8-13-E9-7A-A4-8F-B4-BA-DD', 105, 1, CAST(0x00009EF400000000 AS DateTime))
INSERT [dbo].[SID] ([S_ID], [MA_WS], [TINHTRANGID], [NGAYCAP]) VALUES (N'2F-B1-A7-0E-9B-F4-64-F9-CC-05-63-03-CF-84-53-E7', 105, 1, CAST(0x00009EF400000000 AS DateTime))
INSERT [dbo].[SID] ([S_ID], [MA_WS], [TINHTRANGID], [NGAYCAP]) VALUES (N'C3-90-45-32-F4-F8-E6-CE-66-64-48-5F-BF-F1-C5-E5', 105, 1, CAST(0x00009EF400000000 AS DateTime))
INSERT [dbo].[SID] ([S_ID], [MA_WS], [TINHTRANGID], [NGAYCAP]) VALUES (N'D4-C6-1D-90-51-7E-1A-56-88-7C-7A-A4-75-3B-D8-5A', 105, 1, CAST(0x00009EF400000000 AS DateTime))
INSERT [dbo].[SID] ([S_ID], [MA_WS], [TINHTRANGID], [NGAYCAP]) VALUES (N'1D-93-80-70-1E-34-36-FA-13-FF-9A-66-C2-8C-39-45', 105, 1, CAST(0x00009EF400000000 AS DateTime))
INSERT [dbo].[SID] ([S_ID], [MA_WS], [TINHTRANGID], [NGAYCAP]) VALUES (N'F5-B9-7A-90-92-70-61-2F-F3-20-41-C0-D7-E1-71-65', 105, 1, CAST(0x00009EF400000000 AS DateTime))
INSERT [dbo].[SID] ([S_ID], [MA_WS], [TINHTRANGID], [NGAYCAP]) VALUES (N'35-39-D0-96-00-C9-3B-75-22-71-CD-27-56-C2-FA-15', 102, 1, CAST(0x00009EF400000000 AS DateTime))
INSERT [dbo].[SID] ([S_ID], [MA_WS], [TINHTRANGID], [NGAYCAP]) VALUES (N'9D-FF-61-75-41-0B-8D-47-C1-2A-03-D4-4C-C7-5C-50', 105, 1, CAST(0x00009EF400000000 AS DateTime))
INSERT [dbo].[SID] ([S_ID], [MA_WS], [TINHTRANGID], [NGAYCAP]) VALUES (N'0F-BD-3C-1B-B4-5E-D2-A2-52-5F-73-40-9D-75-6B-5E', 105, 1, CAST(0x00009EF400000000 AS DateTime))
INSERT [dbo].[SID] ([S_ID], [MA_WS], [TINHTRANGID], [NGAYCAP]) VALUES (N'DD-5E-71-35-3B-76-77-20-46-7A-9B-F2-66-CD-AA-23', 105, 1, CAST(0x00009EF400000000 AS DateTime))
INSERT [dbo].[SID] ([S_ID], [MA_WS], [TINHTRANGID], [NGAYCAP]) VALUES (N'0E-D7-12-AF-8D-61-31-EA-9B-7F-93-66-2F-03-47-6F', 105, 1, CAST(0x00009EF400000000 AS DateTime))
INSERT [dbo].[SID] ([S_ID], [MA_WS], [TINHTRANGID], [NGAYCAP]) VALUES (N'E3-4B-6C-2B-A0-D6-03-76-64-00-72-D5-B3-5D-48-B0', 102, 1, CAST(0x00009EF500000000 AS DateTime))
INSERT [dbo].[SID] ([S_ID], [MA_WS], [TINHTRANGID], [NGAYCAP]) VALUES (N'E3-72-D5-5C-7F-A5-56-5F-E4-73-C9-6F-01-C5-C7-DB', 102, 1, CAST(0x00009EF500000000 AS DateTime))
/****** Object:  StoredProcedure [dbo].[sp_GetProductInfor]    Script Date: 06/01/2011 13:19:05 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
Create Procedure [dbo].[sp_GetProductInfor]
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
GO
/****** Object:  StoredProcedure [dbo].[sp_CountOrderCoupon]    Script Date: 06/01/2011 13:19:05 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
Create procedure [dbo].[sp_CountOrderCoupon]
@macp varchar(20),@count int output
As
	Select @count=sum(SOLUONGCP) From DONHANGCOUPON Where MACP=@macp and (TINHTRANGDH=N'Đặt hàng' or TINHTRANGDH=N'Đã duyệt' or TINHTRANGDH=N'Đặt vận chuyển');
	if @count is null
		set @count=0;
GO
/****** Object:  StoredProcedure [dbo].[sp_GetNumberCouponInOrder]    Script Date: 06/01/2011 13:19:05 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
Create procedure [dbo].[sp_GetNumberCouponInOrder]
@madh int,@soluong int output
As
	Select @soluong=SOLUONGCP From DONHANGCOUPON Where MADHCP=@madh;
	if @soluong is null
		set @soluong=0;
GO
/****** Object:  StoredProcedure [dbo].[sp_GetNumberCouponInOrderAccept]    Script Date: 06/01/2011 13:19:05 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
Create procedure [dbo].[sp_GetNumberCouponInOrderAccept]
@madh int,@soluong int output
As
	Select @soluong=SOLUONGCP From DONHANGCOUPON Where MADHCP=@madh and TINHTRANGDH=N'Đã duyệt';
	if @soluong is null
		set @soluong=0;
GO
/****** Object:  StoredProcedure [dbo].[sp_UpdatePriceOfOrderCoupon]    Script Date: 06/01/2011 13:19:05 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
Create procedure [dbo].[sp_UpdatePriceOfOrderCoupon]
@maws int,@couponId varchar(20),@minPrice float
As
	Update DONHANGCOUPON set TONGTIEN=SOLUONGCP*@minPrice Where MA_WS=@maws and MACP=@couponId and TINHTRANGDH=N'Đặt hàng';
GO
/****** Object:  StoredProcedure [dbo].[sp_OrderCoupon]    Script Date: 06/01/2011 13:19:05 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
Create procedure [dbo].[sp_OrderCoupon]
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
GO
/****** Object:  StoredProcedure [dbo].[sp_ValidateOrder]    Script Date: 06/01/2011 13:19:05 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
Create procedure [dbo].[sp_ValidateOrder]
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
GO
/****** Object:  StoredProcedure [dbo].[sp_UpdateStatusOrder]    Script Date: 06/01/2011 13:19:05 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
Create proc [dbo].[sp_UpdateStatusOrder]
@madh int,@tinhtrang nvarchar(20)
As
	Update DONHANGCOUPON set TINHTRANGDH=@tinhtrang Where MADHCP=@madh;
GO
/****** Object:  StoredProcedure [dbo].[sp_CancelOrder]    Script Date: 06/01/2011 13:19:05 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
Create procedure [dbo].[sp_CancelOrder]
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
GO
/****** Object:  StoredProcedure [dbo].[sp_AceptOrderExCoupon]    Script Date: 06/01/2011 13:19:05 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
Create procedure [dbo].[sp_AceptOrderExCoupon]
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
GO
/****** Object:  StoredProcedure [dbo].[sp_SelectOrderCouponByUsername]    Script Date: 06/01/2011 13:19:05 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
Create procedure [dbo].[sp_SelectOrderCouponByUsername]
@username varchar(30)
As
	Select sp.TENSP,sp.MASP,dh.MADHCP,dh.NGAYDAT,dh.TONGTIEN,dh.TINHTRANGDH,
	dh.DVTIENTE,dh.SOLUONGCP
	 From DONHANGCOUPON dh,YCWEBSERVICE y,COUPON c,SANPHAM sp
		Where y.USERNAME=@username and y.MA=dh.MA_WS and dh.MACP=c.MACP 
			and c.MASP=sp.MASP and dh.TINHTRANGDH=N'Đặt vận chuyển';
GO
/****** Object:  View [dbo].[V_DoanhThuLoaiSPTheoDHCP]    Script Date: 06/01/2011 13:19:09 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
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
/****** Object:  StoredProcedure [dbo].[sp_ConfirmOrderCoupon]    Script Date: 06/01/2011 13:19:05 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
Create procedure [dbo].[sp_ConfirmOrderCoupon]
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
GO
/****** Object:  StoredProcedure [dbo].[sp_XemThongTinChiTietDonHang]    Script Date: 06/01/2011 13:19:05 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
Create Procedure [dbo].[sp_XemThongTinChiTietDonHang]
	@maDonHang int
AS
	Select ct.MASP, ct.SOLUONG, ct.DONGIA, ct.DVTINH
	From DONHANG dh, CHITIETDONHANG ct/*, SANPHAM sp*/
	Where dh.MADH = @maDonHang /*and ct.MASP = sp.MASP*/ and ct.MADH = dh.MADH
GO
/****** Object:  StoredProcedure [dbo].[sp_InsertCTOrder]    Script Date: 06/01/2011 13:19:05 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
Create procedure [dbo].[sp_InsertCTOrder]
@madh int,@masp varchar(10),@sl  float,@price float,@dvtinh nvarchar(10)
As
	Insert into CHITIETDONHANG(MADH,MASP,SOLUONG,DONGIA,DVTINH)
		values(@madh,@masp,@sl,@price,@dvtinh);
GO
/****** Object:  View [dbo].[V_DoanhThuLoaiSPTheoDH]    Script Date: 06/01/2011 13:19:09 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
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
/****** Object:  StoredProcedure [dbo].[sp_InsertConsumer]    Script Date: 06/01/2011 13:19:05 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
Create procedure [dbo].[sp_InsertConsumer]
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
GO
/****** Object:  StoredProcedure [dbo].[sp_LayThongTinDonHangBangMaDH]    Script Date: 06/01/2011 13:19:05 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
Create Procedure [dbo].[sp_LayThongTinDonHangBangMaDH]
	@maDonHang int
AS
	Select dh.MADH, dh.NGAYDAT, dh.TONGTIEN, dh.DVTIENTE, dh.TINHTRANGDH, info.URL,
	kh.WEBSITE, kh.TENNDAIDIEN
	From DONHANG dh, PACKAGEINFO info, KHACHHANG kh
	Where dh.MADH = @maDonHang and dh.MAPK = info.MAPK and dh.USERNAME = kh.USERNAME
GO
/****** Object:  StoredProcedure [dbo].[sp_XemThongTinTaiKhoan]    Script Date: 06/01/2011 13:19:05 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROC [dbo].[sp_XemThongTinTaiKhoan]
@username varchar(30)
AS
	SELECT *
	FROM KHACHHANG
	WHERE USERNAME = @username
GO
/****** Object:  StoredProcedure [dbo].[sp_UpdateTaiKhoanKhachHang]    Script Date: 06/01/2011 13:19:05 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROC [dbo].[sp_UpdateTaiKhoanKhachHang]
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
/****** Object:  StoredProcedure [dbo].[sp_LayLoaiSanPhamTheoMaLoaiSP]    Script Date: 06/01/2011 13:19:05 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create proc [dbo].[sp_LayLoaiSanPhamTheoMaLoaiSP]
@MALSP int
AS
	Select * from LOAISP where MALSP=@MALSP;
GO
/****** Object:  StoredProcedure [dbo].[sp_LayDanhSachLoaiSanPham]    Script Date: 06/01/2011 13:19:05 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
Create Procedure [dbo].[sp_LayDanhSachLoaiSanPham]
AS
	Select * From LOAISP
GO
/****** Object:  StoredProcedure [dbo].[sp_LayDanhSachLoaiSanPhamTheoNhom]    Script Date: 06/01/2011 13:19:05 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
Create Procedure [dbo].[sp_LayDanhSachLoaiSanPhamTheoNhom]
	@maNhomLSP int
AS
	Select lsp.MALSP, lsp.TENLSP
	From LOAISP lsp
	Where lsp.MANHOM = @maNhomLSP;
GO
/****** Object:  StoredProcedure [dbo].[sp_ThemSanPham]    Script Date: 06/01/2011 13:19:05 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
Create Procedure [dbo].[sp_ThemSanPham]
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
GO
/****** Object:  StoredProcedure [dbo].[sp_LayDanhSachUserTheoLoaiUser]    Script Date: 06/01/2011 13:19:05 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROC [dbo].[sp_LayDanhSachUserTheoLoaiUser]
@tenloai nvarchar(20) 
AS
	select u.USERNAME,u.MALOAI,u.PASS_WORD,u.EMAIL,u.TRANGTHAI
	from USERS u, LOAIUSER l
	where u.MALOAI=l.MALOAI and l.TENLOAI= @tenloai
GO
/****** Object:  StoredProcedure [dbo].[sp_LayDanhSachLoaiUser]    Script Date: 06/01/2011 13:19:05 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROC [dbo].[sp_LayDanhSachLoaiUser]
AS
	select *from LOAIUSER
GO
/****** Object:  StoredProcedure [dbo].[sp_LayDanhSachNhomLoaiSanPham]    Script Date: 06/01/2011 13:19:05 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
Create Procedure [dbo].[sp_LayDanhSachNhomLoaiSanPham]
AS
	Select * From NHOMLOAISP
GO
/****** Object:  StoredProcedure [dbo].[sp_InsertPackage]    Script Date: 06/01/2011 13:19:05 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
Create procedure [dbo].[sp_InsertPackage]
@madv int,@pacinfo nvarchar(100),@url varchar(300),
@madh int,@mapk int output
As
	Insert into PACKAGEINFO(MADV,PACINFO,URL)values(@madv,@pacinfo,@url);
	SET @mapk=SCOPE_IDENTITY()
	Update DONHANG set MAPK=@mapk,TINHTRANGDH=N'Đã thanh toán' Where MADH=@madh
GO
/****** Object:  StoredProcedure [dbo].[sp_SelectOrderKH]    Script Date: 06/01/2011 13:19:05 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
Create procedure [dbo].[sp_SelectOrderKH]
@username varchar(30)
As
	Select dh.MADH,dh.NGAYDAT,dh.TONGTIEN,dh.TINHTRANGDH,dh.DIACHINHAN,dh.DVTIENTE,p.URL,p.MAPK
		From DONHANG dh,PACKAGEINFO p Where dh.USERNAME=@username and dh.TINHTRANGDH=N'Đã thanh toán' and dh.MAPK is not null and dh.MAPK=p.MAPK
GO
/****** Object:  StoredProcedure [dbo].[sp_LayThongTinQuanTriTheoUserName]    Script Date: 06/01/2011 13:19:05 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROC [dbo].[sp_LayThongTinQuanTriTheoUserName]
@username varchar(30)
AS
	SELECT *	FROM QUANTRI	WHERE USERNAME = @username
GO
/****** Object:  StoredProcedure [dbo].[sp_UpdateSanPham]    Script Date: 06/01/2011 13:19:05 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create proc [dbo].[sp_UpdateSanPham]
@MASP	varchar(10)	,
@MOTA	nvarchar(3000),
--@HINHANH	varchar(100),
@CHATLUONG	nvarchar(30),
@GIA	float	,
@SOLUONG	float,
@SLCONLAI  float,
@DVTINH	nvarchar(10),
@TINHTRANGSP	nvarchar(20)
AS
	update SANPHAM
	set MOTA=@MOTA,CHATLUONG=@CHATLUONG, GIA=@GIA, SOLUONG=@SOLUONG,SLCONLAI=@SLCONLAI, DVTINH=@DVTINH, TINHTRANGSP=@TINHTRANGSP 
	where MASP=@MASP
	if @@error<>0
		return -1;
	return 1;
GO
/****** Object:  StoredProcedure [dbo].[sp_DeleteSanPham]    Script Date: 06/01/2011 13:19:05 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROC [dbo].[sp_DeleteSanPham]
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
/****** Object:  StoredProcedure [dbo].[sp_LayDanhSachSanPhamTheoTrangThai]    Script Date: 06/01/2011 13:19:05 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
Create procedure [dbo].[sp_LayDanhSachSanPhamTheoTrangThai]
@TINHTRANGSP nvarchar(20)
As
	Select * From SANPHAM Where TINHTRANGSP=@TINHTRANGSP;
GO
/****** Object:  StoredProcedure [dbo].[sp_UpdateSLProduct]    Script Date: 06/01/2011 13:19:05 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
Create procedure [dbo].[sp_UpdateSLProduct]
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
GO
/****** Object:  StoredProcedure [dbo].[sp_SelectProducts1]    Script Date: 06/01/2011 13:19:05 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
Create Procedure [dbo].[sp_SelectProducts1]
@loai int
As
	Select TOP 9 * 
	From SANPHAM 
	Where TINHTRANGSP=N'1' and  MALSP=@loai
	Order by NGAYSD DESC
GO
/****** Object:  StoredProcedure [dbo].[sp_SelectProducts2]    Script Date: 06/01/2011 13:19:05 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
Create Procedure [dbo].[sp_SelectProducts2]
@loai int,@masp varchar(10)
As
	Select TOP 9 * 
	From SANPHAM 
	Where TINHTRANGSP=N'1' and  MALSP=@loai and MASP<>@masp
	Order by NGAYSD DESC
GO
/****** Object:  StoredProcedure [dbo].[sp_SelectCouponInfor1]    Script Date: 06/01/2011 13:19:05 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
Create Procedure [dbo].[sp_SelectCouponInfor1]
@macp varchar(20)
As
	Select * From COUPON cp,SANPHAM sp Where cp.MACP=@macp and cp.MASP=sp.MASP;
GO
/****** Object:  StoredProcedure [dbo].[sp_TimKiemCoBan]    Script Date: 06/01/2011 13:19:05 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
Create Procedure [dbo].[sp_TimKiemCoBan]
	@keyWord nvarchar(200)
AS
	Select Distinct /*cp.MACP, */sp.MASP, sp.TENSP, sp.MOTA, sp.CHATLUONG, sp.GIA, sp.HINHANH, sp.SLCONLAI
	From SANPHAM sp/*, COUPON cp*/
	Where TINHTRANGSP<>N'-1' and ((sp.TENSP LIKE ('%' + @keyWord + '%') or sp.CHATLUONG LIKE ('%' + @keyWord + '%') or
	sp.DVTINH LIKE ('%' + @keyWord + '%') or sp.TINHTRANGSP LIKE ('%' + @keyWord + '%')
	or sp.GIA LIKE ('%' + @keyWord + '%') or sp.MOTA LIKE ('%' + @keyWord + '%')))
	/*and sp.MASP = cp.MASP*/
GO
/****** Object:  StoredProcedure [dbo].[sp_AdvanceSearch]    Script Date: 06/01/2011 13:19:05 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
Create procedure [dbo].[sp_AdvanceSearch]
@tensp nvarchar(50),@malsp smallint,@chatluong nvarchar(30),
@minprice float,@maxprice float,@put nvarchar(100) output
As
	set @put=@tensp;
	Select * From SANPHAM Where TENSP like @tensp  and MALSP=@malsp and TINHTRANGSP<>N'-1'
	and(CHATLUONG like @chatluong or (GIA>=@minprice and GIA<=@maxprice))
GO
/****** Object:  StoredProcedure [dbo].[sp_TaoCoupon]    Script Date: 06/01/2011 13:19:05 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
Create Procedure [dbo].[sp_TaoCoupon]
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
/****** Object:  StoredProcedure [dbo].[sp_SelectNewProducts]    Script Date: 06/01/2011 13:19:05 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
Create Procedure [dbo].[sp_SelectNewProducts]
As
	Select TOP 9 * 
	From SANPHAM 
	Where TINHTRANGSP=N'1' 
	Order by NGAYDSP DESC
GO
/****** Object:  StoredProcedure [dbo].[sp_SelectModifyProducts]    Script Date: 06/01/2011 13:19:05 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
Create Procedure [dbo].[sp_SelectModifyProducts]
As
	Select TOP 9 * 
	From SANPHAM 
	Where TINHTRANGSP=N'1' 
	Order by NGAYSD DESC
GO
/****** Object:  StoredProcedure [dbo].[sp_FindCouponInfo]    Script Date: 06/01/2011 13:19:05 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
Create procedure [dbo].[sp_FindCouponInfo]
@couponId varchar(20)
As
	Select sp.DVTINH,cp.TINHTRANGCP,cp.MACP,sp.MASP,sp.TENSP,cp.GIAGOC,cp.GIASGIAM,cp.DVTIENTE,cp.SLCPMINGIAMGIA,sp.SLCONLAI,cp.SLSPMIN ,cp.THOIGIANBD,cp.THOIGIANKT,sp.MOTA,cp.DIEUKIENSD,sp.HINHANH
	From SANPHAM sp,COUPON cp Where sp.MASP=cp.MASP and cp.MACP=@couponId
GO
/****** Object:  StoredProcedure [dbo].[sp_SelectAnyCoupon]    Script Date: 06/01/2011 13:19:05 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
Create procedure [dbo].[sp_SelectAnyCoupon]
As
	Select sp.DVTINH,cp.MACP,sp.MASP,cp.TINHTRANGCP,sp.TENSP,cp.GIAGOC,cp.GIASGIAM,cp.DVTIENTE,cp.SLCPMINGIAMGIA,sp.SLCONLAI,cp.SLSPMIN ,cp.THOIGIANBD,cp.THOIGIANKT,sp.MOTA,cp.DIEUKIENSD,sp.HINHANH
	From SANPHAM sp,COUPON cp Where sp.MASP=cp.MASP and TINHTRANGCP<>N'-1'
	Order by THOIGIANKT DESC
GO
/****** Object:  StoredProcedure [dbo].[sp_FindAllCoupons]    Script Date: 06/01/2011 13:19:05 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
Create procedure [dbo].[sp_FindAllCoupons]
As
	Select sp.DVTINH,cp.MACP,sp.MASP,sp.TENSP,cp.GIAGOC,cp.GIASGIAM,cp.DVTIENTE,cp.SLCPMINGIAMGIA,sp.SLCONLAI,cp.SLSPMIN ,cp.THOIGIANBD,cp.THOIGIANKT,sp.MOTA,cp.DIEUKIENSD,sp.HINHANH
	From SANPHAM sp,COUPON cp Where sp.MASP=cp.MASP and cp.TINHTRANGCP=1 and cp.THOIGIANKT>=getdate()
GO
/****** Object:  StoredProcedure [dbo].[sp_LayDanhSachSanPham]    Script Date: 06/01/2011 13:19:05 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
Create Procedure [dbo].[sp_LayDanhSachSanPham]
AS
	Select MASP, TENSP,GIA
	From SANPHAM Where TINHTRANGSP=1;
GO
/****** Object:  StoredProcedure [dbo].[sp_FindCoupons]    Script Date: 06/01/2011 13:19:05 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
Create procedure [dbo].[sp_FindCoupons]
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
GO
/****** Object:  StoredProcedure [dbo].[sp_LaySERVICEBANKTheoMaBank]    Script Date: 06/01/2011 13:19:05 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROC [dbo].[sp_LaySERVICEBANKTheoMaBank]
@MABANK varchar(50)
AS
  select * from SERVICEBANK where MABANK=@MABANK
GO
/****** Object:  StoredProcedure [dbo].[sp_LayDanhSachSERVICEBANKTheoTrangThai]    Script Date: 06/01/2011 13:19:05 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROC [dbo].[sp_LayDanhSachSERVICEBANKTheoTrangThai]
@trangthai int
AS
  select * from SERVICEBANK where TINHTRANGWS=@trangthai
GO
/****** Object:  StoredProcedure [dbo].[sp_Insert_SERVICEBANK]    Script Date: 06/01/2011 13:19:05 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[sp_Insert_SERVICEBANK]
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
/****** Object:  StoredProcedure [dbo].[sp_UpdateSERVICEBANK]    Script Date: 06/01/2011 13:19:05 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROC [dbo].[sp_UpdateSERVICEBANK]
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
/****** Object:  StoredProcedure [dbo].[sp_DeleteSERVICEBANK]    Script Date: 06/01/2011 13:19:05 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROC [dbo].[sp_DeleteSERVICEBANK]
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
/****** Object:  StoredProcedure [dbo].[sp_UpdateAccountServiceTrans]    Script Date: 06/01/2011 13:19:05 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
Create procedure [dbo].[sp_UpdateAccountServiceTrans]
@madv int,@username varchar(30),@password varchar(30)
As
	Update SERVICETRANS set USERNAME=@username,PASS_WORD=@password Where MADV=@madv
	if @@error<>0
		return -1;
	return 1;
GO
/****** Object:  StoredProcedure [dbo].[sp_InsertServiceTrans]    Script Date: 06/01/2011 13:19:05 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
Create procedure [dbo].[sp_InsertServiceTrans]
@tencty nvarchar(300),@linkws varchar(200),@username varchar(30),
@password varchar(30),@website varchar(200),@bizaddress nvarchar(200)
As
	Insert into SERVICETRANS(TENCTY,LINKWS,USERNAME,PASS_WORD,TINHTRANG,WEBSITE,BIZADDRESS)values(@tencty,@linkws,@username,@password,1,@website,@bizaddress);
	if @@error<>0
		return -1;
	Declare @id int;
	Set @id=(Select max(MADV) From SERVICETRANS);
	return @id;
GO
/****** Object:  StoredProcedure [dbo].[sp_GetLinkServiceTrans]    Script Date: 06/01/2011 13:19:05 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
Create procedure [dbo].[sp_GetLinkServiceTrans]
@madv int,@link varchar(200) output
As
	if exists(Select * From SERVICETRANS Where MADV=@madv)
	begin
		Select @link=LINKWS From SERVICETRANS Where MADV=@madv;
	end
	else
		set @link='';
GO
/****** Object:  StoredProcedure [dbo].[sp_GetInfoServiceTrans]    Script Date: 06/01/2011 13:19:05 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
Create procedure [dbo].[sp_GetInfoServiceTrans]
@madv int
As
	Select* From SERVICETRANS Where MADV=@madv;
GO
/****** Object:  StoredProcedure [dbo].[sp_UpdateServiceTrans]    Script Date: 06/01/2011 13:19:05 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
Create procedure [dbo].[sp_UpdateServiceTrans]
@madv int,@tencty nvarchar(300),@linkws varchar(200),
@website varchar(200),@tinhtrang int
As
	Update SERVICETRANS set TENCTY=@tencty,LINKWS=@linkws,WEBSITE=@website,
		TINHTRANG=@tinhtrang Where MADV=@madv
	if @@error<>0
		return -1
	return 1
GO
/****** Object:  StoredProcedure [dbo].[sp_SelectServiceTrans]    Script Date: 06/01/2011 13:19:05 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
Create procedure [dbo].[sp_SelectServiceTrans]
As
	Select * From SERVICETRANS Where TINHTRANG=1;
GO
/****** Object:  StoredProcedure [dbo].[sp_DeleteServiceTrans]    Script Date: 06/01/2011 13:19:05 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
Create procedure [dbo].[sp_DeleteServiceTrans]
@madv int,@tinhtrang int
As
	Update SERVICETRANS set TINHTRANG=@tinhtrang Where MADV=@madv;
	if @@error<>0
		return -1
	return 1
GO
/****** Object:  StoredProcedure [dbo].[sp_CheckAvaliableSID]    Script Date: 06/01/2011 13:19:05 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
Create procedure [dbo].[sp_CheckAvaliableSID]
@sid varchar(100)
As
	declare @count int;
	Select @count=count(*) From SID Where S_ID=@sid and TINHTRANGID=1 ;
	return @count;
GO
/****** Object:  StoredProcedure [dbo].[sp_Authenticate]    Script Date: 06/01/2011 13:19:05 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
Create Procedure [dbo].[sp_Authenticate]
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
GO
/****** Object:  StoredProcedure [dbo].[sp_LayDanhSachUser]    Script Date: 06/01/2011 13:19:05 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROC [dbo].[sp_LayDanhSachUser]
AS
	select *from USERS
GO
/****** Object:  StoredProcedure [dbo].[sp_LayThongTinUserTheoUserName]    Script Date: 06/01/2011 13:19:05 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROC [dbo].[sp_LayThongTinUserTheoUserName]
@username varchar(30)
AS
	SELECT *	FROM USERS	WHERE USERNAME = @username
GO
/****** Object:  StoredProcedure [dbo].[sp_KiemTra_UserName_PassWord_HopLe]    Script Date: 06/01/2011 13:19:05 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROC [dbo].[sp_KiemTra_UserName_PassWord_HopLe]
@username varchar(30),
@pass     varchar(200)

AS
	DECLARE @count int
	SELECT @count=count(*)
	FROM USERS
	WHERE USERNAME = @username and PASS_WORD = @pass and TRANGTHAI=1

	RETURN @count
GO
/****** Object:  StoredProcedure [dbo].[sp_UpdateStatusUser]    Script Date: 06/01/2011 13:19:05 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
Create procedure [dbo].[sp_UpdateStatusUser]
@username varchar(30),@trangthai int
As
	Update USERS set TRANGTHAI=@trangthai Where USERNAME=@username;
	if @@error<>0
		return -1
	else
		return 0
GO
/****** Object:  StoredProcedure [dbo].[sp_CheckAccountIsAvaliable]    Script Date: 06/01/2011 13:19:05 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create procedure [dbo].[sp_CheckAccountIsAvaliable]
@username varchar(30),@password varchar(200),@loaiuser int output
As
	Declare @status int
	Select @status=TRANGTHAI,@loaiuser=MALOAI From USERS Where USERNAME=@username and PASS_WORD=@password;
	return @status
GO
/****** Object:  StoredProcedure [dbo].[sp_ValidateUsername]    Script Date: 06/01/2011 13:19:05 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create procedure [dbo].[sp_ValidateUsername] @username varchar(30)
as
	Declare @count int
	Select @count=count(*) From USERS Where USERNAME=@username;
	return @count
GO
/****** Object:  StoredProcedure [dbo].[sp_SelectAllNewRequest]    Script Date: 06/01/2011 13:19:05 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
Create procedure [dbo].[sp_SelectAllNewRequest]
As
	Select * From YCWEBSERVICE Where TINHTRANGYC=0;
GO
/****** Object:  StoredProcedure [dbo].[sp_UpdateStatusRequest]    Script Date: 06/01/2011 13:19:05 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
Create procedure [dbo].[sp_UpdateStatusRequest]
@ma int,@tinhtrang int
As
	Update YCWEBSERVICE set TINHTRANGYC=@tinhtrang Where MA=@ma;
GO
/****** Object:  StoredProcedure [dbo].[sp_Insert_ycwebservice]    Script Date: 06/01/2011 13:19:05 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[sp_Insert_ycwebservice]
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
GO
/****** Object:  StoredProcedure [dbo].[sp_SelectRequest]    Script Date: 06/01/2011 13:19:05 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
Create procedure [dbo].[sp_SelectRequest]
As
	Select * From YCWEBSERVICE Where TINHTRANGYC<>0;
GO
/****** Object:  StoredProcedure [dbo].[sp_LaMuaChung]    Script Date: 06/01/2011 13:19:05 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create procedure [dbo].[sp_LaMuaChung]
@username varchar(30)
as
	Declare @count int
	Select @count=count(*) From YCWEBSERVICE Where USERNAME=@username;
	return @count
GO
/****** Object:  StoredProcedure [dbo].[sp_DeleteCoupon]    Script Date: 06/01/2011 13:19:05 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
Create Procedure [dbo].[sp_DeleteCoupon]
@macp varchar(20)
As
	Update COUPON set TINHTRANGCP=N'-1' Where MACP=@macp;
GO
/****** Object:  StoredProcedure [dbo].[sp_UpdateCoupon1]    Script Date: 06/01/2011 13:19:05 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
Create Procedure [dbo].[sp_UpdateCoupon1]
@macp varchar(20),@start datetime,@end datetime,@slspmin int,@giasgiam float,
@dksd nvarchar(500),@giagoc float,@slcpmin int
As
	Update COUPON set GIASGIAM=@giasgiam,THOIGIANBD=@start,
		THOIGIANKT=@end,SLSPMIN=@slspmin,DIEUKIENSD=@dksd,GIAGOC=@giagoc,
	SLCPMINGIAMGIA=@slcpmin Where MACP=@macp;
GO
/****** Object:  StoredProcedure [dbo].[sp_RegisterCoupon]    Script Date: 06/01/2011 13:19:05 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
Create procedure [dbo].[sp_RegisterCoupon]
@couponId varchar(20)
As
	declare @count int;
	Select @count=count(*) From COUPON Where MACP=@couponId and TINHTRANGCP=1 and THOIGIANKT>=getdate();
print @count;
	return @count;
GO
/****** Object:  StoredProcedure [dbo].[sp_SelectExCoupon]    Script Date: 06/01/2011 13:19:05 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
Create procedure [dbo].[sp_SelectExCoupon]
As
	Select MACP,THOIGIANKT,SLCPMINGIAMGIA From COUPON Where TINHTRANGCP=1 and THOIGIANKT<getdate();
GO
/****** Object:  StoredProcedure [dbo].[sp_InsertOrder]    Script Date: 06/01/2011 13:19:05 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
Create procedure [dbo].[sp_InsertOrder]
@username varchar(30),@tongtien float,@diachi nvarchar(200),@ngaygiao datetime,
@dvtiente nvarchar(10),@madh int output
As
	Insert into DONHANG(MAPK,USERNAME,NGAYDAT,NGAYGIAO,TONGTIEN,TINHTRANGDH,DIACHINHAN,DVTIENTE)
		values(null,@username,getdate(),@ngaygiao,@tongtien,N'Đặt hàng',@diachi,@dvtiente);
	SET @madh = SCOPE_IDENTITY()
GO
/****** Object:  StoredProcedure [dbo].[sp_SelectOrderExCoupon]    Script Date: 06/01/2011 13:19:05 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
Create procedure [dbo].[sp_SelectOrderExCoupon]
@macp varchar(20),@count int output,@ws int output
As
	exec sp_CountOrderCoupon @macp,@count output;
	print @count;
	Select @ws= count(distinct(MA_WS)) From DONHANGCOUPON Where MACP=@macp;
	Select dh.MADHCP,dh.NGAYDAT,dh.SOLUONGCP,y.TENDN,dh.TINHTRANGDH
	From DONHANGCOUPON dh,YCWEBSERVICE y 
	Where dh.MACP=@macp and dh.MA_WS=y.MA 
	Group by y.MA,dh.MADHCP,dh.NGAYDAT,dh.SOLUONGCP,y.TENDN,dh.TINHTRANGDH;
GO
/****** Object:  ForeignKey [FK_GOMSP_GOMSP_DONHANG]    Script Date: 06/01/2011 13:19:08 ******/
ALTER TABLE [dbo].[CHITIETDONHANG]  WITH CHECK ADD  CONSTRAINT [FK_GOMSP_GOMSP_DONHANG] FOREIGN KEY([MADH])
REFERENCES [dbo].[DONHANG] ([MADH])
GO
ALTER TABLE [dbo].[CHITIETDONHANG] CHECK CONSTRAINT [FK_GOMSP_GOMSP_DONHANG]
GO
/****** Object:  ForeignKey [FK_GOMSP_GOMSP2_SANPHAM]    Script Date: 06/01/2011 13:19:08 ******/
ALTER TABLE [dbo].[CHITIETDONHANG]  WITH CHECK ADD  CONSTRAINT [FK_GOMSP_GOMSP2_SANPHAM] FOREIGN KEY([MASP])
REFERENCES [dbo].[SANPHAM] ([MASP])
GO
ALTER TABLE [dbo].[CHITIETDONHANG] CHECK CONSTRAINT [FK_GOMSP_GOMSP2_SANPHAM]
GO
/****** Object:  ForeignKey [FK_COUPON_ASSOCIATI_SANPHAM]    Script Date: 06/01/2011 13:19:08 ******/
ALTER TABLE [dbo].[COUPON]  WITH CHECK ADD  CONSTRAINT [FK_COUPON_ASSOCIATI_SANPHAM] FOREIGN KEY([MASP])
REFERENCES [dbo].[SANPHAM] ([MASP])
GO
ALTER TABLE [dbo].[COUPON] CHECK CONSTRAINT [FK_COUPON_ASSOCIATI_SANPHAM]
GO
/****** Object:  ForeignKey [FK_DONHANG_MUA_KHACHHAN]    Script Date: 06/01/2011 13:19:08 ******/
ALTER TABLE [dbo].[DONHANG]  WITH CHECK ADD  CONSTRAINT [FK_DONHANG_MUA_KHACHHAN] FOREIGN KEY([USERNAME])
REFERENCES [dbo].[KHACHHANG] ([USERNAME])
GO
ALTER TABLE [dbo].[DONHANG] CHECK CONSTRAINT [FK_DONHANG_MUA_KHACHHAN]
GO
/****** Object:  ForeignKey [FK_DONHANG_THUOCVE_PACKAGEI]    Script Date: 06/01/2011 13:19:08 ******/
ALTER TABLE [dbo].[DONHANG]  WITH CHECK ADD  CONSTRAINT [FK_DONHANG_THUOCVE_PACKAGEI] FOREIGN KEY([MAPK])
REFERENCES [dbo].[PACKAGEINFO] ([MAPK])
GO
ALTER TABLE [dbo].[DONHANG] CHECK CONSTRAINT [FK_DONHANG_THUOCVE_PACKAGEI]
GO
/****** Object:  ForeignKey [FK_DONHANGC_ASSOCIATI_COUPON]    Script Date: 06/01/2011 13:19:08 ******/
ALTER TABLE [dbo].[DONHANGCOUPON]  WITH CHECK ADD  CONSTRAINT [FK_DONHANGC_ASSOCIATI_COUPON] FOREIGN KEY([MACP])
REFERENCES [dbo].[COUPON] ([MACP])
GO
ALTER TABLE [dbo].[DONHANGCOUPON] CHECK CONSTRAINT [FK_DONHANGC_ASSOCIATI_COUPON]
GO
/****** Object:  ForeignKey [FK_DONHANGC_ASSOCIATI_PACKAGEI]    Script Date: 06/01/2011 13:19:08 ******/
ALTER TABLE [dbo].[DONHANGCOUPON]  WITH CHECK ADD  CONSTRAINT [FK_DONHANGC_ASSOCIATI_PACKAGEI] FOREIGN KEY([MAPK])
REFERENCES [dbo].[PACKAGEINFO] ([MAPK])
GO
ALTER TABLE [dbo].[DONHANGCOUPON] CHECK CONSTRAINT [FK_DONHANGC_ASSOCIATI_PACKAGEI]
GO
/****** Object:  ForeignKey [FK_DONHANGC_ASSOCIATI_YCWEBSER]    Script Date: 06/01/2011 13:19:08 ******/
ALTER TABLE [dbo].[DONHANGCOUPON]  WITH CHECK ADD  CONSTRAINT [FK_DONHANGC_ASSOCIATI_YCWEBSER] FOREIGN KEY([MA_WS])
REFERENCES [dbo].[YCWEBSERVICE] ([MA])
GO
ALTER TABLE [dbo].[DONHANGCOUPON] CHECK CONSTRAINT [FK_DONHANGC_ASSOCIATI_YCWEBSER]
GO
/****** Object:  ForeignKey [FK_KHACHHAN_INHERITAN_USER]    Script Date: 06/01/2011 13:19:08 ******/
ALTER TABLE [dbo].[KHACHHANG]  WITH CHECK ADD  CONSTRAINT [FK_KHACHHAN_INHERITAN_USER] FOREIGN KEY([USERNAME])
REFERENCES [dbo].[USERS] ([USERNAME])
GO
ALTER TABLE [dbo].[KHACHHANG] CHECK CONSTRAINT [FK_KHACHHAN_INHERITAN_USER]
GO
/****** Object:  ForeignKey [FK_LOAISP_COLSP_NHOMLOAI]    Script Date: 06/01/2011 13:19:08 ******/
ALTER TABLE [dbo].[LOAISP]  WITH CHECK ADD  CONSTRAINT [FK_LOAISP_COLSP_NHOMLOAI] FOREIGN KEY([MANHOM])
REFERENCES [dbo].[NHOMLOAISP] ([MANHOM])
GO
ALTER TABLE [dbo].[LOAISP] CHECK CONSTRAINT [FK_LOAISP_COLSP_NHOMLOAI]
GO
/****** Object:  ForeignKey [FK_PACKAGEI_GOMCO_SERVICET]    Script Date: 06/01/2011 13:19:08 ******/
ALTER TABLE [dbo].[PACKAGEINFO]  WITH CHECK ADD  CONSTRAINT [FK_PACKAGEI_GOMCO_SERVICET] FOREIGN KEY([MADV])
REFERENCES [dbo].[SERVICETRANS] ([MADV])
GO
ALTER TABLE [dbo].[PACKAGEINFO] CHECK CONSTRAINT [FK_PACKAGEI_GOMCO_SERVICET]
GO
/****** Object:  ForeignKey [FK_QUANTRI_INHERITAN_USER]    Script Date: 06/01/2011 13:19:08 ******/
ALTER TABLE [dbo].[QUANTRI]  WITH CHECK ADD  CONSTRAINT [FK_QUANTRI_INHERITAN_USER] FOREIGN KEY([USERNAME])
REFERENCES [dbo].[USERS] ([USERNAME])
GO
ALTER TABLE [dbo].[QUANTRI] CHECK CONSTRAINT [FK_QUANTRI_INHERITAN_USER]
GO
/****** Object:  ForeignKey [FK_SANPHAM_THUOC_LOAISP]    Script Date: 06/01/2011 13:19:08 ******/
ALTER TABLE [dbo].[SANPHAM]  WITH CHECK ADD  CONSTRAINT [FK_SANPHAM_THUOC_LOAISP] FOREIGN KEY([MALSP])
REFERENCES [dbo].[LOAISP] ([MALSP])
GO
ALTER TABLE [dbo].[SANPHAM] CHECK CONSTRAINT [FK_SANPHAM_THUOC_LOAISP]
GO
/****** Object:  ForeignKey [FK_SID_ASSOCIATI_YCWEBSER]    Script Date: 06/01/2011 13:19:08 ******/
ALTER TABLE [dbo].[SID]  WITH CHECK ADD  CONSTRAINT [FK_SID_ASSOCIATI_YCWEBSER] FOREIGN KEY([MA_WS])
REFERENCES [dbo].[YCWEBSERVICE] ([MA])
GO
ALTER TABLE [dbo].[SID] CHECK CONSTRAINT [FK_SID_ASSOCIATI_YCWEBSER]
GO
/****** Object:  ForeignKey [FK_USER_GOM_LOAIUSER]    Script Date: 06/01/2011 13:19:08 ******/
ALTER TABLE [dbo].[USERS]  WITH CHECK ADD  CONSTRAINT [FK_USER_GOM_LOAIUSER] FOREIGN KEY([MALOAI])
REFERENCES [dbo].[LOAIUSER] ([MALOAI])
GO
ALTER TABLE [dbo].[USERS] CHECK CONSTRAINT [FK_USER_GOM_LOAIUSER]
GO
/****** Object:  ForeignKey [FK_YCWEBSER_REFERENCE_KHACHHAN]    Script Date: 06/01/2011 13:19:08 ******/
ALTER TABLE [dbo].[YCWEBSERVICE]  WITH CHECK ADD  CONSTRAINT [FK_YCWEBSER_REFERENCE_KHACHHAN] FOREIGN KEY([USERNAME])
REFERENCES [dbo].[KHACHHANG] ([USERNAME])
GO
ALTER TABLE [dbo].[YCWEBSERVICE] CHECK CONSTRAINT [FK_YCWEBSER_REFERENCE_KHACHHAN]
GO
