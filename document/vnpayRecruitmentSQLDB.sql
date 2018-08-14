USE [master]
GO
/****** Object:  Database [VNPAY_RECRUITMENT]    Script Date: 08/14/2018 16:38:39 ******/
CREATE DATABASE [VNPAY_RECRUITMENT] ON  PRIMARY 
( NAME = N'VNPAY_RECRUITMENT', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL10.SQL2008\MSSQL\DATA\VNPAY_RECRUITMENT.mdf' , SIZE = 4096KB , MAXSIZE = UNLIMITED, FILEGROWTH = 1024KB )
 LOG ON 
( NAME = N'VNPAY_RECRUITMENT_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL10.SQL2008\MSSQL\DATA\VNPAY_RECRUITMENT_log.ldf' , SIZE = 1536KB , MAXSIZE = 2048GB , FILEGROWTH = 10%)
GO
ALTER DATABASE [VNPAY_RECRUITMENT] SET COMPATIBILITY_LEVEL = 100
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [VNPAY_RECRUITMENT].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [VNPAY_RECRUITMENT] SET ANSI_NULL_DEFAULT OFF
GO
ALTER DATABASE [VNPAY_RECRUITMENT] SET ANSI_NULLS OFF
GO
ALTER DATABASE [VNPAY_RECRUITMENT] SET ANSI_PADDING OFF
GO
ALTER DATABASE [VNPAY_RECRUITMENT] SET ANSI_WARNINGS OFF
GO
ALTER DATABASE [VNPAY_RECRUITMENT] SET ARITHABORT OFF
GO
ALTER DATABASE [VNPAY_RECRUITMENT] SET AUTO_CLOSE OFF
GO
ALTER DATABASE [VNPAY_RECRUITMENT] SET AUTO_CREATE_STATISTICS ON
GO
ALTER DATABASE [VNPAY_RECRUITMENT] SET AUTO_SHRINK OFF
GO
ALTER DATABASE [VNPAY_RECRUITMENT] SET AUTO_UPDATE_STATISTICS ON
GO
ALTER DATABASE [VNPAY_RECRUITMENT] SET CURSOR_CLOSE_ON_COMMIT OFF
GO
ALTER DATABASE [VNPAY_RECRUITMENT] SET CURSOR_DEFAULT  GLOBAL
GO
ALTER DATABASE [VNPAY_RECRUITMENT] SET CONCAT_NULL_YIELDS_NULL OFF
GO
ALTER DATABASE [VNPAY_RECRUITMENT] SET NUMERIC_ROUNDABORT OFF
GO
ALTER DATABASE [VNPAY_RECRUITMENT] SET QUOTED_IDENTIFIER OFF
GO
ALTER DATABASE [VNPAY_RECRUITMENT] SET RECURSIVE_TRIGGERS OFF
GO
ALTER DATABASE [VNPAY_RECRUITMENT] SET  DISABLE_BROKER
GO
ALTER DATABASE [VNPAY_RECRUITMENT] SET AUTO_UPDATE_STATISTICS_ASYNC OFF
GO
ALTER DATABASE [VNPAY_RECRUITMENT] SET DATE_CORRELATION_OPTIMIZATION OFF
GO
ALTER DATABASE [VNPAY_RECRUITMENT] SET TRUSTWORTHY OFF
GO
ALTER DATABASE [VNPAY_RECRUITMENT] SET ALLOW_SNAPSHOT_ISOLATION OFF
GO
ALTER DATABASE [VNPAY_RECRUITMENT] SET PARAMETERIZATION SIMPLE
GO
ALTER DATABASE [VNPAY_RECRUITMENT] SET READ_COMMITTED_SNAPSHOT OFF
GO
ALTER DATABASE [VNPAY_RECRUITMENT] SET HONOR_BROKER_PRIORITY OFF
GO
ALTER DATABASE [VNPAY_RECRUITMENT] SET  READ_WRITE
GO
ALTER DATABASE [VNPAY_RECRUITMENT] SET RECOVERY FULL
GO
ALTER DATABASE [VNPAY_RECRUITMENT] SET  MULTI_USER
GO
ALTER DATABASE [VNPAY_RECRUITMENT] SET PAGE_VERIFY CHECKSUM
GO
ALTER DATABASE [VNPAY_RECRUITMENT] SET DB_CHAINING OFF
GO
EXEC sys.sp_db_vardecimal_storage_format N'VNPAY_RECRUITMENT', N'ON'
GO
USE [VNPAY_RECRUITMENT]
GO
/****** Object:  Table [dbo].[CMS_USERS]    Script Date: 08/14/2018 16:38:42 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[CMS_USERS](
	[USER_ID] [int] IDENTITY(1,1) NOT NULL,
	[USERNAME] [varchar](100) NOT NULL,
	[EMAIL] [varchar](255) NULL,
	[FIRSTNAME] [nvarchar](50) NULL,
	[LASTNAME] [nvarchar](50) NULL,
	[FULLNAME] [nvarchar](100) NULL,
	[PASSWORD] [varchar](256) NOT NULL,
	[ISAPPROVED] [char](1) NULL,
	[ISLOCKEDOUT] [char](1) NULL,
	[LASTLOGIN] [datetime] NULL,
	[ROLE_ID] [int] NOT NULL,
	[ISDELETED] [char](1) NOT NULL,
	[CREATED_ON] [datetime] NULL,
	[CREATED_BY] [varchar](100) NULL,
	[MODIFIED_ON] [datetime] NULL,
	[MODIFIED_BY] [varchar](100) NULL,
 CONSTRAINT [PK_CMS_USERS] PRIMARY KEY CLUSTERED 
(
	[USER_ID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
SET IDENTITY_INSERT [dbo].[CMS_USERS] ON
INSERT [dbo].[CMS_USERS] ([USER_ID], [USERNAME], [EMAIL], [FIRSTNAME], [LASTNAME], [FULLNAME], [PASSWORD], [ISAPPROVED], [ISLOCKEDOUT], [LASTLOGIN], [ROLE_ID], [ISDELETED], [CREATED_ON], [CREATED_BY], [MODIFIED_ON], [MODIFIED_BY]) VALUES (1, N'trongnguyen', N'trongnb@vnpay.vn', N'Trọng', N'Nguyễn', N'Nguyễn Bình Trọng', N'7E985927248485146FB9754D426EC4EA', N'1', N'0', NULL, 1, N'0', NULL, NULL, NULL, NULL)
INSERT [dbo].[CMS_USERS] ([USER_ID], [USERNAME], [EMAIL], [FIRSTNAME], [LASTNAME], [FULLNAME], [PASSWORD], [ISAPPROVED], [ISLOCKEDOUT], [LASTLOGIN], [ROLE_ID], [ISDELETED], [CREATED_ON], [CREATED_BY], [MODIFIED_ON], [MODIFIED_BY]) VALUES (2, N'admin', N'trongnguyen.c500@gmail.com', N'', N'', N'Nguyễn Trọng', N'7E985927248485146FB9754D426EC4EA', N'1', N'0', NULL, 1, N'0', CAST(0x0000A85800BFB7E4 AS DateTime), N'trongnguyen', NULL, NULL)
INSERT [dbo].[CMS_USERS] ([USER_ID], [USERNAME], [EMAIL], [FIRSTNAME], [LASTNAME], [FULLNAME], [PASSWORD], [ISAPPROVED], [ISLOCKEDOUT], [LASTLOGIN], [ROLE_ID], [ISDELETED], [CREATED_ON], [CREATED_BY], [MODIFIED_ON], [MODIFIED_BY]) VALUES (3, N'tienmanh', N'tienmanh@vnpay.vn', N'', N'', N'Triệu  Tiến Mạnh', N'25D55AD283AA400AF464C76D713C07AD', N'1', N'0', NULL, 1, N'0', CAST(0x0000A86400DC62E7 AS DateTime), N'admin', NULL, NULL)
INSERT [dbo].[CMS_USERS] ([USER_ID], [USERNAME], [EMAIL], [FIRSTNAME], [LASTNAME], [FULLNAME], [PASSWORD], [ISAPPROVED], [ISLOCKEDOUT], [LASTLOGIN], [ROLE_ID], [ISDELETED], [CREATED_ON], [CREATED_BY], [MODIFIED_ON], [MODIFIED_BY]) VALUES (4, N'binhnt', N'binht@vnpay.vn', N'', N'', N'example', N'26AAD2ADFAAE48CA1419F6B6B4CD7A3B', N'1', N'0', NULL, 1, N'0', CAST(0x0000A8660110B512 AS DateTime), N'trongnguyen', NULL, NULL)
INSERT [dbo].[CMS_USERS] ([USER_ID], [USERNAME], [EMAIL], [FIRSTNAME], [LASTNAME], [FULLNAME], [PASSWORD], [ISAPPROVED], [ISLOCKEDOUT], [LASTLOGIN], [ROLE_ID], [ISDELETED], [CREATED_ON], [CREATED_BY], [MODIFIED_ON], [MODIFIED_BY]) VALUES (5, N'linhnn', N'linhnn@vnpay.vn', N'', N'', N'Nguyen Nhat Linh', N'FCEA920F7412B5DA7BE0CF42B8C93759', N'1', N'0', NULL, 1, N'0', CAST(0x0000A89000DCD7D9 AS DateTime), N'binhnt', NULL, NULL)
SET IDENTITY_INSERT [dbo].[CMS_USERS] OFF
/****** Object:  Table [dbo].[CMS_USER_LOG]    Script Date: 08/14/2018 16:38:42 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[CMS_USER_LOG](
	[LOG_ID] [int] IDENTITY(1,1) NOT NULL,
	[LOG_TYPE] [varchar](50) NULL,
	[LOG_TEXT] [nvarchar](500) NULL,
	[LOG_DATA] [nvarchar](500) NULL,
	[IP_ADDRESS] [varchar](50) NULL,
	[CLIENT_INFO] [varchar](255) NULL,
	[LOG_DATE] [datetime] NULL,
 CONSTRAINT [PK_CMS_USER_LOG] PRIMARY KEY CLUSTERED 
(
	[LOG_ID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[CMS_ROLES]    Script Date: 08/14/2018 16:38:44 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[CMS_ROLES](
	[ROLE_ID] [int] IDENTITY(1,1) NOT NULL,
	[ROLE_NAME] [nvarchar](100) NOT NULL,
	[ROLE_KEY] [varchar](20) NULL,
	[ORD] [tinyint] NULL,
	[ISACTIVE] [char](1) NOT NULL,
	[ISDELETED] [char](1) NOT NULL,
	[CREATED_BY] [varchar](100) NULL,
	[CREATED_ON] [datetime] NULL,
	[MODIFIED_BY] [varchar](100) NULL,
	[MODIFIED_ON] [datetime] NULL,
 CONSTRAINT [PK_CMS_ROLES] PRIMARY KEY CLUSTERED 
(
	[ROLE_ID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
SET IDENTITY_INSERT [dbo].[CMS_ROLES] ON
INSERT [dbo].[CMS_ROLES] ([ROLE_ID], [ROLE_NAME], [ROLE_KEY], [ORD], [ISACTIVE], [ISDELETED], [CREATED_BY], [CREATED_ON], [MODIFIED_BY], [MODIFIED_ON]) VALUES (1, N'Administrator', N'admin', 1, N'1', N'0', NULL, NULL, NULL, NULL)
INSERT [dbo].[CMS_ROLES] ([ROLE_ID], [ROLE_NAME], [ROLE_KEY], [ORD], [ISACTIVE], [ISDELETED], [CREATED_BY], [CREATED_ON], [MODIFIED_BY], [MODIFIED_ON]) VALUES (2, N'Moderator', N'mod', 2, N'1', N'0', NULL, NULL, NULL, NULL)
SET IDENTITY_INSERT [dbo].[CMS_ROLES] OFF
/****** Object:  Table [dbo].[CMS_FUNCTIONS]    Script Date: 08/14/2018 16:38:44 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[CMS_FUNCTIONS](
	[FUN_ID] [int] IDENTITY(1,1) NOT NULL,
	[FUN_NAME] [nvarchar](256) NOT NULL,
	[URL] [varchar](255) NULL,
	[PARENT_ID] [int] NULL,
	[FUN_KEY] [varchar](20) NULL,
	[FUN_LEVEL] [nchar](10) NULL,
	[CSSCLASS] [varchar](20) NULL,
	[ORD] [int] NULL,
	[ISDISPLAY] [char](1) NULL,
	[ISDELETED] [char](1) NULL,
 CONSTRAINT [PK_CMS_FUNCTIONS] PRIMARY KEY CLUSTERED 
(
	[FUN_ID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[CMS_FUNCT_ROLE]    Script Date: 08/14/2018 16:38:44 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[CMS_FUNCT_ROLE](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[FUN_ID] [int] NOT NULL,
	[ROLE_ID] [int] NOT NULL,
	[ISACTIVE] [char](1) NOT NULL,
	[ISDELETED] [char](1) NOT NULL,
 CONSTRAINT [PK_CMS_FUNCT_ROLE] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Candidate]    Script Date: 08/14/2018 16:38:44 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Candidate](
	[CANDIDATE_ID] [int] IDENTITY(1,1) NOT NULL,
	[CANDIDATE_NAME] [nvarchar](50) NULL,
	[SEX] [int] NULL,
	[PHONENUMBER] [varchar](50) NULL,
	[EMAIL] [varchar](50) NULL,
	[CREATED_DATE] [date] NULL,
	[ISDELETED] [bit] NOT NULL,
 CONSTRAINT [PK_Candidate] PRIMARY KEY CLUSTERED 
(
	[CANDIDATE_ID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
SET IDENTITY_INSERT [dbo].[Candidate] ON
INSERT [dbo].[Candidate] ([CANDIDATE_ID], [CANDIDATE_NAME], [SEX], [PHONENUMBER], [EMAIL], [CREATED_DATE], [ISDELETED]) VALUES (7100, N'Lê Minh Toàn', 1, N'01234565526', N'toanminh@gmail.com', CAST(0xCE3D0B00 AS Date), 0)
INSERT [dbo].[Candidate] ([CANDIDATE_ID], [CANDIDATE_NAME], [SEX], [PHONENUMBER], [EMAIL], [CREATED_DATE], [ISDELETED]) VALUES (7101, N'Nguyễn Hải Dớ', 0, N'01364656878', N'haiminh@gmail.com', CAST(0xCE3D0B00 AS Date), 0)
INSERT [dbo].[Candidate] ([CANDIDATE_ID], [CANDIDATE_NAME], [SEX], [PHONENUMBER], [EMAIL], [CREATED_DATE], [ISDELETED]) VALUES (7102, N'aaaaaaaaaaaaaaaa', 1, N'01346546546', N'a@gmail.com', CAST(0xCE3D0B00 AS Date), 0)
INSERT [dbo].[Candidate] ([CANDIDATE_ID], [CANDIDATE_NAME], [SEX], [PHONENUMBER], [EMAIL], [CREATED_DATE], [ISDELETED]) VALUES (7103, N'Nguyen van Xo', 1, N'09349983856', N'xonv@vnpay.vn', CAST(0xCE3D0B00 AS Date), 0)
INSERT [dbo].[Candidate] ([CANDIDATE_ID], [CANDIDATE_NAME], [SEX], [PHONENUMBER], [EMAIL], [CREATED_DATE], [ISDELETED]) VALUES (7104, N'Lê Minh Tú', 0, N'01636333444', N'gmail@gmail.com', CAST(0xCE3D0B00 AS Date), 0)
INSERT [dbo].[Candidate] ([CANDIDATE_ID], [CANDIDATE_NAME], [SEX], [PHONENUMBER], [EMAIL], [CREATED_DATE], [ISDELETED]) VALUES (7105, N'<b>bug</b>', 1, N'02331446546', N'gmail@gmail.com', CAST(0xCE3D0B00 AS Date), 0)
INSERT [dbo].[Candidate] ([CANDIDATE_ID], [CANDIDATE_NAME], [SEX], [PHONENUMBER], [EMAIL], [CREATED_DATE], [ISDELETED]) VALUES (7106, N'<b>bug</b>', 0, N'03216545656', N'gkaj@gmail.com', CAST(0xCE3D0B00 AS Date), 0)
INSERT [dbo].[Candidate] ([CANDIDATE_ID], [CANDIDATE_NAME], [SEX], [PHONENUMBER], [EMAIL], [CREATED_DATE], [ISDELETED]) VALUES (7107, N'Nguyen van Xo', 1, N'09349983856', N'xonv@vnpay.vn', CAST(0xCE3D0B00 AS Date), 0)
INSERT [dbo].[Candidate] ([CANDIDATE_ID], [CANDIDATE_NAME], [SEX], [PHONENUMBER], [EMAIL], [CREATED_DATE], [ISDELETED]) VALUES (7112, N'Nguyen', 1, N'0123456789', N'a@gmail.com', CAST(0xD03D0B00 AS Date), 0)
INSERT [dbo].[Candidate] ([CANDIDATE_ID], [CANDIDATE_NAME], [SEX], [PHONENUMBER], [EMAIL], [CREATED_DATE], [ISDELETED]) VALUES (7113, N'Nguyễn Bình Minh', 1, N'01636003696', N'trongnb@vnpay.vn', CAST(0xF13D0B00 AS Date), 0)
INSERT [dbo].[Candidate] ([CANDIDATE_ID], [CANDIDATE_NAME], [SEX], [PHONENUMBER], [EMAIL], [CREATED_DATE], [ISDELETED]) VALUES (7114, N'Lê Minh Tâm', 0, N'0987654321', N'tamlm@vnpay.vn', CAST(0xF13D0B00 AS Date), 0)
SET IDENTITY_INSERT [dbo].[Candidate] OFF
/****** Object:  Table [dbo].[BANNER]    Script Date: 08/14/2018 16:38:44 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[BANNER](
	[BANNER_ID] [int] IDENTITY(1,1) NOT NULL,
	[BANNER_TITLE] [nvarchar](250) NULL,
	[BANNER_LINK] [nvarchar](1000) NULL,
	[BANNER_STATUS] [int] NULL,
	[IMAGE_URL] [nvarchar](1000) NULL,
	[ISDELETED] [bit] NULL,
	[CREATED_DATE] [date] NULL,
 CONSTRAINT [PK_BANNER] PRIMARY KEY CLUSTERED 
(
	[BANNER_ID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[BANNER] ON
INSERT [dbo].[BANNER] ([BANNER_ID], [BANNER_TITLE], [BANNER_LINK], [BANNER_STATUS], [IMAGE_URL], [ISDELETED], [CREATED_DATE]) VALUES (6, N'Test', N'https://sandbox.vnpayment.vn/tuyen-dung/admin/Banner/Create.htm', 2, N'BANNER-19894712_1313357178762853_2104002313706291085_n.jpg', 1, CAST(0xC73D0B00 AS Date))
INSERT [dbo].[BANNER] ([BANNER_ID], [BANNER_TITLE], [BANNER_LINK], [BANNER_STATUS], [IMAGE_URL], [ISDELETED], [CREATED_DATE]) VALUES (7, N'332211', N'213232', 1, N'BANNER-imag0133.jpg', 1, CAST(0xC73D0B00 AS Date))
INSERT [dbo].[BANNER] ([BANNER_ID], [BANNER_TITLE], [BANNER_LINK], [BANNER_STATUS], [IMAGE_URL], [ISDELETED], [CREATED_DATE]) VALUES (8, N'sdgsdhgsdh', N'sdhshsdh', 1, N'BANNER-19894712_1313357178762853_2104002313706291085_n.jpg.jpg', 1, CAST(0xC73D0B00 AS Date))
INSERT [dbo].[BANNER] ([BANNER_ID], [BANNER_TITLE], [BANNER_LINK], [BANNER_STATUS], [IMAGE_URL], [ISDELETED], [CREATED_DATE]) VALUES (9, N'Lập trình viên .NET', N'https://sandbox.vnpayment.vn/tuyen-dung/cong-viec/lap-trinh-vien-net/81', 2, N'BANNER-slide1.jpg', 0, CAST(0xC73D0B00 AS Date))
INSERT [dbo].[BANNER] ([BANNER_ID], [BANNER_TITLE], [BANNER_LINK], [BANNER_STATUS], [IMAGE_URL], [ISDELETED], [CREATED_DATE]) VALUES (10, N'Tin tuyển dụng', N'https://vnpay.vn/tuyen-dung/', 3, N'BANNER-recruitment_vi.jpg', 0, CAST(0xC73D0B00 AS Date))
INSERT [dbo].[BANNER] ([BANNER_ID], [BANNER_TITLE], [BANNER_LINK], [BANNER_STATUS], [IMAGE_URL], [ISDELETED], [CREATED_DATE]) VALUES (11, N'VNpayment', N'https://vnpayment.vnpay.vn/', 2, N'BANNER-slide1.jpg', 0, CAST(0xC73D0B00 AS Date))
INSERT [dbo].[BANNER] ([BANNER_ID], [BANNER_TITLE], [BANNER_LINK], [BANNER_STATUS], [IMAGE_URL], [ISDELETED], [CREATED_DATE]) VALUES (12, N'Marketing', N'https://vnpay.vn/tuyen-dung/hn-chuyen-vien-marketing-lam-viec-tai-hn.html', 3, N'BANNER-recruitment_vi.jpg', 0, CAST(0xC73D0B00 AS Date))
INSERT [dbo].[BANNER] ([BANNER_ID], [BANNER_TITLE], [BANNER_LINK], [BANNER_STATUS], [IMAGE_URL], [ISDELETED], [CREATED_DATE]) VALUES (13, N'Fanpage tuyen dung', N'https://www.facebook.com/TuyendungVNPAY/', 1, N'BANNER-java-developer-wroclaw.jpg', 0, CAST(0xC73D0B00 AS Date))
INSERT [dbo].[BANNER] ([BANNER_ID], [BANNER_TITLE], [BANNER_LINK], [BANNER_STATUS], [IMAGE_URL], [ISDELETED], [CREATED_DATE]) VALUES (14, N'Test', N'https://sandbox.vnpayment.vn/tuyen-dung/admin/Banner/Create.htm', 1, N'BANNER-IP Static VNPAY.PNG', 1, CAST(0xC73D0B00 AS Date))
INSERT [dbo].[BANNER] ([BANNER_ID], [BANNER_TITLE], [BANNER_LINK], [BANNER_STATUS], [IMAGE_URL], [ISDELETED], [CREATED_DATE]) VALUES (15, N'Kiểm thử phần mềm', N'https://sandbox.vnpayment.vn/tuyen-dung/cong-viec/nhan-vien-kiem-thu-phan-mem/86', 2, N'BANNER-13h52m15s-6.jpg', 0, CAST(0xCD3D0B00 AS Date))
SET IDENTITY_INSERT [dbo].[BANNER] OFF
/****** Object:  Table [dbo].[Group]    Script Date: 08/14/2018 16:38:44 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Group](
	[GROUP_ID] [int] IDENTITY(1,1) NOT NULL,
	[GROUP_NAME] [nvarchar](50) NOT NULL,
	[ISDELETED] [bit] NOT NULL,
 CONSTRAINT [PK_Group] PRIMARY KEY CLUSTERED 
(
	[GROUP_ID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[Group] ON
INSERT [dbo].[Group] ([GROUP_ID], [GROUP_NAME], [ISDELETED]) VALUES (31, N'KKT - P. Dịch vụ trực tuyến', 0)
INSERT [dbo].[Group] ([GROUP_ID], [GROUP_NAME], [ISDELETED]) VALUES (32, N'Marketing', 1)
INSERT [dbo].[Group] ([GROUP_ID], [GROUP_NAME], [ISDELETED]) VALUES (33, N'KKT - P. Nghiệp vụ Quản trị dự án', 0)
INSERT [dbo].[Group] ([GROUP_ID], [GROUP_NAME], [ISDELETED]) VALUES (34, N'KKT - P. Dịch vụ Ngân hàng', 0)
INSERT [dbo].[Group] ([GROUP_ID], [GROUP_NAME], [ISDELETED]) VALUES (35, N'P. Chăm sóc khách hàng', 0)
INSERT [dbo].[Group] ([GROUP_ID], [GROUP_NAME], [ISDELETED]) VALUES (36, N'KDMB - Phòng Dịch vụ Vé', 0)
INSERT [dbo].[Group] ([GROUP_ID], [GROUP_NAME], [ISDELETED]) VALUES (37, N'KKT - P. Quản trị an ninh hệ thống', 0)
INSERT [dbo].[Group] ([GROUP_ID], [GROUP_NAME], [ISDELETED]) VALUES (38, N'KHDN- P.Hỗ trợ kinh doanh', 0)
INSERT [dbo].[Group] ([GROUP_ID], [GROUP_NAME], [ISDELETED]) VALUES (39, N'P.Tổ chức hành chính', 0)
INSERT [dbo].[Group] ([GROUP_ID], [GROUP_NAME], [ISDELETED]) VALUES (40, N'P. Kinh doanh miền nam', 0)
INSERT [dbo].[Group] ([GROUP_ID], [GROUP_NAME], [ISDELETED]) VALUES (41, N'P.Dịch vụ giá trị gia tăng', 1)
INSERT [dbo].[Group] ([GROUP_ID], [GROUP_NAME], [ISDELETED]) VALUES (42, N'KKT - P. Dịch vụ Giá trị gia tăng', 0)
INSERT [dbo].[Group] ([GROUP_ID], [GROUP_NAME], [ISDELETED]) VALUES (43, N'KKT - P. Vận hành Quản trị CSDL', 0)
INSERT [dbo].[Group] ([GROUP_ID], [GROUP_NAME], [ISDELETED]) VALUES (44, N'KKT - P. Phát triển Ưd Di động', 0)
INSERT [dbo].[Group] ([GROUP_ID], [GROUP_NAME], [ISDELETED]) VALUES (45, N'KHDN - P. Sản phẩm Chính sách', 0)
INSERT [dbo].[Group] ([GROUP_ID], [GROUP_NAME], [ISDELETED]) VALUES (46, N'KDMB - Phòng Marketing', 0)
INSERT [dbo].[Group] ([GROUP_ID], [GROUP_NAME], [ISDELETED]) VALUES (47, N'KHDN-P.Kinh doanh trực tiếp', 0)
SET IDENTITY_INSERT [dbo].[Group] OFF
/****** Object:  Table [dbo].[Position]    Script Date: 08/14/2018 16:38:45 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Position](
	[POSITION_ID] [int] IDENTITY(1,1) NOT NULL,
	[POSITION_NAME] [nvarchar](50) NOT NULL,
	[ISDELETED] [bit] NOT NULL,
 CONSTRAINT [PK_Position] PRIMARY KEY CLUSTERED 
(
	[POSITION_ID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Location]    Script Date: 08/14/2018 16:38:45 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Location](
	[LOCATION_ID] [int] IDENTITY(1,1) NOT NULL,
	[LOCATION_NAME] [nvarchar](50) NOT NULL,
	[ISDELETED] [bit] NOT NULL,
 CONSTRAINT [PK_Location] PRIMARY KEY CLUSTERED 
(
	[LOCATION_ID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[Location] ON
INSERT [dbo].[Location] ([LOCATION_ID], [LOCATION_NAME], [ISDELETED]) VALUES (4, N'Hà Nội', 0)
INSERT [dbo].[Location] ([LOCATION_ID], [LOCATION_NAME], [ISDELETED]) VALUES (5, N'Hồ Chí Minh', 0)
INSERT [dbo].[Location] ([LOCATION_ID], [LOCATION_NAME], [ISDELETED]) VALUES (6, N'Hải Phòng', 0)
INSERT [dbo].[Location] ([LOCATION_ID], [LOCATION_NAME], [ISDELETED]) VALUES (7, N'Đà Nẵng', 1)
INSERT [dbo].[Location] ([LOCATION_ID], [LOCATION_NAME], [ISDELETED]) VALUES (8, N'Nghệ An', 0)
INSERT [dbo].[Location] ([LOCATION_ID], [LOCATION_NAME], [ISDELETED]) VALUES (9, N'Thanh Hóa', 0)
SET IDENTITY_INSERT [dbo].[Location] OFF
/****** Object:  StoredProcedure [dbo].[PROC_LOCATION_SELECTALL]    Script Date: 08/14/2018 16:39:16 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROC [dbo].[PROC_LOCATION_SELECTALL](@P_PAGESIZE INT,
                                            @P_PAGENO   INT,
                                            @P_TOTALROW INT OUT,
											@P_LOCATION_NAME nvarchar(100))
AS
     DECLARE @P_ROWSTART INT;
     DECLARE @P_ROWEND INT;
     BEGIN
         IF(@P_PAGENO > 0)
             BEGIN
				 --SET @KEYWORD1 = '%'+@KEYWORD+'%';
                 SET @P_PAGENO = @P_PAGENO - 1;
                 SET @P_ROWSTART = @P_PAGESIZE * @P_PAGENO + 1;
                 SET @P_ROWEND = @P_ROWSTART + @P_PAGESIZE - 1;
                 SET @P_TOTALROW =
                 (
                     SELECT COUNT(*)
                     FROM Location
                     WHERE ISDELETED = '0' 
					 and Location.LOCATION_NAME LIKE '%'+@P_LOCATION_NAME +'%'
                 );
                 WITH LISTRECORD
                      AS(SELECT LOCATION_NAME,
								LOCATION_ID,
								TOTALROW =@P_TOTALROW,
                                ROW_NUMBER() OVER(ORDER BY LOCATION_NAME ASC) AS ROWNUMBER
                         FROM Location
						 WHERE ISDELETED = '0' 
						 and LOCATION_NAME LIKE '%'+@P_LOCATION_NAME +'%')
                      SELECT *
                      FROM LISTRECORD
                      WHERE ROWNUMBER BETWEEN @P_ROWSTART AND @P_ROWEND;
             END;
     END;
GO
/****** Object:  StoredProcedure [dbo].[PROC_LOCATION_SELECT_NAME_ONLY]    Script Date: 08/14/2018 16:39:16 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		tienmanh
-- Create date: 26/12/2015
-- Description:	Auto generate update script
-- =============================================
CREATE PROC [dbo].[PROC_LOCATION_SELECT_NAME_ONLY]
(
	@P_LOCATION_ID INT
)
AS
BEGIN
    SELECT LOCATION_NAME
    FROM Location
    WHERE 
	LOCATION_ID = @P_LOCATION_ID

END;
GO
/****** Object:  StoredProcedure [dbo].[PROC_LOCATION_DELETE]    Script Date: 08/14/2018 16:39:17 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		tienmanh
-- Create date: 26/12/2015
-- Description:	Auto generate update script
-- =============================================
CREATE PROC [dbo].[PROC_LOCATION_DELETE]
(
	@P_LOCATION_ID int
)
AS
BEGIN
    UPDATE Location
    SET 
        ISDELETED = 1
	WHERE 
		LOCATION_ID = @P_LOCATION_ID
END
GO
/****** Object:  StoredProcedure [dbo].[PROC_LOCATION_ADD_NEW]    Script Date: 08/14/2018 16:39:17 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROC [dbo].[PROC_LOCATION_ADD_NEW]
(
    @P_LOCATION_NAME nvarchar(100)
	)
AS
BEGIN
    INSERT INTO Location
	(
		LOCATION_NAME,
		ISDELETED
	)
    VALUES
    (
		@P_LOCATION_NAME,
		0
	)
END
GO
/****** Object:  StoredProcedure [dbo].[PROC_GROUPS_UPDATE]    Script Date: 08/14/2018 16:39:17 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROC [dbo].[PROC_GROUPS_UPDATE]
(
    @P_GROUP_ID int,
    @P_GROUP_NAME nvarchar (256)

)
AS
BEGIN
    UPDATE "Group"
    SET 
        GROUP_NAME = @P_GROUP_NAME
   	WHERE 
        GROUP_ID = @P_GROUP_ID
END
GO
/****** Object:  StoredProcedure [dbo].[PROC_GROUPS_INSERT]    Script Date: 08/14/2018 16:39:17 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROC [dbo].[PROC_GROUPS_INSERT]
(
    @P_GROUP_NAME nvarchar (256),
    @P_ISDELETED varchar(1)
)
AS
BEGIN
    INSERT INTO "Group"
   	(
   		GROUP_NAME,
		ISDELETED
	)
    VALUES
    (
		@P_GROUP_NAME,
		@P_ISDELETED
	)
END
GO
/****** Object:  StoredProcedure [dbo].[PROC_GROUP_SELECTBYID]    Script Date: 08/14/2018 16:39:17 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROC [dbo].[PROC_GROUP_SELECTBYID](@P_GROUP_ID INT)
AS
     BEGIN
         SELECT GROUP_ID,
				GROUP_NAME,
				ISDELETED
         FROM [Group]
         WHERE GROUP_ID = @P_GROUP_ID;
     END;
GO
/****** Object:  StoredProcedure [dbo].[PROC_GROUP_SELECTALL]    Script Date: 08/14/2018 16:39:17 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROC [dbo].[PROC_GROUP_SELECTALL](@P_PAGESIZE INT,
											@KEYWORD nvarchar(100),
                                            @P_PAGENO   INT,
                                            @P_TOTALROW INT OUT)
AS
     DECLARE @P_ROWSTART INT;
     DECLARE @P_ROWEND INT;
     BEGIN
         IF(@P_PAGENO > 0)
             BEGIN
				 --SET @KEYWORD1 = '%'+@KEYWORD+'%';
                 SET @P_PAGENO = @P_PAGENO - 1;
                 SET @P_ROWSTART = @P_PAGESIZE * @P_PAGENO + 1;
                 SET @P_ROWEND = @P_ROWSTART + @P_PAGESIZE - 1;
                 SET @P_TOTALROW =
                 (
                     SELECT COUNT(*)
                     FROM [Group]
                     WHERE ISDELETED = '0' and GROUP_NAME LIKE '%'+@KEYWORD +'%'
                 );
                 WITH LISTRECORD
                      AS(SELECT GROUP_ID,
                                GROUP_NAME,
                                ROW_NUMBER() OVER(ORDER BY GROUP_NAME ASC) AS ROWNUMBER
                         FROM [Group]
                         WHERE ISDELETED = '0' and GROUP_NAME LIKE N'%'+ @KEYWORD +'%')
                      SELECT *
                      FROM LISTRECORD
                      WHERE ROWNUMBER BETWEEN @P_ROWSTART AND @P_ROWEND
                      ORDER BY ROWNUMBER ASC;
             END;
     END;
GO
/****** Object:  StoredProcedure [dbo].[PROC_GROUP_DELETEBYID]    Script Date: 08/14/2018 16:39:17 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		thangnh
-- Create date: 06/01/2016
-- Description:	Auto generate delete by id script
-- =============================================
CREATE PROC [dbo].[PROC_GROUP_DELETEBYID]
(
    @P_GROUP_ID int
)
AS
BEGIN
    UPDATE [Group]
    SET
    ISDELETED='1'
    WHERE GROUP_ID = @P_GROUP_ID
END
GO
/****** Object:  Table [dbo].[Job]    Script Date: 08/14/2018 16:39:17 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Job](
	[JOB_ID] [int] IDENTITY(1,1) NOT NULL,
	[GROUP_ID] [int] NULL,
	[JOB_NAME] [nvarchar](500) NULL,
	[NUMBER] [int] NULL,
	[SALARY] [decimal](18, 0) NULL,
	[CREATED_DATE] [date] NULL,
	[EXPIRED_DATE] [date] NULL,
	[JOB_DECRIPTION] [ntext] NULL,
	[IMAGE] [nvarchar](500) NULL,
	[ISDELETED] [bit] NOT NULL,
	[VIEW_COUNT] [int] NULL,
	[JOB_STATUS] [int] NULL,
	[UPDATED_ON] [date] NULL,
	[CV_APPLY_COUNT] [int] NULL,
	[ACTIVE_BANNER] [bit] NULL,
 CONSTRAINT [PK_Job] PRIMARY KEY CLUSTERED 
(
	[JOB_ID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[Job] ON
INSERT [dbo].[Job] ([JOB_ID], [GROUP_ID], [JOB_NAME], [NUMBER], [SALARY], [CREATED_DATE], [EXPIRED_DATE], [JOB_DECRIPTION], [IMAGE], [ISDELETED], [VIEW_COUNT], [JOB_STATUS], [UPDATED_ON], [CV_APPLY_COUNT], [ACTIVE_BANNER]) VALUES (81, 31, N'LẬP TRÌNH VIÊN .Net', 1, NULL, CAST(0xC93D0B00 AS Date), CAST(0x023E0B00 AS Date), N'<p>LẬP TR&Igrave;NH VI&Ecirc;N .Net</p>

<p>* Số lượng cần tuyển: 01</p>

<p>* Vị tr&iacute; l&agrave;m việc: Lập tr&igrave;nh vi&ecirc;n Ph&ograve;ng Dịch vụ Ng&acirc;n h&agrave;ng</p>

<p>* Địa điểm l&agrave;m việc: 22 L&aacute;ng Hạ - Đống Đa- H&agrave; Nội</p>

<p>* Thời gian l&agrave;m việc: 8h30 &ndash; 12h, 13h &ndash; 17h30 thứ hai &ndash; thứ s&aacute;u h&agrave;ng tuần, thứ bảy l&agrave;m buổi s&aacute;ng.</p>

<p>* M&ocirc; tả c&ocirc;ng việc:</p>

<ul>
	<li>Tham gia x&acirc;y dựng v&agrave; ph&aacute;t triển c&aacute;c dự &aacute;n của C&ocirc;ng ty;</li>
	<li>Tham gia ph&acirc;n t&iacute;ch, thiết kế, ph&aacute;t triển v&agrave; bảo tr&igrave; ứng dụng.</li>
	<li>Hỗ trợ đối t&aacute;c viễn th&ocirc;ng, ng&acirc;n h&agrave;ng v&agrave; c&aacute;c ph&ograve;ng ban kh&aacute;c;</li>
	<li>C&ocirc;ng việc sẽ được trao đổi cụ thể hơn trong qu&aacute; tr&igrave;nh phỏng vấn.</li>
</ul>

<p>* Y&ecirc;u cầu:</p>

<ul>
	<li>Tốt nghiệp đại học chuy&ecirc;n ng&agrave;nh c&ocirc;ng nghệ th&ocirc;ng tin, to&aacute;n tin;</li>
	<li>Sử dụng th&agrave;nh thạo ng&ocirc;n ngữ lập tr&igrave;nh .NET, m&ocirc; h&igrave;nh MVC, AngularJS, Restful api, Webservice v&agrave; database Oracle, Sql.</li>
	<li>C&oacute; hiểu biết về lập tr&igrave;nh Java, TCP/IP l&agrave; một lợi thế;</li>
	<li>C&oacute; khả năng l&agrave;m việc độc lập v&agrave; l&agrave;m việc nh&oacute;m trong m&ocirc;i trường &aacute;p lực cao;</li>
	<li>Ham học hỏi v&agrave; t&igrave;m hiểu c&aacute;c C&ocirc;ng nghệ mới;</li>
	<li>C&oacute; khả năng đọc hiểu t&agrave;i liệu Tiếng Anh chuy&ecirc;n ng&agrave;nh;</li>
	<li>Ưu ti&ecirc;n c&aacute;c ứng vi&ecirc;n đ&atilde; c&oacute; kinh nghiệm tham gia c&aacute;c dự &aacute;n về Ng&acirc;n h&agrave;ng v&agrave; viễn th&ocirc;ng;</li>
	<li>Kỹ năng l&agrave;m việc theo nh&oacute;m, l&agrave;m việc độc lập;</li>
	<li>Tư duy logic tốt, c&oacute; khả năng ph&acirc;n t&iacute;ch, học hỏi nhanh.&nbsp;</li>
</ul>

<p>* Chế độ đ&atilde;i ngộ:</p>

<ul>
	<li>Mức lương thỏa thuận theo năng lực.</li>
	<li>Chế độ đ&atilde;i ngộ hấp dẫn cạnh tranh với c&aacute;c c&ocirc;ng ty kh&aacute;c tr&ecirc;n thị trường: phục vụ bữa ăn s&aacute;ng miễn ph&iacute;, hỗ trợ cơm trưa (40.000đ/ng&agrave;y), cung cấp hoa quả v&agrave; đồ uống miễn ph&iacute; tại văn ph&ograve;ng, hỗ trợ trang điểm cho nh&acirc;n vi&ecirc;n nữ, hỗ trợ ưu đ&atilde;i cho CBNV mua nh&agrave;, thưởng cổ phiếu cho CBNV c&oacute; nhiều đ&oacute;ng g&oacute;p cho C&ocirc;ng ty&hellip;.</li>
	<li>M&ocirc;i trường l&agrave;m việc cởi mở, trẻ trung, th&acirc;n thiện, nhiều cơ hội thăng tiến trong c&ocirc;ng việc, c&ugrave;ng học hỏi với 300 đồng nghiệp trẻ trung th&acirc;n thiện với bề d&agrave;y th&agrave;nh t&iacute;ch hoạt động hơn 10 năm trong lĩnh vực giải ph&aacute;p thanh to&aacute;n</li>
	<li>Chế độ thưởng v&agrave;o c&aacute;c dịp lễ Tết, thưởng h&agrave;ng năm theo th&acirc;m ni&ecirc;n v&agrave; kết quả kinh doanh của c&ocirc;ng ty.</li>
	<li>Hưởng đầy đủ c&aacute;c chế độ BHXH, được tham gia bảo hi&ecirc;̉m sức khỏe cao cấp theo chính sách ri&ecirc;ng của c&ocirc;ng ty với rất nhiều quyền lợi d&agrave;nh cho người lao động v&agrave; người th&acirc;n khi tham gia bảo hiểm.</li>
	<li>Được tham gia các chương trình teambuilding, nghỉ mát, du xu&acirc;n, ng&agrave;y hội gia đ&igrave;nh do c&ocirc;ng ty t&ocirc;̉ chức hàng năm tại các địa đi&ecirc;̉m du lịch, resort cao c&acirc;́p.</li>
	<li>Được tham gia nhiều hoạt động tập thể s&aacute;ng tạo, CLB tennis, b&oacute;ng đ&aacute;, bơi lội, cầu l&ocirc;ng, b&oacute;ng b&agrave;n, hoạt động thiện nguyện ...</li>
</ul>

<p>*Hồ sơ bao gồm:</p>

<p>- CV (m&ocirc; tả r&otilde; qu&aacute; tr&igrave;nh học tập v&agrave; l&agrave;m việc).</p>

<p>- Sơ yếu l&yacute; lịch, giấy kh&aacute;m sức khỏe,</p>

<p>- Bằng tốt nghiệp v&agrave; c&aacute;c chứng chỉ li&ecirc;n quan;</p>
', NULL, 0, 105, 1, CAST(0xCC3D0B00 AS Date), 0, 0)
INSERT [dbo].[Job] ([JOB_ID], [GROUP_ID], [JOB_NAME], [NUMBER], [SALARY], [CREATED_DATE], [EXPIRED_DATE], [JOB_DECRIPTION], [IMAGE], [ISDELETED], [VIEW_COUNT], [JOB_STATUS], [UPDATED_ON], [CV_APPLY_COUNT], [ACTIVE_BANNER]) VALUES (82, 46, N'Chuyên viên Marketing', 3, NULL, CAST(0xCD3D0B00 AS Date), CAST(0xB83D0B00 AS Date), N'<p style="text-align:justify">NH&Acirc;N VI&Ecirc;N MARKETING</p>

<p style="text-align:justify">* Số lượng cần tuyển: 03</p>

<p style="text-align:justify">* Địa điểm l&agrave;m việc: 22 L&aacute;ng Hạ - Đống Đa- H&agrave; Nội</p>

<p style="text-align:justify">* Thời gian l&agrave;m việc: 8h30 &ndash; 12h, 13h &ndash; 17h30 thứ hai &ndash; thứ s&aacute;u h&agrave;ng tuần, thứ bảy l&agrave;m buổi s&aacute;ng.</p>

<p style="text-align:justify">* M&ocirc; tả c&ocirc;ng việc:</p>

<p style="margin-left:0.5in; text-align:justify">+Lập kế hoạch v&agrave; triển khai c&aacute;c chiến dịch marketing cho c&aacute;c sản phẩm của VNPAY;</p>

<p style="margin-left:0.5in; text-align:justify">+Gi&aacute;m s&aacute;t qu&aacute; tr&igrave;nh thực hiện chiến dịch, kịp thời đề xuất c&aacute;c phương &aacute;n, giải ph&aacute;p nhằm đảm bảo đạt được kết quả mục ti&ecirc;u đề ra;</p>

<p style="margin-left:0.5in; text-align:justify">+Duy tr&igrave;, x&acirc;y dựng mối quan hệ với giới truyền th&ocirc;ng;</p>

<p style="margin-left:0.5in; text-align:justify">+Tổng hợp, ph&acirc;n t&iacute;ch số liệu v&agrave; thực hiện b&aacute;o c&aacute;o theo chiến dịch v&agrave; định kỳ;</p>

<p style="margin-left:0.5in; text-align:justify">+C&aacute;c c&ocirc;ng việc kh&aacute;c theo y&ecirc;u cầu của Ban L&atilde;nh đạo.</p>

<p style="text-align:justify">* Y&ecirc;u cầu:</p>

<p style="margin-left:0.5in; text-align:justify">+Tốt nghiệp đại học trở l&ecirc;n ng&agrave;nh Marketing, Kinh doanh, b&aacute;o ch&iacute;, truyền th&ocirc;ng;</p>

<p style="margin-left:0.5in; text-align:justify">+C&oacute; &iacute;t nhất 1 năm kinh nghiệm tại vị tr&iacute; tương đương;</p>

<p style="margin-left:0.5in; text-align:justify">+Ưu ti&ecirc;n c&aacute;c ứng vi&ecirc;n c&oacute; thể đi l&agrave;m ngay.</p>

<p style="margin-left:0.5in; text-align:justify">+Sử dụng th&agrave;nh thạo Microsoft Office, sử dụng tốt c&aacute;c phần mềm hỗ trợ hoạt động Marketing;</p>

<p style="margin-left:0.5in; text-align:justify">+Hiểu biết v&agrave; sử dụng tốt c&aacute;c c&ocirc;ng cụ marketing truyền thống v&agrave; digital marketing. C&oacute; kinh nghiệm triển khai c&aacute;c chiến dịch marketing;</p>

<p style="margin-left:0.5in; text-align:justify">+C&oacute; khả năng định hướng v&agrave; x&acirc;y dựng content;</p>

<p style="margin-left:0.5in; text-align:justify">+C&oacute; kỹ năng viết tốt, c&oacute; kinh nghiệm viết b&agrave;i PR;</p>

<p style="margin-left:0.5in; text-align:justify">+S&aacute;ng tạo, tư duy tổng hợp v&agrave; ph&acirc;n t&iacute;ch tốt;</p>

<p style="margin-left:0.5in; text-align:justify">+C&oacute; khả năng nghi&ecirc;n cứu t&agrave;i liệu tiếng Anh, tiếng Anh giao tiếp tốt;</p>

<p style="margin-left:0.5in; text-align:justify">+Kỹ năng quản l&yacute;, thuyết tr&igrave;nh, l&agrave;m việc nh&oacute;m;</p>

<p style="margin-left:0.5in; text-align:justify">+C&oacute; khả năng chịu được &aacute;p lực c&ocirc;ng việc;</p>

<p style="margin-left:0.5in; text-align:justify">+Năng động, nhiệt t&igrave;nh, s&aacute;ng tạo, c&oacute; tinh thần tr&aacute;ch nhiệm cao trong c&ocirc;ng việc;</p>

<p style="margin-left:0.5in; text-align:justify">+Cầu thị, trung thực, nhiệt huyết;</p>

<p style="margin-left:0.5in; text-align:justify">+Ưu ti&ecirc;n ứng vi&ecirc;n đ&atilde; từng l&agrave;m việc tại c&aacute;c đơn vị agency về quảng c&aacute;o, lập kế hoạch truyền th&ocirc;ng.</p>

<p style="text-align:justify">* Chế độ đ&atilde;i ngộ:</p>

<p style="margin-left:0.5in; text-align:justify">+Mức lương thỏa thuận theo năng lực.</p>

<p style="margin-left:0.5in; text-align:justify">+Chế độ đ&atilde;i ngộ hấp dẫn cạnh tranh với c&aacute;c c&ocirc;ng ty kh&aacute;c tr&ecirc;n thị trường: phục vụ bữa ăn s&aacute;ng miễn ph&iacute;, hỗ trợ cơm trưa (40.000đ/ng&agrave;y), cung cấp hoa quả v&agrave; đồ uống miễn ph&iacute; tại văn ph&ograve;ng, hỗ trợ tran</p>
', NULL, 0, 20, 1, CAST(0xEB3D0B00 AS Date), 0, 0)
INSERT [dbo].[Job] ([JOB_ID], [GROUP_ID], [JOB_NAME], [NUMBER], [SALARY], [CREATED_DATE], [EXPIRED_DATE], [JOB_DECRIPTION], [IMAGE], [ISDELETED], [VIEW_COUNT], [JOB_STATUS], [UPDATED_ON], [CV_APPLY_COUNT], [ACTIVE_BANNER]) VALUES (84, 34, N'Lập trình viên .Net', 5, NULL, CAST(0xC93D0B00 AS Date), CAST(0x0F3E0B00 AS Date), N'<p style="text-align:justify"><strong>LẬP TR&Igrave;NH VI&Ecirc;N .Net</strong></p>

<p style="text-align:justify"><strong>* Số lượng cần tuyển: 03</strong></p>

<p style="text-align:justify"><strong>* Địa điểm l&agrave;m việc: 22 L&aacute;ng Hạ - Đống Đa- H&agrave; Nội</strong></p>

<p style="text-align:justify"><strong>* Thời gian l&agrave;m việc: 8h30 &ndash; 12h, 13h &ndash; 17h30 thứ hai &ndash; thứ s&aacute;u h&agrave;ng tuần, thứ bảy l&agrave;m buổi s&aacute;ng.</strong></p>

<p style="text-align:justify">* <strong>M&ocirc; tả c&ocirc;ng việc:</strong></p>

<ul>
	<li style="text-align:justify">Tham gia x&acirc;y dựng v&agrave; ph&aacute;t triển c&aacute;c dự &aacute;n của C&ocirc;ng ty;</li>
	<li style="text-align:justify">Tham gia ph&acirc;n t&iacute;ch, thiết kế, ph&aacute;t triển v&agrave; bảo tr&igrave; ứng dụng.</li>
	<li style="text-align:justify">Hỗ trợ đối t&aacute;c viễn th&ocirc;ng, ng&acirc;n h&agrave;ng v&agrave; c&aacute;c ph&ograve;ng ban kh&aacute;c;</li>
	<li style="text-align:justify">C&ocirc;ng việc sẽ được trao đổi cụ thể hơn trong qu&aacute; tr&igrave;nh phỏng vấn.</li>
</ul>

<p style="text-align:justify"><strong>* Y&ecirc;u cầu: </strong></p>

<ul>
	<li style="text-align:justify">Tốt nghiệp đại học chuy&ecirc;n ng&agrave;nh c&ocirc;ng nghệ th&ocirc;ng tin, to&aacute;n tin;</li>
	<li style="text-align:justify">Sử dụng tốt ng&ocirc;n ngữ lập tr&igrave;nh .NET, m&ocirc; h&igrave;nh MVC, AngularJS, Restful api, Webservice v&agrave; database Oracle, Sql.</li>
	<li style="text-align:justify">C&oacute; hiểu biết về lập tr&igrave;nh Java, TCP/IP l&agrave; một lợi thế;</li>
	<li style="text-align:justify">C&oacute; khả năng l&agrave;m việc độc lập v&agrave; l&agrave;m việc nh&oacute;m trong m&ocirc;i trường &aacute;p lực cao;</li>
	<li style="text-align:justify">Ham học hỏi v&agrave; t&igrave;m hiểu c&aacute;c C&ocirc;ng nghệ mới;</li>
	<li style="text-align:justify">C&oacute; khả năng đọc hiểu t&agrave;i liệu Tiếng Anh chuy&ecirc;n ng&agrave;nh;</li>
	<li style="text-align:justify">Ưu ti&ecirc;n c&aacute;c ứng vi&ecirc;n đ&atilde; c&oacute; kinh nghiệm tham gia c&aacute;c dự &aacute;n về Ng&acirc;n h&agrave;ng v&agrave; viễn th&ocirc;ng;</li>
	<li style="text-align:justify">Kỹ năng l&agrave;m việc theo nh&oacute;m, l&agrave;m việc độc lập;</li>
	<li style="text-align:justify">Tư duy logic tốt, c&oacute; khả năng ph&acirc;n t&iacute;ch, học hỏi nhanh.&nbsp;</li>
</ul>

<p style="text-align:justify"><strong>* Chế độ đ&atilde;i ngộ:</strong></p>

<ul>
	<li style="text-align:justify">Mức lương thỏa thuận theo năng lực.</li>
	<li style="text-align:justify">Chế độ đ&atilde;i ngộ hấp dẫn cạnh tranh với c&aacute;c c&ocirc;ng ty kh&aacute;c tr&ecirc;n thị trường: phục vụ bữa ăn s&aacute;ng miễn ph&iacute;, hỗ trợ cơm trưa (40.000đ/ng&agrave;y), cung cấp hoa quả v&agrave; đồ uống miễn ph&iacute; tại văn ph&ograve;ng, hỗ trợ trang điểm cho nh&acirc;n vi&ecirc;n nữ, hỗ trợ ưu đ&atilde;i cho CBNV mua nh&agrave;, thưởng cổ phiếu cho CBNV c&oacute; nhiều đ&oacute;ng g&oacute;p cho C&ocirc;ng ty&hellip;.</li>
	<li style="text-align:justify">Nghỉ m&aacute;t du lịch 2 lần/năm</li>
	<li style="text-align:justify">M&ocirc;i trường l&agrave;m việc cởi mở, trẻ trung, th&acirc;n thiện, nhiều cơ hội thăng tiến trong c&ocirc;ng việc, c&ugrave;ng học hỏi với 400 đồng nghiệp trẻ trung th&acirc;n thiện với bề d&agrave;y th&agrave;nh t&iacute;ch hoạt động hơn 10 năm trong lĩnh vực giải ph&aacute;p thanh to&aacute;n.</li>
	<li style="text-align:justify">Chế độ thưởng v&agrave;o c&aacute;c dịp lễ Tết, thưởng h&agrave;ng năm theo th&acirc;m ni&ecirc;n v&agrave; kết quả kinh doanh của c&ocirc;ng ty.</li>
	<li style="text-align:justify">Hưởng đầy đủ c&aacute;c chế độ BHXH, được tham gia bảo hi&ecirc;̉m sức khỏe cao cấp theo chính sách ri&ecirc;ng của c&ocirc;ng ty với rất nhiều quyền lợi d&agrave;nh cho người lao động v&agrave; người th&acirc;n khi tham gia bảo hiểm.</li>
</ul>

<p style="text', NULL, 0, 21, 1, CAST(0xCD3D0B00 AS Date), 1, 0)
INSERT [dbo].[Job] ([JOB_ID], [GROUP_ID], [JOB_NAME], [NUMBER], [SALARY], [CREATED_DATE], [EXPIRED_DATE], [JOB_DECRIPTION], [IMAGE], [ISDELETED], [VIEW_COUNT], [JOB_STATUS], [UPDATED_ON], [CV_APPLY_COUNT], [ACTIVE_BANNER]) VALUES (85, 33, N'Nhân viên phân tích nghiệp vụ', 5, NULL, CAST(0xC93D0B00 AS Date), CAST(0x0F3E0B00 AS Date), N'<p style="text-align:justify"><img alt="" src="https://media.kyna.vn/uploads/courses/887/img/video_cover_image_url-1508523504.crop-730x436.jpg" style="height:436px; width:730px" /></p>

<p style="text-align:justify"><strong>* Thời gian l&agrave;m việc: Giờ h&agrave;nh ch&iacute;nh, thứ 2 &ndash;thứ 6 h&agrave;ng tuần, thứ bảy l&agrave;m buổi s&aacute;ng</strong></p>

<p style="text-align:justify">* <strong>M&ocirc; tả c&ocirc;ng việc:</strong></p>

<ul>
	<li style="text-align:justify">Khảo s&aacute;t, thu thập y&ecirc;u cầu v&agrave; thống nhất với Kh&aacute;ch h&agrave;ng.</li>
	<li style="text-align:justify">Ph&acirc;n t&iacute;ch v&agrave; định nghĩa phạm vi y&ecirc;u cầu nghiệp vụ, y&ecirc;u cầu người d&ugrave;ng, y&ecirc;u cầu chức năng c&aacute;c sản phẩm, dịch vụ với Kh&aacute;ch h&agrave;ng hoặc đối t&aacute;c hoặc c&aacute;c bộ phận y&ecirc;u cầu.</li>
	<li style="text-align:justify">X&acirc;y dựng, m&ocirc; tả/đặc tả chức năng, nghiệp vụ cho c&aacute;c sản phẩm/dịch vụ: URD, SRS.</li>
	<li style="text-align:justify">Thống nhất nghiệp vụ với Kh&aacute;ch h&agrave;ng bằng c&aacute;c t&agrave;i liệu URD, SRS.</li>
	<li style="text-align:justify">X&acirc;y dựng c&aacute;c t&agrave;i liệu phục vụ c&ocirc;ng việc ph&acirc;n t&iacute;ch nghiệp vụ.</li>
	<li style="text-align:justify">X&acirc;y dựng c&aacute;c t&agrave;i liệu nghiệp vụ: t&agrave;i liệu URD, SRS.</li>
	<li style="text-align:justify">Đ&aacute;nh gi&aacute; t&agrave;i liệu nghiệp vụ theo checklist đ&atilde; thống nhất.</li>
	<li style="text-align:justify">R&agrave; so&aacute;t v&agrave; đ&aacute;nh gi&aacute; sản phẩm trước khi giao h&agrave;ng cho Kh&aacute;ch h&agrave;ng (nếu c&oacute;)</li>
	<li style="text-align:justify">Quản l&yacute; c&aacute;c hồ sơ, t&agrave;i liệu bản mềm của dự &aacute;n phụ tr&aacute;ch.</li>
	<li style="text-align:justify">Chịu tr&aacute;ch nhiệm l&agrave;m thư k&yacute; c&aacute;c dự &aacute;n tham gia (nếu cần)Thực hiện tốt c&aacute;c c&ocirc;ng việc kh&aacute;c khi được giao.</li>
</ul>

<p style="text-align:justify"><strong>* Y&ecirc;u cầu: </strong></p>

<ul>
	<li style="text-align:justify">C&oacute; &iacute;t nhất 1 năm kinh nghiệm l&agrave;m việc tại vị tr&iacute; tương đương.</li>
	<li style="text-align:justify">Tốt nghiệp Đại học ng&agrave;nh CNTT, To&aacute;n tin, Điện tử viễn th&ocirc;ng, Thương mại điện tử hoặc tương đương.</li>
	<li style="text-align:justify">C&oacute; khả năng nghi&ecirc;n cứu, đọc viết c&aacute;c t&agrave;i liệu bằng tiếng Anh.</li>
	<li style="text-align:justify">C&oacute; kỹ năng tư vấn v&agrave; thuyết phục kh&aacute;ch h&agrave;ng.</li>
	<li style="text-align:justify">Khả năng giao tiếp hiệu quả, l&agrave;m cầu nối giữa đối t&aacute;c triển khai, nh&agrave; cung cấp giải ph&aacute;p, c&aacute;c nh&oacute;m nội bộ v&agrave; c&aacute;c bộ phận kh&aacute;c để thu thập v&agrave; trao đổi c&aacute;c y&ecirc;u cầu nghiệp vụ/chức năng.</li>
	<li style="text-align:justify">C&oacute; khả năng tư vấn tr&ecirc;n g&oacute;c độ nghiệp vụ dựa v&agrave;o c&aacute;c ph&acirc;n t&iacute;ch v&agrave; nghi&ecirc;n cứu của m&igrave;nh.</li>
	<li style="text-align:justify">C&oacute; kỹ năng v&agrave; kinh nghiệm test l&agrave; một lợi thế.</li>
	<li style="text-align:justify">Khả năng suy luận, tư duy logic tốt về ph&acirc;n t&iacute;ch hệ thống, quy tr&igrave;nh nghiệp vụ v&agrave; đặc tả y&ecirc;u cầu.</li>
	<li style="text-align:justify">C&oacute; kinh nghiệm l&agrave;m việc với c&aacute;c giải ph&aacute;p thanh to&aacute;n trực tuyến v&agrave; phần mềm tr&ecirc;n mobile hay PC li&ecirc;n quan đến Ng&acirc;n h&agrave;ng l&agrave; một lợi thế lớn.</li>
	<li style="text-align:justify">Ưu ti&ecirc;n những người c&oacute; kinh nghiệm ph&acirc;n t&iacute;ch nghiệp vụ ứng dụng mobile, web.</li>
	<li style="text-align:justify">C&oacute; tinh thần l&agrave;m việc theo nh&oacute;m, tinh thần tr&aacute;ch nhiệm cao, đặt hiệu quả v&agrave; thời hạn c&ocirc;ng việc l&ecirc;n h&agrave;ng đầu. Sẵn', NULL, 0, 31, 1, CAST(0xCC3D0B00 AS Date), 4, 0)
INSERT [dbo].[Job] ([JOB_ID], [GROUP_ID], [JOB_NAME], [NUMBER], [SALARY], [CREATED_DATE], [EXPIRED_DATE], [JOB_DECRIPTION], [IMAGE], [ISDELETED], [VIEW_COUNT], [JOB_STATUS], [UPDATED_ON], [CV_APPLY_COUNT], [ACTIVE_BANNER]) VALUES (90, 35, N'Nhân viên trực tổng đài chăm sóc khách hàng', 6, NULL, CAST(0xCD3D0B00 AS Date), CAST(0x0F3E0B00 AS Date), N'<p style="text-align:justify"><strong>NH&Acirc;N VI&Ecirc;N TRỰC TỔNG Đ&Agrave;I CHĂM S&Oacute;C KH&Aacute;CH H&Agrave;NG</strong></p>

<p style="text-align:justify"><strong>* Số lượng cần tuyển: 6 Nữ</strong></p>

<p style="text-align:justify"><strong>* Vị tr&iacute; l&agrave;m việc: Tổng đ&agrave;i vi&ecirc;n- Ph&ograve;ng chăm s&oacute;c kh&aacute;ch h&agrave;ng</strong></p>

<p style="text-align:justify"><strong>* Địa điểm l&agrave;m việc: &nbsp;22 L&aacute;ng Hạ - Đống Đa- H&agrave; Nội</strong></p>

<p style="text-align:justify"><strong>* Thời gian l&agrave;m việc: theo ca xoay. Nghỉ 1 ng&agrave;y/tuần, được hưởng chế độ nghỉ ph&eacute;p khi l&agrave; nh&acirc;n vi&ecirc;n ch&iacute;nh thức</strong></p>

<p style="text-align:justify"><strong>Ca 1: từ 7h30 đến 15h</strong></p>

<p style="text-align:justify"><strong>Ca 2: từ 15h đến 22h</strong></p>

<p style="text-align:justify">* <strong>M&ocirc; tả c&ocirc;ng việc:</strong></p>

<ul>
	<li style="text-align:justify">Trực tổng đ&agrave;i chăm s&oacute;c kh&aacute;ch h&agrave;ng của C&ocirc;ng ty</li>
	<li style="text-align:justify">Giới thiệu, giải đ&aacute;p c&aacute;c thắc mắc v&agrave; hướng dẫn c&aacute;ch sử dụng dịch vụ của C&ocirc;ng ty cho kh&aacute;ch h&agrave;ng.</li>
	<li style="text-align:justify">Tiếp nhận th&ocirc;ng tin, trực tiếp tra cứu, hỗ trợ th&ocirc;ng tin cho kh&aacute;ch h&agrave;ng.</li>
	<li style="text-align:justify">Ghi nhận v&agrave; chuyển c&aacute;c phản &aacute;nh của kh&aacute;ch h&agrave;ng tới bộ phận xử l&yacute; cấp tr&ecirc;n.</li>
</ul>

<p style="text-align:justify"><strong>* Y&ecirc;u cầu: </strong></p>

<ul>
	<li style="text-align:justify">Tốt nghiệp cao đẳng trở l&ecirc;n c&aacute;c ng&agrave;nh t&agrave;i ch&iacute;nh, ng&acirc;n h&agrave;ng, kế to&aacute;n, c&ocirc;ng nghệ th&ocirc;ng tin.</li>
	<li style="text-align:justify">Sử dụng tốt tin học văn ph&ograve;ng: Word, Excel, Internet.</li>
	<li style="text-align:justify">Ưa nh&igrave;n, tuổi từ 20-25</li>
	<li style="text-align:justify">Giọng n&oacute;i dễ nghe, kh&ocirc;ng n&oacute;i ngọng, kh&ocirc;ng n&oacute;i lắp, kh&ocirc;ng n&oacute;i tiếng địa phương, diễn đạt tho&aacute;t &yacute;.</li>
	<li style="text-align:justify">Khả năng tiếp thu v&agrave; giao tiếp tốt, chủ động trong c&ocirc;ng việc, c&oacute; khả năng ph&acirc;n t&iacute;ch v&agrave; xử l&yacute; th&ocirc;ng tin.</li>
	<li style="text-align:justify">Nhiệt t&igrave;nh, cẩn thận, nhẹ nh&agrave;ng, ki&ecirc;n nhẫn.&nbsp;</li>
	<li style="text-align:justify">Ưu ti&ecirc;n c&aacute;c ứng vi&ecirc;n c&oacute; kinh nghiệm trực tổng đ&agrave;i dịch vụ; c&oacute; kiến thức về ng&agrave;nh t&agrave;i ch&iacute;nh, ng&acirc;n h&agrave;ng, thương mại điện tử.</li>
</ul>

<p style="text-align:justify"><strong>* Chế độ đ&atilde;i ngộ:</strong></p>

<ul>
	<li style="text-align:justify">Thu nhập: từ 5 triệu - 6 triệu đồng theo hiệu quả c&ocirc;ng việc v&agrave; c&aacute;c khoản phụ cấp kh&aacute;c.</li>
	<li style="text-align:justify">Được đ&agrave;o tạo kỹ năng giao tiếp, thuyết tr&igrave;nh, chăm s&oacute;c kh&aacute;ch h&agrave;ng, l&agrave;m việc nh&oacute;m v&agrave; chuy&ecirc;n m&ocirc;n nghiệp vụ theo y&ecirc;u cầu của c&ocirc;ng việc để ph&aacute;t huy tốt nhất khả năng, năng lực của bản th&acirc;n;</li>
	<li style="text-align:justify">Thời gian thử việc: 2 th&aacute;ng. Sau thử việc nếu đạt sẽ k&yacute; hợp đồng lao động ch&iacute;nh thức v&agrave; hưởng c&aacute;c quyền lợi theo đ&uacute;ng luật lao động (được đ&oacute;ng BHXH, BHYT, KPCĐ ngay khi được tiếp nhận ch&iacute;nh thức, hưởng chế độ nghỉ ph&eacute;p theo quy định của Luật Lao động);</li>
	<li style="text-align:justify">C&oacute; cơ hội lu&acirc;n chuyển, thay đổi c&ocirc;ng việc cho ph&ugrave; hợp với năng lực, sở trường;</li>
	<li style="text-align:justify">Chế độ đ&atilde;i ngộ hấp dẫn cạnh tranh với c&aacute;c c&ocirc;ng ty kh&aacute;c tr&ecirc;n thị trường: hỗ trợ cơm trưa (40.000đ/ng&agrave;y), hỗ trợ trang ', NULL, 0, 14, 1, CAST(0xCD3D0B00 AS Date), 0, 0)
INSERT [dbo].[Job] ([JOB_ID], [GROUP_ID], [JOB_NAME], [NUMBER], [SALARY], [CREATED_DATE], [EXPIRED_DATE], [JOB_DECRIPTION], [IMAGE], [ISDELETED], [VIEW_COUNT], [JOB_STATUS], [UPDATED_ON], [CV_APPLY_COUNT], [ACTIVE_BANNER]) VALUES (92, 37, N'Nhân viên quản trị hệ thống Network', 2, NULL, CAST(0xCD3D0B00 AS Date), CAST(0xF03D0B00 AS Date), N'<p style="text-align: justify;"><strong>NH&Acirc;N VI&Ecirc;N QUẢN TRỊ HỆ THỐNG (Network)</strong></p>

<p style="text-align: justify;"><strong>* Số lượng cần tuyển: 01 người</strong></p>

<p style="text-align: justify;"><strong>* Vị tr&iacute; l&agrave;m việc: Nh&acirc;n vi&ecirc;n&nbsp; Ph&ograve;ng Quản trị an ninh hệ thống</strong></p>

<p style="text-align: justify;"><strong>* Địa điểm l&agrave;m việc: 22 L&aacute;ng Hạ Đống Đa - H&agrave; Nội</strong></p>

<p style="text-align: justify;"><strong>* Thời gian l&agrave;m việc: 8h30 &ndash; 12h, 13h00 &ndash; 17h30 thứ hai &ndash; thứ s&aacute;u h&agrave;ng tuần, thứ bảy l&agrave;m buổi s&aacute;ng.</strong></p>

<p style="text-align: justify;">* <strong>M&ocirc; tả c&ocirc;ng việc:</strong></p>

<ul>
	<li style="text-align: justify;">Chịu tr&aacute;ch nhiệm thực hiện c&aacute;c c&ocirc;ng t&aacute;c quản trị, cấu h&igrave;nh, triển khai v&agrave; bảo tr&igrave; hệ thống mạng c&ocirc;ng ty tại DC, DR, Trung t&acirc;m miền, kết nối đến đối t&aacute;c;</li>
	<li style="text-align: justify;">Lập kế hoạch v&agrave; thiết kế hệ thống mạng;</li>
	<li style="text-align: justify;">Gi&aacute;m s&aacute;t hệ thống mạng LAN, WAN từ DC, DR, Trung t&acirc;m miền, đối t&aacute;c;</li>
	<li style="text-align: justify;">Quản trị, gi&aacute;m s&aacute;t c&aacute;c hệ thống, dịch vụ hạ tầng đ&atilde; được triển khai cung cấp cho người sử dụng; đảm bảo cam kết về hoạt động (OLA) v&agrave; dịch vụ (SLA) của hệ thống</li>
	<li style="text-align: justify;">Thực hiện khắc phục, xử l&yacute; c&aacute;c sự cố, c&aacute;c lỗi xảy ra li&ecirc;n quan đến mạng trong phạm vi ng&acirc;n h&agrave;ng;</li>
	<li style="text-align: justify;">Nghi&ecirc;n cứu, chuyển giao c&aacute;c sản phẩm, giải ph&aacute;p c&ocirc;ng nghệ mạng;</li>
	<li style="text-align: justify;">Tham gia x&acirc;y dựng danh mục c&aacute;c dịch vụ v&agrave; bản cam kết chất lượng dịch vụ (SLA) cho c&aacute;c dịch vụ cung cấp.</li>
	<li style="text-align: justify;">Nghi&ecirc;n cứu, thử nghiệm c&aacute;c giải ph&aacute;p mới;</li>
	<li style="text-align: justify;">Triển khai dự &aacute;n của c&ocirc;ng ty</li>
	<li style="text-align: justify;">X&acirc;y dựng ch&iacute;nh s&aacute;ch, quy tr&igrave;nh, quy định, ti&ecirc;u chuẩn về An to&agrave;n CNTT;</li>
	<li style="text-align: justify;">Thực hiện c&aacute;c nhiệm vụ kh&aacute;c do Ban L&atilde;nh đạo, Trưởng ph&ograve;ng giao.</li>
</ul>

<p style="text-align: justify;"><strong>* Y&ecirc;u cầu: </strong></p>

<ul>
	<li style="text-align: justify;">Tr&igrave;nh độ chuy&ecirc;n m&ocirc;n:&nbsp;Tốt nghiệp Đại học ch&iacute;nh quy ng&agrave;nh CNTT, Điện tử Viễn th&ocirc;ng, hoặc tương đương.</li>
	<li style="text-align: justify;">Tr&igrave;nh độ ngoại ngữ:&nbsp;Tiếng Anh chứng chỉ C (hoặc tương đương) trở l&ecirc;n, sử dụng tốt tiếng Anh đọc hiểu c&aacute;c t&agrave;i liệu li&ecirc;n quan đến c&ocirc;ng việc phụ tr&aacute;ch.</li>
	<li style="text-align: justify;">C&oacute; kinh nghiệm 01 năm trở l&ecirc;n ở vị tr&iacute; tương đương;</li>
	<li style="text-align: justify;">C&oacute; kiến thức tốt về quản trị c&aacute;c hệ thống hạ tầng CNTT.</li>
	<li style="text-align: justify;">C&oacute; kiến thức, kinh nghiệm chuy&ecirc;n m&ocirc;n cụ thể như sau:
	<ul style="list-style-type:circle">
		<li>Quản trị c&aacute;c hệ thống Network (Switch, Router), Firewall;</li>
		<li>Kinh nghiệm triển khai, quản trị gi&aacute;m s&aacute;t hệ thống Mạng, hệ thống Internet, hệ thốngWireless,&hellip;;</li>
		<li>C&oacute; kiến thức v&agrave; am hiểu vềNetwork Routing, Switching, Network Security (IPS,Firewall, Wireless);</li>
		<li>Kỹ năng, kinh nghiệm khắc phục v&agrave; xử l&yacute; c&aacute;c sự cố về hệ thống Mạng;</li>
		<li>Thiết kế hệ thống mạng LAN, WAN</li>
	</ul>
	</li>
	<li style="text-align: justify;">Kỹ năng:
	<ul style="list-style-type:circle">
		<li>Kỹ năng nghi&ecirc;n cứu, thử nghiệm c&ocirc;ng nghệ mới</li>
		<li>Kỹ năng l&agrave;m việc theo nh&oacute;m</li>
	</ul>
	</li>
	<li style="text-align: justify;">Khả năng:
	<ul style="list-style-type:circle">
		<li>Ph&acirc;n t&iacute;ch/ph&aacute;n đo&aacute;n</li>
		<li>Tư duy Logic</li>
	</ul>
	</li>
	<li style="text-align: justify;">Phẩm chất c&aacute; nh&acirc;n:
	<ul style="list-style-type:circle">
		<li>Tinh thần tr&aacute;ch nhiệm cao</li>
		<li>Chủ động trong c&ocirc;ng việc</li>
		<li>Tu&acirc;n thủ kỷ luật</li>
		<li>C&oacute; &yacute; ch&iacute; quyết t&acirc;m ho&agrave;n th&agrave;nh mục ti&ecirc;u c&ocirc;ng việc được giao</li>
	</ul>
	</li>
	<li style="text-align: justify;">Ưu ti&ecirc;n:
	<ul style="list-style-type:circle">
		<li>C&oacute; kinh nghiệm triển khai c&aacute;c dự &aacute;n lớn li&ecirc;n quan đến hệ thống mạng;</li>
		<li>C&oacute; c&aacute;c chứng chỉ quốc tế li&ecirc;n quan: CCNA, CCNP, CCSP;</li>
		<li>C&oacute; khả năng lập tr&igrave;nh hệ thống/lập tr&igrave;nh đối với một số c&aacute;c thiết bị mạng;</li>
		<li>C&oacute; kiến thức, kinh nghiệm về quản l&yacute; dịch vụ CNTT (ITIL);</li>
	</ul>
	</li>
</ul>

<p style="text-align: justify;"><strong>* Chế độ đ&atilde;i ngộ:</strong></p>

<ul>
	<li style="text-align: justify;">Mức lương thỏa thuận theo năng lực.</li>
	<li style="text-align: justify;">Chế độ đ&atilde;i ngộ hấp dẫn cạnh tranh với c&aacute;c c&ocirc;ng ty kh&aacute;c tr&ecirc;n thị trường: phục vụ bữa ăn s&aacute;ng miễn ph&iacute;, hỗ trợ cơm trưa (40.000đ/ng&agrave;y), cung cấp hoa quả v&agrave; đồ uống miễn ph&iacute; tại văn ph&ograve;ng, hỗ trợ trang điểm cho nh&acirc;n vi&ecirc;n nữ, hỗ trợ ưu đ&atilde;i cho CBNV mua nh&agrave;, thưởng cổ phiếu cho CBNV c&oacute; nhiều đ&oacute;ng g&oacute;p cho C&ocirc;ng ty&hellip;.</li>
	<li style="text-align: justify;">M&ocirc;i trường l&agrave;m việc cởi mở, trẻ trung, th&acirc;n thiện, nhiều cơ hội thăng tiến trong c&ocirc;ng việc, c&ugrave;ng học hỏi với 200 đồng nghiệp trẻ trung th&acirc;n thiện với bề d&agrave;y th&agrave;nh t&iacute;ch hoạt động hơn 8 năm trong lĩnh vực giải ph&aacute;p thanh to&aacute;n</li>
	<li style="text-align: justify;">Chế độ thưởng v&agrave;o c&aacute;c dịp lễ Tết, thưởng h&agrave;ng năm theo th&acirc;m ni&ecirc;n v&agrave; kết quả kinh doanh của c&ocirc;ng ty (Từ 1 đến 6 th&aacute;ng lương).</li>
	<li style="text-align: justify;">Hưởng đầy đủ c&aacute;c chế độ BHXH, được tham gia bảo hi&ecirc;̉m sức khỏe cao cấp theo chính sách ri&ecirc;ng của c&ocirc;ng ty với rất nhiều quyền lợi d&agrave;nh cho người lao động v&agrave; người th&acirc;n khi tham gia bảo hiểm.</li>
	<li style="text-align: justify;">Được tham gia các chương trình teambuilding, nghỉ mát, du xu&acirc;n, ng&agrave;y hội gia đ&igrave;nh do c&ocirc;ng ty t&ocirc;̉ chức hàng năm tại các địa đi&ecirc;̉m du lịch, resort cao c&acirc;́p.</li>
	<li style="text-align: justify;">Được tham gia nhiều hoạt động tập thể s&aacute;ng tạo, CLB tennis, b&oacute;ng đ&aacute;, bơi lội, cầu l&ocirc;ng, b&oacute;ng b&agrave;n, hoạt động thiện nguyện ...</li>
</ul>

<p style="text-align: justify;">*<strong>Hồ sơ bao gồm: </strong><strong><em>(c&oacute; thể nộp hồ sơ photo, bổ sung hồ sơ gốc khi được tuyển dụng)</em></strong></p>

<p style="text-align: justify;">CV (m&ocirc; tả r&otilde; qu&aacute; tr&igrave;nh học tập v&agrave; l&agrave;m việc);</p>

<p style="text-align: justify;">Sơ yếu l&yacute; lịch, giấy kh&aacute;m sức khỏe;</p>

<p style="text-align: justify;">Bằng tốt nghiệp v&agrave; c&aacute;c chứng chỉ li&ecirc;n quan;</p>

<p style="text-align: justify;">Chứng minh thư v&agrave; hộ khẩu photo.</p>

<p style="text-align: justify;"><strong>*Ứng vi&ecirc;n quan t&acirc;m xin vui l&ograve;ng gửi hồ sơ về địa chỉ: </strong>email: <a href="mailto:tuyendung@vnpay.vn">tuyendung@vnpay.vn</a></p>
', NULL, 0, 37, 1, CAST(0xCD3D0B00 AS Date), 0, 0)
INSERT [dbo].[Job] ([JOB_ID], [GROUP_ID], [JOB_NAME], [NUMBER], [SALARY], [CREATED_DATE], [EXPIRED_DATE], [JOB_DECRIPTION], [IMAGE], [ISDELETED], [VIEW_COUNT], [JOB_STATUS], [UPDATED_ON], [CV_APPLY_COUNT], [ACTIVE_BANNER]) VALUES (94, 38, N'Nhân viên triển khai hợp đồng', 3, NULL, CAST(0xCF3D0B00 AS Date), CAST(0x2D3E0B00 AS Date), N'<p style="text-align: justify;">NH&Acirc;N VI&Ecirc;N TRIỂN KHAI HỢP ĐỒNG</p>

<p style="text-align: justify;">* Số lượng cần tuyển: 3</p>

<p style="text-align: justify;">* Vị tr&iacute; l&agrave;m việc: Ph&ograve;ng Hỗ trợ kinh doanh - Khối kh&aacute;ch h&agrave;ng doanh nghiệp</p>

<p style="text-align: justify;">* Địa điểm l&agrave;m việc: 88 L&aacute;ng Hạ - Đống Đa- H&agrave; Nội</p>

<p style="text-align: justify;">* Thời gian l&agrave;m việc: 8h00 &ndash; 12h, 13h30 &ndash; 17h30 thứ hai &ndash; thứ s&aacute;u h&agrave;ng tuần, thứ bảy l&agrave;m buổi s&aacute;ng.</p>

<p style="text-align: justify;">*&nbsp;M&ocirc; tả c&ocirc;ng việc:</p>

<p style="text-align: justify;">+&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Triển khai b&agrave;n giao POSM, vật phẩm marketing cho c&aacute;c điểm đại l&yacute; chấp nhận thanh to&aacute;n đ&atilde; k&yacute; kết hợp đồng với C&ocirc;ng ty.</p>

<p style="text-align: justify;">+&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Hướng dẫn đại l&yacute; tải v&agrave; sử dụng app, website, ứng dụng dịch vụ của C&ocirc;ng ty.</p>

<p style="text-align: justify;">+&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Chụp ảnh nghiệm thu tại c&aacute;c điểm chấp nhận thanh to&aacute;n</p>

<p style="text-align: justify;">+&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Thực hiện c&aacute;c y&ecirc;u cầu kh&aacute;c theo ph&acirc;n c&ocirc;ng của trưởng ph&ograve;ng.</p>

<p style="text-align: justify;">* Y&ecirc;u cầu:</p>

<p style="text-align: justify;">+&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Tốt nghiệp trung cấp trở l&ecirc;n.</p>

<p style="text-align: justify;">+&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Ngoại h&igrave;nh ưa nh&igrave;n, giao tiếp tốt.</p>

<p style="text-align: justify;">+&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Sức khỏe tốt.</p>

<p style="text-align: justify;">+&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Chủ động trong c&ocirc;ng việc, cẩn thận, nhiệt t&igrave;nh, trung thực.</p>

<p style="text-align: justify;">+&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;C&oacute; xe m&aacute;y v&agrave; bằng l&aacute;i xe m&aacute;y.</p>

<p style="text-align: justify;">+&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;C&oacute; hiểu biết hoặc tiếp thu tốt c&aacute;c kiến thức về thanh to&aacute;n điện tử, sử dụng c&aacute;c thiết bị tin học, ứng dụng smartphone l&agrave; lợi thế.</p>

<p style="text-align: justify;">* Chế độ đ&atilde;i ngộ:</p>

<p style="text-align: justify;">+&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Mức lương thỏa thuận theo năng lực. (4-5 triệu đồng/th&aacute;ng, phụ cấp xăng xe)</p>

<p style="text-align: justify;">+&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Hưởng đầy đủ c&aacute;c chế độ BHXH, được tham gia bảo hi&ecirc;̉m sức khỏe cao cấp theo chính sách ri&ecirc;ng của c&ocirc;ng ty với rất nhiều quyền lợi d&agrave;nh cho người lao động v&agrave; người th&acirc;n khi tham gia bảo hiểm.</p>

<p style="text-align: justify;">+&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Chế độ đ&atilde;i ngộ hấp dẫn cạnh tranh với c&aacute;c c&ocirc;ng ty kh&aacute;c tr&ecirc;n thị trường: phục vụ bữa ăn s&aacute;ng miễn ph&iacute;, hỗ trợ cơm trưa (40.000đ/ng&agrave;y), cung cấp hoa quả v&agrave; đồ uống miễn ph&iacute; tại văn ph&ograve;ng, hỗ trợ trang điểm cho nh&acirc;n vi&ecirc;n nữ, hỗ trợ ưu đ&atilde;i cho CBNV mua nh&agrave;, thưởng cổ phiếu cho CBNV c&oacute; nhiều đ&oacute;ng g&oacute;p cho C&ocirc;ng ty&hellip;.</p>

<p style="text-align: justify;">+&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;M&ocirc;i trường l&agrave;m việc cởi mở, trẻ trung, th&acirc;n thiện, nhiều cơ hội thăng tiến trong c&ocirc;ng việc, c&ugrave;ng học hỏi với 250 đồng nghiệp trẻ trung th&acirc;n thiện với bề d&agrave;y th&agrave;nh t&iacute;ch hoạt động hơn 10 năm trong lĩnh vực giải ph&aacute;p thanh to&aacute;n.</p>

<p style="text-align: justify;">+&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Chế độ thưởng v&agrave;o c&aacute;c dịp lễ Tết, thưởng h&agrave;ng năm theo th&acirc;m ni&ecirc;n v&agrave; kết quả kinh doanh của c&ocirc;ng ty.</p>

<p style="text-align: justify;">+&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Được tham gia các chương trình teambuilding, nghỉ mát, du xu&acirc;n, ng&agrave;y hội gia đ&igrave;nh do c&ocirc;ng ty t&ocirc;̉ chức hàng năm tại các địa đi&ecirc;̉m du lịch, resort cao c&acirc;́p.</p>

<p style="text-align: justify;">+&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Được tham gia nhiều hoạt động tập thể s&aacute;ng tạo, CLB tennis, b&oacute;ng đ&aacute;, bơi lội, cầu l&ocirc;ng, b&oacute;ng b&agrave;n, hoạt động thiện nguyện ...</p>

<p style="text-align: justify;">*Hồ sơ bao gồm:&nbsp;(c&oacute; thể nộp hồ sơ photo, bổ sung hồ sơ gốc khi được tuyển dụng)</p>

<p style="text-align: justify;">- CV (m&ocirc; tả r&otilde; qu&aacute; tr&igrave;nh học tập v&agrave; l&agrave;m việc).</p>

<p style="text-align: justify;">- Bằng tốt nghiệp v&agrave; c&aacute;c chứng chỉ li&ecirc;n quan.</p>
', NULL, 0, 3, 1, NULL, 0, 0)
INSERT [dbo].[Job] ([JOB_ID], [GROUP_ID], [JOB_NAME], [NUMBER], [SALARY], [CREATED_DATE], [EXPIRED_DATE], [JOB_DECRIPTION], [IMAGE], [ISDELETED], [VIEW_COUNT], [JOB_STATUS], [UPDATED_ON], [CV_APPLY_COUNT], [ACTIVE_BANNER]) VALUES (95, 39, N'CHUYÊN VIÊN TUYỂN DỤNG', 1, NULL, CAST(0xCF3D0B00 AS Date), CAST(0x073E0B00 AS Date), N'<p style="text-align: justify;">CHUY&Ecirc;N VI&Ecirc;N TUYỂN DỤNG</p>

<p style="text-align: justify;">&nbsp;</p>

<p style="text-align: justify;">* Số lượng cần tuyển: 01</p>

<p style="text-align: justify;">&nbsp;</p>

<p style="text-align: justify;">* Vị tr&iacute; l&agrave;m việc: Ph&ograve;ng Tổ chức h&agrave;nh ch&iacute;nh</p>

<p style="text-align: justify;">&nbsp;</p>

<p style="text-align: justify;">* Địa điểm l&agrave;m việc: L&aacute;ng Hạ - Đống Đa- H&agrave; Nội</p>

<p style="text-align: justify;">&nbsp;</p>

<p style="text-align: justify;">* Thời gian l&agrave;m việc: 8h00 &ndash; 17h30 c&aacute;c ng&agrave;y thứ 2-thứ 6, thứ 7 l&agrave;m buổi s&aacute;ng</p>

<p style="text-align: justify;">&nbsp;</p>

<p style="text-align: justify;">* M&ocirc; tả c&ocirc;ng việc:</p>

<p style="text-align: justify;">&nbsp;</p>

<p style="text-align: justify;">+&nbsp; &nbsp; &nbsp; &nbsp; Triển khai kế hoạch tuyển dụng c&aacute;c vị tr&iacute; tại đơn vị được giao phụ tr&aacute;ch theo y&ecirc;u cầu.</p>

<p style="text-align: justify;">&nbsp;</p>

<p style="text-align: justify;">+&nbsp; &nbsp; &nbsp; &nbsp; Phối hợp với c&aacute;c ph&ograve;ng ban để t&igrave;m hiểu, nắm bắt v&agrave; đề xuất c&aacute;c chương tr&igrave;nh tuyển dụng hiệu quả.</p>

<p style="text-align: justify;">&nbsp;</p>

<p style="text-align: justify;">+&nbsp; &nbsp; &nbsp; &nbsp; Tổ chức thực hiện quy tr&igrave;nh tuyển dụng, bao gồm: S&agrave;ng lọc, xử l&yacute; hồ sơ ứng vi&ecirc;n; kiểm tra, tổ chức phỏng vấn, đ&aacute;nh gi&aacute;, đề xuất kết quả tuyển dụng v&agrave; thực hiện thủ tục tiếp nhận c&aacute;n bộ nh&acirc;n vi&ecirc;n mới.</p>

<p style="text-align: justify;">&nbsp;</p>

<p style="text-align: justify;">+&nbsp; &nbsp; &nbsp; &nbsp; Khai th&aacute;c &amp; t&igrave;m kiếm c&aacute;c nguồn ứng vi&ecirc;n tuyển dụng</p>

<p style="text-align: justify;">&nbsp;</p>

<p style="text-align: justify;">+&nbsp; &nbsp; &nbsp; &nbsp; Đề xuất, triển khai c&aacute;c chương tr&igrave;nh kết nối tuyển dụng, c&aacute;c k&ecirc;nh tuyển dụng tiềm năng đối với c&aacute;c đơn vị, trường học, khai th&aacute;c nguồn tuyển dụng nội bộ.</p>

<p style="text-align: justify;">&nbsp;</p>

<p style="text-align: justify;">+&nbsp; &nbsp; &nbsp; &nbsp; Đề xuất c&aacute;c chương tr&igrave;nh, giải ph&aacute;p duy tr&igrave; sự ổn định về nh&acirc;n sự.</p>

<p style="text-align: justify;">&nbsp;</p>

<p style="text-align: justify;">+&nbsp; &nbsp; &nbsp; &nbsp; Thiết lập v&agrave; lưu trữ database ứng vi&ecirc;n.</p>

<p style="text-align: justify;">&nbsp;</p>

<p style="text-align: justify;">+&nbsp; &nbsp; &nbsp; &nbsp; Thực hiện c&aacute;c nhiệm vụ kh&aacute;c được giao.</p>

<p style="text-align: justify;">&nbsp;</p>

<p style="text-align: justify;">* Y&ecirc;u cầu:</p>

<p style="text-align: justify;">&nbsp;</p>

<p style="text-align: justify;">+&nbsp; &nbsp; &nbsp; &nbsp; Tối thiểu 2 năm kinh nghiệm l&agrave;m c&ocirc;ng t&aacute;c tuyển dụng (ưu ti&ecirc;n trong ng&agrave;nh c&ocirc;ng nghệ th&ocirc;ng tin, headhunter);</p>

<p style="text-align: justify;">&nbsp;</p>

<p style="text-align: justify;">+&nbsp; &nbsp; &nbsp; &nbsp; Tốt nghiệp Đại học c&aacute;c ng&agrave;nh li&ecirc;n quan (quản l&yacute; nh&acirc;n sự, luật, ngoại thương, c&ocirc;ng nghệ th&ocirc;ng tin);</p>

<p style="text-align: justify;">&nbsp;</p>

<p style="text-align: justify;">+&nbsp; &nbsp; &nbsp; &nbsp; C&oacute; database nh&acirc;n sự IT v&agrave; sử dụng th&agrave;nh thạo c&aacute;c mạng x&atilde; hội như Facebook, Linkedin l&agrave; lợi thế.</p>

<p style="text-align: justify;">&nbsp;</p>

<p style="text-align: justify;">+&nbsp; &nbsp; &nbsp; &nbsp; Năng động, c&oacute; khả năng giao tiếp tốt, c&oacute; kỹ năng đ&agrave;m ph&aacute;n, thuyết phục, thuyết tr&igrave;nh, kỹ năng lập kế hoạch v&agrave; quản l&yacute; c&ocirc;ng việc tốt;</p>

<p style="text-align: justify;">&nbsp;</p>

<p style="text-align: justify;">+&nbsp; &nbsp; &nbsp; &nbsp; C&oacute; kỹ năng ph&acirc;n t&iacute;ch, đ&aacute;nh gi&aacute;;</p>

<p style="text-align: justify;">&nbsp;</p>

<p style="text-align: justify;">+&nbsp; &nbsp; &nbsp; &nbsp; C&oacute; mong muốn l&agrave;m việc ổn định, l&acirc;u d&agrave;i.</p>

<p style="text-align: justify;">&nbsp;</p>

<p style="text-align: justify;">+&nbsp; &nbsp; &nbsp; &nbsp; Trung thực, kh&aacute;ch quan.</p>

<p style="text-align: justify;">&nbsp;</p>

<p style="text-align: justify;">+&nbsp; &nbsp; &nbsp; &nbsp; Ngoại h&igrave;nh ưa nh&igrave;n.</p>

<p style="text-align: justify;">&nbsp;</p>

<p style="text-align: justify;">* Chế độ đ&atilde;i ngộ:</p>

<p style="text-align: justify;">&nbsp;</p>

<p style="text-align: justify;">+&nbsp; &nbsp; &nbsp; &nbsp; Mức lương thỏa thuận theo năng lực.</p>

<p style="text-align: justify;">&nbsp;</p>

<p style="text-align: justify;">+&nbsp; &nbsp; &nbsp; &nbsp; Chế độ đ&atilde;i ngộ hấp dẫn cạnh tranh với c&aacute;c c&ocirc;ng ty kh&aacute;c tr&ecirc;n thị trường: hỗ trợ cơm trưa (40.000đ/ng&agrave;y), cung cấp hoa quả v&agrave; đồ uống miễn ph&iacute; tại văn ph&ograve;ng, hỗ trợ trang điểm cho nh&acirc;n vi&ecirc;n nữ, hỗ trợ ưu đ&atilde;i cho CBNV mua nh&agrave;, thưởng cổ phiếu cho CBNV c&oacute; nhiều đ&oacute;ng g&oacute;p cho C&ocirc;ng ty&hellip;.</p>

<p style="text-align: justify;">&nbsp;</p>

<p style="text-align: justify;">+&nbsp; &nbsp; &nbsp; &nbsp; M&ocirc;i trường l&agrave;m việc cởi mở, trẻ trung, th&acirc;n thiện, nhiều cơ hội thăng tiến trong c&ocirc;ng việc, c&ugrave;ng học hỏi với 250 đồng nghiệp trẻ trung th&acirc;n thiện với bề d&agrave;y th&agrave;nh t&iacute;ch hoạt động hơn 10 năm trong lĩnh vực giải ph&aacute;p thanh to&aacute;n</p>

<p style="text-align: justify;">&nbsp;</p>

<p style="text-align: justify;">+&nbsp; &nbsp; &nbsp; &nbsp; Chế độ thưởng hấp dẫn v&agrave;o c&aacute;c dịp lễ Tết, thưởng h&agrave;ng năm theo th&acirc;m ni&ecirc;n v&agrave; kết quả kinh doanh của c&ocirc;ng ty.</p>

<p style="text-align: justify;">&nbsp;</p>

<p style="text-align: justify;">+&nbsp; &nbsp; &nbsp; &nbsp; Hưởng đầy đủ c&aacute;c chế độ BHXH, được tham gia bảo hi&ecirc;̉m sức khỏe cao cấp theo chính sách ri&ecirc;ng của c&ocirc;ng ty với rất nhiều quyền lợi d&agrave;nh cho người lao động v&agrave; người th&acirc;n khi tham gia bảo hiểm.</p>

<p style="text-align: justify;">&nbsp;</p>

<p style="text-align: justify;">+&nbsp; &nbsp; &nbsp; &nbsp; Được tham gia các chương trình teambuilding, nghỉ mát, du xu&acirc;n, ng&agrave;y hội gia đ&igrave;nh do c&ocirc;ng ty t&ocirc;̉ chức hàng năm tại các địa đi&ecirc;̉m du lịch, resort cao c&acirc;́p.</p>

<p style="text-align: justify;">&nbsp;</p>

<p style="text-align: justify;">+&nbsp; &nbsp; &nbsp; &nbsp; Được tham gia nhiều hoạt động tập thể s&aacute;ng tạo, CLB tennis, b&oacute;ng đ&aacute;, bơi lội, cầu l&ocirc;ng, b&oacute;ng b&agrave;n, hoạt động thiện nguyện ...</p>

<p style="text-align: justify;">&nbsp;</p>

<p style="text-align: justify;">*Hồ sơ bao gồm:</p>

<p style="text-align: justify;">&nbsp;</p>

<p style="text-align: justify;">- CV (m&ocirc; tả r&otilde; qu&aacute; tr&igrave;nh học tập v&agrave; l&agrave;m việc),</p>

<p style="text-align: justify;">&nbsp;</p>

<p style="text-align: justify;">- Sơ yếu l&yacute; lịch, giấy kh&aacute;m sức khỏe,</p>

<p style="text-align: justify;">&nbsp;</p>

<p style="text-align: justify;">- Bằng tốt nghiệp v&agrave; c&aacute;c chứng chỉ li&ecirc;n quan;</p>
', NULL, 0, 11, 1, NULL, 0, 0)
INSERT [dbo].[Job] ([JOB_ID], [GROUP_ID], [JOB_NAME], [NUMBER], [SALARY], [CREATED_DATE], [EXPIRED_DATE], [JOB_DECRIPTION], [IMAGE], [ISDELETED], [VIEW_COUNT], [JOB_STATUS], [UPDATED_ON], [CV_APPLY_COUNT], [ACTIVE_BANNER]) VALUES (96, 40, N'Trợ lý Marketing Kinh doanh', 3, NULL, CAST(0xD03D0B00 AS Date), CAST(0xF03D0B00 AS Date), N'<p style="text-align:justify"><strong>Nh&acirc;n vi&ecirc;n Ph&aacute;t triển Kinh doanh v&agrave; Marketing (l&agrave;m Việc Tại TP HCM)</strong></p>

<p style="text-align:justify"><strong>* Số lượng cần tuyển: 01 người</strong></p>

<p style="text-align:justify"><strong>* Vị tr&iacute; l&agrave;m việc: NV Ph&aacute;t triển Kinh doanh v&agrave; Marketing </strong></p>

<p style="text-align:justify"><strong>* Địa điểm l&agrave;m việc: Lầu 8, 117-119-121 Nguyễn Du, P. Bến Th&agrave;nh, Q1, TP.HCM</strong></p>

<p style="text-align:justify"><strong>* Thời gian l&agrave;m việc: 8h00 &ndash; 12h, 13h00 &ndash; 17h00 thứ hai &ndash; thứ s&aacute;u h&agrave;ng tuần, thứ bảy l&agrave;m buổi s&aacute;ng.</strong></p>

<p style="text-align:justify">* <strong>M&ocirc; tả c&ocirc;ng việc:</strong></p>

<ul>
	<li style="text-align:justify">Phụ tr&aacute;ch việc l&ecirc;n kế hoạch hoặc c&ugrave;ng phối hợp, thực hiện c&aacute;c chương tr&igrave;nh để ph&aacute;t triển doanh số, ph&aacute;t triển kh&aacute;ch h&agrave;ng, dịch vụ.</li>
	<li style="text-align:justify">Phối hợp c&ugrave;ng Ph&ograve;ng Marketing triển khai c&aacute;c chương tr&igrave;nh PR, Marketing cho VNPAY miền nam.</li>
	<li style="text-align:justify">Phối hợp c&ugrave;ng c&aacute;c đối t&aacute;c triển khai c&aacute;c chương tr&igrave;nh Marketing.</li>
	<li style="text-align:justify">Đ&aacute;nh gi&aacute; hiệu quả c&aacute;c chương tr&igrave;nh Marketing đ&atilde; triển khai.</li>
	<li style="text-align:justify">Khảo s&aacute;t, nghi&ecirc;n cứu thị trường, đ&aacute;nh gi&aacute; SPDV hiện tại của c&ocirc;ng ty để đưa ra đề xuất cải tiến, triển khai kinh doanh hiệu quả hơn.</li>
	<li style="text-align:justify">Tham gia một số dự &aacute;n ph&aacute;t triển dịch vụ của c&ocirc;ng ty.</li>
	<li style="text-align:justify">Chăm s&oacute;c kh&aacute;ch h&agrave;ng, đối t&aacute;c.</li>
</ul>

<p style="text-align:justify"><strong>* Y&ecirc;u cầu: </strong></p>

<ul>
	<li style="text-align:justify">Tốt nghiệp cao đẳng/đại học hệ ch&iacute;nh quy ng&agrave;nh Kinh tế, Marketing, Ng&acirc;n h&agrave;ng, Quản trị Kinh doanh.</li>
	<li style="text-align:justify">C&oacute; 1 - 2 năm kinh nghiệm tại vị tr&iacute; tương đương (ưu ti&ecirc;n c&aacute;c ứng vi&ecirc;n đ&atilde; c&oacute; kinh nghiệm l&agrave;m việc trong lĩnh vực ng&acirc;n h&agrave;ng, thanh to&aacute;n điện tử, thương mại điện tử, marketing);</li>
	<li style="text-align:justify">Sử dụng th&agrave;nh thạo tiếng Anh (giao tiếp v&agrave; văn bản) l&agrave; một lợi thế;</li>
	<li style="text-align:justify">Kỹ năng giao tiếp, thuyết tr&igrave;nh tốt;</li>
	<li style="text-align:justify">Sử dụng th&agrave;nh thạo Microsoft Office (Word, Excel, Powerpoint), kỹ năng soạn thảo văn bản tốt.</li>
	<li style="text-align:justify">Ngoại h&igrave;nh ưa nh&igrave;n, nhanh nhẹn, sẵn s&agrave;ng đi c&ocirc;ng t&aacute;c xa.</li>
	<li style="text-align:justify">Khả năng l&agrave;m việc nh&oacute;m tốt, c&oacute; tinh thần tr&aacute;ch nhiệm cao trong c&ocirc;ng việc.</li>
</ul>

<p style="text-align:justify"><strong>* Chế độ đ&atilde;i ngộ:</strong></p>

<ul>
	<li style="text-align:justify">Mức lương thỏa thuận theo năng lực.</li>
	<li style="text-align:justify">Chế độ đ&atilde;i ngộ hấp dẫn cạnh tranh với c&aacute;c c&ocirc;ng ty kh&aacute;c tr&ecirc;n thị trường: hỗ trợ cơm trưa (40.000đ/ng&agrave;y), hỗ trợ trang điểm cho nh&acirc;n vi&ecirc;n nữ, hỗ trợ ưu đ&atilde;i cho CBNV mua nh&agrave;, thưởng cổ phiếu cho CBNV c&oacute; nhiều đ&oacute;ng g&oacute;p cho C&ocirc;ng ty&hellip;.</li>
	<li style="text-align:justify">M&ocirc;i trường l&agrave;m việc cởi mở, trẻ trung, th&acirc;n thiện, nhiều cơ hội thăng tiến trong c&ocirc;ng việc, c&ugrave;ng học hỏi với 200 đồng nghiệp trẻ trung th&acirc;n thiện với bề d&agrave;y th&agrave;nh t&iacute;ch hoạt động hơn 8 năm trong lĩnh vực giải ph&aacute;p thanh to&aacute;n</li>
	<li style="text-align:justify">Chế độ thưởng v&agrave;o c&aacute;c dịp lễ Tết, thưởng h&agrave;ng năm theo th&acirc;m ni&ecirc;n v&agrave; kết quả kinh doanh của c&ocirc;ng ty (Từ 1 đến 6 th&aacute;ng lương).</li>
	<li style="text-align:justify">Hưởng đầy đủ c&aacute;c chế độ BHXH, được tham gia bảo hi&ecirc;̉m sức khỏe cao cấp theo chính sách ri&ecirc;ng của c&ocirc;ng ty với rất nhiều quyền lợi d&agrave;nh cho người lao động v&agrave; người th&acirc;n khi tham gia bảo hiểm.</li>
	<li style="text-align:justify">Được tham gia các chương trình teambuilding, nghỉ mát, du xu&acirc;n, ng&agrave;y hội gia đ&igrave;nh do c&ocirc;ng ty t&ocirc;̉ chức hàng năm tại các địa đi&ecirc;̉m du lịch, resort cao c&acirc;́p.</li>
	<li style="text-align:justify">Được tham gia nhiều hoạt động tập thể s&aacute;ng tạo, CLB tennis, b&oacute;ng đ&aacute;, bơi lội, cầu l&ocirc;ng, b&oacute;ng b&agrave;n, hoạt động thiện nguyện ...</li>
	<li style="text-align:justify">Hưởng chế độ ph&eacute;p năm v&agrave; nghỉ ốm nguy&ecirc;n lương 6 ng&agrave;y/năm.</li>
</ul>

<p style="text-align:justify">*<strong>Hồ sơ bao gồm: </strong><strong><em>(c&oacute; thể nộp hồ sơ photo, bổ sung hồ sơ gốc khi được tuyển dụng)</em></strong></p>

<p style="text-align:justify">- Sơ yếu l&yacute; lịch, giấy kh&aacute;m sức khỏe,</p>

<p style="text-align:justify">- Bằng tốt nghiệp v&agrave; c&aacute;c chứng chỉ li&ecirc;n quan;</p>

<p style="text-align:justify">- Chứng minh thư v&agrave; hộ khẩu photo</p>

<p style="text-align:justify">- CV (m&ocirc; tả r&otilde; qu&aacute; tr&igrave;nh học tập v&agrave; l&agrave;m việc).</p>

<p style="text-align:justify"><strong>*Ứng vi&ecirc;n quan t&acirc;m xin vui l&ograve;ng gửi hồ sơ về địa chỉ: </strong>email: <a href="mailto:tuyendung@vnpay.vn">tuyendung@vnpay.vn</a></p>

<p style="text-align:justify">&nbsp;</p>

<p style="text-align:justify"><strong>Về C&ocirc;ng Ty Ch&uacute;ng T&ocirc;i</strong></p>

<p style="text-align:justify"><a href="http://www.vietnamworks.com/viec-lam-tai-cong-ty-co-phan-giai-phap-thanh-toan-viet-nam-vietnam-payment-solution-joint-stock-company-e2285101-vn"><strong>C&ocirc;ng ty CP Giải ph&aacute;p Thanh to&aacute;n Việt Nam</strong></a></p>

<p style="text-align:justify">P 804A, số 22, L&aacute;ng Hạ, Đống Đa, H&agrave; Nội</p>

<p style="text-align:justify">T&ecirc;n người li&ecirc;n hệ: <strong>Ph&ograve;ng Tổ chức h&agrave;nh ch&iacute;nh</strong><br />
Qui m&ocirc; c&ocirc;ng ty: <strong>100-499</strong></p>

<p style="text-align:justify">C&ocirc;ng ty Cổ phần Giải ph&aacute;p Thanh to&aacute;n Việt Nam (VNPAY) th&agrave;nh lập th&aacute;ng 03/ 2007 l&agrave; c&ocirc;ng ty h&agrave;ng đầu trong lĩnh vực Thanh to&aacute;n điện tử tại Việt Nam. Với c&aacute;c ng&agrave;nh nghề kinh doanh cốt l&otilde;i thuộc lĩnh vực T&agrave;i ch&iacute;nh - Ng&acirc;n h&agrave;ng, C&ocirc;ng nghệ Th&ocirc;ng tin - Viễn th&ocirc;ng, VNPAY cung cấp dịch vụ tới hơn 39 ng&acirc;n h&agrave;ng tại Việt Nam, 5 c&ocirc;ng ty viễn th&ocirc;ng &amp; hơn 150 doanh nghiệp thương mại điện tử, đưa ra nhiều giải ph&aacute;p thanh to&aacute;n đơn giản v&agrave; tiện lợi như: Mobile Banking, Nạp tiền điện thoại VnTopup, Thanh to&aacute;n h&oacute;a đơn VnPayBill, V&iacute; điện tử VnMart, Sim đa năng, Cổng thanh to&aacute;n VnPayment, Website thanh to&aacute;n h&oacute;a đơn v&agrave; mua h&agrave;ng trực tuyến Vban.vn...<br />
<br />
Những cố gắng kh&ocirc;ng ngừng trong nhiều năm qua nhằm đem đến những sản phẩm, dịch vụ chất lượng nhất cho kh&aacute;ch h&agrave;ng đ&atilde; được ghi nhận bằng sự đ&aacute;nh gi&aacute; cao của kh&aacute;ch h&agrave;ng, đối t&aacute;c d&agrave;nh cho VNPAY. VNPAY đ&atilde; vinh dự nhận nhiều danh hiệu cao qu&yacute;, c&uacute;p, bằng khen, giấy chứng nhận&hellip; do c&aacute;c tổ chức kinh tế - x&atilde; hội c&oacute; uy t&iacute;n trong v&agrave; ngo&agrave;i nước trao tặng: &ldquo;Thương hiệu ph&aacute;t triển bền vững, Sản phẩm chất lượng cao Việt Nam&rdquo;, &ldquo;Chứng nhận Doanh nghiệp ph&aacute;t triển bền vững - Sustainable Development Business&rdquo;, &quot;Thương hiệu nổi tiếng ASEAN&quot;, &quot;Top 100 Nh&atilde;n hiệu nổi tiếng Việt Nam&quot;, &ldquo;Sản phẩm, dịch vụ Việt Nam được tin d&ugrave;ng&quot;, bằng khen của UBND TP. H&agrave; Nội.</p>

<p style="text-align:justify">Th&ocirc;ng điệp v&agrave; cam kết</p>

<p style="text-align:justify">&quot;Cho cuộc sống đơn giản hơn&quot; l&agrave; th&ocirc;ng điệp v&agrave; cam kết m&agrave; ch&uacute;ng t&ocirc;i muốn gửi tới kh&aacute;ch h&agrave;ng v&agrave; đối t&aacute;c. VNPAY c&ugrave;ng c&aacute;c đối t&aacute;c hợp t&aacute;c ph&aacute;t triển một phương thức thanh to&aacute;n đơn giản l&agrave;m giảm c&aacute;c chi ph&iacute; x&atilde; hội, thay đổi th&oacute;i quen sử dụng tiền mặt của đại bộ phận d&acirc;n ch&uacute;ng, đ&acirc;y đồng thời l&agrave; nền tảng gi&uacute;p th&uacute;c đẩy v&agrave; đảm bảo sự th&agrave;nh c&ocirc;ng của Thương mại điện tử trong thời gian tới đ&acirc;y.</p>

<p style="text-align:justify">&ldquo;Cho cuộc sống đơn giản hơn&rdquo; c&ograve;n l&agrave; mục ti&ecirc;u hoạt động v&agrave; l&agrave; định hướng kinh doanh của VNPAY nhằm tạo ra những gi&aacute; trị thiết thực hỗ trợ c&aacute;c hoạt động ti&ecirc;u d&ugrave;ng của x&atilde; hội, từ đ&oacute; khẳng định mục ti&ecirc;u mang lại c&aacute;c dịch vụ tiện &iacute;ch cho kh&aacute;ch h&agrave;ng.<br />
<br />
&ldquo;Cho cuộc sống đơn giản hơn&rdquo; c&ograve;n l&agrave; mục đ&iacute;ch l&agrave;m việc của Ban l&atilde;nh đạo, đội ngũ quản l&yacute; v&agrave; nh&acirc;n vi&ecirc;n của VNPAY nhằm x&acirc;y dựng một m&ocirc;i trường văn h&oacute;a doanh nghiệp chuy&ecirc;n nghiệp, gắn b&oacute; v&agrave; c&ugrave;ng nhau hướng tới mục ti&ecirc;u chung l&agrave; x&acirc;y dựng VNPAY trở th&agrave;nh c&ocirc;ng ty h&agrave;ng đầu trong lĩnh vực cung ứng dịch vụ Thanh to&aacute;n điện tử.</p>
', NULL, 0, 27, 1, CAST(0xDB3D0B00 AS Date), 1, 0)
INSERT [dbo].[Job] ([JOB_ID], [GROUP_ID], [JOB_NAME], [NUMBER], [SALARY], [CREATED_DATE], [EXPIRED_DATE], [JOB_DECRIPTION], [IMAGE], [ISDELETED], [VIEW_COUNT], [JOB_STATUS], [UPDATED_ON], [CV_APPLY_COUNT], [ACTIVE_BANNER]) VALUES (102, 34, N'Lập trình viên (Java/.Net) ', 2, NULL, CAST(0xEB3D0B00 AS Date), CAST(0x0F3E0B00 AS Date), N'<p><strong>LẬP TR&Igrave;NH VI&Ecirc;N (Java/.Net) </strong></p>

<p><strong>* Số lượng cần tuyển: 02</strong></p>

<p><strong>* Vị tr&iacute; l&agrave;m việc: Lập tr&igrave;nh vi&ecirc;n Ph&ograve;ng Dịch vụ Ng&acirc;n h&agrave;ng</strong></p>

<p><strong>* Địa điểm l&agrave;m việc: 22 L&aacute;ng Hạ - Đống Đa- H&agrave; Nội</strong></p>

<p><strong>* Thời gian l&agrave;m việc: 8h30 &ndash; 12h, 13h &ndash; 17h30 thứ hai &ndash; thứ s&aacute;u h&agrave;ng tuần, thứ bảy l&agrave;m buổi s&aacute;ng.</strong></p>

<p>* <strong>M&ocirc; tả c&ocirc;ng việc:</strong></p>

<p>+&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Tham gia x&acirc;y dựng v&agrave; ph&aacute;t triển c&aacute;c dự &aacute;n của C&ocirc;ng ty;</p>

<p>+&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Tham gia ph&acirc;n t&iacute;ch, thiết kế, ph&aacute;t triển v&agrave; bảo tr&igrave; ứng dụng.</p>

<p>+&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Hỗ trợ đối t&aacute;c viễn th&ocirc;ng, ng&acirc;n h&agrave;ng v&agrave; c&aacute;c ph&ograve;ng ban kh&aacute;c;</p>

<p>+&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; C&ocirc;ng việc sẽ được trao đổi cụ thể hơn trong qu&aacute; tr&igrave;nh phỏng vấn.</p>

<p><strong>* Y&ecirc;u cầu: </strong></p>

<p>+&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Tốt nghiệp đại học chuy&ecirc;n ng&agrave;nh c&ocirc;ng nghệ th&ocirc;ng tin, to&aacute;n tin;</p>

<p>+&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Sử dụng th&agrave;nh thạo ng&ocirc;n ngữ lập tr&igrave;nh Java/.Net. Biết lập tr&igrave;nh mạng, windows Service, WebService, WebLogic&hellip; l&agrave; một lợi thế;</p>

<p>+&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Lập tr&igrave;nh th&agrave;nh thạo với hệ CSDL: MS SQL hoặc Oracle (Oracle l&agrave; lợi thế);</p>

<p>+&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;</p>

<p>+&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; C&oacute; khả năng l&agrave;m việc độc lập v&agrave; l&agrave;m việc nh&oacute;m trong m&ocirc;i trường &aacute;p lực cao;</p>

<p>+&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Ham học hỏi v&agrave; t&igrave;m hiểu c&aacute;c C&ocirc;ng nghệ mới;</p>

<p>+&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; C&oacute; khả năng đọc hiểu t&agrave;i liệu Tiếng Anh chuy&ecirc;n ng&agrave;nh;</p>

<p>+&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Ưu ti&ecirc;n c&aacute;c ứng vi&ecirc;n đ&atilde; c&oacute; kinh nghiệm tham gia c&aacute;c dự &aacute;n về Ng&acirc;n h&agrave;ng v&agrave; viễn th&ocirc;ng;</p>

<p>+&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Kỹ năng l&agrave;m việc theo nh&oacute;m, l&agrave;m việc độc lập;</p>

<p>+&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Tư duy logic tốt, c&oacute; khả năng ph&acirc;n t&iacute;ch, học hỏi nhanh.&nbsp;</p>

<p><strong>* Chế độ đ&atilde;i ngộ:</strong></p>

<p>+&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Mức lương thỏa thuận theo năng lực.</p>

<p>+&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Chế độ đ&atilde;i ngộ hấp dẫn cạnh tranh với c&aacute;c c&ocirc;ng ty kh&aacute;c tr&ecirc;n thị trường: phục vụ bữa ăn s&aacute;ng miễn ph&iacute;, hỗ trợ cơm trưa (40.000đ/ng&agrave;y), cung cấp hoa quả v&agrave; đồ uống miễn ph&iacute; tại văn ph&ograve;ng, hỗ trợ trang điểm cho nh&acirc;n vi&ecirc;n nữ, hỗ trợ ưu đ&atilde;i cho CBNV mua nh&agrave;, thưởng cổ phiếu cho CBNV c&oacute; nhiều đ&oacute;ng g&oacute;p cho C&ocirc;ng ty&hellip;.</p>

<p>+&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; M&ocirc;i trường l&agrave;m việc cởi mở, trẻ trung, th&acirc;n thiện, nhiều cơ hội thăng tiến trong c&ocirc;ng việc, c&ugrave;ng học hỏi với 200 đồng nghiệp trẻ trung th&acirc;n thiện với bề d&agrave;y th&agrave;nh t&iacute;ch hoạt động hơn 8 năm trong lĩnh vực giải ph&aacute;p thanh to&aacute;n</p>

<p>+&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Chế độ thưởng v&agrave;o c&aacute;c dịp lễ Tết, thưởng h&agrave;ng năm theo th&acirc;m ni&ecirc;n v&agrave; kết quả kinh doanh của c&ocirc;ng ty (Từ 1 đến 6 th&aacute;ng lương).</p>

<p>+&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Hưởng đầy đủ c&aacute;c chế độ BHXH, được tham gia bảo hi&ecirc;̉m sức khỏe cao cấp theo chính sách ri&ecirc;ng của c&ocirc;ng ty với rất nhiều quyền lợi d&agrave;nh cho người lao động v&agrave; người th&acirc;n khi tham gia bảo hiểm.</p>

<p>+&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Được tham gia các chương trình teambuilding, nghỉ mát, du xu&acirc;n, ng&agrave;y hội gia đ&igrave;nh do c&ocirc;ng ty t&ocirc;̉ chức hàng năm tại các địa đi&ecirc;̉m du lịch, resort cao c&acirc;́p.</p>

<p>+&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Được tham gia nhiều hoạt động tập thể s&aacute;ng tạo, CLB tennis, b&oacute;ng đ&aacute;, bơi lội, cầu l&ocirc;ng, b&oacute;ng b&agrave;n, hoạt động thiện nguyện ...</p>

<p>*<strong>Hồ sơ bao gồm:</strong></p>

<p>- CV (m&ocirc; tả r&otilde; qu&aacute; tr&igrave;nh học tập v&agrave; l&agrave;m việc).</p>

<p>- Sơ yếu l&yacute; lịch, giấy kh&aacute;m sức khỏe,</p>

<p>- Bằng tốt nghiệp v&agrave; c&aacute;c chứng chỉ li&ecirc;n quan;</p>

<p><strong>*Ứng vi&ecirc;n quan t&acirc;m xin vui l&ograve;ng gửi hồ sơ về địa chỉ: </strong>email: <a href="mailto:tuyendung@vnpay.vn">tuyendung@vnpay.vn</a></p>
', N'/tuyen-dung/Uploads/cmsimages/slide/tuyendung_img3.png', 0, 8, 1, CAST(0xF63D0B00 AS Date), 0, 1)
INSERT [dbo].[Job] ([JOB_ID], [GROUP_ID], [JOB_NAME], [NUMBER], [SALARY], [CREATED_DATE], [EXPIRED_DATE], [JOB_DECRIPTION], [IMAGE], [ISDELETED], [VIEW_COUNT], [JOB_STATUS], [UPDATED_ON], [CV_APPLY_COUNT], [ACTIVE_BANNER]) VALUES (103, 44, N'LẬP TRÌNH VIÊN Java ', 3, NULL, CAST(0xEB3D0B00 AS Date), CAST(0x0F3E0B00 AS Date), N'<p><strong>LẬP TR&Igrave;NH VI&Ecirc;N Java </strong></p>

<p><strong>* Số lượng cần tuyển: 03</strong></p>

<p><strong>* Vị tr&iacute; l&agrave;m việc: Lập tr&igrave;nh vi&ecirc;n Java ph&ograve;ng Ph&aacute;t triển ứng dụng di động</strong></p>

<p><strong>* Địa điểm l&agrave;m việc: 22 L&aacute;ng Hạ - Đống Đa- H&agrave; Nội</strong></p>

<p><strong>* Thời gian l&agrave;m việc: 8h30 &ndash; 12h, 13h &ndash; 17h30 thứ hai &ndash; thứ s&aacute;u h&agrave;ng tuần, thứ bảy l&agrave;m buổi s&aacute;ng.</strong></p>

<p>* <strong>M&ocirc; tả c&ocirc;ng việc:</strong></p>

<p>+&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Tham gia ph&acirc;n t&iacute;ch, thiết kế, ph&aacute;t triển c&aacute;c ứng dụng theo y&ecirc;u cầu của c&ocirc;ng ty;</p>

<p>+&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Tham gia n&acirc;ng cấp, quản l&yacute; c&aacute;c hệ thống hiện tại của c&ocirc;ng ty;</p>

<p>+&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Phối hợp hỗ trợ với c&aacute;c bộ phận kh&aacute;c để triển khai hệ thống cho kh&aacute;ch h&agrave;ng;</p>

<p>+&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; B&aacute;o c&aacute;o c&ocirc;ng việc định kỳ cho trưởng nh&oacute;m;</p>

<p>+&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Chi tiết c&ocirc;ng việc được trao đổi cụ thể trong qu&aacute; tr&igrave;nh phỏng vấn.</p>

<p><strong>* Y&ecirc;u cầu: </strong></p>

<p>+&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Đ&atilde; tốt nghiệp đại học ng&agrave;nh CNTT, To&aacute;n tin hoặc c&aacute;c trung t&acirc;m đ&agrave;o tạo CNTT như Aptech, NIIT;</p>

<p>+&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; C&oacute; kinh nghiệm lập tr&igrave;nh Java (Backend, ứng dụng Web);</p>

<p>+&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; C&oacute; kinh nghiệm với cơ sở dữ liệu SQL Server hoặc Oracle;</p>

<p>+&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Ưu ti&ecirc;n:</p>

<p>o&nbsp;&nbsp; C&aacute;c bạn c&oacute; kinh nghiệm với c&aacute;c c&ocirc;ng nghệ NoSQL, Redis, Memcached, Netty, Spring, Restful;</p>

<p>o&nbsp;&nbsp; C&oacute; kiến thức về bảo mật l&agrave; lợi thế;</p>

<p>o&nbsp;&nbsp; C&oacute; kinh nghiệm với hệ thống xử l&yacute; số lượng lớn người d&ugrave;ng đồng thời l&agrave; lợi thế;</p>

<p>o&nbsp;&nbsp; C&oacute; kinh nghiệm xử l&yacute; ng&ocirc;n ngữ tự nhi&ecirc;n, AI.</p>

<p>+&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Tư duy logic tốt, c&oacute; khả năng ph&acirc;n t&iacute;ch, học hỏi nhanh;</p>

<p>+&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Kĩ năng l&agrave;m việc theo nh&oacute;m, l&agrave;m việc độc lập;</p>

<p>+&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; C&oacute; khả năng chịu &aacute;p lực c&ocirc;ng việc cao;</p>

<p>+&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; C&oacute; khả năng đọc hiểu t&agrave;i liệu kỹ thuật tiếng Anh.&nbsp;</p>

<p><strong>* Chế độ đ&atilde;i ngộ:</strong></p>

<p>+&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Mức lương thỏa thuận theo năng lực.</p>

<p>+&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Được tiếp cận v&agrave; học hỏi c&aacute;c c&ocirc;ng nghệ mới trong lĩnh vực giải ph&aacute;p thanh to&aacute;n.</p>

<p>+&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; M&ocirc;i trường l&agrave;m việc cởi mở, trẻ trung, th&acirc;n thiện, nhiều cơ hội thăng tiến trong c&ocirc;ng việc, c&ugrave;ng học hỏi với 300 đồng nghiệp trẻ trung th&acirc;n thiện với bề d&agrave;y th&agrave;nh t&iacute;ch hoạt động hơn 10 năm trong lĩnh vực giải ph&aacute;p thanh to&aacute;n.</p>

<p>+&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Chế độ đ&atilde;i ngộ hấp dẫn cạnh tranh với c&aacute;c c&ocirc;ng ty kh&aacute;c tr&ecirc;n thị trường: phục vụ bữa ăn s&aacute;ng miễn ph&iacute;, hỗ trợ cơm trưa (40.000đ/ng&agrave;y), cung cấp hoa quả v&agrave; đồ uống miễn ph&iacute; tại văn ph&ograve;ng, hỗ trợ trang điểm cho nh&acirc;n vi&ecirc;n nữ, hỗ trợ ưu đ&atilde;i cho CBNV mua nh&agrave;, thưởng cổ phiếu cho CBNV c&oacute; nhiều đ&oacute;ng g&oacute;p cho C&ocirc;ng ty&hellip;.</p>

<p>+&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Chế độ thưởng hấp dẫn v&agrave;o c&aacute;c dịp lễ Tết, thưởng h&agrave;ng năm theo th&acirc;m ni&ecirc;n v&agrave; kết quả kinh doanh của c&ocirc;ng ty .</p>

<p>+&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Hưởng đầy đủ c&aacute;c chế độ BHXH, được tham gia bảo hi&ecirc;̉m sức khỏe cao cấp theo chính sách ri&ecirc;ng của c&ocirc;ng ty với rất nhiều quyền lợi d&agrave;nh cho người lao động v&agrave; người th&acirc;n khi tham gia bảo hiểm.</p>

<p>+&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Được tham gia các chương trình teambuilding, nghỉ mát, du xu&acirc;n, ng&agrave;y hội gia đ&igrave;nh do c&ocirc;ng ty t&ocirc;̉ chức hàng năm tại các địa đi&ecirc;̉m du lịch, resort cao c&acirc;́p.</p>

<p>+&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Được tham gia nhiều hoạt động tập thể s&aacute;ng tạo, CLB tennis, b&oacute;ng đ&aacute;, bơi lội, cầu l&ocirc;ng, b&oacute;ng b&agrave;n, hoạt động thiện nguyện ...</p>

<p>*<strong>Hồ sơ bao gồm:</strong></p>

<p>- CV (m&ocirc; tả r&otilde; qu&aacute; tr&igrave;nh học tập v&agrave; l&agrave;m việc).</p>

<p>- Sơ yếu l&yacute; lịch, giấy kh&aacute;m sức khỏe,</p>

<p>- Bằng tốt nghiệp v&agrave; c&aacute;c chứng chỉ li&ecirc;n quan;</p>

<p><strong>*Ứng vi&ecirc;n quan t&acirc;m xin vui l&ograve;ng gửi hồ sơ về địa chỉ: </strong>email: <a href="mailto:tuyendung@vnpay.vn">tuyendung@vnpay.vn</a></p>
', N'/tuyen-dung/Uploads/cmsimages/slide/tuyendung_img4.png', 0, 3, 1, CAST(0xF63D0B00 AS Date), 0, 1)
INSERT [dbo].[Job] ([JOB_ID], [GROUP_ID], [JOB_NAME], [NUMBER], [SALARY], [CREATED_DATE], [EXPIRED_DATE], [JOB_DECRIPTION], [IMAGE], [ISDELETED], [VIEW_COUNT], [JOB_STATUS], [UPDATED_ON], [CV_APPLY_COUNT], [ACTIVE_BANNER]) VALUES (104, 44, N'LẬP TRÌNH VIÊN IOS', 3, NULL, CAST(0xEB3D0B00 AS Date), CAST(0x4C3E0B00 AS Date), N'<p><strong>LẬP TR&Igrave;NH VI&Ecirc;N IOS</strong></p>

<p><strong>* Số lượng cần tuyển: 03</strong></p>

<p><strong>* Vị tr&iacute; l&agrave;m việc: Lập tr&igrave;nh vi&ecirc;n IOS &ndash; Ph&ograve;ng ph&aacute;t triển ứng dụng di động</strong></p>

<p><strong>* Địa điểm l&agrave;m việc: Ph&ograve;ng 315A &ndash; 22 L&aacute;ng Hạ - Đống Đa- H&agrave; Nội</strong></p>

<p><strong>* Thời gian l&agrave;m việc: 8h30 &ndash; 17h30 c&aacute;c ng&agrave;y thứ 2-thứ 6, thứ 7 l&agrave;m buổi s&aacute;ng</strong></p>

<p><strong>* Mức lương: Thỏa thuận</strong></p>

<p>* <strong>M&ocirc; tả c&ocirc;ng việc:</strong></p>

<p>+&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; X&acirc;y dựng các ứng dụng Mobile li&ecirc;n quan đ&ecirc;́n các mảng tài chính, Ng&acirc;n h&agrave;ng, Viễn th&ocirc;ng tr&ecirc;n nền tảng IOS.</p>

<p>+&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Nghi&ecirc;n cứu, tìm ki&ecirc;́m giải pháp v&ecirc;̀ vi&ecirc;̣c áp dụng các tính năng của thi&ecirc;́t bị di đ&ocirc;̣ng vào mảng tài chính, Ng&acirc;n h&agrave;ng, Viễn th&ocirc;ng.</p>

<p>+&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Duy trì, h&ocirc;̃ trợ, n&acirc;ng c&acirc;́p các ứng dụng dịch vụ đã phát tri&ecirc;̉n của C&ocirc;ng ty</p>

<p>+&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Lập tr&igrave;nh ph&aacute;t triển theo y&ecirc;u cầu của dự &aacute;n.</p>

<p><strong>* Y&ecirc;u cầu: </strong></p>

<p>+&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Tốt nghiệp chuy&ecirc;n ng&agrave;nh C&ocirc;ng nghệ th&ocirc;ng tin, C&ocirc;ng nghệ phần mềm hoặc Trường đ&agrave;o tạo lập tr&igrave;nh vi&ecirc;n Quốc Tế (NIIT, Aptech) trở l&ecirc;n.</p>

<p>+&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Ưu ti&ecirc;n c&aacute;c ứng vi&ecirc;n c&oacute; kinh nghiệm lập tr&igrave;nh IOS.</p>

<p>+&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; C&oacute; hiểu biết object C, swift hay react native l&agrave; lợi thế.</p>

<p>+&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; C&oacute; kinh nghiệm giao tiếp client-server th&ocirc;ng qua http, tcp, json l&agrave; lợi thế.</p>

<p>+&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; C&oacute; kinh nghiệm ph&aacute;t h&agrave;nh ứng dụng l&ecirc;n AppStore l&agrave; lợi thế.</p>

<p>+&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; C&oacute; thể l&agrave;m việc dưới &aacute;p lực cao về deadline cũng như chất lượng sản phẩm</p>

<p>+&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Tiếng Anh cơ bản, ưu ti&ecirc;n c&aacute;c ứng vi&ecirc;n c&oacute; khả năng đọc viết bằng Tiếng Anh tốt</p>

<p>+&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Tư duy logic tốt, c&oacute; khả năng ph&acirc;n t&iacute;ch, học hỏi nhanh.</p>

<p>+&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; C&oacute; trách nhi&ecirc;̣m với c&ocirc;ng việc.</p>

<p>+&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; C&oacute; hiểu biết về swift, react native l&agrave; lợi thế.</p>

<p><strong>* Chế độ đ&atilde;i ngộ:</strong></p>

<p>&uuml;&nbsp; Mức lương thỏa thuận theo năng lực.</p>

<p>&uuml;&nbsp; Được tiếp cận v&agrave; học hỏi c&aacute;c c&ocirc;ng nghệ mới trong lĩnh vực giải ph&aacute;p thanh to&aacute;n.</p>

<p>&uuml;&nbsp; M&ocirc;i trường l&agrave;m việc cởi mở, trẻ trung, th&acirc;n thiện, nhiều cơ hội thăng tiến trong c&ocirc;ng việc, c&ugrave;ng học hỏi với 400 đồng nghiệp trẻ trung th&acirc;n thiện với bề d&agrave;y th&agrave;nh t&iacute;ch hoạt động hơn 10 năm trong lĩnh vực giải ph&aacute;p thanh to&aacute;n.</p>

<p>&uuml;&nbsp; Chế độ đ&atilde;i ngộ hấp dẫn cạnh tranh với c&aacute;c c&ocirc;ng ty kh&aacute;c tr&ecirc;n thị trường: phục vụ bữa ăn s&aacute;ng miễn ph&iacute;, hỗ trợ cơm trưa (40.000đ/ng&agrave;y), cung cấp hoa quả v&agrave; đồ uống miễn ph&iacute; tại văn ph&ograve;ng, hỗ trợ trang điểm cho nh&acirc;n vi&ecirc;n nữ, hỗ trợ ưu đ&atilde;i cho CBNV mua nh&agrave;, thưởng cổ phiếu cho CBNV c&oacute; nhiều đ&oacute;ng g&oacute;p cho C&ocirc;ng ty&hellip;.</p>

<p>&uuml;&nbsp; Chế độ thưởng hấp dẫn v&agrave;o c&aacute;c dịp lễ Tết, thưởng h&agrave;ng năm theo th&acirc;m ni&ecirc;n v&agrave; kết quả kinh doanh của c&ocirc;ng ty .</p>

<p>&uuml;&nbsp; Hưởng đầy đủ c&aacute;c chế độ BHXH, được tham gia bảo hi&ecirc;̉m sức khỏe cao cấp theo chính sách ri&ecirc;ng của c&ocirc;ng ty với rất nhiều quyền lợi d&agrave;nh cho người lao động v&agrave; người th&acirc;n khi tham gia bảo hiểm.</p>

<p>&uuml;&nbsp; Được tham gia các chương trình teambuilding, nghỉ mát, du xu&acirc;n, ng&agrave;y hội gia đ&igrave;nh do c&ocirc;ng ty t&ocirc;̉ chức hàng năm tại các địa đi&ecirc;̉m du lịch, resort cao c&acirc;́p.</p>

<p>&uuml;&nbsp; Được tham gia nhiều hoạt động tập thể s&aacute;ng tạo, CLB tennis, b&oacute;ng đ&aacute;, bơi lội, cầu l&ocirc;ng, b&oacute;ng b&agrave;n, hoạt động thiện nguyện ...</p>

<p>*<strong>Hồ sơ bao gồm:</strong></p>

<p>- Sơ yếu l&yacute; lịch, giấy kh&aacute;m sức khỏe,</p>

<p>- Bằng tốt nghiệp v&agrave; c&aacute;c chứng chỉ li&ecirc;n quan;</p>

<p>- CV (m&ocirc; tả r&otilde; qu&aacute; tr&igrave;nh học tập v&agrave; l&agrave;m việc).</p>

<p><strong>* Hạn nộp hồ sơ: </strong>hết ng&agrave;y 30/03/2018</p>

<p><strong>*Ứng vi&ecirc;n quan t&acirc;m xin vui l&ograve;ng gửi hồ sơ về địa chỉ: </strong>email: <a href="mailto:tuyendung@vnpay.vn">tuyendung@vnpay.vn</a></p>
', NULL, 0, 8, 1, CAST(0xEB3D0B00 AS Date), 0, 1)
INSERT [dbo].[Job] ([JOB_ID], [GROUP_ID], [JOB_NAME], [NUMBER], [SALARY], [CREATED_DATE], [EXPIRED_DATE], [JOB_DECRIPTION], [IMAGE], [ISDELETED], [VIEW_COUNT], [JOB_STATUS], [UPDATED_ON], [CV_APPLY_COUNT], [ACTIVE_BANNER]) VALUES (106, 43, N'SQL Developer', 1, NULL, CAST(0xEB3D0B00 AS Date), CAST(0x4C3E0B00 AS Date), N'<p><strong>SQL Developer</strong></p>

<p><strong>* Số lượng cần tuyển: 01</strong></p>

<p><strong>* Vị tr&iacute; l&agrave;m việc: Lập tr&igrave;nh vi&ecirc;n Ph&ograve;ng Vận h&agrave;nh &amp; Quản trị CSDL</strong></p>

<p><strong>* Địa điểm l&agrave;m việc: 22 L&aacute;ng Hạ - Đống Đa- H&agrave; Nội</strong></p>

<p><strong>* Thời gian l&agrave;m việc: 8h30 &ndash; 12h, 13h &ndash; 17h30 thứ hai &ndash; thứ s&aacute;u h&agrave;ng tuần, thứ bảy l&agrave;m buổi s&aacute;ng.</strong></p>

<p>* <strong>M&ocirc; tả c&ocirc;ng việc:</strong></p>

<p>+&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Nhận bảng ph&acirc;n t&iacute;ch thiết kế từ đội ứng dụng sau đ&oacute; review v&agrave; đưa c&aacute;c khuyến c&aacute;o về c&aacute;c mối quan hệ bảng biểu, độ d&agrave;i của c&aacute;c trường dữ liệu, c&aacute;c kiểu dữ liệu, &hellip;</p>

<p>+&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Tạo bảng biểu v&agrave; index cho cơ sở dữ liệu dự &aacute;n phần mềm;</p>

<p>+&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Viết c&aacute;c package cho dự &aacute;n phần mềm;</p>

<p>+&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Tối ưu h&oacute;a c&aacute;c c&acirc;u lệnh SQL để tăng performance của hệ thống;</p>

<p>+&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Tham gia triển khai c&aacute;c dự &aacute;n CNTT;</p>

<p>+&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; X&acirc;y dựng ch&iacute;nh s&aacute;ch, quy tr&igrave;nh, quy định, ti&ecirc;u chuẩn về An to&agrave;n CNTT;</p>

<p>+&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Thực hiện c&aacute;c nhiệm vụ kh&aacute;c do Ban L&atilde;nh đạo, Trưởng ph&ograve;ng giao.</p>

<p><strong>* Y&ecirc;u cầu: </strong></p>

<p>+&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Tr&igrave;nh độ chuy&ecirc;n m&ocirc;n: Tốt nghiệp Cao đẳng, Đại học hệ chuy&ecirc;n ng&agrave;nh C&ocirc;ng nghệ th&ocirc;ng tin, Tin học;</p>

<p>+&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; C&oacute; k&iacute;nh nghiệm &iacute;t nhất 2 năm kinh nghiệm l&agrave;m việc trong lĩnh vực ph&acirc;n t&iacute;ch thiết kế v&agrave; x&acirc;y dựng CSDL quan hệ với Database Oracle.</p>

<p>+&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Tr&igrave;nh độ ngoại ngữ:&nbsp;Tiếng Anh chứng chỉ C (hoặc tương đương) trở l&ecirc;n, sử dụng tốt tiếng Anh đọc hiểu c&aacute;c t&agrave;i liệu li&ecirc;n quan đến c&ocirc;ng việc phụ tr&aacute;ch.</p>

<p>+&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; C&oacute; kiến thức v&agrave; kinh nghiệm chuy&ecirc;n m&ocirc;n li&ecirc;n quan như:</p>

<p>o&nbsp;&nbsp; Th&agrave;nh thạo ng&ocirc;n ngữ SQL v&agrave; PL/SQL.</p>

<p>o&nbsp;&nbsp; C&oacute; kinh nghi&ecirc;m, kiến thức về Database Administrator.</p>

<p>+&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Kỹ năng:</p>

<p>o&nbsp;&nbsp; Kỹ năng nghi&ecirc;n cứu, thử nghiệm c&ocirc;ng nghệ mới</p>

<p>o&nbsp;&nbsp; Kỹ năng l&agrave;m việc theo nh&oacute;m</p>

<p>+&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Khả năng:</p>

<p>o&nbsp;&nbsp; Ph&acirc;n t&iacute;ch/ph&aacute;n đo&aacute;n</p>

<p>o&nbsp;&nbsp; Tư duy Logic</p>

<p>+&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Phẩm chất c&aacute; nh&acirc;n:</p>

<p>o&nbsp;&nbsp; Tinh thần tr&aacute;ch nhiệm cao</p>

<p>o&nbsp;&nbsp; Chủ động trong c&ocirc;ng việc</p>

<p>o&nbsp;&nbsp; Tu&acirc;n thủ kỷ luật</p>

<p>o&nbsp;&nbsp; C&oacute; &yacute; ch&iacute; quyết t&acirc;m ho&agrave;n th&agrave;nh mục ti&ecirc;u c&ocirc;ng việc được giao</p>

<p>+&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Ưu ti&ecirc;n c&aacute;c ứng vi&ecirc;n:</p>

<p>o&nbsp;&nbsp; Big Data, Data Minning.</p>

<p>o&nbsp;&nbsp; Data Guard, Oracle Rac.</p>

<p><strong>* Chế độ đ&atilde;i ngộ:</strong></p>

<p>+&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Mức lương thỏa thuận theo năng lực.</p>

<p>+&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Được cung cấp c&aacute;c trang thiết bị hiện đại, laptop, m&aacute;y t&iacute;nh c&aacute; nh&acirc;n... cần thiết để n&acirc;ng cao hiệu quả l&agrave;m việc.</p>

<p>+&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Chế độ đ&atilde;i ngộ hấp dẫn cạnh tranh với c&aacute;c c&ocirc;ng ty kh&aacute;c tr&ecirc;n thị trường: phục vụ bữa ăn s&aacute;ng miễn ph&iacute;, hỗ trợ cơm trưa (40.000đ/ng&agrave;y), cung cấp hoa quả v&agrave; đồ uống miễn ph&iacute; tại văn ph&ograve;ng, hỗ trợ trang điểm cho nh&acirc;n vi&ecirc;n nữ, hỗ trợ ưu đ&atilde;i cho CBNV mua nh&agrave;, thưởng cổ phiếu cho CBNV c&oacute; nhiều đ&oacute;ng g&oacute;p cho C&ocirc;ng ty&hellip;.</p>

<p>+&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; M&ocirc;i trường l&agrave;m việc cởi mở, trẻ trung, th&acirc;n thiện, nhiều cơ hội thăng tiến trong c&ocirc;ng việc, c&ugrave;ng học hỏi với 400 đồng nghiệp trẻ trung th&acirc;n thiện với bề d&agrave;y th&agrave;nh t&iacute;ch hoạt động hơn 10 năm trong lĩnh vực giải ph&aacute;p thanh to&aacute;n</p>

<p>+&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Chế độ thưởng v&agrave;o c&aacute;c dịp lễ Tết, thưởng h&agrave;ng năm theo th&acirc;m ni&ecirc;n v&agrave; kết quả kinh doanh của c&ocirc;ng ty.</p>

<p>+&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Hưởng đầy đủ c&aacute;c chế độ BHXH, được tham gia bảo hi&ecirc;̉m sức khỏe cao cấp theo chính sách ri&ecirc;ng của c&ocirc;ng ty với rất nhiều quyền lợi d&agrave;nh cho người lao động v&agrave; người th&acirc;n khi tham gia bảo hiểm.</p>

<p>+&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Được tham gia các chương trình teambuilding, nghỉ mát, du xu&acirc;n, ng&agrave;y hội gia đ&igrave;nh do c&ocirc;ng ty t&ocirc;̉ chức hàng năm tại các địa đi&ecirc;̉m du lịch, resort cao c&acirc;́p.</p>

<p>+&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Được tham gia nhiều hoạt động tập thể s&aacute;ng tạo, CLB tennis, b&oacute;ng đ&aacute;, bơi lội, cầu l&ocirc;ng, b&oacute;ng b&agrave;n, hoạt động thiện nguyện ...</p>

<p>*<strong>Hồ sơ bao gồm:</strong></p>

<p>- CV (m&ocirc; tả r&otilde; qu&aacute; tr&igrave;nh học tập v&agrave; l&agrave;m việc).</p>

<p>- Sơ yếu l&yacute; lịch, giấy kh&aacute;m sức khỏe,</p>

<p>- Bằng tốt nghiệp v&agrave; c&aacute;c chứng chỉ li&ecirc;n quan;</p>

<p><strong>*Ứng vi&ecirc;n quan t&acirc;m xin vui l&ograve;ng gửi hồ sơ về địa chỉ: </strong>email: <a href="mailto:tuyendung@vnpay.vn">tuyendung@vnpay.vn</a></p>
', NULL, 0, 41, 1, NULL, 0, 0)
INSERT [dbo].[Job] ([JOB_ID], [GROUP_ID], [JOB_NAME], [NUMBER], [SALARY], [CREATED_DATE], [EXPIRED_DATE], [JOB_DECRIPTION], [IMAGE], [ISDELETED], [VIEW_COUNT], [JOB_STATUS], [UPDATED_ON], [CV_APPLY_COUNT], [ACTIVE_BANNER]) VALUES (107, 37, N'NHÂN VIÊN QUẢN TRỊ HỆ THỐNG (Network)', 1, NULL, CAST(0xEB3D0B00 AS Date), CAST(0x0F3E0B00 AS Date), N'<p><strong>NH&Acirc;N VI&Ecirc;N QUẢN TRỊ HỆ THỐNG (Network)</strong></p>

<p><strong>* Số lượng cần tuyển: 01 người</strong></p>

<p><strong>* Vị tr&iacute; l&agrave;m việc: Nh&acirc;n vi&ecirc;n&nbsp; Ph&ograve;ng Quản trị an ninh hệ thống</strong></p>

<p><strong>* Địa điểm l&agrave;m việc: 22 L&aacute;ng Hạ Đống ĐaH&agrave; Nội</strong></p>

<p><strong>* Thời gian l&agrave;m việc: 8h30 &ndash; 12h, 13h00 &ndash; 17h30 thứ hai &ndash; thứ s&aacute;u h&agrave;ng tuần, thứ bảy l&agrave;m buổi s&aacute;ng.</strong></p>

<p>* <strong>M&ocirc; tả c&ocirc;ng việc:</strong></p>

<p>+&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Chịu tr&aacute;ch nhiệm thực hiện c&aacute;c c&ocirc;ng t&aacute;c quản trị, cấu h&igrave;nh, triển khai v&agrave; bảo tr&igrave; hệ thống mạng c&ocirc;ng ty tại DC, DR, Trung t&acirc;m miền, kết nối đến đối t&aacute;c;</p>

<p>+&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Lập kế hoạch v&agrave; thiết kế hệ thống mạng;</p>

<p>+&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Gi&aacute;m s&aacute;t hệ thống mạng LAN, WAN từ DC, DR, Trung t&acirc;m miền, đối t&aacute;c;</p>

<p>+&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Quản trị, gi&aacute;m s&aacute;t c&aacute;c hệ thống, dịch vụ hạ tầng đ&atilde; được triển khai cung cấp cho người sử dụng; đảm bảo cam kết về hoạt động (OLA) v&agrave; dịch vụ (SLA) của hệ thống</p>

<p>+&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Thực hiện khắc phục, xử l&yacute; c&aacute;c sự cố, c&aacute;c lỗi xảy ra li&ecirc;n quan đến mạng trong phạm vi ng&acirc;n h&agrave;ng;</p>

<p>+&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Nghi&ecirc;n cứu, chuyển giao c&aacute;c sản phẩm, giải ph&aacute;p c&ocirc;ng nghệ mạng;</p>

<p>+&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Tham gia x&acirc;y dựng danh mục c&aacute;c dịch vụ v&agrave; bản cam kết chất lượng dịch vụ (SLA) cho c&aacute;c dịch vụ cung cấp.</p>

<p>+&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Nghi&ecirc;n cứu, thử nghiệm c&aacute;c giải ph&aacute;p mới;</p>

<p>+&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Triển khai dự &aacute;n của c&ocirc;ng ty</p>

<p>+&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; X&acirc;y dựng ch&iacute;nh s&aacute;ch, quy tr&igrave;nh, quy định, ti&ecirc;u chuẩn về An to&agrave;n CNTT;</p>

<p>+&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Thực hiện c&aacute;c nhiệm vụ kh&aacute;c do Ban L&atilde;nh đạo, Trưởng ph&ograve;ng giao.</p>

<p><strong>* Y&ecirc;u cầu: </strong></p>

<p>+&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Tr&igrave;nh độ chuy&ecirc;n m&ocirc;n:&nbsp;Tốt nghiệp Đại học ch&iacute;nh quy ng&agrave;nh CNTT, Điện tử Viễn th&ocirc;ng, hoặc tương đương.</p>

<p>+&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Tr&igrave;nh độ ngoại ngữ:&nbsp;Tiếng Anh chứng chỉ C (hoặc tương đương) trở l&ecirc;n, sử dụng tốt tiếng Anh đọc hiểu c&aacute;c t&agrave;i liệu li&ecirc;n quan đến c&ocirc;ng việc phụ tr&aacute;ch.</p>

<p>+&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; C&oacute; kinh nghiệm 01 năm trở l&ecirc;n ở vị tr&iacute; tương đương;</p>

<p>+&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; C&oacute; kiến thức tốt về quản trị c&aacute;c hệ thống hạ tầng CNTT.</p>

<p>+&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; C&oacute; kiến thức, kinh nghiệm chuy&ecirc;n m&ocirc;n cụ thể như sau:</p>

<p>o&nbsp;&nbsp; Quản trị c&aacute;c hệ thống Network (Switch, Router), Firewall;</p>

<p>o&nbsp;&nbsp; Kinh nghiệm triển khai, quản trị gi&aacute;m s&aacute;t hệ thống Mạng, hệ thống Internet, hệ thống&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Wireless,&hellip;;</p>

<p>o&nbsp;&nbsp; C&oacute; kiến thức v&agrave; am hiểu về&nbsp; Network Routing, Switching, Network Security (IPS,&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Firewall, Wireless);</p>

<p>o&nbsp;&nbsp; Kỹ năng, kinh nghiệm khắc phục v&agrave; xử l&yacute; c&aacute;c sự cố về hệ thống Mạng;</p>

<p>o&nbsp;&nbsp; Thiết kế hệ thống mạng LAN, WAN</p>

<p>+&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Kỹ năng:</p>

<p>o&nbsp;&nbsp; Kỹ năng nghi&ecirc;n cứu, thử nghiệm c&ocirc;ng nghệ mới</p>

<p>o&nbsp;&nbsp; Kỹ năng l&agrave;m việc theo nh&oacute;m</p>

<p>+&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Khả năng:</p>

<p>o&nbsp;&nbsp; Ph&acirc;n t&iacute;ch/ph&aacute;n đo&aacute;n</p>

<p>o&nbsp;&nbsp; Tư duy Logic</p>

<p>+&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Phẩm chất c&aacute; nh&acirc;n:</p>

<p>o&nbsp;&nbsp; Tinh thần tr&aacute;ch nhiệm cao</p>

<p>o&nbsp;&nbsp; Chủ động trong c&ocirc;ng việc</p>

<p>o&nbsp;&nbsp; Tu&acirc;n thủ kỷ luật</p>

<p>o&nbsp;&nbsp; C&oacute; &yacute; ch&iacute; quyết t&acirc;m ho&agrave;n th&agrave;nh mục ti&ecirc;u c&ocirc;ng việc được giao</p>

<p>+&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Ưu ti&ecirc;n:</p>

<p>o&nbsp;&nbsp; C&oacute; kinh nghiệm triển khai c&aacute;c dự &aacute;n lớn li&ecirc;n quan đến hệ thống mạng;</p>

<p>o&nbsp;&nbsp; C&oacute; c&aacute;c chứng chỉ quốc tế li&ecirc;n quan: CCNA, CCNP, CCSP;</p>

<p>o&nbsp;&nbsp; C&oacute; khả năng lập tr&igrave;nh hệ thống/lập tr&igrave;nh đối với một số c&aacute;c thiết bị mạng;</p>

<p>o&nbsp;&nbsp; C&oacute; kiến thức, kinh nghiệm về quản l&yacute; dịch vụ CNTT (ITIL);</p>

<p><strong>* Chế độ đ&atilde;i ngộ:</strong></p>

<p>+&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Mức lương thỏa thuận theo năng lực.</p>

<p>+&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Chế độ đ&atilde;i ngộ hấp dẫn cạnh tranh với c&aacute;c c&ocirc;ng ty kh&aacute;c tr&ecirc;n thị trường: phục vụ bữa ăn s&aacute;ng miễn ph&iacute;, hỗ trợ cơm trưa (40.000đ/ng&agrave;y), cung cấp hoa quả v&agrave; đồ uống miễn ph&iacute; tại văn ph&ograve;ng, hỗ trợ trang điểm cho nh&acirc;n vi&ecirc;n nữ, hỗ trợ ưu đ&atilde;i cho CBNV mua nh&agrave;, thưởng cổ phiếu cho CBNV c&oacute; nhiều đ&oacute;ng g&oacute;p cho C&ocirc;ng ty&hellip;.</p>

<p>+&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; M&ocirc;i trường l&agrave;m việc cởi mở, trẻ trung, th&acirc;n thiện, nhiều cơ hội thăng tiến trong c&ocirc;ng việc, c&ugrave;ng học hỏi với 400 đồng nghiệp trẻ trung th&acirc;n thiện với bề d&agrave;y th&agrave;nh t&iacute;ch hoạt động hơn 10 năm trong lĩnh vực giải ph&aacute;p thanh to&aacute;n</p>

<p>+&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Chế độ thưởng v&agrave;o c&aacute;c dịp lễ Tết, thưởng h&agrave;ng năm theo th&acirc;m ni&ecirc;n v&agrave; kết quả kinh doanh của c&ocirc;ng ty (Từ 1 đến 6 th&aacute;ng lương).</p>

<p>+&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Hưởng đầy đủ c&aacute;c chế độ BHXH, được tham gia bảo hi&ecirc;̉m sức khỏe cao cấp theo chính sách ri&ecirc;ng của c&ocirc;ng ty với rất nhiều quyền lợi d&agrave;nh cho người lao động v&agrave; người th&acirc;n khi tham gia bảo hiểm.</p>

<p>+&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Được tham gia các chương trình teambuilding, nghỉ mát, du xu&acirc;n, ng&agrave;y hội gia đ&igrave;nh do c&ocirc;ng ty t&ocirc;̉ chức hàng năm tại các địa đi&ecirc;̉m du lịch, resort cao c&acirc;́p.</p>

<p>+&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Được tham gia nhiều hoạt động tập thể s&aacute;ng tạo, CLB tennis, b&oacute;ng đ&aacute;, bơi lội, cầu l&ocirc;ng, b&oacute;ng b&agrave;n, hoạt động thiện nguyện ...</p>

<p>*<strong>Hồ sơ bao gồm: </strong><strong><em>(c&oacute; thể nộp hồ sơ photo, bổ sung hồ sơ gốc khi được tuyển dụng)</em></strong></p>

<p>CV (m&ocirc; tả r&otilde; qu&aacute; tr&igrave;nh học tập v&agrave; l&agrave;m việc);</p>

<p>Sơ yếu l&yacute; lịch, giấy kh&aacute;m sức khỏe;</p>

<p>Bằng tốt nghiệp v&agrave; c&aacute;c chứng chỉ li&ecirc;n quan;</p>

<p>Chứng minh thư v&agrave; hộ khẩu photo.</p>

<p><strong>* Hạn nộp hồ sơ: </strong>hết ng&agrave;y 30/04/2017</p>

<p><strong>*Ứng vi&ecirc;n quan t&acirc;m xin vui l&ograve;ng gửi hồ sơ về địa chỉ: </strong>email: <a href="mailto:tuyendung@vnpay.vn">tuyendung@vnpay.vn</a></p>
', N'/tuyen-dung/Uploads/cmsimages/slide/tuyendung_img2.png', 0, 8, 1, CAST(0xF63D0B00 AS Date), 0, 1)
INSERT [dbo].[Job] ([JOB_ID], [GROUP_ID], [JOB_NAME], [NUMBER], [SALARY], [CREATED_DATE], [EXPIRED_DATE], [JOB_DECRIPTION], [IMAGE], [ISDELETED], [VIEW_COUNT], [JOB_STATUS], [UPDATED_ON], [CV_APPLY_COUNT], [ACTIVE_BANNER]) VALUES (108, 43, N'Nhân viên Quản trị cơ sở dữ liệu', 2, NULL, CAST(0xEB3D0B00 AS Date), CAST(0x4C3E0B00 AS Date), N'<p><strong>Nh&acirc;n vi&ecirc;n Quản trị cơ sở dữ liệu</strong></p>

<p><strong>* Số lượng cần tuyển: </strong>02 Nam</p>

<p><strong>* Vị tr&iacute; l&agrave;m việc: Nh&acirc;n vi&ecirc;n Quản trị cơ sở dữ liệu Ph&ograve;ng Vận H&agrave;nh Quản trị CSDL</strong></p>

<p><strong>* Địa điểm l&agrave;m việc:</strong> Ph&ograve;ng 315A &ndash; 22 L&aacute;ng Hạ Đống ĐaH&agrave; Nội</p>

<p><strong>* Thời gian l&agrave;m việc: 8h00 &ndash; 12h, 13h30 &ndash; 17h30 thứ hai &ndash; thứ s&aacute;u h&agrave;ng tuần, thứ bảy l&agrave;m buổi s&aacute;ng.</strong></p>

<p><strong>* M&ocirc; tả c&ocirc;ng việc:</strong></p>

<ul>
	<li>Chịu tr&aacute;ch nhiệm quản l&yacute; c&aacute;c hệ thống Database</li>
	<li>Thiết kế v&agrave; x&acirc;y dựng t&agrave;i liệu kiến tr&uacute;c cơ sở dữ liệu. M&ocirc; h&igrave;nh h&oacute;a dữ liệu;</li>
	<li>C&agrave;i đặt, cấu h&igrave;nh, n&acirc;ng cấp v&agrave; bảo tr&igrave; hệ thống với c&aacute;c hệ thống Quản trị cơ sở dữ liệu</li>
	<li>Thiết lập chia sẻ dữ liệu v&agrave; ph&acirc;n v&ugrave;ng tương ứng;</li>
	<li>Ph&aacute;t triển c&aacute;c tiện &iacute;ch cơ sở dữ liệu v&agrave; b&aacute;o c&aacute;o tự động; Ph&acirc;n t&iacute;ch, củng cố v&agrave; điều chỉnh cơ sở dữ liệu để đạt hiệu quả tối ưu;</li>
	<li>Tạo kịch bản, ứng dụng cho tự động h&oacute;a nhiệm vụ;</li>
	<li>Tạo, kiểm tra v&agrave; thực hiện c&aacute;c ng&ocirc;n ngữ quản l&yacute; dữ liệu;</li>
	<li>Gi&aacute;m s&aacute;t c&aacute;c hệ thống database v&agrave; đảm bảo hệ thống hoạt động li&ecirc;n tục;</li>
	<li>Gi&aacute;m s&aacute;t sao lưu/clustering/mirror/replication v&agrave; chống lỗi; Kh&ocirc;i phục v&agrave; phục hồi cơ sở dữ liệu bị hỏng;</li>
	<li>X&acirc;y dựng v&agrave; thiết kế c&aacute;c vấn đề bảo mật Database.</li>
	<li>Đ&aacute;nh gi&aacute; v&agrave; đề xuất c&aacute;c c&ocirc;ng nghệ cơ sở dữ liệu mới;</li>
	<li>X&acirc;y dựng qui tr&igrave;nh, qui định về vận h&agrave;nh gi&aacute;m s&aacute;t, đảm bảo việc tối ưu sử dụng t&agrave;i nguy&ecirc;n hệ thống, khắc phục sự cố hệ thống Database</li>
	<li>Tham gia triển khai c&aacute;c dự &aacute;n CNTT.</li>
</ul>

<ul>
	<li>X&acirc;y dựng ch&iacute;nh s&aacute;ch, quy tr&igrave;nh, quy định, ti&ecirc;u chuẩn về An to&agrave;n CNTT;</li>
	<li>Thực hiện c&aacute;c nhiệm vụ kh&aacute;c do Ban L&atilde;nh đạo, Trưởng ph&ograve;ng giao.</li>
</ul>

<p><strong>* Y&ecirc;u cầu: </strong></p>

<ul>
	<li>Tr&igrave;nh độ chuy&ecirc;n m&ocirc;n: Tốt nghiệp Đại học hệ ch&iacute;nh quy chuy&ecirc;n ng&agrave;nh C&ocirc;ng nghệ th&ocirc;ng tin, Tin học;</li>
	<li>C&oacute; k&iacute;nh nghiệm &iacute;t nhất 2 năm kinh nghiệm l&agrave;m việc trong lĩnh vực quản trị cơ sở dữ liệu;</li>
</ul>

<ul>
	<li>Tr&igrave;nh độ ngoại ngữ:&nbsp;Tiếng Anh chứng chỉ C (hoặc tương đương) trở l&ecirc;n, sử dụng tốt tiếng Anh đọc hiểu c&aacute;c t&agrave;i liệu li&ecirc;n quan đến c&ocirc;ng việc phụ tr&aacute;ch.</li>
	<li>C&oacute; kiến thức tốt về quản trị c&aacute;c hệ thống hạ tầng CNTT mới nhất.</li>
	<li>C&oacute; kiến thức v&agrave; kinh nghiệm chuy&ecirc;n m&ocirc;n li&ecirc;n quan như:
	<ul style="list-style-type:circle">
		<li>Th&agrave;nh thạo ng&ocirc;n ngữ SQL v&agrave; PL/SQL.</li>
		<li>Cơ sở dữ liệu: Oracle, SQL,</li>
		<li>Hệ thống: Linux, UNIX, Windows;</li>
		<li>Cấu h&igrave;nh v&agrave; vận h&agrave;nh Oracle Data Guard, Enterprise Manager, Backup and Restore, Oracle GoldenGate 10g, 11g, 12c; vận h&agrave;nh v&agrave; cấu h&igrave;nh c&aacute;c hệ thống CSDL SQL;</li>
	</ul>
	</li>
	<li>Kỹ năng:
	<ul style="list-style-type:circle">
		<li>Kỹ năng nghi&ecirc;n cứu, thử nghiệm c&ocirc;ng nghệ mới</li>
		<li>Kỹ năng l&agrave;m việc theo nh&oacute;m</li>
	</ul>
	</li>
	<li>Khả năng:
	<ul style="list-style-type:circle">
		<li>Ph&acirc;n t&iacute;ch/ph&aacute;n đo&aacute;n</li>
		<li>Tư duy Logic</li>
	</ul>
	</li>
	<li>Phẩm chất c&aacute; nh&acirc;n:
	<ul style="list-style-type:circle">
		<li>Tinh thần tr&aacute;ch nhiệm cao</li>
		<li>Chủ động trong c&ocirc;ng việc</li>
		<li>Tu&acirc;n thủ kỷ luật</li>
		<li>C&oacute; &yacute; ch&iacute; quyết t&acirc;m ho&agrave;n th&agrave;nh mục ti&ecirc;u c&ocirc;ng việc được giao</li>
	</ul>
	</li>
</ul>

<ul>
	<li>Ưu ti&ecirc;n c&aacute;c ứng vi&ecirc;n:
	<ul style="list-style-type:circle">
		<li>C&oacute; c&aacute;c bằng cấp/ chứng chỉ li&ecirc;n quan đến quản trị CSDL Oracle v&agrave; SQL;</li>
		<li>C&oacute; kinh nghiệm quản trị c&aacute;c cơ sở dữ liệu Oracle, MS SQL Server, quản trị Middleware: Oracle Weblogic Server, Oracle Application Server, IBM WebSphere Application Server.</li>
		<li>C&oacute; kinh nghiệm về Oracle Rac v&agrave; Performance Turning Database.</li>
		<li>C&oacute; kinh nghiệm triển khai ứng dụng CNTT tr&ecirc;n c&aacute;c m&aacute;y chủ chạy hệ điều h&agrave;nh: Unix (HP_UX, Linux) v&agrave; Windows Server</li>
		<li>L&agrave;m việc tại c&aacute;c m&ocirc;i trường c&oacute; c&aacute;c hệ CSDL lớn;</li>
		<li>C&oacute; kiến thức, kinh nghiệm về quản l&yacute; dịch vụ CNTT (ITIL);</li>
		<li>C&oacute; kinh nghiệm triển khai c&aacute;c dự &aacute;n lớn;</li>
		<li>C&oacute; kinh nghiệm l&agrave;m việc tại c&aacute;c c&ocirc;ng ty trong lĩnh vực bảo hiểm, ng&acirc;n h&agrave;ng, t&agrave;i ch&iacute;nh. &nbsp;</li>
	</ul>
	</li>
</ul>

<p><strong>* Chế độ đ&atilde;i ngộ:</strong></p>

<ul>
	<li>Mức lương thỏa thuận theo năng lực.</li>
	<li>Chế độ đ&atilde;i ngộ hấp dẫn cạnh tranh với c&aacute;c c&ocirc;ng ty kh&aacute;c tr&ecirc;n thị trường: phục vụ bữa ăn s&aacute;ng miễn ph&iacute;, hỗ trợ cơm trưa (40.000đ/ng&agrave;y), cung cấp hoa quả v&agrave; đồ uống miễn ph&iacute; tại văn ph&ograve;ng, hỗ trợ trang điểm cho nh&acirc;n vi&ecirc;n nữ, hỗ trợ ưu đ&atilde;i cho CBNV mua nh&agrave;, thưởng cổ phiếu cho CBNV c&oacute; nhiều đ&oacute;ng g&oacute;p cho C&ocirc;ng ty&hellip;.</li>
	<li>M&ocirc;i trường l&agrave;m việc cởi mở, trẻ trung, th&acirc;n thiện, nhiều cơ hội thăng tiến trong c&ocirc;ng việc, c&ugrave;ng học hỏi với 400 đồng nghiệp trẻ trung th&acirc;n thiện với bề d&agrave;y th&agrave;nh t&iacute;ch hoạt động hơn 10 năm trong lĩnh vực giải ph&aacute;p thanh to&aacute;n</li>
	<li>Chế độ thưởng v&agrave;o c&aacute;c dịp lễ Tết, thưởng h&agrave;ng năm theo th&acirc;m ni&ecirc;n v&agrave; kết quả kinh doanh của c&ocirc;ng ty.</li>
	<li>Hưởng đầy đủ c&aacute;c chế độ BHXH, được tham gia bảo hi&ecirc;̉m sức khỏe cao cấp theo chính sách ri&ecirc;ng của c&ocirc;ng ty với rất nhiều quyền lợi d&agrave;nh cho người lao động v&agrave; người th&acirc;n khi tham gia bảo hiểm.</li>
	<li>Được tham gia các chương trình teambuilding, nghỉ mát, du xu&acirc;n, ng&agrave;y hội gia đ&igrave;nh do c&ocirc;ng ty t&ocirc;̉ chức hàng năm tại các địa đi&ecirc;̉m du lịch, resort cao c&acirc;́p.</li>
	<li>Được tham gia nhiều hoạt động tập thể s&aacute;ng tạo, CLB tennis, b&oacute;ng đ&aacute;, bơi lội, cầu l&ocirc;ng, b&oacute;ng b&agrave;n, hoạt động thiện nguyện ...</li>
</ul>

<p>*<strong>Hồ sơ bao gồm:</strong></p>

<p>CV (m&ocirc; tả r&otilde; qu&aacute; tr&igrave;nh học tập v&agrave; l&agrave;m việc).</p>

<p>Sơ yếu l&yacute; lịch, giấy kh&aacute;m sức khỏe,</p>

<p>Bằng tốt nghiệp v&agrave; c&aacute;c chứng chỉ li&ecirc;n quan.</p>

<p><strong>*Ứng vi&ecirc;n quan t&acirc;m xin vui l&ograve;ng gửi hồ sơ về địa chỉ: </strong>email: <a href="mailto:tuyendung@vnpay.vn">tuyendung@vnpay.vn</a></p>
', NULL, 0, 13, 1, NULL, 0, 0)
INSERT [dbo].[Job] ([JOB_ID], [GROUP_ID], [JOB_NAME], [NUMBER], [SALARY], [CREATED_DATE], [EXPIRED_DATE], [JOB_DECRIPTION], [IMAGE], [ISDELETED], [VIEW_COUNT], [JOB_STATUS], [UPDATED_ON], [CV_APPLY_COUNT], [ACTIVE_BANNER]) VALUES (109, 33, N'NHÂN VIÊN PHÂN TÍCH NGHIỆP VỤ (BUSINESS ANALYST)', 3, NULL, CAST(0xEB3D0B00 AS Date), CAST(0x4C3E0B00 AS Date), N'<p><strong>NH&Acirc;N VI&Ecirc;N PH&Acirc;N T&Iacute;CH NGHIỆP VỤ (BUSINESS ANALYST)</strong></p>

<p><strong>* Số lượng cần tuyển: 03</strong></p>

<p><strong>* Vị tr&iacute; l&agrave;m việc: Nh&acirc;n vi&ecirc;n Ph&ograve;ng Nghiệp vụ v&agrave; Quản trị dự &aacute;n</strong></p>

<p><strong>* Địa điểm l&agrave;m việc: 22 L&aacute;ng Hạ - Đống Đa- H&agrave; Nội</strong></p>

<p><strong>* Thời gian l&agrave;m việc: Giờ h&agrave;nh ch&iacute;nh, thứ 2 &ndash;thứ 6 h&agrave;ng tuần, thứ bảy l&agrave;m buổi s&aacute;ng</strong></p>

<p>* <strong>M&ocirc; tả c&ocirc;ng việc:</strong></p>

<ul>
	<li>Khảo s&aacute;t, thu thập y&ecirc;u cầu của v&agrave; thống nhất với Kh&aacute;ch h&agrave;ng.</li>
	<li>Ph&acirc;n t&iacute;ch v&agrave; định nghĩa phạm vi y&ecirc;u cầu nghiệp vụ, y&ecirc;u cầu người d&ugrave;ng, y&ecirc;u cầu chức năng c&aacute;c sản phẩm, dịch vụ với Kh&aacute;ch h&agrave;ng hoặc đối t&aacute;c hoặc c&aacute;c bộ phận y&ecirc;u cầu.</li>
	<li>&nbsp;X&acirc;y dựng, m&ocirc; tả/đặc tả chức năng, nghiệp vụ cho c&aacute;c sản phẩm/dịch vụ: URD, SRS.</li>
	<li>&nbsp;Thống nhất nghiệp vụ với Kh&aacute;ch h&agrave;ng bằng c&aacute;c t&agrave;i liệu URD, SRS.</li>
	<li>&nbsp;X&acirc;y dựng c&aacute;c t&agrave;i liệu phục vụ c&ocirc;ng việc ph&acirc;n t&iacute;ch nghiệp vụ.</li>
	<li>&nbsp;X&acirc;y dựng c&aacute;c t&agrave;i liệu nghiệp vụ: t&agrave;i liệu URD, SRS.</li>
	<li>&nbsp;Đ&aacute;nh gi&aacute; t&agrave;i liệu nghiệp vụ theo checklist đ&atilde; thống nhất.</li>
	<li>&nbsp;R&agrave; so&aacute;t v&agrave; đ&aacute;nh gi&aacute; sản phẩm trước khi giao h&agrave;ng cho Kh&aacute;ch h&agrave;ng (nếu c&oacute;)</li>
	<li>&nbsp;Quản l&yacute; c&aacute;c hồ sơ, t&agrave;i liệu bản mềm của dự &aacute;n phụ tr&aacute;ch.</li>
	<li>&nbsp;Chịu tr&aacute;ch nhiệm l&agrave;m thư k&yacute; c&aacute;c dự &aacute;n tham gia (nếu cần).</li>
</ul>

<p><strong>* Y&ecirc;u cầu: </strong></p>

<ul>
	<li>C&oacute; &iacute;t nhất 1 năm kinh nghiệm l&agrave;m việc tại vị tr&iacute; tương đương.</li>
	<li>Tốt nghiệp Đại học ng&agrave;nh CNTT, To&aacute;n tin, Điện tử viễn th&ocirc;ng, Thương mại điện tử.</li>
	<li>C&oacute; khả năng nghi&ecirc;n cứu, đọc viết c&aacute;c t&agrave;i liệu bằng tiếng Anh.</li>
	<li>Kỹ năng giao tiếp tốt, kỹ năng tư vấn v&agrave; thuyết phục kh&aacute;ch h&agrave;ng.</li>
	<li>Khả năng giao tiếp hiệu quả, l&agrave;m cầu nối giữa đối t&aacute;c triển khai, nh&agrave; cung cấp giải ph&aacute;p, c&aacute;c nh&oacute;m nội bộ v&agrave; c&aacute;c bộ phận kh&aacute;c để thu thập v&agrave; trao đổi c&aacute;c y&ecirc;u cầu nghiệp vụ/chức năng.</li>
	<li>C&oacute; khả năng tư vấn tr&ecirc;n g&oacute;c độ nghiệp vụ dựa v&agrave;o c&aacute;c ph&acirc;n t&iacute;ch v&agrave; nghi&ecirc;n cứu của m&igrave;nh.</li>
	<li>C&oacute; kỹ năng v&agrave; kinh nghiệm test l&agrave; một lợi thế.</li>
	<li>Khả năng suy luận, tư duy logic tốt về ph&acirc;n t&iacute;ch hệ thống, quy tr&igrave;nh nghiệp vụ v&agrave; đặc tả y&ecirc;u cầu.</li>
	<li>C&oacute; kinh nghiệm l&agrave;m việc với c&aacute;c giải ph&aacute;p thanh to&aacute;n trực tuyến v&agrave; phần mềm tr&ecirc;n mobile hay PC li&ecirc;n quan đến Ng&acirc;n h&agrave;ng l&agrave; một lợi thế lớn.</li>
	<li>Ưu ti&ecirc;n những người c&oacute; kinh nghiệm ph&acirc;n t&iacute;ch nghiệp vụ ứng dụng mobile, web.</li>
	<li>C&oacute; tinh thần l&agrave;m việc theo nh&oacute;m, tinh thần tr&aacute;ch nhiệm cao, đặt hiệu quả v&agrave; thời hạn c&ocirc;ng việc l&ecirc;n h&agrave;ng đầu. Sẵn s&agrave;ng l&agrave;m th&ecirc;m giờ nếu c&oacute; y&ecirc;u cầu.</li>
	<li>C&oacute; khả năng l&agrave;m việc dưới &aacute;p lực cao.</li>
</ul>

<p><strong>* Chế độ đ&atilde;i ngộ:</strong></p>

<p style="margin-left:18.0pt">+ Mức Lương: thỏa thuận theo năng lực.</p>

<ul>
	<li>Chế độ đ&atilde;i ngộ hấp dẫn cạnh tranh với c&aacute;c c&ocirc;ng ty kh&aacute;c tr&ecirc;n thị trường: phục vụ bữa ăn s&aacute;ng miễn ph&iacute;, hỗ trợ cơm trưa (40.000đ/ng&agrave;y), cung cấp hoa quả v&agrave; đồ uống miễn ph&iacute; tại văn ph&ograve;ng, hỗ trợ trang điểm cho nh&acirc;n vi&ecirc;n nữ, hỗ trợ ưu đ&atilde;i cho CBNV mua nh&agrave;, thưởng cổ phiếu cho CBNV c&oacute; nhiều đ&oacute;ng g&oacute;p cho C&ocirc;ng ty&hellip;.</li>
	<li>M&ocirc;i trường l&agrave;m việc cởi mở, trẻ trung, th&acirc;n thiện, nhiều cơ hội thăng tiến trong c&ocirc;ng việc, c&ugrave;ng học hỏi với 250 đồng nghiệp trẻ trung th&acirc;n thiện với bề d&agrave;y th&agrave;nh t&iacute;ch hoạt động hơn 10 năm trong lĩnh vực giải ph&aacute;p thanh to&aacute;n</li>
	<li>Chế độ thưởng v&agrave;o c&aacute;c dịp lễ Tết, thưởng h&agrave;ng năm theo th&acirc;m ni&ecirc;n v&agrave; kết quả kinh doanh của c&ocirc;ng ty.</li>
	<li>Hưởng đầy đủ c&aacute;c chế độ BHXH, được tham gia bảo hi&ecirc;̉m sức khỏe cao cấp theo chính sách ri&ecirc;ng của c&ocirc;ng ty với rất nhiều quyền lợi d&agrave;nh cho người lao động v&agrave; người th&acirc;n khi tham gia bảo hiểm.</li>
	<li>Được tham gia các chương trình teambuilding, nghỉ mát, du xu&acirc;n, ng&agrave;y hội gia đ&igrave;nh do c&ocirc;ng ty t&ocirc;̉ chức hàng năm tại các địa đi&ecirc;̉m du lịch, resort cao c&acirc;́p.</li>
	<li>Được tham gia nhiều hoạt động tập thể s&aacute;ng tạo, CLB tennis, b&oacute;ng đ&aacute;, bơi lội, cầu l&ocirc;ng, b&oacute;ng b&agrave;n, hoạt động thiện nguyện ...</li>
</ul>

<p>* <strong>Hồ sơ bao gồm:</strong> (c&oacute; thể nộp hồ sơ photo, bổ sung hồ sơ gốc khi được tuyển dụng)</p>

<ul>
	<li>CV (m&ocirc; tả r&otilde; qu&aacute; tr&igrave;nh học tập v&agrave; l&agrave;m việc).</li>
	<li>Bằng tốt nghiệp v&agrave; c&aacute;c chứng chỉ li&ecirc;n quan.</li>
</ul>

<p><strong>*Ứng vi&ecirc;n quan t&acirc;m xin vui l&ograve;ng gửi hồ sơ về địa chỉ: </strong>email: <a href="mailto:tuyendung@vnpay.vn">tuyendung@vnpay.vn</a></p>
', NULL, 0, 9, 1, NULL, 0, 0)
INSERT [dbo].[Job] ([JOB_ID], [GROUP_ID], [JOB_NAME], [NUMBER], [SALARY], [CREATED_DATE], [EXPIRED_DATE], [JOB_DECRIPTION], [IMAGE], [ISDELETED], [VIEW_COUNT], [JOB_STATUS], [UPDATED_ON], [CV_APPLY_COUNT], [ACTIVE_BANNER]) VALUES (110, 33, N'NHÂN VIÊN KIỂM THỬ PHẦN MỀM (TESTER)', 2, NULL, CAST(0xEB3D0B00 AS Date), CAST(0x4C3E0B00 AS Date), N'<p><strong>NH&Acirc;N VI&Ecirc;N KIỂM THỬ PHẦN MỀM (TESTER)</strong></p>

<p><strong>* Số lượng cần tuyển: 02</strong></p>

<p><strong>* Vị tr&iacute; l&agrave;m việc: Nh&acirc;n vi&ecirc;n Ph&ograve;ng Nghiệp vụ v&agrave; Quản trị dự &aacute;n</strong></p>

<p><strong>* Địa điểm l&agrave;m việc: 22 L&aacute;ng Hạ - Đống Đa- H&agrave; Nội</strong></p>

<p><strong>* Thời gian l&agrave;m việc: Giờ h&agrave;nh ch&iacute;nh, thứ 2 &ndash;thứ 6 h&agrave;ng tuần, thứ bảy l&agrave;m buổi s&aacute;ng</strong></p>

<p>* <strong>M&ocirc; tả c&ocirc;ng việc:</strong></p>

<ul>
	<li>Đọc hiểu c&aacute;c t&agrave;i liệu đặc tả hệ thống, y&ecirc;u cầu nghiệp vụ, t&agrave;i liệu thiết kế li&ecirc;n quan.</li>
	<li>X&acirc;y dựng kịch bản kiểm thử (Testcase).</li>
	<li>Thực hiện Test sản phẩm của c&ocirc;ng ty.</li>
	<li>Tham gia lập c&aacute;c bộ t&agrave;i liệu test: Quy tr&igrave;nh test, Testplan, Test Point.</li>
	<li>Nghi&ecirc;n cứu v&agrave; cập nhật c&aacute;c c&ocirc;ng cụ test v&agrave; kiến thức mới hỗ trợ cho c&ocirc;ng việc.</li>
	<li>Đề xuất cải tiến quy tr&igrave;nh test.</li>
	<li>Thực hiện tốt c&aacute;c c&ocirc;ng việc kh&aacute;c khi được giao.</li>
</ul>

<p><strong>* Y&ecirc;u cầu: </strong></p>

<ul>
	<li>C&oacute; 1 - 3 năm kinh nghiệm l&agrave;m việc tại vị tr&iacute; tương đương.</li>
	<li>Tốt nghiệp Đại học ng&agrave;nh CNTT, To&aacute;n tin, Điện tử viễn th&ocirc;ng.</li>
	<li>Sử dụng th&agrave;nh thạo c&aacute;c c&ocirc;ng cụ test v&agrave; quản l&yacute; lỗi.</li>
	<li>Hiểu biết về quy tr&igrave;nh Test, chiến lược v&agrave; kỹ thuật test phần mềm&hellip; lập t&agrave;i liệu test tốt.</li>
	<li>Chủ động, s&aacute;ng tạo, nhiệt t&igrave;nh, tr&aacute;ch nhiệm trong c&ocirc;ng việc, c&oacute; tư duy logic tốt.</li>
	<li>Cẩn thận, tỉ mỉ, cần c&ugrave;, nhanh nhẹn, sức khỏe tốt, c&oacute; khả năng l&agrave;m việc độc lập hoặc nh&oacute;m với cường độ cao.</li>
	<li>Sẵn s&agrave;ng l&agrave;m th&ecirc;m giờ khi c&oacute; y&ecirc;u cầu.</li>
	<li>Kỹ năng giao tiếp tốt, c&oacute; khả năng quản l&yacute; thời gian.</li>
	<li><strong>Ưu ti&ecirc;n:</strong>
	<ul style="list-style-type:circle">
		<li>C&aacute;c ứng vi&ecirc;n đ&atilde; l&agrave;m việc theo quy tr&igrave;nh phần mềm, c&oacute; hiểu biết về hệ thống kiểm so&aacute;t chất lượng phần mềm, QA, QC.</li>
		<li>C&aacute;c ứng vi&ecirc;n c&oacute; kinh nghiệm test ứng dụng tr&ecirc;n Mobile, web.</li>
		<li>C&oacute; kỹ năng đọc/viết t&agrave;i liệu kỹ thuật bằng tiếng Anh.</li>
	</ul>
	</li>
</ul>

<p><strong>* Chế độ đ&atilde;i ngộ:</strong></p>

<p style="margin-left:18.0pt">+ Mức Lương: thỏa thuận theo năng lực.</p>

<ul>
	<li>Chế độ đ&atilde;i ngộ hấp dẫn cạnh tranh với c&aacute;c c&ocirc;ng ty kh&aacute;c tr&ecirc;n thị trường: phục vụ bữa ăn s&aacute;ng miễn ph&iacute;, hỗ trợ cơm trưa (40.000đ/ng&agrave;y), cung cấp hoa quả v&agrave; đồ uống miễn ph&iacute; tại văn ph&ograve;ng, hỗ trợ trang điểm cho nh&acirc;n vi&ecirc;n nữ, hỗ trợ ưu đ&atilde;i cho CBNV mua nh&agrave;, thưởng cổ phiếu cho CBNV c&oacute; nhiều đ&oacute;ng g&oacute;p cho C&ocirc;ng ty&hellip;.</li>
	<li>M&ocirc;i trường l&agrave;m việc cởi mở, trẻ trung, th&acirc;n thiện, nhiều cơ hội thăng tiến trong c&ocirc;ng việc, c&ugrave;ng học hỏi với 400 đồng nghiệp trẻ trung th&acirc;n thiện với bề d&agrave;y th&agrave;nh t&iacute;ch hoạt động hơn 10 năm trong lĩnh vực giải ph&aacute;p thanh to&aacute;n</li>
	<li>Chế độ thưởng v&agrave;o c&aacute;c dịp lễ Tết, thưởng h&agrave;ng năm theo th&acirc;m ni&ecirc;n v&agrave; kết quả kinh doanh của c&ocirc;ng ty.</li>
	<li>Hưởng đầy đủ c&aacute;c chế độ BHXH, được tham gia bảo hi&ecirc;̉m sức khỏe cao cấp theo chính sách ri&ecirc;ng của c&ocirc;ng ty với rất nhiều quyền lợi d&agrave;nh cho người lao động v&agrave; người th&acirc;n khi tham gia bảo hiểm.</li>
	<li>Được tham gia các chương trình teambuilding, nghỉ mát, du xu&acirc;n, ng&agrave;y hội gia đ&igrave;nh do c&ocirc;ng ty t&ocirc;̉ chức hàng năm tại các địa đi&ecirc;̉m du lịch, resort cao c&acirc;́p.</li>
	<li>Được tham gia nhiều hoạt động tập thể s&aacute;ng tạo, CLB tennis, b&oacute;ng đ&aacute;, bơi lội, cầu l&ocirc;ng, b&oacute;ng b&agrave;n, hoạt động thiện nguyện ...</li>
</ul>

<p>* <strong>Hồ sơ bao gồm:</strong> (c&oacute; thể nộp hồ sơ photo, bổ sung hồ sơ gốc khi được tuyển dụng)</p>

<ul>
	<li>CV (m&ocirc; tả r&otilde; qu&aacute; tr&igrave;nh học tập v&agrave; l&agrave;m việc).</li>
	<li>Sơ yếu l&yacute; lịch, giấy kh&aacute;m sức khỏe.</li>
	<li>Bằng tốt nghiệp v&agrave; c&aacute;c chứng chỉ li&ecirc;n quan.</li>
	<li>Chứng minh thư v&agrave; hộ khẩu photo.</li>
</ul>

<p><strong>*Ứng vi&ecirc;n quan t&acirc;m xin vui l&ograve;ng gửi hồ sơ về địa chỉ: </strong>email: <a href="mailto:tuyendung@vnpay.vn">tuyendung@vnpay.vn</a></p>
', NULL, 0, 12, 1, NULL, 0, 0)
INSERT [dbo].[Job] ([JOB_ID], [GROUP_ID], [JOB_NAME], [NUMBER], [SALARY], [CREATED_DATE], [EXPIRED_DATE], [JOB_DECRIPTION], [IMAGE], [ISDELETED], [VIEW_COUNT], [JOB_STATUS], [UPDATED_ON], [CV_APPLY_COUNT], [ACTIVE_BANNER]) VALUES (111, 46, N'Chuyên viên Marketing', 1, NULL, CAST(0xEB3D0B00 AS Date), CAST(0x4C3E0B00 AS Date), N'<p><strong>SENIOR MARKETING EXECUTIVE</strong></p>

<p><strong>* Số lượng cần tuyển: 01</strong></p>

<p><strong>* Vị tr&iacute; l&agrave;m việc: Nh&acirc;n vi&ecirc;n Ph&ograve;ng Marketing&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;(Khối Kinh doanh miền bắc)</strong></p>

<p><strong>* Địa điểm l&agrave;m việc: 22 L&aacute;ng Hạ - Đống Đa- H&agrave; Nội</strong></p>

<p><strong>* Thời gian l&agrave;m việc: 8h30 &ndash; 12h, 13h &ndash; 17h30 thứ hai &ndash; thứ s&aacute;u h&agrave;ng tuần, thứ bảy l&agrave;m buổi s&aacute;ng.</strong></p>

<p>* <strong>M&ocirc; tả c&ocirc;ng việc:</strong></p>

<p>+&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Lập kế hoạch v&agrave; triển khai c&aacute;c chiến dịch marketing cho c&aacute;c sản phẩm của VNPAY;</p>

<p>+&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Gi&aacute;m s&aacute;t qu&aacute; tr&igrave;nh thực hiện chiến dịch, kịp thời đề xuất c&aacute;c phương &aacute;n, giải ph&aacute;p nhằm đảm bảo đạt được kết quả mục ti&ecirc;u đề ra;</p>

<p>+&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Duy tr&igrave;, x&acirc;y dựng mối quan hệ với giới truyền th&ocirc;ng;</p>

<p>+&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Tổng hợp, ph&acirc;n t&iacute;ch số liệu v&agrave; thực hiện b&aacute;o c&aacute;o theo chiến dịch v&agrave; định kỳ;</p>

<p>+&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; C&aacute;c c&ocirc;ng việc kh&aacute;c theo y&ecirc;u cầu của Ban L&atilde;nh đạo.</p>

<p><strong>* Y&ecirc;u cầu: </strong></p>

<p>+&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Tốt nghiệp đại học trở l&ecirc;n ng&agrave;nh Marketing, Kinh doanh, b&aacute;o ch&iacute;, truyền th&ocirc;ng;</p>

<p>+&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; C&oacute; 3-5 năm kinh nghiệm tại vị tr&iacute; tương đương;</p>

<p>+&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Sử dụng th&agrave;nh thạo Microsoft Office, sử dụng tốt c&aacute;c phần mềm hỗ trợ hoạt động Marketing;</p>

<p>+&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Hiểu biết v&agrave; sử dụng tốt c&aacute;c c&ocirc;ng cụ marketing truyền thống v&agrave; digital marketing. C&oacute; kinh nghiệm triển khai c&aacute;c chiến dịch marketing;</p>

<p>+&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; C&oacute; khả năng định hướng v&agrave; x&acirc;y dựng content;</p>

<p>+&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; C&oacute; kỹ năng viết tốt, c&oacute; kinh nghiệm viết b&agrave;i PR;</p>

<p>+&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; S&aacute;ng tạo, tư duy tổng hợp v&agrave; ph&acirc;n t&iacute;ch tốt;</p>

<p>+&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; C&oacute; khả năng nghi&ecirc;n cứu t&agrave;i liệu tiếng Anh, tiếng Anh giao tiếp tốt;</p>

<p>+&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Kỹ năng quản l&yacute;, thuyết tr&igrave;nh, l&agrave;m việc nh&oacute;m;</p>

<p>+&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; C&oacute; khả năng chịu được &aacute;p lực c&ocirc;ng việc;</p>

<p>+&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Năng động, nhiệt t&igrave;nh, s&aacute;ng tạo, c&oacute; tinh thần tr&aacute;ch nhiệm cao trong c&ocirc;ng việc;</p>

<p>+&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Cầu thị, trung thực, nhiệt huyết;</p>

<p>+&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Ưu ti&ecirc;n ứng vi&ecirc;n đ&atilde; từng l&agrave;m việc tại c&aacute;c đơn vị agency về quảng c&aacute;o, lập kế hoạch truyền th&ocirc;ng.</p>

<p><strong>* Chế độ đ&atilde;i ngộ:</strong></p>

<p>+&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Mức lương thỏa thuận theo năng lực.</p>

<p>+&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Chế độ đ&atilde;i ngộ hấp dẫn cạnh tranh với c&aacute;c c&ocirc;ng ty kh&aacute;c tr&ecirc;n thị trường: phục vụ bữa ăn s&aacute;ng miễn ph&iacute;, hỗ trợ cơm trưa (40.000đ/ng&agrave;y), cung cấp hoa quả v&agrave; đồ uống miễn ph&iacute; tại văn ph&ograve;ng, hỗ trợ trang điểm cho nh&acirc;n vi&ecirc;n nữ, hỗ trợ ưu đ&atilde;i cho CBNV mua nh&agrave;, thưởng cổ phiếu cho CBNV c&oacute; nhiều đ&oacute;ng g&oacute;p cho C&ocirc;ng ty&hellip;.</p>

<p>+&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; M&ocirc;i trường l&agrave;m việc cởi mở, trẻ trung, th&acirc;n thiện, nhiều cơ hội thăng tiến trong c&ocirc;ng việc, c&ugrave;ng học hỏi với 400 đồng nghiệp trẻ trung th&acirc;n thiện với bề d&agrave;y th&agrave;nh t&iacute;ch hoạt động hơn 10 năm trong lĩnh vực giải ph&aacute;p thanh to&aacute;n</p>

<p>+&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Chế độ thưởng v&agrave;o c&aacute;c dịp lễ Tết, thưởng h&agrave;ng năm theo th&acirc;m ni&ecirc;n v&agrave; kết quả kinh doanh của c&ocirc;ng ty.</p>

<p>+&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Hưởng đầy đủ c&aacute;c chế độ BHXH, được tham gia bảo hi&ecirc;̉m sức khỏe cao cấp theo chính sách ri&ecirc;ng của c&ocirc;ng ty với rất nhiều quyền lợi d&agrave;nh cho người lao động v&agrave; người th&acirc;n khi tham gia bảo hiểm.</p>

<p>+&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Được tham gia các chương trình teambuilding, nghỉ mát, du xu&acirc;n, ng&agrave;y hội gia đ&igrave;nh do c&ocirc;ng ty t&ocirc;̉ chức hàng năm tại các địa đi&ecirc;̉m du lịch, resort cao c&acirc;́p.</p>

<p>+&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Được tham gia nhiều hoạt động tập thể s&aacute;ng tạo, CLB tennis, b&oacute;ng đ&aacute;, bơi lội, cầu l&ocirc;ng, b&oacute;ng b&agrave;n, hoạt động thiện nguyện ...</p>

<p>*<strong>Hồ sơ bao gồm: </strong><strong><em>(c&oacute; thể nộp hồ sơ photo, bổ sung hồ sơ gốc khi được tuyển dụng)</em></strong></p>

<p>- Sơ yếu l&yacute; lịch, giấy kh&aacute;m sức khỏe,</p>

<p>- Bằng tốt nghiệp v&agrave; c&aacute;c chứng chỉ li&ecirc;n quan;</p>

<p>- Chứng minh thư v&agrave; hộ khẩu photo</p>

<p>- CV (m&ocirc; tả r&otilde; qu&aacute; tr&igrave;nh học tập v&agrave; l&agrave;m việc).</p>

<p><strong>*Ứng vi&ecirc;n quan t&acirc;m xin vui l&ograve;ng gửi hồ sơ về địa chỉ: </strong>email: <a href="mailto:tuyendung@vnpay.vn">tuyendung@vnpay.vn</a></p>
', NULL, 0, 16, 1, NULL, 1, 0)
INSERT [dbo].[Job] ([JOB_ID], [GROUP_ID], [JOB_NAME], [NUMBER], [SALARY], [CREATED_DATE], [EXPIRED_DATE], [JOB_DECRIPTION], [IMAGE], [ISDELETED], [VIEW_COUNT], [JOB_STATUS], [UPDATED_ON], [CV_APPLY_COUNT], [ACTIVE_BANNER]) VALUES (112, 36, N'NHÂN VIÊN TƯ VẤN CHĂM SÓC KHÁCH HÀNG (vé máy bay)', 6, NULL, CAST(0xEB3D0B00 AS Date), CAST(0x4C3E0B00 AS Date), N'<p><strong>NH&Acirc;N VI&Ecirc;N TƯ VẤN CHĂM S&Oacute;C KH&Aacute;CH H&Agrave;NG (v&eacute; m&aacute;y bay)</strong></p>

<p><strong>* Số lượng cần tuyển: 6 người</strong></p>

<p><strong>* Vị tr&iacute; l&agrave;m việc: Nh&acirc;n vi&ecirc;n tư vấn</strong></p>

<p><strong>* Địa điểm l&agrave;m việc: &nbsp;22 L&aacute;ng Hạ - Đống Đa- H&agrave; Nội</strong></p>

<p><strong>* Thời gian l&agrave;m việc: theo ca xoay. Nghỉ 1 ng&agrave;y/tuần, được hưởng chế độ nghỉ ph&eacute;p khi l&agrave; nh&acirc;n vi&ecirc;n ch&iacute;nh thức</strong></p>

<p><strong>Ca 1: từ 7h30 đến 15h30</strong></p>

<p><strong>Ca 2: từ 14h đến 21h</strong></p>

<p>* <strong>M&ocirc; tả c&ocirc;ng việc:</strong></p>

<ul>
	<li>Gọi điện/tiếp nhận cuộc gọi để tư vấn kh&aacute;ch h&agrave;ng sử dụng dịch vụ đặt v&eacute; m&aacute;y bay qua hệ thống của C&ocirc;ng ty.</li>
	<li>Cung cấp cho kh&aacute;ch h&agrave;ng th&ocirc;ng tin đường bay, gi&aacute; v&eacute;, điều kiện v&eacute;, c&aacute;ch thanh to&aacute;n v&eacute; m&aacute;y bay.</li>
	<li>Hỗ trợ đặt v&eacute; c&aacute;c trường hợp đơn giản cho kh&aacute;ch h&agrave;ng.</li>
	<li>Gọi điện chăm s&oacute;c kh&aacute;ch h&agrave;ng.</li>
	<li>C&aacute;c c&ocirc;ng việc kh&aacute;c theo ph&acirc;n c&ocirc;ng của cấp tr&ecirc;n.</li>
</ul>

<p><strong>* Y&ecirc;u cầu: </strong></p>

<ul>
	<li>Tốt nghiệp cao đẳng trở l&ecirc;n c&aacute;c ng&agrave;nh du lịch, thương mại.</li>
	<li>Sử dụng tốt tin học văn ph&ograve;ng: Word, Excel, Internet.</li>
	<li>Giọng n&oacute;i dễ nghe, kh&ocirc;ng n&oacute;i ngọng, kh&ocirc;ng n&oacute;i lắp, kh&ocirc;ng n&oacute;i tiếng địa phương</li>
	<li>Ưu ti&ecirc;n c&aacute;c ứng vi&ecirc;n c&oacute; kinh nghiệm trong lĩnh vực v&eacute; m&aacute;y bay hoặc vị tr&iacute; tổng đ&agrave;i vi&ecirc;n chăm s&oacute;c kh&aacute;ch h&agrave;ng.</li>
	<li>Kỹ năng giao tiếp xử l&yacute; t&igrave;nh huống tốt, nhanh nhẹn.</li>
	<li>Giọng n&oacute;i dễ nghe, kh&ocirc;ng n&oacute;i ngọng, hoạt ng&ocirc;n.</li>
	<li>Nhiệt t&igrave;nh, cẩn thận, nhẹ nh&agrave;ng, ki&ecirc;n nhẫn, c&oacute; khả năng chịu &aacute;p lực c&ocirc;ng việc tốt.</li>
	<li>C&oacute; tinh thần tr&aacute;ch nhiệm cao.&nbsp;</li>
</ul>

<p><strong>* Chế độ đ&atilde;i ngộ:</strong></p>

<ul>
	<li>Thu nhập: từ 4 triệu - 5 triệu đồng, v&agrave; c&aacute;c khoản phụ cấp theo hiệu quả c&ocirc;ng việc.</li>
	<li>Được đ&agrave;o tạo kỹ năng giao tiếp, thuyết tr&igrave;nh, chăm s&oacute;c kh&aacute;ch h&agrave;ng, l&agrave;m việc nh&oacute;m v&agrave; chuy&ecirc;n m&ocirc;n nghiệp vụ (nghề ticketing) theo y&ecirc;u cầu của c&ocirc;ng việc để ph&aacute;t huy tốt nhất khả năng, năng lực của bản th&acirc;n;</li>
	<li>K&yacute; hợp đồng lao động v&agrave; hưởng c&aacute;c quyền lợi theo đ&uacute;ng luật lao động (được đ&oacute;ng BHXH, BHYT, KPCĐ ngay khi được tiếp nhận ch&iacute;nh thức, hưởng chế độ nghỉ ph&eacute;p theo quy định của Luật Lao động);</li>
	<li>Chế độ đ&atilde;i ngộ hấp dẫn cạnh tranh với c&aacute;c c&ocirc;ng ty kh&aacute;c tr&ecirc;n thị trường: hỗ trợ cơm trưa (40.000đ/ng&agrave;y), hỗ trợ ăn s&aacute;ng miễn ph&iacute;, hỗ trợ trang điểm cho nh&acirc;n vi&ecirc;n nữ, hỗ trợ ưu đ&atilde;i cho CBNV mua nh&agrave;, thưởng cổ phiếu cho CBNV c&oacute; nhiều đ&oacute;ng g&oacute;p cho C&ocirc;ng ty&hellip;.</li>
	<li>M&ocirc;i trường l&agrave;m việc cởi mở, trẻ trung, th&acirc;n thiện, nhiều cơ hội thăng tiến trong c&ocirc;ng việc, c&ugrave;ng học hỏi với 400 đồng nghiệp trẻ trung th&acirc;n thiện với bề d&agrave;y th&agrave;nh t&iacute;ch hoạt động hơn 10 năm trong lĩnh vực giải ph&aacute;p thanh to&aacute;n</li>
	<li>Chế độ thưởng v&agrave;o c&aacute;c dịp lễ Tết, thưởng h&agrave;ng năm theo th&acirc;m ni&ecirc;n v&agrave; kết quả kinh doanh của c&ocirc;ng ty.</li>
	<li>Được tham gia các chương trình teambuilding, nghỉ mát, du xu&acirc;n, ng&agrave;y hội gia đ&igrave;nh do c&ocirc;ng ty t&ocirc;̉ chức hàng năm tại các địa đi&ecirc;̉m du lịch, resort cao c&acirc;́p.</li>
	<li>Được tham gia nhiều hoạt động tập thể s&aacute;ng tạo, CLB tennis, b&oacute;ng đ&aacute;, bơi lội, cầu l&ocirc;ng, b&oacute;ng b&agrave;n, hoạt động thiện nguyện ...</li>
</ul>

<p>*<strong>Hồ sơ bao gồm: </strong><em>(c&oacute; thể nộp hồ sơ photo, bổ sung hồ sơ gốc khi được tuyển dụng)</em></p>

<p>- CV (m&ocirc; tả r&otilde; qu&aacute; tr&igrave;nh học tập v&agrave; l&agrave;m việc).</p>

<p>- Sơ yếu l&yacute; lịch (k&egrave;m ảnh r&otilde; mặt), giấy kh&aacute;m sức khỏe;</p>

<p>- Bằng tốt nghiệp v&agrave; c&aacute;c chứng chỉ li&ecirc;n quan;</p>

<p>- Bản photo chứng minh thư, hộ khẩu, giấy khai sinh;</p>

<p><strong>*Ứng vi&ecirc;n quan t&acirc;m xin vui l&ograve;ng gửi hồ sơ về địa chỉ: </strong>email: <a href="mailto:tuyendung@vnpay.vn">tuyendung@vnpay.vn</a></p>
', NULL, 0, 10, 1, NULL, 0, 0)
INSERT [dbo].[Job] ([JOB_ID], [GROUP_ID], [JOB_NAME], [NUMBER], [SALARY], [CREATED_DATE], [EXPIRED_DATE], [JOB_DECRIPTION], [IMAGE], [ISDELETED], [VIEW_COUNT], [JOB_STATUS], [UPDATED_ON], [CV_APPLY_COUNT], [ACTIVE_BANNER]) VALUES (113, 35, N'Tổng đài viên', 12, NULL, CAST(0xEB3D0B00 AS Date), CAST(0x4C3E0B00 AS Date), N'<p><strong>TỔNG Đ&Agrave;I VI&Ecirc;N</strong></p>

<p><strong>* Số lượng cần tuyển: 12&nbsp;Nữ</strong></p>

<p><strong>* Vị tr&iacute; l&agrave;m việc: Tổng đ&agrave;i vi&ecirc;n</strong></p>

<p><strong>* Địa điểm l&agrave;m việc: &nbsp;22 L&aacute;ng Hạ - Đống Đa- H&agrave; Nội</strong></p>

<p><strong>* Thời gian l&agrave;m việc: theo ca. </strong></p>

<p><strong>Ca 1: từ 7h30 đến 15h</strong></p>

<p><strong>Ca 2: từ 15h đến 22h</strong></p>

<p>* <strong>M&ocirc; tả c&ocirc;ng việc:</strong></p>

<ul>
	<li>Trực tổng đ&agrave;i chăm s&oacute;c kh&aacute;ch h&agrave;ng của C&ocirc;ng ty</li>
	<li>Giới thiệu v&agrave; hướng dẫn c&aacute;ch sử dụng dịch vụ cho kh&aacute;ch h&agrave;ng.</li>
	<li>Tiếp nhận th&ocirc;ng tin, trực tiếp tra cứu, hỗ trợ th&ocirc;ng tin cho kh&aacute;ch h&agrave;ng.</li>
</ul>

<p><strong>* Y&ecirc;u cầu: </strong></p>

<ul>
	<li>Tốt nghiệp cao đẳng trở l&ecirc;n c&aacute;c ng&agrave;nh t&agrave;i ch&iacute;nh, ng&acirc;n h&agrave;ng, kế to&aacute;n, c&ocirc;ng nghệ th&ocirc;ng tin.</li>
	<li>Sử dụng tốt tin học văn ph&ograve;ng: Word, Excel, Internet</li>
	<li>Ưa nh&igrave;n, tuổi từ 20-25</li>
	<li>Giọng n&oacute;i dễ nghe, kh&ocirc;ng n&oacute;i ngọng, kh&ocirc;ng n&oacute;i lắp, kh&ocirc;ng tiếng địa phương</li>
	<li>Khả năng tiếp thu v&agrave; giao tiếp tốt, chủ động trong c&ocirc;ng việc</li>
	<li>Nhiệt t&igrave;nh, cẩn thận, nhẹ nh&agrave;ng, ki&ecirc;n nhẫn.&nbsp;</li>
	<li>Ưu ti&ecirc;n c&aacute;c ứng vi&ecirc;n c&oacute; kinh nghiệm trực tổng đ&agrave;i, dịch vụ; c&oacute; kiến thức về ng&agrave;nh t&agrave;i ch&iacute;nh, ng&acirc;n h&agrave;ng, thương mại điện tử.</li>
</ul>

<p><strong>* Chế độ đ&atilde;i ngộ:</strong></p>

<ul>
	<li>Thu nhập: từ 4 đến 6 triệu theo hiệu quả c&ocirc;ng việc v&agrave; c&aacute;c khoản phụ cấp kh&aacute;c</li>
	<li>Được đ&agrave;o tạo kỹ năng giao tiếp, thuyết tr&igrave;nh, chăm s&oacute;c kh&aacute;ch h&agrave;ng, l&agrave;m việc nh&oacute;m v&agrave; chuy&ecirc;n m&ocirc;n nghiệp vụ theo y&ecirc;u cầu của c&ocirc;ng việc để ph&aacute;t huy tốt nhất khả năng, năng lực của bản th&acirc;n;</li>
	<li>K&yacute; hợp đồng lao động v&agrave; hưởng c&aacute;c quyền lợi theo đ&uacute;ng luật lao động (được đ&oacute;ng BHXH, BHYT, KPCĐ ngay khi được tiếp nhận ch&iacute;nh thức);</li>
	<li>M&ocirc;i trường l&agrave;m việc ổn định, chuy&ecirc;n nghiệp, năng động, trẻ trung;</li>
	<li>Đồng nghiệp: Ƭh&acirc;n thiện, hợp t&aacute;c &amp; chuy&ecirc;n nghiệp;</li>
	<li>C&oacute; cơ hội lu&acirc;n chuyển, thay đổi c&ocirc;ng việc cho ph&ugrave; hợp với năng lực, sở trường;</li>
	<li>Chế độ thưởng v&agrave;o c&aacute;c dịp Lễ tết, sự kiện quan trọng, thưởng cho c&aacute;c c&aacute; nh&acirc;n c&oacute; th&agrave;nh t&iacute;ch xuất sắc, thưởng theo c&aacute;c dự &aacute;n;</li>
	<li>Chế độ ph&uacute;c lợi: Ch&iacute;nh s&aacute;ch hỗ trợ ưu đ&atilde;i cho CBNV mua nh&agrave;, thưởng cổ phiếu cho CBNV c&oacute; nhiều đ&oacute;ng g&oacute;p cho C&ocirc;ng ty;</li>
	<li>Thường xuy&ecirc;n được tham gia c&aacute;c hoạt động tập thể của C&ocirc;ng ty: Kh&aacute;m sức khỏe định kỳ h&agrave;ng năm, Nghỉ m&aacute;t, Văn nghệ, Teambuilding, CLB tennis, b&oacute;ng đ&aacute;, bơi lội, hoạt động thiện nguyện...</li>
</ul>

<p>*<strong>Hồ sơ bao gồm:</strong></p>

<p>- Sơ yếu l&yacute; lịch (k&egrave;m ảnh r&otilde; mặt), giấy kh&aacute;m sức khỏe,</p>

<p>- Bằng tốt nghiệp v&agrave; c&aacute;c chứng chỉ li&ecirc;n quan;</p>

<p>- CV (m&ocirc; tả r&otilde; qu&aacute; tr&igrave;nh học tập v&agrave; l&agrave;m việc).</p>

<p><strong>* Hạn nộp hồ sơ: </strong>hết ng&agrave;y 30/03/2018.</p>

<p><strong>*Ứng vi&ecirc;n quan t&acirc;m xin vui l&ograve;ng gửi hồ sơ về địa chỉ: </strong>email: <a href="mailto:tuyendung@vnpay.vn">tuyendung@vnpay.vn</a></p>
', NULL, 0, 13, 1, CAST(0xEB3D0B00 AS Date), 0, 0)
INSERT [dbo].[Job] ([JOB_ID], [GROUP_ID], [JOB_NAME], [NUMBER], [SALARY], [CREATED_DATE], [EXPIRED_DATE], [JOB_DECRIPTION], [IMAGE], [ISDELETED], [VIEW_COUNT], [JOB_STATUS], [UPDATED_ON], [CV_APPLY_COUNT], [ACTIVE_BANNER]) VALUES (114, 45, N'NHÂN VIÊN QUẢN LÝ RỦI RO THẺ VÀ NGÂN HÀNG ĐIỆN TỬ', 2, NULL, CAST(0xEB3D0B00 AS Date), CAST(0x4C3E0B00 AS Date), N'<p><strong>NH&Acirc;N VI&Ecirc;N QUẢN L&Yacute; RỦI RO THẺ V&Agrave; NG&Acirc;N H&Agrave;NG ĐIỆN TỬ</strong></p>

<p><strong>* Số lượng cần tuyển: 02</strong></p>

<p><strong>* Vị tr&iacute; l&agrave;m việc: Ph&ograve;ng sản phẩm v&agrave; ch&iacute;nh s&aacute;ch - Khối kh&aacute;ch h&agrave;ng doanh nghiệp</strong></p>

<p><strong>* Địa điểm l&agrave;m việc: Tầng 9, t&ograve;a A, 88 L&aacute;ng Hạ - Đống Đa- H&agrave; Nội</strong></p>

<p><strong>* Thời gian l&agrave;m việc: 8h00 &ndash; 12h, 13h30 &ndash; 17h30 thứ hai &ndash; thứ s&aacute;u h&agrave;ng tuần, thứ bảy l&agrave;m buổi s&aacute;ng.</strong></p>

<p>* <strong>M&ocirc; tả c&ocirc;ng việc:</strong></p>

<p>+&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Nghi&ecirc;n cứu, x&acirc;y dựng c&aacute;c ch&iacute;nh s&aacute;ch quản l&yacute; rủi ro trong hoạt động thanh to&aacute;n thẻ v&agrave; ng&acirc;n h&agrave;ng điện tử.</p>

<p>+&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; X&acirc;y dựng c&aacute;c quy tr&igrave;nh quản trị rủi ro gian lận, thiết lập hệ thống b&aacute;o c&aacute;o, gi&aacute;m s&aacute;t, hệ thống cảnh b&aacute;o nhằm ph&aacute;t hiện c&aacute;c trường hợp bất thường trong hoạt động thanh to&aacute;n thẻ v&agrave; ng&acirc;n h&agrave;ng điện tử.</p>

<p>+&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Thực hiện việc gi&aacute;m s&aacute;t giao dịch thanh to&aacute;n thẻ &amp; ng&acirc;n h&agrave;ng điện tử. Nhận diện, đ&aacute;nh gi&aacute;, phận t&iacute;ch rủi ro đề xuất phương thức ph&ograve;ng ngừa, xử l&yacute; rủi ro</p>

<p>+&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Cập nhật v&agrave; đ&aacute;nh gi&aacute; t&iacute;nh chất quan trọng trong c&aacute;c quy định của Tổ chức thẻ quốc tế, Ng&acirc;n h&agrave;ng nh&agrave; nước; đề xuất triển khai, thực hiện đảm bảo tu&acirc;n thủ quy định đối với c&aacute;c quy định của c&aacute;c Tổ chức thẻ Quốc tế, ng&acirc;n h&agrave;ng nh&agrave; nước.</p>

<p>+&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Phối hợp với c&aacute;c b&ecirc;n (Ng&acirc;n h&agrave;ng, đơn vị chấp nhận thanh to&aacute;n) để xử l&yacute; giao dịch rủi ro gian lận hoặc giao dịch nghi ngờ rủi ro, gian lận.</p>

<p>+&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Lập b&aacute;o c&aacute;o về giao dịch rủi ro, gian lận.</p>

<p>+&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; C&aacute;c c&ocirc;ng việc kh&aacute;c được ph&acirc;n c&ocirc;ng.</p>

<p><strong>* Y&ecirc;u cầu: </strong></p>

<p>+&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Tốt nghiệp Đại học chuy&ecirc;n ng&agrave;nh li&ecirc;n quan đến Ngoại thương, thương mại, ng&acirc;n h&agrave;ng, t&agrave;i ch&iacute;nh kế to&aacute;n.</p>

<p>+&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; C&oacute; kinh nghiệm l&agrave;m việc với c&aacute;c giải ph&aacute;p thanh to&aacute;n trực tuyến v&agrave; phần mềm tr&ecirc;n mobile hay PC li&ecirc;n quan đến Ng&acirc;n h&agrave;ng l&agrave; một lợi thế lớn.</p>

<p>+&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Ưu ti&ecirc;n c&aacute;c ứng vi&ecirc;n c&oacute; kinh nghiệm tại c&aacute;c vị tr&iacute; ph&aacute;t triển sản phẩm EBanking trong ng&acirc;n h&agrave;ng hoặc c&aacute;c tổ chức trong lĩnh vực thanh to&aacute;n điện tử...</p>

<p>+&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; C&oacute; khả năng nghi&ecirc;n cứu, đọc viết c&aacute;c t&agrave;i liệu bằng tiếng Anh.</p>

<p>+&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Khả năng suy luận, tư duy logic tốt về ph&acirc;n t&iacute;ch hệ thống, quy tr&igrave;nh nghiệp vụ v&agrave; viết đặc tả y&ecirc;u cầu.</p>

<p>+&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; C&oacute; kinh nghiệm v&agrave; khả năng đ&agrave;o tạo, thuyết tr&igrave;nh, truyền đạt.</p>

<p>+&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Th&agrave;nh thạo Microsoft Office, Visio.</p>

<p>+&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; S&aacute;ng tạo, c&oacute; tr&aacute;ch nhiệm trong c&ocirc;ng việc.</p>

<p><strong>* Chế độ đ&atilde;i ngộ:</strong></p>

<p>+&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Mức lương thỏa thuận theo năng lực.</p>

<p>+&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Chế độ đ&atilde;i ngộ hấp dẫn cạnh tranh với c&aacute;c c&ocirc;ng ty kh&aacute;c tr&ecirc;n thị trường: hỗ trợ cơm trưa (40.000đ/ng&agrave;y), cung cấp hoa quả v&agrave; đồ uống miễn ph&iacute; tại văn ph&ograve;ng, hỗ trợ trang điểm cho nh&acirc;n vi&ecirc;n nữ, hỗ trợ ưu đ&atilde;i cho CBNV mua nh&agrave;, thưởng cổ phiếu cho CBNV c&oacute; nhiều đ&oacute;ng g&oacute;p cho C&ocirc;ng ty&hellip;.</p>

<p>+&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; M&ocirc;i trường l&agrave;m việc cởi mở, trẻ trung, th&acirc;n thiện, nhiều cơ hội thăng tiến trong c&ocirc;ng việc, c&ugrave;ng học hỏi với 400 đồng nghiệp trẻ trung th&acirc;n thiện với bề d&agrave;y th&agrave;nh t&iacute;ch hoạt động hơn 10 năm trong lĩnh vực giải ph&aacute;p thanh to&aacute;n.</p>

<p>+&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Chế độ thưởng v&agrave;o c&aacute;c dịp lễ Tết, thưởng h&agrave;ng năm theo th&acirc;m ni&ecirc;n v&agrave; kết quả kinh doanh của c&ocirc;ng ty.</p>

<p>+&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Hưởng đầy đủ c&aacute;c chế độ BHXH, được tham gia bảo hi&ecirc;̉m sức khỏe cao cấp theo chính sách ri&ecirc;ng của c&ocirc;ng ty với rất nhiều quyền lợi d&agrave;nh cho người lao động v&agrave; người th&acirc;n khi tham gia bảo hiểm.</p>

<p>+&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Được tham gia các chương trình teambuilding, nghỉ mát, du xu&acirc;n, ng&agrave;y hội gia đ&igrave;nh do c&ocirc;ng ty t&ocirc;̉ chức hàng năm tại các địa đi&ecirc;̉m du lịch, resort cao c&acirc;́p.</p>

<p>+&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Được tham gia nhiều hoạt động tập thể s&aacute;ng tạo, CLB tennis, b&oacute;ng đ&aacute;, bơi lội, cầu l&ocirc;ng, b&oacute;ng b&agrave;n, hoạt động thiện nguyện ...</p>

<p>*<strong>Hồ sơ bao gồm: </strong><strong><em>(c&oacute; thể nộp hồ sơ photo, bổ sung hồ sơ gốc khi được tuyển dụng)</em></strong></p>

<p>- CV (m&ocirc; tả r&otilde; qu&aacute; tr&igrave;nh học tập v&agrave; l&agrave;m việc).</p>

<p>- Bằng tốt nghiệp v&agrave; c&aacute;c chứng chỉ li&ecirc;n quan.</p>

<p><strong>*Ứng vi&ecirc;n quan t&acirc;m xin vui l&ograve;ng gửi hồ sơ về địa chỉ: </strong>email: <a href="mailto:tuyendung@vnpay.vn">tuyendung@vnpay.vn</a></p>
', NULL, 0, 71, 1, NULL, 0, 0)
INSERT [dbo].[Job] ([JOB_ID], [GROUP_ID], [JOB_NAME], [NUMBER], [SALARY], [CREATED_DATE], [EXPIRED_DATE], [JOB_DECRIPTION], [IMAGE], [ISDELETED], [VIEW_COUNT], [JOB_STATUS], [UPDATED_ON], [CV_APPLY_COUNT], [ACTIVE_BANNER]) VALUES (115, 39, N'NHÂN VIÊN HÀNH CHÍNH LỄ TÂN', 1, NULL, CAST(0xEB3D0B00 AS Date), CAST(0x4C3E0B00 AS Date), N'<p><strong>NH&Acirc;N VI&Ecirc;N H&Agrave;NH CH&Iacute;NH LỄ T&Acirc;N</strong></p>

<p><strong>* Số lượng cần tuyển: 01</strong></p>

<p><strong>* Vị tr&iacute; l&agrave;m việc: Ph&ograve;ng Tổ chức h&agrave;nh ch&iacute;nh</strong></p>

<p><strong>* Địa điểm l&agrave;m việc: 117 Nguyễn Du, P. Bến Th&agrave;nh, Quận 1, TP. HCM</strong></p>

<p><strong>* Thời gian l&agrave;m việc: 8h00 &ndash; 17h30 c&aacute;c ng&agrave;y thứ 2-thứ 6, thứ 7 l&agrave;m buổi s&aacute;ng</strong></p>

<p>* <strong>M&ocirc; tả c&ocirc;ng việc:</strong></p>

<p>+&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Thực hiện c&ocirc;ng t&aacute;c văn thư:</p>

<p>o&nbsp;&nbsp; Đ&oacute;ng dấu, kiểm tra thể thức văn bản v&agrave; đ&oacute;ng dấu văn bản của c&ocirc;ng ty.</p>

<p>o&nbsp;&nbsp; Viết giấy giới thiệu cho CBNV c&aacute;c ph&ograve;ng/ban l&agrave;m việc với kh&aacute;ch h&agrave;ng.</p>

<p>o&nbsp;&nbsp; Quản l&yacute;, v&agrave;o sổ, th&ocirc;ng b&aacute;o ban h&agrave;nh v&agrave; lưu trữ c&aacute;c văn bản nội bộ.</p>

<p>o&nbsp;&nbsp; Photo, c&ocirc;ng chứng t&agrave;i liệu theo y&ecirc;u cầu của c&aacute;c bộ phận.</p>

<p>+&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Thực hiện c&ocirc;ng t&aacute;c h&agrave;nh ch&iacute;nh, hậu cần:</p>

<p>o&nbsp;&nbsp; Thực hiện thủ tục mua sắm t&agrave;i sản, trang thiết bị văn ph&ograve;ng</p>

<p>o&nbsp;&nbsp; Quản l&yacute; cấp ph&aacute;t đồng phục cho c&aacute;n bộ nh&acirc;n vi&ecirc;n.</p>

<p>o&nbsp;&nbsp; Quản l&yacute;, cấp ph&aacute;t thẻ taxi. Kiểm tra v&agrave; đối chiếu thẻ taxi h&agrave;ng th&aacute;ng</p>

<p>o&nbsp;&nbsp; Chuẩn bị hậu cần cho ph&ograve;ng họp.</p>

<p>o&nbsp;&nbsp; Trang tr&iacute; văn ph&ograve;ng v&agrave;o c&aacute;c dịp Noen, Tết Nguy&ecirc;n đ&aacute;n</p>

<p>o&nbsp;&nbsp; Mua sắm c&acirc;y, hoa, đồ lễ, hoa quả, b&aacute;nh kẹo khai xu&acirc;n cho dịp tết đầu năm</p>

<p>+&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Phối hợp l&ecirc;n kế hoạch, tổ chức c&aacute;c hoạt động, sự kiện của c&ocirc;ng ty:</p>

<p>o&nbsp;&nbsp; Đầu mối tổng hợp lập danh s&aacute;ch đăng k&yacute; tham gia c&aacute;c chương tr&igrave;nh của CBNV, ph&acirc;n ph&aacute;t qu&agrave; Trung thu, qu&agrave; rượu tết, lịch tặng đối t&aacute;c.</p>

<p>o&nbsp;&nbsp; Tổ chức c&aacute;c hoạt động sự kiện của C&ocirc;ng ty.</p>

<p>o&nbsp;&nbsp; Thực hiện theo d&otilde;i c&ocirc;ng t&aacute;c chuyển ph&aacute;t nhanh, tiếp nhận v&agrave; ph&aacute;t thư từ t&agrave;i liệu.</p>

<p>+&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Hỗ trợ thực hiện chấm c&ocirc;ng, theo d&otilde;i nghỉ ph&eacute;p, l&agrave;m thủ tục thanh to&aacute;n chế độ l&agrave;m th&ecirc;m giờ cho CBNV.</p>

<p>+&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Thực hiện c&ocirc;ng t&aacute;c lễ t&acirc;n: Đ&oacute;n tiếp kh&aacute;ch đến giao dịch, l&agrave;m việc, hướng dẫn v&agrave; li&ecirc;n hệ với c&aacute;c bộ phận li&ecirc;n quan.</p>

<p>+&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Tham gia tổ chức c&aacute;c hoạt động chăm lo đời sống tinh thần cho người lao động: Thăm hỏi CBNV ốm đau, thai sản, tổ chức sinh nhật th&aacute;ng, đặt hoa ch&uacute;c mừng sinh nhật Ban L&atilde;nh đạo ...</p>

<p>+&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Thực hiện c&aacute;c c&ocirc;ng việc kh&aacute;c theo chỉ đạo của Gi&aacute;m đốc v&agrave; Trưởng Ph&ograve;ng TCHC.</p>

<p><strong>* Y&ecirc;u cầu: </strong></p>

<p>+&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Tốt nghiệp Cao đẳng trở l&ecirc;n.</p>

<p>+&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; C&oacute; khả năng sắp xếp điều phối tốt c&aacute;c c&ocirc;ng việc văn ph&ograve;ng</p>

<p>+&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Nhanh nhẹn, nhiệt t&igrave;nh, c&oacute; tr&aacute;ch nhiệm cao trong c&ocirc;ng việc</p>

<p>+&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Kỹ năng giao tiếp, xử l&yacute; vấn đề tốt.</p>

<p>+&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; C&oacute; kỹ năng soạn thảo văn bản, lưu trữ văn bản tốt.</p>

<p>+&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Ngoại h&igrave;nh ưa nh&igrave;n.</p>

<p>+&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Ham học hỏi.</p>

<p>+&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; C&acirc;̉n th&acirc;̣n từng chi ti&ecirc;́t nhỏ.</p>

<p>+&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Lu&ocirc;n sẵn s&agrave;ng tiếp nhận nhiệm vụ mới theo y&ecirc;u cầu của cấp tr&ecirc;n.</p>

<p><strong>* Chế độ đ&atilde;i ngộ:</strong></p>

<p>+&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Mức lương thỏa thuận theo năng lực.</p>

<p>+&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Chế độ đ&atilde;i ngộ hấp dẫn cạnh tranh với c&aacute;c c&ocirc;ng ty kh&aacute;c tr&ecirc;n thị trường: hỗ trợ cơm trưa (40.000đ/ng&agrave;y), cung cấp hoa quả v&agrave; đồ uống miễn ph&iacute; tại văn ph&ograve;ng, hỗ trợ trang điểm cho nh&acirc;n vi&ecirc;n nữ, hỗ trợ ưu đ&atilde;i cho CBNV mua nh&agrave;, thưởng cổ phiếu cho CBNV c&oacute; nhiều đ&oacute;ng g&oacute;p cho C&ocirc;ng ty&hellip;.</p>

<p>+&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; M&ocirc;i trường l&agrave;m việc cởi mở, trẻ trung, th&acirc;n thiện, nhiều cơ hội thăng tiến trong c&ocirc;ng việc, c&ugrave;ng học hỏi với 400 đồng nghiệp trẻ trung th&acirc;n thiện với bề d&agrave;y th&agrave;nh t&iacute;ch hoạt động hơn 10 năm trong lĩnh vực giải ph&aacute;p thanh to&aacute;n</p>

<p>+&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Chế độ thưởng hấp dẫn v&agrave;o c&aacute;c dịp lễ Tết, thưởng h&agrave;ng năm theo th&acirc;m ni&ecirc;n v&agrave; kết quả kinh doanh của c&ocirc;ng ty.</p>

<p>+&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Hưởng đầy đủ c&aacute;c chế độ BHXH, được tham gia bảo hi&ecirc;̉m sức khỏe cao cấp theo chính sách ri&ecirc;ng của c&ocirc;ng ty với rất nhiều quyền lợi d&agrave;nh cho người lao động v&agrave; người th&acirc;n khi tham gia bảo hiểm.</p>

<p>+&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Được tham gia các chương trình teambuilding, nghỉ mát, du xu&acirc;n, ng&agrave;y hội gia đ&igrave;nh do c&ocirc;ng ty t&ocirc;̉ chức hàng năm tại các địa đi&ecirc;̉m du lịch, resort cao c&acirc;́p.</p>

<p>+&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Được tham gia nhiều hoạt động tập thể s&aacute;ng tạo, CLB tennis, b&oacute;ng đ&aacute;, bơi lội, cầu l&ocirc;ng, b&oacute;ng b&agrave;n, hoạt động thiện nguyện ...</p>

<p>*<strong>Hồ sơ bao gồm:</strong></p>

<p>- CV (m&ocirc; tả r&otilde; qu&aacute; tr&igrave;nh học tập v&agrave; l&agrave;m việc) k&egrave;m ảnh r&otilde; mặt,</p>

<p>- Sơ yếu l&yacute; lịch, giấy kh&aacute;m sức khỏe,</p>

<p>- Bằng tốt nghiệp v&agrave; c&aacute;c chứng chỉ li&ecirc;n quan;</p>

<p><strong>*Ứng vi&ecirc;n quan t&acirc;m xin vui l&ograve;ng gửi hồ sơ về địa chỉ: </strong>email: <a href="mailto:tuyendung@vnpay.vn">tuyendung@vnpay.vn</a></p>
', NULL, 0, 15, 1, NULL, 0, 0)
INSERT [dbo].[Job] ([JOB_ID], [GROUP_ID], [JOB_NAME], [NUMBER], [SALARY], [CREATED_DATE], [EXPIRED_DATE], [JOB_DECRIPTION], [IMAGE], [ISDELETED], [VIEW_COUNT], [JOB_STATUS], [UPDATED_ON], [CV_APPLY_COUNT], [ACTIVE_BANNER]) VALUES (116, 40, N'Nhân Viên Nghiệp vụ (Phòng Kinh Doanh)', 1, NULL, CAST(0xEB3D0B00 AS Date), CAST(0x4C3E0B00 AS Date), N'<p><strong>Nh&acirc;n Vi&ecirc;n Nghiệp vụ (Ph&ograve;ng Kinh Doanh), l&agrave;m việc tại TP HCM</strong></p>

<p><strong>* Số lượng cần tuyển: 01 người</strong></p>

<p><strong>* Vị tr&iacute; l&agrave;m việc: Nh&acirc;n vi&ecirc;n Nghiệp vụ</strong></p>

<p><strong>* Địa điểm l&agrave;m việc: Lầu 8, 117-119-121 Nguyễn Du, P. Bến Th&agrave;nh, Q1, TP.HCM</strong></p>

<p><strong>* Thời gian l&agrave;m việc: 8h00 &ndash; 12h, 13h00 &ndash; 17h00 thứ hai &ndash; thứ s&aacute;u h&agrave;ng tuần, thứ bảy l&agrave;m buổi s&aacute;ng.</strong></p>

<p>* <strong>M&ocirc; tả c&ocirc;ng việc:</strong></p>

<p>+&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Phụ tr&aacute;ch nghiệp vụ của Ph&ograve;ng Kinh Doanh:</p>

<p>o&nbsp;&nbsp; Trao đổi với c&aacute;c ng&acirc;n h&agrave;ng, đối t&aacute;c cần triển khai một ứng dụng hay nghiệp vụ mới (như ứng dụng Mobile Banking, ứng dụng b&aacute;n h&agrave;ng&hellip;) để lấy y&ecirc;u cầu đầy đủ.</p>

<p>o&nbsp;&nbsp; Chuyển c&aacute;c y&ecirc;u cầu nghiệp vụ cho Ph&ograve;ng Nghiệp vụ l&agrave;m t&agrave;i liệu chi tiết.</p>

<p>o&nbsp;&nbsp; Phối hợp c&ugrave;ng Ph&ograve;ng Nghiệp vụ ho&agrave;n chỉnh t&agrave;i liệu nghiệp vụ.</p>

<p>o&nbsp;&nbsp; Theo d&otilde;i v&agrave; đảm bảo tiến độ dự &aacute;n theo s&aacute;t kế hoạch đề ra.</p>

<p>o&nbsp;&nbsp; Test v&agrave; nghiệm thu dịch vụ trước khi triển khai.</p>

<p>+&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Theo d&otilde;i v&agrave; b&aacute;o c&aacute;o c&aacute;c dự &aacute;n ph&aacute;t triển sản phẩm dịch vụ, nghiệp vụ mới của ph&ograve;ng.</p>

<p>+&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Phụ tr&aacute;ch/ hỗ trợ soạn thảo một số t&agrave;i liệu theo y&ecirc;u cầu.</p>

<p>+&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Hỗ trợ chăm s&oacute;c kh&aacute;ch h&agrave;ng, đối t&aacute;c.</p>

<p><strong>* Y&ecirc;u cầu: </strong></p>

<p>+&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Tốt nghiệp cao đẳng/đại học hệ ch&iacute;nh quy ng&agrave;nh Kinh tế, Marketing, Ng&acirc;n h&agrave;ng, Quản trị Kinh doanh, CNTT.</p>

<p>+&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; C&oacute; 1 - 2 năm kinh nghiệm tại vị tr&iacute; tương đương (ưu ti&ecirc;n c&aacute;c ứng vi&ecirc;n đ&atilde; c&oacute; kinh nghiệm l&agrave;m việc trong lĩnh vực thanh to&aacute;n điện tử, thương mại điện tử, mobile banking);</p>

<p>+&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Sử dụng th&agrave;nh thạo tiếng Anh;</p>

<p>+&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Kỹ năng giao tiếp, thuyết tr&igrave;nh tốt;</p>

<p>+&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Sử dụng th&agrave;nh thạo Microsoft Office (Word, Excel, Powerpoint), kỹ năng soạn thảo văn bản tốt.</p>

<p>+&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Ngoại h&igrave;nh ưa nh&igrave;n, nhanh nhẹn, sẵn s&agrave;ng đi c&ocirc;ng t&aacute;c xa.</p>

<p>+&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Khả năng l&agrave;m việc nh&oacute;m tốt, c&oacute; tinh thần tr&aacute;ch nhiệm cao trong c&ocirc;ng việc.</p>

<p><strong>* Chế độ đ&atilde;i ngộ:</strong></p>

<p>+&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Mức lương thỏa thuận theo năng lực.</p>

<p>+&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Chế độ đ&atilde;i ngộ hấp dẫn cạnh tranh với c&aacute;c c&ocirc;ng ty kh&aacute;c tr&ecirc;n thị trường: hỗ trợ cơm trưa (40.000đ/ng&agrave;y), hỗ trợ trang điểm cho nh&acirc;n vi&ecirc;n nữ, hỗ trợ ưu đ&atilde;i cho CBNV mua nh&agrave;, thưởng cổ phiếu cho CBNV c&oacute; nhiều đ&oacute;ng g&oacute;p cho C&ocirc;ng ty&hellip;.</p>

<p>+&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; M&ocirc;i trường l&agrave;m việc cởi mở, trẻ trung, th&acirc;n thiện, nhiều cơ hội thăng tiến trong c&ocirc;ng việc, c&ugrave;ng học hỏi với 200 đồng nghiệp trẻ trung th&acirc;n thiện với bề d&agrave;y th&agrave;nh t&iacute;ch hoạt động hơn 8 năm trong lĩnh vực giải ph&aacute;p thanh to&aacute;n</p>

<p>+&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Chế độ thưởng v&agrave;o c&aacute;c dịp lễ Tết, thưởng h&agrave;ng năm theo th&acirc;m ni&ecirc;n v&agrave; kết quả kinh doanh của c&ocirc;ng ty (Từ 1 đến 6 th&aacute;ng lương).</p>

<p>+&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Hưởng đầy đủ c&aacute;c chế độ BHXH, được tham gia bảo hi&ecirc;̉m sức khỏe cao cấp theo chính sách ri&ecirc;ng của c&ocirc;ng ty với rất nhiều quyền lợi d&agrave;nh cho người lao động v&agrave; người th&acirc;n khi tham gia bảo hiểm.</p>

<p>+&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Được tham gia các chương trình teambuilding, nghỉ mát, du xu&acirc;n, ng&agrave;y hội gia đ&igrave;nh do c&ocirc;ng ty t&ocirc;̉ chức hàng năm tại các địa đi&ecirc;̉m du lịch, resort cao c&acirc;́p.</p>

<p>+&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Được tham gia nhiều hoạt động tập thể s&aacute;ng tạo, CLB tennis, b&oacute;ng đ&aacute;, bơi lội, cầu l&ocirc;ng, b&oacute;ng b&agrave;n, hoạt động thiện nguyện ...</p>

<p>+&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Hưởng chế độ ph&eacute;p năm v&agrave; nghỉ ốm nguy&ecirc;n lương 6 ng&agrave;y/năm.</p>

<p>*<strong>Hồ sơ bao gồm: </strong><strong><em>(c&oacute; thể nộp hồ sơ photo, bổ sung hồ sơ gốc khi được tuyển dụng)</em></strong></p>

<p>- Sơ yếu l&yacute; lịch, giấy kh&aacute;m sức khỏe,</p>

<p>- Bằng tốt nghiệp v&agrave; c&aacute;c chứng chỉ li&ecirc;n quan;</p>

<p>- Chứng minh thư v&agrave; hộ khẩu photo</p>

<p>- CV (m&ocirc; tả r&otilde; qu&aacute; tr&igrave;nh học tập v&agrave; l&agrave;m việc).</p>

<p><strong>*Ứng vi&ecirc;n quan t&acirc;m xin vui l&ograve;ng gửi hồ sơ về địa chỉ: </strong>email: <a href="mailto:tuyendung@vnpay.vn">tuyendung@vnpay.vn</a></p>
', NULL, 0, 15, 1, CAST(0xF23D0B00 AS Date), 1, 0)
INSERT [dbo].[Job] ([JOB_ID], [GROUP_ID], [JOB_NAME], [NUMBER], [SALARY], [CREATED_DATE], [EXPIRED_DATE], [JOB_DECRIPTION], [IMAGE], [ISDELETED], [VIEW_COUNT], [JOB_STATUS], [UPDATED_ON], [CV_APPLY_COUNT], [ACTIVE_BANNER]) VALUES (117, 40, N'Nhân viên Phát triển Kinh doanh và Marketing', 1, NULL, CAST(0xEB3D0B00 AS Date), CAST(0x4C3E0B00 AS Date), N'<p><strong>Nh&acirc;n vi&ecirc;n Ph&aacute;t triển Kinh doanh v&agrave; Marketing (l&agrave;m Việc Tại TP HCM)</strong></p>

<p><strong>* Số lượng cần tuyển: 01 người</strong></p>

<p><strong>* Vị tr&iacute; l&agrave;m việc: NV Ph&aacute;t triển Kinh doanh v&agrave; Marketing </strong></p>

<p><strong>* Địa điểm l&agrave;m việc: Lầu 8, 117-119-121 Nguyễn Du, P. Bến Th&agrave;nh, Q1, TP.HCM</strong></p>

<p><strong>* Thời gian l&agrave;m việc: 8h00 &ndash; 12h, 13h00 &ndash; 17h00 thứ hai &ndash; thứ s&aacute;u h&agrave;ng tuần, thứ bảy l&agrave;m buổi s&aacute;ng.</strong></p>

<p>* <strong>M&ocirc; tả c&ocirc;ng việc:</strong></p>

<p>+&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Phụ tr&aacute;ch việc l&ecirc;n kế hoạch hoặc c&ugrave;ng phối hợp, thực hiện c&aacute;c chương tr&igrave;nh để ph&aacute;t triển doanh số, ph&aacute;t triển kh&aacute;ch h&agrave;ng, dịch vụ.</p>

<p>+&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Phối hợp c&ugrave;ng Ph&ograve;ng Marketing triển khai c&aacute;c chương tr&igrave;nh PR, Marketing cho VNPAY miền nam.</p>

<p>+&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Phối hợp c&ugrave;ng c&aacute;c đối t&aacute;c triển khai c&aacute;c chương tr&igrave;nh Marketing.</p>

<p>+&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Đ&aacute;nh gi&aacute; hiệu quả c&aacute;c chương tr&igrave;nh Marketing đ&atilde; triển khai.</p>

<p>+&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Khảo s&aacute;t, nghi&ecirc;n cứu thị trường, đ&aacute;nh gi&aacute; SPDV hiện tại của c&ocirc;ng ty để đưa ra đề xuất cải tiến, triển khai kinh doanh hiệu quả hơn.</p>

<p>+&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Tham gia một số dự &aacute;n ph&aacute;t triển dịch vụ của c&ocirc;ng ty.</p>

<p>+&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Chăm s&oacute;c kh&aacute;ch h&agrave;ng, đối t&aacute;c.</p>

<p><strong>* Y&ecirc;u cầu: </strong></p>

<p>+&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Tốt nghiệp cao đẳng/đại học hệ ch&iacute;nh quy ng&agrave;nh Kinh tế, Marketing, Ng&acirc;n h&agrave;ng, Quản trị Kinh doanh.</p>

<p>+&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; C&oacute; 1 - 2 năm kinh nghiệm tại vị tr&iacute; tương đương (ưu ti&ecirc;n c&aacute;c ứng vi&ecirc;n đ&atilde; c&oacute; kinh nghiệm l&agrave;m việc trong lĩnh vực ng&acirc;n h&agrave;ng, thanh to&aacute;n điện tử, thương mại điện tử, marketing);</p>

<p>+&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Sử dụng th&agrave;nh thạo tiếng Anh (giao tiếp v&agrave; văn bản) l&agrave; một lợi thế;</p>

<p>+&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Kỹ năng giao tiếp, thuyết tr&igrave;nh tốt;</p>

<p>+&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Sử dụng th&agrave;nh thạo Microsoft Office (Word, Excel, Powerpoint), kỹ năng soạn thảo văn bản tốt.</p>

<p>+&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Ngoại h&igrave;nh ưa nh&igrave;n, nhanh nhẹn, sẵn s&agrave;ng đi c&ocirc;ng t&aacute;c xa.</p>

<p>+&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Khả năng l&agrave;m việc nh&oacute;m tốt, c&oacute; tinh thần tr&aacute;ch nhiệm cao trong c&ocirc;ng việc.</p>

<p><strong>* Chế độ đ&atilde;i ngộ:</strong></p>

<p>+&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Mức lương thỏa thuận theo năng lực.</p>

<p>+&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Chế độ đ&atilde;i ngộ hấp dẫn cạnh tranh với c&aacute;c c&ocirc;ng ty kh&aacute;c tr&ecirc;n thị trường: hỗ trợ cơm trưa (40.000đ/ng&agrave;y), hỗ trợ trang điểm cho nh&acirc;n vi&ecirc;n nữ, hỗ trợ ưu đ&atilde;i cho CBNV mua nh&agrave;, thưởng cổ phiếu cho CBNV c&oacute; nhiều đ&oacute;ng g&oacute;p cho C&ocirc;ng ty&hellip;.</p>

<p>+&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; M&ocirc;i trường l&agrave;m việc cởi mở, trẻ trung, th&acirc;n thiện, nhiều cơ hội thăng tiến trong c&ocirc;ng việc, c&ugrave;ng học hỏi với 400 đồng nghiệp trẻ trung th&acirc;n thiện với bề d&agrave;y th&agrave;nh t&iacute;ch hoạt động hơn 10 năm trong lĩnh vực giải ph&aacute;p thanh to&aacute;n</p>

<p>+&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Chế độ thưởng v&agrave;o c&aacute;c dịp lễ Tết, thưởng h&agrave;ng năm theo th&acirc;m ni&ecirc;n v&agrave; kết quả kinh doanh của c&ocirc;ng ty.</p>

<p>+&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Hưởng đầy đủ c&aacute;c chế độ BHXH, được tham gia bảo hi&ecirc;̉m sức khỏe cao cấp theo chính sách ri&ecirc;ng của c&ocirc;ng ty với rất nhiều quyền lợi d&agrave;nh cho người lao động v&agrave; người th&acirc;n khi tham gia bảo hiểm.</p>

<p>+&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Được tham gia các chương trình teambuilding, nghỉ mát, du xu&acirc;n, ng&agrave;y hội gia đ&igrave;nh do c&ocirc;ng ty t&ocirc;̉ chức hàng năm tại các địa đi&ecirc;̉m du lịch, resort cao c&acirc;́p.</p>

<p>+&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Được tham gia nhiều hoạt động tập thể s&aacute;ng tạo, CLB tennis, b&oacute;ng đ&aacute;, bơi lội, cầu l&ocirc;ng, b&oacute;ng b&agrave;n, hoạt động thiện nguyện ...</p>

<p>+&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Hưởng chế độ ph&eacute;p năm v&agrave; nghỉ ốm nguy&ecirc;n lương 6 ng&agrave;y/năm.</p>

<p>*<strong>Hồ sơ bao gồm: </strong><strong><em>(c&oacute; thể nộp hồ sơ photo, bổ sung hồ sơ gốc khi được tuyển dụng)</em></strong></p>

<p>- Sơ yếu l&yacute; lịch, giấy kh&aacute;m sức khỏe,</p>

<p>- Bằng tốt nghiệp v&agrave; c&aacute;c chứng chỉ li&ecirc;n quan;</p>

<p>- Chứng minh thư v&agrave; hộ khẩu photo</p>

<p>- CV (m&ocirc; tả r&otilde; qu&aacute; tr&igrave;nh học tập v&agrave; l&agrave;m việc).</p>

<p><strong>*Ứng vi&ecirc;n quan t&acirc;m xin vui l&ograve;ng gửi hồ sơ về địa chỉ: </strong>email: <a href="mailto:tuyendung@vnpay.vn">tuyendung@vnpay.vn</a></p>
', NULL, 0, 16, 1, CAST(0xEB3D0B00 AS Date), 0, 0)
INSERT [dbo].[Job] ([JOB_ID], [GROUP_ID], [JOB_NAME], [NUMBER], [SALARY], [CREATED_DATE], [EXPIRED_DATE], [JOB_DECRIPTION], [IMAGE], [ISDELETED], [VIEW_COUNT], [JOB_STATUS], [UPDATED_ON], [CV_APPLY_COUNT], [ACTIVE_BANNER]) VALUES (118, 47, N'NHÂN VIÊN KINH DOANH TRỰC TIẾP', 1, NULL, CAST(0xEB3D0B00 AS Date), CAST(0x4C3E0B00 AS Date), N'<p><strong>NH&Acirc;N VI&Ecirc;N KINH DOANH TRỰC TIẾP</strong></p>

<p><strong>* Số lượng cần tuyển: 01</strong></p>

<p><strong>* Vị tr&iacute; l&agrave;m việc: Ph&ograve;ng kinh doanh trực tiếp - Khối kh&aacute;ch h&agrave;ng doanh nghiệp</strong></p>

<p><strong>* Địa điểm l&agrave;m việc: Tầng 9 &ndash; 88 L&aacute;ng Hạ - Đống Đa- H&agrave; Nội</strong></p>

<p><strong>* Thời gian l&agrave;m việc: 8h00 &ndash; 12h, 13h30 &ndash; 17h30 thứ hai &ndash; thứ s&aacute;u h&agrave;ng tuần, thứ bảy l&agrave;m buổi s&aacute;ng.</strong></p>

<p>* <strong>M&ocirc; tả c&ocirc;ng việc:</strong></p>

<p>+&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Trực tiếp ph&aacute;t triển c&aacute;c kh&aacute;ch h&agrave;ng đại l&yacute; thanh to&aacute;n, gian h&agrave;ng ảo, đại l&yacute; On-air dưới h&igrave;nh thức kinh doanh trực tiếp, theo địa b&agrave;n được giao.</p>

<p>+&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Chịu tr&aacute;ch nhiệm trực tiếp về c&aacute;c con số kinh doanh thuộc phạm vị KPIs được giao.</p>

<p>+&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Chăm s&oacute;c kh&aacute;ch h&agrave;ng để đạt ti&ecirc;u ch&iacute; active &amp; ph&aacute;t sinh nhiều giao dịch, đảm bảo h&igrave;nh ảnh v&agrave; chất lượng dịch vụ đến với kh&aacute;ch h&agrave;ng.</p>

<p>+&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Giới thiệu sản phẩm &amp; dịch vụ đến kh&aacute;ch h&agrave;ng, thu thập c&aacute;c hồ sơ li&ecirc;n quan để l&agrave;m thủ tục mở đại l&yacute; c&ugrave;ng tr&aacute;ch nhiệm triển khai v&agrave; hướng dẫn khai th&aacute;c sản phẩm dịch vụ cho đại l&yacute;.</p>

<p>+&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Thực hiện c&aacute;c y&ecirc;u cầu kh&aacute;c theo ph&acirc;n c&ocirc;ng của L&atilde;nh đạo.</p>

<p><strong>* Y&ecirc;u cầu: </strong></p>

<p>+&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Tốt nghiệp Cao đẳng trở l&ecirc;n.</p>

<p>+&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Ưu ti&ecirc;n c&aacute;c ứng vi&ecirc;n đ&atilde; c&oacute; kinh nghiệm l&agrave;m trong c&aacute;c lĩnh vực FMCG, t&agrave;i ch&iacute;nh, ng&acirc;n h&agrave;ng, thương mại điện tử;</p>

<p>+&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Th&agrave;nh thạo tin học văn ph&ograve;ng;</p>

<p>+&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Kỹ năng đ&agrave;m ph&aacute;n, thuyết tr&igrave;nh tốt;</p>

<p>+&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Trung thực v&agrave; c&oacute; tinh thần tr&aacute;ch nhiệm cao trong c&ocirc;ng việc;</p>

<p>+&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Nhanh nhẹn, h&igrave;nh thức ưa nh&igrave;n..</p>

<p><strong>* Chế độ đ&atilde;i ngộ:</strong></p>

<p>+&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Mức lương thỏa thuận theo năng lực.</p>

<p>+&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Chế độ đ&atilde;i ngộ hấp dẫn cạnh tranh với c&aacute;c c&ocirc;ng ty kh&aacute;c tr&ecirc;n thị trường: phục vụ bữa ăn s&aacute;ng miễn ph&iacute;, hỗ trợ cơm trưa (40.000đ/ng&agrave;y), cung cấp hoa quả v&agrave; đồ uống miễn ph&iacute; tại văn ph&ograve;ng, hỗ trợ trang điểm cho nh&acirc;n vi&ecirc;n nữ, hỗ trợ ưu đ&atilde;i cho CBNV mua nh&agrave;, thưởng cổ phiếu cho CBNV c&oacute; nhiều đ&oacute;ng g&oacute;p cho C&ocirc;ng ty&hellip;.</p>

<p>+&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; M&ocirc;i trường l&agrave;m việc cởi mở, trẻ trung, th&acirc;n thiện, nhiều cơ hội thăng tiến trong c&ocirc;ng việc, c&ugrave;ng học hỏi với 250 đồng nghiệp trẻ trung th&acirc;n thiện với bề d&agrave;y th&agrave;nh t&iacute;ch hoạt động hơn 10 năm trong lĩnh vực giải ph&aacute;p thanh to&aacute;n.</p>

<p>+&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Chế độ thưởng v&agrave;o c&aacute;c dịp lễ Tết, thưởng h&agrave;ng năm theo th&acirc;m ni&ecirc;n v&agrave; kết quả kinh doanh của c&ocirc;ng ty.</p>

<p>+&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Hưởng đầy đủ c&aacute;c chế độ BHXH, được tham gia bảo hi&ecirc;̉m sức khỏe cao cấp theo chính sách ri&ecirc;ng của c&ocirc;ng ty với rất nhiều quyền lợi d&agrave;nh cho người lao động v&agrave; người th&acirc;n khi tham gia bảo hiểm.</p>

<p>+&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Được tham gia các chương trình teambuilding, nghỉ mát, du xu&acirc;n, ng&agrave;y hội gia đ&igrave;nh do c&ocirc;ng ty t&ocirc;̉ chức hàng năm tại các địa đi&ecirc;̉m du lịch, resort cao c&acirc;́p.</p>

<p>+&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Được tham gia nhiều hoạt động tập thể s&aacute;ng tạo, CLB tennis, b&oacute;ng đ&aacute;, bơi lội, cầu l&ocirc;ng, b&oacute;ng b&agrave;n, hoạt động thiện nguyện ...</p>

<p>*<strong>Hồ sơ bao gồm: </strong><strong><em>(c&oacute; thể nộp hồ sơ photo, bổ sung hồ sơ gốc khi được tuyển dụng)</em></strong></p>

<p>- CV (m&ocirc; tả r&otilde; qu&aacute; tr&igrave;nh học tập v&agrave; l&agrave;m việc).</p>

<p>- Bằng tốt nghiệp v&agrave; c&aacute;c chứng chỉ li&ecirc;n quan.</p>

<p><strong>*Ứng vi&ecirc;n quan t&acirc;m xin vui l&ograve;ng gửi hồ sơ về địa chỉ: </strong>email: <a href="mailto:tuyendung@vnpay.vn">tuyendung@vnpay.vn</a></p>
', NULL, 0, 19, 1, NULL, 0, 0)
INSERT [dbo].[Job] ([JOB_ID], [GROUP_ID], [JOB_NAME], [NUMBER], [SALARY], [CREATED_DATE], [EXPIRED_DATE], [JOB_DECRIPTION], [IMAGE], [ISDELETED], [VIEW_COUNT], [JOB_STATUS], [UPDATED_ON], [CV_APPLY_COUNT], [ACTIVE_BANNER]) VALUES (119, 40, N'Nhân viên Phát triển Kinh doanh và Marketing (làm Việc Tại TP HCM)', 1, NULL, CAST(0xF23D0B00 AS Date), CAST(0x0F3E0B00 AS Date), N'<p><strong>* Số lượng cần tuyển: 01 người</strong></p>

<p><strong>* Vị tr&iacute; l&agrave;m việc: NV Ph&aacute;t triển Kinh doanh v&agrave; Marketing </strong></p>

<p><strong>* Địa điểm l&agrave;m việc: Lầu 8, 117-119-121 Nguyễn Du, P. Bến Th&agrave;nh, Q1, TP.HCM</strong></p>

<p><strong>* Thời gian l&agrave;m việc: 8h00 &ndash; 12h, 13h00 &ndash; 17h00 thứ hai &ndash; thứ s&aacute;u h&agrave;ng tuần, thứ bảy l&agrave;m buổi s&aacute;ng.</strong></p>

<p>* <strong>M&ocirc; tả c&ocirc;ng việc:</strong></p>

<p>+&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Phụ tr&aacute;ch việc l&ecirc;n kế hoạch hoặc c&ugrave;ng phối hợp, thực hiện c&aacute;c chương tr&igrave;nh để ph&aacute;t triển doanh số, ph&aacute;t triển kh&aacute;ch h&agrave;ng, dịch vụ.</p>

<p>+&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Phối hợp c&ugrave;ng Ph&ograve;ng Marketing triển khai c&aacute;c chương tr&igrave;nh PR, Marketing cho VNPAY miền nam.</p>

<p>+&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Phối hợp c&ugrave;ng c&aacute;c đối t&aacute;c triển khai c&aacute;c chương tr&igrave;nh Marketing.</p>

<p>+&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Đ&aacute;nh gi&aacute; hiệu quả c&aacute;c chương tr&igrave;nh Marketing đ&atilde; triển khai.</p>

<p>+&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Khảo s&aacute;t, nghi&ecirc;n cứu thị trường, đ&aacute;nh gi&aacute; SPDV hiện tại của c&ocirc;ng ty để đưa ra đề xuất cải tiến, triển khai kinh doanh hiệu quả hơn.</p>

<p>+&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Tham gia một số dự &aacute;n ph&aacute;t triển dịch vụ của c&ocirc;ng ty.</p>

<p>+&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Chăm s&oacute;c kh&aacute;ch h&agrave;ng, đối t&aacute;c.</p>

<p><strong>* Y&ecirc;u cầu: </strong></p>

<p>+&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Tốt nghiệp cao đẳng/đại học hệ ch&iacute;nh quy ng&agrave;nh Kinh tế, Marketing, Ng&acirc;n h&agrave;ng, Quản trị Kinh doanh.</p>

<p>+&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; C&oacute; 1 - 2 năm kinh nghiệm tại vị tr&iacute; tương đương (ưu ti&ecirc;n c&aacute;c ứng vi&ecirc;n đ&atilde; c&oacute; kinh nghiệm l&agrave;m việc trong lĩnh vực ng&acirc;n h&agrave;ng, thanh to&aacute;n điện tử, thương mại điện tử, marketing);</p>

<p>+&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Sử dụng th&agrave;nh thạo tiếng Anh (giao tiếp v&agrave; văn bản) l&agrave; một lợi thế;</p>

<p>+&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Kỹ năng giao tiếp, thuyết tr&igrave;nh tốt;</p>

<p>+&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Sử dụng th&agrave;nh thạo Microsoft Office (Word, Excel, Powerpoint), kỹ năng soạn thảo văn bản tốt.</p>

<p>+&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Ngoại h&igrave;nh ưa nh&igrave;n, nhanh nhẹn, sẵn s&agrave;ng đi c&ocirc;ng t&aacute;c xa.</p>

<p>+&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Khả năng l&agrave;m việc nh&oacute;m tốt, c&oacute; tinh thần tr&aacute;ch nhiệm cao trong c&ocirc;ng việc.</p>

<p><strong>* Chế độ đ&atilde;i ngộ:</strong></p>

<p>+&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Mức lương thỏa thuận theo năng lực.</p>

<p>+&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Chế độ đ&atilde;i ngộ hấp dẫn cạnh tranh với c&aacute;c c&ocirc;ng ty kh&aacute;c tr&ecirc;n thị trường: hỗ trợ cơm trưa (40.000đ/ng&agrave;y), hỗ trợ trang điểm cho nh&acirc;n vi&ecirc;n nữ, hỗ trợ ưu đ&atilde;i cho CBNV mua nh&agrave;, thưởng cổ phiếu cho CBNV c&oacute; nhiều đ&oacute;ng g&oacute;p cho C&ocirc;ng ty&hellip;.</p>

<p>+&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; M&ocirc;i trường l&agrave;m việc cởi mở, trẻ trung, th&acirc;n thiện, nhiều cơ hội thăng tiến trong c&ocirc;ng việc, c&ugrave;ng học hỏi với 400 đồng nghiệp trẻ trung th&acirc;n thiện với bề d&agrave;y th&agrave;nh t&iacute;ch hoạt động hơn 10 năm trong lĩnh vực giải ph&aacute;p thanh to&aacute;n</p>

<p>+&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Chế độ thưởng v&agrave;o c&aacute;c dịp lễ Tết, thưởng h&agrave;ng năm theo th&acirc;m ni&ecirc;n v&agrave; kết quả kinh doanh của c&ocirc;ng ty.</p>

<p>+&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Hưởng đầy đủ c&aacute;c chế độ BHXH, được tham gia bảo hi&ecirc;̉m sức khỏe cao cấp theo chính sách ri&ecirc;ng của c&ocirc;ng ty với rất nhiều quyền lợi d&agrave;nh cho người lao động v&agrave; người th&acirc;n khi tham gia bảo hiểm.</p>

<p>+&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Được tham gia các chương trình teambuilding, nghỉ mát, du xu&acirc;n, ng&agrave;y hội gia đ&igrave;nh do c&ocirc;ng ty t&ocirc;̉ chức hàng năm tại các địa đi&ecirc;̉m du lịch, resort cao c&acirc;́p.</p>

<p>+&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Được tham gia nhiều hoạt động tập thể s&aacute;ng tạo, CLB tennis, b&oacute;ng đ&aacute;, bơi lội, cầu l&ocirc;ng, b&oacute;ng b&agrave;n, hoạt động thiện nguyện ...</p>

<p>+&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Hưởng chế độ ph&eacute;p năm v&agrave; nghỉ ốm nguy&ecirc;n lương 6 ng&agrave;y/năm.</p>

<p>*<strong>Hồ sơ bao gồm: </strong><strong><em>(c&oacute; thể nộp hồ sơ photo, bổ sung hồ sơ gốc khi được tuyển dụng)</em></strong></p>

<p>- Sơ yếu l&yacute; lịch, giấy kh&aacute;m sức khỏe,</p>

<p>- Bằng tốt nghiệp v&agrave; c&aacute;c chứng chỉ li&ecirc;n quan;</p>

<p>- Chứng minh thư v&agrave; hộ khẩu photo</p>

<p>- CV (m&ocirc; tả r&otilde; qu&aacute; tr&igrave;nh học tập v&agrave; l&agrave;m việc).</p>
', NULL, 0, 16, 1, NULL, 0, 1)
INSERT [dbo].[Job] ([JOB_ID], [GROUP_ID], [JOB_NAME], [NUMBER], [SALARY], [CREATED_DATE], [EXPIRED_DATE], [JOB_DECRIPTION], [IMAGE], [ISDELETED], [VIEW_COUNT], [JOB_STATUS], [UPDATED_ON], [CV_APPLY_COUNT], [ACTIVE_BANNER]) VALUES (123, 45, N'Kiểm thử phần mềm', 2, NULL, CAST(0xF53D0B00 AS Date), CAST(0x0F3E0B00 AS Date), N'<p><strong>NH&Acirc;N VI&Ecirc;N QUẢN L&Yacute; CHẤT LƯỢNG DỊCH VỤ</strong></p>

<p><strong>* Số lượng cần tuyển: 02</strong></p>

<p><strong>* Vị tr&iacute; l&agrave;m việc: Nh&acirc;n vi&ecirc;n - Khối kh&aacute;ch h&agrave;ng doanh nghiệp.</strong></p>

<p><strong>* Địa điểm l&agrave;m việc: TP. HCM</strong></p>

<p><strong>* Thời gian l&agrave;m việc: 8h00 &ndash; 12h, 13h00 &ndash; 17h00 thứ hai &ndash; thứ s&aacute;u h&agrave;ng tuần, thứ bảy l&agrave;m buổi s&aacute;ng.</strong></p>

<p>*&nbsp;<strong>M&ocirc; tả c&ocirc;ng việc:</strong></p>

<p>+&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Thực hiện khảo s&aacute;t v&agrave; kiểm tra, theo d&otilde;i t&igrave;nh h&igrave;nh triển khai hoạt động thanh to&aacute;n tại c&aacute;c đơn vị chấp nhận thanh to&aacute;n (c&aacute;c điểm b&aacute;n, đại l&yacute; thương mại dịch vụ) l&agrave; kh&aacute;ch h&agrave;ng của c&ocirc;ng ty.</p>

<p>+&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Hỗ trợ v&agrave; giải đ&aacute;p c&aacute;c thắc mắc, hướng dẫn sử dụng dịch vụ sản phẩm cho kh&aacute;ch h&agrave;ng.</p>

<p>+&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Ph&acirc;n t&iacute;ch t&igrave;nh trạng sử dụng dịch vụ của kh&aacute;ch h&agrave;ng. Lập b&aacute;o c&aacute;o kết quả khảo s&aacute;t chất lượng dịch vụ c&aacute;c đơn vị chấp nhận thanh to&aacute;n.</p>

<p>+&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;L&ecirc;n kế hoạch th&uacute;c đẩy giao dịch của c&aacute;c kh&aacute;ch h&agrave;ng hiện hữu.</p>

<p>+&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Phối hợp v&agrave; đ&ocirc;n đốc nh&acirc;n vi&ecirc;n kinh doanh trong việc chăm s&oacute;c đơn vị chấp nhận thanh to&aacute;n.</p>

<p>+&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;C&aacute;c c&ocirc;ng việc kh&aacute;c do trưởng ph&ograve;ng giao.</p>

<p><strong>* Y&ecirc;u cầu:</strong></p>

<p>+&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Tốt nghiệp cao đẳng, ưu ti&ecirc;n c&aacute;c ng&agrave;nh Quản trị kinh doanh, kinh tế, ng&acirc;n h&agrave;ng.</p>

<p>+&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Giao tiếp tốt, th&ocirc;ng thạo c&aacute;c tuyến đường.</p>

<p>+&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Chăm chỉ v&agrave; nhanh nhẹn, ngoại h&igrave;nh ưa nh&igrave;n.</p>

<p>+&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;C&oacute; kỹ năng tin học văn ph&ograve;ng.</p>

<p>+&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Khả năng giao tiếp tốt.</p>

<p><strong>* Chế độ đ&atilde;i ngộ:</strong></p>

<p>+&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Mức lương thỏa thuận theo năng lực.</p>

<p>+&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Chế độ đ&atilde;i ngộ hấp dẫn cạnh tranh với c&aacute;c c&ocirc;ng ty kh&aacute;c tr&ecirc;n thị trường: phục vụ bữa ăn s&aacute;ng miễn ph&iacute;, hỗ trợ cơm trưa (40.000đ/ng&agrave;y), cung cấp hoa quả v&agrave; đồ uống miễn ph&iacute; tại văn ph&ograve;ng, hỗ trợ trang điểm cho nh&acirc;n vi&ecirc;n nữ, hỗ trợ ưu đ&atilde;i cho CBNV mua nh&agrave;, thưởng cổ phiếu cho CBNV c&oacute; nhiều đ&oacute;ng g&oacute;p cho C&ocirc;ng ty&hellip;.</p>

<p>+&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;M&ocirc;i trường l&agrave;m việc cởi mở, trẻ trung, th&acirc;n thiện, nhiều cơ hội thăng tiến trong c&ocirc;ng việc, c&ugrave;ng học hỏi với 400 đồng nghiệp trẻ trung th&acirc;n thiện với bề d&agrave;y th&agrave;nh t&iacute;ch hoạt động hơn 11 năm trong lĩnh vực giải ph&aacute;p thanh to&aacute;n.</p>

<p>+&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Chế độ thưởng v&agrave;o c&aacute;c dịp lễ Tết, thưởng h&agrave;ng năm theo th&acirc;m ni&ecirc;n v&agrave; kết quả kinh doanh của c&ocirc;ng ty.</p>

<p>+&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Hưởng đầy đủ c&aacute;c chế độ BHXH, được tham gia bảo hi&ecirc;̉m sức khỏe cao cấp theo chính sách ri&ecirc;ng của c&ocirc;ng ty với rất nhiều quyền lợi d&agrave;nh cho người lao động v&agrave; người th&acirc;n khi tham gia bảo hiểm.</p>

<p>+&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Được tham gia các chương trình teambuilding, nghỉ mát, du xu&acirc;n, ng&agrave;y hội gia đ&igrave;nh do c&ocirc;ng ty t&ocirc;̉ chức hàng năm tại các địa đi&ecirc;̉m du lịch, resort cao c&acirc;́p.</p>

<p>+&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Được tham gia nhiều hoạt động tập thể s&aacute;ng tạo, CLB tennis, b&oacute;ng đ&aacute;, bơi lội, cầu l&ocirc;ng, b&oacute;ng b&agrave;n, hoạt động thiện nguyện ...</p>

<p>*<strong>Hồ sơ bao gồm:&nbsp;</strong><strong><em>(c&oacute; thể nộp hồ sơ photo, bổ sung hồ sơ gốc khi được tuyển dụng)</em></strong></p>

<p>- CV (m&ocirc; tả r&otilde; qu&aacute; tr&igrave;nh học tập v&agrave; l&agrave;m việc).</p>

<p>- Bằng tốt nghiệp v&agrave; c&aacute;c chứng chỉ li&ecirc;n quan.</p>

<p><strong>*Ứng vi&ecirc;n quan t&acirc;m xin vui l&ograve;ng gửi hồ sơ về địa chỉ:&nbsp;</strong>email:&nbsp;<a href="mailto:tuyendung@vnpay.vn">tuyendung@vnpay.vn</a></p>
', N'/tuyen-dung/Uploads/cmsimages/slide/tuyendung_img1.png', 0, 18, 1, CAST(0xF73D0B00 AS Date), 0, 1)
INSERT [dbo].[Job] ([JOB_ID], [GROUP_ID], [JOB_NAME], [NUMBER], [SALARY], [CREATED_DATE], [EXPIRED_DATE], [JOB_DECRIPTION], [IMAGE], [ISDELETED], [VIEW_COUNT], [JOB_STATUS], [UPDATED_ON], [CV_APPLY_COUNT], [ACTIVE_BANNER]) VALUES (124, 45, N'Kiểm thử phần mềm', 2, NULL, CAST(0xF53D0B00 AS Date), CAST(0x083E0B00 AS Date), N'<p><strong>NH&Acirc;N VI&Ecirc;N QUẢN L&Yacute; CHẤT LƯỢNG DỊCH VỤ</strong></p>

<p><strong>* Số lượng cần tuyển: 02</strong></p>

<p><strong>* Vị tr&iacute; l&agrave;m việc: Nh&acirc;n vi&ecirc;n - Khối kh&aacute;ch h&agrave;ng doanh nghiệp.</strong></p>

<p><strong>* Địa điểm l&agrave;m việc: TP. HCM</strong></p>

<p><strong>* Thời gian l&agrave;m việc: 8h00 &ndash; 12h, 13h00 &ndash; 17h00 thứ hai &ndash; thứ s&aacute;u h&agrave;ng tuần, thứ bảy l&agrave;m buổi s&aacute;ng.</strong></p>

<p>*&nbsp;<strong>M&ocirc; tả c&ocirc;ng việc:</strong></p>

<p>+&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Thực hiện khảo s&aacute;t v&agrave; kiểm tra, theo d&otilde;i t&igrave;nh h&igrave;nh triển khai hoạt động thanh to&aacute;n tại c&aacute;c đơn vị chấp nhận thanh to&aacute;n (c&aacute;c điểm b&aacute;n, đại l&yacute; thương mại dịch vụ) l&agrave; kh&aacute;ch h&agrave;ng của c&ocirc;ng ty.</p>

<p>+&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Hỗ trợ v&agrave; giải đ&aacute;p c&aacute;c thắc mắc, hướng dẫn sử dụng dịch vụ sản phẩm cho kh&aacute;ch h&agrave;ng.</p>

<p>+&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Ph&acirc;n t&iacute;ch t&igrave;nh trạng sử dụng dịch vụ của kh&aacute;ch h&agrave;ng. Lập b&aacute;o c&aacute;o kết quả khảo s&aacute;t chất lượng dịch vụ c&aacute;c đơn vị chấp nhận thanh to&aacute;n.</p>

<p>+&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;L&ecirc;n kế hoạch th&uacute;c đẩy giao dịch của c&aacute;c kh&aacute;ch h&agrave;ng hiện hữu.</p>

<p>+&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Phối hợp v&agrave; đ&ocirc;n đốc nh&acirc;n vi&ecirc;n kinh doanh trong việc chăm s&oacute;c đơn vị chấp nhận thanh to&aacute;n.</p>

<p>+&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;C&aacute;c c&ocirc;ng việc kh&aacute;c do trưởng ph&ograve;ng giao.</p>

<p><strong>* Y&ecirc;u cầu:</strong></p>

<p>+&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Tốt nghiệp cao đẳng, ưu ti&ecirc;n c&aacute;c ng&agrave;nh Quản trị kinh doanh, kinh tế, ng&acirc;n h&agrave;ng.</p>

<p>+&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Giao tiếp tốt, th&ocirc;ng thạo c&aacute;c tuyến đường.</p>

<p>+&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Chăm chỉ v&agrave; nhanh nhẹn, ngoại h&igrave;nh ưa nh&igrave;n.</p>

<p>+&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;C&oacute; kỹ năng tin học văn ph&ograve;ng.</p>

<p>+&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Khả năng giao tiếp tốt.</p>

<p><strong>* Chế độ đ&atilde;i ngộ:</strong></p>

<p>+&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Mức lương thỏa thuận theo năng lực.</p>

<p>+&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Chế độ đ&atilde;i ngộ hấp dẫn cạnh tranh với c&aacute;c c&ocirc;ng ty kh&aacute;c tr&ecirc;n thị trường: phục vụ bữa ăn s&aacute;ng miễn ph&iacute;, hỗ trợ cơm trưa (40.000đ/ng&agrave;y), cung cấp hoa quả v&agrave; đồ uống miễn ph&iacute; tại văn ph&ograve;ng, hỗ trợ trang điểm cho nh&acirc;n vi&ecirc;n nữ, hỗ trợ ưu đ&atilde;i cho CBNV mua nh&agrave;, thưởng cổ phiếu cho CBNV c&oacute; nhiều đ&oacute;ng g&oacute;p cho C&ocirc;ng ty&hellip;.</p>

<p>+&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;M&ocirc;i trường l&agrave;m việc cởi mở, trẻ trung, th&acirc;n thiện, nhiều cơ hội thăng tiến trong c&ocirc;ng việc, c&ugrave;ng học hỏi với 400 đồng nghiệp trẻ trung th&acirc;n thiện với bề d&agrave;y th&agrave;nh t&iacute;ch hoạt động hơn 11 năm trong lĩnh vực giải ph&aacute;p thanh to&aacute;n.</p>

<p>+&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Chế độ thưởng v&agrave;o c&aacute;c dịp lễ Tết, thưởng h&agrave;ng năm theo th&acirc;m ni&ecirc;n v&agrave; kết quả kinh doanh của c&ocirc;ng ty.</p>

<p>+&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Hưởng đầy đủ c&aacute;c chế độ BHXH, được tham gia bảo hi&ecirc;̉m sức khỏe cao cấp theo chính sách ri&ecirc;ng của c&ocirc;ng ty với rất nhiều quyền lợi d&agrave;nh cho người lao động v&agrave; người th&acirc;n khi tham gia bảo hiểm.</p>

<p>+&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Được tham gia các chương trình teambuilding, nghỉ mát, du xu&acirc;n, ng&agrave;y hội gia đ&igrave;nh do c&ocirc;ng ty t&ocirc;̉ chức hàng năm tại các địa đi&ecirc;̉m du lịch, resort cao c&acirc;́p.</p>

<p>+&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Được tham gia nhiều hoạt động tập thể s&aacute;ng tạo, CLB tennis, b&oacute;ng đ&aacute;, bơi lội, cầu l&ocirc;ng, b&oacute;ng b&agrave;n, hoạt động thiện nguyện ...</p>

<p>*<strong>Hồ sơ bao gồm:&nbsp;</strong><strong><em>(c&oacute; thể nộp hồ sơ photo, bổ sung hồ sơ gốc khi được tuyển dụng)</em></strong></p>

<p>- CV (m&ocirc; tả r&otilde; qu&aacute; tr&igrave;nh học tập v&agrave; l&agrave;m việc).</p>

<p>- Bằng tốt nghiệp v&agrave; c&aacute;c chứng chỉ li&ecirc;n quan.</p>

<p><strong>*Ứng vi&ecirc;n quan t&acirc;m xin vui l&ograve;ng gửi hồ sơ về địa chỉ:&nbsp;</strong>email:&nbsp;<a href="mailto:tuyendung@vnpay.vn">tuyendung@vnpay.vn</a></p>
', N'/Uploads/cmsimages/Post/tuyendung_img1.png', 1, 0, 1, NULL, 0, 0)
SET IDENTITY_INSERT [dbo].[Job] OFF
/****** Object:  StoredProcedure [dbo].[PROC_CMS_USERS_UPDATE_PASS]    Script Date: 08/14/2018 16:39:17 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		tienmanh
-- Create date: 26/12/2015
-- Description:	Auto generate update script
-- =============================================
CREATE PROC [dbo].[PROC_CMS_USERS_UPDATE_PASS]
(
    @P_USER_ID int,
    @P_PASSWORD varchar (256)
)
AS
BEGIN
    UPDATE CMS_USERS
    SET 
        PASSWORD=@P_PASSWORD
   	WHERE 
        USER_ID = @P_USER_ID
END
GO
/****** Object:  StoredProcedure [dbo].[PROC_CMS_USERS_UPDATE]    Script Date: 08/14/2018 16:39:17 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		tienmanh
-- Create date: 26/12/2015
-- Description:	Auto generate update script
-- =============================================
CREATE PROC [dbo].[PROC_CMS_USERS_UPDATE]
(
    @P_USER_ID int,
    @P_USERNAME varchar (100),
    @P_EMAIL varchar (100),
    @P_FULLNAME nvarchar (150),
    @P_ISLOCKEDOUT char (1),
    @P_ROLE_ID int
)
AS
BEGIN
    UPDATE CMS_USERS
    SET 
        EMAIL=@P_EMAIL,
        FULLNAME=@P_FULLNAME,
        ISLOCKEDOUT=@P_ISLOCKEDOUT,
        ROLE_ID=@P_ROLE_ID
   	WHERE 
        USER_ID = @P_USER_ID
END
GO
/****** Object:  StoredProcedure [dbo].[PROC_CMS_USERS_SELECTBYID]    Script Date: 08/14/2018 16:39:17 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROC [dbo].[PROC_CMS_USERS_SELECTBYID](@P_USER_ID INT)
AS
     BEGIN
         SELECT USER_ID,
                USERNAME,
                EMAIL,
                FIRSTNAME,
                LASTNAME,
                FULLNAME,
                PASSWORD,
                ISAPPROVED,
                ISLOCKEDOUT,
                LASTLOGIN,
                CREATED_ON,
                CREATED_BY,
                ROLE_ID,
                ISDELETED
         FROM CMS_USERS
         WHERE USER_ID = @P_USER_ID;
     END;
GO
/****** Object:  StoredProcedure [dbo].[PROC_CMS_USERS_SELECTALL]    Script Date: 08/14/2018 16:39:17 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROC [dbo].[PROC_CMS_USERS_SELECTALL](@P_PAGESIZE INT,
                                            @P_PAGENO   INT,
                                            @P_TOTALROW INT OUT)
AS
     DECLARE @P_ROWSTART INT;
     DECLARE @P_ROWEND INT;
     BEGIN
         IF(@P_PAGENO > 0)
             BEGIN
                 SET @P_PAGENO = @P_PAGENO - 1;
                 SET @P_ROWSTART = @P_PAGESIZE * @P_PAGENO + 1;
                 SET @P_ROWEND = @P_ROWSTART + @P_PAGESIZE - 1;
                 SET @P_TOTALROW =
                 (
                     SELECT COUNT(*)
                     FROM CMS_USERS
                 );
                 WITH LISTRECORD
                      AS(SELECT USERNAME,
                                EMAIL,
                                FIRSTNAME,
                                LASTNAME,
                                FULLNAME,
                                PASSWORD,
                                ISAPPROVED,
                                ISLOCKEDOUT,
                                LASTLOGIN,
                                CREATED_ON,
                                CREATED_BY,
                                ROLE_ID,
                                ISDELETED,
                                ROW_NUMBER() OVER(ORDER BY USER_ID ASC) AS ROWNUMBER
                         FROM CMS_USERS)
                      SELECT *
                      FROM LISTRECORD
                      WHERE ROWNUMBER BETWEEN @P_ROWSTART AND @P_ROWEND
                      ORDER BY ROWNUMBER ASC;
             END;
     END;
GO
/****** Object:  StoredProcedure [dbo].[PROC_CMS_USERS_SEARCH]    Script Date: 08/14/2018 16:39:18 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROC [dbo].[PROC_CMS_USERS_SEARCH](@P_USERNAME VARCHAR(50),
                                         @P_ROLEID   INT,
                                         @P_PAGESIZE INT,
                                         @P_PAGENO   INT,
                                         @P_TOTALROW INT OUT)
AS
     DECLARE @P_ROWSTART INT;
     DECLARE @P_ROWEND INT;
     BEGIN
         IF(@P_PAGENO > 0)
             BEGIN
                 SET @P_PAGENO = @P_PAGENO - 1;
                 SET @P_ROWSTART = @P_PAGESIZE * @P_PAGENO + 1;
                 SET @P_ROWEND = @P_ROWSTART + @P_PAGESIZE - 1;
                 SET @P_TOTALROW =
                 (
                     SELECT COUNT(*)
                     FROM CMS_USERS U
                          INNER JOIN CMS_ROLES R ON U.ROLE_ID = R.ROLE_ID
                     WHERE(U.USERNAME LIKE N'%'+@P_USERNAME+'%'
                           OR @P_USERNAME IS NULL)
                          AND (U.ROLE_ID = @P_ROLEID
                               OR @P_ROLEID = ''
                               OR @P_ROLEID IS NULL)
                          AND U.ISDELETED = '0'
                 );
                 WITH LISTRECORD
                      AS(SELECT U.USER_ID,
                                U.USERNAME,
                                U.EMAIL,
                                U.FIRSTNAME,
                                U.LASTNAME,
                                U.FULLNAME,
                                U.PASSWORD,
                                U.ISAPPROVED,
                                U.ISLOCKEDOUT,
                                U.LASTLOGIN,
                                U.CREATED_ON,
                                U.CREATED_BY,
                                U.ROLE_ID,
                                U.ISDELETED,
                                R.ROLE_NAME,
                                ROW_NUMBER() OVER(ORDER BY USER_ID ASC) AS ROWNUMBER
                         FROM CMS_USERS U
                              INNER JOIN CMS_ROLES R ON U.ROLE_ID = R.ROLE_ID
                         WHERE(U.USERNAME LIKE N'%'+@P_USERNAME+'%'
                               OR @P_USERNAME IS NULL)
                              AND (U.ROLE_ID = @P_ROLEID
                                   OR @P_ROLEID = ''
                                   OR @P_ROLEID IS NULL)
                              AND U.ISDELETED = '0')
                      SELECT *
                      FROM LISTRECORD
                      WHERE ROWNUMBER BETWEEN @P_ROWSTART AND @P_ROWEND
                      ORDER BY ROWNUMBER ASC;
             END;
     END;
GO
/****** Object:  StoredProcedure [dbo].[PROC_CMS_USERS_INSERT]    Script Date: 08/14/2018 16:39:18 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		tienmanh
-- Create date: 26/12/2015
-- Description:	Auto generate insert script
-- =============================================
CREATE PROC [dbo].[PROC_CMS_USERS_INSERT](@P_USERNAME    VARCHAR(100),
                                         @P_EMAIL       VARCHAR(100),
                                         @P_FIRSTNAME   NVARCHAR(100),
                                         @P_LASTNAME    NVARCHAR(50),
                                         @P_FULLNAME    NVARCHAR(150),
                                         @P_PASSWORD    VARCHAR(256),
                                         @P_ISAPPROVED  CHAR(1),
                                         @P_ISLOCKEDOUT CHAR(1),
                                         @P_CREATEDBY   NVARCHAR(50),
                                         @P_ROLE_ID     INT)
AS
     BEGIN
         INSERT INTO CMS_USERS
         (USERNAME,
          EMAIL,
          FIRSTNAME,
          LASTNAME,
          FULLNAME,
          PASSWORD,
          ISAPPROVED,
          ISLOCKEDOUT,
          CREATED_ON,
          CREATED_BY,
          ROLE_ID,
          ISDELETED
         )
         VALUES
         (@P_USERNAME,
          @P_EMAIL,
          @P_FIRSTNAME,
          @P_LASTNAME,
          @P_FULLNAME,
          @P_PASSWORD,
          @P_ISAPPROVED,
          @P_ISLOCKEDOUT,
          SYSDATETIME(),
          @P_CREATEDBY,
          @P_ROLE_ID,
          '0'
         );
     END;
GO
/****** Object:  StoredProcedure [dbo].[PROC_CMS_USER_LOGIN]    Script Date: 08/14/2018 16:39:18 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
--Created By: Manhtt
--Created Date: 12/25/2015
CREATE PROCEDURE [dbo].[PROC_CMS_USER_LOGIN]
(
	@p_username varchar(30) ,
    @p_password varchar(50) 
)
AS         
BEGIN
	 SELECT us.USER_ID, us.USERNAME, us.FULLNAME, us.FIRSTNAME, us.LASTNAME,r.ROLE_ID
	  FROM CMS_USERS us 
	  LEFT JOIN CMS_ROLES r ON us.ROLE_ID = r.ROLE_ID
	  WHERE us.USERNAME=@p_username AND us.PASSWORD=@p_password;
END
GO
/****** Object:  StoredProcedure [dbo].[PROC_CMS_ROLES_UPDATE]    Script Date: 08/14/2018 16:39:18 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		tienmanh
-- Create date: 26/12/2015
-- Description:	Auto generate update script
-- =============================================
CREATE PROC [dbo].[PROC_CMS_ROLES_UPDATE]
(
    @P_ROLE_ID int,
    @P_ROLE_NAME nvarchar (256),
    @P_ROLE_KEY nvarchar (256),
    @P_ORD int,
    @P_ISACTIVE char (1),
    @P_ISDELETED char (1)
)
AS
BEGIN
    UPDATE CMS_ROLES
    SET 
        ROLE_NAME=@P_ROLE_NAME,
        ROLE_KEY=@P_ROLE_KEY,
        ORD=@P_ORD,
        ISACTIVE=@P_ISACTIVE,
        ISDELETED=@P_ISDELETED
   	WHERE 
        ROLE_ID = @P_ROLE_ID
END
GO
/****** Object:  StoredProcedure [dbo].[PROC_CMS_ROLES_SELECTBYID]    Script Date: 08/14/2018 16:39:18 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROC [dbo].[PROC_CMS_ROLES_SELECTBYID](@P_ROLE_ID INT)
AS
     BEGIN
         SELECT ROLE_NAME,
                ROLE_KEY,
                ORD,
                ISACTIVE,
                ISDELETED
         FROM CMS_ROLES
         WHERE ROLE_ID = @P_ROLE_ID;
     END;
GO
/****** Object:  StoredProcedure [dbo].[PROC_CMS_ROLES_SELECTALL]    Script Date: 08/14/2018 16:39:18 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROC [dbo].[PROC_CMS_ROLES_SELECTALL](@P_PAGESIZE INT,
                                            @P_PAGENO   INT,
                                            @P_TOTALROW INT OUT)
AS
     DECLARE @P_ROWSTART INT;
     DECLARE @P_ROWEND INT;
     BEGIN
         IF(@P_PAGENO > 0)
             BEGIN
                 SET @P_PAGENO = @P_PAGENO - 1;
                 SET @P_ROWSTART = @P_PAGESIZE * @P_PAGENO + 1;
                 SET @P_ROWEND = @P_ROWSTART + @P_PAGESIZE - 1;
                 SET @P_TOTALROW =
                 (
                     SELECT COUNT(*)
                     FROM CMS_ROLES
                     WHERE ISDELETED = '0'
                 );
                 WITH LISTRECORD
                      AS(SELECT ROLE_ID,
                                ROLE_NAME,
                                ROLE_KEY,
                                ORD,
                                ISACTIVE,
                                ISDELETED,
                                ROW_NUMBER() OVER(ORDER BY ORD ASC) AS ROWNUMBER
                         FROM CMS_ROLES
                         WHERE ISDELETED = '0')
                      SELECT *
                      FROM LISTRECORD
                      WHERE ROWNUMBER BETWEEN @P_ROWSTART AND @P_ROWEND
                      ORDER BY ROWNUMBER ASC;
             END;
     END;
GO
/****** Object:  StoredProcedure [dbo].[PROC_CMS_ROLES_INSERT]    Script Date: 08/14/2018 16:39:18 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		tienmanh
-- Create date: 26/12/2015
-- Description:	Auto generate insert script
-- =============================================
CREATE PROC [dbo].[PROC_CMS_ROLES_INSERT]
(
    @P_ROLE_NAME nvarchar (256),
    @P_ROLE_KEY nvarchar (256),
    @P_ORD int,
    @P_ISACTIVE char (1),
    @P_ISDELETED char (1)
)
AS
BEGIN
    INSERT INTO CMS_ROLES
   	(
   		ROLE_NAME,
        ROLE_KEY,
        ORD,
        ISACTIVE,
        ISDELETED
	)
    VALUES
    (
		@P_ROLE_NAME,
        @P_ROLE_KEY,
        @P_ORD,
        @P_ISACTIVE,
        @P_ISDELETED
	)
END
GO
/****** Object:  StoredProcedure [dbo].[PROC_CANDIDATE_SELECT_ID]    Script Date: 08/14/2018 16:39:18 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROC [dbo].[PROC_CANDIDATE_SELECT_ID]
(
	@P_PHONENUMBER varchar(50),
	@P_EMAIL varchar(50)
)
AS
BEGIN
    SELECT CANDIDATE_ID
	FROM Candidate
	WHERE 
	PHONENUMBER = @P_PHONENUMBER 
	AND EMAIL = @P_EMAIL
END
GO
/****** Object:  StoredProcedure [dbo].[PROC_CANDIDATE_INSERT]    Script Date: 08/14/2018 16:39:18 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROC [dbo].[PROC_CANDIDATE_INSERT]
(
	@P_CANDIDATE_NAME nvarchar(100),
	@P_SEX int,
	@P_PHONENUMBER varchar(50),
	@P_EMAIL varchar(50)
)
AS
BEGIN
    INSERT INTO Candidate
   	(
   		CANDIDATE_NAME,
		SEX,
		PHONENUMBER,
		EMAIL,
		CREATED_DATE,
		ISDELETED
	)
    VALUES
    (
		@P_CANDIDATE_NAME,
		@P_SEX,
		@P_PHONENUMBER,
		@P_EMAIL,
		getdate(),
		0
		
	)
END
GO
/****** Object:  StoredProcedure [dbo].[PROC_CANDIDATE_DELETEBYID]    Script Date: 08/14/2018 16:39:18 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		thangnh
-- Create date: 06/01/2016
-- Description:	Auto generate delete by id script
-- =============================================
CREATE PROC [dbo].[PROC_CANDIDATE_DELETEBYID]
(
    @P_CANDIDATE_ID int
)
AS
BEGIN
    DELETE Candidate
	WHERE CANDIDATE_ID = @P_CANDIDATE_ID
END
GO
/****** Object:  StoredProcedure [dbo].[PROC_BANNER_UPDATE_WITHOUT_IMAGE]    Script Date: 08/14/2018 16:39:18 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		tienmanh
-- Create date: 26/12/2015
-- Description:	Auto generate update script
-- =============================================
CREATE PROC [dbo].[PROC_BANNER_UPDATE_WITHOUT_IMAGE]
(
    @P_BANNER_ID int,
	@P_BANNER_TITLE NVARCHAR(250),
	@P_BANNER_LINK NVARCHAR(1000),
	@P_BANNER_STATUS int

)
AS
BEGIN
    UPDATE BANNER
    SET 
        BANNER_TITLE = @P_BANNER_TITLE,
        BANNER_LINK = @P_BANNER_LINK,
        BANNER_STATUS = @P_BANNER_STATUS
   	WHERE 
        BANNER_ID = @P_BANNER_ID
END
GO
/****** Object:  StoredProcedure [dbo].[PROC_BANNER_UPDATE]    Script Date: 08/14/2018 16:39:18 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		tienmanh
-- Create date: 26/12/2015
-- Description:	Auto generate update script
-- =============================================
CREATE PROC [dbo].[PROC_BANNER_UPDATE]
(
    @P_BANNER_ID int,
	@P_BANNER_TITLE NVARCHAR(250),
	@P_BANNER_LINK NVARCHAR(1000),
	@P_BANNER_STATUS int,
	@P_IMAGE_URL nvarchar(1000)

)
AS
BEGIN
    UPDATE BANNER
    SET 
        BANNER_TITLE = @P_BANNER_TITLE,
        BANNER_LINK = @P_BANNER_LINK,
        BANNER_STATUS = @P_BANNER_STATUS,
		IMAGE_URL = @P_IMAGE_URL
   	WHERE 
        BANNER_ID = @P_BANNER_ID
END
GO
/****** Object:  StoredProcedure [dbo].[PROC_BANNER_SELECTALL]    Script Date: 08/14/2018 16:39:18 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROC [dbo].[PROC_BANNER_SELECTALL](@P_PAGESIZE INT,
                                            @P_PAGENO   INT,
                                            @P_TOTALROW INT OUT,
											@P_KEYWORD nvarchar,
											@P_STATUS int
											)
AS
     DECLARE @P_ROWSTART INT;
     DECLARE @P_ROWEND INT;
     BEGIN
         IF(@P_PAGENO > 0)
             BEGIN
                 SET @P_PAGENO = @P_PAGENO - 1;
                 SET @P_ROWSTART = @P_PAGESIZE * @P_PAGENO + 1;
                 SET @P_ROWEND = @P_ROWSTART + @P_PAGESIZE - 1;
                 SET @P_TOTALROW =
                 (
                     SELECT COUNT(*)
                     FROM BANNER
                     WHERE ISDELETED = '0' 
					 and BANNER_TITLE LIKE '%'+@P_KEYWORD +'%'
					 AND (BANNER_STATUS = @P_STATUS OR @P_STATUS = 0)
                 );
                 WITH LISTRECORD
                      AS(SELECT *,
								TOTALROW = @P_TOTALROW,
                                ROW_NUMBER() OVER(ORDER BY CREATED_DATE DESC) AS ROWNUMBER
                         FROM BANNER
                         WHERE ISDELETED = '0' 
						 and BANNER_TITLE LIKE N'%'+ @P_KEYWORD +'%'
						 AND (BANNER_STATUS = @P_STATUS OR @P_STATUS = 0))
                      SELECT *
                      FROM LISTRECORD
                      WHERE ROWNUMBER BETWEEN @P_ROWSTART AND @P_ROWEND
             END;
     END;
GO
/****** Object:  StoredProcedure [dbo].[PROC_BANNER_SELECT_TO_PLAY]    Script Date: 08/14/2018 16:39:19 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROC [dbo].[PROC_BANNER_SELECT_TO_PLAY]
AS
     
     BEGIN
                 WITH LISTRECORD
                      AS(SELECT *,
                                ROW_NUMBER() OVER(ORDER BY CREATED_DATE DESC) AS ROWNUMBER
                         FROM BANNER
                         WHERE ISDELETED = '0' 
						 AND (BANNER_STATUS = 2))
                      SELECT *
                      FROM LISTRECORD
                      
             END;
GO
/****** Object:  StoredProcedure [dbo].[PROC_BANNER_SELECT_BY_ID]    Script Date: 08/14/2018 16:39:19 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROC [dbo].[PROC_BANNER_SELECT_BY_ID]
(
	@P_BANNER_ID int
)
AS
BEGIN
    SELECT *
	FROM BANNER
	WHERE 
	BANNER_ID = @P_BANNER_ID
END
GO
/****** Object:  StoredProcedure [dbo].[PROC_BANNER_INSERT]    Script Date: 08/14/2018 16:39:19 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROC [dbo].[PROC_BANNER_INSERT]
(
	@P_BANNER_TITLE nvarchar(250),
	@P_BANNER_LINK nvarchar(1000),
	@P_IMAGE_URL nvarchar(1000),
	@P_BANNER_STATUS int

)
AS
BEGIN
    INSERT INTO BANNER
   	(
   		BANNER_TITLE,
		BANNER_LINK,
		IMAGE_URL,
		BANNER_STATUS,
		ISDELETED,
		CREATED_DATE
	)
    VALUES
    (
		@P_BANNER_TITLE,
		@P_BANNER_LINK,
		@P_IMAGE_URL,
		@P_BANNER_STATUS,
		0,
		GETDATE()
		
	)
END
GO
/****** Object:  StoredProcedure [dbo].[PROC_BANNER_DELETE_BYID]    Script Date: 08/14/2018 16:39:19 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		thangnh
-- Create date: 06/01/2016
-- Description:	Auto generate delete by id script
-- =============================================
CREATE PROC [dbo].[PROC_BANNER_DELETE_BYID]
(
    @P_BANNER_ID int
)
AS
BEGIN
    UPDATE BANNER
	SET
	ISDELETED = 1 
	WHERE BANNER_ID = @P_BANNER_ID
END
GO
/****** Object:  Table [dbo].[JobPosition]    Script Date: 08/14/2018 16:39:19 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[JobPosition](
	[JOB_ID] [int] NOT NULL,
	[POSITION_ID] [int] NOT NULL,
	[ISDELETED] [bit] NOT NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Job_Location]    Script Date: 08/14/2018 16:39:19 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Job_Location](
	[JOB_ID] [int] NOT NULL,
	[LOCATION_ID] [int] NOT NULL,
	[ISDELETED] [bit] NOT NULL,
	[JOB_LOCATION_ID] [int] IDENTITY(1,1) NOT NULL,
 CONSTRAINT [PK_Job_Location] PRIMARY KEY CLUSTERED 
(
	[JOB_LOCATION_ID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[Job_Location] ON
INSERT [dbo].[Job_Location] ([JOB_ID], [LOCATION_ID], [ISDELETED], [JOB_LOCATION_ID]) VALUES (81, 4, 0, 193)
INSERT [dbo].[Job_Location] ([JOB_ID], [LOCATION_ID], [ISDELETED], [JOB_LOCATION_ID]) VALUES (85, 4, 0, 194)
INSERT [dbo].[Job_Location] ([JOB_ID], [LOCATION_ID], [ISDELETED], [JOB_LOCATION_ID]) VALUES (84, 4, 0, 210)
INSERT [dbo].[Job_Location] ([JOB_ID], [LOCATION_ID], [ISDELETED], [JOB_LOCATION_ID]) VALUES (90, 4, 0, 219)
INSERT [dbo].[Job_Location] ([JOB_ID], [LOCATION_ID], [ISDELETED], [JOB_LOCATION_ID]) VALUES (92, 4, 0, 220)
INSERT [dbo].[Job_Location] ([JOB_ID], [LOCATION_ID], [ISDELETED], [JOB_LOCATION_ID]) VALUES (94, 4, 0, 225)
INSERT [dbo].[Job_Location] ([JOB_ID], [LOCATION_ID], [ISDELETED], [JOB_LOCATION_ID]) VALUES (95, 4, 0, 226)
INSERT [dbo].[Job_Location] ([JOB_ID], [LOCATION_ID], [ISDELETED], [JOB_LOCATION_ID]) VALUES (96, 5, 0, 228)
INSERT [dbo].[Job_Location] ([JOB_ID], [LOCATION_ID], [ISDELETED], [JOB_LOCATION_ID]) VALUES (82, 4, 0, 230)
INSERT [dbo].[Job_Location] ([JOB_ID], [LOCATION_ID], [ISDELETED], [JOB_LOCATION_ID]) VALUES (106, 4, 0, 239)
INSERT [dbo].[Job_Location] ([JOB_ID], [LOCATION_ID], [ISDELETED], [JOB_LOCATION_ID]) VALUES (108, 4, 0, 242)
INSERT [dbo].[Job_Location] ([JOB_ID], [LOCATION_ID], [ISDELETED], [JOB_LOCATION_ID]) VALUES (109, 4, 0, 243)
INSERT [dbo].[Job_Location] ([JOB_ID], [LOCATION_ID], [ISDELETED], [JOB_LOCATION_ID]) VALUES (110, 4, 0, 244)
INSERT [dbo].[Job_Location] ([JOB_ID], [LOCATION_ID], [ISDELETED], [JOB_LOCATION_ID]) VALUES (111, 4, 0, 245)
INSERT [dbo].[Job_Location] ([JOB_ID], [LOCATION_ID], [ISDELETED], [JOB_LOCATION_ID]) VALUES (112, 4, 0, 246)
INSERT [dbo].[Job_Location] ([JOB_ID], [LOCATION_ID], [ISDELETED], [JOB_LOCATION_ID]) VALUES (114, 4, 0, 248)
INSERT [dbo].[Job_Location] ([JOB_ID], [LOCATION_ID], [ISDELETED], [JOB_LOCATION_ID]) VALUES (115, 5, 0, 249)
INSERT [dbo].[Job_Location] ([JOB_ID], [LOCATION_ID], [ISDELETED], [JOB_LOCATION_ID]) VALUES (117, 5, 0, 253)
INSERT [dbo].[Job_Location] ([JOB_ID], [LOCATION_ID], [ISDELETED], [JOB_LOCATION_ID]) VALUES (104, 4, 0, 254)
INSERT [dbo].[Job_Location] ([JOB_ID], [LOCATION_ID], [ISDELETED], [JOB_LOCATION_ID]) VALUES (118, 4, 0, 255)
INSERT [dbo].[Job_Location] ([JOB_ID], [LOCATION_ID], [ISDELETED], [JOB_LOCATION_ID]) VALUES (113, 4, 0, 258)
INSERT [dbo].[Job_Location] ([JOB_ID], [LOCATION_ID], [ISDELETED], [JOB_LOCATION_ID]) VALUES (119, 5, 0, 259)
INSERT [dbo].[Job_Location] ([JOB_ID], [LOCATION_ID], [ISDELETED], [JOB_LOCATION_ID]) VALUES (116, 5, 0, 260)
INSERT [dbo].[Job_Location] ([JOB_ID], [LOCATION_ID], [ISDELETED], [JOB_LOCATION_ID]) VALUES (102, 4, 0, 270)
INSERT [dbo].[Job_Location] ([JOB_ID], [LOCATION_ID], [ISDELETED], [JOB_LOCATION_ID]) VALUES (103, 4, 0, 271)
INSERT [dbo].[Job_Location] ([JOB_ID], [LOCATION_ID], [ISDELETED], [JOB_LOCATION_ID]) VALUES (107, 4, 0, 273)
INSERT [dbo].[Job_Location] ([JOB_ID], [LOCATION_ID], [ISDELETED], [JOB_LOCATION_ID]) VALUES (123, 5, 0, 275)
SET IDENTITY_INSERT [dbo].[Job_Location] OFF
/****** Object:  Table [dbo].[CV]    Script Date: 08/14/2018 16:39:19 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[CV](
	[CV_ID] [int] IDENTITY(1,1) NOT NULL,
	[CANDIDATE_ID] [int] NULL,
	[JOB_ID] [int] NULL,
	[ISDELETED] [bit] NOT NULL,
	[CV_STATUS] [int] NULL,
	[CV_LINK] [nvarchar](200) NULL,
	[CV_UPLOAD] [nvarchar](200) NULL,
	[CV_DESCRIPTION] [nvarchar](1000) NULL,
	[CV_LOCATION] [int] NULL,
 CONSTRAINT [PK_CV] PRIMARY KEY CLUSTERED 
(
	[CV_ID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[CV] ON
INSERT [dbo].[CV] ([CV_ID], [CANDIDATE_ID], [JOB_ID], [ISDELETED], [CV_STATUS], [CV_LINK], [CV_UPLOAD], [CV_DESCRIPTION], [CV_LOCATION]) VALUES (121, 7101, 84, 0, 5, N'', N'CV_CANDIDATE_ID_7101_11h56m58s.doc', N'test', 6)
INSERT [dbo].[CV] ([CV_ID], [CANDIDATE_ID], [JOB_ID], [ISDELETED], [CV_STATUS], [CV_LINK], [CV_UPLOAD], [CV_DESCRIPTION], [CV_LOCATION]) VALUES (122, 7102, 85, 1, 4, N'tôi không có cv', NULL, N'test', 6)
INSERT [dbo].[CV] ([CV_ID], [CANDIDATE_ID], [JOB_ID], [ISDELETED], [CV_STATUS], [CV_LINK], [CV_UPLOAD], [CV_DESCRIPTION], [CV_LOCATION]) VALUES (125, 7105, 85, 0, 5, N'http://localhost:25847/tuyen-dung/ung-tuyen/nhan-vien-ticketing-dat-ve-may-bay-quoc-te/47', NULL, N'<b>test</b>', 4)
INSERT [dbo].[CV] ([CV_ID], [CANDIDATE_ID], [JOB_ID], [ISDELETED], [CV_STATUS], [CV_LINK], [CV_UPLOAD], [CV_DESCRIPTION], [CV_LOCATION]) VALUES (126, 7106, 85, 0, 5, N'https://vicare.vn/', NULL, N'<text>none</text>', 4)
INSERT [dbo].[CV] ([CV_ID], [CANDIDATE_ID], [JOB_ID], [ISDELETED], [CV_STATUS], [CV_LINK], [CV_UPLOAD], [CV_DESCRIPTION], [CV_LOCATION]) VALUES (127, 7103, 85, 0, 5, N'http://vnexpress.mnet', NULL, N'<script>
alert(''Chào Trọng. Trọng muốn đi đua xe không?'');
</script>', 4)
INSERT [dbo].[CV] ([CV_ID], [CANDIDATE_ID], [JOB_ID], [ISDELETED], [CV_STATUS], [CV_LINK], [CV_UPLOAD], [CV_DESCRIPTION], [CV_LOCATION]) VALUES (128, 7112, 96, 0, 5, N'', N'CV_CANDIDATE_ID_7112_10h24m34s.doc', N'Tôi ứng tuyển', 5)
INSERT [dbo].[CV] ([CV_ID], [CANDIDATE_ID], [JOB_ID], [ISDELETED], [CV_STATUS], [CV_LINK], [CV_UPLOAD], [CV_DESCRIPTION], [CV_LOCATION]) VALUES (129, 7113, 111, 0, 5, N'', N'CV_CANDIDATE_ID_7113_19h2m39s.docx', N'Test', 4)
INSERT [dbo].[CV] ([CV_ID], [CANDIDATE_ID], [JOB_ID], [ISDELETED], [CV_STATUS], [CV_LINK], [CV_UPLOAD], [CV_DESCRIPTION], [CV_LOCATION]) VALUES (130, 7114, 116, 0, 5, N'https://sandbox.vnpayment.vn/mcqrpay/admin/Merchant/Merchant.htm', NULL, N'test', 6)
SET IDENTITY_INSERT [dbo].[CV] OFF
/****** Object:  StoredProcedure [dbo].[PROC_JOB_SELECTALL_BACKEND]    Script Date: 08/14/2018 16:39:19 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROC [dbo].[PROC_JOB_SELECTALL_BACKEND](@P_PAGESIZE INT,
										@P_PAGENO   INT,
                                        @P_TOTALROW INT OUT,
										@KEYWORD nvarchar(100),
										@P_CREATED_FROM date = '2016-1-1',
										@P_CREATED_TO date = '9999-12-31',
										@P_EXPIRED_TO date = '9999-12-31',
										@P_STATUS int = 0,
										@P_GROUP_ID int)
AS
     DECLARE @P_ROWSTART INT;
     DECLARE @P_ROWEND INT;
     BEGIN
         IF(@P_PAGENO > 0)
             BEGIN
                 SET @P_PAGENO = @P_PAGENO - 1;
                 SET @P_ROWSTART = @P_PAGESIZE * @P_PAGENO + 1;
                 SET @P_ROWEND = @P_ROWSTART + @P_PAGESIZE - 1;
                 SET @P_TOTALROW =
                 (
                     SELECT COUNT(*)
                     FROM Job
						 INNER JOIN [Group] ON Job.GROUP_ID = [Group].GROUP_ID
					 WHERE JOB_NAME LIKE '%'+@KEYWORD +'%' 
						 AND (Job.GROUP_ID = @P_GROUP_ID OR @P_GROUP_ID = 0)
						 and CREATED_DATE between @P_CREATED_FROM and @P_CREATED_TO
						 and (JOB_STATUS = @P_STATUS OR @P_STATUS =0)
						 AND Job.ISDELETED = 0
						 AND (EXPIRED_DATE <= @P_EXPIRED_TO)
                 );
                 WITH LISTRECORD
                      AS(SELECT Job.JOB_ID,
								[Group].GROUP_NAME,
                                Job.JOB_NAME,
								Job.NUMBER,
								Job.SALARY,
								CREATED_DATE = (select CONVERT(varchar,Job.CREATED_DATE,103)),
								EXPIRED_DATE = (select CONVERT(varchar,Job.EXPIRED_DATE,103)),
								Job.JOB_DECRIPTION,
								Job.JOB_STATUS,
								Job.VIEW_COUNT,
								Job.CV_APPLY_COUNT,
								TOTALROW = @P_TOTALROW,
                                ROW_NUMBER() OVER(ORDER BY CREATED_DATE DESC) AS ROWNUMBER
                         FROM Job
						 INNER JOIN [Group] ON Job.GROUP_ID = [Group].GROUP_ID
						 WHERE JOB_NAME LIKE '%'+@KEYWORD +'%' 
						 AND (Job.GROUP_ID = @P_GROUP_ID OR @P_GROUP_ID = 0)
						 and CREATED_DATE between @P_CREATED_FROM and @P_CREATED_TO
						 and (JOB_STATUS = @P_STATUS OR @P_STATUS =0)
						 AND Job.ISDELETED = 0
						 AND (EXPIRED_DATE <= @P_EXPIRED_TO)
						 )
                      SELECT *
                      FROM LISTRECORD
                      WHERE ROWNUMBER BETWEEN @P_ROWSTART AND @P_ROWEND;
             END;
     END;
GO
/****** Object:  StoredProcedure [dbo].[PROC_JOB_SELECTALL]    Script Date: 08/14/2018 16:39:19 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROC [dbo].[PROC_JOB_SELECTALL](@P_PAGESIZE INT,
										@P_PAGENO   INT,
                                        @P_TOTALROW INT OUT,
										@KEYWORD nvarchar(100),
										@P_CREATED_FROM date = '2016-1-1',
										@P_CREATED_TO date = '9999-12-31',
										@P_STATUS int = 0,
										@P_GROUP_ID int)
AS
     DECLARE @P_ROWSTART INT;
     DECLARE @P_ROWEND INT;
     BEGIN
         IF(@P_PAGENO > 0)
             BEGIN
                 SET @P_PAGENO = @P_PAGENO - 1;
                 SET @P_ROWSTART = @P_PAGESIZE * @P_PAGENO + 1;
                 SET @P_ROWEND = @P_ROWSTART + @P_PAGESIZE - 1;
                 SET @P_TOTALROW =
                 (
                     SELECT COUNT(*)
                     FROM Job
					 WHERE JOB_NAME LIKE '%'+@KEYWORD +'%' 
					 AND (GROUP_ID = @P_GROUP_ID OR @P_GROUP_ID = 0)
					 and CREATED_DATE between @P_CREATED_FROM and @P_CREATED_TO
					 and (JOB_STATUS = @P_STATUS OR @P_STATUS =0)
					 AND ISDELETED = 0
                 );
                 WITH LISTRECORD
                      AS(SELECT Job.JOB_ID,
								[Group].GROUP_NAME,
                                Job.JOB_NAME,
								Job.NUMBER,
								Job.SALARY,
								CREATED_DATE = (select CONVERT(varchar,Job.CREATED_DATE,103)),
								EXPIRED_DATE = (select CONVERT(varchar,Job.EXPIRED_DATE,103)),
								Job.JOB_DECRIPTION,
								Job.JOB_STATUS,
								Job.VIEW_COUNT,
                                ROW_NUMBER() OVER(ORDER BY JOB_NAME ASC) AS ROWNUMBER
                         FROM Job
						 INNER JOIN [Group] ON Job.GROUP_ID = [Group].GROUP_ID
						 WHERE JOB_NAME LIKE '%'+@KEYWORD +'%' 
						 AND (Job.GROUP_ID = @P_GROUP_ID OR @P_GROUP_ID = 0)
						 and CREATED_DATE between @P_CREATED_FROM and @P_CREATED_TO
						 and (JOB_STATUS = @P_STATUS OR @P_STATUS =0)
						 AND Job.ISDELETED = 0)
                      SELECT *
                      FROM LISTRECORD
                      WHERE ROWNUMBER BETWEEN @P_ROWSTART AND @P_ROWEND
                      ORDER BY ROWNUMBER ASC;
             END;
     END;
GO
/****** Object:  StoredProcedure [dbo].[PROC_JOB_SELECT_BYID_ACTIVE_BANNER]    Script Date: 08/14/2018 16:39:19 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROC [dbo].[PROC_JOB_SELECT_BYID_ACTIVE_BANNER](@P_JOB_ID INT)
AS
     BEGIN
         SELECT ACTIVE_BANNER
         FROM Job
		 --INNER JOIN Job_Location ON Job.JOB_ID = Job_Location.JOB_ID
         WHERE Job.JOB_ID= @P_JOB_ID;
     END;
GO
/****** Object:  StoredProcedure [dbo].[PROC_JOB_SEARCH_BY_NAME]    Script Date: 08/14/2018 16:39:19 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROC [dbo].[PROC_JOB_SEARCH_BY_NAME]
(
    @P_JOB_NAME nvarchar,
    @P_GROUP_ID int,
	@P_CREATED_DATE date,
	@P_NUMBER int
)
AS
BEGIN
    SELECT JOB_ID
	FROM Job
	WHERE
		JOB_NAME like '%'+@P_JOB_NAME+'%'
		AND GROUP_ID = @P_GROUP_ID
		AND CREATED_DATE = @P_CREATED_DATE
		AND NUMBER = @P_NUMBER
END
GO
/****** Object:  StoredProcedure [dbo].[PROC_JOB_INSERT]    Script Date: 08/14/2018 16:39:20 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROC [dbo].[PROC_JOB_INSERT]
(
	@P_GROUP_ID int,
	@P_JOB_NAME nvarchar (500),
	@P_NUMBER int,
	@P_SALARY decimal(18,0),
	@P_CREATED_DATE date,
	@P_EXPIRED_DATE date,
	@P_JOB_DECRIPTION ntext,
	@P_IMAGE NVARCHAR(500) = null,
	@P_JOB_STATUS int
)
AS
BEGIN
    INSERT INTO Job
   	(
   		GROUP_ID,
		JOB_NAME,
		NUMBER,
		SALARY,
		CREATED_DATE,
		EXPIRED_DATE,
		JOB_DECRIPTION,
		ISDELETED,
		JOB_STATUS,
		CV_APPLY_COUNT,
		[IMAGE],
		ACTIVE_BANNER
	)
    VALUES
    (
		@P_GROUP_ID,
		@P_JOB_NAME,
		@P_NUMBER,
		@P_SALARY,
		@P_CREATED_DATE,
		@P_EXPIRED_DATE,
		@P_JOB_DECRIPTION,
		'0',
		@P_JOB_STATUS,
		0,
		@P_IMAGE,
		0
		
	)
END
GO
/****** Object:  StoredProcedure [dbo].[PROC_JOB_DELETEBYID]    Script Date: 08/14/2018 16:39:20 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		thangnh
-- Create date: 06/01/2016
-- Description:	Auto generate delete by id script
-- =============================================
CREATE PROC [dbo].[PROC_JOB_DELETEBYID]
(
    @P_JOB_ID int
)
AS
BEGIN
    UPDATE Job
    SET
    ISDELETED='1'
    WHERE JOB_ID = @P_JOB_ID
END
GO
/****** Object:  StoredProcedure [dbo].[PROC_JOB_CV_APPLY_UPDATE]    Script Date: 08/14/2018 16:39:20 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		tienmanh
-- Create date: 26/12/2015
-- Description:	Auto generate update script
-- =============================================
CREATE PROC [dbo].[PROC_JOB_CV_APPLY_UPDATE]
(
    @P_JOB_ID int
)
AS
BEGIN
    UPDATE Job
    SET 
        CV_APPLY_COUNT = CV_APPLY_COUNT + 1
   	WHERE 
        JOB_ID = @P_JOB_ID
END
GO
/****** Object:  StoredProcedure [dbo].[PROC_JOB_COUNT]    Script Date: 08/14/2018 16:39:20 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROC [dbo].[PROC_JOB_COUNT]
AS
BEGIN
    SELECT Count(*)
	FROM Job
	WHERE ISDELETED = 0
	AND JOB_STATUS = 1
END
GO
/****** Object:  StoredProcedure [dbo].[PROC_JOB_ACTIVE_BANNER_FRONTEND]    Script Date: 08/14/2018 16:39:20 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROC [dbo].[PROC_JOB_ACTIVE_BANNER_FRONTEND]
AS
     BEGIN
         
                 WITH LISTRECORD
                      AS(SELECT Job.JOB_ID,
								[Group].GROUP_NAME,
                                Job.JOB_NAME,
								Job.NUMBER,
								Job.SALARY,
								EXPIRED_DATE = (select CONVERT(varchar,Job.EXPIRED_DATE,103)),
								Job.JOB_DECRIPTION,
								Job.JOB_STATUS,
								Job.[IMAGE],
								Job.VIEW_COUNT,
								ROW_NUMBER() OVER(ORDER BY Job.JOB_ID DESC) AS ROWNUMBER
                         FROM Job
						 INNER JOIN [Group] ON Job.GROUP_ID = [Group].GROUP_ID
						 WHERE (JOB_STATUS = 1)
						 AND Job.ISDELETED = 0
						 AND Job.ACTIVE_BANNER = 1)
                      SELECT *
                      FROM LISTRECORD
     END;
GO
/****** Object:  StoredProcedure [dbo].[PROC_JOB_ACTIVE_BANNER_COUNT]    Script Date: 08/14/2018 16:39:20 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROC [dbo].[PROC_JOB_ACTIVE_BANNER_COUNT]
AS
BEGIN
    SELECT Count(*)
	FROM Job
	WHERE ISDELETED = 0
	AND JOB_STATUS = 1
	AND ACTIVE_BANNER = 1
END
GO
/****** Object:  StoredProcedure [dbo].[PROC_Job_VIEWCOUNT_UPDATE]    Script Date: 08/14/2018 16:39:20 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		tienmanh
-- Create date: 26/12/2015
-- Description:	Auto generate update script
-- =============================================
CREATE PROC [dbo].[PROC_Job_VIEWCOUNT_UPDATE]
(
    @P_JOB_ID int
)
AS
BEGIN
    UPDATE Job
    SET 
        VIEW_COUNT = VIEW_COUNT + 1
   	WHERE 
        JOB_ID = @P_JOB_ID
END
GO
/****** Object:  StoredProcedure [dbo].[PROC_Job_UPDATE123]    Script Date: 08/14/2018 16:39:20 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		tienmanh
-- Create date: 26/12/2015
-- Description:	Auto generate update script
-- =============================================
CREATE PROC [dbo].[PROC_Job_UPDATE123]
(
    @P_JOB_ID int,
	@P_JOB_NAME nvarchar (500),
	@P_NUMBER int,
	@P_SALARY decimal(18,0),
	@P_EXPIRED_DATE Date,
	@P_JOB_DECRIPTION ntext,
	@P_STATUS int,
	@P_IMAGE NVARCHAR(500) =null

)
AS
BEGIN
    UPDATE Job
    SET 
		JOB_NAME = @P_JOB_NAME,
		NUMBER = @P_NUMBER,
		SALARY = @P_SALARY,
		EXPIRED_DATE = @P_EXPIRED_DATE,
		JOB_DECRIPTION = @P_JOB_DECRIPTION,
		JOB_STATUS = @P_STATUS,
		[IMAGE] = @P_IMAGE,
		UPDATED_ON = GETDATE()
   	WHERE 
        JOB_ID = @P_JOB_ID
END
GO
/****** Object:  StoredProcedure [dbo].[PROC_Job_UPDATE]    Script Date: 08/14/2018 16:39:20 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		tienmanh
-- Create date: 26/12/2015
-- Description:	Auto generate update script
-- =============================================
CREATE PROC [dbo].[PROC_Job_UPDATE]
(
    @P_JOB_ID int,
	@P_GROUP_ID int,
	@P_JOB_NAME nvarchar (500),
	@P_NUMBER int,
	@P_SALARY decimal(18,0),
	@P_EXPIRED_DATE Date,
	@P_JOB_DECRIPTION ntext,
	@P_STATUS int,
	@P_IMAGE NVARCHAR(500)

)
AS
BEGIN
    UPDATE Job
    SET 
        GROUP_ID = @P_GROUP_ID,
		JOB_NAME = @P_JOB_NAME,
		NUMBER = @P_NUMBER,
		SALARY = @P_SALARY,
		EXPIRED_DATE = @P_EXPIRED_DATE,
		JOB_DECRIPTION = @P_JOB_DECRIPTION,
		JOB_STATUS = @P_STATUS,
		UPDATED_ON = GETDATE(),
		[IMAGE] = @P_IMAGE
   	WHERE 
        JOB_ID = @P_JOB_ID
END
GO
/****** Object:  StoredProcedure [dbo].[PROC_JOB_SET_BANNER]    Script Date: 08/14/2018 16:39:20 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		tienmanh
-- Create date: 26/12/2015
-- Description:	Auto generate update script
-- =============================================
CREATE PROC [dbo].[PROC_JOB_SET_BANNER]
(
    @P_JOB_ID int,
	@P_ACTIVE int
)
AS
BEGIN
    UPDATE Job
    SET 
        ACTIVE_BANNER = @P_ACTIVE
   	WHERE 
        JOB_ID = @P_JOB_ID
END
GO
/****** Object:  StoredProcedure [dbo].[PROC_JOB_SELECTBYID_BACKEND]    Script Date: 08/14/2018 16:39:20 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROC [dbo].[PROC_JOB_SELECTBYID_BACKEND](@P_JOB_ID INT)
AS
     BEGIN
         SELECT *,
		CREATED_DATE1 = (select CONVERT(varchar,Job.CREATED_DATE,103)),
		EXPIRED_DATE1 = (select CONVERT(varchar,Job.EXPIRED_DATE,103))
         FROM Job
         WHERE Job.JOB_ID= @P_JOB_ID;
     END;
GO
/****** Object:  StoredProcedure [dbo].[PROC_JOB_SELECTBYID]    Script Date: 08/14/2018 16:39:20 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROC [dbo].[PROC_JOB_SELECTBYID](@P_JOB_ID INT)
AS
     BEGIN
         SELECT Job.JOB_ID,
				GROUP_ID1 = GROUP_ID,
				GROUP_ID = (SELECT GROUP_NAME
							FROM [Group]
							WHERE [Group].GROUP_ID =  Job.GROUP_ID),
                                JOB_NAME,
								NUMBER,
								SALARY,
								CREATED_DATE = (select CONVERT(varchar,Job.CREATED_DATE,103)),
								EXPIRED_DATE = (select CONVERT(varchar,Job.EXPIRED_DATE,103)),
								JOB_DECRIPTION,
								VIEW_COUNT,
								JOB_STATUS
								--Job_Location.LOCATION_ID
         FROM Job
		 --INNER JOIN Job_Location ON Job.JOB_ID = Job_Location.JOB_ID
         WHERE Job.JOB_ID= @P_JOB_ID;
     END;
GO
/****** Object:  StoredProcedure [dbo].[PROC_JOB_SELECTBY_STATUS]    Script Date: 08/14/2018 16:39:20 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROC [dbo].[PROC_JOB_SELECTBY_STATUS](@P_PAGESIZE INT,
											@P_ISDELETED int,
                                            @P_PAGENO   INT,
                                            @P_TOTALROW INT OUT)
AS
     DECLARE @P_ROWSTART INT;
     DECLARE @P_ROWEND INT;
     BEGIN
         IF(@P_PAGENO > 0)
             BEGIN
				 --SET @KEYWORD1 = '%'+@KEYWORD+'%';
                 SET @P_PAGENO = @P_PAGENO - 1;
                 SET @P_ROWSTART = @P_PAGESIZE * @P_PAGENO + 1;
                 SET @P_ROWEND = @P_ROWSTART + @P_PAGESIZE - 1;
                 SET @P_TOTALROW =
                 (
                     SELECT COUNT(*)
                     FROM Job
                     WHERE ISDELETED = @P_ISDELETED
                 );
                 WITH LISTRECORD
                      AS(SELECT JOB_ID,
								GROUP_ID = (SELECT GROUP_NAME
								FROM [Group]
								where [Group].GROUP_ID = Job.GROUP_ID),
                                JOB_NAME,
								NUMBER,
								SALARY,
								CREATED_DATE,
								EXPIRED_DATE,
								JOB_DECRIPTION,
								ISDELETED,
								VIEW_COUNT,
                                ROW_NUMBER() OVER(ORDER BY JOB_NAME ASC) AS ROWNUMBER
                         FROM Job
                         WHERE ISDELETED = @P_ISDELETED)
                      SELECT *
                      FROM LISTRECORD
                      WHERE ROWNUMBER BETWEEN @P_ROWSTART AND @P_ROWEND
                      ORDER BY ROWNUMBER ASC;
             END;
     END;
GO
/****** Object:  StoredProcedure [dbo].[PROC_JOB_SELECTBY_JOB_SALARY_LOWER]    Script Date: 08/14/2018 16:39:20 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROC [dbo].[PROC_JOB_SELECTBY_JOB_SALARY_LOWER](@P_PAGESIZE INT,
											@P_SALARY decimal,
                                            @P_PAGENO   INT,
                                            @P_TOTALROW INT OUT)
AS
     DECLARE @P_ROWSTART INT;
     DECLARE @P_ROWEND INT;
     BEGIN
         IF(@P_PAGENO > 0)
             BEGIN
				 --SET @KEYWORD1 = '%'+@KEYWORD+'%';
                 SET @P_PAGENO = @P_PAGENO - 1;
                 SET @P_ROWSTART = @P_PAGESIZE * @P_PAGENO + 1;
                 SET @P_ROWEND = @P_ROWSTART + @P_PAGESIZE - 1;
                 SET @P_TOTALROW =
                 (
                     SELECT COUNT(*)
                     FROM Job
                     WHERE ISDELETED = '0' and SALARY < @P_SALARY
                 );
                 WITH LISTRECORD
                      AS(SELECT JOB_ID,
								GROUP_ID = (SELECT GROUP_NAME
								FROM [Group]
								where [Group].GROUP_ID = Job.GROUP_ID),
                                JOB_NAME,
								NUMBER,
								SALARY,
								CREATED_DATE,
								EXPIRED_DATE,
								JOB_DECRIPTION,
								ISDELETED,
								VIEW_COUNT,
                                ROW_NUMBER() OVER(ORDER BY JOB_NAME ASC) AS ROWNUMBER
                         FROM Job
                         WHERE ISDELETED = '0' and SALARY < @P_SALARY)
                      SELECT *
                      FROM LISTRECORD
                      WHERE ROWNUMBER BETWEEN @P_ROWSTART AND @P_ROWEND
                      ORDER BY ROWNUMBER ASC;
             END;
     END;
GO
/****** Object:  StoredProcedure [dbo].[PROC_JOB_SELECTBY_JOB_SALARY_HIGHER]    Script Date: 08/14/2018 16:39:20 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROC [dbo].[PROC_JOB_SELECTBY_JOB_SALARY_HIGHER](@P_PAGESIZE INT,
											@P_SALARY decimal,
                                            @P_PAGENO   INT,
                                            @P_TOTALROW INT OUT)
AS
     DECLARE @P_ROWSTART INT;
     DECLARE @P_ROWEND INT;
     BEGIN
         IF(@P_PAGENO > 0)
             BEGIN
				 --SET @KEYWORD1 = '%'+@KEYWORD+'%';
                 SET @P_PAGENO = @P_PAGENO - 1;
                 SET @P_ROWSTART = @P_PAGESIZE * @P_PAGENO + 1;
                 SET @P_ROWEND = @P_ROWSTART + @P_PAGESIZE - 1;
                 SET @P_TOTALROW =
                 (
                     SELECT COUNT(*)
                     FROM Job
                     WHERE ISDELETED = '0' and SALARY > @P_SALARY
                 );
                 WITH LISTRECORD
                      AS(SELECT JOB_ID,
								GROUP_ID = (SELECT GROUP_NAME
								FROM [Group]
								where [Group].GROUP_ID = Job.GROUP_ID),
                                JOB_NAME,
								NUMBER,
								SALARY,
								CREATED_DATE,
								EXPIRED_DATE,
								JOB_DECRIPTION,
								ISDELETED,
								VIEW_COUNT,
                                ROW_NUMBER() OVER(ORDER BY JOB_NAME ASC) AS ROWNUMBER
                         FROM Job
                         WHERE ISDELETED = '0' and SALARY > @P_SALARY)
                      SELECT *
                      FROM LISTRECORD
                      WHERE ROWNUMBER BETWEEN @P_ROWSTART AND @P_ROWEND
                      ORDER BY ROWNUMBER ASC;
             END;
     END;
GO
/****** Object:  StoredProcedure [dbo].[PROC_JOB_SELECTBY_JOB_NAME]    Script Date: 08/14/2018 16:39:20 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROC [dbo].[PROC_JOB_SELECTBY_JOB_NAME](@P_PAGESIZE INT,
											@P_JOB_NAME nvarchar(100),
                                            @P_PAGENO   INT,
                                            @P_TOTALROW INT OUT)
AS
     DECLARE @P_ROWSTART INT;
     DECLARE @P_ROWEND INT;
     BEGIN
         IF(@P_PAGENO > 0)
             BEGIN
				 --SET @KEYWORD1 = '%'+@KEYWORD+'%';
                 SET @P_PAGENO = @P_PAGENO - 1;
                 SET @P_ROWSTART = @P_PAGESIZE * @P_PAGENO + 1;
                 SET @P_ROWEND = @P_ROWSTART + @P_PAGESIZE - 1;
                 SET @P_TOTALROW =
                 (
                     SELECT COUNT(*)
                     FROM Job
                     WHERE ISDELETED = '0' and JOB_NAME like N'%'+@P_JOB_NAME+'%'
                 );
                 WITH LISTRECORD
                      AS(SELECT JOB_ID,
								GROUP_ID = (SELECT GROUP_NAME
								FROM [Group]
								where [Group].GROUP_ID = Job.GROUP_ID),
                                JOB_NAME,
								NUMBER,
								SALARY,
								CREATED_DATE,
								EXPIRED_DATE,
								JOB_DECRIPTION,
								ISDELETED,
								VIEW_COUNT,
                                ROW_NUMBER() OVER(ORDER BY JOB_NAME ASC) AS ROWNUMBER
                         FROM Job
                         WHERE ISDELETED = '0' and JOB_NAME LIKE N'%'+ @P_JOB_NAME +'%')
                      SELECT *
                      FROM LISTRECORD
                      WHERE ROWNUMBER BETWEEN @P_ROWSTART AND @P_ROWEND
                      ORDER BY ROWNUMBER ASC;
             END;
     END;
GO
/****** Object:  StoredProcedure [dbo].[PROC_JOB_SELECTBY_GROUP_NAME]    Script Date: 08/14/2018 16:39:20 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROC [dbo].[PROC_JOB_SELECTBY_GROUP_NAME](@P_PAGESIZE INT,
											@P_GROUP_ID int,
                                            @P_PAGENO   INT,
                                            @P_TOTALROW INT OUT)
AS
     DECLARE @P_ROWSTART INT;
     DECLARE @P_ROWEND INT;
     BEGIN
         IF(@P_PAGENO > 0)
             BEGIN
				 --SET @KEYWORD1 = '%'+@KEYWORD+'%';
                 SET @P_PAGENO = @P_PAGENO - 1;
                 SET @P_ROWSTART = @P_PAGESIZE * @P_PAGENO + 1;
                 SET @P_ROWEND = @P_ROWSTART + @P_PAGESIZE - 1;
                 SET @P_TOTALROW =
                 (
                     SELECT COUNT(*)
                     FROM Job
                     WHERE ISDELETED = '0' and GROUP_ID = @P_GROUP_ID
                 );
                 WITH LISTRECORD
                      AS(SELECT JOB_ID,
								GROUP_ID = (SELECT GROUP_NAME
								FROM [Group]
								where [Group].GROUP_ID = Job.GROUP_ID),
                                JOB_NAME,
								NUMBER,
								SALARY,
								CREATED_DATE,
								EXPIRED_DATE,
								JOB_DECRIPTION,
								ISDELETED,
								VIEW_COUNT,
                                ROW_NUMBER() OVER(ORDER BY JOB_NAME ASC) AS ROWNUMBER
                         FROM Job
                         WHERE ISDELETED = '0' and GROUP_ID = @P_GROUP_ID)
                      SELECT *
                      FROM LISTRECORD
                      WHERE ROWNUMBER BETWEEN @P_ROWSTART AND @P_ROWEND
                      ORDER BY ROWNUMBER ASC;
             END;
     END;
GO
/****** Object:  StoredProcedure [dbo].[PROC_JOB_SELECTBY_EXPIRED_DATE]    Script Date: 08/14/2018 16:39:21 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROC [dbo].[PROC_JOB_SELECTBY_EXPIRED_DATE](@P_PAGESIZE INT,
											@P_STARTED_DATE DATE,
											@P_END_DATE DATE,
                                            @P_PAGENO   INT,
                                            @P_TOTALROW INT OUT)
AS
     DECLARE @P_ROWSTART INT;
     DECLARE @P_ROWEND INT;
     BEGIN
         IF(@P_PAGENO > 0)
             BEGIN
				 --SET @KEYWORD1 = '%'+@KEYWORD+'%';
                 SET @P_PAGENO = @P_PAGENO - 1;
                 SET @P_ROWSTART = @P_PAGESIZE * @P_PAGENO + 1;
                 SET @P_ROWEND = @P_ROWSTART + @P_PAGESIZE - 1;
                 SET @P_TOTALROW =
                 (
                     SELECT COUNT(*)
                     FROM Job
                     WHERE ISDELETED = '0' and EXPIRED_DATE BETWEEN @P_STARTED_DATE and @P_END_DATE
                 );
                 WITH LISTRECORD
                      AS(SELECT JOB_ID,
								GROUP_ID = (SELECT GROUP_NAME
								FROM [Group]
								where [Group].GROUP_ID = Job.GROUP_ID),
                                JOB_NAME,
								NUMBER,
								SALARY,
								CREATED_DATE,
								EXPIRED_DATE,
								JOB_DECRIPTION,
								ISDELETED,
								VIEW_COUNT,
                                ROW_NUMBER() OVER(ORDER BY JOB_NAME ASC) AS ROWNUMBER
                         FROM Job
                         WHERE ISDELETED = '0' and EXPIRED_DATE BETWEEN @P_STARTED_DATE and @P_END_DATE)
                      SELECT *
                      FROM LISTRECORD
                      WHERE ROWNUMBER BETWEEN @P_ROWSTART AND @P_ROWEND
                      ORDER BY ROWNUMBER ASC;
             END;
     END;
GO
/****** Object:  StoredProcedure [dbo].[PROC_JOB_SELECTBY_CREATED_DATE]    Script Date: 08/14/2018 16:39:21 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROC [dbo].[PROC_JOB_SELECTBY_CREATED_DATE](@P_PAGESIZE INT,
											@P_STARTED_DATE DATE,
											@P_END_DATE DATE,
                                            @P_PAGENO   INT,
                                            @P_TOTALROW INT OUT)
AS
     DECLARE @P_ROWSTART INT;
     DECLARE @P_ROWEND INT;
     BEGIN
         IF(@P_PAGENO > 0)
             BEGIN
				 --SET @KEYWORD1 = '%'+@KEYWORD+'%';
                 SET @P_PAGENO = @P_PAGENO - 1;
                 SET @P_ROWSTART = @P_PAGESIZE * @P_PAGENO + 1;
                 SET @P_ROWEND = @P_ROWSTART + @P_PAGESIZE - 1;
                 SET @P_TOTALROW =
                 (
                     SELECT COUNT(*)
                     FROM Job
                     WHERE ISDELETED = '0' and CREATED_DATE BETWEEN @P_STARTED_DATE and @P_END_DATE
                 );
                 WITH LISTRECORD
                      AS(SELECT JOB_ID,
								GROUP_ID = (SELECT GROUP_NAME
								FROM [Group]
								where [Group].GROUP_ID = Job.GROUP_ID),
                                JOB_NAME,
								NUMBER,
								SALARY,
								CREATED_DATE,
								EXPIRED_DATE,
								JOB_DECRIPTION,
								ISDELETED,
								VIEW_COUNT,
                                ROW_NUMBER() OVER(ORDER BY JOB_NAME ASC) AS ROWNUMBER
                         FROM Job
                         WHERE ISDELETED = '0' and CREATED_DATE BETWEEN @P_STARTED_DATE and @P_END_DATE)
                      SELECT *
                      FROM LISTRECORD
                      WHERE ROWNUMBER BETWEEN @P_ROWSTART AND @P_ROWEND
                      ORDER BY ROWNUMBER ASC;
             END;
     END;
GO
/****** Object:  StoredProcedure [dbo].[PROC_JOB_SELECTALL_FRONTEND]    Script Date: 08/14/2018 16:39:21 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROC [dbo].[PROC_JOB_SELECTALL_FRONTEND](@P_PAGESIZE INT,
										@P_PAGENO   INT,
                                        @P_TOTALROW INT OUT,
										@KEYWORD nvarchar(100),
										@P_GROUP_ID int)
AS
     DECLARE @P_ROWSTART INT;
     DECLARE @P_ROWEND INT;
     BEGIN
         IF(@P_PAGENO > 0)
             BEGIN
                 SET @P_PAGENO = @P_PAGENO - 1;
                 SET @P_ROWSTART = @P_PAGESIZE * @P_PAGENO + 1;
                 SET @P_ROWEND = @P_ROWSTART + @P_PAGESIZE - 1;
                 SET @P_TOTALROW =
                 (
                     SELECT COUNT(*)
                     FROM Job
						 INNER JOIN [Group] ON Job.GROUP_ID = [Group].GROUP_ID
					 WHERE JOB_NAME LIKE '%'+@KEYWORD +'%' 
						 AND (Job.GROUP_ID = @P_GROUP_ID OR @P_GROUP_ID = 0)
						 and (JOB_STATUS = 1)
						 AND Job.ISDELETED = 0
                 );
                 WITH LISTRECORD
                      AS(SELECT Job.JOB_ID,
								[Group].GROUP_NAME,
                                Job.JOB_NAME,
								Job.NUMBER,
								Job.SALARY,
								EXPIRED_DATE = (select CONVERT(varchar,Job.EXPIRED_DATE,103)),
								Job.JOB_DECRIPTION,
								Job.JOB_STATUS,
								Job.VIEW_COUNT,
								TOTALROW = @P_TOTALROW,
								ROW_NUMBER() OVER(ORDER BY Job.JOB_ID DESC) AS ROWNUMBER
                         FROM Job
						 INNER JOIN [Group] ON Job.GROUP_ID = [Group].GROUP_ID
						 WHERE JOB_NAME LIKE '%'+@KEYWORD +'%' 
						 AND (Job.GROUP_ID = @P_GROUP_ID OR @P_GROUP_ID = 0)
						 and (JOB_STATUS = 1)
						 AND Job.ISDELETED = 0)
                      SELECT *
                      FROM LISTRECORD
                      WHERE ROWNUMBER BETWEEN @P_ROWSTART AND @P_ROWEND;
             END;
     END;
GO
/****** Object:  StoredProcedure [dbo].[PROC_JOB_SELECTALL_BY_GROUP]    Script Date: 08/14/2018 16:39:21 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROC [dbo].[PROC_JOB_SELECTALL_BY_GROUP](@P_GROUP_ID int)
AS
BEGIN
						SELECT Job.JOB_ID,
								[Group].GROUP_NAME,
                                Job.JOB_NAME,
								Job.NUMBER,
								Job.SALARY,
								EXPIRED_DATE = (select CONVERT(varchar,Job.EXPIRED_DATE,103)),
								Job.JOB_DECRIPTION,
								Job.JOB_STATUS,
								Job.VIEW_COUNT
                         FROM Job
						 INNER JOIN [Group] ON Job.GROUP_ID = [Group].GROUP_ID
						 WHERE 
						 (Job.GROUP_ID = @P_GROUP_ID)
						 and (JOB_STATUS = 1)
						 AND Job.ISDELETED = 0
END;
GO
/****** Object:  StoredProcedure [dbo].[PROC_JOB_SELECTALL_BANNER]    Script Date: 08/14/2018 16:39:21 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROC [dbo].[PROC_JOB_SELECTALL_BANNER](@P_PAGESIZE INT,
										@P_PAGENO   INT,
                                        @P_TOTALROW INT OUT
										)
AS
     DECLARE @P_ROWSTART INT;
     DECLARE @P_ROWEND INT;
     BEGIN
         IF(@P_PAGENO > 0)
             BEGIN
                 SET @P_PAGENO = @P_PAGENO - 1;
                 SET @P_ROWSTART = @P_PAGESIZE * @P_PAGENO + 1;
                 SET @P_ROWEND = @P_ROWSTART + @P_PAGESIZE - 1;
                 SET @P_TOTALROW =
                 (
                     SELECT COUNT(*)
                     FROM Job
						 INNER JOIN [Group] ON Job.GROUP_ID = [Group].GROUP_ID
					 WHERE Job.ISDELETED = 0
					 AND Job.JOB_STATUS = 1
                 );
                 WITH LISTRECORD
                      AS(SELECT Job.JOB_ID,
								[Group].GROUP_NAME,
                                Job.JOB_NAME,
								Job.NUMBER,
								Job.JOB_DECRIPTION,
								Job.JOB_STATUS,
								Job.VIEW_COUNT,
								Job.CV_APPLY_COUNT,
								TOTALROW = @P_TOTALROW,
								Job.[IMAGE],
								Job.ACTIVE_BANNER,
                                ROW_NUMBER() OVER(ORDER BY CREATED_DATE DESC) AS ROWNUMBER
                         FROM Job
						 INNER JOIN [Group] ON Job.GROUP_ID = [Group].GROUP_ID
						 WHERE Job.ISDELETED = 0
						 AND Job.JOB_STATUS = 1)
                      SELECT *
                      FROM LISTRECORD
                      WHERE ROWNUMBER BETWEEN @P_ROWSTART AND @P_ROWEND;
             END;
     END;
GO
/****** Object:  StoredProcedure [dbo].[PROC_JOB_SELECTALL_BACKEND_WITHOU_DATE]    Script Date: 08/14/2018 16:39:21 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROC [dbo].[PROC_JOB_SELECTALL_BACKEND_WITHOU_DATE](@P_PAGESIZE INT,
										@P_PAGENO   INT,
                                        @P_TOTALROW INT OUT,
										@KEYWORD nvarchar(100),
										@P_STATUS int = 0,
										@P_GROUP_ID int)
AS
     DECLARE @P_ROWSTART INT;
     DECLARE @P_ROWEND INT;
     BEGIN
         IF(@P_PAGENO > 0)
             BEGIN
                 SET @P_PAGENO = @P_PAGENO - 1;
                 SET @P_ROWSTART = @P_PAGESIZE * @P_PAGENO + 1;
                 SET @P_ROWEND = @P_ROWSTART + @P_PAGESIZE - 1;
                 SET @P_TOTALROW =
                 (
                     SELECT COUNT(*)
                     FROM Job
						 INNER JOIN [Group] ON Job.GROUP_ID = [Group].GROUP_ID
					 WHERE JOB_NAME LIKE '%'+@KEYWORD +'%' 
						 AND (Job.GROUP_ID = @P_GROUP_ID OR @P_GROUP_ID = 0)
						 and (JOB_STATUS = @P_STATUS OR @P_STATUS =0)
						 AND Job.ISDELETED = 0
                 );
                 WITH LISTRECORD
                      AS(SELECT Job.JOB_ID,
								[Group].GROUP_NAME,
                                Job.JOB_NAME,
								Job.NUMBER,
								Job.SALARY,
								CREATED_DATE = (select CONVERT(varchar,Job.CREATED_DATE,103)),
								EXPIRED_DATE = (select CONVERT(varchar,Job.EXPIRED_DATE,103)),
								Job.JOB_DECRIPTION,
								Job.JOB_STATUS,
								Job.VIEW_COUNT,
								Job.CV_APPLY_COUNT,
								TOTALROW = @P_TOTALROW,
                                ROW_NUMBER() OVER(ORDER BY CREATED_DATE DESC) AS ROWNUMBER
                         FROM Job
						 INNER JOIN [Group] ON Job.GROUP_ID = [Group].GROUP_ID
						 WHERE JOB_NAME LIKE '%'+@KEYWORD +'%' 
						 AND (Job.GROUP_ID = @P_GROUP_ID OR @P_GROUP_ID = 0)
						 and (JOB_STATUS = @P_STATUS OR @P_STATUS =0)
						 AND Job.ISDELETED = 0)
                      SELECT *
                      FROM LISTRECORD
                      WHERE ROWNUMBER BETWEEN @P_ROWSTART AND @P_ROWEND;
             END;
     END;
GO
/****** Object:  StoredProcedure [dbo].[PROC_REFRESH_JOB]    Script Date: 08/14/2018 16:39:21 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		tienmanh
-- Create date: 26/12/2015
-- Description:	Auto generate update script
-- =============================================
CREATE PROC [dbo].[PROC_REFRESH_JOB]
(
	@P_JOB_ID int
)
AS
BEGIN
    UPDATE Job
    SET 
        CREATED_DATE = GETDATE()
   	WHERE 
		JOB_ID = @P_JOB_ID
END
GO
/****** Object:  StoredProcedure [dbo].[PROC_JOB_SELECTALL_SORTBY_JOB_NAME]    Script Date: 08/14/2018 16:39:21 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROC [dbo].[PROC_JOB_SELECTALL_SORTBY_JOB_NAME](@P_PAGESIZE INT,
											@KEYWORD nvarchar(100),
                                            @P_PAGENO   INT,
                                            @P_TOTALROW INT OUT)
AS
     DECLARE @P_ROWSTART INT;
     DECLARE @P_ROWEND INT;
     BEGIN
         IF(@P_PAGENO > 0)
             BEGIN
                 SET @P_PAGENO = @P_PAGENO - 1;
                 SET @P_ROWSTART = @P_PAGESIZE * @P_PAGENO + 1;
                 SET @P_ROWEND = @P_ROWSTART + @P_PAGESIZE - 1;
                 SET @P_TOTALROW =
                 (
                     SELECT COUNT(*)
                     FROM Job
                     WHERE ISDELETED = '0' and JOB_NAME LIKE '%'+@KEYWORD +'%'
                 );
                 WITH LISTRECORD
                      AS(SELECT JOB_ID,
								GROUP_ID = (SELECT GROUP_NAME
								FROM [Group]
								where [Group].GROUP_ID = Job.GROUP_ID),
                                JOB_NAME,
								NUMBER,
								SALARY,
								CREATED_DATE = (select CONVERT(varchar,CREATED_DATE,103)),
								EXPIRED_DATE = (select CONVERT(varchar,EXPIRED_DATE,103)),
								JOB_DECRIPTION,
								ISDELETED,
								VIEW_COUNT,
                                ROW_NUMBER() OVER(ORDER BY JOB_NAME ASC) AS ROWNUMBER
                         FROM Job
                         WHERE ISDELETED = '0' and JOB_NAME LIKE N'%'+ @KEYWORD +'%')
                      SELECT *
                      FROM LISTRECORD
                      WHERE ROWNUMBER BETWEEN @P_ROWSTART AND @P_ROWEND
                      ORDER BY ROWNUMBER ASC;
             END;
     END;
GO
/****** Object:  StoredProcedure [dbo].[PROC_JOB_SELECTALL_FRONTEND_FILTER_WITH_LOCATION]    Script Date: 08/14/2018 16:39:21 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROC [dbo].[PROC_JOB_SELECTALL_FRONTEND_FILTER_WITH_LOCATION](@P_PAGESIZE INT,
										@P_PAGENO   INT,
                                        @P_TOTALROW INT OUT,
										@KEYWORD nvarchar(100),
										@P_GROUP_ID int,
										@P_LOCATION_ID int)
AS
     DECLARE @P_ROWSTART INT;
     DECLARE @P_ROWEND INT;
     BEGIN
         IF(@P_PAGENO > 0)
             BEGIN
                 SET @P_PAGENO = @P_PAGENO - 1;
                 SET @P_ROWSTART = @P_PAGESIZE * @P_PAGENO + 1;
                 SET @P_ROWEND = @P_ROWSTART + @P_PAGESIZE - 1;
                 SET @P_TOTALROW =
                 (
                     SELECT COUNT(*)
                     FROM Job
					 INNER JOIN Job_Location ON Job.JOB_ID = Job_Location.JOB_ID
						 INNER JOIN Location ON Job_Location.LOCATION_ID = Location.LOCATION_ID
						 INNER JOIN [Group] ON Job.GROUP_ID = [Group].GROUP_ID
					 WHERE JOB_NAME LIKE '%'+@KEYWORD +'%' 
						 AND (Job.GROUP_ID = @P_GROUP_ID OR @P_GROUP_ID = 0)
						 and (JOB_STATUS = 1)
						 and (Location.LOCATION_ID = @P_LOCATION_ID OR @P_LOCATION_ID = 0) 
						 AND Job.ISDELETED = 0
                 );
                 WITH LISTRECORD
                      AS(SELECT Job.JOB_ID,
								[Group].GROUP_NAME,
                                Job.JOB_NAME,
								Job.NUMBER,
								Job.SALARY,
								CREATED_DATE = (select CONVERT(varchar,Job.CREATED_DATE,103)),
								EXPIRED_DATE = (select CONVERT(varchar,Job.EXPIRED_DATE,103)),
								Job.JOB_DECRIPTION,
								Job.JOB_STATUS,
								Job.VIEW_COUNT,
								Location.LOCATION_NAME,
								TOTALROW = @P_TOTALROW,
                                ROW_NUMBER() OVER(ORDER BY Job.CREATED_DATE DESC) AS ROWNUMBER
                         FROM Job
						 INNER JOIN Job_Location ON Job.JOB_ID = Job_Location.JOB_ID
						 INNER JOIN Location ON Job_Location.LOCATION_ID = Location.LOCATION_ID
						 INNER JOIN [Group] ON Job.GROUP_ID = [Group].GROUP_ID
						 WHERE JOB_NAME LIKE '%'+@KEYWORD +'%' 
						 AND (Job.GROUP_ID = @P_GROUP_ID OR @P_GROUP_ID = 0)
						 and (JOB_STATUS = 1)
						 and (Location.LOCATION_ID = @P_LOCATION_ID OR @P_LOCATION_ID = 0) 
						 AND Job.ISDELETED = 0)
                      SELECT *
                      FROM LISTRECORD
                      WHERE ROWNUMBER BETWEEN @P_ROWSTART AND @P_ROWEND;
             END;
     END;
GO
/****** Object:  StoredProcedure [dbo].[PROC_LOCATION_NAME_SELECTALL123]    Script Date: 08/14/2018 16:39:21 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		tienmanh
-- Create date: 26/12/2015
-- Description:	Auto generate update script
-- =============================================
CREATE PROC [dbo].[PROC_LOCATION_NAME_SELECTALL123]
(
	@P_JOB_ID INT
)
AS
BEGIN
    SELECT LOCATION_NAME,
	LOcation.LOCATION_ID
    FROM Location
	INNER JOIN Job_Location ON Location.LOCATION_ID = Job_Location.LOCATION_ID
	INNER JOIN Job ON Job_Location.JOB_ID = Job.JOB_ID
    WHERE (Job.JOB_ID = @P_JOB_ID Or @P_JOB_ID = 0)

END;
GO
/****** Object:  StoredProcedure [dbo].[PROC_LOCATION_NAME_SELECTALL]    Script Date: 08/14/2018 16:39:21 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		tienmanh
-- Create date: 26/12/2015
-- Description:	Auto generate update script
-- =============================================
CREATE PROC [dbo].[PROC_LOCATION_NAME_SELECTALL]
(
	@P_JOB_ID INT
)
AS
BEGIN
    SELECT LOCATION_NAME
    FROM Location
	INNER JOIN Job_Location ON Location.LOCATION_ID = Job_Location.LOCATION_ID
	INNER JOIN Job ON Job_Location.JOB_ID = Job.JOB_ID
    WHERE (Job.JOB_ID = @P_JOB_ID Or @P_JOB_ID = 0)

END;
GO
/****** Object:  StoredProcedure [dbo].[PROC_LOCATION_INSERT]    Script Date: 08/14/2018 16:39:21 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROC [dbo].[PROC_LOCATION_INSERT]
(
    @P_LOCATION_ID INT,
    @P_JOB_ID INT
)
AS
BEGIN
    INSERT INTO Job_Location
	(
   		JOB_ID,
		LOCATION_ID,
		ISDELETED
	)
    VALUES
    (
		@P_JOB_ID,
		@P_LOCATION_ID,
		0
	)
END
GO
/****** Object:  StoredProcedure [dbo].[PROC_LOCATION_DELETEBYID]    Script Date: 08/14/2018 16:39:21 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		thangnh
-- Create date: 06/01/2016
-- Description:	Auto generate delete by id script
-- =============================================
CREATE PROC [dbo].[PROC_LOCATION_DELETEBYID]
(
    @P_JOB_ID int
)
AS
BEGIN
    DELETE Job_Location
    WHERE JOB_ID = @P_JOB_ID
END
GO
/****** Object:  StoredProcedure [dbo].[PROC_JOB_SELECTALL_BACKEND_DASHBOARD]    Script Date: 08/14/2018 16:39:21 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROC [dbo].[PROC_JOB_SELECTALL_BACKEND_DASHBOARD](@P_PAGESIZE INT,
										@P_PAGENO   INT,
                                        @P_TOTALROW INT OUT
										)
AS
     DECLARE @P_ROWSTART INT;
     DECLARE @P_ROWEND INT;
     BEGIN
         IF(@P_PAGENO > 0)
             BEGIN
                 SET @P_PAGENO = @P_PAGENO - 1;
                 SET @P_ROWSTART = @P_PAGESIZE * @P_PAGENO + 1;
                 SET @P_ROWEND = @P_ROWSTART + @P_PAGESIZE - 1;
                 SET @P_TOTALROW =
                 (
                     SELECT COUNT(*)
                     FROM Job
						 INNER JOIN [Group] ON Job.GROUP_ID = [Group].GROUP_ID
					 WHERE Job.ISDELETED = 0
                 );
                 WITH LISTRECORD
                      AS(SELECT Job.JOB_ID,
								[Group].GROUP_NAME,
                                Job.JOB_NAME,
								Job.NUMBER,
								Job.SALARY,
								CREATED_DATE = (select CONVERT(varchar,Job.CREATED_DATE,103)),
								EXPIRED_DATE = (select CONVERT(varchar,Job.EXPIRED_DATE,103)),
								Job.JOB_DECRIPTION,
								Job.JOB_STATUS,
								Job.VIEW_COUNT,
								Job.CV_APPLY_COUNT,
								CV_UNREAD = (SELECT COUNT(*)
											FROM CV
											WHERE CV.JOB_ID = Job.JOB_ID
											AND CV.CV_STATUS = 1),
								TOTALROW = @P_TOTALROW,
                                ROW_NUMBER() OVER(ORDER BY Job.EXPIRED_DATE ASC) AS ROWNUMBER
                         FROM Job
						 INNER JOIN [Group] ON Job.GROUP_ID = [Group].GROUP_ID
						 WHERE Job.ISDELETED = 0
						 AND EXPIRED_DATE >= GETDATE())
                      SELECT *
                      FROM LISTRECORD
                      WHERE ROWNUMBER BETWEEN @P_ROWSTART AND @P_ROWEND
                      ORDER BY ROWNUMBER ASC;
             END;
     END;
GO
/****** Object:  StoredProcedure [dbo].[PROC_JOB_SELECTALL_WITH_LOCATION_WITHOUT_DATE]    Script Date: 08/14/2018 16:39:21 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROC [dbo].[PROC_JOB_SELECTALL_WITH_LOCATION_WITHOUT_DATE](@P_PAGESIZE INT,
										@P_PAGENO   INT,
                                        @P_TOTALROW INT OUT,
										@KEYWORD nvarchar(100),
										@P_STATUS int = 0,
										@P_GROUP_ID int,
										@P_LOCATION_ID int)
AS
     DECLARE @P_ROWSTART INT;
     DECLARE @P_ROWEND INT;
     BEGIN
         IF(@P_PAGENO > 0)
             BEGIN
                 SET @P_PAGENO = @P_PAGENO - 1;
                 SET @P_ROWSTART = @P_PAGESIZE * @P_PAGENO + 1;
                 SET @P_ROWEND = @P_ROWSTART + @P_PAGESIZE - 1;
                 SET @P_TOTALROW =
                 (
                     SELECT COUNT(*)
                     FROM Job
						 INNER JOIN Job_Location ON Job.JOB_ID = Job_Location.JOB_ID
						 INNER JOIN Location ON Job_Location.LOCATION_ID = Location.LOCATION_ID
						 INNER JOIN [Group] ON Job.GROUP_ID = [Group].GROUP_ID
					 WHERE JOB_NAME LIKE '%'+@KEYWORD +'%' 
						 AND (Job.GROUP_ID = @P_GROUP_ID OR @P_GROUP_ID = 0)
						 and (JOB_STATUS = @P_STATUS OR @P_STATUS =0)
						 and (Location.LOCATION_ID = @P_LOCATION_ID OR @P_LOCATION_ID = 0) 
						 AND Job.ISDELETED = 0
                 );
                 WITH LISTRECORD
                      AS(SELECT Job.JOB_ID,
								[Group].GROUP_NAME,
                                Job.JOB_NAME,
								Job.NUMBER,
								Job.SALARY,
								CREATED_DATE = (select CONVERT(varchar,Job.CREATED_DATE,103)),
								EXPIRED_DATE = (select CONVERT(varchar,Job.EXPIRED_DATE,103)),
								Job.JOB_DECRIPTION,
								Job.JOB_STATUS,
								Job.VIEW_COUNT,
								Job.CV_APPLY_COUNT,
								Location.LOCATION_NAME,
								TOTALROW = @P_TOTALROW,
                                ROW_NUMBER() OVER(ORDER BY CREATED_DATE DESC) AS ROWNUMBER
                         FROM Job
						 INNER JOIN Job_Location ON Job.JOB_ID = Job_Location.JOB_ID
						 INNER JOIN Location ON Job_Location.LOCATION_ID = Location.LOCATION_ID
						 INNER JOIN [Group] ON Job.GROUP_ID = [Group].GROUP_ID
						 WHERE JOB_NAME LIKE '%'+@KEYWORD +'%' 
						 AND (Job.GROUP_ID = @P_GROUP_ID OR @P_GROUP_ID = 0)
						 and (JOB_STATUS = @P_STATUS OR @P_STATUS =0)
						 and (Location.LOCATION_ID = @P_LOCATION_ID OR @P_LOCATION_ID = 0) 
						 AND Job.ISDELETED = 0)
                      SELECT *
                      FROM LISTRECORD
                      WHERE ROWNUMBER BETWEEN @P_ROWSTART AND @P_ROWEND;
             END;
     END;
GO
/****** Object:  StoredProcedure [dbo].[PROC_JOB_SELECTALL_WITH_LOCATION]    Script Date: 08/14/2018 16:39:22 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROC [dbo].[PROC_JOB_SELECTALL_WITH_LOCATION](@P_PAGESIZE INT,
										@P_PAGENO   INT,
                                        @P_TOTALROW INT OUT,
										@KEYWORD nvarchar(100),
										@P_CREATED_FROM date = '2016-1-1',
										@P_CREATED_TO date = '9999-12-31',
										@P_EXPIRED_TO date = '9999-12-31',
										@P_STATUS int = 0,
										@P_GROUP_ID int,
										@P_LOCATION_ID int)
AS
     DECLARE @P_ROWSTART INT;
     DECLARE @P_ROWEND INT;
     BEGIN
         IF(@P_PAGENO > 0)
             BEGIN
                 SET @P_PAGENO = @P_PAGENO - 1;
                 SET @P_ROWSTART = @P_PAGESIZE * @P_PAGENO + 1;
                 SET @P_ROWEND = @P_ROWSTART + @P_PAGESIZE - 1;
                 SET @P_TOTALROW =
                 (
                     SELECT COUNT(*)
                     FROM Job
						 INNER JOIN Job_Location ON Job.JOB_ID = Job_Location.JOB_ID
						 INNER JOIN Location ON Job_Location.LOCATION_ID = Location.LOCATION_ID
						 INNER JOIN [Group] ON Job.GROUP_ID = [Group].GROUP_ID
					 WHERE JOB_NAME LIKE '%'+@KEYWORD +'%' 
						 AND (Job.GROUP_ID = @P_GROUP_ID OR @P_GROUP_ID = 0)
						 and CREATED_DATE between @P_CREATED_FROM and @P_CREATED_TO
						 and (JOB_STATUS = @P_STATUS OR @P_STATUS =0)
						 and (Location.LOCATION_ID = @P_LOCATION_ID OR @P_LOCATION_ID = 0) 
						 AND Job.ISDELETED = 0
						 AND (EXPIRED_DATE <= @P_EXPIRED_TO)
                 );
                 WITH LISTRECORD
                      AS(SELECT Job.JOB_ID,
								[Group].GROUP_NAME,
                                Job.JOB_NAME,
								Job.NUMBER,
								Job.SALARY,
								CREATED_DATE = (select CONVERT(varchar,Job.CREATED_DATE,103)),
								EXPIRED_DATE = (select CONVERT(varchar,Job.EXPIRED_DATE,103)),
								Job.JOB_DECRIPTION,
								Job.JOB_STATUS,
								Job.VIEW_COUNT,
								Job.CV_APPLY_COUNT,
								Location.LOCATION_NAME,
								TOTALROW = @P_TOTALROW,
                                ROW_NUMBER() OVER(ORDER BY CREATED_DATE DESC) AS ROWNUMBER
                         FROM Job
						 INNER JOIN Job_Location ON Job.JOB_ID = Job_Location.JOB_ID
						 INNER JOIN Location ON Job_Location.LOCATION_ID = Location.LOCATION_ID
						 INNER JOIN [Group] ON Job.GROUP_ID = [Group].GROUP_ID
						 WHERE JOB_NAME LIKE '%'+@KEYWORD +'%' 
						 AND (Job.GROUP_ID = @P_GROUP_ID OR @P_GROUP_ID = 0)
						 and CREATED_DATE between @P_CREATED_FROM and @P_CREATED_TO
						 and (JOB_STATUS = @P_STATUS OR @P_STATUS =0)
						 and (Location.LOCATION_ID = @P_LOCATION_ID OR @P_LOCATION_ID = 0) 
						 AND Job.ISDELETED = 0
						 AND (EXPIRED_DATE <= @P_EXPIRED_TO))
                      SELECT *
                      FROM LISTRECORD
                      WHERE ROWNUMBER BETWEEN @P_ROWSTART AND @P_ROWEND;
             END;
     END;
GO
/****** Object:  StoredProcedure [dbo].[PROC_CV_UPDATE]    Script Date: 08/14/2018 16:39:22 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		tienmanh
-- Create date: 26/12/2015
-- Description:	Auto generate update script
-- =============================================
CREATE PROC [dbo].[PROC_CV_UPDATE]
(
	@P_CV_ID int,
	@P_STATUS int

)
AS
BEGIN
    UPDATE CV
    SET 
        CV_STATUS = @P_STATUS
   	WHERE 
        CV_ID = @P_CV_ID
END
GO
/****** Object:  StoredProcedure [dbo].[PROC_CV_UNREAD_COUNT]    Script Date: 08/14/2018 16:39:22 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROC [dbo].[PROC_CV_UNREAD_COUNT]
(
@P_JOB_ID int
)
AS
BEGIN
    SELECT Count(*)
	FROM CV
	WHERE ISDELETED = 0
	AND CV_STATUS = 1
	AND JOB_ID = @P_JOB_ID
END
GO
/****** Object:  StoredProcedure [dbo].[PROC_CV_SELECTBYID]    Script Date: 08/14/2018 16:39:22 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROC [dbo].[PROC_CV_SELECTBYID](@P_CV_ID INT)
AS
     BEGIN
         SELECT Candidate.CANDIDATE_NAME,
								Job.JOB_NAME,
								[Group].GROUP_NAME,
								Candidate.SEX,
								Candidate.PHONENUMBER,
								Candidate.EMAIL,
								CREATED_DATE = (select CONVERT(varchar,Candidate.CREATED_DATE,103)),
								CV.CV_STATUS,
								CV.CV_ID,
								CV.CV_LINK,
								CV.CV_UPLOAD,
								CV.CV_DESCRIPTION,
								Job.JOB_ID,
								[Group].GROUP_ID
         FROM CV
					 INNER JOIN Candidate ON CV.CANDIDATE_ID = Candidate.CANDIDATE_ID
					 INNER JOIN Job ON CV.JOB_ID = Job.JOB_ID
					 INNER JOIN [Group] ON Job.GROUP_ID = [Group].GROUP_ID
         WHERE		 CV.CV_ID = @P_CV_ID;
     END;
GO
/****** Object:  StoredProcedure [dbo].[PROC_CV_SELECTALL]    Script Date: 08/14/2018 16:39:22 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROC [dbo].[PROC_CV_SELECTALL](@P_PAGESIZE INT,
										@P_PAGENO   INT,
                                        @P_TOTALROW INT OUT,
										@P_CANDIDATE_NAME nvarchar(50),
										@P_JOB_ID INT,
										@P_GROUP_ID INT,
										@P_STATUS INT)
										
AS
     DECLARE @P_ROWSTART INT;
     DECLARE @P_ROWEND INT;
     BEGIN
         IF(@P_PAGENO > 0)
             BEGIN
                 SET @P_PAGENO = @P_PAGENO - 1;
                 SET @P_ROWSTART = @P_PAGESIZE * @P_PAGENO + 1;
                 SET @P_ROWEND = @P_ROWSTART + @P_PAGESIZE - 1;
                 SET @P_TOTALROW =
                 (
                     SELECT Count(*)
                     FROM CV
					 INNER JOIN Location ON CV.CV_LOCATION = Location.LOCATION_ID
					 INNER JOIN Candidate ON CV.CANDIDATE_ID = Candidate.CANDIDATE_ID
					 INNER JOIN Job ON CV.JOB_ID = Job.JOB_ID
					 INNER JOIN [Group] ON Job.GROUP_ID = [Group].GROUP_ID
					 WHERE Candidate.CANDIDATE_NAME like '%'+@P_CANDIDATE_NAME+'%'
							AND (CV.JOB_ID = @P_JOB_ID OR @P_JOB_ID = 0)
							AND (Job.GROUP_ID = @P_GROUP_ID  OR @P_GROUP_ID = 0)
							AND (CV.CV_LOCATION = Location.LOCATION_ID  OR CV.CV_LOCATION = null)
							AND (CV_STATUS = @P_STATUS OR @P_STATUS = 0)
							AND CV.ISDELETED = 0
                 );
                 WITH LISTRECORD
                      AS(SELECT Candidate.CANDIDATE_NAME,
								Job.JOB_NAME,
								[Group].GROUP_NAME,
								Candidate.SEX,
								Candidate.PHONENUMBER,
								Candidate.EMAIL,
								CREATED_DATE = (select CONVERT(varchar,Candidate.CREATED_DATE,103)),
								CV.CV_STATUS,
								CV.CV_ID,
								CV.CV_LINK,
								CV.CV_DESCRIPTION,
								Job.JOB_ID,
								[Group].GROUP_ID,
								TOTALROW = @P_TOTALROW,
								Location.LOCATION_NAME,
                                ROW_NUMBER() OVER(ORDER BY Candidate.CREATED_DATE DESC) AS ROWNUMBER
                         FROM CV
							INNER JOIN Location ON CV.CV_LOCATION = Location.LOCATION_ID
							 INNER JOIN Candidate ON CV.CANDIDATE_ID = Candidate.CANDIDATE_ID
							 INNER JOIN Job ON CV.JOB_ID = Job.JOB_ID
							 INNER JOIN [Group] ON Job.GROUP_ID = [Group].GROUP_ID
						 WHERE Candidate.CANDIDATE_NAME like '%'+@P_CANDIDATE_NAME+'%'
								AND (CV.JOB_ID = @P_JOB_ID  OR @P_JOB_ID = 0)
								AND (Job.GROUP_ID = @P_GROUP_ID OR @P_GROUP_ID = 0)
								AND (CV.CV_LOCATION = Location.LOCATION_ID  OR CV.CV_LOCATION = null)
								AND (CV_STATUS = @P_STATUS OR @P_STATUS = 0)
								AND CV.ISDELETED = 0)
                      SELECT *
                      FROM LISTRECORD
                      WHERE ROWNUMBER BETWEEN @P_ROWSTART AND @P_ROWEND;
             END;
     END;
GO
/****** Object:  StoredProcedure [dbo].[PROC_CV_SELECT_STATUS]    Script Date: 08/14/2018 16:39:22 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROC [dbo].[PROC_CV_SELECT_STATUS](@P_CV_ID INT)
AS
     BEGIN
         SELECT CV_STATUS
         FROM CV
         WHERE CV.CV_ID = @P_CV_ID;
     END;
GO
/****** Object:  StoredProcedure [dbo].[PROC_CV_SELECT_DASHBOARD]    Script Date: 08/14/2018 16:39:22 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROC [dbo].[PROC_CV_SELECT_DASHBOARD](@P_PAGESIZE INT,
										@P_PAGENO   INT,
                                        @P_TOTALROW INT OUT,
										@P_CANDIDATE_NAME nvarchar(50),
										@P_JOB_ID INT,
										@P_GROUP_ID INT)
										
AS
     DECLARE @P_ROWSTART INT;
     DECLARE @P_ROWEND INT;
     BEGIN
         IF(@P_PAGENO > 0)
             BEGIN
                 SET @P_PAGENO = @P_PAGENO - 1;
                 SET @P_ROWSTART = @P_PAGESIZE * @P_PAGENO + 1;
                 SET @P_ROWEND = @P_ROWSTART + @P_PAGESIZE - 1;
                 SET @P_TOTALROW =
                 (
                     SELECT Count(*)
                     FROM CV
					 INNER JOIN Location ON CV.CV_LOCATION = Location.LOCATION_ID
					 INNER JOIN Candidate ON CV.CANDIDATE_ID = Candidate.CANDIDATE_ID
					 INNER JOIN Job ON CV.JOB_ID = Job.JOB_ID
					 INNER JOIN [Group] ON Job.GROUP_ID = [Group].GROUP_ID
					 WHERE Candidate.CANDIDATE_NAME like '%'+@P_CANDIDATE_NAME+'%'
							AND (CV.JOB_ID = @P_JOB_ID OR @P_JOB_ID = 0)
							AND (Job.GROUP_ID = @P_GROUP_ID  OR @P_GROUP_ID = 0)
							AND (CV.CV_LOCATION = Location.LOCATION_ID  OR CV.CV_LOCATION = null)
                 );
                 WITH LISTRECORD
                      AS(SELECT Candidate.CANDIDATE_NAME,
								Job.JOB_NAME,
								[Group].GROUP_NAME,
								Candidate.SEX,
								Candidate.PHONENUMBER,
								Candidate.EMAIL,
								CREATED_DATE = (select CONVERT(varchar,Candidate.CREATED_DATE,103)),
								CV.CV_STATUS,
								CV.CV_ID,
								CV.CV_LINK,
								Job.JOB_ID,
								[Group].GROUP_ID,
								TOTALROW = @P_TOTALROW,
								Location.LOCATION_NAME,
                                ROW_NUMBER() OVER(ORDER BY Candidate.CREATED_DATE DESC) AS ROWNUMBER
                         FROM CV
							INNER JOIN Location ON CV.CV_LOCATION = Location.LOCATION_ID
							 INNER JOIN Candidate ON CV.CANDIDATE_ID = Candidate.CANDIDATE_ID
							 INNER JOIN Job ON CV.JOB_ID = Job.JOB_ID
							 INNER JOIN [Group] ON Job.GROUP_ID = [Group].GROUP_ID
						 WHERE Candidate.CANDIDATE_NAME like '%'+@P_CANDIDATE_NAME+'%'
								AND (CV.JOB_ID = @P_JOB_ID  OR @P_JOB_ID = 0)
								AND (Job.GROUP_ID = @P_GROUP_ID OR @P_GROUP_ID = 0)
								AND (CV.CV_LOCATION = Location.LOCATION_ID  OR CV.CV_LOCATION = null)
								AND CV.CV_STATUS = 1)
                      SELECT *
                      FROM LISTRECORD
                      WHERE ROWNUMBER BETWEEN @P_ROWSTART AND @P_ROWEND;
             END;
     END;
GO
/****** Object:  StoredProcedure [dbo].[PROC_CV_INSERT]    Script Date: 08/14/2018 16:39:22 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROC [dbo].[PROC_CV_INSERT]
(
	@P_CANDIDATE_ID int,
	@P_JOB_ID int,
	@P_CV_LINK varchar(200),
	@P_CV_UPLOAD varchar(200),
	@P_CV_DESCRIPTION nvarchar(1000),
	@P_LOCATION_ID int
)
AS
BEGIN
    INSERT INTO CV
   	(
   		CANDIDATE_ID,
		JOB_ID,
		CV_STATUS,
		CV_LINK,
		CV_UPLOAD,
		ISDELETED,
		CV_DESCRIPTION,
		CV_LOCATION
	)
    VALUES
    (
		@P_CANDIDATE_ID,
		@P_JOB_ID,
		1,
		@P_CV_LINK,
		@P_CV_UPLOAD,
		0,
		@P_CV_DESCRIPTION,
		@P_LOCATION_ID
		
	)
END
GO
/****** Object:  StoredProcedure [dbo].[PROC_CV_DELETEBYID]    Script Date: 08/14/2018 16:39:22 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		thangnh
-- Create date: 06/01/2016
-- Description:	Auto generate delete by id script
-- =============================================
CREATE PROC [dbo].[PROC_CV_DELETEBYID]
(
    @P_CV_ID int
)
AS
BEGIN
    UPDATE CV
    SET
    ISDELETED='1'
    WHERE CV_ID = @P_CV_ID
END
GO
/****** Object:  Default [DF_Group_IsDeleted]    Script Date: 08/14/2018 16:38:44 ******/
ALTER TABLE [dbo].[Group] ADD  CONSTRAINT [DF_Group_IsDeleted]  DEFAULT ((0)) FOR [ISDELETED]
GO
/****** Object:  Default [DF_Job_ViewCount]    Script Date: 08/14/2018 16:39:17 ******/
ALTER TABLE [dbo].[Job] ADD  CONSTRAINT [DF_Job_ViewCount]  DEFAULT ((0)) FOR [VIEW_COUNT]
GO
/****** Object:  Default [DF_Job_JOB_STATUS]    Script Date: 08/14/2018 16:39:17 ******/
ALTER TABLE [dbo].[Job] ADD  CONSTRAINT [DF_Job_JOB_STATUS]  DEFAULT ((1)) FOR [JOB_STATUS]
GO
/****** Object:  ForeignKey [FK_Job_Group]    Script Date: 08/14/2018 16:39:17 ******/
ALTER TABLE [dbo].[Job]  WITH CHECK ADD  CONSTRAINT [FK_Job_Group] FOREIGN KEY([GROUP_ID])
REFERENCES [dbo].[Group] ([GROUP_ID])
ON UPDATE CASCADE
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[Job] CHECK CONSTRAINT [FK_Job_Group]
GO
/****** Object:  ForeignKey [FK_JobPosition_Job]    Script Date: 08/14/2018 16:39:19 ******/
ALTER TABLE [dbo].[JobPosition]  WITH CHECK ADD  CONSTRAINT [FK_JobPosition_Job] FOREIGN KEY([JOB_ID])
REFERENCES [dbo].[Job] ([JOB_ID])
GO
ALTER TABLE [dbo].[JobPosition] CHECK CONSTRAINT [FK_JobPosition_Job]
GO
/****** Object:  ForeignKey [FK_JobPosition_Position]    Script Date: 08/14/2018 16:39:19 ******/
ALTER TABLE [dbo].[JobPosition]  WITH CHECK ADD  CONSTRAINT [FK_JobPosition_Position] FOREIGN KEY([POSITION_ID])
REFERENCES [dbo].[Position] ([POSITION_ID])
GO
ALTER TABLE [dbo].[JobPosition] CHECK CONSTRAINT [FK_JobPosition_Position]
GO
/****** Object:  ForeignKey [FK_Job_Location_Job]    Script Date: 08/14/2018 16:39:19 ******/
ALTER TABLE [dbo].[Job_Location]  WITH CHECK ADD  CONSTRAINT [FK_Job_Location_Job] FOREIGN KEY([JOB_ID])
REFERENCES [dbo].[Job] ([JOB_ID])
ON UPDATE CASCADE
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[Job_Location] CHECK CONSTRAINT [FK_Job_Location_Job]
GO
/****** Object:  ForeignKey [FK_Job_Location_Location]    Script Date: 08/14/2018 16:39:19 ******/
ALTER TABLE [dbo].[Job_Location]  WITH CHECK ADD  CONSTRAINT [FK_Job_Location_Location] FOREIGN KEY([LOCATION_ID])
REFERENCES [dbo].[Location] ([LOCATION_ID])
ON UPDATE CASCADE
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[Job_Location] CHECK CONSTRAINT [FK_Job_Location_Location]
GO
/****** Object:  ForeignKey [FK_CV_Candidate]    Script Date: 08/14/2018 16:39:19 ******/
ALTER TABLE [dbo].[CV]  WITH CHECK ADD  CONSTRAINT [FK_CV_Candidate] FOREIGN KEY([CANDIDATE_ID])
REFERENCES [dbo].[Candidate] ([CANDIDATE_ID])
ON UPDATE CASCADE
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[CV] CHECK CONSTRAINT [FK_CV_Candidate]
GO
/****** Object:  ForeignKey [FK_CV_Job]    Script Date: 08/14/2018 16:39:19 ******/
ALTER TABLE [dbo].[CV]  WITH CHECK ADD  CONSTRAINT [FK_CV_Job] FOREIGN KEY([JOB_ID])
REFERENCES [dbo].[Job] ([JOB_ID])
ON UPDATE CASCADE
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[CV] CHECK CONSTRAINT [FK_CV_Job]
GO
