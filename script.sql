USE [master]
GO
/****** Object:  Database [DB_ThueOto1]    Script Date: 13/06/2019 5:07:19 PM ******/
CREATE DATABASE [DB_ThueOto1]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'DB_ThueOto1', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL12.SQLEXPRESS\MSSQL\DATA\DB_ThueOto1.mdf' , SIZE = 3264KB , MAXSIZE = UNLIMITED, FILEGROWTH = 1024KB )
 LOG ON 
( NAME = N'DB_ThueOto1_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL12.SQLEXPRESS\MSSQL\DATA\DB_ThueOto1_log.ldf' , SIZE = 832KB , MAXSIZE = 2048GB , FILEGROWTH = 10%)
GO
ALTER DATABASE [DB_ThueOto1] SET COMPATIBILITY_LEVEL = 120
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [DB_ThueOto1].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [DB_ThueOto1] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [DB_ThueOto1] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [DB_ThueOto1] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [DB_ThueOto1] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [DB_ThueOto1] SET ARITHABORT OFF 
GO
ALTER DATABASE [DB_ThueOto1] SET AUTO_CLOSE ON 
GO
ALTER DATABASE [DB_ThueOto1] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [DB_ThueOto1] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [DB_ThueOto1] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [DB_ThueOto1] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [DB_ThueOto1] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [DB_ThueOto1] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [DB_ThueOto1] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [DB_ThueOto1] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [DB_ThueOto1] SET  ENABLE_BROKER 
GO
ALTER DATABASE [DB_ThueOto1] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [DB_ThueOto1] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [DB_ThueOto1] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [DB_ThueOto1] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [DB_ThueOto1] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [DB_ThueOto1] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [DB_ThueOto1] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [DB_ThueOto1] SET RECOVERY SIMPLE 
GO
ALTER DATABASE [DB_ThueOto1] SET  MULTI_USER 
GO
ALTER DATABASE [DB_ThueOto1] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [DB_ThueOto1] SET DB_CHAINING OFF 
GO
ALTER DATABASE [DB_ThueOto1] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [DB_ThueOto1] SET TARGET_RECOVERY_TIME = 0 SECONDS 
GO
ALTER DATABASE [DB_ThueOto1] SET DELAYED_DURABILITY = DISABLED 
GO
USE [DB_ThueOto1]
GO
/****** Object:  Table [dbo].[Admin]    Script Date: 13/06/2019 5:07:19 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Admin](
	[TaiKhoan] [varchar](50) NULL,
	[MatKhau] [varchar](50) NULL,
	[MatKhauCap2] [varchar](50) NULL
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[BangGia]    Script Date: 13/06/2019 5:07:19 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[BangGia](
	[MaBangGia] [int] NOT NULL,
	[MaDVXe] [int] NOT NULL,
	[MaHinhThucThue] [int] NOT NULL,
	[MaLoaiHinhThue] [int] NOT NULL,
	[BangGia] [int] NOT NULL,
 CONSTRAINT [PK__BangGia__5DAC5A685DDB2513] PRIMARY KEY CLUSTERED 
(
	[MaBangGia] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[HangXe]    Script Date: 13/06/2019 5:07:19 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[HangXe](
	[MaHang] [int] NOT NULL,
	[TenHang] [nvarchar](50) NULL,
PRIMARY KEY CLUSTERED 
(
	[MaHang] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[HinhThucThue]    Script Date: 13/06/2019 5:07:19 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[HinhThucThue](
	[MaHinhThucThue] [int] NOT NULL,
	[TenHInhThucThue] [nvarchar](50) NULL,
PRIMARY KEY CLUSTERED 
(
	[MaHinhThucThue] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[HoaDon]    Script Date: 13/06/2019 5:07:19 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[HoaDon](
	[MaHD] [int] NOT NULL,
	[MaPhieuDatXe] [int] NOT NULL,
	[MaBangGia] [int] NOT NULL,
	[NgayTra] [datetime] NOT NULL,
	[SoNgayThue] [int] NULL,
 CONSTRAINT [PK_HoaDon] PRIMARY KEY CLUSTERED 
(
	[MaHD] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[KhachHang]    Script Date: 13/06/2019 5:07:19 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[KhachHang](
	[MaKH] [int] NOT NULL,
	[TenKH] [nvarchar](100) NULL,
	[DiaChi] [nvarchar](100) NULL,
	[DienThoai] [varchar](20) NULL,
	[TaiKhoanKH] [varchar](50) NULL,
	[MatKhauKH] [varchar](50) NULL,
PRIMARY KEY CLUSTERED 
(
	[MaKH] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[LoaiChoNgoi]    Script Date: 13/06/2019 5:07:19 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[LoaiChoNgoi](
	[MaChoNgoi] [int] NOT NULL,
	[SoChoNgoi] [nvarchar](20) NULL,
PRIMARY KEY CLUSTERED 
(
	[MaChoNgoi] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[LoaiHinhThue]    Script Date: 13/06/2019 5:07:19 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[LoaiHinhThue](
	[MaLoaiHinhThue] [int] NOT NULL,
	[TenLoaiHinhThue] [nvarchar](50) NULL,
PRIMARY KEY CLUSTERED 
(
	[MaLoaiHinhThue] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[PhieuDatXe]    Script Date: 13/06/2019 5:07:19 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[PhieuDatXe](
	[MaPhieuDatXe] [int] NOT NULL,
	[MaKH] [int] NOT NULL,
	[NgayDinhThue] [datetime] NOT NULL,
	[NgayDinhTra] [datetime] NOT NULL,
	[TienCoc] [int] NOT NULL,
	[MaDVXe] [int] NOT NULL,
 CONSTRAINT [PK__PhieuDat__165FA31E0BACA38F] PRIMARY KEY CLUSTERED 
(
	[MaPhieuDatXe] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[XeDichVu]    Script Date: 13/06/2019 5:07:19 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[XeDichVu](
	[MaDVXe] [int] NOT NULL,
	[MaChoNgoi] [int] NOT NULL,
	[MaHang] [int] NOT NULL,
	[TenXe] [nvarchar](100) NOT NULL,
	[ThongTinHopSo] [nvarchar](500) NOT NULL,
	[NhienLieuTP] [nvarchar](50) NOT NULL,
	[NhienLieuNTP] [nvarchar](50) NOT NULL,
	[DoiXe] [nvarchar](20) NOT NULL,
	[BienSoXe] [varchar](20) NOT NULL,
	[MauXe] [nvarchar](50) NOT NULL,
	[TenHinh] [nvarchar](100) NOT NULL,
	[TinhTrang] [bit] NOT NULL,
	[NgayCapNhat] [datetime] NOT NULL,
	[DongXe] [nvarchar](100) NOT NULL,
 CONSTRAINT [PK__XeDichVu__36ECD4792C10F444] PRIMARY KEY CLUSTERED 
(
	[MaDVXe] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
INSERT [dbo].[BangGia] ([MaBangGia], [MaDVXe], [MaHinhThucThue], [MaLoaiHinhThue], [BangGia]) VALUES (1, 1, 1, 1, 700000)
INSERT [dbo].[BangGia] ([MaBangGia], [MaDVXe], [MaHinhThucThue], [MaLoaiHinhThue], [BangGia]) VALUES (2, 1, 2, 1, 1700000)
INSERT [dbo].[BangGia] ([MaBangGia], [MaDVXe], [MaHinhThucThue], [MaLoaiHinhThue], [BangGia]) VALUES (3, 2, 1, 1, 700000)
INSERT [dbo].[BangGia] ([MaBangGia], [MaDVXe], [MaHinhThucThue], [MaLoaiHinhThue], [BangGia]) VALUES (4, 2, 2, 1, 1700000)
INSERT [dbo].[BangGia] ([MaBangGia], [MaDVXe], [MaHinhThucThue], [MaLoaiHinhThue], [BangGia]) VALUES (5, 3, 1, 1, 700000)
INSERT [dbo].[BangGia] ([MaBangGia], [MaDVXe], [MaHinhThucThue], [MaLoaiHinhThue], [BangGia]) VALUES (6, 3, 2, 1, 1700000)
INSERT [dbo].[BangGia] ([MaBangGia], [MaDVXe], [MaHinhThucThue], [MaLoaiHinhThue], [BangGia]) VALUES (7, 4, 1, 1, 800000)
INSERT [dbo].[BangGia] ([MaBangGia], [MaDVXe], [MaHinhThucThue], [MaLoaiHinhThue], [BangGia]) VALUES (8, 4, 2, 1, 1800000)
INSERT [dbo].[BangGia] ([MaBangGia], [MaDVXe], [MaHinhThucThue], [MaLoaiHinhThue], [BangGia]) VALUES (9, 5, 1, 1, 800000)
INSERT [dbo].[BangGia] ([MaBangGia], [MaDVXe], [MaHinhThucThue], [MaLoaiHinhThue], [BangGia]) VALUES (10, 5, 2, 1, 1800000)
INSERT [dbo].[BangGia] ([MaBangGia], [MaDVXe], [MaHinhThucThue], [MaLoaiHinhThue], [BangGia]) VALUES (11, 6, 1, 1, 1100000)
INSERT [dbo].[BangGia] ([MaBangGia], [MaDVXe], [MaHinhThucThue], [MaLoaiHinhThue], [BangGia]) VALUES (12, 6, 2, 1, 2100000)
INSERT [dbo].[BangGia] ([MaBangGia], [MaDVXe], [MaHinhThucThue], [MaLoaiHinhThue], [BangGia]) VALUES (13, 7, 1, 1, 2500000)
INSERT [dbo].[BangGia] ([MaBangGia], [MaDVXe], [MaHinhThucThue], [MaLoaiHinhThue], [BangGia]) VALUES (14, 7, 2, 1, 3500000)
INSERT [dbo].[BangGia] ([MaBangGia], [MaDVXe], [MaHinhThucThue], [MaLoaiHinhThue], [BangGia]) VALUES (15, 8, 1, 1, 2300000)
INSERT [dbo].[BangGia] ([MaBangGia], [MaDVXe], [MaHinhThucThue], [MaLoaiHinhThue], [BangGia]) VALUES (16, 8, 2, 1, 3200000)
INSERT [dbo].[BangGia] ([MaBangGia], [MaDVXe], [MaHinhThucThue], [MaLoaiHinhThue], [BangGia]) VALUES (17, 9, 1, 1, 3000000)
INSERT [dbo].[BangGia] ([MaBangGia], [MaDVXe], [MaHinhThucThue], [MaLoaiHinhThue], [BangGia]) VALUES (18, 9, 2, 1, 4000000)
INSERT [dbo].[BangGia] ([MaBangGia], [MaDVXe], [MaHinhThucThue], [MaLoaiHinhThue], [BangGia]) VALUES (19, 10, 1, 1, 5500000)
INSERT [dbo].[BangGia] ([MaBangGia], [MaDVXe], [MaHinhThucThue], [MaLoaiHinhThue], [BangGia]) VALUES (20, 10, 2, 1, 6500000)
INSERT [dbo].[BangGia] ([MaBangGia], [MaDVXe], [MaHinhThucThue], [MaLoaiHinhThue], [BangGia]) VALUES (21, 11, 1, 1, 4000000)
INSERT [dbo].[BangGia] ([MaBangGia], [MaDVXe], [MaHinhThucThue], [MaLoaiHinhThue], [BangGia]) VALUES (22, 11, 2, 1, 5000000)
INSERT [dbo].[BangGia] ([MaBangGia], [MaDVXe], [MaHinhThucThue], [MaLoaiHinhThue], [BangGia]) VALUES (23, 12, 1, 1, 5000000)
INSERT [dbo].[BangGia] ([MaBangGia], [MaDVXe], [MaHinhThucThue], [MaLoaiHinhThue], [BangGia]) VALUES (24, 12, 2, 1, 6000000)
INSERT [dbo].[BangGia] ([MaBangGia], [MaDVXe], [MaHinhThucThue], [MaLoaiHinhThue], [BangGia]) VALUES (25, 13, 1, 1, 1200000)
INSERT [dbo].[BangGia] ([MaBangGia], [MaDVXe], [MaHinhThucThue], [MaLoaiHinhThue], [BangGia]) VALUES (26, 13, 2, 1, 2200000)
INSERT [dbo].[BangGia] ([MaBangGia], [MaDVXe], [MaHinhThucThue], [MaLoaiHinhThue], [BangGia]) VALUES (27, 14, 1, 1, 1500000)
INSERT [dbo].[BangGia] ([MaBangGia], [MaDVXe], [MaHinhThucThue], [MaLoaiHinhThue], [BangGia]) VALUES (28, 14, 2, 1, 2500000)
INSERT [dbo].[BangGia] ([MaBangGia], [MaDVXe], [MaHinhThucThue], [MaLoaiHinhThue], [BangGia]) VALUES (29, 15, 1, 1, 1400000)
INSERT [dbo].[BangGia] ([MaBangGia], [MaDVXe], [MaHinhThucThue], [MaLoaiHinhThue], [BangGia]) VALUES (30, 15, 2, 1, 2400000)
INSERT [dbo].[BangGia] ([MaBangGia], [MaDVXe], [MaHinhThucThue], [MaLoaiHinhThue], [BangGia]) VALUES (31, 16, 1, 1, 2200000)
INSERT [dbo].[BangGia] ([MaBangGia], [MaDVXe], [MaHinhThucThue], [MaLoaiHinhThue], [BangGia]) VALUES (32, 16, 2, 1, 3200000)
INSERT [dbo].[BangGia] ([MaBangGia], [MaDVXe], [MaHinhThucThue], [MaLoaiHinhThue], [BangGia]) VALUES (33, 17, 1, 1, 1400000)
INSERT [dbo].[BangGia] ([MaBangGia], [MaDVXe], [MaHinhThucThue], [MaLoaiHinhThue], [BangGia]) VALUES (34, 17, 2, 1, 2400000)
INSERT [dbo].[BangGia] ([MaBangGia], [MaDVXe], [MaHinhThucThue], [MaLoaiHinhThue], [BangGia]) VALUES (35, 18, 1, 1, 1600000)
INSERT [dbo].[BangGia] ([MaBangGia], [MaDVXe], [MaHinhThucThue], [MaLoaiHinhThue], [BangGia]) VALUES (36, 18, 2, 1, 2600000)
INSERT [dbo].[BangGia] ([MaBangGia], [MaDVXe], [MaHinhThucThue], [MaLoaiHinhThue], [BangGia]) VALUES (37, 19, 1, 1, 1500000)
INSERT [dbo].[BangGia] ([MaBangGia], [MaDVXe], [MaHinhThucThue], [MaLoaiHinhThue], [BangGia]) VALUES (38, 19, 2, 1, 2500000)
INSERT [dbo].[BangGia] ([MaBangGia], [MaDVXe], [MaHinhThucThue], [MaLoaiHinhThue], [BangGia]) VALUES (39, 20, 1, 1, 1600000)
INSERT [dbo].[BangGia] ([MaBangGia], [MaDVXe], [MaHinhThucThue], [MaLoaiHinhThue], [BangGia]) VALUES (40, 20, 2, 1, 2600000)
INSERT [dbo].[BangGia] ([MaBangGia], [MaDVXe], [MaHinhThucThue], [MaLoaiHinhThue], [BangGia]) VALUES (41, 21, 1, 1, 1300000)
INSERT [dbo].[BangGia] ([MaBangGia], [MaDVXe], [MaHinhThucThue], [MaLoaiHinhThue], [BangGia]) VALUES (42, 21, 2, 1, 2300000)
INSERT [dbo].[BangGia] ([MaBangGia], [MaDVXe], [MaHinhThucThue], [MaLoaiHinhThue], [BangGia]) VALUES (43, 22, 1, 1, 1500000)
INSERT [dbo].[BangGia] ([MaBangGia], [MaDVXe], [MaHinhThucThue], [MaLoaiHinhThue], [BangGia]) VALUES (44, 22, 2, 1, 2500000)
INSERT [dbo].[BangGia] ([MaBangGia], [MaDVXe], [MaHinhThucThue], [MaLoaiHinhThue], [BangGia]) VALUES (45, 23, 1, 1, 3200000)
INSERT [dbo].[BangGia] ([MaBangGia], [MaDVXe], [MaHinhThucThue], [MaLoaiHinhThue], [BangGia]) VALUES (46, 23, 2, 1, 4200000)
INSERT [dbo].[BangGia] ([MaBangGia], [MaDVXe], [MaHinhThucThue], [MaLoaiHinhThue], [BangGia]) VALUES (47, 24, 1, 1, 8000000)
INSERT [dbo].[BangGia] ([MaBangGia], [MaDVXe], [MaHinhThucThue], [MaLoaiHinhThue], [BangGia]) VALUES (48, 24, 2, 1, 9000000)
INSERT [dbo].[BangGia] ([MaBangGia], [MaDVXe], [MaHinhThucThue], [MaLoaiHinhThue], [BangGia]) VALUES (49, 25, 1, 1, 4000000)
INSERT [dbo].[BangGia] ([MaBangGia], [MaDVXe], [MaHinhThucThue], [MaLoaiHinhThue], [BangGia]) VALUES (50, 25, 2, 1, 5000000)
INSERT [dbo].[BangGia] ([MaBangGia], [MaDVXe], [MaHinhThucThue], [MaLoaiHinhThue], [BangGia]) VALUES (51, 26, 1, 1, 3000000)
INSERT [dbo].[BangGia] ([MaBangGia], [MaDVXe], [MaHinhThucThue], [MaLoaiHinhThue], [BangGia]) VALUES (52, 26, 2, 1, 4000000)
INSERT [dbo].[BangGia] ([MaBangGia], [MaDVXe], [MaHinhThucThue], [MaLoaiHinhThue], [BangGia]) VALUES (53, 27, 1, 1, 3000000)
INSERT [dbo].[BangGia] ([MaBangGia], [MaDVXe], [MaHinhThucThue], [MaLoaiHinhThue], [BangGia]) VALUES (54, 27, 2, 1, 4000000)
INSERT [dbo].[BangGia] ([MaBangGia], [MaDVXe], [MaHinhThucThue], [MaLoaiHinhThue], [BangGia]) VALUES (55, 28, 1, 1, 3000000)
INSERT [dbo].[BangGia] ([MaBangGia], [MaDVXe], [MaHinhThucThue], [MaLoaiHinhThue], [BangGia]) VALUES (56, 28, 2, 1, 3500000)
INSERT [dbo].[BangGia] ([MaBangGia], [MaDVXe], [MaHinhThucThue], [MaLoaiHinhThue], [BangGia]) VALUES (57, 29, 1, 1, 2800000)
INSERT [dbo].[BangGia] ([MaBangGia], [MaDVXe], [MaHinhThucThue], [MaLoaiHinhThue], [BangGia]) VALUES (58, 29, 2, 1, 3800000)
INSERT [dbo].[BangGia] ([MaBangGia], [MaDVXe], [MaHinhThucThue], [MaLoaiHinhThue], [BangGia]) VALUES (59, 30, 1, 1, 3200000)
INSERT [dbo].[BangGia] ([MaBangGia], [MaDVXe], [MaHinhThucThue], [MaLoaiHinhThue], [BangGia]) VALUES (60, 30, 2, 1, 4200000)
INSERT [dbo].[BangGia] ([MaBangGia], [MaDVXe], [MaHinhThucThue], [MaLoaiHinhThue], [BangGia]) VALUES (61, 31, 1, 1, 3200000)
INSERT [dbo].[BangGia] ([MaBangGia], [MaDVXe], [MaHinhThucThue], [MaLoaiHinhThue], [BangGia]) VALUES (62, 31, 2, 1, 4200000)
INSERT [dbo].[BangGia] ([MaBangGia], [MaDVXe], [MaHinhThucThue], [MaLoaiHinhThue], [BangGia]) VALUES (63, 32, 1, 1, 5000000)
INSERT [dbo].[BangGia] ([MaBangGia], [MaDVXe], [MaHinhThucThue], [MaLoaiHinhThue], [BangGia]) VALUES (64, 32, 2, 1, 6000000)
INSERT [dbo].[BangGia] ([MaBangGia], [MaDVXe], [MaHinhThucThue], [MaLoaiHinhThue], [BangGia]) VALUES (65, 33, 1, 1, 5000000)
INSERT [dbo].[BangGia] ([MaBangGia], [MaDVXe], [MaHinhThucThue], [MaLoaiHinhThue], [BangGia]) VALUES (66, 33, 2, 1, 6000000)
INSERT [dbo].[BangGia] ([MaBangGia], [MaDVXe], [MaHinhThucThue], [MaLoaiHinhThue], [BangGia]) VALUES (67, 34, 1, 1, 5000000)
INSERT [dbo].[BangGia] ([MaBangGia], [MaDVXe], [MaHinhThucThue], [MaLoaiHinhThue], [BangGia]) VALUES (68, 34, 2, 1, 6000000)
INSERT [dbo].[BangGia] ([MaBangGia], [MaDVXe], [MaHinhThucThue], [MaLoaiHinhThue], [BangGia]) VALUES (69, 35, 1, 1, 5000000)
INSERT [dbo].[BangGia] ([MaBangGia], [MaDVXe], [MaHinhThucThue], [MaLoaiHinhThue], [BangGia]) VALUES (70, 35, 2, 1, 6000000)
INSERT [dbo].[BangGia] ([MaBangGia], [MaDVXe], [MaHinhThucThue], [MaLoaiHinhThue], [BangGia]) VALUES (71, 36, 1, 1, 5000000)
INSERT [dbo].[BangGia] ([MaBangGia], [MaDVXe], [MaHinhThucThue], [MaLoaiHinhThue], [BangGia]) VALUES (72, 36, 2, 1, 6000000)
INSERT [dbo].[HangXe] ([MaHang], [TenHang]) VALUES (1, N'Toyota')
INSERT [dbo].[HangXe] ([MaHang], [TenHang]) VALUES (2, N'Audi')
INSERT [dbo].[HangXe] ([MaHang], [TenHang]) VALUES (3, N'Mazda')
INSERT [dbo].[HangXe] ([MaHang], [TenHang]) VALUES (4, N'Honda')
INSERT [dbo].[HangXe] ([MaHang], [TenHang]) VALUES (5, N'Hyundai')
INSERT [dbo].[HangXe] ([MaHang], [TenHang]) VALUES (6, N'Chevorlet')
INSERT [dbo].[HangXe] ([MaHang], [TenHang]) VALUES (7, N'Mercedes')
INSERT [dbo].[HangXe] ([MaHang], [TenHang]) VALUES (8, N'Isuzu')
INSERT [dbo].[HangXe] ([MaHang], [TenHang]) VALUES (9, N'Dcar')
INSERT [dbo].[HangXe] ([MaHang], [TenHang]) VALUES (10, N'Jac')
INSERT [dbo].[HangXe] ([MaHang], [TenHang]) VALUES (11, N'Lishan')
INSERT [dbo].[HangXe] ([MaHang], [TenHang]) VALUES (12, N'Samco')
INSERT [dbo].[HangXe] ([MaHang], [TenHang]) VALUES (13, N'Thaco')
INSERT [dbo].[HangXe] ([MaHang], [TenHang]) VALUES (14, N'Scania')
INSERT [dbo].[HinhThucThue] ([MaHinhThucThue], [TenHInhThucThue]) VALUES (1, N'Theo Ngày')
INSERT [dbo].[HinhThucThue] ([MaHinhThucThue], [TenHInhThucThue]) VALUES (2, N'Theo Giờ ')
INSERT [dbo].[HinhThucThue] ([MaHinhThucThue], [TenHInhThucThue]) VALUES (3, N'Theo Km')
INSERT [dbo].[HinhThucThue] ([MaHinhThucThue], [TenHInhThucThue]) VALUES (4, N'Theo Tháng')
INSERT [dbo].[HoaDon] ([MaHD], [MaPhieuDatXe], [MaBangGia], [NgayTra], [SoNgayThue]) VALUES (1, 3, 12, CAST(N'2018-12-12 00:00:00.000' AS DateTime), 15)
INSERT [dbo].[HoaDon] ([MaHD], [MaPhieuDatXe], [MaBangGia], [NgayTra], [SoNgayThue]) VALUES (3, 1, 1, CAST(N'2019-06-01 00:00:00.000' AS DateTime), 13)
INSERT [dbo].[HoaDon] ([MaHD], [MaPhieuDatXe], [MaBangGia], [NgayTra], [SoNgayThue]) VALUES (4, 1, 2, CAST(N'2019-03-01 00:00:00.000' AS DateTime), 12)
INSERT [dbo].[KhachHang] ([MaKH], [TenKH], [DiaChi], [DienThoai], [TaiKhoanKH], [MatKhauKH]) VALUES (1, N'Hà Công Thái ', N'20/D36 Đường 3 tháng 2, P12, Q1', N'0903805443', N'tantrao@hcm.vnn.vn', N'congthai123')
INSERT [dbo].[KhachHang] ([MaKH], [TenKH], [DiaChi], [DienThoai], [TaiKhoanKH], [MatKhauKH]) VALUES (2, N'Đỗ Hoàng Hà Nam', N'P19.06A,Cao Ốc SCREC, P.12,Q.3, TP.HCM ', N'0903583919', N'hanam@hcm.vnn.vn', N'namcompany')
INSERT [dbo].[KhachHang] ([MaKH], [TenKH], [DiaChi], [DienThoai], [TaiKhoanKH], [MatKhauKH]) VALUES (3, N'Phan Văn Kế Hùng', N'173B Nguyễn Đình Chính, P11, Q.PN, TP.HCM', N'0937474979', N'hungphan@gmail.com', N'hung')
INSERT [dbo].[KhachHang] ([MaKH], [TenKH], [DiaChi], [DienThoai], [TaiKhoanKH], [MatKhauKH]) VALUES (4, N'Nguyễn Quốc Việt ', N'94 Vĩnh Hội, P4, Q4, TP.HCM', N'0973333069', N'viet79@gmail.com', N'viet')
INSERT [dbo].[KhachHang] ([MaKH], [TenKH], [DiaChi], [DienThoai], [TaiKhoanKH], [MatKhauKH]) VALUES (5, N'Lê Văn Phải ', N'7 Tân Hòa Đông, Đường 13, Q6 , TP.HCM', N'0903941285', N'phaivan@gmail.com', N'phaihoadongson')
INSERT [dbo].[KhachHang] ([MaKH], [TenKH], [DiaChi], [DienThoai], [TaiKhoanKH], [MatKhauKH]) VALUES (6, N'Lê Trí Tồn', N'299/3-F Lê Văn Sung, P6,Q6, TP.HCM', N'0907556553', N'Leton53@gmail.com', N'hoangtz3ip')
INSERT [dbo].[KhachHang] ([MaKH], [TenKH], [DiaChi], [DienThoai], [TaiKhoanKH], [MatKhauKH]) VALUES (7, N'Lê Thị Thu Hà', N'108F CC Ngô Gia Tự , Q10, TP.HCM', N'0903637400', N'thuha@gmail.com', N'thuha')
INSERT [dbo].[KhachHang] ([MaKH], [TenKH], [DiaChi], [DienThoai], [TaiKhoanKH], [MatKhauKH]) VALUES (8, N'Phạm Thị Thủy Hà', N'11H Nguyễn Thị Minh Khai, Q1, Q.TB, TP.HCM', N'0903807860', N'hapham@gmail.com', N'thuyha')
INSERT [dbo].[KhachHang] ([MaKH], [TenKH], [DiaChi], [DienThoai], [TaiKhoanKH], [MatKhauKH]) VALUES (9, N'Phạm Đức Trị', N'65/7 Nguyễn Minh Hoàng, P.12 , Q.TB, TP.HCM', N'0908605759', N'trian@gmail.com', N'ductri')
INSERT [dbo].[KhachHang] ([MaKH], [TenKH], [DiaChi], [DienThoai], [TaiKhoanKH], [MatKhauKH]) VALUES (10, N'Nguyễn Trọng Đức', N'2Bist Nguyễn Thị Minh Khai,Q1, TP.HCM', N'0903850070', N'pnco@hcm.vnn.vn', N'trongduc')
INSERT [dbo].[KhachHang] ([MaKH], [TenKH], [DiaChi], [DienThoai], [TaiKhoanKH], [MatKhauKH]) VALUES (11, N'Hà Quốc Khánh ', N'50 Hoàng Sa, Phường Đa Kao, Q1, TP.HCM', N'0913020676', N'haquockhanh@fpt.vn', N'quocview')
INSERT [dbo].[KhachHang] ([MaKH], [TenKH], [DiaChi], [DienThoai], [TaiKhoanKH], [MatKhauKH]) VALUES (12, N'Hà Công Thái ', N'20/D36 Đường 3 tháng 2, P12, Q1', N'0903805443', N'tantrao@hcm.vnn.vn', N'congthai@gmail.com')
INSERT [dbo].[KhachHang] ([MaKH], [TenKH], [DiaChi], [DienThoai], [TaiKhoanKH], [MatKhauKH]) VALUES (14, N'Trần Tú Trọng', N'84/2 Đường TA 18, Khu Phố 2, Phường Thới An, Quận 12, Tp HCM', N'0978594794', N'tutrong0603@gmail.com', N'tutrong_7979')
INSERT [dbo].[LoaiChoNgoi] ([MaChoNgoi], [SoChoNgoi]) VALUES (1, N'4  Chỗ')
INSERT [dbo].[LoaiChoNgoi] ([MaChoNgoi], [SoChoNgoi]) VALUES (2, N'7  Chỗ')
INSERT [dbo].[LoaiChoNgoi] ([MaChoNgoi], [SoChoNgoi]) VALUES (3, N'16  Chỗ')
INSERT [dbo].[LoaiChoNgoi] ([MaChoNgoi], [SoChoNgoi]) VALUES (4, N'29  Chỗ')
INSERT [dbo].[LoaiChoNgoi] ([MaChoNgoi], [SoChoNgoi]) VALUES (5, N'45  Chỗ')
INSERT [dbo].[LoaiChoNgoi] ([MaChoNgoi], [SoChoNgoi]) VALUES (6, N'48  Chỗ')
INSERT [dbo].[LoaiChoNgoi] ([MaChoNgoi], [SoChoNgoi]) VALUES (7, N'52  Chỗ')
INSERT [dbo].[LoaiHinhThue] ([MaLoaiHinhThue], [TenLoaiHinhThue]) VALUES (1, N'Tự Lái')
INSERT [dbo].[LoaiHinhThue] ([MaLoaiHinhThue], [TenLoaiHinhThue]) VALUES (2, N'Có Tài Riêng')
INSERT [dbo].[PhieuDatXe] ([MaPhieuDatXe], [MaKH], [NgayDinhThue], [NgayDinhTra], [TienCoc], [MaDVXe]) VALUES (1, 1, CAST(N'2019-01-01 00:00:00.000' AS DateTime), CAST(N'2019-06-01 00:00:00.000' AS DateTime), 700000, 1)
INSERT [dbo].[PhieuDatXe] ([MaPhieuDatXe], [MaKH], [NgayDinhThue], [NgayDinhTra], [TienCoc], [MaDVXe]) VALUES (2, 5, CAST(N'2019-02-03 00:00:00.000' AS DateTime), CAST(N'2019-06-02 00:00:00.000' AS DateTime), 1000000, 3)
INSERT [dbo].[PhieuDatXe] ([MaPhieuDatXe], [MaKH], [NgayDinhThue], [NgayDinhTra], [TienCoc], [MaDVXe]) VALUES (3, 2, CAST(N'2019-01-03 00:00:00.000' AS DateTime), CAST(N'2019-06-03 00:00:00.000' AS DateTime), 450000, 4)
INSERT [dbo].[PhieuDatXe] ([MaPhieuDatXe], [MaKH], [NgayDinhThue], [NgayDinhTra], [TienCoc], [MaDVXe]) VALUES (4, 3, CAST(N'2019-02-01 00:00:00.000' AS DateTime), CAST(N'2019-06-04 00:00:00.000' AS DateTime), 7000000, 1)
INSERT [dbo].[PhieuDatXe] ([MaPhieuDatXe], [MaKH], [NgayDinhThue], [NgayDinhTra], [TienCoc], [MaDVXe]) VALUES (5, 1, CAST(N'2019-02-02 00:00:00.000' AS DateTime), CAST(N'2019-06-05 00:00:00.000' AS DateTime), 1000000, 5)
INSERT [dbo].[PhieuDatXe] ([MaPhieuDatXe], [MaKH], [NgayDinhThue], [NgayDinhTra], [TienCoc], [MaDVXe]) VALUES (6, 3, CAST(N'2019-04-03 00:00:00.000' AS DateTime), CAST(N'2019-06-06 00:00:00.000' AS DateTime), 100000, 3)
INSERT [dbo].[PhieuDatXe] ([MaPhieuDatXe], [MaKH], [NgayDinhThue], [NgayDinhTra], [TienCoc], [MaDVXe]) VALUES (7, 8, CAST(N'2019-02-13 00:00:00.000' AS DateTime), CAST(N'2019-06-07 00:00:00.000' AS DateTime), 1000000, 1)
INSERT [dbo].[PhieuDatXe] ([MaPhieuDatXe], [MaKH], [NgayDinhThue], [NgayDinhTra], [TienCoc], [MaDVXe]) VALUES (8, 12, CAST(N'2019-02-09 00:00:00.000' AS DateTime), CAST(N'2019-06-08 00:00:00.000' AS DateTime), 1000000, 8)
INSERT [dbo].[PhieuDatXe] ([MaPhieuDatXe], [MaKH], [NgayDinhThue], [NgayDinhTra], [TienCoc], [MaDVXe]) VALUES (9, 3, CAST(N'2018-12-03 00:00:00.000' AS DateTime), CAST(N'2019-06-09 00:00:00.000' AS DateTime), 3000000, 12)
INSERT [dbo].[PhieuDatXe] ([MaPhieuDatXe], [MaKH], [NgayDinhThue], [NgayDinhTra], [TienCoc], [MaDVXe]) VALUES (10, 4, CAST(N'2019-02-07 00:00:00.000' AS DateTime), CAST(N'2019-06-10 00:00:00.000' AS DateTime), 5000000, 19)
INSERT [dbo].[XeDichVu] ([MaDVXe], [MaChoNgoi], [MaHang], [TenXe], [ThongTinHopSo], [NhienLieuTP], [NhienLieuNTP], [DoiXe], [BienSoXe], [MauXe], [TenHinh], [TinhTrang], [NgayCapNhat], [DongXe]) VALUES (1, 1, 1, N'YARIS 1.5G CVT', N'Hộp số: Số tự động vô cấp/ CVT', N'Trong đô thị: 7', N'Ngoài đô thị: 4.9', N'2019', N'51A - 17421', N'Vàng', N'yaris.jpg', 1, CAST(N'2019-05-01 00:00:00.000' AS DateTime), N'Yaris')
INSERT [dbo].[XeDichVu] ([MaDVXe], [MaChoNgoi], [MaHang], [TenXe], [ThongTinHopSo], [NhienLieuTP], [NhienLieuNTP], [DoiXe], [BienSoXe], [MauXe], [TenHinh], [TinhTrang], [NgayCapNhat], [DongXe]) VALUES (2, 1, 1, N'WIGO 5MT', N'Hộp số: Số sàn 5 cấp/5MT', N'Trong đô thị: 6.8', N'Ngoài đô thị: 4.10', N'2019', N'53A - 37121', N'Đỏ', N'wigo 5MT.jpg', 1, CAST(N'2019-05-01 00:00:00.000' AS DateTime), N'Wigo')
INSERT [dbo].[XeDichVu] ([MaDVXe], [MaChoNgoi], [MaHang], [TenXe], [ThongTinHopSo], [NhienLieuTP], [NhienLieuNTP], [DoiXe], [BienSoXe], [MauXe], [TenHinh], [TinhTrang], [NgayCapNhat], [DongXe]) VALUES (3, 1, 1, N'WIGO 4AT', N'Hộp số: Số tự động 4 cấp/4AT', N'Trong đô thị: 6.87', N'Ngoài đô thị: 4.11', N'2019', N'53A - 19121', N'Trắng', N'wigo 4AT.jpg', 0, CAST(N'2019-05-01 00:00:00.000' AS DateTime), N'Wigo')
INSERT [dbo].[XeDichVu] ([MaDVXe], [MaChoNgoi], [MaHang], [TenXe], [ThongTinHopSo], [NhienLieuTP], [NhienLieuNTP], [DoiXe], [BienSoXe], [MauXe], [TenHinh], [TinhTrang], [NgayCapNhat], [DongXe]) VALUES (4, 1, 1, N'VIOS 1.5E 5MT', N'Hộp số: Số sàn 5 cấp/5MT', N'Trong đô thị: 7.3', N'Ngoài đô thị: 4.12', N'2019', N'52A - 17421', N'Trắng', N'vios 1.5SE SMT.jpg', 0, CAST(N'2019-05-01 00:00:00.000' AS DateTime), N'Vios')
INSERT [dbo].[XeDichVu] ([MaDVXe], [MaChoNgoi], [MaHang], [TenXe], [ThongTinHopSo], [NhienLieuTP], [NhienLieuNTP], [DoiXe], [BienSoXe], [MauXe], [TenHinh], [TinhTrang], [NgayCapNhat], [DongXe]) VALUES (5, 1, 1, N'VIOS 1.5E CVT', N'Hộp số: Hộp số tự động vô cấp/ CVT', N'Trong đô thị: 7.1', N'Ngoài đô thị: 4.13', N'2019', N'57F - 98121', N'Xám', N'vios 1.5SE CVT.jpg', 0, CAST(N'2019-05-01 00:00:00.000' AS DateTime), N'Vios')
INSERT [dbo].[XeDichVu] ([MaDVXe], [MaChoNgoi], [MaHang], [TenXe], [ThongTinHopSo], [NhienLieuTP], [NhienLieuNTP], [DoiXe], [BienSoXe], [MauXe], [TenHinh], [TinhTrang], [NgayCapNhat], [DongXe]) VALUES (6, 1, 1, N'COROLLA ALTIS 1.8E MT', N'Hộp số: Số sàn 6 cấp/6MT', N'Trong đô thị: 10.1', N'Ngoài đô thị: 4.14', N'2019', N'56T - 12341', N'Xanh Dương', N'COROLLA ALTIS 1.8E MT.JPG', 0, CAST(N'2019-05-01 00:00:00.000' AS DateTime), N'Corolla Altis')
INSERT [dbo].[XeDichVu] ([MaDVXe], [MaChoNgoi], [MaHang], [TenXe], [ThongTinHopSo], [NhienLieuTP], [NhienLieuNTP], [DoiXe], [BienSoXe], [MauXe], [TenHinh], [TinhTrang], [NgayCapNhat], [DongXe]) VALUES (7, 1, 2, N'AUDI A3 SPORTBACK 1.4 TFSI CODE ULTRA', N'Hộp số: 7 cấp S tronic', N'Trong đô thị: 7.73', N'Ngoài đô thị: 4.15', N'2018', N'53A -12512', N'Trắng', N'AUDI A3 SPORTBACK 1.4 TFSI CODE ULTRA.JPG', 0, CAST(N'2019-05-01 00:00:00.000' AS DateTime), N'A3 SPORTBACK')
INSERT [dbo].[XeDichVu] ([MaDVXe], [MaChoNgoi], [MaHang], [TenXe], [ThongTinHopSo], [NhienLieuTP], [NhienLieuNTP], [DoiXe], [BienSoXe], [MauXe], [TenHinh], [TinhTrang], [NgayCapNhat], [DongXe]) VALUES (8, 1, 2, N'AUDI TT COUPÉ 2.0 TFSI', N'Hộp số: 6 cấp S tronic', N'Trong đô thị: 11.41', N'Ngoài đô thị: 4.16', N'2018', N'57F - 91293', N'Đen', N'AUDI TT COUPÉ.jpg', 1, CAST(N'2019-01-01 00:00:00.000' AS DateTime), N'TT COUPÉ')
INSERT [dbo].[XeDichVu] ([MaDVXe], [MaChoNgoi], [MaHang], [TenXe], [ThongTinHopSo], [NhienLieuTP], [NhienLieuNTP], [DoiXe], [BienSoXe], [MauXe], [TenHinh], [TinhTrang], [NgayCapNhat], [DongXe]) VALUES (9, 1, 2, N'AUDI A4 2.0 TFSI', N'Hộp số: 7 cấp S tronic', N'Trong đô thị: 9.81', N'Ngoài đô thị: 4.17', N'2018', N'56T - 98123', N'Đỏ', N'AUDI A4 2.0 TFSI.JPG', 0, CAST(N'2019-05-01 00:00:00.000' AS DateTime), N'A4')
INSERT [dbo].[XeDichVu] ([MaDVXe], [MaChoNgoi], [MaHang], [TenXe], [ThongTinHopSo], [NhienLieuTP], [NhienLieuNTP], [DoiXe], [BienSoXe], [MauXe], [TenHinh], [TinhTrang], [NgayCapNhat], [DongXe]) VALUES (10, 1, 2, N'AUDI AS SPORTBACK 2.0 TFSI QUATTRD', N'Hộp số: 7 cấp S tronic', N'Trong đô thị: 7.4 – 7.6', N'Ngoài đô thị: 4.18', N'2018', N'57F - 50955', N'Trắng', N'AUDI A5 SPORTBACK 2.0 TFSI QUATTRO.JPG', 0, CAST(N'2019-05-01 00:00:00.000' AS DateTime), N'A5 SPORTBACK')
INSERT [dbo].[XeDichVu] ([MaDVXe], [MaChoNgoi], [MaHang], [TenXe], [ThongTinHopSo], [NhienLieuTP], [NhienLieuNTP], [DoiXe], [BienSoXe], [MauXe], [TenHinh], [TinhTrang], [NgayCapNhat], [DongXe]) VALUES (11, 2, 2, N'AUDI Q5 2.0 TFSI QUATTRO', N'Hộp số: 7 cấp S tronic', N'Trong đô thị: 8.3', N'Ngoài đô thị: 4.19', N'2018', N'56T - 90131', N'Xám', N'AUDI Q5 2.0 TFSI QUATTRO.JPG', 1, CAST(N'2019-05-10 00:00:00.000' AS DateTime), N'Qs')
INSERT [dbo].[XeDichVu] ([MaDVXe], [MaChoNgoi], [MaHang], [TenXe], [ThongTinHopSo], [NhienLieuTP], [NhienLieuNTP], [DoiXe], [BienSoXe], [MauXe], [TenHinh], [TinhTrang], [NgayCapNhat], [DongXe]) VALUES (12, 2, 2, N'AUDI Q7 2.0 TFSI QUATTRO', N'Hộp số: 7 cấp S tronic', N'Trong đô thị: 8.9', N'Ngoài đô thị: 4.20', N'2018', N'57F - 39885', N'Đen', N'AUDI Q7 2.0 TFSI QUATTRO.JPG', 0, CAST(N'2019-05-10 00:00:00.000' AS DateTime), N'Q7')
INSERT [dbo].[XeDichVu] ([MaDVXe], [MaChoNgoi], [MaHang], [TenXe], [ThongTinHopSo], [NhienLieuTP], [NhienLieuNTP], [DoiXe], [BienSoXe], [MauXe], [TenHinh], [TinhTrang], [NgayCapNhat], [DongXe]) VALUES (13, 2, 1, N'TOYOTA INNOVA  2.0E 2017', N'Hộp số:Số sàn 5 cấp hoặc tự động 6 cấp', N'Trong đô thị: 8.10', N'Ngoài đô thị: 4.21', N'2017', N'53A - 98251', N'Xám', N'TOYOTA INNOVA  2.0E 2017.jpg', 0, CAST(N'2019-05-25 00:00:00.000' AS DateTime), N'Innova')
INSERT [dbo].[XeDichVu] ([MaDVXe], [MaChoNgoi], [MaHang], [TenXe], [ThongTinHopSo], [NhienLieuTP], [NhienLieuNTP], [DoiXe], [BienSoXe], [MauXe], [TenHinh], [TinhTrang], [NgayCapNhat], [DongXe]) VALUES (14, 2, 1, N'TOYOTA FORTUNER 2016', N'Hộp số: sàn 6 cấp ', N'Trong đô thị: 8.11', N'Ngoài đô thị: 4.22', N'2016', N'56T - 98123', N'Đen', N'TOYOTA FORTUNER 2016.jpg', 0, CAST(N'2019-05-25 00:00:00.000' AS DateTime), N'Fortuner')
INSERT [dbo].[XeDichVu] ([MaDVXe], [MaChoNgoi], [MaHang], [TenXe], [ThongTinHopSo], [NhienLieuTP], [NhienLieuNTP], [DoiXe], [BienSoXe], [MauXe], [TenHinh], [TinhTrang], [NgayCapNhat], [DongXe]) VALUES (15, 2, 3, N'MAZDA CX-5 2015', N'Hộp số: tự động 6 cấp', N'Trong đô thị: 8.12', N'Ngoài đô thị: 4.23', N'2015', N'59B - 89123', N'Trắng', N'MAZDA CX-5 2015.jpg', 0, CAST(N'2019-05-25 00:00:00.000' AS DateTime), N'CX-5')
INSERT [dbo].[XeDichVu] ([MaDVXe], [MaChoNgoi], [MaHang], [TenXe], [ThongTinHopSo], [NhienLieuTP], [NhienLieuNTP], [DoiXe], [BienSoXe], [MauXe], [TenHinh], [TinhTrang], [NgayCapNhat], [DongXe]) VALUES (16, 2, 4, N'Honda CR-V 2016', N'Hộp số: tự động 5 cấp', N'Trong đô thị: 8.13', N'Ngoài đô thị: 4.24', N'2016', N'57F - 98341', N'Trắng', N'Honda CR-V 2016.jpg', 0, CAST(N'2019-05-25 00:00:00.000' AS DateTime), N'CR-V')
INSERT [dbo].[XeDichVu] ([MaDVXe], [MaChoNgoi], [MaHang], [TenXe], [ThongTinHopSo], [NhienLieuTP], [NhienLieuNTP], [DoiXe], [BienSoXe], [MauXe], [TenHinh], [TinhTrang], [NgayCapNhat], [DongXe]) VALUES (17, 2, 5, N'HYUNDAI SANTAFE 2018', N'Hộp số: tự động 6 cấp', N'Trong đô thị: 8.14', N'Ngoài đô thị: 4.25', N'2018', N'66S - 19823', N'Nâu', N'HYUNDAI SANTAFE 2018.jpg', 0, CAST(N'2019-05-25 00:00:00.000' AS DateTime), N'Antafe')
INSERT [dbo].[XeDichVu] ([MaDVXe], [MaChoNgoi], [MaHang], [TenXe], [ThongTinHopSo], [NhienLieuTP], [NhienLieuNTP], [DoiXe], [BienSoXe], [MauXe], [TenHinh], [TinhTrang], [NgayCapNhat], [DongXe]) VALUES (18, 2, 6, N'CHEVROLET TRAILBLAZER 2018', N'Hộp số: tự động 6 cấp', N'Trong đô thị: 8.15', N'Ngoài đô thị: 4.26', N'2018', N'53A - 23457', N'Trắng', N'CHEVROLET TRAILBLAZER 2018.jpg', 1, CAST(N'2019-05-25 00:00:00.000' AS DateTime), N'TRAILBLAZER')
INSERT [dbo].[XeDichVu] ([MaDVXe], [MaChoNgoi], [MaHang], [TenXe], [ThongTinHopSo], [NhienLieuTP], [NhienLieuNTP], [DoiXe], [BienSoXe], [MauXe], [TenHinh], [TinhTrang], [NgayCapNhat], [DongXe]) VALUES (19, 3, 4, N'FORD TRANSIT MID 2018', N'Hộp Số: Hộp số sàn gồm 6 cấp số  ', N'Trong đô thị: 8.16', N'Ngoài đô thị: 4.27', N'2018', N'66S - 98123', N'Xám', N'FORD TRANSIT MID 2018.JPG', 0, CAST(N'2018-05-25 00:00:00.000' AS DateTime), N'TRAILBLAZER')
INSERT [dbo].[XeDichVu] ([MaDVXe], [MaChoNgoi], [MaHang], [TenXe], [ThongTinHopSo], [NhienLieuTP], [NhienLieuNTP], [DoiXe], [BienSoXe], [MauXe], [TenHinh], [TinhTrang], [NgayCapNhat], [DongXe]) VALUES (20, 3, 5, N'Hyundai Solati 2018', N'Hộp Số: Số Sàn Dymos, vỏ nhôm (06 số tiến + 01 số lùi)', N'Trong đô thị: 8.17', N'Ngoài đô thị: 4.28', N'2018', N'59B - 98512', N'Xám', N'Hyundai Solati 2018.JPG', 0, CAST(N'2019-05-25 00:00:00.000' AS DateTime), N'Solati')
INSERT [dbo].[XeDichVu] ([MaDVXe], [MaChoNgoi], [MaHang], [TenXe], [ThongTinHopSo], [NhienLieuTP], [NhienLieuNTP], [DoiXe], [BienSoXe], [MauXe], [TenHinh], [TinhTrang], [NgayCapNhat], [DongXe]) VALUES (21, 3, 7, N'Mercedes Sprinter 2012', N'Hộp Số: Số sàn 5 cấp/ Manual 5-speed', N'Trong đô thị: 8.18', N'Ngoài đô thị: 4.29', N'2018', N'66S - 98123', N'Trắng', N'Mercedes Sprinter 2012.jpg', 0, CAST(N'2019-01-01 00:00:00.000' AS DateTime), N'Sprinter')
INSERT [dbo].[XeDichVu] ([MaDVXe], [MaChoNgoi], [MaHang], [TenXe], [ThongTinHopSo], [NhienLieuTP], [NhienLieuNTP], [DoiXe], [BienSoXe], [MauXe], [TenHinh], [TinhTrang], [NgayCapNhat], [DongXe]) VALUES (22, 3, 1, N'Toyota Hiace 2019', N'Hộp Số: Số Tay', N'Trong đô thị: 8.19', N'Ngoài đô thị: 4.30', N'2018', N'53A - 87643', N'Xám', N'Toyota Hiace 2019.jpg', 0, CAST(N'2019-02-02 00:00:00.000' AS DateTime), N'Sprinter')
INSERT [dbo].[XeDichVu] ([MaDVXe], [MaChoNgoi], [MaHang], [TenXe], [ThongTinHopSo], [NhienLieuTP], [NhienLieuNTP], [DoiXe], [BienSoXe], [MauXe], [TenHinh], [TinhTrang], [NgayCapNhat], [DongXe]) VALUES (23, 3, 8, N'Isuzu Samco Felix Limousine', N'Hộp Số: Số Sàn (6 số tiến, 1 số lùi)', N'Trong đô thị: 8.20', N'Ngoài đô thị: 4.31', N'2018', N'57F - 12308', N'Nâu', N'Isuzu Samco Felix Limousine.jpg', 0, CAST(N'2019-04-04 00:00:00.000' AS DateTime), N'Felix Limousine')
INSERT [dbo].[XeDichVu] ([MaDVXe], [MaChoNgoi], [MaHang], [TenXe], [ThongTinHopSo], [NhienLieuTP], [NhienLieuNTP], [DoiXe], [BienSoXe], [MauXe], [TenHinh], [TinhTrang], [NgayCapNhat], [DongXe]) VALUES (24, 4, 9, N'Dcar Fuso Rosa Limousine', N'Hộp Số: Số Sàn (5 số tiến và 1 số lùi, đồng tốc toàn phần)', N'Trong đô thị: 8.21', N'Ngoài đô thị: 4.32', N'2018', N'66S - 17233', N'Đỏ', N'Dcar Fuso Rosa Limousine.jpg', 0, CAST(N'2019-02-02 00:00:00.000' AS DateTime), N'Fuso Rosa Limousine')
INSERT [dbo].[XeDichVu] ([MaDVXe], [MaChoNgoi], [MaHang], [TenXe], [ThongTinHopSo], [NhienLieuTP], [NhienLieuNTP], [DoiXe], [BienSoXe], [MauXe], [TenHinh], [TinhTrang], [NgayCapNhat], [DongXe]) VALUES (25, 4, 10, N'JAC 2016', N'Hộp số: Số sàn 6 cấp/6MT', N'Trong đô thị: 8.22', N'Ngoài đô thị: 4.33', N'2016', N'59B - 29354', N'Xám', N'JAC 2016.jpg', 1, CAST(N'2019-02-02 00:00:00.000' AS DateTime), N'HK6730K')
INSERT [dbo].[XeDichVu] ([MaDVXe], [MaChoNgoi], [MaHang], [TenXe], [ThongTinHopSo], [NhienLieuTP], [NhienLieuNTP], [DoiXe], [BienSoXe], [MauXe], [TenHinh], [TinhTrang], [NgayCapNhat], [DongXe]) VALUES (26, 4, 5, N'Hyundai County', N'Hộp số: Số sàn 6 cấp/6MT', N'Trong đô thị: 8.23', N'Ngoài đô thị: 4.34', N'2015', N'66S - 19832', N'Vàng Đất', N'Hyundai County.jpg', 0, CAST(N'2019-01-01 00:00:00.000' AS DateTime), N'County')
INSERT [dbo].[XeDichVu] ([MaDVXe], [MaChoNgoi], [MaHang], [TenXe], [ThongTinHopSo], [NhienLieuTP], [NhienLieuNTP], [DoiXe], [BienSoXe], [MauXe], [TenHinh], [TinhTrang], [NgayCapNhat], [DongXe]) VALUES (27, 4, 1, N'Toyota Coaster', N'Hộp số: Số sàn 6 cấp/6MT', N'Trong đô thị: 8.24', N'Ngoài đô thị: 4.35', N'2014', N'66S - 98132', N'Trắng', N'Toyota Coaster.jpg', 1, CAST(N'2018-01-01 00:00:00.000' AS DateTime), N'Coaster')
INSERT [dbo].[XeDichVu] ([MaDVXe], [MaChoNgoi], [MaHang], [TenXe], [ThongTinHopSo], [NhienLieuTP], [NhienLieuNTP], [DoiXe], [BienSoXe], [MauXe], [TenHinh], [TinhTrang], [NgayCapNhat], [DongXe]) VALUES (28, 4, 11, N'Lishan', N'Hộp số: Số sàn 6 cấp/6MT', N'Trong đô thị: 8.25', N'Ngoài đô thị: 4.36', N'2017', N'66A - 81231  ', N'Vàng nhẹ', N'Lishan.jpg', 0, CAST(N'2019-02-01 00:00:00.000' AS DateTime), N'Lishan')
INSERT [dbo].[XeDichVu] ([MaDVXe], [MaChoNgoi], [MaHang], [TenXe], [ThongTinHopSo], [NhienLieuTP], [NhienLieuNTP], [DoiXe], [BienSoXe], [MauXe], [TenHinh], [TinhTrang], [NgayCapNhat], [DongXe]) VALUES (29, 4, 8, N'Isuzu Samco', N'Hộp số: Số sàn 6 cấp/6MT', N'Trong đô thị: 8.26', N'Ngoài đô thị: 4.37', N'2018', N'59B - 98235', N'Vàng Trắng', N'Isuzu Samco.jpg', 1, CAST(N'2019-02-02 00:00:00.000' AS DateTime), N'Samco')
INSERT [dbo].[XeDichVu] ([MaDVXe], [MaChoNgoi], [MaHang], [TenXe], [ThongTinHopSo], [NhienLieuTP], [NhienLieuNTP], [DoiXe], [BienSoXe], [MauXe], [TenHinh], [TinhTrang], [NgayCapNhat], [DongXe]) VALUES (30, 4, 12, N'SAMCO FELIX', N'Hộp số: Số sàn 7 ', N'Trong đô thị: 8.27', N'Ngoài đô thị: 4.38', N'2018', N'66A - 13123', N'Đỏ Cam', N'SAMCO FELIX.jpg', 1, CAST(N'2019-02-02 00:00:00.000' AS DateTime), N'FELIX')
INSERT [dbo].[XeDichVu] ([MaDVXe], [MaChoNgoi], [MaHang], [TenXe], [ThongTinHopSo], [NhienLieuTP], [NhienLieuNTP], [DoiXe], [BienSoXe], [MauXe], [TenHinh], [TinhTrang], [NgayCapNhat], [DongXe]) VALUES (31, 5, 8, N'Isuzu Samco', N'Hộp số: Số sàn 7 ', N'Trong đô thị: 8.28', N'Ngoài đô thị: 4.39', N'2017', N'66A - 12981', N'Xanh', N'Isuzu Samco1.jpg', 1, CAST(N'2018-06-14 00:00:00.000' AS DateTime), N'Samco')
INSERT [dbo].[XeDichVu] ([MaDVXe], [MaChoNgoi], [MaHang], [TenXe], [ThongTinHopSo], [NhienLieuTP], [NhienLieuNTP], [DoiXe], [BienSoXe], [MauXe], [TenHinh], [TinhTrang], [NgayCapNhat], [DongXe]) VALUES (32, 6, 5, N'Hyundai  Universe  Haeco Noble', N'Hộp số: số sàn', N'Trong đô thị: 8.29', N'Ngoài đô thị: 4.40', N'2015', N'66A - 98123', N'Xám', N'Hyundai  Universe.jpg', 0, CAST(N'2018-02-02 00:00:00.000' AS DateTime), N'County')
INSERT [dbo].[XeDichVu] ([MaDVXe], [MaChoNgoi], [MaHang], [TenXe], [ThongTinHopSo], [NhienLieuTP], [NhienLieuNTP], [DoiXe], [BienSoXe], [MauXe], [TenHinh], [TinhTrang], [NgayCapNhat], [DongXe]) VALUES (33, 7, 5, N'AERO TOWN', N'Hộp số: số sàn', N'Trong đô thị: 8.30', N'Ngoài đô thị: 4.41', N'2015', N'66A - 09123', N'Xam', N'AERO TOWN.jpg', 1, CAST(N'2014-03-03 00:00:00.000' AS DateTime), N'AERO TOWN')
INSERT [dbo].[XeDichVu] ([MaDVXe], [MaChoNgoi], [MaHang], [TenXe], [ThongTinHopSo], [NhienLieuTP], [NhienLieuNTP], [DoiXe], [BienSoXe], [MauXe], [TenHinh], [TinhTrang], [NgayCapNhat], [DongXe]) VALUES (34, 7, 13, N'THACO', N'Hộp số: số sàn', N'Trong đô thị: 8.31', N'Ngoài đô thị: 4.42', N'2019', N'66A - 18231', N'Trắng', N'THACO.jpg', 1, CAST(N'2018-01-01 00:00:00.000' AS DateTime), N'TB 120 SW')
INSERT [dbo].[XeDichVu] ([MaDVXe], [MaChoNgoi], [MaHang], [TenXe], [ThongTinHopSo], [NhienLieuTP], [NhienLieuNTP], [DoiXe], [BienSoXe], [MauXe], [TenHinh], [TinhTrang], [NgayCapNhat], [DongXe]) VALUES (35, 6, 14, N'SCANIA', N'Hộp số: số sàn', N'Trong đô thị: 8.32', N'Ngoài đô thị: 4.43', N'2014', N'66A - 19832', N'Trắng', N'SCANIA.jpg', 0, CAST(N'2019-01-01 00:00:00.000' AS DateTime), N'Scania')
INSERT [dbo].[XeDichVu] ([MaDVXe], [MaChoNgoi], [MaHang], [TenXe], [ThongTinHopSo], [NhienLieuTP], [NhienLieuNTP], [DoiXe], [BienSoXe], [MauXe], [TenHinh], [TinhTrang], [NgayCapNhat], [DongXe]) VALUES (36, 6, 5, N'HYUNDAI SAMCO PRIMAS', N'Hộp số: 6 số sàn', N'Trong đô thị: 8.33', N'Ngoài đô thị: 4.44', N'2016', N'66A - 16312', N'Cam Trắng', N'HYUNDAI SAMCO PRIMAS.jpg', 1, CAST(N'2019-01-01 00:00:00.000' AS DateTime), N'PRIMAS')
ALTER TABLE [dbo].[BangGia]  WITH CHECK ADD  CONSTRAINT [FK__BangGia__MaHinhT__24927208] FOREIGN KEY([MaHinhThucThue])
REFERENCES [dbo].[HinhThucThue] ([MaHinhThucThue])
GO
ALTER TABLE [dbo].[BangGia] CHECK CONSTRAINT [FK__BangGia__MaHinhT__24927208]
GO
ALTER TABLE [dbo].[BangGia]  WITH CHECK ADD  CONSTRAINT [FK__BangGia__MaLoaiH__239E4DCF] FOREIGN KEY([MaLoaiHinhThue])
REFERENCES [dbo].[LoaiHinhThue] ([MaLoaiHinhThue])
GO
ALTER TABLE [dbo].[BangGia] CHECK CONSTRAINT [FK__BangGia__MaLoaiH__239E4DCF]
GO
ALTER TABLE [dbo].[BangGia]  WITH CHECK ADD  CONSTRAINT [FK_BangGia_XeDichVu] FOREIGN KEY([MaDVXe])
REFERENCES [dbo].[XeDichVu] ([MaDVXe])
GO
ALTER TABLE [dbo].[BangGia] CHECK CONSTRAINT [FK_BangGia_XeDichVu]
GO
ALTER TABLE [dbo].[HoaDon]  WITH CHECK ADD  CONSTRAINT [FK_HoaDon_PhieuDatXe] FOREIGN KEY([MaPhieuDatXe])
REFERENCES [dbo].[PhieuDatXe] ([MaPhieuDatXe])
GO
ALTER TABLE [dbo].[HoaDon] CHECK CONSTRAINT [FK_HoaDon_PhieuDatXe]
GO
ALTER TABLE [dbo].[PhieuDatXe]  WITH CHECK ADD  CONSTRAINT [FK__PhieuDatXe__MaKH__267ABA7A] FOREIGN KEY([MaKH])
REFERENCES [dbo].[KhachHang] ([MaKH])
GO
ALTER TABLE [dbo].[PhieuDatXe] CHECK CONSTRAINT [FK__PhieuDatXe__MaKH__267ABA7A]
GO
ALTER TABLE [dbo].[PhieuDatXe]  WITH CHECK ADD  CONSTRAINT [FK_PhieuDatXe_XeDichVu] FOREIGN KEY([MaDVXe])
REFERENCES [dbo].[XeDichVu] ([MaDVXe])
GO
ALTER TABLE [dbo].[PhieuDatXe] CHECK CONSTRAINT [FK_PhieuDatXe_XeDichVu]
GO
ALTER TABLE [dbo].[XeDichVu]  WITH CHECK ADD  CONSTRAINT [FK__XeDichVu__MaChoN__22AA2996] FOREIGN KEY([MaChoNgoi])
REFERENCES [dbo].[LoaiChoNgoi] ([MaChoNgoi])
GO
ALTER TABLE [dbo].[XeDichVu] CHECK CONSTRAINT [FK__XeDichVu__MaChoN__22AA2996]
GO
ALTER TABLE [dbo].[XeDichVu]  WITH CHECK ADD  CONSTRAINT [FK__XeDichVu__MaHang__276EDEB3] FOREIGN KEY([MaHang])
REFERENCES [dbo].[HangXe] ([MaHang])
GO
ALTER TABLE [dbo].[XeDichVu] CHECK CONSTRAINT [FK__XeDichVu__MaHang__276EDEB3]
GO
USE [master]
GO
ALTER DATABASE [DB_ThueOto1] SET  READ_WRITE 
GO
