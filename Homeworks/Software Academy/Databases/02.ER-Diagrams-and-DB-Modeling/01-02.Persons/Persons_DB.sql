USE [master]
GO
/****** Object:  Database [[DB Modeling]]Persons]    Script Date: 8/24/2014 7:51:15 PM ******/
CREATE DATABASE [[DB Modeling]]Persons]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'[DB Modeling]Persons', FILENAME = N'D:\Telerik Academy\Homeworks\School Academy\Meeting 4 - DataBases\02.Modeling ER Diagrams\[DB Modeling]Persons.mdf' , SIZE = 5120KB , MAXSIZE = UNLIMITED, FILEGROWTH = 1024KB )
 LOG ON 
( NAME = N'[DB Modeling]Persons_log', FILENAME = N'D:\Telerik Academy\Homeworks\School Academy\Meeting 4 - DataBases\02.Modeling ER Diagrams\[DB Modeling]Persons_log.ldf' , SIZE = 2048KB , MAXSIZE = 2048GB , FILEGROWTH = 10%)
GO
ALTER DATABASE [[DB Modeling]]Persons] SET COMPATIBILITY_LEVEL = 110
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [[DB Modeling]]Persons].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [[DB Modeling]]Persons] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [[DB Modeling]]Persons] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [[DB Modeling]]Persons] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [[DB Modeling]]Persons] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [[DB Modeling]]Persons] SET ARITHABORT OFF 
GO
ALTER DATABASE [[DB Modeling]]Persons] SET AUTO_CLOSE OFF 
GO
ALTER DATABASE [[DB Modeling]]Persons] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [[DB Modeling]]Persons] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [[DB Modeling]]Persons] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [[DB Modeling]]Persons] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [[DB Modeling]]Persons] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [[DB Modeling]]Persons] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [[DB Modeling]]Persons] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [[DB Modeling]]Persons] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [[DB Modeling]]Persons] SET  DISABLE_BROKER 
GO
ALTER DATABASE [[DB Modeling]]Persons] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [[DB Modeling]]Persons] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [[DB Modeling]]Persons] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [[DB Modeling]]Persons] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [[DB Modeling]]Persons] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [[DB Modeling]]Persons] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [[DB Modeling]]Persons] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [[DB Modeling]]Persons] SET RECOVERY FULL 
GO
ALTER DATABASE [[DB Modeling]]Persons] SET  MULTI_USER 
GO
ALTER DATABASE [[DB Modeling]]Persons] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [[DB Modeling]]Persons] SET DB_CHAINING OFF 
GO
ALTER DATABASE [[DB Modeling]]Persons] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [[DB Modeling]]Persons] SET TARGET_RECOVERY_TIME = 0 SECONDS 
GO
ALTER DATABASE [[DB Modeling]]Persons] SET DELAYED_DURABILITY = DISABLED 
GO
EXEC sys.sp_db_vardecimal_storage_format N'[DB Modeling]Persons', N'ON'
GO
USE [[DB Modeling]]Persons]
GO
/****** Object:  Table [dbo].[Address]    Script Date: 8/24/2014 7:51:16 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Address](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[Address_text] [varchar](50) NOT NULL,
	[TownID] [int] NOT NULL,
 CONSTRAINT [PK_Address] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Continent]    Script Date: 8/24/2014 7:51:16 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Continent](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[Name] [varchar](50) NOT NULL,
 CONSTRAINT [PK_Continent] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Country]    Script Date: 8/24/2014 7:51:16 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Country](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[Name] [varchar](50) NOT NULL,
	[ContinentID] [int] NOT NULL,
 CONSTRAINT [PK_Country] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Person]    Script Date: 8/24/2014 7:51:16 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Person](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[First_name] [varchar](50) NOT NULL,
	[Last_name] [varchar](50) NOT NULL,
	[AddressID] [int] NOT NULL,
 CONSTRAINT [PK_Person] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Town]    Script Date: 8/24/2014 7:51:16 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Town](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[Name] [varchar](50) NOT NULL,
	[CountryID] [int] NOT NULL,
 CONSTRAINT [PK_Town] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
SET IDENTITY_INSERT [dbo].[Address] ON 

INSERT [dbo].[Address] ([ID], [Address_text], [TownID]) VALUES (1, N'Ivan Vazov 5', 1)
INSERT [dbo].[Address] ([ID], [Address_text], [TownID]) VALUES (5, N'1234 Lonsdale str.', 1)
INSERT [dbo].[Address] ([ID], [Address_text], [TownID]) VALUES (6, N'Burudan ul. 6', 5)
INSERT [dbo].[Address] ([ID], [Address_text], [TownID]) VALUES (8, N'23 Some str.', 4)
SET IDENTITY_INSERT [dbo].[Address] OFF
SET IDENTITY_INSERT [dbo].[Continent] ON 

INSERT [dbo].[Continent] ([ID], [Name]) VALUES (1, N'North America')
INSERT [dbo].[Continent] ([ID], [Name]) VALUES (2, N'South America')
INSERT [dbo].[Continent] ([ID], [Name]) VALUES (3, N'Europe')
INSERT [dbo].[Continent] ([ID], [Name]) VALUES (4, N'Asia')
INSERT [dbo].[Continent] ([ID], [Name]) VALUES (5, N'Australia')
SET IDENTITY_INSERT [dbo].[Continent] OFF
SET IDENTITY_INSERT [dbo].[Country] ON 

INSERT [dbo].[Country] ([ID], [Name], [ContinentID]) VALUES (1, N'Bulgaria', 3)
INSERT [dbo].[Country] ([ID], [Name], [ContinentID]) VALUES (2, N'Germany', 3)
INSERT [dbo].[Country] ([ID], [Name], [ContinentID]) VALUES (3, N'Canada', 1)
INSERT [dbo].[Country] ([ID], [Name], [ContinentID]) VALUES (4, N'Brazilia', 2)
INSERT [dbo].[Country] ([ID], [Name], [ContinentID]) VALUES (5, N'China', 4)
INSERT [dbo].[Country] ([ID], [Name], [ContinentID]) VALUES (6, N'Australia', 5)
SET IDENTITY_INSERT [dbo].[Country] OFF
SET IDENTITY_INSERT [dbo].[Person] ON 

INSERT [dbo].[Person] ([ID], [First_name], [Last_name], [AddressID]) VALUES (1, N'Veselin', N'Dimitrov', 1)
INSERT [dbo].[Person] ([ID], [First_name], [Last_name], [AddressID]) VALUES (2, N'Stoyan', N'Stoyanov', 5)
INSERT [dbo].[Person] ([ID], [First_name], [Last_name], [AddressID]) VALUES (3, N'Martin', N'Borisov', 6)
INSERT [dbo].[Person] ([ID], [First_name], [Last_name], [AddressID]) VALUES (4, N'Pesho', N'Goshov', 8)
SET IDENTITY_INSERT [dbo].[Person] OFF
SET IDENTITY_INSERT [dbo].[Town] ON 

INSERT [dbo].[Town] ([ID], [Name], [CountryID]) VALUES (1, N'Dupnica', 1)
INSERT [dbo].[Town] ([ID], [Name], [CountryID]) VALUES (2, N'Sofia', 1)
INSERT [dbo].[Town] ([ID], [Name], [CountryID]) VALUES (3, N'Munich', 2)
INSERT [dbo].[Town] ([ID], [Name], [CountryID]) VALUES (4, N'Torronto', 3)
INSERT [dbo].[Town] ([ID], [Name], [CountryID]) VALUES (5, N'Beijing', 4)
INSERT [dbo].[Town] ([ID], [Name], [CountryID]) VALUES (6, N'Canberra', 5)
SET IDENTITY_INSERT [dbo].[Town] OFF
ALTER TABLE [dbo].[Address]  WITH CHECK ADD  CONSTRAINT [FK_Address_Town] FOREIGN KEY([TownID])
REFERENCES [dbo].[Town] ([ID])
GO
ALTER TABLE [dbo].[Address] CHECK CONSTRAINT [FK_Address_Town]
GO
ALTER TABLE [dbo].[Country]  WITH CHECK ADD  CONSTRAINT [FK_Country_Continent] FOREIGN KEY([ContinentID])
REFERENCES [dbo].[Continent] ([ID])
GO
ALTER TABLE [dbo].[Country] CHECK CONSTRAINT [FK_Country_Continent]
GO
ALTER TABLE [dbo].[Person]  WITH CHECK ADD  CONSTRAINT [FK_Person_Address] FOREIGN KEY([AddressID])
REFERENCES [dbo].[Address] ([ID])
GO
ALTER TABLE [dbo].[Person] CHECK CONSTRAINT [FK_Person_Address]
GO
ALTER TABLE [dbo].[Town]  WITH CHECK ADD  CONSTRAINT [FK_Town_Country] FOREIGN KEY([CountryID])
REFERENCES [dbo].[Country] ([ID])
GO
ALTER TABLE [dbo].[Town] CHECK CONSTRAINT [FK_Town_Country]
GO
USE [master]
GO
ALTER DATABASE [[DB Modeling]]Persons] SET  READ_WRITE 
GO
