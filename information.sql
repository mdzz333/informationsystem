USE [master]
GO
/****** Object:  Database [information]    Script Date: 10/10/2018 09:23:11 ******/
CREATE DATABASE [information] ON  PRIMARY 
( NAME = N'information', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL10_50.MSSQLSERVER\MSSQL\DATA\information.mdf' , SIZE = 3072KB , MAXSIZE = UNLIMITED, FILEGROWTH = 1024KB )
 LOG ON 
( NAME = N'information_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL10_50.MSSQLSERVER\MSSQL\DATA\information_log.ldf' , SIZE = 1024KB , MAXSIZE = 2048GB , FILEGROWTH = 10%)
GO
ALTER DATABASE [information] SET COMPATIBILITY_LEVEL = 100
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [information].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [information] SET ANSI_NULL_DEFAULT OFF
GO
ALTER DATABASE [information] SET ANSI_NULLS OFF
GO
ALTER DATABASE [information] SET ANSI_PADDING OFF
GO
ALTER DATABASE [information] SET ANSI_WARNINGS OFF
GO
ALTER DATABASE [information] SET ARITHABORT OFF
GO
ALTER DATABASE [information] SET AUTO_CLOSE OFF
GO
ALTER DATABASE [information] SET AUTO_CREATE_STATISTICS ON
GO
ALTER DATABASE [information] SET AUTO_SHRINK OFF
GO
ALTER DATABASE [information] SET AUTO_UPDATE_STATISTICS ON
GO
ALTER DATABASE [information] SET CURSOR_CLOSE_ON_COMMIT OFF
GO
ALTER DATABASE [information] SET CURSOR_DEFAULT  GLOBAL
GO
ALTER DATABASE [information] SET CONCAT_NULL_YIELDS_NULL OFF
GO
ALTER DATABASE [information] SET NUMERIC_ROUNDABORT OFF
GO
ALTER DATABASE [information] SET QUOTED_IDENTIFIER OFF
GO
ALTER DATABASE [information] SET RECURSIVE_TRIGGERS OFF
GO
ALTER DATABASE [information] SET  DISABLE_BROKER
GO
ALTER DATABASE [information] SET AUTO_UPDATE_STATISTICS_ASYNC OFF
GO
ALTER DATABASE [information] SET DATE_CORRELATION_OPTIMIZATION OFF
GO
ALTER DATABASE [information] SET TRUSTWORTHY OFF
GO
ALTER DATABASE [information] SET ALLOW_SNAPSHOT_ISOLATION OFF
GO
ALTER DATABASE [information] SET PARAMETERIZATION SIMPLE
GO
ALTER DATABASE [information] SET READ_COMMITTED_SNAPSHOT OFF
GO
ALTER DATABASE [information] SET HONOR_BROKER_PRIORITY OFF
GO
ALTER DATABASE [information] SET  READ_WRITE
GO
ALTER DATABASE [information] SET RECOVERY FULL
GO
ALTER DATABASE [information] SET  MULTI_USER
GO
ALTER DATABASE [information] SET PAGE_VERIFY CHECKSUM
GO
ALTER DATABASE [information] SET DB_CHAINING OFF
GO
EXEC sys.sp_db_vardecimal_storage_format N'information', N'ON'
GO
USE [information]
GO
/****** Object:  Table [dbo].[xinxi]    Script Date: 10/10/2018 09:23:11 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[xinxi](
	[username] [varchar](50) NOT NULL,
	[password] [varchar](50) NOT NULL,
	[flag] [int] NOT NULL,
	[SID] [int] NOT NULL,
 CONSTRAINT [PK_xinxi] PRIMARY KEY CLUSTERED 
(
	[SID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[teainfo]    Script Date: 10/10/2018 09:23:11 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[teainfo](
	[Tid] [varchar](50) NOT NULL,
	[Tname] [varchar](50) NOT NULL,
	[sex] [varchar](50) NOT NULL,
	[age] [int] NOT NULL,
 CONSTRAINT [PK_teainfo] PRIMARY KEY CLUSTERED 
(
	[Tid] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[teacher]    Script Date: 10/10/2018 09:23:11 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[teacher](
	[Tno] [varchar](50) NOT NULL,
	[password] [varchar](50) NOT NULL,
	[flag] [int] NOT NULL,
 CONSTRAINT [PK_teacher] PRIMARY KEY CLUSTERED 
(
	[Tno] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[stuinfo]    Script Date: 10/10/2018 09:23:11 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[stuinfo](
	[Sid] [varchar](50) NOT NULL,
	[Sname] [varchar](50) NOT NULL,
	[sex] [nchar](10) NOT NULL,
	[age] [int] NOT NULL,
	[major] [varchar](50) NULL,
 CONSTRAINT [PK_stuinfo] PRIMARY KEY CLUSTERED 
(
	[Sid] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[student]    Script Date: 10/10/2018 09:23:11 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[student](
	[Sno] [varchar](50) NOT NULL,
	[password] [varchar](50) NOT NULL,
	[flag] [int] NOT NULL,
 CONSTRAINT [PK_student_1] PRIMARY KEY CLUSTERED 
(
	[Sno] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[course]    Script Date: 10/10/2018 09:23:11 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[course](
	[Cno] [int] IDENTITY(11001,1) NOT NULL,
	[cname] [varchar](50) NOT NULL,
	[croom] [varchar](50) NOT NULL,
	[ctime] [varchar](50) NOT NULL,
	[cdepart] [varchar](50) NOT NULL,
	[credit] [int] NULL,
 CONSTRAINT [PK_course] PRIMARY KEY CLUSTERED 
(
	[Cno] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[admin]    Script Date: 10/10/2018 09:23:11 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[admin](
	[username] [varchar](50) NOT NULL,
	[password] [varchar](50) NOT NULL
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Default [DF__xinxi__flag__7F60ED59]    Script Date: 10/10/2018 09:23:11 ******/
ALTER TABLE [dbo].[xinxi] ADD  CONSTRAINT [DF__xinxi__flag__7F60ED59]  DEFAULT ((1)) FOR [flag]
GO
/****** Object:  Default [DF_teacher_flag]    Script Date: 10/10/2018 09:23:11 ******/
ALTER TABLE [dbo].[teacher] ADD  CONSTRAINT [DF_teacher_flag]  DEFAULT ((1)) FOR [flag]
GO
/****** Object:  Default [DF_student_flag]    Script Date: 10/10/2018 09:23:11 ******/
ALTER TABLE [dbo].[student] ADD  CONSTRAINT [DF_student_flag]  DEFAULT ((1)) FOR [flag]
GO
