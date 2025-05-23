USE [master]
GO
/****** Object:  Database [MasterPol_Kumyshbaeva]    Script Date: 21.05.2025 17:05:59 ******/
CREATE DATABASE [MasterPol_Kumyshbaeva]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'MasterPol_Kumyshbaeva', FILENAME = N'F:\BD\MSSQL16.MSSQLSERVER\MSSQL\DATA\MasterPol_Kumyshbaeva.mdf' , SIZE = 8192KB , MAXSIZE = UNLIMITED, FILEGROWTH = 65536KB )
 LOG ON 
( NAME = N'MasterPol_Kumyshbaeva_log', FILENAME = N'F:\BD\MSSQL16.MSSQLSERVER\MSSQL\DATA\MasterPol_Kumyshbaeva_log.ldf' , SIZE = 8192KB , MAXSIZE = 2048GB , FILEGROWTH = 65536KB )
 WITH CATALOG_COLLATION = DATABASE_DEFAULT, LEDGER = OFF
GO
ALTER DATABASE [MasterPol_Kumyshbaeva] SET COMPATIBILITY_LEVEL = 160
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [MasterPol_Kumyshbaeva].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [MasterPol_Kumyshbaeva] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [MasterPol_Kumyshbaeva] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [MasterPol_Kumyshbaeva] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [MasterPol_Kumyshbaeva] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [MasterPol_Kumyshbaeva] SET ARITHABORT OFF 
GO
ALTER DATABASE [MasterPol_Kumyshbaeva] SET AUTO_CLOSE OFF 
GO
ALTER DATABASE [MasterPol_Kumyshbaeva] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [MasterPol_Kumyshbaeva] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [MasterPol_Kumyshbaeva] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [MasterPol_Kumyshbaeva] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [MasterPol_Kumyshbaeva] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [MasterPol_Kumyshbaeva] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [MasterPol_Kumyshbaeva] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [MasterPol_Kumyshbaeva] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [MasterPol_Kumyshbaeva] SET  DISABLE_BROKER 
GO
ALTER DATABASE [MasterPol_Kumyshbaeva] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [MasterPol_Kumyshbaeva] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [MasterPol_Kumyshbaeva] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [MasterPol_Kumyshbaeva] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [MasterPol_Kumyshbaeva] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [MasterPol_Kumyshbaeva] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [MasterPol_Kumyshbaeva] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [MasterPol_Kumyshbaeva] SET RECOVERY FULL 
GO
ALTER DATABASE [MasterPol_Kumyshbaeva] SET  MULTI_USER 
GO
ALTER DATABASE [MasterPol_Kumyshbaeva] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [MasterPol_Kumyshbaeva] SET DB_CHAINING OFF 
GO
ALTER DATABASE [MasterPol_Kumyshbaeva] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [MasterPol_Kumyshbaeva] SET TARGET_RECOVERY_TIME = 60 SECONDS 
GO
ALTER DATABASE [MasterPol_Kumyshbaeva] SET DELAYED_DURABILITY = DISABLED 
GO
ALTER DATABASE [MasterPol_Kumyshbaeva] SET ACCELERATED_DATABASE_RECOVERY = OFF  
GO
EXEC sys.sp_db_vardecimal_storage_format N'MasterPol_Kumyshbaeva', N'ON'
GO
ALTER DATABASE [MasterPol_Kumyshbaeva] SET QUERY_STORE = ON
GO
ALTER DATABASE [MasterPol_Kumyshbaeva] SET QUERY_STORE (OPERATION_MODE = READ_WRITE, CLEANUP_POLICY = (STALE_QUERY_THRESHOLD_DAYS = 30), DATA_FLUSH_INTERVAL_SECONDS = 900, INTERVAL_LENGTH_MINUTES = 60, MAX_STORAGE_SIZE_MB = 1000, QUERY_CAPTURE_MODE = AUTO, SIZE_BASED_CLEANUP_MODE = AUTO, MAX_PLANS_PER_QUERY = 200, WAIT_STATS_CAPTURE_MODE = ON)
GO
USE [MasterPol_Kumyshbaeva]
GO
/****** Object:  Table [dbo].[Partner]    Script Date: 21.05.2025 17:06:00 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Partner](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[IdTypePartner] [int] NULL,
	[NameCompany] [nvarchar](max) NULL,
	[Address] [nvarchar](max) NULL,
	[INN] [nvarchar](max) NULL,
	[SNPdirector] [nvarchar](max) NULL,
	[PhoneNumber] [nvarchar](max) NULL,
	[Email] [nvarchar](max) NULL,
	[Logo] [varbinary](50) NULL,
	[Raiting] [nvarchar](max) NULL,
	[PointSale] [nvarchar](max) NULL,
	[HistoryRealize] [nvarchar](max) NULL,
	[Discount] [int] NULL,
 CONSTRAINT [PK_Partner] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[PartnerProduct]    Script Date: 21.05.2025 17:06:00 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[PartnerProduct](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[IdProduct] [int] NULL,
	[IdPartner] [int] NULL,
	[CountProduct] [int] NULL,
	[SaleDate] [date] NULL,
 CONSTRAINT [PK_PartnerProduct] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Product]    Script Date: 21.05.2025 17:06:00 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Product](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Articul] [nvarchar](max) NULL,
	[IdTypeProduct] [int] NULL,
	[Title] [nvarchar](max) NULL,
	[Description] [nvarchar](max) NULL,
	[Image] [varbinary](max) NULL,
	[PartnerMinCost] [float] NULL,
	[SizeBox] [float] NULL,
	[WeightWithoutBox] [float] NULL,
	[WeightWithBox] [float] NULL,
	[SertificateQuality] [nvarchar](max) NULL,
	[NumberOfStandart] [nvarchar](max) NULL,
	[HistoryPartnerMinCost] [nvarchar](max) NULL,
	[TimeOfMade] [nvarchar](max) NULL,
	[CostPrice] [float] NULL,
	[NumberWorkshop] [int] NULL,
	[CountPeopleInWorkshop] [int] NULL,
	[NecessaryMaterials] [nvarchar](max) NULL,
 CONSTRAINT [PK_Product] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[TypePartner]    Script Date: 21.05.2025 17:06:00 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[TypePartner](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Name] [nchar](10) NULL,
 CONSTRAINT [PK_TypePartner] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[TypeProduct]    Script Date: 21.05.2025 17:06:00 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[TypeProduct](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](max) NULL,
	[Ratio] [float] NULL,
 CONSTRAINT [PK_TypeProduct] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[Partner] ON 

INSERT [dbo].[Partner] ([Id], [IdTypePartner], [NameCompany], [Address], [INN], [SNPdirector], [PhoneNumber], [Email], [Logo], [Raiting], [PointSale], [HistoryRealize], [Discount]) VALUES (1, 1, N'База Строитель', N'652050, Кемеровская область, город Юрга, ул. Лесная, 15', N'2222455179', N'Иванова Александра Ивановна', N'493 123 45 67', N'aleksandraivanova@ml.ru', NULL, N'7', NULL, NULL, NULL)
INSERT [dbo].[Partner] ([Id], [IdTypePartner], [NameCompany], [Address], [INN], [SNPdirector], [PhoneNumber], [Email], [Logo], [Raiting], [PointSale], [HistoryRealize], [Discount]) VALUES (2, 2, N'Паркет 29', N'164500, Архангельская область, город Северодвинск, ул. Строителей, 18', N'3333888520', N'Петров Василий Петрович', N'987 123 56 78', N'vppetrov@vl.ru', NULL, N'7', NULL, NULL, NULL)
INSERT [dbo].[Partner] ([Id], [IdTypePartner], [NameCompany], [Address], [INN], [SNPdirector], [PhoneNumber], [Email], [Logo], [Raiting], [PointSale], [HistoryRealize], [Discount]) VALUES (3, 3, N'Стройсервис', N'188910, Ленинградская область, город Приморск, ул. Парковая, 21', N'4440391035', N'Соловьев Андрей Николаевич', N'812 223 32 00', N'ansolovev@st.ru', NULL, N'7', NULL, NULL, NULL)
INSERT [dbo].[Partner] ([Id], [IdTypePartner], [NameCompany], [Address], [INN], [SNPdirector], [PhoneNumber], [Email], [Logo], [Raiting], [PointSale], [HistoryRealize], [Discount]) VALUES (4, 4, N'Ремонт и отделка', N'143960, Московская область, город Реутов, ул. Свободы, 51', N'1111520857', N'Воробьева Екатерина Валерьевна', N'444 222 33 11', N'ekaterina.vorobeva@ml.ru', NULL, N'5', NULL, NULL, NULL)
INSERT [dbo].[Partner] ([Id], [IdTypePartner], [NameCompany], [Address], [INN], [SNPdirector], [PhoneNumber], [Email], [Logo], [Raiting], [PointSale], [HistoryRealize], [Discount]) VALUES (5, 1, N'МонтажПро', N'309500, Белгородская область, город Старый Оскол, ул. Рабочая, 122', N'5552431140', N'Степанов Степан Сергеевич', N'912 888 33 33', N'stepanov@stepan.ru', NULL, N'10', NULL, NULL, NULL)
SET IDENTITY_INSERT [dbo].[Partner] OFF
GO
SET IDENTITY_INSERT [dbo].[PartnerProduct] ON 

INSERT [dbo].[PartnerProduct] ([Id], [IdProduct], [IdPartner], [CountProduct], [SaleDate]) VALUES (1, 1, 1, 15500, CAST(N'2023-03-23' AS Date))
INSERT [dbo].[PartnerProduct] ([Id], [IdProduct], [IdPartner], [CountProduct], [SaleDate]) VALUES (2, 3, 1, 12350, CAST(N'2023-12-18' AS Date))
INSERT [dbo].[PartnerProduct] ([Id], [IdProduct], [IdPartner], [CountProduct], [SaleDate]) VALUES (3, 4, 1, 37400, CAST(N'2024-06-07' AS Date))
INSERT [dbo].[PartnerProduct] ([Id], [IdProduct], [IdPartner], [CountProduct], [SaleDate]) VALUES (4, 2, 2, 35000, CAST(N'2022-12-02' AS Date))
INSERT [dbo].[PartnerProduct] ([Id], [IdProduct], [IdPartner], [CountProduct], [SaleDate]) VALUES (5, 5, 2, 1250, CAST(N'2023-05-17' AS Date))
INSERT [dbo].[PartnerProduct] ([Id], [IdProduct], [IdPartner], [CountProduct], [SaleDate]) VALUES (6, 3, 2, 1000, CAST(N'2024-06-07' AS Date))
INSERT [dbo].[PartnerProduct] ([Id], [IdProduct], [IdPartner], [CountProduct], [SaleDate]) VALUES (7, 1, 2, 7550, CAST(N'2024-07-01' AS Date))
INSERT [dbo].[PartnerProduct] ([Id], [IdProduct], [IdPartner], [CountProduct], [SaleDate]) VALUES (8, 1, 3, 7250, CAST(N'2023-01-22' AS Date))
INSERT [dbo].[PartnerProduct] ([Id], [IdProduct], [IdPartner], [CountProduct], [SaleDate]) VALUES (9, 2, 3, 2500, CAST(N'2024-07-05' AS Date))
INSERT [dbo].[PartnerProduct] ([Id], [IdProduct], [IdPartner], [CountProduct], [SaleDate]) VALUES (10, 4, 4, 59050, CAST(N'2023-03-20' AS Date))
INSERT [dbo].[PartnerProduct] ([Id], [IdProduct], [IdPartner], [CountProduct], [SaleDate]) VALUES (11, 3, 4, 37200, CAST(N'2024-03-12' AS Date))
INSERT [dbo].[PartnerProduct] ([Id], [IdProduct], [IdPartner], [CountProduct], [SaleDate]) VALUES (12, 5, 4, 4500, CAST(N'2024-05-14' AS Date))
INSERT [dbo].[PartnerProduct] ([Id], [IdProduct], [IdPartner], [CountProduct], [SaleDate]) VALUES (13, 3, 5, 50000, CAST(N'2023-09-19' AS Date))
INSERT [dbo].[PartnerProduct] ([Id], [IdProduct], [IdPartner], [CountProduct], [SaleDate]) VALUES (14, 4, 5, 670000, CAST(N'2023-11-10' AS Date))
INSERT [dbo].[PartnerProduct] ([Id], [IdProduct], [IdPartner], [CountProduct], [SaleDate]) VALUES (15, 1, 5, 35000, CAST(N'2024-04-15' AS Date))
INSERT [dbo].[PartnerProduct] ([Id], [IdProduct], [IdPartner], [CountProduct], [SaleDate]) VALUES (16, 2, 5, 25000, CAST(N'2024-06-12' AS Date))
SET IDENTITY_INSERT [dbo].[PartnerProduct] OFF
GO
SET IDENTITY_INSERT [dbo].[Product] ON 

INSERT [dbo].[Product] ([Id], [Articul], [IdTypeProduct], [Title], [Description], [Image], [PartnerMinCost], [SizeBox], [WeightWithoutBox], [WeightWithBox], [SertificateQuality], [NumberOfStandart], [HistoryPartnerMinCost], [TimeOfMade], [CostPrice], [NumberWorkshop], [CountPeopleInWorkshop], [NecessaryMaterials]) VALUES (1, N'8758385', 3, N'Паркетная доска Ясень темный однополосная 14 мм', N'', NULL, 4456.9, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[Product] ([Id], [Articul], [IdTypeProduct], [Title], [Description], [Image], [PartnerMinCost], [SizeBox], [WeightWithoutBox], [WeightWithBox], [SertificateQuality], [NumberOfStandart], [HistoryPartnerMinCost], [TimeOfMade], [CostPrice], [NumberWorkshop], [CountPeopleInWorkshop], [NecessaryMaterials]) VALUES (2, N'8858958', 3, N'Инженерная доска Дуб Французская елка однополосная 12 мм', N'', NULL, 7330.99, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[Product] ([Id], [Articul], [IdTypeProduct], [Title], [Description], [Image], [PartnerMinCost], [SizeBox], [WeightWithoutBox], [WeightWithBox], [SertificateQuality], [NumberOfStandart], [HistoryPartnerMinCost], [TimeOfMade], [CostPrice], [NumberWorkshop], [CountPeopleInWorkshop], [NecessaryMaterials]) VALUES (3, N'7750282', 1, N'Ламинат Дуб дымчато-белый 33 класс 12 мм', N'', NULL, 1799.33, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[Product] ([Id], [Articul], [IdTypeProduct], [Title], [Description], [Image], [PartnerMinCost], [SizeBox], [WeightWithoutBox], [WeightWithBox], [SertificateQuality], [NumberOfStandart], [HistoryPartnerMinCost], [TimeOfMade], [CostPrice], [NumberWorkshop], [CountPeopleInWorkshop], [NecessaryMaterials]) VALUES (4, N'7028748', 1, N'Ламинат Дуб серый 32 класс 8 мм с фаской', N'', NULL, 3890.41, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[Product] ([Id], [Articul], [IdTypeProduct], [Title], [Description], [Image], [PartnerMinCost], [SizeBox], [WeightWithoutBox], [WeightWithBox], [SertificateQuality], [NumberOfStandart], [HistoryPartnerMinCost], [TimeOfMade], [CostPrice], [NumberWorkshop], [CountPeopleInWorkshop], [NecessaryMaterials]) VALUES (5, N'5012543', 4, N'Пробковое напольное клеевое покрытие 32 класс 4 мм', N'', NULL, 5450.59, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
SET IDENTITY_INSERT [dbo].[Product] OFF
GO
SET IDENTITY_INSERT [dbo].[TypePartner] ON 

INSERT [dbo].[TypePartner] ([Id], [Name]) VALUES (1, N'ЗАО       ')
INSERT [dbo].[TypePartner] ([Id], [Name]) VALUES (2, N'ООО       ')
INSERT [dbo].[TypePartner] ([Id], [Name]) VALUES (3, N'ПАО       ')
INSERT [dbo].[TypePartner] ([Id], [Name]) VALUES (4, N'ОАО       ')
SET IDENTITY_INSERT [dbo].[TypePartner] OFF
GO
SET IDENTITY_INSERT [dbo].[TypeProduct] ON 

INSERT [dbo].[TypeProduct] ([Id], [Name], [Ratio]) VALUES (1, N'Ламинат', 2.35)
INSERT [dbo].[TypeProduct] ([Id], [Name], [Ratio]) VALUES (2, N'Массивная доска', 5.15)
INSERT [dbo].[TypeProduct] ([Id], [Name], [Ratio]) VALUES (3, N'Паркетная доска', 4.34)
INSERT [dbo].[TypeProduct] ([Id], [Name], [Ratio]) VALUES (4, N'Пробковое покрытие', 1.5)
SET IDENTITY_INSERT [dbo].[TypeProduct] OFF
GO
ALTER TABLE [dbo].[Partner]  WITH CHECK ADD  CONSTRAINT [FK_Partner_TypePartner] FOREIGN KEY([IdTypePartner])
REFERENCES [dbo].[TypePartner] ([Id])
GO
ALTER TABLE [dbo].[Partner] CHECK CONSTRAINT [FK_Partner_TypePartner]
GO
ALTER TABLE [dbo].[PartnerProduct]  WITH CHECK ADD  CONSTRAINT [FK_PartnerProduct_Partner] FOREIGN KEY([IdPartner])
REFERENCES [dbo].[Partner] ([Id])
GO
ALTER TABLE [dbo].[PartnerProduct] CHECK CONSTRAINT [FK_PartnerProduct_Partner]
GO
ALTER TABLE [dbo].[PartnerProduct]  WITH CHECK ADD  CONSTRAINT [FK_PartnerProduct_Product] FOREIGN KEY([IdProduct])
REFERENCES [dbo].[Product] ([Id])
GO
ALTER TABLE [dbo].[PartnerProduct] CHECK CONSTRAINT [FK_PartnerProduct_Product]
GO
ALTER TABLE [dbo].[Product]  WITH CHECK ADD  CONSTRAINT [FK_Product_TypeProduct] FOREIGN KEY([IdTypeProduct])
REFERENCES [dbo].[TypeProduct] ([Id])
GO
ALTER TABLE [dbo].[Product] CHECK CONSTRAINT [FK_Product_TypeProduct]
GO
USE [master]
GO
ALTER DATABASE [MasterPol_Kumyshbaeva] SET  READ_WRITE 
GO
