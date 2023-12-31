USE [Ych_PR_KM]
GO
/****** Object:  Table [dbo].[Academics]    Script Date: 15.11.2023 15:10:46 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Academics](
	[Id_academics] [int] NOT NULL,
	[FIO] [nvarchar](100) NULL,
	[Date_Born] [date] NULL,
	[Id_Specialization] [int] NULL,
	[Year_rank] [int] NULL,
 CONSTRAINT [PK_Academics] PRIMARY KEY CLUSTERED 
(
	[Id_academics] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Animal_Kornilova_Marushkina]    Script Date: 15.11.2023 15:10:46 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Animal_Kornilova_Marushkina](
	[ID] [int] NOT NULL,
	[Otrad] [nvarchar](40) NULL,
 CONSTRAINT [Animal_Kornilova_MarushkinaID] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Application]    Script Date: 15.11.2023 15:10:46 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Application](
	[Id_Application] [int] NOT NULL,
	[Id_Speciality] [nchar](10) NULL,
	[Id_Discipline] [int] NULL,
 CONSTRAINT [PK_Application] PRIMARY KEY CLUSTERED 
(
	[Id_Application] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Boss]    Script Date: 15.11.2023 15:10:46 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Boss](
	[Id_Boss] [int] NOT NULL,
	[Rang] [int] NULL,
 CONSTRAINT [PK_Boss] PRIMARY KEY CLUSTERED 
(
	[Id_Boss] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Continent]    Script Date: 15.11.2023 15:10:46 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Continent](
	[Id_Continent] [int] NOT NULL,
	[Name] [nvarchar](50) NULL,
 CONSTRAINT [PK_Continent] PRIMARY KEY CLUSTERED 
(
	[Id_Continent] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Control_Kornilova_Marushkina]    Script Date: 15.11.2023 15:10:46 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Control_Kornilova_Marushkina](
	[ID] [int] NOT NULL,
	[Surname] [nvarchar](40) NULL,
 CONSTRAINT [Control_Kornilova_MarushkinaID] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Countries_Kornilova_Marushkina]    Script Date: 15.11.2023 15:10:46 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Countries_Kornilova_Marushkina](
	[ID] [int] NOT NULL,
	[Square] [int] NOT NULL,
 CONSTRAINT [Countries_Kornilova_MarushkinaID] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Country]    Script Date: 15.11.2023 15:10:46 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Country](
	[Id_Country] [int] NOT NULL,
	[Name_Country] [nvarchar](50) NULL,
	[Capital] [nvarchar](50) NULL,
	[Square] [float] NULL,
	[Population] [int] NULL,
	[Id_Continent] [int] NULL,
	[Type_Control] [int] NULL,
 CONSTRAINT [PK_Country] PRIMARY KEY CLUSTERED 
(
	[Id_Country] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Degree]    Script Date: 15.11.2023 15:10:46 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Degree](
	[Id_Degree] [int] NOT NULL,
	[Name_Degree] [nvarchar](50) NULL,
 CONSTRAINT [PK_Degree] PRIMARY KEY CLUSTERED 
(
	[Id_Degree] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Departament]    Script Date: 15.11.2023 15:10:46 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Departament](
	[Cipher] [nchar](10) NOT NULL,
	[Name_Departament] [nvarchar](50) NULL,
	[AbbreviationID] [nchar](10) NULL,
 CONSTRAINT [PK_Departament] PRIMARY KEY CLUSTERED 
(
	[Cipher] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Discipline]    Script Date: 15.11.2023 15:10:46 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Discipline](
	[Id_Discipline] [int] NOT NULL,
	[Volume] [int] NULL,
	[Name_Discipline] [nvarchar](50) NULL,
	[CipherID] [nchar](10) NULL,
 CONSTRAINT [PK_Discipline] PRIMARY KEY CLUSTERED 
(
	[Id_Discipline] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Employee]    Script Date: 15.11.2023 15:10:46 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Employee](
	[Id_Number] [int] NOT NULL,
	[CipherID] [nchar](10) NULL,
	[LastName] [nvarchar](50) NULL,
	[Id_Pozition] [int] NULL,
	[Id_Boss] [int] NULL,
	[Id_Rank] [int] NULL,
	[Id_Degree] [int] NULL,
 CONSTRAINT [PK_Employee] PRIMARY KEY CLUSTERED 
(
	[Id_Number] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Engineer]    Script Date: 15.11.2023 15:10:46 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Engineer](
	[Id_Engineer] [int] NOT NULL,
	[Id_Spec] [int] NULL,
 CONSTRAINT [PK_Engineer] PRIMARY KEY CLUSTERED 
(
	[Id_Engineer] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Exame]    Script Date: 15.11.2023 15:10:46 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Exame](
	[Id_Exam] [int] NOT NULL,
	[Date_Exam] [date] NULL,
	[Id_Discipline] [int] NULL,
	[Id_Student] [int] NULL,
	[Id_Teacher] [int] NULL,
	[Auditoria] [nchar](10) NULL,
	[Grade] [int] NULL,
 CONSTRAINT [PK_Exame] PRIMARY KEY CLUSTERED 
(
	[Id_Exam] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Faculty]    Script Date: 15.11.2023 15:10:46 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Faculty](
	[Abbreviation] [nchar](10) NOT NULL,
	[Name_Faculty] [nvarchar](50) NULL,
 CONSTRAINT [PK_Faculty] PRIMARY KEY CLUSTERED 
(
	[Abbreviation] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Flowers_Kornilova_Marushkina]    Script Date: 15.11.2023 15:10:46 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Flowers_Kornilova_Marushkina](
	[ID] [int] NOT NULL,
	[Class] [nvarchar](40) NULL,
 CONSTRAINT [Flowers_Kornilova_MarushkinaID] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Learner]    Script Date: 15.11.2023 15:10:46 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Learner](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[LastName] [varchar](50) NOT NULL,
	[SubjectL] [varchar](50) NOT NULL,
	[School] [varchar](50) NOT NULL,
	[Scores] [float] NULL,
PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Pozition]    Script Date: 15.11.2023 15:10:46 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Pozition](
	[Id_Pozition] [int] NOT NULL,
	[Name_Pozition] [nvarchar](50) NULL,
	[Salary] [money] NULL,
 CONSTRAINT [PK_Pozition] PRIMARY KEY CLUSTERED 
(
	[Id_Pozition] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Rank]    Script Date: 15.11.2023 15:10:46 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Rank](
	[Id_Rank] [int] NOT NULL,
	[Name_Rank] [nvarchar](50) NULL,
 CONSTRAINT [PK_Rank] PRIMARY KEY CLUSTERED 
(
	[Id_Rank] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Spec]    Script Date: 15.11.2023 15:10:46 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Spec](
	[Id_Spec] [int] NOT NULL,
	[Name_Spec] [nvarchar](50) NULL,
 CONSTRAINT [PK_Spec] PRIMARY KEY CLUSTERED 
(
	[Id_Spec] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Speciality]    Script Date: 15.11.2023 15:10:46 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Speciality](
	[Id_Speciality] [nchar](10) NOT NULL,
	[Name_Speciality] [nvarchar](50) NULL,
	[CipherID] [nchar](10) NULL,
 CONSTRAINT [PK_Speciality] PRIMARY KEY CLUSTERED 
(
	[Id_Speciality] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Specialization]    Script Date: 15.11.2023 15:10:46 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Specialization](
	[Id_Spezialization] [int] NOT NULL,
	[Name] [nvarchar](50) NULL,
 CONSTRAINT [PK_Specialization] PRIMARY KEY CLUSTERED 
(
	[Id_Spezialization] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Student]    Script Date: 15.11.2023 15:10:46 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Student](
	[Id_Student] [int] NOT NULL,
	[Id_Speciality] [nchar](10) NULL,
	[LastName_Student] [nvarchar](50) NULL,
 CONSTRAINT [PK_Student] PRIMARY KEY CLUSTERED 
(
	[Id_Student] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Type_Control]    Script Date: 15.11.2023 15:10:46 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Type_Control](
	[Id_Control] [int] NOT NULL,
	[Type] [nvarchar](50) NULL,
 CONSTRAINT [PK_Type_Control] PRIMARY KEY CLUSTERED 
(
	[Id_Control] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[View_6]    Script Date: 15.11.2023 15:10:46 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[View_6](
	[Номер недели] [int] NULL,
	[Количество экзаменов] [int] NULL,
	[Количество студентов] [int] NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[View_7]    Script Date: 15.11.2023 15:10:46 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[View_7](
	[Continent] [varchar](50) NULL,
	[Square] [float] NULL,
	[Square1] [float] NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Гимназисты]    Script Date: 15.11.2023 15:10:46 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Гимназисты](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[LastName] [varchar](50) NOT NULL,
	[SubjectL] [varchar](50) NOT NULL,
	[School] [varchar](50) NOT NULL,
	[Scores] [float] NULL
) ON [PRIMARY]
GO
INSERT [dbo].[Academics] ([Id_academics], [FIO], [Date_Born], [Id_Specialization], [Year_rank]) VALUES (1, N'Аничков Николай Николаевич', CAST(N'1885-11-03' AS Date), 1, 1939)
INSERT [dbo].[Academics] ([Id_academics], [FIO], [Date_Born], [Id_Specialization], [Year_rank]) VALUES (2, N'Бартольд Василий Владимирович', CAST(N'1869-11-15' AS Date), 2, 1913)
INSERT [dbo].[Academics] ([Id_academics], [FIO], [Date_Born], [Id_Specialization], [Year_rank]) VALUES (3, N'Белопольский Аристарх Аполлонович', CAST(N'1854-07-13' AS Date), 3, 1903)
INSERT [dbo].[Academics] ([Id_academics], [FIO], [Date_Born], [Id_Specialization], [Year_rank]) VALUES (4, N'Бородин Иван Парфеньевич', CAST(N'1847-01-30' AS Date), 4, 1902)
INSERT [dbo].[Academics] ([Id_academics], [FIO], [Date_Born], [Id_Specialization], [Year_rank]) VALUES (5, N'Вальден Павел Иванович', CAST(N'1863-07-26' AS Date), 5, 1910)
INSERT [dbo].[Academics] ([Id_academics], [FIO], [Date_Born], [Id_Specialization], [Year_rank]) VALUES (6, N'Вернадский Владимир Иванович', CAST(N'1863-03-12' AS Date), 6, 1908)
INSERT [dbo].[Academics] ([Id_academics], [FIO], [Date_Born], [Id_Specialization], [Year_rank]) VALUES (7, N'Виноградов Павел Гаврилович', CAST(N'1854-11-30' AS Date), 2, 1914)
INSERT [dbo].[Academics] ([Id_academics], [FIO], [Date_Born], [Id_Specialization], [Year_rank]) VALUES (8, N'Ипатьев Владимир Николаевич', CAST(N'1867-11-21' AS Date), 7, 1916)
INSERT [dbo].[Academics] ([Id_academics], [FIO], [Date_Born], [Id_Specialization], [Year_rank]) VALUES (9, N'Истрин Василий Михайлович', CAST(N'1865-02-22' AS Date), 8, 1907)
INSERT [dbo].[Academics] ([Id_academics], [FIO], [Date_Born], [Id_Specialization], [Year_rank]) VALUES (10, N'Карпинский Александр Петрович', CAST(N'1847-01-07' AS Date), 9, 1889)
INSERT [dbo].[Academics] ([Id_academics], [FIO], [Date_Born], [Id_Specialization], [Year_rank]) VALUES (11, N'Коковцов Павел Константинович', CAST(N'1861-07-01' AS Date), 2, 1906)
INSERT [dbo].[Academics] ([Id_academics], [FIO], [Date_Born], [Id_Specialization], [Year_rank]) VALUES (12, N'Курнаков Николай Семёнович', CAST(N'1860-12-06' AS Date), 7, 1913)
INSERT [dbo].[Academics] ([Id_academics], [FIO], [Date_Born], [Id_Specialization], [Year_rank]) VALUES (13, N'Марр Николай Яковлевич', CAST(N'1865-01-06' AS Date), 10, 1912)
INSERT [dbo].[Academics] ([Id_academics], [FIO], [Date_Born], [Id_Specialization], [Year_rank]) VALUES (14, N'Насонов Николай Викторович', CAST(N'1855-02-26' AS Date), 11, 1906)
INSERT [dbo].[Academics] ([Id_academics], [FIO], [Date_Born], [Id_Specialization], [Year_rank]) VALUES (15, N'Ольденбург Сергей Фёдорович', CAST(N'1863-09-26' AS Date), 2, 1903)
INSERT [dbo].[Academics] ([Id_academics], [FIO], [Date_Born], [Id_Specialization], [Year_rank]) VALUES (16, N'Павлов Иван Петрович', CAST(N'1849-09-26' AS Date), 12, 1907)
INSERT [dbo].[Academics] ([Id_academics], [FIO], [Date_Born], [Id_Specialization], [Year_rank]) VALUES (17, N'Перетц Владимир Николаевич', CAST(N'1870-01-31' AS Date), 8, 1914)
INSERT [dbo].[Academics] ([Id_academics], [FIO], [Date_Born], [Id_Specialization], [Year_rank]) VALUES (18, N'Соболевский Алексей Иванович', CAST(N'1857-01-07' AS Date), 10, 1900)
INSERT [dbo].[Academics] ([Id_academics], [FIO], [Date_Born], [Id_Specialization], [Year_rank]) VALUES (19, N'Стеклов Владимир Андреевич', CAST(N'1864-01-09' AS Date), 13, 1912)
GO
INSERT [dbo].[Application] ([Id_Application], [Id_Speciality], [Id_Discipline]) VALUES (1, N'01.03.04  ', 101)
INSERT [dbo].[Application] ([Id_Application], [Id_Speciality], [Id_Discipline]) VALUES (2, N'01.03.04  ', 205)
INSERT [dbo].[Application] ([Id_Application], [Id_Speciality], [Id_Discipline]) VALUES (3, N'01.03.04  ', 209)
INSERT [dbo].[Application] ([Id_Application], [Id_Speciality], [Id_Discipline]) VALUES (4, N'09.03.02  ', 101)
INSERT [dbo].[Application] ([Id_Application], [Id_Speciality], [Id_Discipline]) VALUES (5, N'09.03.02  ', 102)
INSERT [dbo].[Application] ([Id_Application], [Id_Speciality], [Id_Discipline]) VALUES (6, N'09.03.02  ', 103)
INSERT [dbo].[Application] ([Id_Application], [Id_Speciality], [Id_Discipline]) VALUES (7, N'09.03.02  ', 202)
INSERT [dbo].[Application] ([Id_Application], [Id_Speciality], [Id_Discipline]) VALUES (8, N'09.03.02  ', 205)
INSERT [dbo].[Application] ([Id_Application], [Id_Speciality], [Id_Discipline]) VALUES (9, N'09.03.02  ', 209)
INSERT [dbo].[Application] ([Id_Application], [Id_Speciality], [Id_Discipline]) VALUES (10, N'09.03.03  ', 101)
INSERT [dbo].[Application] ([Id_Application], [Id_Speciality], [Id_Discipline]) VALUES (11, N'09.03.03  ', 102)
INSERT [dbo].[Application] ([Id_Application], [Id_Speciality], [Id_Discipline]) VALUES (12, N'09.03.03  ', 103)
INSERT [dbo].[Application] ([Id_Application], [Id_Speciality], [Id_Discipline]) VALUES (13, N'09.03.03  ', 202)
INSERT [dbo].[Application] ([Id_Application], [Id_Speciality], [Id_Discipline]) VALUES (14, N'09.03.03  ', 205)
INSERT [dbo].[Application] ([Id_Application], [Id_Speciality], [Id_Discipline]) VALUES (15, N'14.03.02  ', 101)
INSERT [dbo].[Application] ([Id_Application], [Id_Speciality], [Id_Discipline]) VALUES (16, N'14.03.02  ', 102)
INSERT [dbo].[Application] ([Id_Application], [Id_Speciality], [Id_Discipline]) VALUES (17, N'14.03.02  ', 103)
INSERT [dbo].[Application] ([Id_Application], [Id_Speciality], [Id_Discipline]) VALUES (18, N'14.03.02  ', 204)
INSERT [dbo].[Application] ([Id_Application], [Id_Speciality], [Id_Discipline]) VALUES (19, N'14.03.02  ', 101)
INSERT [dbo].[Application] ([Id_Application], [Id_Speciality], [Id_Discipline]) VALUES (20, N'38.03.05  ', 103)
INSERT [dbo].[Application] ([Id_Application], [Id_Speciality], [Id_Discipline]) VALUES (21, N'38.03.05  ', 202)
INSERT [dbo].[Application] ([Id_Application], [Id_Speciality], [Id_Discipline]) VALUES (22, N'38.03.05  ', 209)
GO
INSERT [dbo].[Boss] ([Id_Boss], [Rang]) VALUES (101, 15)
INSERT [dbo].[Boss] ([Id_Boss], [Rang]) VALUES (102, 4)
INSERT [dbo].[Boss] ([Id_Boss], [Rang]) VALUES (201, 18)
INSERT [dbo].[Boss] ([Id_Boss], [Rang]) VALUES (202, 5)
INSERT [dbo].[Boss] ([Id_Boss], [Rang]) VALUES (301, 20)
INSERT [dbo].[Boss] ([Id_Boss], [Rang]) VALUES (401, 10)
INSERT [dbo].[Boss] ([Id_Boss], [Rang]) VALUES (402, 12)
INSERT [dbo].[Boss] ([Id_Boss], [Rang]) VALUES (501, 18)
INSERT [dbo].[Boss] ([Id_Boss], [Rang]) VALUES (601, 8)
INSERT [dbo].[Boss] ([Id_Boss], [Rang]) VALUES (602, 8)
GO
INSERT [dbo].[Continent] ([Id_Continent], [Name]) VALUES (1, N'Европа')
INSERT [dbo].[Continent] ([Id_Continent], [Name]) VALUES (2, N'Азия')
INSERT [dbo].[Continent] ([Id_Continent], [Name]) VALUES (3, N'Африка')
INSERT [dbo].[Continent] ([Id_Continent], [Name]) VALUES (4, N'Южная Америка')
INSERT [dbo].[Continent] ([Id_Continent], [Name]) VALUES (5, N'Северная Америка')
GO
INSERT [dbo].[Country] ([Id_Country], [Name_Country], [Capital], [Square], [Population], [Id_Continent], [Type_Control]) VALUES (1, N'Австрия', N'Вена', 83858, 8741753, 1, 4)
INSERT [dbo].[Country] ([Id_Country], [Name_Country], [Capital], [Square], [Population], [Id_Continent], [Type_Control]) VALUES (2, N'Азербайджан', N'Баку', 86600, 9705600, 2, NULL)
INSERT [dbo].[Country] ([Id_Country], [Name_Country], [Capital], [Square], [Population], [Id_Continent], [Type_Control]) VALUES (3, N'Албания', N'Тирана', 28748, 2866026, 1, NULL)
INSERT [dbo].[Country] ([Id_Country], [Name_Country], [Capital], [Square], [Population], [Id_Continent], [Type_Control]) VALUES (4, N'Алжир', N'Алжир', 2381740, 39813722, 3, NULL)
INSERT [dbo].[Country] ([Id_Country], [Name_Country], [Capital], [Square], [Population], [Id_Continent], [Type_Control]) VALUES (5, N'Ангола', N'Луанда', 1246700, 25831000, 3, NULL)
INSERT [dbo].[Country] ([Id_Country], [Name_Country], [Capital], [Square], [Population], [Id_Continent], [Type_Control]) VALUES (6, N'Аргентина', N'Буэнос-Айрес', 2766890, 43847000, 4, NULL)
INSERT [dbo].[Country] ([Id_Country], [Name_Country], [Capital], [Square], [Population], [Id_Continent], [Type_Control]) VALUES (7, N'Афганистан', N'Кабул', 647500, 29822848, 2, 3)
INSERT [dbo].[Country] ([Id_Country], [Name_Country], [Capital], [Square], [Population], [Id_Continent], [Type_Control]) VALUES (8, N'Бангладеш', N'Дакка', 144000, 160221000, 2, NULL)
INSERT [dbo].[Country] ([Id_Country], [Name_Country], [Capital], [Square], [Population], [Id_Continent], [Type_Control]) VALUES (9, N'Бахрейн', N'Манама', 701, 1397000, 2, NULL)
INSERT [dbo].[Country] ([Id_Country], [Name_Country], [Capital], [Square], [Population], [Id_Continent], [Type_Control]) VALUES (10, N'Белиз', N'Бельмопан', 22966, 377968, 5, NULL)
INSERT [dbo].[Country] ([Id_Country], [Name_Country], [Capital], [Square], [Population], [Id_Continent], [Type_Control]) VALUES (11, N'Белоруссия', N'Минск', 207595, 9498400, 1, NULL)
INSERT [dbo].[Country] ([Id_Country], [Name_Country], [Capital], [Square], [Population], [Id_Continent], [Type_Control]) VALUES (12, N'Бельгия', N'Брюссель', 30528, 11250585, 1, NULL)
INSERT [dbo].[Country] ([Id_Country], [Name_Country], [Capital], [Square], [Population], [Id_Continent], [Type_Control]) VALUES (13, N'Бенин', N'Порто-Ново', 112620, 11167000, 3, NULL)
INSERT [dbo].[Country] ([Id_Country], [Name_Country], [Capital], [Square], [Population], [Id_Continent], [Type_Control]) VALUES (14, N'Болгария', N'София', 110910, 7153784, 1, NULL)
INSERT [dbo].[Country] ([Id_Country], [Name_Country], [Capital], [Square], [Population], [Id_Continent], [Type_Control]) VALUES (15, N'Боливия', N'Сукре', 1098580, 10985059, 4, NULL)
INSERT [dbo].[Country] ([Id_Country], [Name_Country], [Capital], [Square], [Population], [Id_Continent], [Type_Control]) VALUES (16, N'Ботсвана', N'Габороне', 600370, 2209208, 3, NULL)
INSERT [dbo].[Country] ([Id_Country], [Name_Country], [Capital], [Square], [Population], [Id_Continent], [Type_Control]) VALUES (17, N'Бразилия', N'Бразилиа', 8511965, 206081432, 4, NULL)
INSERT [dbo].[Country] ([Id_Country], [Name_Country], [Capital], [Square], [Population], [Id_Continent], [Type_Control]) VALUES (18, N'Буркина-Фасо', N'Уагадугу', 274200, 19034397, 3, NULL)
INSERT [dbo].[Country] ([Id_Country], [Name_Country], [Capital], [Square], [Population], [Id_Continent], [Type_Control]) VALUES (19, N'Бутан', N'Тхимпху', 47000, 784000, 2, NULL)
INSERT [dbo].[Country] ([Id_Country], [Name_Country], [Capital], [Square], [Population], [Id_Continent], [Type_Control]) VALUES (20, N'Великобритания', N'Лондон', 244820, 65341183, 1, 1)
INSERT [dbo].[Country] ([Id_Country], [Name_Country], [Capital], [Square], [Population], [Id_Continent], [Type_Control]) VALUES (21, N'Венгрия', N'Будапешт', 93030, 9830485, 1, NULL)
INSERT [dbo].[Country] ([Id_Country], [Name_Country], [Capital], [Square], [Population], [Id_Continent], [Type_Control]) VALUES (22, N'Венесуэла', N'Каракас', 912050, 31028637, 4, NULL)
INSERT [dbo].[Country] ([Id_Country], [Name_Country], [Capital], [Square], [Population], [Id_Continent], [Type_Control]) VALUES (23, N'Восточный Тимор', N'Дили', 14874, 1167242, 2, NULL)
INSERT [dbo].[Country] ([Id_Country], [Name_Country], [Capital], [Square], [Population], [Id_Continent], [Type_Control]) VALUES (24, N'Вьетнам', N'Ханой', 329560, 91713300, 2, NULL)
INSERT [dbo].[Country] ([Id_Country], [Name_Country], [Capital], [Square], [Population], [Id_Continent], [Type_Control]) VALUES (25, N'Греция', N'Афины', 132, 9280, 1, 4)
INSERT [dbo].[Country] ([Id_Country], [Name_Country], [Capital], [Square], [Population], [Id_Continent], [Type_Control]) VALUES (26, N'Египет', N'Каир', 1001, 38740, 3, 3)
INSERT [dbo].[Country] ([Id_Country], [Name_Country], [Capital], [Square], [Population], [Id_Continent], [Type_Control]) VALUES (27, N'Мальта', N'Валлетта', 0.3, 330, 1, 4)
INSERT [dbo].[Country] ([Id_Country], [Name_Country], [Capital], [Square], [Population], [Id_Continent], [Type_Control]) VALUES (28, N'Мексика', N'Мехико', 1973, 62500, 4, 4)
INSERT [dbo].[Country] ([Id_Country], [Name_Country], [Capital], [Square], [Population], [Id_Continent], [Type_Control]) VALUES (29, N'Монако', N'Монако', 0.2, 25, 1, 1)
INSERT [dbo].[Country] ([Id_Country], [Name_Country], [Capital], [Square], [Population], [Id_Continent], [Type_Control]) VALUES (30, N'Монголия', N'Улан-Батор', 1565, 1555, 2, 4)
INSERT [dbo].[Country] ([Id_Country], [Name_Country], [Capital], [Square], [Population], [Id_Continent], [Type_Control]) VALUES (31, N'Сомали', N'Могадишо', 638, 3350, 3, NULL)
INSERT [dbo].[Country] ([Id_Country], [Name_Country], [Capital], [Square], [Population], [Id_Continent], [Type_Control]) VALUES (32, N'США', N'Вашингтон', 9363, 217700, 4, 3)
INSERT [dbo].[Country] ([Id_Country], [Name_Country], [Capital], [Square], [Population], [Id_Continent], [Type_Control]) VALUES (33, N'Франция', N'Париж', 551, 53183, 1, 3)
INSERT [dbo].[Country] ([Id_Country], [Name_Country], [Capital], [Square], [Population], [Id_Continent], [Type_Control]) VALUES (34, N'Швеция', N'Стокгольм', 450, 8268, 1, 1)
INSERT [dbo].[Country] ([Id_Country], [Name_Country], [Capital], [Square], [Population], [Id_Continent], [Type_Control]) VALUES (35, N'Япония', N'Токио', 372, 114276, 2, 1)
GO
INSERT [dbo].[Degree] ([Id_Degree], [Name_Degree]) VALUES (1, N'д. т.н.')
INSERT [dbo].[Degree] ([Id_Degree], [Name_Degree]) VALUES (2, N'к. ф.-м. н.')
INSERT [dbo].[Degree] ([Id_Degree], [Name_Degree]) VALUES (3, N'к. т.н.')
INSERT [dbo].[Degree] ([Id_Degree], [Name_Degree]) VALUES (4, N'д. ф.-м. н.')
GO
INSERT [dbo].[Departament] ([Cipher], [Name_Departament], [AbbreviationID]) VALUES (N'вм        ', N'Высшая математика', N'ен        ')
INSERT [dbo].[Departament] ([Cipher], [Name_Departament], [AbbreviationID]) VALUES (N'ис        ', N'Информационные системы', N'ит        ')
INSERT [dbo].[Departament] ([Cipher], [Name_Departament], [AbbreviationID]) VALUES (N'мм        ', N'Математическое моделирование', N'фм        ')
INSERT [dbo].[Departament] ([Cipher], [Name_Departament], [AbbreviationID]) VALUES (N'оф        ', N'Общая физика', N'ен        ')
INSERT [dbo].[Departament] ([Cipher], [Name_Departament], [AbbreviationID]) VALUES (N'пи        ', N'Прикладная информатика', N'ит        ')
INSERT [dbo].[Departament] ([Cipher], [Name_Departament], [AbbreviationID]) VALUES (N'эф        ', N'Экспериментальная физика', N'фм        ')
GO
INSERT [dbo].[Discipline] ([Id_Discipline], [Volume], [Name_Discipline], [CipherID]) VALUES (101, 320, N'Математика', N'вм        ')
INSERT [dbo].[Discipline] ([Id_Discipline], [Volume], [Name_Discipline], [CipherID]) VALUES (102, 160, N'Информатика', N'пи        ')
INSERT [dbo].[Discipline] ([Id_Discipline], [Volume], [Name_Discipline], [CipherID]) VALUES (103, 160, N'Физика', N'оф        ')
INSERT [dbo].[Discipline] ([Id_Discipline], [Volume], [Name_Discipline], [CipherID]) VALUES (202, 120, N'Базы данных', N'ис        ')
INSERT [dbo].[Discipline] ([Id_Discipline], [Volume], [Name_Discipline], [CipherID]) VALUES (204, 160, N'Электроника', N'эф        ')
INSERT [dbo].[Discipline] ([Id_Discipline], [Volume], [Name_Discipline], [CipherID]) VALUES (205, 80, N'Программирование', N'пи        ')
INSERT [dbo].[Discipline] ([Id_Discipline], [Volume], [Name_Discipline], [CipherID]) VALUES (209, 80, N'Моделирование', N'мм        ')
GO
INSERT [dbo].[Employee] ([Id_Number], [CipherID], [LastName], [Id_Pozition], [Id_Boss], [Id_Rank], [Id_Degree]) VALUES (101, N'пи        ', N'Прохоров П.П.', 1, 101, 1, 2)
INSERT [dbo].[Employee] ([Id_Number], [CipherID], [LastName], [Id_Pozition], [Id_Boss], [Id_Rank], [Id_Degree]) VALUES (102, N'пи        ', N'Семенов С.С.', 2, 101, 2, 2)
INSERT [dbo].[Employee] ([Id_Number], [CipherID], [LastName], [Id_Pozition], [Id_Boss], [Id_Rank], [Id_Degree]) VALUES (105, N'пи        ', N'Петров П.П.', 2, 101, 2, 3)
INSERT [dbo].[Employee] ([Id_Number], [CipherID], [LastName], [Id_Pozition], [Id_Boss], [Id_Rank], [Id_Degree]) VALUES (153, N'пи        ', N'Сидорова С.С.', 3, 102, NULL, NULL)
INSERT [dbo].[Employee] ([Id_Number], [CipherID], [LastName], [Id_Pozition], [Id_Boss], [Id_Rank], [Id_Degree]) VALUES (201, N'ис        ', N'Андреев А.А.', 1, 201, 1, 4)
INSERT [dbo].[Employee] ([Id_Number], [CipherID], [LastName], [Id_Pozition], [Id_Boss], [Id_Rank], [Id_Degree]) VALUES (202, N'ис        ', N'Борисов Б.Б.', 2, 201, 2, 2)
INSERT [dbo].[Employee] ([Id_Number], [CipherID], [LastName], [Id_Pozition], [Id_Boss], [Id_Rank], [Id_Degree]) VALUES (241, N'ис        ', N'Глухов Г.Г.', 4, 201, NULL, NULL)
INSERT [dbo].[Employee] ([Id_Number], [CipherID], [LastName], [Id_Pozition], [Id_Boss], [Id_Rank], [Id_Degree]) VALUES (242, N'ис        ', N'Чернов Ч.Ч.', 3, 202, NULL, NULL)
INSERT [dbo].[Employee] ([Id_Number], [CipherID], [LastName], [Id_Pozition], [Id_Boss], [Id_Rank], [Id_Degree]) VALUES (301, N'мм        ', N'Басов Б.Б.', 1, 301, 1, 1)
INSERT [dbo].[Employee] ([Id_Number], [CipherID], [LastName], [Id_Pozition], [Id_Boss], [Id_Rank], [Id_Degree]) VALUES (302, N'мм        ', N'Сергеева С.С.', 2, 301, 2, 3)
INSERT [dbo].[Employee] ([Id_Number], [CipherID], [LastName], [Id_Pozition], [Id_Boss], [Id_Rank], [Id_Degree]) VALUES (401, N'оф        ', N'Волков В.В.', 1, 401, 1, 1)
INSERT [dbo].[Employee] ([Id_Number], [CipherID], [LastName], [Id_Pozition], [Id_Boss], [Id_Rank], [Id_Degree]) VALUES (402, N'оф        ', N'Зайцев З.З.', 2, 401, 2, 3)
INSERT [dbo].[Employee] ([Id_Number], [CipherID], [LastName], [Id_Pozition], [Id_Boss], [Id_Rank], [Id_Degree]) VALUES (403, N'оф        ', N'Смирнов С.С.', 5, 401, 3, NULL)
INSERT [dbo].[Employee] ([Id_Number], [CipherID], [LastName], [Id_Pozition], [Id_Boss], [Id_Rank], [Id_Degree]) VALUES (435, N'оф        ', N'Лисин Л.Л.', 4, 402, NULL, NULL)
INSERT [dbo].[Employee] ([Id_Number], [CipherID], [LastName], [Id_Pozition], [Id_Boss], [Id_Rank], [Id_Degree]) VALUES (501, N'вм        ', N'Кузнецов К.К.', 1, 501, 1, 4)
INSERT [dbo].[Employee] ([Id_Number], [CipherID], [LastName], [Id_Pozition], [Id_Boss], [Id_Rank], [Id_Degree]) VALUES (502, N'вм        ', N'Романцев Р.Р.', 2, 501, 1, 4)
INSERT [dbo].[Employee] ([Id_Number], [CipherID], [LastName], [Id_Pozition], [Id_Boss], [Id_Rank], [Id_Degree]) VALUES (503, N'вм        ', N'Соловьев С.С.', 2, 501, 2, 2)
INSERT [dbo].[Employee] ([Id_Number], [CipherID], [LastName], [Id_Pozition], [Id_Boss], [Id_Rank], [Id_Degree]) VALUES (601, N'эф        ', N'Зверев З.З.', 1, 601, 1, 4)
INSERT [dbo].[Employee] ([Id_Number], [CipherID], [LastName], [Id_Pozition], [Id_Boss], [Id_Rank], [Id_Degree]) VALUES (602, N'эф        ', N'Сорокина С.С.', 2, 601, NULL, NULL)
INSERT [dbo].[Employee] ([Id_Number], [CipherID], [LastName], [Id_Pozition], [Id_Boss], [Id_Rank], [Id_Degree]) VALUES (614, N'эф        ', N'Григорьев Г.Г.', 4, 602, NULL, NULL)
GO
INSERT [dbo].[Engineer] ([Id_Engineer], [Id_Spec]) VALUES (153, 1)
INSERT [dbo].[Engineer] ([Id_Engineer], [Id_Spec]) VALUES (241, 1)
INSERT [dbo].[Engineer] ([Id_Engineer], [Id_Spec]) VALUES (242, 2)
INSERT [dbo].[Engineer] ([Id_Engineer], [Id_Spec]) VALUES (435, 1)
INSERT [dbo].[Engineer] ([Id_Engineer], [Id_Spec]) VALUES (614, 2)
GO
INSERT [dbo].[Exame] ([Id_Exam], [Date_Exam], [Id_Discipline], [Id_Student], [Id_Teacher], [Auditoria], [Grade]) VALUES (1, CAST(N'2015-06-05' AS Date), 102, 10101, 102, N'т505      ', 4)
INSERT [dbo].[Exame] ([Id_Exam], [Date_Exam], [Id_Discipline], [Id_Student], [Id_Teacher], [Auditoria], [Grade]) VALUES (2, CAST(N'2015-06-05' AS Date), 102, 10102, 102, N'т505      ', 4)
INSERT [dbo].[Exame] ([Id_Exam], [Date_Exam], [Id_Discipline], [Id_Student], [Id_Teacher], [Auditoria], [Grade]) VALUES (3, CAST(N'2015-06-05' AS Date), 202, 20101, 202, N'т506      ', 4)
INSERT [dbo].[Exame] ([Id_Exam], [Date_Exam], [Id_Discipline], [Id_Student], [Id_Teacher], [Auditoria], [Grade]) VALUES (4, CAST(N'2015-06-05' AS Date), 202, 20102, 202, N'т506      ', 3)
INSERT [dbo].[Exame] ([Id_Exam], [Date_Exam], [Id_Discipline], [Id_Student], [Id_Teacher], [Auditoria], [Grade]) VALUES (5, CAST(N'2015-06-07' AS Date), 102, 30101, 105, N'ф419      ', 3)
INSERT [dbo].[Exame] ([Id_Exam], [Date_Exam], [Id_Discipline], [Id_Student], [Id_Teacher], [Auditoria], [Grade]) VALUES (6, CAST(N'2015-06-07' AS Date), 102, 30102, 101, N'т506      ', 4)
INSERT [dbo].[Exame] ([Id_Exam], [Date_Exam], [Id_Discipline], [Id_Student], [Id_Teacher], [Auditoria], [Grade]) VALUES (7, CAST(N'2015-06-07' AS Date), 102, 80101, 102, N'м425      ', 5)
INSERT [dbo].[Exame] ([Id_Exam], [Date_Exam], [Id_Discipline], [Id_Student], [Id_Teacher], [Auditoria], [Grade]) VALUES (8, CAST(N'2015-06-09' AS Date), 205, 80102, 402, N'м424      ', 4)
INSERT [dbo].[Exame] ([Id_Exam], [Date_Exam], [Id_Discipline], [Id_Student], [Id_Teacher], [Auditoria], [Grade]) VALUES (9, CAST(N'2015-06-09' AS Date), 209, 20101, 302, N'ф333      ', 3)
INSERT [dbo].[Exame] ([Id_Exam], [Date_Exam], [Id_Discipline], [Id_Student], [Id_Teacher], [Auditoria], [Grade]) VALUES (10, CAST(N'2015-06-10' AS Date), 101, 10101, 501, N'т506      ', 4)
INSERT [dbo].[Exame] ([Id_Exam], [Date_Exam], [Id_Discipline], [Id_Student], [Id_Teacher], [Auditoria], [Grade]) VALUES (11, CAST(N'2015-06-10' AS Date), 101, 10102, 501, N'т506      ', 4)
INSERT [dbo].[Exame] ([Id_Exam], [Date_Exam], [Id_Discipline], [Id_Student], [Id_Teacher], [Auditoria], [Grade]) VALUES (12, CAST(N'2015-06-10' AS Date), 204, 30102, 601, N'ф349      ', 5)
INSERT [dbo].[Exame] ([Id_Exam], [Date_Exam], [Id_Discipline], [Id_Student], [Id_Teacher], [Auditoria], [Grade]) VALUES (13, CAST(N'2015-06-10' AS Date), 209, 80101, 301, N'э105      ', 5)
INSERT [dbo].[Exame] ([Id_Exam], [Date_Exam], [Id_Discipline], [Id_Student], [Id_Teacher], [Auditoria], [Grade]) VALUES (14, CAST(N'2015-06-10' AS Date), 209, 80102, 301, N'э105      ', 4)
INSERT [dbo].[Exame] ([Id_Exam], [Date_Exam], [Id_Discipline], [Id_Student], [Id_Teacher], [Auditoria], [Grade]) VALUES (15, CAST(N'2015-06-12' AS Date), 101, 80101, 502, N'с324      ', 4)
INSERT [dbo].[Exame] ([Id_Exam], [Date_Exam], [Id_Discipline], [Id_Student], [Id_Teacher], [Auditoria], [Grade]) VALUES (16, CAST(N'2015-06-15' AS Date), 101, 30101, 503, N'ф417      ', 4)
INSERT [dbo].[Exame] ([Id_Exam], [Date_Exam], [Id_Discipline], [Id_Student], [Id_Teacher], [Auditoria], [Grade]) VALUES (17, CAST(N'2015-06-15' AS Date), 101, 50101, 501, N'ф201      ', 5)
INSERT [dbo].[Exame] ([Id_Exam], [Date_Exam], [Id_Discipline], [Id_Student], [Id_Teacher], [Auditoria], [Grade]) VALUES (18, CAST(N'2015-06-15' AS Date), 101, 50102, 501, N'ф201      ', 3)
INSERT [dbo].[Exame] ([Id_Exam], [Date_Exam], [Id_Discipline], [Id_Student], [Id_Teacher], [Auditoria], [Grade]) VALUES (19, CAST(N'2015-06-15' AS Date), 103, 10101, 403, N'ф414      ', 4)
INSERT [dbo].[Exame] ([Id_Exam], [Date_Exam], [Id_Discipline], [Id_Student], [Id_Teacher], [Auditoria], [Grade]) VALUES (20, CAST(N'2015-06-17' AS Date), 102, 10101, 102, N'т505      ', 5)
GO
INSERT [dbo].[Faculty] ([Abbreviation], [Name_Faculty]) VALUES (N'Гн        ', N'Гуманитарные науки')
INSERT [dbo].[Faculty] ([Abbreviation], [Name_Faculty]) VALUES (N'Ен        ', N'Естественные науки')
INSERT [dbo].[Faculty] ([Abbreviation], [Name_Faculty]) VALUES (N'Ит        ', N'Информационные технологии')
INSERT [dbo].[Faculty] ([Abbreviation], [Name_Faculty]) VALUES (N'Фм        ', N'Физико-математический')
GO
SET IDENTITY_INSERT [dbo].[Learner] ON 

INSERT [dbo].[Learner] ([ID], [LastName], [SubjectL], [School], [Scores]) VALUES (1, N'Иванова', N'Математика', N'Лицей', 98.5)
INSERT [dbo].[Learner] ([ID], [LastName], [SubjectL], [School], [Scores]) VALUES (2, N'Петров', N'Физика', N'Лицей', 99)
INSERT [dbo].[Learner] ([ID], [LastName], [SubjectL], [School], [Scores]) VALUES (3, N'Сидоров', N'Математика', N'Лицей', 88)
INSERT [dbo].[Learner] ([ID], [LastName], [SubjectL], [School], [Scores]) VALUES (4, N'Полухина', N'Физика', N'Гимназия', 78)
INSERT [dbo].[Learner] ([ID], [LastName], [SubjectL], [School], [Scores]) VALUES (5, N'Матвеева', N'Химия', N'Лицей', 92)
INSERT [dbo].[Learner] ([ID], [LastName], [SubjectL], [School], [Scores]) VALUES (6, N'Касимов', N'Химия', N'Гимназия', 68)
INSERT [dbo].[Learner] ([ID], [LastName], [SubjectL], [School], [Scores]) VALUES (7, N'Нурулин', N'Математика', N'Гимназия', 81)
INSERT [dbo].[Learner] ([ID], [LastName], [SubjectL], [School], [Scores]) VALUES (8, N'Авдеев', N'Физика', N'Лицей', 87)
INSERT [dbo].[Learner] ([ID], [LastName], [SubjectL], [School], [Scores]) VALUES (9, N'Никитина', N'Химия', N'Лицей', 94)
INSERT [dbo].[Learner] ([ID], [LastName], [SubjectL], [School], [Scores]) VALUES (10, N'Барышева', N'Химия', N'Лицей', 88)
INSERT [dbo].[Learner] ([ID], [LastName], [SubjectL], [School], [Scores]) VALUES (12, N'Никишина', N'Химия', N'Лицей', 77)
INSERT [dbo].[Learner] ([ID], [LastName], [SubjectL], [School], [Scores]) VALUES (13, N'Андреев', N'Математика', N'Школа №18', 56)
INSERT [dbo].[Learner] ([ID], [LastName], [SubjectL], [School], [Scores]) VALUES (14, N'Маркин', N'Физика', N'Гимназия', 96)
SET IDENTITY_INSERT [dbo].[Learner] OFF
GO
INSERT [dbo].[Pozition] ([Id_Pozition], [Name_Pozition], [Salary]) VALUES (1, N'зав. кафедрой', 35000.0000)
INSERT [dbo].[Pozition] ([Id_Pozition], [Name_Pozition], [Salary]) VALUES (2, N'преподаватель', 25000.0000)
INSERT [dbo].[Pozition] ([Id_Pozition], [Name_Pozition], [Salary]) VALUES (3, N'инженер', 15000.0000)
INSERT [dbo].[Pozition] ([Id_Pozition], [Name_Pozition], [Salary]) VALUES (4, N'Инженер', 20000.0000)
INSERT [dbo].[Pozition] ([Id_Pozition], [Name_Pozition], [Salary]) VALUES (5, N'Преподаватель', 15000.0000)
GO
INSERT [dbo].[Rank] ([Id_Rank], [Name_Rank]) VALUES (1, N'профессор')
INSERT [dbo].[Rank] ([Id_Rank], [Name_Rank]) VALUES (2, N'доцент')
INSERT [dbo].[Rank] ([Id_Rank], [Name_Rank]) VALUES (3, N'ассистент')
GO
INSERT [dbo].[Spec] ([Id_Spec], [Name_Spec]) VALUES (1, N'электроник')
INSERT [dbo].[Spec] ([Id_Spec], [Name_Spec]) VALUES (2, N'программист')
GO
INSERT [dbo].[Speciality] ([Id_Speciality], [Name_Speciality], [CipherID]) VALUES (N'01.03.04  ', N'Прикладная математика', N'мм        ')
INSERT [dbo].[Speciality] ([Id_Speciality], [Name_Speciality], [CipherID]) VALUES (N'09.03.02  ', N'Информационные системы и технологии', N'ис        ')
INSERT [dbo].[Speciality] ([Id_Speciality], [Name_Speciality], [CipherID]) VALUES (N'09.03.03  ', N'Прикладная информатика', N'пи        ')
INSERT [dbo].[Speciality] ([Id_Speciality], [Name_Speciality], [CipherID]) VALUES (N'14.03.02  ', N'Ядерные физика и технологии', N'эф        ')
INSERT [dbo].[Speciality] ([Id_Speciality], [Name_Speciality], [CipherID]) VALUES (N'38.03.05  ', N'Бизнес-информатика', N'ис        ')
GO
INSERT [dbo].[Specialization] ([Id_Spezialization], [Name]) VALUES (1, N'медицина')
INSERT [dbo].[Specialization] ([Id_Spezialization], [Name]) VALUES (2, N'историк')
INSERT [dbo].[Specialization] ([Id_Spezialization], [Name]) VALUES (3, N'астрофизик')
INSERT [dbo].[Specialization] ([Id_Spezialization], [Name]) VALUES (4, N'ботаник')
INSERT [dbo].[Specialization] ([Id_Spezialization], [Name]) VALUES (5, N'химик-технолог')
INSERT [dbo].[Specialization] ([Id_Spezialization], [Name]) VALUES (6, N'геохимик')
INSERT [dbo].[Specialization] ([Id_Spezialization], [Name]) VALUES (7, N'химик')
INSERT [dbo].[Specialization] ([Id_Spezialization], [Name]) VALUES (8, N'филолог')
INSERT [dbo].[Specialization] ([Id_Spezialization], [Name]) VALUES (9, N'геолог')
INSERT [dbo].[Specialization] ([Id_Spezialization], [Name]) VALUES (10, N'лингвист')
INSERT [dbo].[Specialization] ([Id_Spezialization], [Name]) VALUES (11, N'зоолог')
INSERT [dbo].[Specialization] ([Id_Spezialization], [Name]) VALUES (12, N'физиолог')
INSERT [dbo].[Specialization] ([Id_Spezialization], [Name]) VALUES (13, N'математик')
GO
INSERT [dbo].[Student] ([Id_Student], [Id_Speciality], [LastName_Student]) VALUES (10101, N'09.03.03  ', N'Николаева Н. Н.')
INSERT [dbo].[Student] ([Id_Student], [Id_Speciality], [LastName_Student]) VALUES (10102, N'09.03.03  ', N'Иванов И. И.')
INSERT [dbo].[Student] ([Id_Student], [Id_Speciality], [LastName_Student]) VALUES (10103, N'09.03.03  ', N'Крюков К. К.')
INSERT [dbo].[Student] ([Id_Student], [Id_Speciality], [LastName_Student]) VALUES (20101, N'09.03.02  ', N'Андреев А. А.')
INSERT [dbo].[Student] ([Id_Student], [Id_Speciality], [LastName_Student]) VALUES (20102, N'09.03.02  ', N'Федоров Ф. Ф.')
INSERT [dbo].[Student] ([Id_Student], [Id_Speciality], [LastName_Student]) VALUES (30101, N'14.03.02  ', N'Бондаренко Б. Б.')
INSERT [dbo].[Student] ([Id_Student], [Id_Speciality], [LastName_Student]) VALUES (30102, N'14.03.02  ', N'Цветков К. К.')
INSERT [dbo].[Student] ([Id_Student], [Id_Speciality], [LastName_Student]) VALUES (30103, N'14.03.02  ', N'Петров П. П.')
INSERT [dbo].[Student] ([Id_Student], [Id_Speciality], [LastName_Student]) VALUES (50101, N'01.03.04  ', N'Сергеев С. С.')
INSERT [dbo].[Student] ([Id_Student], [Id_Speciality], [LastName_Student]) VALUES (50102, N'01.03.04  ', N'Кудрявцев К. К.')
INSERT [dbo].[Student] ([Id_Student], [Id_Speciality], [LastName_Student]) VALUES (80101, N'38.03.05  ', N'Макаров М. М.')
INSERT [dbo].[Student] ([Id_Student], [Id_Speciality], [LastName_Student]) VALUES (80102, N'38.03.05  ', N'Яковлев Я. Я.')
GO
INSERT [dbo].[Type_Control] ([Id_Control], [Type]) VALUES (1, N'Конституционная монархия')
INSERT [dbo].[Type_Control] ([Id_Control], [Type]) VALUES (2, N'Абсолютная монархия')
INSERT [dbo].[Type_Control] ([Id_Control], [Type]) VALUES (3, N'Президентская республика')
INSERT [dbo].[Type_Control] ([Id_Control], [Type]) VALUES (4, N'Парламентская республика')
INSERT [dbo].[Type_Control] ([Id_Control], [Type]) VALUES (5, N'Военная хунта')
GO
INSERT [dbo].[View_6] ([Номер недели], [Количество экзаменов], [Количество студентов]) VALUES (23, 2, 7)
INSERT [dbo].[View_6] ([Номер недели], [Количество экзаменов], [Количество студентов]) VALUES (24, 4, 6)
INSERT [dbo].[View_6] ([Номер недели], [Количество экзаменов], [Количество студентов]) VALUES (25, 3, 4)
GO
INSERT [dbo].[View_7] ([Continent], [Square], [Square1]) VALUES (N'1', 244820, 0.2)
INSERT [dbo].[View_7] ([Continent], [Square], [Square1]) VALUES (N'2', 647500, 372)
INSERT [dbo].[View_7] ([Continent], [Square], [Square1]) VALUES (N'3', 2381740, 638)
INSERT [dbo].[View_7] ([Continent], [Square], [Square1]) VALUES (N'4', 8511965, 1973)
INSERT [dbo].[View_7] ([Continent], [Square], [Square1]) VALUES (N'5', 22966, 22966)
GO
ALTER TABLE [dbo].[Animal_Kornilova_Marushkina] ADD  CONSTRAINT [DF_Animal_Kornilova_Marushkina]  DEFAULT ('Хищные') FOR [Otrad]
GO
ALTER TABLE [dbo].[Control_Kornilova_Marushkina] ADD  CONSTRAINT [DF_Control_Kornilova_Marushkina]  DEFAULT ('Корнилова/Марушкина') FOR [Surname]
GO
ALTER TABLE [dbo].[Flowers_Kornilova_Marushkina] ADD  CONSTRAINT [DF_Flowers_Kornilova_Marushkina]  DEFAULT ('Двудольные') FOR [Class]
GO
ALTER TABLE [dbo].[Academics]  WITH CHECK ADD  CONSTRAINT [FK_Academics_Specialization] FOREIGN KEY([Id_Specialization])
REFERENCES [dbo].[Specialization] ([Id_Spezialization])
GO
ALTER TABLE [dbo].[Academics] CHECK CONSTRAINT [FK_Academics_Specialization]
GO
ALTER TABLE [dbo].[Application]  WITH CHECK ADD  CONSTRAINT [FK_Application_Discipline] FOREIGN KEY([Id_Discipline])
REFERENCES [dbo].[Discipline] ([Id_Discipline])
GO
ALTER TABLE [dbo].[Application] CHECK CONSTRAINT [FK_Application_Discipline]
GO
ALTER TABLE [dbo].[Application]  WITH CHECK ADD  CONSTRAINT [FK_Application_Speciality] FOREIGN KEY([Id_Speciality])
REFERENCES [dbo].[Speciality] ([Id_Speciality])
GO
ALTER TABLE [dbo].[Application] CHECK CONSTRAINT [FK_Application_Speciality]
GO
ALTER TABLE [dbo].[Country]  WITH CHECK ADD  CONSTRAINT [FK_Country_Continent] FOREIGN KEY([Id_Continent])
REFERENCES [dbo].[Continent] ([Id_Continent])
GO
ALTER TABLE [dbo].[Country] CHECK CONSTRAINT [FK_Country_Continent]
GO
ALTER TABLE [dbo].[Country]  WITH CHECK ADD  CONSTRAINT [FK_Country_Type_Control] FOREIGN KEY([Type_Control])
REFERENCES [dbo].[Type_Control] ([Id_Control])
GO
ALTER TABLE [dbo].[Country] CHECK CONSTRAINT [FK_Country_Type_Control]
GO
ALTER TABLE [dbo].[Departament]  WITH CHECK ADD  CONSTRAINT [FK_Departament_Faculty] FOREIGN KEY([AbbreviationID])
REFERENCES [dbo].[Faculty] ([Abbreviation])
GO
ALTER TABLE [dbo].[Departament] CHECK CONSTRAINT [FK_Departament_Faculty]
GO
ALTER TABLE [dbo].[Discipline]  WITH CHECK ADD  CONSTRAINT [FK_Discipline_Departament] FOREIGN KEY([CipherID])
REFERENCES [dbo].[Departament] ([Cipher])
GO
ALTER TABLE [dbo].[Discipline] CHECK CONSTRAINT [FK_Discipline_Departament]
GO
ALTER TABLE [dbo].[Employee]  WITH CHECK ADD  CONSTRAINT [FK_Employee_Boss] FOREIGN KEY([Id_Boss])
REFERENCES [dbo].[Boss] ([Id_Boss])
GO
ALTER TABLE [dbo].[Employee] CHECK CONSTRAINT [FK_Employee_Boss]
GO
ALTER TABLE [dbo].[Employee]  WITH CHECK ADD  CONSTRAINT [FK_Employee_Degree] FOREIGN KEY([Id_Degree])
REFERENCES [dbo].[Degree] ([Id_Degree])
GO
ALTER TABLE [dbo].[Employee] CHECK CONSTRAINT [FK_Employee_Degree]
GO
ALTER TABLE [dbo].[Employee]  WITH CHECK ADD  CONSTRAINT [FK_Employee_Departament] FOREIGN KEY([CipherID])
REFERENCES [dbo].[Departament] ([Cipher])
GO
ALTER TABLE [dbo].[Employee] CHECK CONSTRAINT [FK_Employee_Departament]
GO
ALTER TABLE [dbo].[Employee]  WITH CHECK ADD  CONSTRAINT [FK_Employee_Pozition] FOREIGN KEY([Id_Pozition])
REFERENCES [dbo].[Pozition] ([Id_Pozition])
GO
ALTER TABLE [dbo].[Employee] CHECK CONSTRAINT [FK_Employee_Pozition]
GO
ALTER TABLE [dbo].[Employee]  WITH CHECK ADD  CONSTRAINT [FK_Employee_Rank] FOREIGN KEY([Id_Rank])
REFERENCES [dbo].[Rank] ([Id_Rank])
GO
ALTER TABLE [dbo].[Employee] CHECK CONSTRAINT [FK_Employee_Rank]
GO
ALTER TABLE [dbo].[Engineer]  WITH CHECK ADD  CONSTRAINT [FK_Engineer_Spec] FOREIGN KEY([Id_Spec])
REFERENCES [dbo].[Spec] ([Id_Spec])
GO
ALTER TABLE [dbo].[Engineer] CHECK CONSTRAINT [FK_Engineer_Spec]
GO
ALTER TABLE [dbo].[Exame]  WITH CHECK ADD  CONSTRAINT [FK_Exame_Discipline] FOREIGN KEY([Id_Discipline])
REFERENCES [dbo].[Discipline] ([Id_Discipline])
GO
ALTER TABLE [dbo].[Exame] CHECK CONSTRAINT [FK_Exame_Discipline]
GO
ALTER TABLE [dbo].[Exame]  WITH CHECK ADD  CONSTRAINT [FK_Exame_Employee] FOREIGN KEY([Id_Teacher])
REFERENCES [dbo].[Employee] ([Id_Number])
GO
ALTER TABLE [dbo].[Exame] CHECK CONSTRAINT [FK_Exame_Employee]
GO
ALTER TABLE [dbo].[Exame]  WITH CHECK ADD  CONSTRAINT [FK_Exame_Student] FOREIGN KEY([Id_Student])
REFERENCES [dbo].[Student] ([Id_Student])
GO
ALTER TABLE [dbo].[Exame] CHECK CONSTRAINT [FK_Exame_Student]
GO
ALTER TABLE [dbo].[Speciality]  WITH CHECK ADD  CONSTRAINT [FK_Speciality_Departament] FOREIGN KEY([CipherID])
REFERENCES [dbo].[Departament] ([Cipher])
GO
ALTER TABLE [dbo].[Speciality] CHECK CONSTRAINT [FK_Speciality_Departament]
GO
ALTER TABLE [dbo].[Student]  WITH CHECK ADD  CONSTRAINT [FK_Student_Speciality] FOREIGN KEY([Id_Speciality])
REFERENCES [dbo].[Speciality] ([Id_Speciality])
GO
ALTER TABLE [dbo].[Student] CHECK CONSTRAINT [FK_Student_Speciality]
GO
ALTER TABLE [dbo].[Countries_Kornilova_Marushkina]  WITH CHECK ADD  CONSTRAINT [CK_Kornilova_MarushkinaSquare] CHECK  (([Square]>(10000)))
GO
ALTER TABLE [dbo].[Countries_Kornilova_Marushkina] CHECK CONSTRAINT [CK_Kornilova_MarushkinaSquare]
GO
ALTER TABLE [dbo].[Learner]  WITH CHECK ADD CHECK  (([Scores]>=(0) AND [Scores]<=(100)))
GO
