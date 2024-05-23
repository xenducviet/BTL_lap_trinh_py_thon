USE [master]
GO
/****** Object:  Database [PYTHON]    Script Date: 5/23/2024 5:12:51 PM ******/
CREATE DATABASE [PYTHON]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'PYTHON', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL16.MSSQLSERVER\MSSQL\DATA\PYTHON.mdf' , SIZE = 8192KB , MAXSIZE = UNLIMITED, FILEGROWTH = 65536KB )
 LOG ON 
( NAME = N'PYTHON_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL16.MSSQLSERVER\MSSQL\DATA\PYTHON_log.ldf' , SIZE = 73728KB , MAXSIZE = 2048GB , FILEGROWTH = 65536KB )
 WITH CATALOG_COLLATION = DATABASE_DEFAULT, LEDGER = OFF
GO
ALTER DATABASE [PYTHON] SET COMPATIBILITY_LEVEL = 160
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [PYTHON].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [PYTHON] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [PYTHON] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [PYTHON] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [PYTHON] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [PYTHON] SET ARITHABORT OFF 
GO
ALTER DATABASE [PYTHON] SET AUTO_CLOSE ON 
GO
ALTER DATABASE [PYTHON] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [PYTHON] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [PYTHON] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [PYTHON] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [PYTHON] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [PYTHON] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [PYTHON] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [PYTHON] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [PYTHON] SET  ENABLE_BROKER 
GO
ALTER DATABASE [PYTHON] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [PYTHON] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [PYTHON] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [PYTHON] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [PYTHON] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [PYTHON] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [PYTHON] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [PYTHON] SET RECOVERY SIMPLE 
GO
ALTER DATABASE [PYTHON] SET  MULTI_USER 
GO
ALTER DATABASE [PYTHON] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [PYTHON] SET DB_CHAINING OFF 
GO
ALTER DATABASE [PYTHON] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [PYTHON] SET TARGET_RECOVERY_TIME = 60 SECONDS 
GO
ALTER DATABASE [PYTHON] SET DELAYED_DURABILITY = DISABLED 
GO
ALTER DATABASE [PYTHON] SET ACCELERATED_DATABASE_RECOVERY = OFF  
GO
ALTER DATABASE [PYTHON] SET QUERY_STORE = ON
GO
ALTER DATABASE [PYTHON] SET QUERY_STORE (OPERATION_MODE = READ_WRITE, CLEANUP_POLICY = (STALE_QUERY_THRESHOLD_DAYS = 30), DATA_FLUSH_INTERVAL_SECONDS = 900, INTERVAL_LENGTH_MINUTES = 60, MAX_STORAGE_SIZE_MB = 1000, QUERY_CAPTURE_MODE = AUTO, SIZE_BASED_CLEANUP_MODE = AUTO, MAX_PLANS_PER_QUERY = 200, WAIT_STATS_CAPTURE_MODE = ON)
GO
USE [PYTHON]
GO
/****** Object:  Table [dbo].[RANKS]    Script Date: 5/23/2024 5:12:51 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[RANKS](
	[id_rank] [int] IDENTITY(1,1) NOT NULL,
	[round] [int] NULL,
	[team] [nvarchar](max) NULL,
	[wins] [int] NULL,
	[draws] [int] NULL,
	[losses] [int] NULL,
	[points] [int] NULL,
	[played] [int] NULL,
	[remaining] [int] NULL,
	[rank] [int] NULL
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[RANKS] ON 

INSERT [dbo].[RANKS] ([id_rank], [round], [team], [wins], [draws], [losses], [points], [played], [remaining], [rank]) VALUES (1, 1, N'Manchester City FC', 1, 0, 0, 3, 1, 37, 1)
INSERT [dbo].[RANKS] ([id_rank], [round], [team], [wins], [draws], [losses], [points], [played], [remaining], [rank]) VALUES (2, 1, N'Arsenal FC', 1, 0, 0, 3, 1, 37, 2)
INSERT [dbo].[RANKS] ([id_rank], [round], [team], [wins], [draws], [losses], [points], [played], [remaining], [rank]) VALUES (3, 1, N'Brighton & Hove Albion FC', 1, 0, 0, 3, 1, 37, 3)
INSERT [dbo].[RANKS] ([id_rank], [round], [team], [wins], [draws], [losses], [points], [played], [remaining], [rank]) VALUES (4, 1, N'Fulham FC', 1, 0, 0, 3, 1, 37, 4)
INSERT [dbo].[RANKS] ([id_rank], [round], [team], [wins], [draws], [losses], [points], [played], [remaining], [rank]) VALUES (5, 2, N'Manchester City FC', 2, 0, 0, 6, 2, 36, 1)
INSERT [dbo].[RANKS] ([id_rank], [round], [team], [wins], [draws], [losses], [points], [played], [remaining], [rank]) VALUES (6, 2, N'Arsenal FC', 2, 0, 0, 6, 2, 36, 2)
INSERT [dbo].[RANKS] ([id_rank], [round], [team], [wins], [draws], [losses], [points], [played], [remaining], [rank]) VALUES (7, 2, N'Brighton & Hove Albion FC', 2, 0, 0, 6, 2, 36, 3)
INSERT [dbo].[RANKS] ([id_rank], [round], [team], [wins], [draws], [losses], [points], [played], [remaining], [rank]) VALUES (8, 2, N'West Ham United FC', 1, 1, 0, 4, 2, 36, 4)
INSERT [dbo].[RANKS] ([id_rank], [round], [team], [wins], [draws], [losses], [points], [played], [remaining], [rank]) VALUES (9, 3, N'Manchester City FC', 3, 0, 0, 9, 3, 35, 1)
INSERT [dbo].[RANKS] ([id_rank], [round], [team], [wins], [draws], [losses], [points], [played], [remaining], [rank]) VALUES (10, 3, N'Arsenal FC', 2, 1, 0, 7, 3, 35, 2)
INSERT [dbo].[RANKS] ([id_rank], [round], [team], [wins], [draws], [losses], [points], [played], [remaining], [rank]) VALUES (11, 3, N'West Ham United FC', 2, 1, 0, 7, 3, 35, 3)
INSERT [dbo].[RANKS] ([id_rank], [round], [team], [wins], [draws], [losses], [points], [played], [remaining], [rank]) VALUES (12, 3, N'Tottenham Hotspur FC', 2, 1, 0, 7, 3, 35, 4)
INSERT [dbo].[RANKS] ([id_rank], [round], [team], [wins], [draws], [losses], [points], [played], [remaining], [rank]) VALUES (13, 4, N'Manchester City FC', 4, 0, 0, 12, 4, 34, 1)
INSERT [dbo].[RANKS] ([id_rank], [round], [team], [wins], [draws], [losses], [points], [played], [remaining], [rank]) VALUES (14, 4, N'Arsenal FC', 3, 1, 0, 10, 4, 34, 2)
INSERT [dbo].[RANKS] ([id_rank], [round], [team], [wins], [draws], [losses], [points], [played], [remaining], [rank]) VALUES (15, 4, N'West Ham United FC', 3, 1, 0, 10, 4, 34, 3)
INSERT [dbo].[RANKS] ([id_rank], [round], [team], [wins], [draws], [losses], [points], [played], [remaining], [rank]) VALUES (16, 4, N'Tottenham Hotspur FC', 3, 1, 0, 10, 4, 34, 4)
INSERT [dbo].[RANKS] ([id_rank], [round], [team], [wins], [draws], [losses], [points], [played], [remaining], [rank]) VALUES (17, 5, N'Manchester City FC', 5, 0, 0, 15, 5, 33, 1)
INSERT [dbo].[RANKS] ([id_rank], [round], [team], [wins], [draws], [losses], [points], [played], [remaining], [rank]) VALUES (18, 5, N'Arsenal FC', 4, 1, 0, 13, 5, 33, 2)
INSERT [dbo].[RANKS] ([id_rank], [round], [team], [wins], [draws], [losses], [points], [played], [remaining], [rank]) VALUES (19, 5, N'Tottenham Hotspur FC', 4, 1, 0, 13, 5, 33, 3)
INSERT [dbo].[RANKS] ([id_rank], [round], [team], [wins], [draws], [losses], [points], [played], [remaining], [rank]) VALUES (20, 5, N'Liverpool FC', 4, 1, 0, 13, 5, 33, 4)
INSERT [dbo].[RANKS] ([id_rank], [round], [team], [wins], [draws], [losses], [points], [played], [remaining], [rank]) VALUES (21, 6, N'Manchester City FC', 6, 0, 0, 18, 6, 32, 1)
INSERT [dbo].[RANKS] ([id_rank], [round], [team], [wins], [draws], [losses], [points], [played], [remaining], [rank]) VALUES (22, 6, N'Liverpool FC', 5, 1, 0, 16, 6, 32, 2)
INSERT [dbo].[RANKS] ([id_rank], [round], [team], [wins], [draws], [losses], [points], [played], [remaining], [rank]) VALUES (23, 6, N'Brighton & Hove Albion FC', 5, 0, 1, 15, 6, 32, 3)
INSERT [dbo].[RANKS] ([id_rank], [round], [team], [wins], [draws], [losses], [points], [played], [remaining], [rank]) VALUES (24, 6, N'Arsenal FC', 4, 2, 0, 14, 6, 32, 4)
INSERT [dbo].[RANKS] ([id_rank], [round], [team], [wins], [draws], [losses], [points], [played], [remaining], [rank]) VALUES (25, 7, N'Manchester City FC', 6, 0, 1, 18, 7, 31, 1)
INSERT [dbo].[RANKS] ([id_rank], [round], [team], [wins], [draws], [losses], [points], [played], [remaining], [rank]) VALUES (26, 7, N'Arsenal FC', 5, 2, 0, 17, 7, 31, 2)
INSERT [dbo].[RANKS] ([id_rank], [round], [team], [wins], [draws], [losses], [points], [played], [remaining], [rank]) VALUES (27, 7, N'Tottenham Hotspur FC', 5, 2, 0, 17, 7, 31, 3)
INSERT [dbo].[RANKS] ([id_rank], [round], [team], [wins], [draws], [losses], [points], [played], [remaining], [rank]) VALUES (28, 7, N'Liverpool FC', 5, 1, 1, 16, 7, 31, 4)
INSERT [dbo].[RANKS] ([id_rank], [round], [team], [wins], [draws], [losses], [points], [played], [remaining], [rank]) VALUES (29, 8, N'Arsenal FC', 6, 2, 0, 20, 8, 30, 1)
INSERT [dbo].[RANKS] ([id_rank], [round], [team], [wins], [draws], [losses], [points], [played], [remaining], [rank]) VALUES (30, 8, N'Tottenham Hotspur FC', 6, 2, 0, 20, 8, 30, 2)
INSERT [dbo].[RANKS] ([id_rank], [round], [team], [wins], [draws], [losses], [points], [played], [remaining], [rank]) VALUES (31, 8, N'Manchester City FC', 6, 0, 2, 18, 8, 30, 3)
INSERT [dbo].[RANKS] ([id_rank], [round], [team], [wins], [draws], [losses], [points], [played], [remaining], [rank]) VALUES (32, 8, N'Liverpool FC', 5, 2, 1, 17, 8, 30, 4)
INSERT [dbo].[RANKS] ([id_rank], [round], [team], [wins], [draws], [losses], [points], [played], [remaining], [rank]) VALUES (33, 9, N'Tottenham Hotspur FC', 7, 2, 0, 23, 9, 29, 1)
INSERT [dbo].[RANKS] ([id_rank], [round], [team], [wins], [draws], [losses], [points], [played], [remaining], [rank]) VALUES (34, 9, N'Manchester City FC', 7, 0, 2, 21, 9, 29, 2)
INSERT [dbo].[RANKS] ([id_rank], [round], [team], [wins], [draws], [losses], [points], [played], [remaining], [rank]) VALUES (35, 9, N'Arsenal FC', 6, 3, 0, 21, 9, 29, 3)
INSERT [dbo].[RANKS] ([id_rank], [round], [team], [wins], [draws], [losses], [points], [played], [remaining], [rank]) VALUES (36, 9, N'Liverpool FC', 6, 2, 1, 20, 9, 29, 4)
INSERT [dbo].[RANKS] ([id_rank], [round], [team], [wins], [draws], [losses], [points], [played], [remaining], [rank]) VALUES (37, 10, N'Tottenham Hotspur FC', 8, 2, 0, 26, 10, 28, 1)
INSERT [dbo].[RANKS] ([id_rank], [round], [team], [wins], [draws], [losses], [points], [played], [remaining], [rank]) VALUES (38, 10, N'Manchester City FC', 8, 0, 2, 24, 10, 28, 2)
INSERT [dbo].[RANKS] ([id_rank], [round], [team], [wins], [draws], [losses], [points], [played], [remaining], [rank]) VALUES (39, 10, N'Arsenal FC', 7, 3, 0, 24, 10, 28, 3)
INSERT [dbo].[RANKS] ([id_rank], [round], [team], [wins], [draws], [losses], [points], [played], [remaining], [rank]) VALUES (40, 10, N'Liverpool FC', 7, 2, 1, 23, 10, 28, 4)
INSERT [dbo].[RANKS] ([id_rank], [round], [team], [wins], [draws], [losses], [points], [played], [remaining], [rank]) VALUES (41, 11, N'Manchester City FC', 9, 0, 2, 27, 11, 27, 1)
INSERT [dbo].[RANKS] ([id_rank], [round], [team], [wins], [draws], [losses], [points], [played], [remaining], [rank]) VALUES (42, 11, N'Tottenham Hotspur FC', 8, 2, 1, 26, 11, 27, 2)
INSERT [dbo].[RANKS] ([id_rank], [round], [team], [wins], [draws], [losses], [points], [played], [remaining], [rank]) VALUES (43, 11, N'Arsenal FC', 7, 3, 1, 24, 11, 27, 3)
INSERT [dbo].[RANKS] ([id_rank], [round], [team], [wins], [draws], [losses], [points], [played], [remaining], [rank]) VALUES (44, 11, N'Liverpool FC', 7, 3, 1, 24, 11, 27, 4)
INSERT [dbo].[RANKS] ([id_rank], [round], [team], [wins], [draws], [losses], [points], [played], [remaining], [rank]) VALUES (45, 12, N'Manchester City FC', 9, 1, 2, 28, 12, 26, 1)
INSERT [dbo].[RANKS] ([id_rank], [round], [team], [wins], [draws], [losses], [points], [played], [remaining], [rank]) VALUES (46, 12, N'Arsenal FC', 8, 3, 1, 27, 12, 26, 2)
INSERT [dbo].[RANKS] ([id_rank], [round], [team], [wins], [draws], [losses], [points], [played], [remaining], [rank]) VALUES (47, 12, N'Liverpool FC', 8, 3, 1, 27, 12, 26, 3)
INSERT [dbo].[RANKS] ([id_rank], [round], [team], [wins], [draws], [losses], [points], [played], [remaining], [rank]) VALUES (48, 12, N'Tottenham Hotspur FC', 8, 2, 2, 26, 12, 26, 4)
INSERT [dbo].[RANKS] ([id_rank], [round], [team], [wins], [draws], [losses], [points], [played], [remaining], [rank]) VALUES (49, 13, N'Arsenal FC', 9, 3, 1, 30, 13, 25, 1)
INSERT [dbo].[RANKS] ([id_rank], [round], [team], [wins], [draws], [losses], [points], [played], [remaining], [rank]) VALUES (50, 13, N'Manchester City FC', 9, 2, 2, 29, 13, 25, 2)
INSERT [dbo].[RANKS] ([id_rank], [round], [team], [wins], [draws], [losses], [points], [played], [remaining], [rank]) VALUES (51, 13, N'Aston Villa FC', 9, 1, 3, 28, 13, 25, 3)
INSERT [dbo].[RANKS] ([id_rank], [round], [team], [wins], [draws], [losses], [points], [played], [remaining], [rank]) VALUES (52, 13, N'Liverpool FC', 8, 4, 1, 28, 13, 25, 4)
INSERT [dbo].[RANKS] ([id_rank], [round], [team], [wins], [draws], [losses], [points], [played], [remaining], [rank]) VALUES (53, 14, N'Arsenal FC', 10, 3, 1, 33, 14, 24, 1)
INSERT [dbo].[RANKS] ([id_rank], [round], [team], [wins], [draws], [losses], [points], [played], [remaining], [rank]) VALUES (54, 14, N'Liverpool FC', 9, 4, 1, 31, 14, 24, 2)
INSERT [dbo].[RANKS] ([id_rank], [round], [team], [wins], [draws], [losses], [points], [played], [remaining], [rank]) VALUES (55, 14, N'Manchester City FC', 9, 3, 2, 30, 14, 24, 3)
INSERT [dbo].[RANKS] ([id_rank], [round], [team], [wins], [draws], [losses], [points], [played], [remaining], [rank]) VALUES (56, 14, N'Aston Villa FC', 9, 2, 3, 29, 14, 24, 4)
INSERT [dbo].[RANKS] ([id_rank], [round], [team], [wins], [draws], [losses], [points], [played], [remaining], [rank]) VALUES (57, 15, N'Arsenal FC', 11, 3, 1, 36, 15, 23, 1)
INSERT [dbo].[RANKS] ([id_rank], [round], [team], [wins], [draws], [losses], [points], [played], [remaining], [rank]) VALUES (58, 15, N'Liverpool FC', 10, 4, 1, 34, 15, 23, 2)
INSERT [dbo].[RANKS] ([id_rank], [round], [team], [wins], [draws], [losses], [points], [played], [remaining], [rank]) VALUES (59, 15, N'Aston Villa FC', 10, 2, 3, 32, 15, 23, 3)
INSERT [dbo].[RANKS] ([id_rank], [round], [team], [wins], [draws], [losses], [points], [played], [remaining], [rank]) VALUES (60, 15, N'Manchester City FC', 9, 3, 3, 30, 15, 23, 4)
INSERT [dbo].[RANKS] ([id_rank], [round], [team], [wins], [draws], [losses], [points], [played], [remaining], [rank]) VALUES (61, 16, N'Liverpool FC', 11, 4, 1, 37, 16, 22, 1)
INSERT [dbo].[RANKS] ([id_rank], [round], [team], [wins], [draws], [losses], [points], [played], [remaining], [rank]) VALUES (62, 16, N'Arsenal FC', 11, 3, 2, 36, 16, 22, 2)
INSERT [dbo].[RANKS] ([id_rank], [round], [team], [wins], [draws], [losses], [points], [played], [remaining], [rank]) VALUES (63, 16, N'Aston Villa FC', 11, 2, 3, 35, 16, 22, 3)
INSERT [dbo].[RANKS] ([id_rank], [round], [team], [wins], [draws], [losses], [points], [played], [remaining], [rank]) VALUES (64, 16, N'Manchester City FC', 10, 3, 3, 33, 16, 22, 4)
INSERT [dbo].[RANKS] ([id_rank], [round], [team], [wins], [draws], [losses], [points], [played], [remaining], [rank]) VALUES (65, 17, N'Arsenal FC', 12, 3, 2, 39, 17, 21, 1)
INSERT [dbo].[RANKS] ([id_rank], [round], [team], [wins], [draws], [losses], [points], [played], [remaining], [rank]) VALUES (66, 17, N'Aston Villa FC', 12, 2, 3, 38, 17, 21, 2)
INSERT [dbo].[RANKS] ([id_rank], [round], [team], [wins], [draws], [losses], [points], [played], [remaining], [rank]) VALUES (67, 17, N'Liverpool FC', 11, 5, 1, 38, 17, 21, 3)
INSERT [dbo].[RANKS] ([id_rank], [round], [team], [wins], [draws], [losses], [points], [played], [remaining], [rank]) VALUES (68, 17, N'Manchester City FC', 10, 4, 3, 34, 17, 21, 4)
INSERT [dbo].[RANKS] ([id_rank], [round], [team], [wins], [draws], [losses], [points], [played], [remaining], [rank]) VALUES (69, 18, N'Arsenal FC', 12, 4, 2, 40, 18, 20, 1)
INSERT [dbo].[RANKS] ([id_rank], [round], [team], [wins], [draws], [losses], [points], [played], [remaining], [rank]) VALUES (70, 18, N'Aston Villa FC', 12, 3, 3, 39, 18, 20, 2)
INSERT [dbo].[RANKS] ([id_rank], [round], [team], [wins], [draws], [losses], [points], [played], [remaining], [rank]) VALUES (71, 18, N'Liverpool FC', 11, 6, 1, 39, 18, 20, 3)
INSERT [dbo].[RANKS] ([id_rank], [round], [team], [wins], [draws], [losses], [points], [played], [remaining], [rank]) VALUES (72, 18, N'Manchester City FC', 11, 4, 3, 37, 18, 20, 4)
INSERT [dbo].[RANKS] ([id_rank], [round], [team], [wins], [draws], [losses], [points], [played], [remaining], [rank]) VALUES (73, 19, N'Liverpool FC', 12, 6, 1, 42, 19, 19, 1)
INSERT [dbo].[RANKS] ([id_rank], [round], [team], [wins], [draws], [losses], [points], [played], [remaining], [rank]) VALUES (74, 19, N'Manchester City FC', 12, 4, 3, 40, 19, 19, 2)
INSERT [dbo].[RANKS] ([id_rank], [round], [team], [wins], [draws], [losses], [points], [played], [remaining], [rank]) VALUES (75, 19, N'Arsenal FC', 12, 4, 3, 40, 19, 19, 3)
INSERT [dbo].[RANKS] ([id_rank], [round], [team], [wins], [draws], [losses], [points], [played], [remaining], [rank]) VALUES (76, 19, N'Aston Villa FC', 12, 3, 4, 39, 19, 19, 4)
INSERT [dbo].[RANKS] ([id_rank], [round], [team], [wins], [draws], [losses], [points], [played], [remaining], [rank]) VALUES (77, 20, N'Liverpool FC', 13, 6, 1, 45, 20, 18, 1)
INSERT [dbo].[RANKS] ([id_rank], [round], [team], [wins], [draws], [losses], [points], [played], [remaining], [rank]) VALUES (78, 20, N'Manchester City FC', 13, 4, 3, 43, 20, 18, 2)
INSERT [dbo].[RANKS] ([id_rank], [round], [team], [wins], [draws], [losses], [points], [played], [remaining], [rank]) VALUES (79, 20, N'Aston Villa FC', 13, 3, 4, 42, 20, 18, 3)
INSERT [dbo].[RANKS] ([id_rank], [round], [team], [wins], [draws], [losses], [points], [played], [remaining], [rank]) VALUES (80, 20, N'Arsenal FC', 12, 4, 4, 40, 20, 18, 4)
INSERT [dbo].[RANKS] ([id_rank], [round], [team], [wins], [draws], [losses], [points], [played], [remaining], [rank]) VALUES (81, 21, N'Liverpool FC', 14, 6, 1, 48, 21, 17, 1)
INSERT [dbo].[RANKS] ([id_rank], [round], [team], [wins], [draws], [losses], [points], [played], [remaining], [rank]) VALUES (82, 21, N'Manchester City FC', 14, 4, 3, 46, 21, 17, 2)
INSERT [dbo].[RANKS] ([id_rank], [round], [team], [wins], [draws], [losses], [points], [played], [remaining], [rank]) VALUES (83, 21, N'Arsenal FC', 13, 4, 4, 43, 21, 17, 3)
INSERT [dbo].[RANKS] ([id_rank], [round], [team], [wins], [draws], [losses], [points], [played], [remaining], [rank]) VALUES (84, 21, N'Aston Villa FC', 13, 4, 4, 43, 21, 17, 4)
INSERT [dbo].[RANKS] ([id_rank], [round], [team], [wins], [draws], [losses], [points], [played], [remaining], [rank]) VALUES (85, 22, N'Liverpool FC', 15, 6, 1, 51, 22, 16, 1)
INSERT [dbo].[RANKS] ([id_rank], [round], [team], [wins], [draws], [losses], [points], [played], [remaining], [rank]) VALUES (86, 22, N'Manchester City FC', 15, 4, 3, 49, 22, 16, 2)
INSERT [dbo].[RANKS] ([id_rank], [round], [team], [wins], [draws], [losses], [points], [played], [remaining], [rank]) VALUES (87, 22, N'Arsenal FC', 14, 4, 4, 46, 22, 16, 3)
INSERT [dbo].[RANKS] ([id_rank], [round], [team], [wins], [draws], [losses], [points], [played], [remaining], [rank]) VALUES (88, 22, N'Aston Villa FC', 13, 4, 5, 43, 22, 16, 4)
INSERT [dbo].[RANKS] ([id_rank], [round], [team], [wins], [draws], [losses], [points], [played], [remaining], [rank]) VALUES (89, 23, N'Manchester City FC', 16, 4, 3, 52, 23, 15, 1)
INSERT [dbo].[RANKS] ([id_rank], [round], [team], [wins], [draws], [losses], [points], [played], [remaining], [rank]) VALUES (90, 23, N'Liverpool FC', 15, 6, 2, 51, 23, 15, 2)
INSERT [dbo].[RANKS] ([id_rank], [round], [team], [wins], [draws], [losses], [points], [played], [remaining], [rank]) VALUES (91, 23, N'Arsenal FC', 15, 4, 4, 49, 23, 15, 3)
INSERT [dbo].[RANKS] ([id_rank], [round], [team], [wins], [draws], [losses], [points], [played], [remaining], [rank]) VALUES (92, 23, N'Aston Villa FC', 14, 4, 5, 46, 23, 15, 4)
INSERT [dbo].[RANKS] ([id_rank], [round], [team], [wins], [draws], [losses], [points], [played], [remaining], [rank]) VALUES (93, 24, N'Manchester City FC', 17, 4, 3, 55, 24, 14, 1)
INSERT [dbo].[RANKS] ([id_rank], [round], [team], [wins], [draws], [losses], [points], [played], [remaining], [rank]) VALUES (94, 24, N'Liverpool FC', 16, 6, 2, 54, 24, 14, 2)
INSERT [dbo].[RANKS] ([id_rank], [round], [team], [wins], [draws], [losses], [points], [played], [remaining], [rank]) VALUES (95, 24, N'Arsenal FC', 16, 4, 4, 52, 24, 14, 3)
INSERT [dbo].[RANKS] ([id_rank], [round], [team], [wins], [draws], [losses], [points], [played], [remaining], [rank]) VALUES (96, 24, N'Tottenham Hotspur FC', 14, 5, 5, 47, 24, 14, 4)
INSERT [dbo].[RANKS] ([id_rank], [round], [team], [wins], [draws], [losses], [points], [played], [remaining], [rank]) VALUES (97, 25, N'Liverpool FC', 17, 6, 2, 57, 25, 13, 1)
INSERT [dbo].[RANKS] ([id_rank], [round], [team], [wins], [draws], [losses], [points], [played], [remaining], [rank]) VALUES (98, 25, N'Manchester City FC', 17, 5, 3, 56, 25, 13, 2)
INSERT [dbo].[RANKS] ([id_rank], [round], [team], [wins], [draws], [losses], [points], [played], [remaining], [rank]) VALUES (99, 25, N'Arsenal FC', 17, 4, 4, 55, 25, 13, 3)
GO
INSERT [dbo].[RANKS] ([id_rank], [round], [team], [wins], [draws], [losses], [points], [played], [remaining], [rank]) VALUES (100, 25, N'Aston Villa FC', 15, 4, 6, 49, 25, 13, 4)
INSERT [dbo].[RANKS] ([id_rank], [round], [team], [wins], [draws], [losses], [points], [played], [remaining], [rank]) VALUES (101, 26, N'Liverpool FC', 18, 6, 2, 60, 26, 12, 1)
INSERT [dbo].[RANKS] ([id_rank], [round], [team], [wins], [draws], [losses], [points], [played], [remaining], [rank]) VALUES (102, 26, N'Manchester City FC', 18, 5, 3, 59, 26, 12, 2)
INSERT [dbo].[RANKS] ([id_rank], [round], [team], [wins], [draws], [losses], [points], [played], [remaining], [rank]) VALUES (103, 26, N'Arsenal FC', 18, 4, 4, 58, 26, 12, 3)
INSERT [dbo].[RANKS] ([id_rank], [round], [team], [wins], [draws], [losses], [points], [played], [remaining], [rank]) VALUES (104, 26, N'Aston Villa FC', 16, 4, 6, 52, 26, 12, 4)
INSERT [dbo].[RANKS] ([id_rank], [round], [team], [wins], [draws], [losses], [points], [played], [remaining], [rank]) VALUES (105, 27, N'Liverpool FC', 19, 6, 2, 63, 27, 11, 1)
INSERT [dbo].[RANKS] ([id_rank], [round], [team], [wins], [draws], [losses], [points], [played], [remaining], [rank]) VALUES (106, 27, N'Manchester City FC', 19, 5, 3, 62, 27, 11, 2)
INSERT [dbo].[RANKS] ([id_rank], [round], [team], [wins], [draws], [losses], [points], [played], [remaining], [rank]) VALUES (107, 27, N'Arsenal FC', 19, 4, 4, 61, 27, 11, 3)
INSERT [dbo].[RANKS] ([id_rank], [round], [team], [wins], [draws], [losses], [points], [played], [remaining], [rank]) VALUES (108, 27, N'Aston Villa FC', 17, 4, 6, 55, 27, 11, 4)
INSERT [dbo].[RANKS] ([id_rank], [round], [team], [wins], [draws], [losses], [points], [played], [remaining], [rank]) VALUES (109, 28, N'Arsenal FC', 20, 4, 4, 64, 28, 10, 1)
INSERT [dbo].[RANKS] ([id_rank], [round], [team], [wins], [draws], [losses], [points], [played], [remaining], [rank]) VALUES (110, 28, N'Liverpool FC', 19, 7, 2, 64, 28, 10, 2)
INSERT [dbo].[RANKS] ([id_rank], [round], [team], [wins], [draws], [losses], [points], [played], [remaining], [rank]) VALUES (111, 28, N'Manchester City FC', 19, 6, 3, 63, 28, 10, 3)
INSERT [dbo].[RANKS] ([id_rank], [round], [team], [wins], [draws], [losses], [points], [played], [remaining], [rank]) VALUES (112, 28, N'Aston Villa FC', 17, 4, 7, 55, 28, 10, 4)
INSERT [dbo].[RANKS] ([id_rank], [round], [team], [wins], [draws], [losses], [points], [played], [remaining], [rank]) VALUES (113, 29, N'Arsenal FC', 21, 4, 4, 67, 29, 9, 1)
INSERT [dbo].[RANKS] ([id_rank], [round], [team], [wins], [draws], [losses], [points], [played], [remaining], [rank]) VALUES (114, 29, N'Manchester City FC', 20, 6, 3, 66, 29, 9, 2)
INSERT [dbo].[RANKS] ([id_rank], [round], [team], [wins], [draws], [losses], [points], [played], [remaining], [rank]) VALUES (115, 29, N'Liverpool FC', 19, 7, 3, 64, 29, 9, 3)
INSERT [dbo].[RANKS] ([id_rank], [round], [team], [wins], [draws], [losses], [points], [played], [remaining], [rank]) VALUES (116, 29, N'Aston Villa FC', 17, 5, 7, 56, 29, 9, 4)
INSERT [dbo].[RANKS] ([id_rank], [round], [team], [wins], [draws], [losses], [points], [played], [remaining], [rank]) VALUES (117, 30, N'Arsenal FC', 21, 5, 4, 68, 30, 8, 1)
INSERT [dbo].[RANKS] ([id_rank], [round], [team], [wins], [draws], [losses], [points], [played], [remaining], [rank]) VALUES (118, 30, N'Manchester City FC', 20, 7, 3, 67, 30, 8, 2)
INSERT [dbo].[RANKS] ([id_rank], [round], [team], [wins], [draws], [losses], [points], [played], [remaining], [rank]) VALUES (119, 30, N'Liverpool FC', 20, 7, 3, 67, 30, 8, 3)
INSERT [dbo].[RANKS] ([id_rank], [round], [team], [wins], [draws], [losses], [points], [played], [remaining], [rank]) VALUES (120, 30, N'Aston Villa FC', 18, 5, 7, 59, 30, 8, 4)
INSERT [dbo].[RANKS] ([id_rank], [round], [team], [wins], [draws], [losses], [points], [played], [remaining], [rank]) VALUES (121, 31, N'Arsenal FC', 22, 5, 4, 71, 31, 7, 1)
INSERT [dbo].[RANKS] ([id_rank], [round], [team], [wins], [draws], [losses], [points], [played], [remaining], [rank]) VALUES (122, 31, N'Manchester City FC', 21, 7, 3, 70, 31, 7, 2)
INSERT [dbo].[RANKS] ([id_rank], [round], [team], [wins], [draws], [losses], [points], [played], [remaining], [rank]) VALUES (123, 31, N'Liverpool FC', 21, 7, 3, 70, 31, 7, 3)
INSERT [dbo].[RANKS] ([id_rank], [round], [team], [wins], [draws], [losses], [points], [played], [remaining], [rank]) VALUES (124, 31, N'Aston Villa FC', 18, 5, 8, 59, 31, 7, 4)
INSERT [dbo].[RANKS] ([id_rank], [round], [team], [wins], [draws], [losses], [points], [played], [remaining], [rank]) VALUES (125, 32, N'Arsenal FC', 23, 5, 4, 74, 32, 6, 1)
INSERT [dbo].[RANKS] ([id_rank], [round], [team], [wins], [draws], [losses], [points], [played], [remaining], [rank]) VALUES (126, 32, N'Manchester City FC', 22, 7, 3, 73, 32, 6, 2)
INSERT [dbo].[RANKS] ([id_rank], [round], [team], [wins], [draws], [losses], [points], [played], [remaining], [rank]) VALUES (127, 32, N'Liverpool FC', 21, 8, 3, 71, 32, 6, 3)
INSERT [dbo].[RANKS] ([id_rank], [round], [team], [wins], [draws], [losses], [points], [played], [remaining], [rank]) VALUES (128, 32, N'Aston Villa FC', 18, 6, 8, 60, 32, 6, 4)
INSERT [dbo].[RANKS] ([id_rank], [round], [team], [wins], [draws], [losses], [points], [played], [remaining], [rank]) VALUES (129, 33, N'Manchester City FC', 23, 7, 3, 76, 33, 5, 1)
INSERT [dbo].[RANKS] ([id_rank], [round], [team], [wins], [draws], [losses], [points], [played], [remaining], [rank]) VALUES (130, 33, N'Arsenal FC', 23, 5, 5, 74, 33, 5, 2)
INSERT [dbo].[RANKS] ([id_rank], [round], [team], [wins], [draws], [losses], [points], [played], [remaining], [rank]) VALUES (131, 33, N'Liverpool FC', 21, 8, 4, 71, 33, 5, 3)
INSERT [dbo].[RANKS] ([id_rank], [round], [team], [wins], [draws], [losses], [points], [played], [remaining], [rank]) VALUES (132, 33, N'Aston Villa FC', 19, 6, 8, 63, 33, 5, 4)
INSERT [dbo].[RANKS] ([id_rank], [round], [team], [wins], [draws], [losses], [points], [played], [remaining], [rank]) VALUES (133, 34, N'Manchester City FC', 24, 7, 3, 79, 34, 4, 1)
INSERT [dbo].[RANKS] ([id_rank], [round], [team], [wins], [draws], [losses], [points], [played], [remaining], [rank]) VALUES (134, 34, N'Arsenal FC', 24, 5, 5, 77, 34, 4, 2)
INSERT [dbo].[RANKS] ([id_rank], [round], [team], [wins], [draws], [losses], [points], [played], [remaining], [rank]) VALUES (135, 34, N'Liverpool FC', 22, 8, 4, 74, 34, 4, 3)
INSERT [dbo].[RANKS] ([id_rank], [round], [team], [wins], [draws], [losses], [points], [played], [remaining], [rank]) VALUES (136, 34, N'Aston Villa FC', 20, 6, 8, 66, 34, 4, 4)
INSERT [dbo].[RANKS] ([id_rank], [round], [team], [wins], [draws], [losses], [points], [played], [remaining], [rank]) VALUES (137, 35, N'Manchester City FC', 25, 7, 3, 82, 35, 3, 1)
INSERT [dbo].[RANKS] ([id_rank], [round], [team], [wins], [draws], [losses], [points], [played], [remaining], [rank]) VALUES (138, 35, N'Arsenal FC', 25, 5, 5, 80, 35, 3, 2)
INSERT [dbo].[RANKS] ([id_rank], [round], [team], [wins], [draws], [losses], [points], [played], [remaining], [rank]) VALUES (139, 35, N'Liverpool FC', 22, 9, 4, 75, 35, 3, 3)
INSERT [dbo].[RANKS] ([id_rank], [round], [team], [wins], [draws], [losses], [points], [played], [remaining], [rank]) VALUES (140, 35, N'Aston Villa FC', 20, 7, 8, 67, 35, 3, 4)
INSERT [dbo].[RANKS] ([id_rank], [round], [team], [wins], [draws], [losses], [points], [played], [remaining], [rank]) VALUES (141, 36, N'Manchester City FC', 26, 7, 3, 85, 36, 2, 1)
INSERT [dbo].[RANKS] ([id_rank], [round], [team], [wins], [draws], [losses], [points], [played], [remaining], [rank]) VALUES (142, 36, N'Arsenal FC', 26, 5, 5, 83, 36, 2, 2)
INSERT [dbo].[RANKS] ([id_rank], [round], [team], [wins], [draws], [losses], [points], [played], [remaining], [rank]) VALUES (143, 36, N'Liverpool FC', 23, 9, 4, 78, 36, 2, 3)
INSERT [dbo].[RANKS] ([id_rank], [round], [team], [wins], [draws], [losses], [points], [played], [remaining], [rank]) VALUES (144, 36, N'Aston Villa FC', 20, 7, 9, 67, 36, 2, 4)
INSERT [dbo].[RANKS] ([id_rank], [round], [team], [wins], [draws], [losses], [points], [played], [remaining], [rank]) VALUES (145, 37, N'Manchester City FC', 27, 7, 3, 88, 37, 1, 1)
INSERT [dbo].[RANKS] ([id_rank], [round], [team], [wins], [draws], [losses], [points], [played], [remaining], [rank]) VALUES (146, 37, N'Arsenal FC', 27, 5, 5, 86, 37, 1, 2)
INSERT [dbo].[RANKS] ([id_rank], [round], [team], [wins], [draws], [losses], [points], [played], [remaining], [rank]) VALUES (147, 37, N'Liverpool FC', 23, 10, 4, 79, 37, 1, 3)
INSERT [dbo].[RANKS] ([id_rank], [round], [team], [wins], [draws], [losses], [points], [played], [remaining], [rank]) VALUES (148, 37, N'Aston Villa FC', 20, 8, 9, 68, 37, 1, 4)
INSERT [dbo].[RANKS] ([id_rank], [round], [team], [wins], [draws], [losses], [points], [played], [remaining], [rank]) VALUES (149, 38, N'Manchester City FC', 28, 7, 3, 91, 38, 0, 1)
INSERT [dbo].[RANKS] ([id_rank], [round], [team], [wins], [draws], [losses], [points], [played], [remaining], [rank]) VALUES (150, 38, N'Arsenal FC', 28, 5, 5, 89, 38, 0, 2)
INSERT [dbo].[RANKS] ([id_rank], [round], [team], [wins], [draws], [losses], [points], [played], [remaining], [rank]) VALUES (151, 38, N'Liverpool FC', 24, 10, 4, 82, 38, 0, 3)
INSERT [dbo].[RANKS] ([id_rank], [round], [team], [wins], [draws], [losses], [points], [played], [remaining], [rank]) VALUES (152, 38, N'Aston Villa FC', 20, 8, 10, 68, 38, 0, 4)
SET IDENTITY_INSERT [dbo].[RANKS] OFF
GO
/****** Object:  StoredProcedure [dbo].[lietke]    Script Date: 5/23/2024 5:12:51 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[lietke]
    @action varchar(10) = null
AS
BEGIN
    SET NOCOUNT ON;

    DECLARE @json NVARCHAR(MAX);

    SELECT @json = (
        SELECT  
            [round],
            [team],
            [wins],
            [draws],
            [losses],
            [points],
            [played],
            [remaining],
            [rank]
        FROM RANKS
        ORDER BY [id_rank] DESC
        FOR JSON AUTO
    );

    SELECT @json AS [data];
END
GO
/****** Object:  StoredProcedure [dbo].[thongke]    Script Date: 5/23/2024 5:12:51 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[thongke]
AS
BEGIN
    DECLARE @round INT;
    
    -- Lấy round mới nhất
    SELECT TOP 1 @round = round
    FROM RANKS
    ORDER BY round DESC;
    
    -- Lấy thông tin của 5 đội ở round mới nhất dưới dạng JSON
    SELECT TOP 4 *
    FROM RANKS
    WHERE round = @round
    ORDER BY points DESC
    FOR JSON AUTO;
END;
GO
USE [master]
GO
ALTER DATABASE [PYTHON] SET  READ_WRITE 
GO
