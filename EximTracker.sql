USE [master]
GO
/****** Object:  Database [EximTracker]    Script Date: 29-Oct-2024 05:08:16 PM ******/
CREATE DATABASE [EximTracker]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'NodeJsDb', FILENAME = N'E:\Program Files\Microsoft SQL Server\MSSQL11.MSSQLSERVER\MSSQL\DATA\NodeJsDb.mdf' , SIZE = 37888KB , MAXSIZE = UNLIMITED, FILEGROWTH = 1024KB )
 LOG ON 
( NAME = N'NodeJsDb_log', FILENAME = N'E:\Program Files\Microsoft SQL Server\MSSQL11.MSSQLSERVER\MSSQL\DATA\NodeJsDb_log.ldf' , SIZE = 1536KB , MAXSIZE = 2048GB , FILEGROWTH = 10%)
GO
ALTER DATABASE [EximTracker] SET COMPATIBILITY_LEVEL = 120
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [EximTracker].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [EximTracker] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [EximTracker] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [EximTracker] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [EximTracker] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [EximTracker] SET ARITHABORT OFF 
GO
ALTER DATABASE [EximTracker] SET AUTO_CLOSE OFF 
GO
ALTER DATABASE [EximTracker] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [EximTracker] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [EximTracker] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [EximTracker] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [EximTracker] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [EximTracker] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [EximTracker] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [EximTracker] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [EximTracker] SET  DISABLE_BROKER 
GO
ALTER DATABASE [EximTracker] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [EximTracker] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [EximTracker] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [EximTracker] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [EximTracker] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [EximTracker] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [EximTracker] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [EximTracker] SET RECOVERY SIMPLE 
GO
ALTER DATABASE [EximTracker] SET  MULTI_USER 
GO
ALTER DATABASE [EximTracker] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [EximTracker] SET DB_CHAINING OFF 
GO
ALTER DATABASE [EximTracker] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [EximTracker] SET TARGET_RECOVERY_TIME = 0 SECONDS 
GO
ALTER DATABASE [EximTracker] SET DELAYED_DURABILITY = DISABLED 
GO
USE [EximTracker]
GO
/****** Object:  Table [dbo].[gvk_carrier]    Script Date: 29-Oct-2024 05:08:16 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[gvk_carrier](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[carrier] [varchar](111) NULL,
	[create_by] [varchar](6) NULL,
	[create_date] [datetime] NULL,
 CONSTRAINT [PK__gvk_carr__3213E83FE5DD362D] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[gvk_country]    Script Date: 29-Oct-2024 05:08:16 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[gvk_country](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[country] [varchar](111) NULL,
	[create_by] [int] NULL,
	[create_date] [datetime] NULL,
 CONSTRAINT [PK__gvk_coun__3213E83FCB733278] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[gvk_customs_handling_agent]    Script Date: 29-Oct-2024 05:08:16 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[gvk_customs_handling_agent](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[cha_name] [varchar](111) NOT NULL,
	[create_by] [int] NULL,
	[create_date] [datetime] NOT NULL,
 CONSTRAINT [PK__customs___3213E83F83E6BE5F] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[gvk_export_shipments]    Script Date: 29-Oct-2024 05:08:16 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[gvk_export_shipments](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[SBU_location] [varchar](200) NULL,
	[Compound_DM_Time] [varchar](200) NULL,
	[CR_DM_Date] [varchar](50) NULL,
	[Clearance_BSO_NON_BSO] [varchar](200) NULL,
	[Carrier] [varchar](200) NULL,
	[Contract] [varchar](200) NULL,
	[SOLD_TO] [varchar](200) NULL,
	[SHIP_TO] [varchar](200) NULL,
	[Destination] [varchar](2000) NOT NULL,
	[Zone_Sales_District] [varchar](200) NULL,
	[Region] [varchar](200) NULL,
	[Description] [varchar](200) NULL,
	[QTY] [varchar](200) NULL,
	[SAP_Ref_No] [varchar](200) NULL,
	[Invoice_No] [varchar](200) NULL,
	[Invoice_Date] [varchar](200) NULL,
	[Clearance_charges] [varchar](200) NULL,
	[Carrier_Bill_Freight_charges] [varchar](200) NULL,
	[Tracking_No] [varchar](200) NULL,
	[Date] [varchar](200) NULL,
	[Shipment_Day_of_pick_up] [varchar](200) NULL,
	[Departure_from_India] [varchar](200) NULL,
	[Landing_Destination_Port] [varchar](200) NULL,
	[Destination_Customs_release_date] [varchar](200) NULL,
	[Date_of_Delivery_to_client] [varchar](200) NULL,
	[No_of_days_Door_to_Port] [varchar](200) NULL,
	[No_of_days_Door_to_Door] [varchar](200) NULL,
	[Remarks] [varchar](2000) NULL,
	[HS_Code_No] [varchar](200) NULL,
	[No_of_Boxes] [varchar](200) NULL,
	[Gr_Wt] [varchar](200) NULL,
	[Unit_of_measure] [varchar](200) NULL,
	[Package_Size] [varchar](200) NULL,
	[Storage_Conditions] [varchar](200) NULL,
	[Net_Wt] [varchar](200) NULL,
	[UOM] [varchar](200) NULL,
	[Currency] [varchar](200) NULL,
	[Invoice_Value] [varchar](200) NULL,
	[Value_in_INR] [varchar](200) NULL,
	[FOB_Value] [varchar](200) NULL,
	[Shipping_Bill_Number] [varchar](2000) NULL,
	[Shipping_Bill_Date] [varchar](200) NULL,
	[MAWB] [varchar](200) NULL,
	[HAWB] [varchar](200) NULL,
	[LEO_No] [varchar](200) NULL,
	[SB_original_Date_of_receipt] [varchar](200) NULL,
	[uploaded_finance_Share] [varchar](200) NULL,
	[customerID] [varchar](200) NULL,
	[Status] [varchar](200) NULL,
	[create_date] [datetime] NULL,
	[update_date] [datetime] NULL,
	[LEO_Date] [varchar](200) NULL,
PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[gvk_foreign_currency]    Script Date: 29-Oct-2024 05:08:16 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[gvk_foreign_currency](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[currency_name] [varchar](111) NULL,
	[import_value] [varchar](111) NULL,
	[export_value] [varchar](111) NULL,
	[create_by] [int] NULL,
	[create_date] [datetime] NULL,
	[update_date] [datetime] NULL,
 CONSTRAINT [PK__gvk_fore__3213E83FCAF04293] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[gvk_import_shipments]    Script Date: 29-Oct-2024 05:08:17 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[gvk_import_shipments](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[Date] [varchar](500) NULL,
	[Rev_info] [varchar](500) NULL,
	[SBU_location] [varchar](500) NULL,
	[Req_sent_by] [varchar](500) NULL,
	[Vendor_name] [varchar](500) NULL,
	[Category] [varchar](500) NULL,
	[NRM] [varchar](2000) NULL,
	[MPR] [varchar](2000) NULL,
	[BLR] [varchar](2000) NULL,
	[VPO] [varchar](2000) NULL,
	[Country] [varchar](500) NULL,
	[No_of_chem] [varchar](500) NULL,
	[AWB_no] [varchar](5000) NOT NULL,
	[Remarks] [varchar](500) NULL,
	[Reasons] [varchar](1000) NULL,
	[Status] [varchar](500) NULL,
	[Delivery_Date] [varchar](500) NULL,
	[Expected_Date_Delivery] [varchar](255) NULL,
	[Carrier] [varchar](500) NULL,
	[Pick_up_date] [varchar](500) NULL,
	[shpt_land_dt] [varchar](500) NULL,
	[Docs_shared_date] [varchar](500) NULL,
	[Port_of_clearance] [varchar](500) NULL,
	[CHA] [varchar](500) NULL,
	[Clearance_TAT] [varchar](500) NULL,
	[Transit_TAT] [varchar](500) NULL,
	[Total_TAT] [varchar](500) NULL,
	[PC_Meter] [varchar](500) NULL,
	[Bill_No] [varchar](500) NULL,
	[Clearance_Charges] [varchar](500) NULL,
	[Freight] [varchar](500) NULL,
	[BE_No] [varchar](500) NULL,
	[BE_Date] [varchar](50) NULL,
	[Penalty_Charges] [varchar](500) NULL,
	[Reason_for_penalty] [varchar](500) NULL,
	[Approval_status] [varchar](500) NULL,
	[DG] [varchar](500) NULL,
	[High_Value] [varchar](500) NULL,
	[Perishable] [varchar](500) NULL,
	[BRO] [varchar](500) NULL,
	[Reasons_For_Reports] [varchar](500) NULL,
	[Updated_date] [datetime] NULL,
	[create_date] [datetime] NOT NULL,
	[Zone] [varchar](500) NULL,
	[RemarksForReports] [varchar](500) NULL,
	[CMSshiptsBalanceDetails] [varchar](500) NULL,
	[OriginalBoESubmittedDate] [varchar](500) NULL,
	[CMS_CDS_Product_NameRrProjectCode] [varchar](500) NULL,
	[GrossWeight_Kg] [varchar](500) NULL,
	[DistanceInKms] [varchar](500) NULL,
	[Co2Emiission_Kg] [varchar](500) NULL,
 CONSTRAINT [product_pk] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[gvk_saveSearchs]    Script Date: 29-Oct-2024 05:08:17 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[gvk_saveSearchs](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[SearchName] [varchar](1000) NULL,
	[userId] [varchar](50) NOT NULL,
	[type] [varchar](50) NOT NULL,
	[DateCreated] [datetime] NOT NULL,
 CONSTRAINT [PK_Status] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[gvk_settings]    Script Date: 29-Oct-2024 05:08:17 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[gvk_settings](
	[page_name] [varchar](100) NOT NULL,
	[page_description] [varchar](8000) NOT NULL,
	[create_date] [datetime] NOT NULL,
	[id] [int] IDENTITY(1,1) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[gvk_shipmentUpdateSubscriptions]    Script Date: 29-Oct-2024 05:08:17 PM ******/
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
/****** Object:  Table [dbo].[gvk_users]    Script Date: 29-Oct-2024 05:08:17 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[gvk_users](
	[email] [varchar](100) NOT NULL,
	[password] [varchar](100) NOT NULL,
	[id] [int] IDENTITY(1,1) NOT NULL,
	[token] [varchar](50) NULL,
	[status] [varchar](50) NULL,
	[usertype] [varchar](50) NULL,
	[create_date] [datetime] NOT NULL,
	[fullname] [varchar](50) NULL,
	[username] [varchar](50) NULL,
	[designation] [varchar](50) NULL,
	[department] [varchar](50) NULL,
	[customerID] [varchar](10) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[gvk_userSessions]    Script Date: 29-Oct-2024 05:08:17 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[gvk_userSessions](
	[sessionID] [int] IDENTITY(1,1) NOT NULL,
	[userId] [varchar](50) NOT NULL,
	[DateCreated] [datetime] NOT NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[gvk_vendor]    Script Date: 29-Oct-2024 05:08:17 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[gvk_vendor](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[vendor_name] [varchar](100) NOT NULL,
	[create_by] [int] NOT NULL,
	[create_date] [datetime] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[gvk_carrier] ADD  CONSTRAINT [DF__gvk_carri__creat__3D2915A8]  DEFAULT (getdate()) FOR [create_date]
GO
ALTER TABLE [dbo].[gvk_country] ADD  CONSTRAINT [DF__gvk_count__creat__43D61337]  DEFAULT ('1') FOR [create_by]
GO
ALTER TABLE [dbo].[gvk_country] ADD  CONSTRAINT [DF__gvk_count__creat__44CA3770]  DEFAULT (getdate()) FOR [create_date]
GO
ALTER TABLE [dbo].[gvk_customs_handling_agent] ADD  CONSTRAINT [DF__customs_h__creat__47A6A41B]  DEFAULT ('1') FOR [create_by]
GO
ALTER TABLE [dbo].[gvk_customs_handling_agent] ADD  CONSTRAINT [DF__customs_h__creat__489AC854]  DEFAULT (getdate()) FOR [create_date]
GO
ALTER TABLE [dbo].[gvk_export_shipments] ADD  DEFAULT (getdate()) FOR [create_date]
GO
ALTER TABLE [dbo].[gvk_export_shipments] ADD  DEFAULT (getdate()) FOR [update_date]
GO
ALTER TABLE [dbo].[gvk_foreign_currency] ADD  CONSTRAINT [DF__gvk_forei__creat__4B7734FF]  DEFAULT ('1') FOR [create_by]
GO
ALTER TABLE [dbo].[gvk_foreign_currency] ADD  CONSTRAINT [DF__gvk_forei__creat__4C6B5938]  DEFAULT (getdate()) FOR [create_date]
GO
ALTER TABLE [dbo].[gvk_import_shipments] ADD  DEFAULT (getdate()) FOR [create_date]
GO
ALTER TABLE [dbo].[gvk_saveSearchs] ADD  CONSTRAINT [DF_gvk_saveSearchs_DateCreated]  DEFAULT (getdate()) FOR [DateCreated]
GO
ALTER TABLE [dbo].[gvk_settings] ADD  DEFAULT (getdate()) FOR [create_date]
GO
ALTER TABLE [dbo].[gvk_shipmentUpdateSubscriptions] ADD  CONSTRAINT [DF_gvk_shipmentUpdateSubscriptions_DateCreated]  DEFAULT (getdate()) FOR [DateCreated]
GO
ALTER TABLE [dbo].[gvk_users] ADD  DEFAULT (getdate()) FOR [create_date]
GO
ALTER TABLE [dbo].[gvk_users] ADD  DEFAULT ((0)) FOR [customerID]
GO
ALTER TABLE [dbo].[gvk_userSessions] ADD  CONSTRAINT [DF_gvk_userSessions_DateCreated]  DEFAULT (getdate()) FOR [DateCreated]
GO
ALTER TABLE [dbo].[gvk_vendor] ADD  DEFAULT ('1') FOR [create_by]
GO
ALTER TABLE [dbo].[gvk_vendor] ADD  DEFAULT (getdate()) FOR [create_date]
GO
USE [master]
GO
ALTER DATABASE [EximTracker] SET  READ_WRITE 
GO
