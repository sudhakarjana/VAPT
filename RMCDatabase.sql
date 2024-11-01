USE [master]
GO
/****** Object:  Database [RMCDatabase]    Script Date: 29-Oct-2024 05:07:27 PM ******/
CREATE DATABASE [RMCDatabase]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'RMCDatabase', FILENAME = N'E:\Database\RMCDatabase.mdf' , SIZE = 78848KB , MAXSIZE = UNLIMITED, FILEGROWTH = 1024KB )
 LOG ON 
( NAME = N'RMCDatabase_log', FILENAME = N'E:\Database\RMCDatabase_log.ldf' , SIZE = 3456KB , MAXSIZE = 2048GB , FILEGROWTH = 10%)
GO
ALTER DATABASE [RMCDatabase] SET COMPATIBILITY_LEVEL = 120
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [RMCDatabase].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [RMCDatabase] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [RMCDatabase] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [RMCDatabase] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [RMCDatabase] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [RMCDatabase] SET ARITHABORT OFF 
GO
ALTER DATABASE [RMCDatabase] SET AUTO_CLOSE OFF 
GO
ALTER DATABASE [RMCDatabase] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [RMCDatabase] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [RMCDatabase] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [RMCDatabase] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [RMCDatabase] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [RMCDatabase] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [RMCDatabase] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [RMCDatabase] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [RMCDatabase] SET  DISABLE_BROKER 
GO
ALTER DATABASE [RMCDatabase] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [RMCDatabase] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [RMCDatabase] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [RMCDatabase] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [RMCDatabase] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [RMCDatabase] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [RMCDatabase] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [RMCDatabase] SET RECOVERY SIMPLE 
GO
ALTER DATABASE [RMCDatabase] SET  MULTI_USER 
GO
ALTER DATABASE [RMCDatabase] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [RMCDatabase] SET DB_CHAINING OFF 
GO
ALTER DATABASE [RMCDatabase] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [RMCDatabase] SET TARGET_RECOVERY_TIME = 0 SECONDS 
GO
ALTER DATABASE [RMCDatabase] SET DELAYED_DURABILITY = DISABLED 
GO
USE [RMCDatabase]
GO
/****** Object:  Table [dbo].[costing]    Script Date: 29-Oct-2024 05:07:27 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[costing](
	[costingId] [int] IDENTITY(1,1) NOT NULL,
	[ProjectSubmitedDate] [datetime] NULL,
	[ProjectCode] [varchar](500) NULL,
	[FGQty] [varchar](500) NULL,
	[Material] [varchar](500) NULL,
	[CAS] [varchar](500) NULL,
	[Qty] [varchar](500) NULL,
	[UoM] [varchar](500) NULL,
	[Currency] [varchar](500) NULL,
	[UnitPrice] [varchar](500) NULL,
	[LeadTime] [varchar](500) NULL,
	[IncoTerms] [varchar](500) NULL,
	[Supplier] [varchar](500) NULL,
	[Manufacturer] [varchar](500) NULL,
	[CountryOrState] [varchar](500) NULL,
	[ManuffacturingTimelines] [varchar](500) NULL,
	[ContactNumber] [varchar](500) NULL,
	[MailId] [varchar](500) NULL,
	[Remarks] [varchar](1000) NULL,
	[Website] [varchar](500) NULL,
	[DateCreated] [datetime] NOT NULL,
	[TotalRMC] [varchar](100) NULL,
	[BusinessUnit] [varchar](100) NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[costSheetFiles]    Script Date: 29-Oct-2024 05:07:27 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[costSheetFiles](
	[Fileid] [int] IDENTITY(1,1) NOT NULL,
	[ClientName] [varchar](155) NOT NULL,
	[ProposalCode] [varchar](55) NOT NULL,
	[USDExchangeRate] [varchar](55) NOT NULL,
	[CustomerCompoundCode] [varchar](155) NOT NULL,
	[GMPorNonGMP] [varchar](55) NOT NULL,
	[BusinessUnit] [varchar](55) NOT NULL,
	[FileName] [varchar](255) NOT NULL,
	[ReloadOrNew] [varchar](255) NOT NULL,
	[SubmittedDate] [date] NOT NULL,
	[ReceievedDate] [date] NOT NULL,
	[createdDate] [datetime] NULL,
PRIMARY KEY CLUSTERED 
(
	[Fileid] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[costSheets]    Script Date: 29-Oct-2024 05:07:27 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[costSheets](
	[costSheet_id] [int] IDENTITY(1,1) NOT NULL,
	[ClientName] [varchar](50) NOT NULL,
	[ProposalCode] [varchar](50) NOT NULL,
	[USDExchangeRate] [varchar](50) NOT NULL,
	[CustomerCompoundCode] [varchar](50) NOT NULL,
	[GMPorNonGMP] [varchar](50) NOT NULL,
	[BusinessUnit] [varchar](50) NOT NULL,
	[SubmittedDate] [datetime] NULL,
	[ReceievedDate] [date] NOT NULL,
	[createdDate] [datetime] NULL,
	[quantity] [varchar](50) NULL,
	[ReloadOrNew] [varchar](50) NULL,
	[TotalRMC] [varchar](100) NULL,
	[LeadTime] [varchar](50) NULL,
	[FGQty] [varchar](50) NULL,
	[FileId] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[costSheet_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[gvk_shipmentUpdateSubscriptions]    Script Date: 29-Oct-2024 05:07:27 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[gvk_shipmentUpdateSubscriptions](
	[subscrionId] [int] IDENTITY(1,1) NOT NULL,
	[shipmentId] [int] NOT NULL,
	[userId] [int] NOT NULL,
	[shipmentType] [varchar](50) NOT NULL,
	[DateCreated] [datetime] NOT NULL,
	[Status] [varchar](50) NOT NULL,
	[Subscribe] [int] NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[gvk_users]    Script Date: 29-Oct-2024 05:07:27 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[gvk_users](
	[email] [varchar](50) NULL,
	[password] [varchar](50) NULL,
	[usertype] [varchar](50) NULL,
	[status] [int] NULL,
	[fullname] [varchar](50) NULL,
	[username] [varchar](50) NULL,
	[designation] [varchar](50) NULL,
	[department] [varchar](50) NULL,
	[id] [int] IDENTITY(1,1) NOT NULL,
 CONSTRAINT [PK_gvk_users] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[gvk_userSessions]    Script Date: 29-Oct-2024 05:07:27 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[gvk_userSessions](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[userId] [varchar](50) NOT NULL,
	[DateCreated] [datetime] NOT NULL,
 CONSTRAINT [PK_Status] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[quotations]    Script Date: 29-Oct-2024 05:07:27 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[quotations](
	[q_id] [int] IDENTITY(1,1) NOT NULL,
	[quotationId] [varchar](50) NULL,
	[quantity] [varchar](50) NULL,
	[Stage] [varchar](50) NULL,
	[SNo] [varchar](50) NULL,
	[Name] [varchar](500) NULL,
	[CAS_Number] [varchar](500) NULL,
	[Input] [varchar](50) NULL,
	[Rec] [varchar](500) NULL,
	[Con] [varchar](50) NULL,
	[Output] [varchar](50) NULL,
	[Unit] [varchar](50) NULL,
	[Density] [varchar](50) NULL,
	[Mol_Wt] [varchar](50) NULL,
	[Mol_Eq_Vol] [varchar](50) NULL,
	[Actual_Yield] [varchar](50) NULL,
	[Reported_Yields] [varchar](50) NULL,
	[Unit_Cost_Per_Kg_Rs] [varchar](50) NULL,
	[Con_CC_in_Kg] [varchar](50) NULL,
	[Total_Cost_Rs] [varchar](50) NULL,
	[Percentage_of_the_total_cost] [float] NULL,
	[Purity_or_COA] [varchar](50) NULL,
	[Source] [varchar](50) NULL,
	[Lead_time] [varchar](50) NULL,
	[Min_pack] [varchar](50) NULL,
	[Remarks] [varchar](5000) NULL,
	[Chemical_category] [varchar](500) NULL,
	[Received] [date] NULL,
	[createdDate] [datetime] NULL,
	[Quality] [varchar](255) NULL,
	[MadeOfShipment] [varchar](255) NULL,
	[ProposalCode] [varchar](255) NULL,
	[USDExchangeRate] [varchar](255) NULL,
	[CustomerCompoundCode] [varchar](255) NULL,
	[BusinessUnit] [varchar](255) NULL,
	[SubmittedDate] [date] NULL,
	[GMPorNonGMP] [varchar](255) NULL,
	[ReloadOrNew] [varchar](255) NULL,
	[ClientName] [varchar](255) NULL,
	[costSheet_id] [int] NULL,
	[Country] [varchar](50) NULL,
	[KRM] [int] NULL,
	[StageCat] [varchar](100) NULL,
	[LeadTime] [varchar](50) NULL,
	[FGQty] [varchar](50) NULL,
	[TotalRMC] [varchar](50) NULL,
	[Fileid] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[q_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[quotations_bckp]    Script Date: 29-Oct-2024 05:07:27 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[quotations_bckp](
	[q_id] [int] IDENTITY(1,1) NOT NULL,
	[quotationId] [varchar](50) NULL,
	[quantity] [varchar](50) NULL,
	[Stage] [varchar](50) NULL,
	[SNo] [varchar](50) NULL,
	[Name] [varchar](500) NULL,
	[CAS_Number] [varchar](500) NULL,
	[Input] [varchar](50) NULL,
	[Rec] [varchar](500) NULL,
	[Con] [varchar](50) NULL,
	[Output] [varchar](50) NULL,
	[Unit] [varchar](50) NULL,
	[Density] [varchar](50) NULL,
	[Mol_Wt] [varchar](50) NULL,
	[Mol_Eq_Vol] [varchar](50) NULL,
	[Actual_Yield] [varchar](50) NULL,
	[Reported_Yields] [varchar](50) NULL,
	[Unit_Cost_Per_Kg_Rs] [varchar](50) NULL,
	[Con_CC_in_Kg] [varchar](50) NULL,
	[Total_Cost_Rs] [varchar](50) NULL,
	[Percentage_of_the_total_cost] [varchar](50) NULL,
	[Purity_or_COA] [varchar](50) NULL,
	[Source] [varchar](50) NULL,
	[Lead_time] [varchar](50) NULL,
	[Min_pack] [varchar](50) NULL,
	[Remarks] [varchar](5000) NULL,
	[Chemical_category] [varchar](500) NULL,
	[Received] [date] NULL,
	[createdDate] [datetime] NULL,
	[Quality] [varchar](255) NULL,
	[MadeOfShipment] [varchar](255) NULL,
	[ProposalCode] [varchar](255) NULL,
	[USDExchangeRate] [varchar](255) NULL,
	[CustomerCompoundCode] [varchar](255) NULL,
	[BusinessUnit] [varchar](255) NULL,
	[SubmittedDate] [varchar](255) NULL,
	[GMPorNonGMP] [varchar](255) NULL,
	[ReloadOrNew] [varchar](255) NULL,
	[ClientName] [varchar](255) NULL,
	[costSheet_id] [int] NULL,
	[Country] [varchar](50) NULL,
	[KRM] [int] NULL,
	[StageCat] [varchar](100) NULL,
	[LeadTime] [varchar](50) NULL,
	[FGQty] [varchar](50) NULL,
	[TotalRMC] [varchar](50) NULL,
	[Fileid] [int] NULL
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[costing] ADD  DEFAULT (getdate()) FOR [DateCreated]
GO
ALTER TABLE [dbo].[costSheetFiles] ADD  DEFAULT (getdate()) FOR [createdDate]
GO
ALTER TABLE [dbo].[costSheets] ADD  DEFAULT (getdate()) FOR [createdDate]
GO
ALTER TABLE [dbo].[gvk_shipmentUpdateSubscriptions] ADD  CONSTRAINT [DF__gvk_shipm__DateC__1B9317B3]  DEFAULT (getdate()) FOR [DateCreated]
GO
ALTER TABLE [dbo].[gvk_userSessions] ADD  CONSTRAINT [DF_Status_DateCreated]  DEFAULT (getdate()) FOR [DateCreated]
GO
ALTER TABLE [dbo].[quotations] ADD  DEFAULT (getdate()) FOR [createdDate]
GO
USE [master]
GO
ALTER DATABASE [RMCDatabase] SET  READ_WRITE 
GO
