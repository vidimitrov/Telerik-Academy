USE [master]
GO
/****** Object:  Database [[DB Modeling]]University]    Script Date: 8/24/2014 8:22:44 PM ******/
CREATE DATABASE [[DB Modeling]]University]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'[DB Modeling]University', FILENAME = N'D:\Telerik Academy\Homeworks\School Academy\Meeting 4 - DataBases\02.Modeling ER Diagrams\[DB Modeling]University.mdf' , SIZE = 5120KB , MAXSIZE = UNLIMITED, FILEGROWTH = 1024KB )
 LOG ON 
( NAME = N'[DB Modeling]University_log', FILENAME = N'D:\Telerik Academy\Homeworks\School Academy\Meeting 4 - DataBases\02.Modeling ER Diagrams\[DB Modeling]University_log.ldf' , SIZE = 2048KB , MAXSIZE = 2048GB , FILEGROWTH = 10%)
GO
ALTER DATABASE [[DB Modeling]]University] SET COMPATIBILITY_LEVEL = 110
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [[DB Modeling]]University].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [[DB Modeling]]University] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [[DB Modeling]]University] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [[DB Modeling]]University] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [[DB Modeling]]University] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [[DB Modeling]]University] SET ARITHABORT OFF 
GO
ALTER DATABASE [[DB Modeling]]University] SET AUTO_CLOSE OFF 
GO
ALTER DATABASE [[DB Modeling]]University] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [[DB Modeling]]University] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [[DB Modeling]]University] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [[DB Modeling]]University] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [[DB Modeling]]University] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [[DB Modeling]]University] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [[DB Modeling]]University] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [[DB Modeling]]University] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [[DB Modeling]]University] SET  DISABLE_BROKER 
GO
ALTER DATABASE [[DB Modeling]]University] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [[DB Modeling]]University] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [[DB Modeling]]University] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [[DB Modeling]]University] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [[DB Modeling]]University] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [[DB Modeling]]University] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [[DB Modeling]]University] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [[DB Modeling]]University] SET RECOVERY FULL 
GO
ALTER DATABASE [[DB Modeling]]University] SET  MULTI_USER 
GO
ALTER DATABASE [[DB Modeling]]University] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [[DB Modeling]]University] SET DB_CHAINING OFF 
GO
ALTER DATABASE [[DB Modeling]]University] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [[DB Modeling]]University] SET TARGET_RECOVERY_TIME = 0 SECONDS 
GO
ALTER DATABASE [[DB Modeling]]University] SET DELAYED_DURABILITY = DISABLED 
GO
EXEC sys.sp_db_vardecimal_storage_format N'[DB Modeling]University', N'ON'
GO
USE [[DB Modeling]]University]
GO
/****** Object:  Table [dbo].[Courses]    Script Date: 8/24/2014 8:22:44 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Courses](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[Subject] [nvarchar](50) NOT NULL,
	[ProfessorID] [int] NOT NULL,
	[DepartmentID] [int] NOT NULL,
 CONSTRAINT [PK_Courses] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Departments]    Script Date: 8/24/2014 8:22:44 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Departments](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[Name] [varchar](50) NOT NULL,
	[FacultyID] [int] NOT NULL,
 CONSTRAINT [PK_Departments] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Faculties]    Script Date: 8/24/2014 8:22:44 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Faculties](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[Name] [varchar](50) NOT NULL,
 CONSTRAINT [PK_Faculties] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Professors]    Script Date: 8/24/2014 8:22:44 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Professors](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[Name] [varchar](50) NOT NULL,
	[DepartmentID] [int] NOT NULL,
 CONSTRAINT [PK_Professors] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Students]    Script Date: 8/24/2014 8:22:44 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Students](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[FacultyID] [varchar](50) NOT NULL,
	[Name] [varchar](50) NOT NULL,
 CONSTRAINT [PK_Students] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[StudentsCourses]    Script Date: 8/24/2014 8:22:44 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[StudentsCourses](
	[StudentID] [int] NOT NULL,
	[CourseID] [int] NOT NULL,
 CONSTRAINT [PK_StudentsCourses] PRIMARY KEY CLUSTERED 
(
	[StudentID] ASC,
	[CourseID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Titles]    Script Date: 8/24/2014 8:22:44 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Titles](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[TItle] [nvarchar](50) NOT NULL,
	[ProfessorID] [int] NOT NULL
) ON [PRIMARY]

GO
ALTER TABLE [dbo].[Courses]  WITH CHECK ADD  CONSTRAINT [FK_Courses_Departments] FOREIGN KEY([DepartmentID])
REFERENCES [dbo].[Departments] ([ID])
GO
ALTER TABLE [dbo].[Courses] CHECK CONSTRAINT [FK_Courses_Departments]
GO
ALTER TABLE [dbo].[Courses]  WITH CHECK ADD  CONSTRAINT [FK_Courses_Professors] FOREIGN KEY([ProfessorID])
REFERENCES [dbo].[Professors] ([ID])
GO
ALTER TABLE [dbo].[Courses] CHECK CONSTRAINT [FK_Courses_Professors]
GO
ALTER TABLE [dbo].[Departments]  WITH CHECK ADD  CONSTRAINT [FK_Departments_Faculties] FOREIGN KEY([FacultyID])
REFERENCES [dbo].[Faculties] ([ID])
GO
ALTER TABLE [dbo].[Departments] CHECK CONSTRAINT [FK_Departments_Faculties]
GO
ALTER TABLE [dbo].[Professors]  WITH CHECK ADD  CONSTRAINT [FK_Professors_Departments] FOREIGN KEY([DepartmentID])
REFERENCES [dbo].[Departments] ([ID])
GO
ALTER TABLE [dbo].[Professors] CHECK CONSTRAINT [FK_Professors_Departments]
GO
ALTER TABLE [dbo].[StudentsCourses]  WITH CHECK ADD  CONSTRAINT [FK_StudentsCourses_Courses1] FOREIGN KEY([CourseID])
REFERENCES [dbo].[Courses] ([ID])
GO
ALTER TABLE [dbo].[StudentsCourses] CHECK CONSTRAINT [FK_StudentsCourses_Courses1]
GO
ALTER TABLE [dbo].[StudentsCourses]  WITH CHECK ADD  CONSTRAINT [FK_StudentsCourses_Students] FOREIGN KEY([StudentID])
REFERENCES [dbo].[Students] ([ID])
GO
ALTER TABLE [dbo].[StudentsCourses] CHECK CONSTRAINT [FK_StudentsCourses_Students]
GO
ALTER TABLE [dbo].[Titles]  WITH CHECK ADD  CONSTRAINT [FK_Titles_Professors] FOREIGN KEY([ProfessorID])
REFERENCES [dbo].[Professors] ([ID])
GO
ALTER TABLE [dbo].[Titles] CHECK CONSTRAINT [FK_Titles_Professors]
GO
USE [master]
GO
ALTER DATABASE [[DB Modeling]]University] SET  READ_WRITE 
GO
