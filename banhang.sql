USE [WebBanHang]
GO
/****** Object:  Table [dbo].[tb_Adv]    Script Date: 9/20/2023 4:39:55 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tb_Adv](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Title] [nvarchar](250) NULL,
	[Description] [nvarchar](250) NULL,
	[Image] [nvarchar](250) NULL,
	[Type] [int] NULL,
	[Link] [nvarchar](500) NULL,
	[CreatedDate] [datetime] NULL,
	[CreatedBy] [nvarchar](150) NULL,
	[ModifierDate] [datetime] NULL,
	[ModifierBy] [nvarchar](150) NULL,
 CONSTRAINT [PK_tb_Adv] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tb_Category]    Script Date: 9/20/2023 4:39:55 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tb_Category](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Title] [nvarchar](150) NULL,
	[Description] [nvarchar](150) NULL,
	[Position] [int] NULL,
	[SeoTitle] [nvarchar](250) NULL,
	[SeoDescription] [nvarchar](250) NULL,
	[SeoKeywords] [nvarchar](250) NULL,
	[CreatedDate] [datetime] NULL,
	[CreatedBy] [nvarchar](150) NULL,
	[ModifierDate] [datetime] NULL,
	[ModifierBy] [nvarchar](150) NULL,
 CONSTRAINT [PK_tb_Category\] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tb_Contact]    Script Date: 9/20/2023 4:39:55 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tb_Contact](
	[Id] [int] NOT NULL,
	[Name] [nvarchar](150) NULL,
	[Website] [nvarchar](150) NULL,
	[Email] [nvarchar](150) NULL,
	[Message] [nvarchar](150) NULL,
	[isRead] [bit] NULL,
	[CreatedDate] [datetime] NULL,
	[CreatedBy] [nvarchar](150) NULL,
	[ModifierDate] [datetime] NULL,
	[ModifierTime] [nvarchar](150) NULL,
 CONSTRAINT [PK_tb_Contact] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tb_New]    Script Date: 9/20/2023 4:39:55 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tb_New](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Title] [nvarchar](250) NULL,
	[CategoryId] [int] NULL,
	[Description] [nvarchar](4000) NULL,
	[Detail] [nvarchar](max) NULL,
	[Image] [nvarchar](500) NULL,
	[SeoTitle] [nvarchar](250) NULL,
	[SeoDescription] [nvarchar](250) NULL,
	[SeoKeywords] [nvarchar](250) NULL,
	[CreatedDate] [datetime] NULL,
	[CreatedBy] [nvarchar](150) NULL,
	[ModifierDate] [datetime] NULL,
	[ModifierTime] [nvarchar](150) NULL,
 CONSTRAINT [PK_tb_New] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tb_Order]    Script Date: 9/20/2023 4:39:56 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tb_Order](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Code] [nvarchar](250) NULL,
	[CustomerName] [nvarchar](150) NULL,
	[Phone] [nvarchar](15) NULL,
	[Address] [nvarchar](250) NULL,
	[TotalAmount] [decimal](18, 0) NULL,
	[Quantity] [int] NULL,
	[CreatedDate] [datetime] NULL,
	[CreatedBy] [nvarchar](150) NULL,
	[ModifierDate] [datetime] NULL,
	[ModifierTime] [nvarchar](150) NULL,
 CONSTRAINT [PK_tb_Order] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tb_OrderDetail]    Script Date: 9/20/2023 4:39:56 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tb_OrderDetail](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[OrderId] [int] NULL,
	[ProductId] [int] NULL,
	[Price] [decimal](18, 0) NULL,
	[Quantity] [int] NULL,
 CONSTRAINT [PK_tb_OrderDetail] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tb_Post]    Script Date: 9/20/2023 4:39:56 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tb_Post](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Title] [nvarchar](250) NULL,
	[CategoryId] [int] NULL,
	[Description] [nvarchar](4000) NULL,
	[Detail] [nvarchar](max) NULL,
	[Image] [nvarchar](500) NULL,
	[SeoTitle] [nvarchar](250) NULL,
	[SeoDescription] [nvarchar](250) NULL,
	[SeoKeywords] [nvarchar](250) NULL,
	[CreatedDate] [datetime] NULL,
	[CreatedBy] [nvarchar](150) NULL,
	[ModifierDate] [datetime] NULL,
	[ModifierTime] [nvarchar](150) NULL,
 CONSTRAINT [PK_tb_Post] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tb_Product]    Script Date: 9/20/2023 4:39:56 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tb_Product](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Title] [nvarchar](250) NULL,
	[Product_CategoryID] [int] NULL,
	[Description] [nvarchar](4000) NULL,
	[Detail] [nvarchar](max) NULL,
	[Image] [nvarchar](500) NULL,
	[Price] [decimal](18, 2) NULL,
	[PriceSale] [decimal](18, 2) NULL,
	[Quantity] [int] NULL,
	[SeoTitle] [nvarchar](250) NULL,
	[SeoDescription] [nvarchar](250) NULL,
	[SeoKeywords] [nvarchar](250) NULL,
	[CreatedDate] [datetime] NULL,
	[CreatedBy] [nvarchar](150) NULL,
	[ModifierDate] [datetime] NULL,
	[ModifierTime] [nvarchar](150) NULL,
 CONSTRAINT [PK_tb_Product.] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tb_ProductCategory]    Script Date: 9/20/2023 4:39:56 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tb_ProductCategory](
	[Id] [int] NOT NULL,
	[Title] [nvarchar](250) NULL,
	[Description] [nvarchar](500) NULL,
	[Icon] [nvarchar](500) NULL,
	[CreatedDate] [datetime] NULL,
	[CreatedBy] [nvarchar](150) NULL,
	[ModifierDate] [datetime] NULL,
	[ModifierTime] [nvarchar](150) NULL,
 CONSTRAINT [PK_tb_ProductCategory] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tb_Subscribe]    Script Date: 9/20/2023 4:39:56 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tb_Subscribe](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Email] [nvarchar](150) NULL,
	[CreatedDate] [datetime] NULL,
 CONSTRAINT [PK_tb_Subcribe] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tb_SystemSetting]    Script Date: 9/20/2023 4:39:56 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tb_SystemSetting](
	[SettingKey] [nvarchar](50) NOT NULL,
	[SettingValue] [nvarchar](max) NULL,
	[SettingDescription] [nvarchar](250) NULL,
 CONSTRAINT [PK_tb_SystemSetting] PRIMARY KEY CLUSTERED 
(
	[SettingKey] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
