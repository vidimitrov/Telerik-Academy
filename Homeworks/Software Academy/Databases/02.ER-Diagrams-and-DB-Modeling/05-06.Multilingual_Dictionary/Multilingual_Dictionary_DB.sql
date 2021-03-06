USE [master]
GO
/****** Object:  Database [[DB Modeling]]Multilingual-Dictionary]    Script Date: 8/24/2014 4:24:02 PM ******/
CREATE DATABASE [[DB Modeling]]Multilingual-Dictionary]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'[DB Modeling]Multilingual-Dictionary', FILENAME = N'D:\Telerik Academy\Homeworks\School Academy\Meeting 4 - DataBases\02.Modeling ER Diagrams\[DB Modeling]Multilingual-Dictionary.mdf' , SIZE = 5120KB , MAXSIZE = UNLIMITED, FILEGROWTH = 1024KB )
 LOG ON 
( NAME = N'[DB Modeling]Multilingual-Dictionary_log', FILENAME = N'D:\Telerik Academy\Homeworks\School Academy\Meeting 4 - DataBases\02.Modeling ER Diagrams\[DB Modeling]Multilingual-Dictionary_log.ldf' , SIZE = 2048KB , MAXSIZE = 2048GB , FILEGROWTH = 10%)
GO
ALTER DATABASE [[DB Modeling]]Multilingual-Dictionary] SET COMPATIBILITY_LEVEL = 110
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [[DB Modeling]]Multilingual-Dictionary].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [[DB Modeling]]Multilingual-Dictionary] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [[DB Modeling]]Multilingual-Dictionary] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [[DB Modeling]]Multilingual-Dictionary] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [[DB Modeling]]Multilingual-Dictionary] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [[DB Modeling]]Multilingual-Dictionary] SET ARITHABORT OFF 
GO
ALTER DATABASE [[DB Modeling]]Multilingual-Dictionary] SET AUTO_CLOSE OFF 
GO
ALTER DATABASE [[DB Modeling]]Multilingual-Dictionary] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [[DB Modeling]]Multilingual-Dictionary] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [[DB Modeling]]Multilingual-Dictionary] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [[DB Modeling]]Multilingual-Dictionary] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [[DB Modeling]]Multilingual-Dictionary] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [[DB Modeling]]Multilingual-Dictionary] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [[DB Modeling]]Multilingual-Dictionary] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [[DB Modeling]]Multilingual-Dictionary] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [[DB Modeling]]Multilingual-Dictionary] SET  DISABLE_BROKER 
GO
ALTER DATABASE [[DB Modeling]]Multilingual-Dictionary] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [[DB Modeling]]Multilingual-Dictionary] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [[DB Modeling]]Multilingual-Dictionary] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [[DB Modeling]]Multilingual-Dictionary] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [[DB Modeling]]Multilingual-Dictionary] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [[DB Modeling]]Multilingual-Dictionary] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [[DB Modeling]]Multilingual-Dictionary] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [[DB Modeling]]Multilingual-Dictionary] SET RECOVERY FULL 
GO
ALTER DATABASE [[DB Modeling]]Multilingual-Dictionary] SET  MULTI_USER 
GO
ALTER DATABASE [[DB Modeling]]Multilingual-Dictionary] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [[DB Modeling]]Multilingual-Dictionary] SET DB_CHAINING OFF 
GO
ALTER DATABASE [[DB Modeling]]Multilingual-Dictionary] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [[DB Modeling]]Multilingual-Dictionary] SET TARGET_RECOVERY_TIME = 0 SECONDS 
GO
ALTER DATABASE [[DB Modeling]]Multilingual-Dictionary] SET DELAYED_DURABILITY = DISABLED 
GO
EXEC sys.sp_db_vardecimal_storage_format N'[DB Modeling]Multilingual-Dictionary', N'ON'
GO
USE [[DB Modeling]]Multilingual-Dictionary]
GO
/****** Object:  Table [dbo].[Antonyms]    Script Date: 8/24/2014 4:24:02 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Antonyms](
	[WordID] [int] NOT NULL,
	[Antonym] [int] NOT NULL,
 CONSTRAINT [PK_Antonyms] PRIMARY KEY CLUSTERED 
(
	[WordID] ASC,
	[Antonym] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Explanations]    Script Date: 8/24/2014 4:24:02 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Explanations](
	[ExplanationID] [int] IDENTITY(1,1) NOT NULL,
	[Explanation] [ntext] NOT NULL,
 CONSTRAINT [PK_Explanations] PRIMARY KEY CLUSTERED 
(
	[ExplanationID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Hyponyms/Hypernyms]    Script Date: 8/24/2014 4:24:02 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Hyponyms/Hypernyms](
	[Hypernym] [int] NOT NULL,
	[Hyponym] [int] NOT NULL,
 CONSTRAINT [PK_Hyponyms/Hypernyms] PRIMARY KEY CLUSTERED 
(
	[Hypernym] ASC,
	[Hyponym] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Languages]    Script Date: 8/24/2014 4:24:02 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Languages](
	[LanguageID] [int] IDENTITY(1,1) NOT NULL,
	[Language] [nvarchar](50) NOT NULL,
 CONSTRAINT [PK_Languages] PRIMARY KEY CLUSTERED 
(
	[LanguageID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Part-of-speech]    Script Date: 8/24/2014 4:24:02 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Part-of-speech](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[PartOfSpeech] [nvarchar](20) NOT NULL,
 CONSTRAINT [PK_Part-of-speech] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Synonyms]    Script Date: 8/24/2014 4:24:02 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Synonyms](
	[WordID] [int] NOT NULL,
	[Synonym] [int] NOT NULL,
 CONSTRAINT [PK_Synonyms] PRIMARY KEY CLUSTERED 
(
	[WordID] ASC,
	[Synonym] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[TranslationWords]    Script Date: 8/24/2014 4:24:02 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[TranslationWords](
	[WordID] [int] NOT NULL,
	[Translation] [int] NOT NULL,
 CONSTRAINT [PK_TranslationWords] PRIMARY KEY CLUSTERED 
(
	[WordID] ASC,
	[Translation] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Words]    Script Date: 8/24/2014 4:24:02 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Words](
	[WordID] [int] IDENTITY(1,1) NOT NULL,
	[Word] [nvarchar](50) NOT NULL,
	[LanguageID] [int] NOT NULL,
	[ExplanationID] [int] NOT NULL,
	[PartOfSpeechID] [int] NOT NULL,
 CONSTRAINT [PK_Words] PRIMARY KEY CLUSTERED 
(
	[WordID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
ALTER TABLE [dbo].[Antonyms]  WITH CHECK ADD  CONSTRAINT [FK_Antonyms_Words] FOREIGN KEY([WordID])
REFERENCES [dbo].[Words] ([WordID])
GO
ALTER TABLE [dbo].[Antonyms] CHECK CONSTRAINT [FK_Antonyms_Words]
GO
ALTER TABLE [dbo].[Antonyms]  WITH CHECK ADD  CONSTRAINT [FK_Antonyms_Words1] FOREIGN KEY([Antonym])
REFERENCES [dbo].[Words] ([WordID])
GO
ALTER TABLE [dbo].[Antonyms] CHECK CONSTRAINT [FK_Antonyms_Words1]
GO
ALTER TABLE [dbo].[Hyponyms/Hypernyms]  WITH CHECK ADD  CONSTRAINT [FK_Hyponyms/Hypernyms_Words] FOREIGN KEY([Hypernym])
REFERENCES [dbo].[Words] ([WordID])
GO
ALTER TABLE [dbo].[Hyponyms/Hypernyms] CHECK CONSTRAINT [FK_Hyponyms/Hypernyms_Words]
GO
ALTER TABLE [dbo].[Hyponyms/Hypernyms]  WITH CHECK ADD  CONSTRAINT [FK_Hyponyms/Hypernyms_Words1] FOREIGN KEY([Hyponym])
REFERENCES [dbo].[Words] ([WordID])
GO
ALTER TABLE [dbo].[Hyponyms/Hypernyms] CHECK CONSTRAINT [FK_Hyponyms/Hypernyms_Words1]
GO
ALTER TABLE [dbo].[Synonyms]  WITH CHECK ADD  CONSTRAINT [FK_Synonyms_Words] FOREIGN KEY([WordID])
REFERENCES [dbo].[Words] ([WordID])
GO
ALTER TABLE [dbo].[Synonyms] CHECK CONSTRAINT [FK_Synonyms_Words]
GO
ALTER TABLE [dbo].[Synonyms]  WITH CHECK ADD  CONSTRAINT [FK_Synonyms_Words1] FOREIGN KEY([Synonym])
REFERENCES [dbo].[Words] ([WordID])
GO
ALTER TABLE [dbo].[Synonyms] CHECK CONSTRAINT [FK_Synonyms_Words1]
GO
ALTER TABLE [dbo].[TranslationWords]  WITH CHECK ADD  CONSTRAINT [FK_TranslationWords_Words] FOREIGN KEY([WordID])
REFERENCES [dbo].[Words] ([WordID])
GO
ALTER TABLE [dbo].[TranslationWords] CHECK CONSTRAINT [FK_TranslationWords_Words]
GO
ALTER TABLE [dbo].[TranslationWords]  WITH CHECK ADD  CONSTRAINT [FK_TranslationWords_Words1] FOREIGN KEY([Translation])
REFERENCES [dbo].[Words] ([WordID])
GO
ALTER TABLE [dbo].[TranslationWords] CHECK CONSTRAINT [FK_TranslationWords_Words1]
GO
ALTER TABLE [dbo].[Words]  WITH CHECK ADD  CONSTRAINT [FK_Words_Explanations] FOREIGN KEY([ExplanationID])
REFERENCES [dbo].[Explanations] ([ExplanationID])
GO
ALTER TABLE [dbo].[Words] CHECK CONSTRAINT [FK_Words_Explanations]
GO
ALTER TABLE [dbo].[Words]  WITH CHECK ADD  CONSTRAINT [FK_Words_Languages] FOREIGN KEY([LanguageID])
REFERENCES [dbo].[Languages] ([LanguageID])
GO
ALTER TABLE [dbo].[Words] CHECK CONSTRAINT [FK_Words_Languages]
GO
ALTER TABLE [dbo].[Words]  WITH CHECK ADD  CONSTRAINT [FK_Words_Part-of-speech] FOREIGN KEY([PartOfSpeechID])
REFERENCES [dbo].[Part-of-speech] ([ID])
GO
ALTER TABLE [dbo].[Words] CHECK CONSTRAINT [FK_Words_Part-of-speech]
GO
USE [master]
GO
ALTER DATABASE [[DB Modeling]]Multilingual-Dictionary] SET  READ_WRITE 
GO
