USE [master]
GO
/****** Object:  Database [Wardrobe]    Script Date: 10/21/2016 9:50:04 AM ******/
CREATE DATABASE [Wardrobe]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'Wardrobe', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL12.SQLEXPRESS\MSSQL\DATA\Wardrobe.mdf' , SIZE = 3072KB , MAXSIZE = UNLIMITED, FILEGROWTH = 1024KB )
 LOG ON 
( NAME = N'Wardrobe_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL12.SQLEXPRESS\MSSQL\DATA\Wardrobe_log.ldf' , SIZE = 1024KB , MAXSIZE = 2048GB , FILEGROWTH = 10%)
GO
ALTER DATABASE [Wardrobe] SET COMPATIBILITY_LEVEL = 120
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [Wardrobe].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [Wardrobe] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [Wardrobe] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [Wardrobe] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [Wardrobe] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [Wardrobe] SET ARITHABORT OFF 
GO
ALTER DATABASE [Wardrobe] SET AUTO_CLOSE OFF 
GO
ALTER DATABASE [Wardrobe] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [Wardrobe] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [Wardrobe] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [Wardrobe] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [Wardrobe] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [Wardrobe] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [Wardrobe] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [Wardrobe] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [Wardrobe] SET  DISABLE_BROKER 
GO
ALTER DATABASE [Wardrobe] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [Wardrobe] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [Wardrobe] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [Wardrobe] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [Wardrobe] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [Wardrobe] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [Wardrobe] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [Wardrobe] SET RECOVERY SIMPLE 
GO
ALTER DATABASE [Wardrobe] SET  MULTI_USER 
GO
ALTER DATABASE [Wardrobe] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [Wardrobe] SET DB_CHAINING OFF 
GO
ALTER DATABASE [Wardrobe] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [Wardrobe] SET TARGET_RECOVERY_TIME = 0 SECONDS 
GO
ALTER DATABASE [Wardrobe] SET DELAYED_DURABILITY = DISABLED 
GO
USE [Wardrobe]
GO
/****** Object:  Table [dbo].[Accessories]    Script Date: 10/21/2016 9:50:04 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Accessories](
	[AccessoryID] [int] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](50) NOT NULL,
	[Photo] [nvarchar](max) NULL,
	[Type] [nvarchar](50) NOT NULL,
	[Color] [nvarchar](50) NOT NULL,
	[Season] [nvarchar](50) NULL,
	[Occassion] [nvarchar](50) NULL,
 CONSTRAINT [PK_Accessories] PRIMARY KEY CLUSTERED 
(
	[AccessoryID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Bottoms]    Script Date: 10/21/2016 9:50:04 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Bottoms](
	[BottomID] [int] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](50) NOT NULL,
	[Photo] [nvarchar](max) NULL,
	[Type] [nvarchar](50) NOT NULL,
	[Color] [nvarchar](50) NOT NULL,
	[Season] [nvarchar](50) NULL,
	[Occassion] [nvarchar](50) NULL,
 CONSTRAINT [PK_Bottoms] PRIMARY KEY CLUSTERED 
(
	[BottomID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Outfits]    Script Date: 10/21/2016 9:50:04 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Outfits](
	[OutfitID] [int] IDENTITY(1,1) NOT NULL,
	[TopID] [int] NOT NULL,
	[BottomID] [int] NOT NULL,
	[ShoeID] [int] NOT NULL,
	[AccessoryID] [int] NOT NULL,
 CONSTRAINT [PK_Outfits] PRIMARY KEY CLUSTERED 
(
	[OutfitID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Shoes]    Script Date: 10/21/2016 9:50:04 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Shoes](
	[ShoeID] [int] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](50) NOT NULL,
	[Photo] [nvarchar](max) NULL,
	[Type] [nvarchar](50) NOT NULL,
	[Color] [nvarchar](50) NOT NULL,
	[Season] [nvarchar](50) NULL,
	[Occassion] [nvarchar](50) NULL,
 CONSTRAINT [PK_Shoes] PRIMARY KEY CLUSTERED 
(
	[ShoeID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Tops]    Script Date: 10/21/2016 9:50:04 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Tops](
	[TopID] [int] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](50) NOT NULL,
	[Photo] [nvarchar](max) NULL,
	[Type] [nvarchar](50) NOT NULL,
	[Color] [nvarchar](50) NOT NULL,
	[Season] [nvarchar](50) NULL,
	[Occassion] [nvarchar](50) NULL,
 CONSTRAINT [PK_Tops] PRIMARY KEY CLUSTERED 
(
	[TopID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
SET IDENTITY_INSERT [dbo].[Accessories] ON 

INSERT [dbo].[Accessories] ([AccessoryID], [Name], [Photo], [Type], [Color], [Season], [Occassion]) VALUES (1, N'Necklace', N'~/Content/Images/rednecklace.jpg', N'Jewelry', N'Red', N'All', N'Special')
INSERT [dbo].[Accessories] ([AccessoryID], [Name], [Photo], [Type], [Color], [Season], [Occassion]) VALUES (2, N'Saturn', N'~/Content/Images/saturnearrings.jpg', N'Earrings', N'Gold', N'All', N'All the time')
INSERT [dbo].[Accessories] ([AccessoryID], [Name], [Photo], [Type], [Color], [Season], [Occassion]) VALUES (3, N'Purse', N'~/Content/Images/whitepurse.jpg', N'Handbag', N'White', N'All', N'Any')
SET IDENTITY_INSERT [dbo].[Accessories] OFF
SET IDENTITY_INSERT [dbo].[Bottoms] ON 

INSERT [dbo].[Bottoms] ([BottomID], [Name], [Photo], [Type], [Color], [Season], [Occassion]) VALUES (1, N'Jeans', N'~/Content/Images/blackjeans.jpg', N'Denim', N'Black', N'All', N'Any')
INSERT [dbo].[Bottoms] ([BottomID], [Name], [Photo], [Type], [Color], [Season], [Occassion]) VALUES (2, N'Pants', N'~/Content/Images/plaidpants.jpg', N'Trousers', N'Plaid', N'All', N'Work')
INSERT [dbo].[Bottoms] ([BottomID], [Name], [Photo], [Type], [Color], [Season], [Occassion]) VALUES (3, N'Pants', N'~/Content/Images/redpants.jpg', N'Trousers', N'Red', N'All', N'Work')
INSERT [dbo].[Bottoms] ([BottomID], [Name], [Photo], [Type], [Color], [Season], [Occassion]) VALUES (4, N'Skirt', N'~/Content/Images/greyskirt.jpg', N'Pencil skirt', N'Grey', N'Fall/Winter', N'Work')
SET IDENTITY_INSERT [dbo].[Bottoms] OFF
SET IDENTITY_INSERT [dbo].[Shoes] ON 

INSERT [dbo].[Shoes] ([ShoeID], [Name], [Photo], [Type], [Color], [Season], [Occassion]) VALUES (1, N'T-Strap', N'~/Content/Images/greyheels.jpg', N'Heels', N'Grey', N'All', N'Work')
INSERT [dbo].[Shoes] ([ShoeID], [Name], [Photo], [Type], [Color], [Season], [Occassion]) VALUES (2, N'Oxfords', N'~/Content/Images/blackflats.jpg', N'Flats', N'Black', N'Fall', N'Work')
INSERT [dbo].[Shoes] ([ShoeID], [Name], [Photo], [Type], [Color], [Season], [Occassion]) VALUES (3, N'Sneakers', N'~/Content/Images/blacksneakers.jpg', N'Sneakers', N'Black', N'All', N'Lounge')
INSERT [dbo].[Shoes] ([ShoeID], [Name], [Photo], [Type], [Color], [Season], [Occassion]) VALUES (4, N'Unicorns', N'~/Content/Images/unicronslippers.jpg', N'Slippers', N'White', N'All', N'Lounge')
SET IDENTITY_INSERT [dbo].[Shoes] OFF
SET IDENTITY_INSERT [dbo].[Tops] ON 

INSERT [dbo].[Tops] ([TopID], [Name], [Photo], [Type], [Color], [Season], [Occassion]) VALUES (1, N'Cardigan', N'~/Content/Images/greycardigan.jpg', N'Sweater', N'Grey', N'Fall', N'Clothing')
INSERT [dbo].[Tops] ([TopID], [Name], [Photo], [Type], [Color], [Season], [Occassion]) VALUES (2, N'Tank Top', N'~/Content/Images/blackbowtank.jpg', N'Sleeveless', N'Black', N'Summer', N'Clothing')
INSERT [dbo].[Tops] ([TopID], [Name], [Photo], [Type], [Color], [Season], [Occassion]) VALUES (3, N'Blouse', N'~/Content/Images/blackgoldtop.jpg', N'Blouse', N'Black and gold', N'All', N'Work')
INSERT [dbo].[Tops] ([TopID], [Name], [Photo], [Type], [Color], [Season], [Occassion]) VALUES (4, N'Jacket', N'~/Content/Images/navyjacket.jpg', N'Blazer', N'Black', N'All', N'Work')
INSERT [dbo].[Tops] ([TopID], [Name], [Photo], [Type], [Color], [Season], [Occassion]) VALUES (5, N'Pusheen Reads', N'~/Content/Images/pusheenshirt.jpg', N'T-Shirt', N'Grey', N'All', N'Lounge')
INSERT [dbo].[Tops] ([TopID], [Name], [Photo], [Type], [Color], [Season], [Occassion]) VALUES (6, N'Blouse', N'~/Content/Images/redtunic.jpg', N'Tunic', N'Red', N'All', N'Any')
SET IDENTITY_INSERT [dbo].[Tops] OFF
ALTER TABLE [dbo].[Outfits]  WITH CHECK ADD  CONSTRAINT [FK_Outfits_Accessories] FOREIGN KEY([AccessoryID])
REFERENCES [dbo].[Accessories] ([AccessoryID])
GO
ALTER TABLE [dbo].[Outfits] CHECK CONSTRAINT [FK_Outfits_Accessories]
GO
ALTER TABLE [dbo].[Outfits]  WITH CHECK ADD  CONSTRAINT [FK_Outfits_Bottoms] FOREIGN KEY([BottomID])
REFERENCES [dbo].[Bottoms] ([BottomID])
GO
ALTER TABLE [dbo].[Outfits] CHECK CONSTRAINT [FK_Outfits_Bottoms]
GO
ALTER TABLE [dbo].[Outfits]  WITH CHECK ADD  CONSTRAINT [FK_Outfits_Shoes] FOREIGN KEY([ShoeID])
REFERENCES [dbo].[Shoes] ([ShoeID])
GO
ALTER TABLE [dbo].[Outfits] CHECK CONSTRAINT [FK_Outfits_Shoes]
GO
ALTER TABLE [dbo].[Outfits]  WITH CHECK ADD  CONSTRAINT [FK_Outfits_Tops] FOREIGN KEY([TopID])
REFERENCES [dbo].[Tops] ([TopID])
GO
ALTER TABLE [dbo].[Outfits] CHECK CONSTRAINT [FK_Outfits_Tops]
GO
USE [master]
GO
ALTER DATABASE [Wardrobe] SET  READ_WRITE 
GO
