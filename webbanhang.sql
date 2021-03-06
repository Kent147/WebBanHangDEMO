USE [master]
GO
/****** Object:  Database [webbanhang]    Script Date: 25/06/2020 09:05:25 ******/
CREATE DATABASE [webbanhang]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'webbanhang', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL14.MSSQLSERVER\MSSQL\DATA\webbanhang.mdf' , SIZE = 8192KB , MAXSIZE = UNLIMITED, FILEGROWTH = 65536KB )
 LOG ON 
( NAME = N'webbanhang_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL14.MSSQLSERVER\MSSQL\DATA\webbanhang_log.ldf' , SIZE = 8192KB , MAXSIZE = 2048GB , FILEGROWTH = 65536KB )
GO
ALTER DATABASE [webbanhang] SET COMPATIBILITY_LEVEL = 140
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [webbanhang].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [webbanhang] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [webbanhang] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [webbanhang] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [webbanhang] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [webbanhang] SET ARITHABORT OFF 
GO
ALTER DATABASE [webbanhang] SET AUTO_CLOSE OFF 
GO
ALTER DATABASE [webbanhang] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [webbanhang] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [webbanhang] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [webbanhang] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [webbanhang] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [webbanhang] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [webbanhang] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [webbanhang] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [webbanhang] SET  ENABLE_BROKER 
GO
ALTER DATABASE [webbanhang] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [webbanhang] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [webbanhang] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [webbanhang] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [webbanhang] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [webbanhang] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [webbanhang] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [webbanhang] SET RECOVERY FULL 
GO
ALTER DATABASE [webbanhang] SET  MULTI_USER 
GO
ALTER DATABASE [webbanhang] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [webbanhang] SET DB_CHAINING OFF 
GO
ALTER DATABASE [webbanhang] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [webbanhang] SET TARGET_RECOVERY_TIME = 60 SECONDS 
GO
ALTER DATABASE [webbanhang] SET DELAYED_DURABILITY = DISABLED 
GO
EXEC sys.sp_db_vardecimal_storage_format N'webbanhang', N'ON'
GO
ALTER DATABASE [webbanhang] SET QUERY_STORE = OFF
GO
USE [webbanhang]
GO
/****** Object:  User [khang]    Script Date: 25/06/2020 09:05:25 ******/
CREATE USER [khang] FOR LOGIN [khang] WITH DEFAULT_SCHEMA=[dbo]
GO
/****** Object:  Table [dbo].[orderdetails]    Script Date: 25/06/2020 09:05:25 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[orderdetails](
	[id_orders] [varchar](50) NULL,
	[id_pd] [varchar](50) NULL,
	[amount] [int] NOT NULL,
	[cost_pd] [float] NOT NULL,
	[total] [float] NOT NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[orders]    Script Date: 25/06/2020 09:05:25 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[orders](
	[id_orders] [varchar](50) NOT NULL,
	[id_user] [int] NOT NULL,
	[date_order] [date] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[id_orders] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[products]    Script Date: 25/06/2020 09:05:25 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[products](
	[id_pd] [varchar](50) NOT NULL,
	[name_pd] [nvarchar](100) NOT NULL,
	[cost_pd] [float] NOT NULL,
	[img] [nvarchar](100) NULL,
	[info] [nvarchar](1000) NULL,
PRIMARY KEY CLUSTERED 
(
	[id_pd] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[userdetails]    Script Date: 25/06/2020 09:05:25 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[userdetails](
	[id_user] [int] IDENTITY(1,1) NOT NULL,
	[username] [varchar](50) NULL,
	[user_fullname] [nvarchar](50) NOT NULL,
	[user_img] [varchar](100) NULL,
	[user_email] [varchar](50) NULL,
	[user_phone] [varchar](10) NOT NULL,
	[user_address] [nvarchar](100) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[id_user] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[users]    Script Date: 25/06/2020 09:05:25 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[users](
	[username] [varchar](50) NOT NULL,
	[password] [varchar](50) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[username] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
INSERT [dbo].[users] ([username], [password]) VALUES (N'admin', N'admin')
ALTER TABLE [dbo].[orderdetails]  WITH CHECK ADD FOREIGN KEY([id_orders])
REFERENCES [dbo].[orders] ([id_orders])
GO
ALTER TABLE [dbo].[orderdetails]  WITH CHECK ADD FOREIGN KEY([id_pd])
REFERENCES [dbo].[products] ([id_pd])
GO
ALTER TABLE [dbo].[orders]  WITH CHECK ADD FOREIGN KEY([id_user])
REFERENCES [dbo].[userdetails] ([id_user])
GO
ALTER TABLE [dbo].[userdetails]  WITH CHECK ADD FOREIGN KEY([username])
REFERENCES [dbo].[users] ([username])
GO
USE [master]
GO
ALTER DATABASE [webbanhang] SET  READ_WRITE 
GO
