USE [master]
GO
/****** Object:  Database [Nexus]    Script Date: 07/14/2015 17:39:39 ******/
CREATE DATABASE [Nexus] ON  PRIMARY 
( NAME = N'Nexus', FILENAME = N'c:\test database\Nexus.mdf' , SIZE = 2304KB , MAXSIZE = UNLIMITED, FILEGROWTH = 1024KB )
 LOG ON 
( NAME = N'Nexus_log', FILENAME = N'c:\test database\log\Nexus_log.idf' , SIZE = 1024KB , MAXSIZE = 2048GB , FILEGROWTH = 10%)
GO
ALTER DATABASE [Nexus] SET COMPATIBILITY_LEVEL = 100
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [Nexus].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [Nexus] SET ANSI_NULL_DEFAULT OFF
GO
ALTER DATABASE [Nexus] SET ANSI_NULLS OFF
GO
ALTER DATABASE [Nexus] SET ANSI_PADDING OFF
GO
ALTER DATABASE [Nexus] SET ANSI_WARNINGS OFF
GO
ALTER DATABASE [Nexus] SET ARITHABORT OFF
GO
ALTER DATABASE [Nexus] SET AUTO_CLOSE ON
GO
ALTER DATABASE [Nexus] SET AUTO_CREATE_STATISTICS ON
GO
ALTER DATABASE [Nexus] SET AUTO_SHRINK OFF
GO
ALTER DATABASE [Nexus] SET AUTO_UPDATE_STATISTICS ON
GO
ALTER DATABASE [Nexus] SET CURSOR_CLOSE_ON_COMMIT OFF
GO
ALTER DATABASE [Nexus] SET CURSOR_DEFAULT  GLOBAL
GO
ALTER DATABASE [Nexus] SET CONCAT_NULL_YIELDS_NULL OFF
GO
ALTER DATABASE [Nexus] SET NUMERIC_ROUNDABORT OFF
GO
ALTER DATABASE [Nexus] SET QUOTED_IDENTIFIER OFF
GO
ALTER DATABASE [Nexus] SET RECURSIVE_TRIGGERS OFF
GO
ALTER DATABASE [Nexus] SET  ENABLE_BROKER
GO
ALTER DATABASE [Nexus] SET AUTO_UPDATE_STATISTICS_ASYNC OFF
GO
ALTER DATABASE [Nexus] SET DATE_CORRELATION_OPTIMIZATION OFF
GO
ALTER DATABASE [Nexus] SET TRUSTWORTHY OFF
GO
ALTER DATABASE [Nexus] SET ALLOW_SNAPSHOT_ISOLATION OFF
GO
ALTER DATABASE [Nexus] SET PARAMETERIZATION SIMPLE
GO
ALTER DATABASE [Nexus] SET READ_COMMITTED_SNAPSHOT OFF
GO
ALTER DATABASE [Nexus] SET HONOR_BROKER_PRIORITY OFF
GO
ALTER DATABASE [Nexus] SET  READ_WRITE
GO
ALTER DATABASE [Nexus] SET RECOVERY SIMPLE
GO
ALTER DATABASE [Nexus] SET  MULTI_USER
GO
ALTER DATABASE [Nexus] SET PAGE_VERIFY CHECKSUM
GO
ALTER DATABASE [Nexus] SET DB_CHAINING OFF
GO
USE [Nexus]
GO
/****** Object:  Table [dbo].[testimo]    Script Date: 07/14/2015 17:39:40 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[testimo](
	[sno] [int] NOT NULL,
	[msg] [varchar](500) NULL,
 CONSTRAINT [PK_testimo] PRIMARY KEY CLUSTERED 
(
	[sno] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
INSERT [dbo].[testimo] ([sno], [msg]) VALUES (1, N'students of KMIT are brilliant')
/****** Object:  Table [dbo].[test]    Script Date: 07/14/2015 17:39:40 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[test](
	[name] [varchar](50) NULL,
	[r1] [bit] NOT NULL,
	[r2] [bit] NULL,
	[amt] [money] NULL
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
INSERT [dbo].[test] ([name], [r1], [r2], [amt]) VALUES (N'sai ananth', 1, NULL, 10.0000)
INSERT [dbo].[test] ([name], [r1], [r2], [amt]) VALUES (N'anirudh', 1, NULL, 1000000.0000)
INSERT [dbo].[test] ([name], [r1], [r2], [amt]) VALUES (N'safdar', 0, 1, NULL)
INSERT [dbo].[test] ([name], [r1], [r2], [amt]) VALUES (N'lahari', 0, NULL, NULL)
/****** Object:  Table [dbo].[studlog]    Script Date: 07/14/2015 17:39:40 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[studlog](
	[username] [varchar](10) NOT NULL,
	[pwd] [varchar](10) NOT NULL
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
INSERT [dbo].[studlog] ([username], [pwd]) VALUES (N'13BD1A1059', N'1234')
/****** Object:  Table [dbo].[studetails]    Script Date: 07/14/2015 17:39:40 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[studetails](
	[sname] [varchar](50) NOT NULL,
	[branch] [varchar](50) NULL,
	[tenper] [varchar](50) NULL,
	[interper] [varchar](50) NULL,
	[enggper] [varchar](50) NULL,
	[email] [varchar](50) NULL,
	[contact] [varchar](50) NULL,
	[video] [varchar](max) NULL,
	[comp1] [varchar](50) NULL,
	[pack1] [varchar](50) NULL,
	[comp2] [varchar](50) NULL,
	[pack2] [varchar](50) NULL,
	[comp3] [varchar](50) NULL,
	[pack3] [varchar](50) NULL,
 CONSTRAINT [PK_studetails] PRIMARY KEY CLUSTERED 
(
	[sname] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
INSERT [dbo].[studetails] ([sname], [branch], [tenper], [interper], [enggper], [email], [contact], [video], [comp1], [pack1], [comp2], [pack2], [comp3], [pack3]) VALUES (N'A.MOUNIKA', N'ECE', N'84', N'80', N'71.25', N'mounikamira@gmail.com', N'9908228401', N'https://www.youtube.com/watch?v=LlHmZC_CeGk', N'', N'', N'', N'', N'', N'')
INSERT [dbo].[studetails] ([sname], [branch], [tenper], [interper], [enggper], [email], [contact], [video], [comp1], [pack1], [comp2], [pack2], [comp3], [pack3]) VALUES (N'A.VINUSHA', N'ECE', N'91', N'93.5', N'75', N'vinusha9494@gmail.com', N'8522931959', NULL, N'', N'', N'', N'', N'', N'')
INSERT [dbo].[studetails] ([sname], [branch], [tenper], [interper], [enggper], [email], [contact], [video], [comp1], [pack1], [comp2], [pack2], [comp3], [pack3]) VALUES (N'ANKITA CHOADHRY', N'ECE', N'86', N'92', N'75.7', N'ankitasimmi@gmail.com', N'8790000710', NULL, N'', N'', N'', N'', N'', N'')
INSERT [dbo].[studetails] ([sname], [branch], [tenper], [interper], [enggper], [email], [contact], [video], [comp1], [pack1], [comp2], [pack2], [comp3], [pack3]) VALUES (N'ARSHIYASULTANA', N'CSE', N'88', N'87.9', N'73.0', N'ashusultana2011@gmail.com', N'9989765438', NULL, N'', N'', N'', N'', N'', N'')
INSERT [dbo].[studetails] ([sname], [branch], [tenper], [interper], [enggper], [email], [contact], [video], [comp1], [pack1], [comp2], [pack2], [comp3], [pack3]) VALUES (N'Azmira Suman', N'EIE', N'70', N'73', N'71', N'sumanazmira186@gmail.com', N'9652217290', NULL, N'', N'', N'', N'', N'', N'')
INSERT [dbo].[studetails] ([sname], [branch], [tenper], [interper], [enggper], [email], [contact], [video], [comp1], [pack1], [comp2], [pack2], [comp3], [pack3]) VALUES (N'B . Abhishek', N'CSE', N'91', N'87', N'76', N'abhishekbele1234@gmail.com', N'9959641240', NULL, N'', N'', N'', N'', N'', N'')
INSERT [dbo].[studetails] ([sname], [branch], [tenper], [interper], [enggper], [email], [contact], [video], [comp1], [pack1], [comp2], [pack2], [comp3], [pack3]) VALUES (N'B.MADHURA VANI', N'CSE', N'64', N'88', N'72.6', N'madhu3382@gmail.com', N'9290013382', NULL, N'', N'', N'', N'', N'', N'')
INSERT [dbo].[studetails] ([sname], [branch], [tenper], [interper], [enggper], [email], [contact], [video], [comp1], [pack1], [comp2], [pack2], [comp3], [pack3]) VALUES (N'BAIRI MAHESH', N'ECE', N'93', N'95', N'76', N'bairi951@gmail.com', N'9441207254', NULL, N'', N'', N'', N'', N'', N'')
INSERT [dbo].[studetails] ([sname], [branch], [tenper], [interper], [enggper], [email], [contact], [video], [comp1], [pack1], [comp2], [pack2], [comp3], [pack3]) VALUES (N'D.SNEHA', N'CSE', N'95.5', N'96', N'74', N'snehadeekondac9@gmail.com', N'8790377801', NULL, N'', N'', N'', N'', N'', N'')
INSERT [dbo].[studetails] ([sname], [branch], [tenper], [interper], [enggper], [email], [contact], [video], [comp1], [pack1], [comp2], [pack2], [comp3], [pack3]) VALUES (N'G.DIVYA', N'ECE', N'90', N'95.7', N'84', N'divyagudipally94@gmail.com', N'8504223535', NULL, N'', N'', N'', N'', N'', N'')
INSERT [dbo].[studetails] ([sname], [branch], [tenper], [interper], [enggper], [email], [contact], [video], [comp1], [pack1], [comp2], [pack2], [comp3], [pack3]) VALUES (N'G.JAYASREE', N'CSE', N'87.3', N'91.3', N'70', N'jayasreegarlapatid2@gmail.com', N'8522800388', NULL, N'', N'', N'', N'', N'', N'')
INSERT [dbo].[studetails] ([sname], [branch], [tenper], [interper], [enggper], [email], [contact], [video], [comp1], [pack1], [comp2], [pack2], [comp3], [pack3]) VALUES (N'G.VINISHA', N'IT', N'77', N'91', N'72', N'vinisha.gollapally@gmail.com', N'8008807692', NULL, N'', N'', N'', N'', N'', N'')
INSERT [dbo].[studetails] ([sname], [branch], [tenper], [interper], [enggper], [email], [contact], [video], [comp1], [pack1], [comp2], [pack2], [comp3], [pack3]) VALUES (N'H.SUNAYANA', N'ECE', N'89', N'93', N'70', N'sunayana1994@gmail.com', N'9493189193', NULL, N'', N'', N'', N'', N'', N'')
INSERT [dbo].[studetails] ([sname], [branch], [tenper], [interper], [enggper], [email], [contact], [video], [comp1], [pack1], [comp2], [pack2], [comp3], [pack3]) VALUES (N'J SREEKAR REDDY', N'CSE', N'91', N'95.9', N'76.7', N'jammula30@gmail.com', N'9392357305', NULL, N'', N'', N'', N'', N'', N'')
INSERT [dbo].[studetails] ([sname], [branch], [tenper], [interper], [enggper], [email], [contact], [video], [comp1], [pack1], [comp2], [pack2], [comp3], [pack3]) VALUES (N'J.NAGA NAVYA SHREE', N'EIE', N'85.8', N'87.8', N'72', N'nvshr789@gmail.com', N'8143765679', NULL, N'', N'', N'', N'', N'', N'')
INSERT [dbo].[studetails] ([sname], [branch], [tenper], [interper], [enggper], [email], [contact], [video], [comp1], [pack1], [comp2], [pack2], [comp3], [pack3]) VALUES (N'J.NARENDRA', N'EIE', N'87', N'84', N'71', N'jnarendra94@gmail.com', N'8332902204', NULL, N'', N'', N'', N'', N'', N'')
INSERT [dbo].[studetails] ([sname], [branch], [tenper], [interper], [enggper], [email], [contact], [video], [comp1], [pack1], [comp2], [pack2], [comp3], [pack3]) VALUES (N'J.PRIYANKA', N'ECE', N'90', N'91', N'70.4', N'janaswamy.priya@gmail.com', N'8885557722', NULL, N'', N'', N'', N'', N'', N'')
INSERT [dbo].[studetails] ([sname], [branch], [tenper], [interper], [enggper], [email], [contact], [video], [comp1], [pack1], [comp2], [pack2], [comp3], [pack3]) VALUES (N'J.RASHMITHA', N'ECE', N'89', N'95', N'76', N'rashmijakka19@gmail.com', N'9492874793', NULL, N'', N'', N'', N'', N'', N'')
INSERT [dbo].[studetails] ([sname], [branch], [tenper], [interper], [enggper], [email], [contact], [video], [comp1], [pack1], [comp2], [pack2], [comp3], [pack3]) VALUES (N'J.SHARATH CHANDRA', N'IT', N'87', N'94', N'70', N'sharathjaligama@gmail.com', N'9848243969', NULL, N'', N'', N'', N'', N'', N'')
INSERT [dbo].[studetails] ([sname], [branch], [tenper], [interper], [enggper], [email], [contact], [video], [comp1], [pack1], [comp2], [pack2], [comp3], [pack3]) VALUES (N'JADDU VIJAYA', N'EIE', N'86', N'87', N'75', N'vijayajaddu@gmail.com', N'9059567100', NULL, N'', N'', N'', N'', N'', N'')
INSERT [dbo].[studetails] ([sname], [branch], [tenper], [interper], [enggper], [email], [contact], [video], [comp1], [pack1], [comp2], [pack2], [comp3], [pack3]) VALUES (N'JADI SHYAMALA', N'ECE', N'88', N'85.8', N'73.1', N'charan1707@gmail.com', N'9573388948', NULL, N'', N'', N'', N'', N'', N'')
INSERT [dbo].[studetails] ([sname], [branch], [tenper], [interper], [enggper], [email], [contact], [video], [comp1], [pack1], [comp2], [pack2], [comp3], [pack3]) VALUES (N'KODAM SRIVANI', N'CSE', N'85', N'87.7', N'70.0', N'kdm_vani@gmail.com', N'9493129852', NULL, N'', N'', N'', N'', N'', N'')
INSERT [dbo].[studetails] ([sname], [branch], [tenper], [interper], [enggper], [email], [contact], [video], [comp1], [pack1], [comp2], [pack2], [comp3], [pack3]) VALUES (N'KOTLA BHAVANA', N'EIE', N'65', N'71', N'73.0', N'bhavana_kotla@yahoo.com', N'9849992946', NULL, N'', N'', N'', N'', N'', N'')
INSERT [dbo].[studetails] ([sname], [branch], [tenper], [interper], [enggper], [email], [contact], [video], [comp1], [pack1], [comp2], [pack2], [comp3], [pack3]) VALUES (N'KRISHNA CHANDRA JOSHI', N'EIE', N'89', N'83', N'72', N'krishnachandra24@gmail.com', N'9441155990', NULL, N'', N'', N'', N'', N'', N'')
INSERT [dbo].[studetails] ([sname], [branch], [tenper], [interper], [enggper], [email], [contact], [video], [comp1], [pack1], [comp2], [pack2], [comp3], [pack3]) VALUES (N'M SHARON ROY', N'ECE', N'91', N'91.5', N'74.8', N'mroysharon@yahoo.com', N'9059458675', NULL, N'', N'', N'', N'', N'', N'')
INSERT [dbo].[studetails] ([sname], [branch], [tenper], [interper], [enggper], [email], [contact], [video], [comp1], [pack1], [comp2], [pack2], [comp3], [pack3]) VALUES (N'M.MOUNIKA', N'ECE', N'97', N'97.1', N'75', N'mounikamaduri@gmail.com', N'9704259250', NULL, N'', N'', N'', N'', N'', N'')
INSERT [dbo].[studetails] ([sname], [branch], [tenper], [interper], [enggper], [email], [contact], [video], [comp1], [pack1], [comp2], [pack2], [comp3], [pack3]) VALUES (N'M.Rachana Rao', N'IT', N'91', N'90.3', N'70', N'rachana0394@gmail.com', N'8978432189', NULL, N'', N'', N'', N'', N'', N'')
INSERT [dbo].[studetails] ([sname], [branch], [tenper], [interper], [enggper], [email], [contact], [video], [comp1], [pack1], [comp2], [pack2], [comp3], [pack3]) VALUES (N'MOSAM NIYATHI RAO', N'CSE', N'89', N'86.9', N'70.0', N'mosam.niyathirao@gmail.com', N'8801226601', NULL, N'', N'', N'', N'', N'', N'')
INSERT [dbo].[studetails] ([sname], [branch], [tenper], [interper], [enggper], [email], [contact], [video], [comp1], [pack1], [comp2], [pack2], [comp3], [pack3]) VALUES (N'MUDAYANTI KEERTHI', N'CSE', N'87', N'85.8', N'73.2', N'keerthi149193@gmail.com', N'9247721006', NULL, N'', N'', N'', N'', N'', N'')
INSERT [dbo].[studetails] ([sname], [branch], [tenper], [interper], [enggper], [email], [contact], [video], [comp1], [pack1], [comp2], [pack2], [comp3], [pack3]) VALUES (N'N KEERTANA', N'ECE', N'83', N'84.8', N'72.5', N'keertana.n23@gmail.com', N'4027009008', NULL, N'', N'', N'', N'', N'', N'')
INSERT [dbo].[studetails] ([sname], [branch], [tenper], [interper], [enggper], [email], [contact], [video], [comp1], [pack1], [comp2], [pack2], [comp3], [pack3]) VALUES (N'N SINDHUJA', N'CSE', N'94', N'97.4', N'73.2', N'narra.sinduja@gmail.com', N'9441669558', NULL, N'', N'', N'', N'', N'', N'')
INSERT [dbo].[studetails] ([sname], [branch], [tenper], [interper], [enggper], [email], [contact], [video], [comp1], [pack1], [comp2], [pack2], [comp3], [pack3]) VALUES (N'P TARINI', N'CSE', N'88', N'87.9', N'70.0', N'damodar_pv@yahoo.com', N'4023348721', NULL, N'', N'', N'', N'', N'', N'')
INSERT [dbo].[studetails] ([sname], [branch], [tenper], [interper], [enggper], [email], [contact], [video], [comp1], [pack1], [comp2], [pack2], [comp3], [pack3]) VALUES (N'P.RAJA KUMARI', N'ECE', N'85', N'84(diploma)', N'75', N'rajakumaripyata@gmail.cm', N'9014685060', NULL, N'', N'', N'', N'', N'', N'')
INSERT [dbo].[studetails] ([sname], [branch], [tenper], [interper], [enggper], [email], [contact], [video], [comp1], [pack1], [comp2], [pack2], [comp3], [pack3]) VALUES (N'P.VIVEK REDDY', N'ECE', N'92', N'96.5', N'75', N'pvivekreddy7@gmail.com', N'8712774695', NULL, N'', N'', N'', N'', N'', N'')
INSERT [dbo].[studetails] ([sname], [branch], [tenper], [interper], [enggper], [email], [contact], [video], [comp1], [pack1], [comp2], [pack2], [comp3], [pack3]) VALUES (N'PALLERLA SAICHARAN', N'CSE', N'87', N'95.7', N'72', N'saicharanpallerla@gmail.com', N'8978197917', NULL, N'', N'', N'', N'', N'', N'')
INSERT [dbo].[studetails] ([sname], [branch], [tenper], [interper], [enggper], [email], [contact], [video], [comp1], [pack1], [comp2], [pack2], [comp3], [pack3]) VALUES (N'PASUPULETI SAI HARISH', N'ECE', N'84', N'94.7', N'74.5', N'veeraiah1994@gmail.com', N'9701415607', NULL, N'', N'', N'', N'', N'', N'')
INSERT [dbo].[studetails] ([sname], [branch], [tenper], [interper], [enggper], [email], [contact], [video], [comp1], [pack1], [comp2], [pack2], [comp3], [pack3]) VALUES (N'POLASA INDUSREE', N'CSE', N'88', N'94.3', N'72.3', N'indusreepolasa@gmail.com', N'9989198300', NULL, N'', N'', N'', N'', N'', N'')
INSERT [dbo].[studetails] ([sname], [branch], [tenper], [interper], [enggper], [email], [contact], [video], [comp1], [pack1], [comp2], [pack2], [comp3], [pack3]) VALUES (N'R.VIDISHA SRI', N'ECE', N'80', N'(DIPLOMA)80', N'73', N'rvidishasri@gmail.com', N'8125448025', NULL, N'', N'', N'', N'', N'', N'')
INSERT [dbo].[studetails] ([sname], [branch], [tenper], [interper], [enggper], [email], [contact], [video], [comp1], [pack1], [comp2], [pack2], [comp3], [pack3]) VALUES (N'RAYAPPAGARI RAHUL', N'CSE', N'89', N'93.3', N'71.7', N'rahul.rayappagari@gmail.com', N'7799480709', NULL, N'', N'', N'', N'', N'', N'')
INSERT [dbo].[studetails] ([sname], [branch], [tenper], [interper], [enggper], [email], [contact], [video], [comp1], [pack1], [comp2], [pack2], [comp3], [pack3]) VALUES (N'SHIVANGHI SONI', N'IT', N'82', N'79', N'70', N'shivanghisoni9@gmail.com', N'9030470284', NULL, N'', N'', N'', N'', N'', N'')
INSERT [dbo].[studetails] ([sname], [branch], [tenper], [interper], [enggper], [email], [contact], [video], [comp1], [pack1], [comp2], [pack2], [comp3], [pack3]) VALUES (N'SHRADDHA SAMBARE', N'IT', N'87', N'91', N'70', N'shraddha_sambare@yahoo.com', N'9951341670', NULL, N'', N'', N'', N'', N'', N'')
INSERT [dbo].[studetails] ([sname], [branch], [tenper], [interper], [enggper], [email], [contact], [video], [comp1], [pack1], [comp2], [pack2], [comp3], [pack3]) VALUES (N'SRIRAMULA AKSHITHA', N'EIE', N'81', N'86.1', N'72.0', N'sriramula0323ravi@gmial.com', N'8500106263', NULL, N'', N'', N'', N'', N'', N'')
INSERT [dbo].[studetails] ([sname], [branch], [tenper], [interper], [enggper], [email], [contact], [video], [comp1], [pack1], [comp2], [pack2], [comp3], [pack3]) VALUES (N'T.sowjanya', N'CSE', N'83', N'92', N'70', N'mailmesowji93@gmail.com', N'9666466860', NULL, N'', N'', N'', N'', N'', N'')
INSERT [dbo].[studetails] ([sname], [branch], [tenper], [interper], [enggper], [email], [contact], [video], [comp1], [pack1], [comp2], [pack2], [comp3], [pack3]) VALUES (N'U.N.D.L MOUNIKA', N'EIE', N'94', N'92.1', N'78', N'mounikanagas@gmail.com', N'9010563073', NULL, N'', N'', N'', N'', N'', N'')
INSERT [dbo].[studetails] ([sname], [branch], [tenper], [interper], [enggper], [email], [contact], [video], [comp1], [pack1], [comp2], [pack2], [comp3], [pack3]) VALUES (N'VANGAPALLY VAMSHI KRISHNA REDDY', N'ECE', N'89', N'95.7', N'78', N'vamshi.vang@gmail.com', N'9951360851', NULL, N'', N'', N'', N'', N'', N'')
/****** Object:  Table [dbo].[stestimo]    Script Date: 07/14/2015 17:39:40 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[stestimo](
	[sno] [int] NOT NULL,
	[msg] [varchar](500) NULL,
 CONSTRAINT [PK_stestimo] PRIMARY KEY CLUSTERED 
(
	[sno] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
INSERT [dbo].[stestimo] ([sno], [msg]) VALUES (1, N'finishing school played a crucial role in placements ')
/****** Object:  Table [dbo].[skillstaught]    Script Date: 07/14/2015 17:39:40 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[skillstaught](
	[skill] [varchar](30) NOT NULL,
 CONSTRAINT [PK_skillstaught] PRIMARY KEY CLUSTERED 
(
	[skill] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
INSERT [dbo].[skillstaught] ([skill]) VALUES (N'ADVANCED JAVA')
INSERT [dbo].[skillstaught] ([skill]) VALUES (N'ARM PROCESSOR')
INSERT [dbo].[skillstaught] ([skill]) VALUES (N'ASP.NET')
INSERT [dbo].[skillstaught] ([skill]) VALUES (N'AURDINO')
INSERT [dbo].[skillstaught] ([skill]) VALUES (N'BEAGLE BONE BLACK')
INSERT [dbo].[skillstaught] ([skill]) VALUES (N'C')
INSERT [dbo].[skillstaught] ([skill]) VALUES (N'C#')
INSERT [dbo].[skillstaught] ([skill]) VALUES (N'C++')
INSERT [dbo].[skillstaught] ([skill]) VALUES (N'CORE JAVA')
INSERT [dbo].[skillstaught] ([skill]) VALUES (N'CSS3')
INSERT [dbo].[skillstaught] ([skill]) VALUES (N'DBMS')
INSERT [dbo].[skillstaught] ([skill]) VALUES (N'HTML 5')
INSERT [dbo].[skillstaught] ([skill]) VALUES (N'PYTHON')
INSERT [dbo].[skillstaught] ([skill]) VALUES (N'RASPBERRY PI')
INSERT [dbo].[skillstaught] ([skill]) VALUES (N'RDBMS')
INSERT [dbo].[skillstaught] ([skill]) VALUES (N'VLSI')
INSERT [dbo].[skillstaught] ([skill]) VALUES (N'ZIGBEE')
/****** Object:  Table [dbo].[skills]    Script Date: 07/14/2015 17:39:40 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[skills](
	[sname] [varchar](50) NOT NULL,
	[skill1] [varchar](50) NULL,
	[skill2] [varchar](50) NULL,
	[skill3] [varchar](50) NULL,
	[skill4] [varchar](50) NULL,
	[skill5] [varchar](50) NULL,
	[skill6] [varchar](50) NULL,
	[skill7] [varchar](50) NULL,
	[skill8] [varchar](50) NULL,
	[skill9] [varchar](50) NULL,
	[skill10] [varchar](50) NULL,
	[per] [decimal](18, 2) NULL,
	[branch] [varchar](50) NULL,
 CONSTRAINT [PK_skills] PRIMARY KEY CLUSTERED 
(
	[sname] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
INSERT [dbo].[skills] ([sname], [skill1], [skill2], [skill3], [skill4], [skill5], [skill6], [skill7], [skill8], [skill9], [skill10], [per], [branch]) VALUES (N'A.MOUNIKA', N'C++', N'C', N'ADVANCED JAVA', N'PYTHON', N'HTML5', N'VLSI', N'', N'', N'', N'', CAST(71.25 AS Decimal(18, 2)), N'ECE')
INSERT [dbo].[skills] ([sname], [skill1], [skill2], [skill3], [skill4], [skill5], [skill6], [skill7], [skill8], [skill9], [skill10], [per], [branch]) VALUES (N'A.VINUSHA', N'C#', N'CSS3', N'ADVANCED JAVA', N'ARM PRECESSOR', N'', N'', N'', N'', N'', N'', CAST(75.00 AS Decimal(18, 2)), N'ECE')
INSERT [dbo].[skills] ([sname], [skill1], [skill2], [skill3], [skill4], [skill5], [skill6], [skill7], [skill8], [skill9], [skill10], [per], [branch]) VALUES (N'ANKITA CHOADHRY', N'ADVANCED JAVA', N'ZIGBEE', N'', N'', N'', N'', N'', N'', N'', N'', CAST(75.70 AS Decimal(18, 2)), N'ECE')
INSERT [dbo].[skills] ([sname], [skill1], [skill2], [skill3], [skill4], [skill5], [skill6], [skill7], [skill8], [skill9], [skill10], [per], [branch]) VALUES (N'ARSHIYASULTANA', N'DBMS', N'CSS3', N'', N'', N'', N'', N'', N'', N'', N'', CAST(73.00 AS Decimal(18, 2)), N'CSE')
INSERT [dbo].[skills] ([sname], [skill1], [skill2], [skill3], [skill4], [skill5], [skill6], [skill7], [skill8], [skill9], [skill10], [per], [branch]) VALUES (N'Azmira Suman', N'ADVANCED JAVA', N'', N'', N'', N'', N'', N'', N'', N'', N'', CAST(71.00 AS Decimal(18, 2)), N'EIE')
INSERT [dbo].[skills] ([sname], [skill1], [skill2], [skill3], [skill4], [skill5], [skill6], [skill7], [skill8], [skill9], [skill10], [per], [branch]) VALUES (N'B . Abhishek', N'', N'', N'', N'', N'', N'', N'', N'', N'', N'', NULL, NULL)
INSERT [dbo].[skills] ([sname], [skill1], [skill2], [skill3], [skill4], [skill5], [skill6], [skill7], [skill8], [skill9], [skill10], [per], [branch]) VALUES (N'B.MADHURA VANI', N'', N'', N'', N'', N'', N'', N'', N'', N'', N'', NULL, NULL)
INSERT [dbo].[skills] ([sname], [skill1], [skill2], [skill3], [skill4], [skill5], [skill6], [skill7], [skill8], [skill9], [skill10], [per], [branch]) VALUES (N'BAIRI MAHESH', N'', N'', N'', N'', N'', N'', N'', N'', N'', N'', NULL, NULL)
INSERT [dbo].[skills] ([sname], [skill1], [skill2], [skill3], [skill4], [skill5], [skill6], [skill7], [skill8], [skill9], [skill10], [per], [branch]) VALUES (N'D.SNEHA', N'', N'', N'', N'', N'', N'', N'', N'', N'', N'', NULL, NULL)
INSERT [dbo].[skills] ([sname], [skill1], [skill2], [skill3], [skill4], [skill5], [skill6], [skill7], [skill8], [skill9], [skill10], [per], [branch]) VALUES (N'G.DIVYA', N'', N'', N'', N'', N'', N'', N'', N'', N'', N'', NULL, NULL)
INSERT [dbo].[skills] ([sname], [skill1], [skill2], [skill3], [skill4], [skill5], [skill6], [skill7], [skill8], [skill9], [skill10], [per], [branch]) VALUES (N'G.JAYASREE', N'', N'', N'', N'', N'', N'', N'', N'', N'', N'', CAST(70.00 AS Decimal(18, 2)), N'CSE')
INSERT [dbo].[skills] ([sname], [skill1], [skill2], [skill3], [skill4], [skill5], [skill6], [skill7], [skill8], [skill9], [skill10], [per], [branch]) VALUES (N'G.VINISHA', N'', N'', N'', N'', N'', N'', N'', N'', N'', N'', NULL, NULL)
INSERT [dbo].[skills] ([sname], [skill1], [skill2], [skill3], [skill4], [skill5], [skill6], [skill7], [skill8], [skill9], [skill10], [per], [branch]) VALUES (N'H.SUNAYANA', N'', N'', N'', N'', N'', N'', N'', N'', N'', N'', NULL, NULL)
INSERT [dbo].[skills] ([sname], [skill1], [skill2], [skill3], [skill4], [skill5], [skill6], [skill7], [skill8], [skill9], [skill10], [per], [branch]) VALUES (N'J SREEKAR REDDY', N'', N'', N'', N'', N'', N'', N'', N'', N'', N'', NULL, NULL)
INSERT [dbo].[skills] ([sname], [skill1], [skill2], [skill3], [skill4], [skill5], [skill6], [skill7], [skill8], [skill9], [skill10], [per], [branch]) VALUES (N'J.NAGA NAVYA SHREE', N'', N'', N'', N'', N'', N'', N'', N'', N'', N'', NULL, NULL)
INSERT [dbo].[skills] ([sname], [skill1], [skill2], [skill3], [skill4], [skill5], [skill6], [skill7], [skill8], [skill9], [skill10], [per], [branch]) VALUES (N'J.NARENDRA', N'', N'', N'', N'', N'', N'', N'', N'', N'', N'', NULL, NULL)
INSERT [dbo].[skills] ([sname], [skill1], [skill2], [skill3], [skill4], [skill5], [skill6], [skill7], [skill8], [skill9], [skill10], [per], [branch]) VALUES (N'J.PRIYANKA', N'', N'', N'', N'', N'', N'', N'', N'', N'', N'', NULL, NULL)
INSERT [dbo].[skills] ([sname], [skill1], [skill2], [skill3], [skill4], [skill5], [skill6], [skill7], [skill8], [skill9], [skill10], [per], [branch]) VALUES (N'J.RASHMITHA', N'', N'', N'', N'', N'', N'', N'', N'', N'', N'', NULL, NULL)
INSERT [dbo].[skills] ([sname], [skill1], [skill2], [skill3], [skill4], [skill5], [skill6], [skill7], [skill8], [skill9], [skill10], [per], [branch]) VALUES (N'J.SHARATH CHANDRA', N'', N'', N'', N'', N'', N'', N'', N'', N'', N'', NULL, NULL)
INSERT [dbo].[skills] ([sname], [skill1], [skill2], [skill3], [skill4], [skill5], [skill6], [skill7], [skill8], [skill9], [skill10], [per], [branch]) VALUES (N'JADDU VIJAYA', N'', N'', N'', N'', N'', N'', N'', N'', N'', N'', NULL, NULL)
INSERT [dbo].[skills] ([sname], [skill1], [skill2], [skill3], [skill4], [skill5], [skill6], [skill7], [skill8], [skill9], [skill10], [per], [branch]) VALUES (N'JADI SHYAMALA', N'', N'', N'', N'', N'', N'', N'', N'', N'', N'', NULL, NULL)
INSERT [dbo].[skills] ([sname], [skill1], [skill2], [skill3], [skill4], [skill5], [skill6], [skill7], [skill8], [skill9], [skill10], [per], [branch]) VALUES (N'KODAM SRIVANI', N'', N'', N'', N'', N'', N'', N'', N'', N'', N'', NULL, NULL)
INSERT [dbo].[skills] ([sname], [skill1], [skill2], [skill3], [skill4], [skill5], [skill6], [skill7], [skill8], [skill9], [skill10], [per], [branch]) VALUES (N'KOTLA BHAVANA', N'', N'', N'', N'', N'', N'', N'', N'', N'', N'', NULL, NULL)
INSERT [dbo].[skills] ([sname], [skill1], [skill2], [skill3], [skill4], [skill5], [skill6], [skill7], [skill8], [skill9], [skill10], [per], [branch]) VALUES (N'KRISHNA CHANDRA JOSHI', N'', N'', N'', N'', N'', N'', N'', N'', N'', N'', NULL, NULL)
INSERT [dbo].[skills] ([sname], [skill1], [skill2], [skill3], [skill4], [skill5], [skill6], [skill7], [skill8], [skill9], [skill10], [per], [branch]) VALUES (N'M SHARON ROY', N'', N'', N'', N'', N'', N'', N'', N'', N'', N'', NULL, NULL)
INSERT [dbo].[skills] ([sname], [skill1], [skill2], [skill3], [skill4], [skill5], [skill6], [skill7], [skill8], [skill9], [skill10], [per], [branch]) VALUES (N'M.MOUNIKA', N'', N'', N'', N'', N'', N'', N'', N'', N'', N'', CAST(75.00 AS Decimal(18, 2)), N'ECE')
INSERT [dbo].[skills] ([sname], [skill1], [skill2], [skill3], [skill4], [skill5], [skill6], [skill7], [skill8], [skill9], [skill10], [per], [branch]) VALUES (N'M.Rachana Rao', N'', N'', N'', N'', N'', N'', N'', N'', N'', N'', NULL, NULL)
INSERT [dbo].[skills] ([sname], [skill1], [skill2], [skill3], [skill4], [skill5], [skill6], [skill7], [skill8], [skill9], [skill10], [per], [branch]) VALUES (N'MOSAM NIYATHI RAO', N'', N'', N'', N'', N'', N'', N'', N'', N'', N'', NULL, NULL)
INSERT [dbo].[skills] ([sname], [skill1], [skill2], [skill3], [skill4], [skill5], [skill6], [skill7], [skill8], [skill9], [skill10], [per], [branch]) VALUES (N'MUDAYANTI KEERTHI', N'', N'', N'', N'', N'', N'', N'', N'', N'', N'', NULL, NULL)
INSERT [dbo].[skills] ([sname], [skill1], [skill2], [skill3], [skill4], [skill5], [skill6], [skill7], [skill8], [skill9], [skill10], [per], [branch]) VALUES (N'N KEERTANA', N'', N'', N'', N'', N'', N'', N'', N'', N'', N'', NULL, NULL)
INSERT [dbo].[skills] ([sname], [skill1], [skill2], [skill3], [skill4], [skill5], [skill6], [skill7], [skill8], [skill9], [skill10], [per], [branch]) VALUES (N'N SINDHUJA', N'', N'', N'', N'', N'', N'', N'', N'', N'', N'', NULL, NULL)
INSERT [dbo].[skills] ([sname], [skill1], [skill2], [skill3], [skill4], [skill5], [skill6], [skill7], [skill8], [skill9], [skill10], [per], [branch]) VALUES (N'P TARINI', N'', N'', N'', N'', N'', N'', N'', N'', N'', N'', NULL, NULL)
INSERT [dbo].[skills] ([sname], [skill1], [skill2], [skill3], [skill4], [skill5], [skill6], [skill7], [skill8], [skill9], [skill10], [per], [branch]) VALUES (N'P.RAJA KUMARI', N'', N'', N'', N'', N'', N'', N'', N'', N'', N'', NULL, NULL)
INSERT [dbo].[skills] ([sname], [skill1], [skill2], [skill3], [skill4], [skill5], [skill6], [skill7], [skill8], [skill9], [skill10], [per], [branch]) VALUES (N'P.VIVEK REDDY', N'', N'', N'', N'', N'', N'', N'', N'', N'', N'', NULL, NULL)
INSERT [dbo].[skills] ([sname], [skill1], [skill2], [skill3], [skill4], [skill5], [skill6], [skill7], [skill8], [skill9], [skill10], [per], [branch]) VALUES (N'PALLERLA SAICHARAN', N'', N'', N'', N'', N'', N'', N'', N'', N'', N'', NULL, NULL)
INSERT [dbo].[skills] ([sname], [skill1], [skill2], [skill3], [skill4], [skill5], [skill6], [skill7], [skill8], [skill9], [skill10], [per], [branch]) VALUES (N'PASUPULETI SAI HARISH', N'', N'', N'', N'', N'', N'', N'', N'', N'', N'', NULL, NULL)
INSERT [dbo].[skills] ([sname], [skill1], [skill2], [skill3], [skill4], [skill5], [skill6], [skill7], [skill8], [skill9], [skill10], [per], [branch]) VALUES (N'POLASA INDUSREE', N'', N'', N'', N'', N'', N'', N'', N'', N'', N'', NULL, NULL)
INSERT [dbo].[skills] ([sname], [skill1], [skill2], [skill3], [skill4], [skill5], [skill6], [skill7], [skill8], [skill9], [skill10], [per], [branch]) VALUES (N'R.VIDISHA SRI', N'', N'', N'', N'', N'', N'', N'', N'', N'', N'', NULL, NULL)
INSERT [dbo].[skills] ([sname], [skill1], [skill2], [skill3], [skill4], [skill5], [skill6], [skill7], [skill8], [skill9], [skill10], [per], [branch]) VALUES (N'RAYAPPAGARI RAHUL', N'', N'', N'', N'', N'', N'', N'', N'', N'', N'', NULL, NULL)
INSERT [dbo].[skills] ([sname], [skill1], [skill2], [skill3], [skill4], [skill5], [skill6], [skill7], [skill8], [skill9], [skill10], [per], [branch]) VALUES (N'SHIVANGHI SONI', N'', N'', N'', N'', N'', N'', N'', N'', N'', N'', NULL, NULL)
INSERT [dbo].[skills] ([sname], [skill1], [skill2], [skill3], [skill4], [skill5], [skill6], [skill7], [skill8], [skill9], [skill10], [per], [branch]) VALUES (N'SHRADDHA SAMBARE', N'', N'', N'', N'', N'', N'', N'', N'', N'', N'', CAST(70.00 AS Decimal(18, 2)), N'IT')
INSERT [dbo].[skills] ([sname], [skill1], [skill2], [skill3], [skill4], [skill5], [skill6], [skill7], [skill8], [skill9], [skill10], [per], [branch]) VALUES (N'SRIRAMULA AKSHITHA', N'', N'', N'', N'', N'', N'', N'', N'', N'', N'', NULL, NULL)
INSERT [dbo].[skills] ([sname], [skill1], [skill2], [skill3], [skill4], [skill5], [skill6], [skill7], [skill8], [skill9], [skill10], [per], [branch]) VALUES (N'T.sowjanya', N'', N'', N'', N'', N'', N'', N'', N'', N'', N'', NULL, NULL)
INSERT [dbo].[skills] ([sname], [skill1], [skill2], [skill3], [skill4], [skill5], [skill6], [skill7], [skill8], [skill9], [skill10], [per], [branch]) VALUES (N'U.N.D.L MOUNIKA', N'', N'', N'', N'', N'', N'', N'', N'', N'', N'', NULL, NULL)
INSERT [dbo].[skills] ([sname], [skill1], [skill2], [skill3], [skill4], [skill5], [skill6], [skill7], [skill8], [skill9], [skill10], [per], [branch]) VALUES (N'VANGAPALLY VAMSHI KRISHNA REDDY', N'', N'', N'', N'', N'', N'', N'', N'', N'', N'', NULL, NULL)
/****** Object:  Table [dbo].[round]    Script Date: 07/14/2015 17:39:40 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[round](
	[cid] [int] NOT NULL,
	[rd1dt] [datetime] NULL,
	[rd2dt] [datetime] NULL,
	[rd3dt] [datetime] NULL,
	[rd4dt] [datetime] NULL,
	[rd5dt] [datetime] NULL,
	[r1tp] [varchar](30) NULL,
	[r2tp] [varchar](30) NULL,
	[r3tp] [varchar](30) NULL,
	[r4tp] [varchar](30) NULL,
	[r5tp] [varchar](30) NULL,
	[no] [int] NULL,
 CONSTRAINT [PK_round] PRIMARY KEY CLUSTERED 
(
	[cid] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
INSERT [dbo].[round] ([cid], [rd1dt], [rd2dt], [rd3dt], [rd4dt], [rd5dt], [r1tp], [r2tp], [r3tp], [r4tp], [r5tp], [no]) VALUES (1, CAST(0x0000A4DF00000000 AS DateTime), CAST(0x0000000000000000 AS DateTime), CAST(0x0000000000000000 AS DateTime), CAST(0x0000000000000000 AS DateTime), CAST(0x0000000000000000 AS DateTime), N'aptitude', N'2', N'3', N'4', N'5', 1)
/****** Object:  Table [dbo].[place1314]    Script Date: 07/14/2015 17:39:40 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[place1314](
	[cname] [varchar](50) NOT NULL,
	[branch] [varchar](10) NOT NULL,
	[sel] [int] NULL
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
INSERT [dbo].[place1314] ([cname], [branch], [sel]) VALUES (N'DELOITTE', N'cse', 5)
INSERT [dbo].[place1314] ([cname], [branch], [sel]) VALUES (N'DELOITTE', N'it', 3)
INSERT [dbo].[place1314] ([cname], [branch], [sel]) VALUES (N'DELOITTE', N'ece', 3)
INSERT [dbo].[place1314] ([cname], [branch], [sel]) VALUES (N'DELOITTE', N'eie', 2)
INSERT [dbo].[place1314] ([cname], [branch], [sel]) VALUES (N'VIRTUSA', N'cse', 10)
INSERT [dbo].[place1314] ([cname], [branch], [sel]) VALUES (N'VIRTUSA', N'it', 5)
INSERT [dbo].[place1314] ([cname], [branch], [sel]) VALUES (N'VIRTUSA', N'ece', 3)
INSERT [dbo].[place1314] ([cname], [branch], [sel]) VALUES (N'VIRTUSA', N'eie', 4)
/****** Object:  Table [dbo].[place1213]    Script Date: 07/14/2015 17:39:40 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[place1213](
	[cname] [varchar](50) NOT NULL,
	[branch] [varchar](10) NOT NULL,
	[sel] [int] NULL
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
INSERT [dbo].[place1213] ([cname], [branch], [sel]) VALUES (N'OVERALL', N'CSE', 38)
INSERT [dbo].[place1213] ([cname], [branch], [sel]) VALUES (N'OVERALL', N'IT', 23)
INSERT [dbo].[place1213] ([cname], [branch], [sel]) VALUES (N'OVERALL', N'ECE', 39)
INSERT [dbo].[place1213] ([cname], [branch], [sel]) VALUES (N'OVERALL', N'EIE', 11)
INSERT [dbo].[place1213] ([cname], [branch], [sel]) VALUES (N'EA Mobile', N'CSE', 2)
INSERT [dbo].[place1213] ([cname], [branch], [sel]) VALUES (N'EA Mobile', N'IT', 0)
INSERT [dbo].[place1213] ([cname], [branch], [sel]) VALUES (N'EA Mobile', N'ECE', 0)
INSERT [dbo].[place1213] ([cname], [branch], [sel]) VALUES (N'EA Mobile', N'EIE', 0)
INSERT [dbo].[place1213] ([cname], [branch], [sel]) VALUES (N'GE India', N'CSE', 1)
INSERT [dbo].[place1213] ([cname], [branch], [sel]) VALUES (N'GE India', N'IT', 0)
INSERT [dbo].[place1213] ([cname], [branch], [sel]) VALUES (N'GE India', N'ECE', 0)
INSERT [dbo].[place1213] ([cname], [branch], [sel]) VALUES (N'GE India', N'EIE', 0)
INSERT [dbo].[place1213] ([cname], [branch], [sel]) VALUES (N'5Y Technologies', N'CSE', 2)
INSERT [dbo].[place1213] ([cname], [branch], [sel]) VALUES (N'5Y Technologies', N'IT', 0)
INSERT [dbo].[place1213] ([cname], [branch], [sel]) VALUES (N'5Y Technologies', N'ECE', 1)
INSERT [dbo].[place1213] ([cname], [branch], [sel]) VALUES (N'5Y Technologies', N'EIE', 0)
INSERT [dbo].[place1213] ([cname], [branch], [sel]) VALUES (N'Zensar Technologies', N'CSE', 5)
INSERT [dbo].[place1213] ([cname], [branch], [sel]) VALUES (N'Zensar Technologies', N'IT', 9)
INSERT [dbo].[place1213] ([cname], [branch], [sel]) VALUES (N'Zensar Technologies', N'ECE', 5)
INSERT [dbo].[place1213] ([cname], [branch], [sel]) VALUES (N'Zensar Technologies', N'EIE', 0)
INSERT [dbo].[place1213] ([cname], [branch], [sel]) VALUES (N'Net.Orange', N'CSE', 2)
INSERT [dbo].[place1213] ([cname], [branch], [sel]) VALUES (N'Net.Orange', N'IT', 2)
INSERT [dbo].[place1213] ([cname], [branch], [sel]) VALUES (N'Net.Orange', N'ECE', 0)
INSERT [dbo].[place1213] ([cname], [branch], [sel]) VALUES (N'Net.Orange', N'EIE', 4)
INSERT [dbo].[place1213] ([cname], [branch], [sel]) VALUES (N'Persistent Systems', N'CSE', 2)
INSERT [dbo].[place1213] ([cname], [branch], [sel]) VALUES (N'Persistent Systems', N'IT', 3)
INSERT [dbo].[place1213] ([cname], [branch], [sel]) VALUES (N'Persistent Systems', N'ECE', 0)
INSERT [dbo].[place1213] ([cname], [branch], [sel]) VALUES (N'Persistent Systems', N'EIE', 0)
INSERT [dbo].[place1213] ([cname], [branch], [sel]) VALUES (N'Inrythm Solutions', N'CSE', 0)
INSERT [dbo].[place1213] ([cname], [branch], [sel]) VALUES (N'Inrythm Solutions', N'IT', 2)
INSERT [dbo].[place1213] ([cname], [branch], [sel]) VALUES (N'Inrythm Solutions', N'ECE', 8)
INSERT [dbo].[place1213] ([cname], [branch], [sel]) VALUES (N'Inrythm Solutions', N'EIE', 0)
INSERT [dbo].[place1213] ([cname], [branch], [sel]) VALUES (N'Zen Technologies', N'CSE', 3)
INSERT [dbo].[place1213] ([cname], [branch], [sel]) VALUES (N'Zen Technologies', N'IT', 0)
INSERT [dbo].[place1213] ([cname], [branch], [sel]) VALUES (N'Zen Technologies', N'ECE', 2)
INSERT [dbo].[place1213] ([cname], [branch], [sel]) VALUES (N'Zen Technologies', N'EIE', 0)
INSERT [dbo].[place1213] ([cname], [branch], [sel]) VALUES (N'AGS Technologies', N'CSE', 2)
INSERT [dbo].[place1213] ([cname], [branch], [sel]) VALUES (N'AGS Technologies', N'IT', 0)
INSERT [dbo].[place1213] ([cname], [branch], [sel]) VALUES (N'AGS Technologies', N'ECE', 0)
INSERT [dbo].[place1213] ([cname], [branch], [sel]) VALUES (N'AGS Technologies', N'EIE', 0)
INSERT [dbo].[place1213] ([cname], [branch], [sel]) VALUES (N'Microsoft', N'CSE', 1)
INSERT [dbo].[place1213] ([cname], [branch], [sel]) VALUES (N'Microsoft', N'IT', 0)
INSERT [dbo].[place1213] ([cname], [branch], [sel]) VALUES (N'Microsoft', N'ECE', 0)
INSERT [dbo].[place1213] ([cname], [branch], [sel]) VALUES (N'Microsoft', N'EIE', 0)
INSERT [dbo].[place1213] ([cname], [branch], [sel]) VALUES (N'APPS Associates', N'CSE', 1)
INSERT [dbo].[place1213] ([cname], [branch], [sel]) VALUES (N'APPS Associates', N'IT', 2)
INSERT [dbo].[place1213] ([cname], [branch], [sel]) VALUES (N'APPS Associates', N'ECE', 2)
INSERT [dbo].[place1213] ([cname], [branch], [sel]) VALUES (N'APPS Associates', N'EIE', 1)
INSERT [dbo].[place1213] ([cname], [branch], [sel]) VALUES (N'Virtusa', N'CSE', 1)
INSERT [dbo].[place1213] ([cname], [branch], [sel]) VALUES (N'Virtusa', N'IT', 1)
INSERT [dbo].[place1213] ([cname], [branch], [sel]) VALUES (N'Virtusa', N'ECE', 1)
INSERT [dbo].[place1213] ([cname], [branch], [sel]) VALUES (N'Virtusa', N'EIE', 0)
INSERT [dbo].[place1213] ([cname], [branch], [sel]) VALUES (N'Financial Software Systems', N'CSE', 4)
INSERT [dbo].[place1213] ([cname], [branch], [sel]) VALUES (N'Financial Software Systems', N'IT', 0)
INSERT [dbo].[place1213] ([cname], [branch], [sel]) VALUES (N'Financial Software Systems', N'ECE', 2)
INSERT [dbo].[place1213] ([cname], [branch], [sel]) VALUES (N'Financial Software Systems', N'EIE', 0)
INSERT [dbo].[place1213] ([cname], [branch], [sel]) VALUES (N'STAM Intective Solutions', N'CSE', 1)
INSERT [dbo].[place1213] ([cname], [branch], [sel]) VALUES (N'STAM Intective Solutions', N'IT', 0)
INSERT [dbo].[place1213] ([cname], [branch], [sel]) VALUES (N'STAM Intective Solutions', N'ECE', 1)
INSERT [dbo].[place1213] ([cname], [branch], [sel]) VALUES (N'STAM Intective Solutions', N'EIE', 0)
INSERT [dbo].[place1213] ([cname], [branch], [sel]) VALUES (N'iMobigeeks', N'CSE', 0)
INSERT [dbo].[place1213] ([cname], [branch], [sel]) VALUES (N'iMobigeeks', N'IT', 0)
INSERT [dbo].[place1213] ([cname], [branch], [sel]) VALUES (N'iMobigeeks', N'ECE', 1)
INSERT [dbo].[place1213] ([cname], [branch], [sel]) VALUES (N'iMobigeeks', N'EIE', 1)
INSERT [dbo].[place1213] ([cname], [branch], [sel]) VALUES (N'ADP', N'CSE', 0)
INSERT [dbo].[place1213] ([cname], [branch], [sel]) VALUES (N'ADP', N'IT', 1)
INSERT [dbo].[place1213] ([cname], [branch], [sel]) VALUES (N'ADP', N'ECE', 1)
INSERT [dbo].[place1213] ([cname], [branch], [sel]) VALUES (N'ADP', N'EIE', 0)
INSERT [dbo].[place1213] ([cname], [branch], [sel]) VALUES (N'Nebulogic', N'CSE', 1)
INSERT [dbo].[place1213] ([cname], [branch], [sel]) VALUES (N'Nebulogic', N'IT', 0)
INSERT [dbo].[place1213] ([cname], [branch], [sel]) VALUES (N'Nebulogic', N'ECE', 1)
INSERT [dbo].[place1213] ([cname], [branch], [sel]) VALUES (N'Nebulogic', N'EIE', 1)
INSERT [dbo].[place1213] ([cname], [branch], [sel]) VALUES (N'GGK Technologies', N'CSE', 1)
INSERT [dbo].[place1213] ([cname], [branch], [sel]) VALUES (N'GGK Technologies', N'IT', 1)
INSERT [dbo].[place1213] ([cname], [branch], [sel]) VALUES (N'GGK Technologies', N'ECE', 7)
INSERT [dbo].[place1213] ([cname], [branch], [sel]) VALUES (N'GGK Technologies', N'EIE', 1)
INSERT [dbo].[place1213] ([cname], [branch], [sel]) VALUES (N'PurpleTalk INC', N'CSE', 1)
INSERT [dbo].[place1213] ([cname], [branch], [sel]) VALUES (N'PurpleTalk INC', N'IT', 0)
INSERT [dbo].[place1213] ([cname], [branch], [sel]) VALUES (N'PurpleTalk INC', N'ECE', 2)
INSERT [dbo].[place1213] ([cname], [branch], [sel]) VALUES (N'PurpleTalk INC', N'EIE', 1)
INSERT [dbo].[place1213] ([cname], [branch], [sel]) VALUES (N'Keste Software', N'CSE', 3)
INSERT [dbo].[place1213] ([cname], [branch], [sel]) VALUES (N'Keste Software', N'IT', 1)
INSERT [dbo].[place1213] ([cname], [branch], [sel]) VALUES (N'Keste Software', N'ECE', 2)
INSERT [dbo].[place1213] ([cname], [branch], [sel]) VALUES (N'Keste Software', N'EIE', 0)
INSERT [dbo].[place1213] ([cname], [branch], [sel]) VALUES (N'Intense Technologies', N'CSE', 1)
INSERT [dbo].[place1213] ([cname], [branch], [sel]) VALUES (N'Intense Technologies', N'IT', 0)
INSERT [dbo].[place1213] ([cname], [branch], [sel]) VALUES (N'Intense Technologies', N'ECE', 0)
INSERT [dbo].[place1213] ([cname], [branch], [sel]) VALUES (N'Intense Technologies', N'EIE', 2)
INSERT [dbo].[place1213] ([cname], [branch], [sel]) VALUES (N'Rockwell Collins', N'CSE', 1)
INSERT [dbo].[place1213] ([cname], [branch], [sel]) VALUES (N'Rockwell Collins', N'IT', 0)
INSERT [dbo].[place1213] ([cname], [branch], [sel]) VALUES (N'Rockwell Collins', N'ECE', 0)
INSERT [dbo].[place1213] ([cname], [branch], [sel]) VALUES (N'Rockwell Collins', N'EIE', 0)
INSERT [dbo].[place1213] ([cname], [branch], [sel]) VALUES (N'Value Momentum', N'CSE', 1)
INSERT [dbo].[place1213] ([cname], [branch], [sel]) VALUES (N'Value Momentum', N'IT', 0)
INSERT [dbo].[place1213] ([cname], [branch], [sel]) VALUES (N'Value Momentum', N'ECE', 1)
INSERT [dbo].[place1213] ([cname], [branch], [sel]) VALUES (N'Value Momentum', N'EIE', 0)
INSERT [dbo].[place1213] ([cname], [branch], [sel]) VALUES (N'CTS', N'CSE', 2)
INSERT [dbo].[place1213] ([cname], [branch], [sel]) VALUES (N'CTS', N'IT', 1)
INSERT [dbo].[place1213] ([cname], [branch], [sel]) VALUES (N'CTS', N'ECE', 2)
INSERT [dbo].[place1213] ([cname], [branch], [sel]) VALUES (N'CTS', N'EIE', 0)
/****** Object:  Table [dbo].[place1112]    Script Date: 07/14/2015 17:39:40 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[place1112](
	[cname] [varchar](50) NOT NULL,
	[branch] [varchar](10) NOT NULL,
	[sel] [int] NULL
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
INSERT [dbo].[place1112] ([cname], [branch], [sel]) VALUES (N'Net  Dot Orange', N'CSE', 4)
INSERT [dbo].[place1112] ([cname], [branch], [sel]) VALUES (N'Net  Dot Orange', N'IT', 0)
INSERT [dbo].[place1112] ([cname], [branch], [sel]) VALUES (N'Net  Dot Orange', N'ECE', 2)
INSERT [dbo].[place1112] ([cname], [branch], [sel]) VALUES (N'OVERALL', N'IT', 34)
INSERT [dbo].[place1112] ([cname], [branch], [sel]) VALUES (N'OVERALL', N'ECE', 43)
INSERT [dbo].[place1112] ([cname], [branch], [sel]) VALUES (N'OVERALL', N'EIE', 18)
INSERT [dbo].[place1112] ([cname], [branch], [sel]) VALUES (N'Net  Dot Orange', N'EIE', 0)
INSERT [dbo].[place1112] ([cname], [branch], [sel]) VALUES (N'Manamai', N'CSE', 0)
INSERT [dbo].[place1112] ([cname], [branch], [sel]) VALUES (N'Manamai', N'IT', 1)
INSERT [dbo].[place1112] ([cname], [branch], [sel]) VALUES (N'Manamai', N'ECE', 0)
INSERT [dbo].[place1112] ([cname], [branch], [sel]) VALUES (N'Manamai', N'EIE', 2)
INSERT [dbo].[place1112] ([cname], [branch], [sel]) VALUES (N'InRthym Solutions', N'CSE', 1)
INSERT [dbo].[place1112] ([cname], [branch], [sel]) VALUES (N'InRthym Solutions', N'IT', 3)
INSERT [dbo].[place1112] ([cname], [branch], [sel]) VALUES (N'InRthym Solutions', N'ECE', 1)
INSERT [dbo].[place1112] ([cname], [branch], [sel]) VALUES (N'InRthym Solutions', N'EIE', 0)
INSERT [dbo].[place1112] ([cname], [branch], [sel]) VALUES (N'Persistent', N'CSE', 1)
INSERT [dbo].[place1112] ([cname], [branch], [sel]) VALUES (N'Persistent', N'IT', 3)
INSERT [dbo].[place1112] ([cname], [branch], [sel]) VALUES (N'Persistent', N'ECE', 2)
INSERT [dbo].[place1112] ([cname], [branch], [sel]) VALUES (N'Persistent', N'EIE', 0)
INSERT [dbo].[place1112] ([cname], [branch], [sel]) VALUES (N'Teleparadigm', N'CSE', 4)
INSERT [dbo].[place1112] ([cname], [branch], [sel]) VALUES (N'Teleparadigm', N'IT', 2)
INSERT [dbo].[place1112] ([cname], [branch], [sel]) VALUES (N'Teleparadigm', N'ECE', 0)
INSERT [dbo].[place1112] ([cname], [branch], [sel]) VALUES (N'Teleparadigm', N'EIE', 0)
INSERT [dbo].[place1112] ([cname], [branch], [sel]) VALUES (N'Zensar Technologies', N'CSE', 5)
INSERT [dbo].[place1112] ([cname], [branch], [sel]) VALUES (N'Zensar Technologies', N'IT', 9)
INSERT [dbo].[place1112] ([cname], [branch], [sel]) VALUES (N'Zensar Technologies', N'ECE', 5)
INSERT [dbo].[place1112] ([cname], [branch], [sel]) VALUES (N'Zensar Technologies', N'EIE', 0)
INSERT [dbo].[place1112] ([cname], [branch], [sel]) VALUES (N'Orbees Business Solutions', N'CSE', 1)
INSERT [dbo].[place1112] ([cname], [branch], [sel]) VALUES (N'Orbees Business Solutions', N'IT', 1)
INSERT [dbo].[place1112] ([cname], [branch], [sel]) VALUES (N'Orbees Business Solutions', N'ECE', 1)
INSERT [dbo].[place1112] ([cname], [branch], [sel]) VALUES (N'Orbees Business Solutions', N'EIE', 0)
INSERT [dbo].[place1112] ([cname], [branch], [sel]) VALUES (N'Purple talk', N'CSE', 3)
INSERT [dbo].[place1112] ([cname], [branch], [sel]) VALUES (N'Purple talk', N'IT', 3)
INSERT [dbo].[place1112] ([cname], [branch], [sel]) VALUES (N'Purple talk', N'ECE', 3)
INSERT [dbo].[place1112] ([cname], [branch], [sel]) VALUES (N'Purple talk', N'EIE', 4)
INSERT [dbo].[place1112] ([cname], [branch], [sel]) VALUES (N'GGK Technologies', N'CSE', 3)
INSERT [dbo].[place1112] ([cname], [branch], [sel]) VALUES (N'GGK Technologies', N'IT', 1)
INSERT [dbo].[place1112] ([cname], [branch], [sel]) VALUES (N'GGK Technologies', N'ECE', 7)
INSERT [dbo].[place1112] ([cname], [branch], [sel]) VALUES (N'GGK Technologies', N'EIE', 2)
INSERT [dbo].[place1112] ([cname], [branch], [sel]) VALUES (N'Intense Technologies', N'CSE', 1)
INSERT [dbo].[place1112] ([cname], [branch], [sel]) VALUES (N'Intense Technologies', N'IT', 0)
INSERT [dbo].[place1112] ([cname], [branch], [sel]) VALUES (N'Intense Technologies', N'ECE', 2)
INSERT [dbo].[place1112] ([cname], [branch], [sel]) VALUES (N'Intense Technologies', N'EIE', 0)
INSERT [dbo].[place1112] ([cname], [branch], [sel]) VALUES (N'Riktam', N'CSE', 1)
INSERT [dbo].[place1112] ([cname], [branch], [sel]) VALUES (N'Riktam', N'IT', 0)
INSERT [dbo].[place1112] ([cname], [branch], [sel]) VALUES (N'Riktam', N'ECE', 0)
INSERT [dbo].[place1112] ([cname], [branch], [sel]) VALUES (N'Riktam', N'EIE', 1)
INSERT [dbo].[place1112] ([cname], [branch], [sel]) VALUES (N'Syntel', N'CSE', 1)
INSERT [dbo].[place1112] ([cname], [branch], [sel]) VALUES (N'Syntel', N'IT', 0)
INSERT [dbo].[place1112] ([cname], [branch], [sel]) VALUES (N'Syntel', N'ECE', 0)
INSERT [dbo].[place1112] ([cname], [branch], [sel]) VALUES (N'Syntel', N'EIE', 0)
INSERT [dbo].[place1112] ([cname], [branch], [sel]) VALUES (N'Mahindra Satyam', N'CSE', 0)
INSERT [dbo].[place1112] ([cname], [branch], [sel]) VALUES (N'Mahindra Satyam', N'IT', 1)
INSERT [dbo].[place1112] ([cname], [branch], [sel]) VALUES (N'Mahindra Satyam', N'ECE', 10)
INSERT [dbo].[place1112] ([cname], [branch], [sel]) VALUES (N'Mahindra Satyam', N'EIE', 3)
INSERT [dbo].[place1112] ([cname], [branch], [sel]) VALUES (N'Avansys Technologies', N'CSE', 0)
INSERT [dbo].[place1112] ([cname], [branch], [sel]) VALUES (N'Avansys Technologies', N'IT', 0)
INSERT [dbo].[place1112] ([cname], [branch], [sel]) VALUES (N'Avansys Technologies', N'ECE', 1)
INSERT [dbo].[place1112] ([cname], [branch], [sel]) VALUES (N'Avansys Technologies', N'EIE', 0)
INSERT [dbo].[place1112] ([cname], [branch], [sel]) VALUES (N'Panterra Networks', N'CSE', 3)
INSERT [dbo].[place1112] ([cname], [branch], [sel]) VALUES (N'Panterra Networks', N'IT', 1)
INSERT [dbo].[place1112] ([cname], [branch], [sel]) VALUES (N'Panterra Networks', N'ECE', 2)
INSERT [dbo].[place1112] ([cname], [branch], [sel]) VALUES (N'Panterra Networks', N'EIE', 1)
INSERT [dbo].[place1112] ([cname], [branch], [sel]) VALUES (N'Host Analytics', N'CSE', 0)
INSERT [dbo].[place1112] ([cname], [branch], [sel]) VALUES (N'Host Analytics', N'IT', 2)
INSERT [dbo].[place1112] ([cname], [branch], [sel]) VALUES (N'Host Analytics', N'ECE', 0)
INSERT [dbo].[place1112] ([cname], [branch], [sel]) VALUES (N'Host Analytics', N'EIE', 0)
INSERT [dbo].[place1112] ([cname], [branch], [sel]) VALUES (N'Oracle', N'CSE', 0)
INSERT [dbo].[place1112] ([cname], [branch], [sel]) VALUES (N'Oracle', N'IT', 4)
INSERT [dbo].[place1112] ([cname], [branch], [sel]) VALUES (N'Oracle', N'ECE', 4)
INSERT [dbo].[place1112] ([cname], [branch], [sel]) VALUES (N'Oracle', N'EIE', 1)
INSERT [dbo].[place1112] ([cname], [branch], [sel]) VALUES (N'ADP', N'CSE', 1)
INSERT [dbo].[place1112] ([cname], [branch], [sel]) VALUES (N'ADP', N'IT', 0)
INSERT [dbo].[place1112] ([cname], [branch], [sel]) VALUES (N'ADP', N'ECE', 0)
INSERT [dbo].[place1112] ([cname], [branch], [sel]) VALUES (N'ADP', N'EIE', 0)
INSERT [dbo].[place1112] ([cname], [branch], [sel]) VALUES (N'Caliber Technologies', N'CSE', 1)
INSERT [dbo].[place1112] ([cname], [branch], [sel]) VALUES (N'Caliber Technologies', N'IT', 1)
INSERT [dbo].[place1112] ([cname], [branch], [sel]) VALUES (N'Caliber Technologies', N'ECE', 2)
INSERT [dbo].[place1112] ([cname], [branch], [sel]) VALUES (N'Caliber Technologies', N'EIE', 1)
INSERT [dbo].[place1112] ([cname], [branch], [sel]) VALUES (N'Value Momentum', N'CSE', 1)
INSERT [dbo].[place1112] ([cname], [branch], [sel]) VALUES (N'Value Momentum', N'IT', 2)
INSERT [dbo].[place1112] ([cname], [branch], [sel]) VALUES (N'Value Momentum', N'ECE', 1)
INSERT [dbo].[place1112] ([cname], [branch], [sel]) VALUES (N'Value Momentum', N'EIE', 0)
INSERT [dbo].[place1112] ([cname], [branch], [sel]) VALUES (N'Millenium Power Systems', N'CSE', 0)
INSERT [dbo].[place1112] ([cname], [branch], [sel]) VALUES (N'Millenium Power Systems', N'IT', 0)
INSERT [dbo].[place1112] ([cname], [branch], [sel]) VALUES (N'Millenium Power Systems', N'ECE', 0)
INSERT [dbo].[place1112] ([cname], [branch], [sel]) VALUES (N'Millenium Power Systems', N'EIE', 2)
INSERT [dbo].[place1112] ([cname], [branch], [sel]) VALUES (N'5Y Technologies', N'CSE', 1)
INSERT [dbo].[place1112] ([cname], [branch], [sel]) VALUES (N'5Y Technologies', N'IT', 0)
INSERT [dbo].[place1112] ([cname], [branch], [sel]) VALUES (N'5Y Technologies', N'ECE', 0)
INSERT [dbo].[place1112] ([cname], [branch], [sel]) VALUES (N'5Y Technologies', N'EIE', 1)
INSERT [dbo].[place1112] ([cname], [branch], [sel]) VALUES (N'OVERALL', N'CSE', 32)
/****** Object:  Table [dbo].[Overall]    Script Date: 07/14/2015 17:39:40 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Overall](
	[cname] [varchar](50) NOT NULL,
	[branch] [varchar](10) NOT NULL,
	[sel] [int] NULL
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
INSERT [dbo].[Overall] ([cname], [branch], [sel]) VALUES (N'Overall', N'2010-11', 127)
INSERT [dbo].[Overall] ([cname], [branch], [sel]) VALUES (N'Overall', N'2011-12', 111)
INSERT [dbo].[Overall] ([cname], [branch], [sel]) VALUES (N'Overall', N'2012-13', 140)
INSERT [dbo].[Overall] ([cname], [branch], [sel]) VALUES (N'Overall', N'2013-14', 145)
INSERT [dbo].[Overall] ([cname], [branch], [sel]) VALUES (N'Overall', N'2014-15', 158)
/****** Object:  Table [dbo].[news]    Script Date: 07/14/2015 17:39:40 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[news](
	[sno] [int] NOT NULL,
	[msg] [varchar](500) NULL,
 CONSTRAINT [id] PRIMARY KEY CLUSTERED 
(
	[sno] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
INSERT [dbo].[news] ([sno], [msg]) VALUES (1, N'')
INSERT [dbo].[news] ([sno], [msg]) VALUES (2, N'')
INSERT [dbo].[news] ([sno], [msg]) VALUES (3, N'')
INSERT [dbo].[news] ([sno], [msg]) VALUES (4, N'')
INSERT [dbo].[news] ([sno], [msg]) VALUES (5, N'')
INSERT [dbo].[news] ([sno], [msg]) VALUES (6, N'On the occasion of 75 years celebration of Keshav Memorial society Alumni meeting was held on June 1st')
INSERT [dbo].[news] ([sno], [msg]) VALUES (7, N'hello hyd
')
INSERT [dbo].[news] ([sno], [msg]) VALUES (8, N'test')
/****** Object:  Table [dbo].[microsoft]    Script Date: 07/14/2015 17:39:40 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[microsoft](
	[sname] [varchar](20) NOT NULL,
	[r1] [bit] NULL,
	[r2] [bit] NULL,
	[r3] [bit] NULL,
	[r4] [bit] NULL,
	[r5] [bit] NULL,
	[slmail] [bit] NULL,
	[r1mail] [bit] NULL,
	[r2mail] [bit] NULL,
	[r3mail] [bit] NULL,
	[r4mail] [bit] NULL,
	[r5mail] [bit] NULL,
 CONSTRAINT [microsoftpk] PRIMARY KEY CLUSTERED 
(
	[sname] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
INSERT [dbo].[microsoft] ([sname], [r1], [r2], [r3], [r4], [r5], [slmail], [r1mail], [r2mail], [r3mail], [r4mail], [r5mail]) VALUES (N'A.MOUNIKA', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[microsoft] ([sname], [r1], [r2], [r3], [r4], [r5], [slmail], [r1mail], [r2mail], [r3mail], [r4mail], [r5mail]) VALUES (N'A.VINUSHA', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[microsoft] ([sname], [r1], [r2], [r3], [r4], [r5], [slmail], [r1mail], [r2mail], [r3mail], [r4mail], [r5mail]) VALUES (N'ANKITA CHOADHRY', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[microsoft] ([sname], [r1], [r2], [r3], [r4], [r5], [slmail], [r1mail], [r2mail], [r3mail], [r4mail], [r5mail]) VALUES (N'Azmira Suman', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
/****** Object:  Table [dbo].[logs]    Script Date: 07/14/2015 17:39:40 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[logs](
	[username] [varchar](50) NOT NULL,
	[pawd] [varchar](20) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[username] ASC,
	[pawd] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
INSERT [dbo].[logs] ([username], [pawd]) VALUES (N'kmit', N'kmit1')
INSERT [dbo].[logs] ([username], [pawd]) VALUES (N'Sudheer', N'placements')
/****** Object:  Table [dbo].[forum]    Script Date: 07/14/2015 17:39:40 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[forum](
	[sno] [int] NULL,
	[question] [varchar](500) NULL
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
INSERT [dbo].[forum] ([sno], [question]) VALUES (1, N'how is the atmosphere at microsoft?')
/****** Object:  Table [dbo].[festival]    Script Date: 07/14/2015 17:39:40 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[festival](
	[festival] [varchar](50) NULL,
	[date] [date] NULL
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
INSERT [dbo].[festival] ([festival], [date]) VALUES (N'diwali', CAST(0xA83A0B00 AS Date))
INSERT [dbo].[festival] ([festival], [date]) VALUES (N'sankranthi', CAST(0xE93A0B00 AS Date))
INSERT [dbo].[festival] ([festival], [date]) VALUES (N'vinayaka chaturthi', CAST(0x713A0B00 AS Date))
/****** Object:  Table [dbo].[compsk]    Script Date: 07/14/2015 17:39:40 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[compsk](
	[cid] [int] NOT NULL,
	[per] [decimal](18, 2) NULL,
	[s1] [varchar](20) NULL,
	[s2] [varchar](20) NULL,
	[s3] [varchar](20) NULL,
	[s4] [varchar](20) NULL,
	[b1] [varchar](20) NULL,
	[b2] [varchar](20) NULL,
	[b3] [varchar](20) NULL,
	[b4] [varchar](20) NULL,
 CONSTRAINT [PK_compsk] PRIMARY KEY CLUSTERED 
(
	[cid] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
INSERT [dbo].[compsk] ([cid], [per], [s1], [s2], [s3], [s4], [b1], [b2], [b3], [b4]) VALUES (1, CAST(60.00 AS Decimal(18, 2)), N'ADVANCED JAVA', N'C', N'', N'', N'CSE', N'IT', N'ECE', N'EIE')
/****** Object:  Table [dbo].[company]    Script Date: 07/14/2015 17:39:40 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[company](
	[cid] [int] NOT NULL,
	[name] [varchar](50) NULL,
	[addrs] [varchar](200) NULL,
	[email] [varchar](50) NULL,
	[mobile] [varchar](20) NULL,
	[contper] [varchar](30) NULL,
	[imageurl] [varchar](100) NULL,
	[package] [varchar](50) NULL,
 CONSTRAINT [prk] PRIMARY KEY CLUSTERED 
(
	[cid] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
INSERT [dbo].[company] ([cid], [name], [addrs], [email], [mobile], [contper], [imageurl], [package]) VALUES (1, N'microsoft', N'2-4-374 A/4', N'saiananth.kmit@gmail.com', N'8978250195', N'sai ananth', N'~/placement management/general/Imgs/microsoft.jpg', N'200000')
/****** Object:  Table [dbo].[comments]    Script Date: 07/14/2015 17:39:40 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[comments](
	[sn] [int] NULL,
	[comment] [varchar](500) NULL
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
INSERT [dbo].[comments] ([sn], [comment]) VALUES (1, N'it is very good')
/****** Object:  Table [dbo].[clogs]    Script Date: 07/14/2015 17:39:40 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[clogs](
	[username] [varchar](50) NOT NULL,
	[pawd] [varchar](20) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[username] ASC,
	[pawd] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
INSERT [dbo].[clogs] ([username], [pawd]) VALUES (N'microsoft', N'1a15')
/****** Object:  Table [dbo].[checks]    Script Date: 07/14/2015 17:39:40 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[checks](
	[cid] [int] NOT NULL,
	[per] [decimal](18, 2) NULL,
	[s1] [varchar](20) NULL,
	[s2] [varchar](20) NULL,
	[s3] [varchar](20) NULL,
	[s4] [varchar](20) NULL,
	[b1] [varchar](20) NULL,
	[b2] [varchar](20) NULL,
	[b3] [varchar](20) NULL,
	[b4] [varchar](20) NULL,
	[type] [int] NULL,
 CONSTRAINT [PK_checks] PRIMARY KEY CLUSTERED 
(
	[cid] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
INSERT [dbo].[checks] ([cid], [per], [s1], [s2], [s3], [s4], [b1], [b2], [b3], [b4], [type]) VALUES (1, CAST(60.00 AS Decimal(18, 2)), N'ADVANCED JAVA', N'C', N'', N'', N'CSE', N'IT', N'ECE', N'EIE', 0)
/****** Object:  Table [dbo].[calendar]    Script Date: 07/14/2015 17:39:40 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[calendar](
	[idate] [datetime] NOT NULL,
	[cname] [varchar](30) NULL,
	[rounds] [varchar](30) NULL,
	[req] [varchar](30) NULL,
	[venue] [varchar](30) NULL,
	[tim] [time](7) NULL,
	[addr] [varchar](200) NULL
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
INSERT [dbo].[calendar] ([idate], [cname], [rounds], [req], [venue], [tim], [addr]) VALUES (CAST(0x0000A4D000000000 AS DateTime), N'microsoft', N'aptitude', N' CSE IT ECE EIE ', N'kmit fs7', CAST(0x0700DCC9A04F0000 AS Time), N'hyderabad')
/****** Object:  Table [dbo].[alumni]    Script Date: 07/14/2015 17:39:40 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[alumni](
	[sno] [int] NOT NULL,
	[name] [varchar](100) NULL,
	[branch] [varchar](10) NULL,
	[cname] [varchar](20) NULL,
	[salary] [varchar](50) NULL,
	[email] [varchar](100) NULL,
 CONSTRAINT [ppkk] PRIMARY KEY CLUSTERED 
(
	[sno] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
INSERT [dbo].[alumni] ([sno], [name], [branch], [cname], [salary], [email]) VALUES (1, N'NITYA GUBBALA', N'CSE', N'DELOITTE', N'3.79 LAKHS PER ANNUM', N'nitya@gmail.com')
INSERT [dbo].[alumni] ([sno], [name], [branch], [cname], [salary], [email]) VALUES (2, N'A.RAJESH', N'EIE', N'DELOITTE', N'3.79 LAKHS PER ANNUM', N'Y@gmail.com')
INSERT [dbo].[alumni] ([sno], [name], [branch], [cname], [salary], [email]) VALUES (3, N'B.ANANYA', N'EIE', N'DELOITTE', N'3.79 LAKHS PER ANNUM', N'X@gmail.com')
INSERT [dbo].[alumni] ([sno], [name], [branch], [cname], [salary], [email]) VALUES (4, N'DIVYA SREE BALLA', N'ECE', N'DELOITTE', N'3.79 LAKHS PER ANNUM', N'X@gmail.com')
INSERT [dbo].[alumni] ([sno], [name], [branch], [cname], [salary], [email]) VALUES (5, N'MALLADI SRILATHA', N'ECE', N'DELOITTE', N'3.79 LAKHS PER ANNUM', N'X@gmail.com')
INSERT [dbo].[alumni] ([sno], [name], [branch], [cname], [salary], [email]) VALUES (6, N'P DIVYA PRIYA REDDY', N'IT', N'DELOITTE', N'3.79 LAKHS PER ANNUM', N'X@gmail.com')
INSERT [dbo].[alumni] ([sno], [name], [branch], [cname], [salary], [email]) VALUES (7, N'KATAKAM SRUTHI', N'CSE', N'DELOITTE', N'3.79 LAKHS PER ANNUM', N'X@gmail.com')
INSERT [dbo].[alumni] ([sno], [name], [branch], [cname], [salary], [email]) VALUES (8, N'SHANMUKHA PRIYA', N'CSE', N'DELOITTE', N'3.79 LAKHS PER ANNUM', N'X@gmail.com')
INSERT [dbo].[alumni] ([sno], [name], [branch], [cname], [salary], [email]) VALUES (9, N'G KARTHIK RAJU', N'CSE', N'DELOITTE', N'3.79 LAKHS PER ANNUM', N'X@gmail.com')
INSERT [dbo].[alumni] ([sno], [name], [branch], [cname], [salary], [email]) VALUES (10, N'T SRIVIDHYA', N'CSE', N'DELOITTE', N'3.79 LAKHS PER ANNUM', N'X@gmail.com')
INSERT [dbo].[alumni] ([sno], [name], [branch], [cname], [salary], [email]) VALUES (11, N'SAI SOUMYA', N'CSE', N'DELOITTE', N'3.79 LAKHS PER ANNUM', N'X@gmail.com')
INSERT [dbo].[alumni] ([sno], [name], [branch], [cname], [salary], [email]) VALUES (12, N'VARUN SREE HARSHA', N'IT', N'DELOITTE', N'3.79 LAKHS PER ANNUM', N'X@gmail.com')
INSERT [dbo].[alumni] ([sno], [name], [branch], [cname], [salary], [email]) VALUES (13, N'MANISH KAROOR', N'CSE', N'DELOITTE', N'3.79 LAKHS PER ANNUM', N'X@gmail.com')
INSERT [dbo].[alumni] ([sno], [name], [branch], [cname], [salary], [email]) VALUES (14, N'A HIMA TEJA', N'CSE', N'VIRTUSA', N'3.3 LAKHS PER ANNUM', N'X@gmail.com')
INSERT [dbo].[alumni] ([sno], [name], [branch], [cname], [salary], [email]) VALUES (15, N'ADAPA VARSHA', N'CSE', N'VIRTUSA', N'3.3 LAKHS PER ANNUM', N'X@gmail.com')
INSERT [dbo].[alumni] ([sno], [name], [branch], [cname], [salary], [email]) VALUES (16, N'R LALITHA SINDURA', N'CSE', N'VIRTUSA', N'3.3 LAKHS PER ANNUM', N'X@gmail.com')
INSERT [dbo].[alumni] ([sno], [name], [branch], [cname], [salary], [email]) VALUES (17, N'ANEESHA CHOWDARY', N'CSE', N'VIRTUSA', N'3.3 LAKHS PER ANNUM', N'X@gmail.com')
INSERT [dbo].[alumni] ([sno], [name], [branch], [cname], [salary], [email]) VALUES (18, N'SIDDARTH DUBEY', N'CSE', N'VIRTUSA', N'3.3 LAKHS PER ANNUM', N'X@gmail.com')
INSERT [dbo].[alumni] ([sno], [name], [branch], [cname], [salary], [email]) VALUES (19, N'M SATWIK REDDY', N'IT', N'VIRTUSA', N'3.3 LAKHS PER ANNUM', N'X@gmail.com')
INSERT [dbo].[alumni] ([sno], [name], [branch], [cname], [salary], [email]) VALUES (20, N'A RAMYA', N'IT', N'VIRTUSA', N'3.3 LAKHS PER ANNUM', N'X@gmail.com')
INSERT [dbo].[alumni] ([sno], [name], [branch], [cname], [salary], [email]) VALUES (21, N'ADITI GOTIKAR', N'CSE', N'VIRTUSA', N'3.3 LAKHS PER ANNUM', N'X@gmail.com')
INSERT [dbo].[alumni] ([sno], [name], [branch], [cname], [salary], [email]) VALUES (22, N'Y SUBADHA', N'CSE', N'VIRTUSA', N'3.3 LAKHS PER ANNUM', N'X@gmail.com')
INSERT [dbo].[alumni] ([sno], [name], [branch], [cname], [salary], [email]) VALUES (23, N'Y LAKSHMI PRASOONA', N'ECE', N'VIRTUSA', N'3.3 LAKHS PER ANNUM', N'X@gmail.com')
INSERT [dbo].[alumni] ([sno], [name], [branch], [cname], [salary], [email]) VALUES (24, N'GAYATHRI MALAVIKA', N'ECE', N'VIRTUSA', N'3.3 LAKHS PER ANNUM', N'X@gmail.com')
INSERT [dbo].[alumni] ([sno], [name], [branch], [cname], [salary], [email]) VALUES (25, N'BAJJURI KARTHIK', N'ECE', N'VIRTUSA', N'3.3 LAKHS PER ANNUM', N'X@gmail.com')
INSERT [dbo].[alumni] ([sno], [name], [branch], [cname], [salary], [email]) VALUES (26, N'M SAI SRUTHI', N'CSE', N'ZENSAR', N'3.0 LAKHS PER ANNUM', N'X@gmail.com')
INSERT [dbo].[alumni] ([sno], [name], [branch], [cname], [salary], [email]) VALUES (27, N'K VARSHA ', N'CSE', N'ZENSAR', N'3.0 LAKHS PER ANNUM', N'X@gmail.com')
INSERT [dbo].[alumni] ([sno], [name], [branch], [cname], [salary], [email]) VALUES (28, N'KARTHIK DHEERAJ', N'CSE', N'ZENSAR', N'3.0 LAKHS PER ANNUM', N'X@gmail.com')
INSERT [dbo].[alumni] ([sno], [name], [branch], [cname], [salary], [email]) VALUES (29, N'INJAMURI RAVI TEJA', N'CSE', N'ZENSAR', N'3.0 LAKHS PER ANNUM', N'X@gmail.com')
INSERT [dbo].[alumni] ([sno], [name], [branch], [cname], [salary], [email]) VALUES (30, N'CH LAXMI SOWJANYA', N'CSE', N'ZENSAR', N'3.0 LAKHS PER ANNUM', N'X@gmail.com')
INSERT [dbo].[alumni] ([sno], [name], [branch], [cname], [salary], [email]) VALUES (31, N'NEHA SARDA', N'IT', N'ZENSAR', N'3.0 LAKHS PER ANNUM', N'X@gmail.com')
INSERT [dbo].[alumni] ([sno], [name], [branch], [cname], [salary], [email]) VALUES (32, N'T SREE MEGHANA', N'CSE', N'ZENSAR', N'3.0 LAKHS PER ANNUM', N'X@gmail.com')
INSERT [dbo].[alumni] ([sno], [name], [branch], [cname], [salary], [email]) VALUES (33, N'P NIKITHA', N'CSE', N'ZENSAR', N'3.0 LAKHS PER ANNUM', N'X@gmail.com')
INSERT [dbo].[alumni] ([sno], [name], [branch], [cname], [salary], [email]) VALUES (34, N'RAPARTHI SANDEEP', N'CSE', N'ZENSAR', N'3.0 LAKHS PER ANNUM', N'X@gmail.com')
INSERT [dbo].[alumni] ([sno], [name], [branch], [cname], [salary], [email]) VALUES (35, N'BALA SARALA KEERTHI', N'CSE', N'ZENSAR', N'3.0 LAKHS PER ANNUM', N'X@gmail.com')
INSERT [dbo].[alumni] ([sno], [name], [branch], [cname], [salary], [email]) VALUES (36, N'K JAHNAVI', N'CSE', N'ZENSAR', N'3.0 LAKHS PER ANNUM', N'X@gmail.com')
INSERT [dbo].[alumni] ([sno], [name], [branch], [cname], [salary], [email]) VALUES (37, N'P MOULIKA REDDY', N'CSE', N'ZENSAR', N'3.0 LAKHS PER ANNUM', N'X@gmail.com')
INSERT [dbo].[alumni] ([sno], [name], [branch], [cname], [salary], [email]) VALUES (38, N'K ANISHA', N'CSE', N'ZENSAR', N'3.0 LAKHS PER ANNUM', N'X@gmail.com')
INSERT [dbo].[alumni] ([sno], [name], [branch], [cname], [salary], [email]) VALUES (39, N'CH MINOOSHA REDDY', N'IT', N'ZENSAR', N'3.0 LAKHS PER ANNUM', N'X@gmail.com')
INSERT [dbo].[alumni] ([sno], [name], [branch], [cname], [salary], [email]) VALUES (40, N'SIDDARTH', N'CSE', N'ZENSAR', N'3.0 LAKHS PER ANNUM', N'X@gmail.com')
INSERT [dbo].[alumni] ([sno], [name], [branch], [cname], [salary], [email]) VALUES (41, N'SATWIK', N'IT', N'ZENSAR', N'3.0 LAKHS PER ANNUM', N'X@gmail.com')
INSERT [dbo].[alumni] ([sno], [name], [branch], [cname], [salary], [email]) VALUES (42, N'B K MURALIDHARAN', N'CSE', N'ZENSAR', N'3.0 LAKHS PER ANNUM', N'X@gmail.com')
INSERT [dbo].[alumni] ([sno], [name], [branch], [cname], [salary], [email]) VALUES (43, N'H S SHRAVAN', N'CSE', N'ZENSAR', N'3.0 LAKHS PER ANNUM', N'X@gmail.com')
INSERT [dbo].[alumni] ([sno], [name], [branch], [cname], [salary], [email]) VALUES (44, N'KISHORE KIRAN', N'CSE', N'ZENSAR', N'3.0 LAKHS PER ANNUM', N'X@gmail.com')
INSERT [dbo].[alumni] ([sno], [name], [branch], [cname], [salary], [email]) VALUES (45, N'RAYAKOTA RAHUL', N'CSE', N'ZENSAR', N'3.0 LAKHS PER ANNUM', N'X@gmail.com')
INSERT [dbo].[alumni] ([sno], [name], [branch], [cname], [salary], [email]) VALUES (46, N'ACHYUT SREEKAR', N'EIE', N'GGK TECHNOLOGIES', N'3.5 LAKHS PER ANNUM', N'X@gmail.com')
INSERT [dbo].[alumni] ([sno], [name], [branch], [cname], [salary], [email]) VALUES (47, N'P SRIKANTH GOUD', N'ECE', N'GGK TECHNOLOGIES', N'3.5 LAKHS PER ANNUM', N'X@gmail.com')
INSERT [dbo].[alumni] ([sno], [name], [branch], [cname], [salary], [email]) VALUES (48, N'V NISHANTH REDDY', N'CSE', N'GGK TECHNOLOGIES', N'3.5 LAKHS PER ANNUM', N'X@gmail.com')
INSERT [dbo].[alumni] ([sno], [name], [branch], [cname], [salary], [email]) VALUES (49, N'V PRASHANTH REDDY', N'EIE', N'GGK TECHNOLOGIES', N'3.5 LAKHS PER ANNUM', N'X@gmail.com')
INSERT [dbo].[alumni] ([sno], [name], [branch], [cname], [salary], [email]) VALUES (50, N'KARRA SAI RAM', N'CSE', N'GGK TECHNOLOGIES', N'3.5 LAKHS PER ANNUM', N'X@gmail.com')
INSERT [dbo].[alumni] ([sno], [name], [branch], [cname], [salary], [email]) VALUES (51, N'UJWALA PRIYADARSHINI', N'EIE', N'GGK TECHNOLOGIES', N'3.5 LAKHS PER ANNUM', N'X@gmail.com')
INSERT [dbo].[alumni] ([sno], [name], [branch], [cname], [salary], [email]) VALUES (52, N'SREEDHAR REDDY', N'IT', N'GGK TECHNOLOGIES', N'3.5 LAKHS PER ANNUM', N'X@gmail.com')
INSERT [dbo].[alumni] ([sno], [name], [branch], [cname], [salary], [email]) VALUES (53, N'B PRAHARSHA', N'IT', N'GGK TECHNOLOGIES', N'3.5 LAKHS PER ANNUM', N'X@gmail.com')
INSERT [dbo].[alumni] ([sno], [name], [branch], [cname], [salary], [email]) VALUES (54, N'C MINOOSHA ', N'IT', N'GGK TECHNOLOGIES', N'3.5 LAKHS PER ANNUM', N'X@gmail.com')
INSERT [dbo].[alumni] ([sno], [name], [branch], [cname], [salary], [email]) VALUES (55, N'MAMINDLA VARUN', N'CSE', N'GGK TECHNOLOGIES', N'3.5 LAKHS PER ANNUM', N'X@gmail.com')
INSERT [dbo].[alumni] ([sno], [name], [branch], [cname], [salary], [email]) VALUES (56, N'T SAI DILEEP', N'ECE', N'GGK TECHNOLOGIES', N'3.5 LAKHS PER ANNUM', N'X@gmail.com')
INSERT [dbo].[alumni] ([sno], [name], [branch], [cname], [salary], [email]) VALUES (57, N'M AJAY', N'IT', N'BODHTREE CONSULTING', N'3.0 LAKHS PER ANNUM', N'X@gmail.com')
INSERT [dbo].[alumni] ([sno], [name], [branch], [cname], [salary], [email]) VALUES (58, N'POOJA BHOODANKAR', N'IT', N'BODHTREE CONSULTING', N'3.0 LAKHS PER ANNUM', N'X@gmail.com')
INSERT [dbo].[alumni] ([sno], [name], [branch], [cname], [salary], [email]) VALUES (59, N'V LAKSHMI SHARANYA', N'IT', N'BODHTREE CONSULTING', N'3.0 LAKHS PER ANNUM', N'X@gmail.com')
INSERT [dbo].[alumni] ([sno], [name], [branch], [cname], [salary], [email]) VALUES (60, N'JATIN S SEJPAL', N'CSE', N'INRHYTHM', N'3.0 LAKHS PER ANNUM', N'X@gmail.com')
INSERT [dbo].[alumni] ([sno], [name], [branch], [cname], [salary], [email]) VALUES (61, N'SAI KEERITI', N'CSE', N'INRHYTHM', N'3.0 LAKHS PER ANNUM', N'X@gmail.com')
INSERT [dbo].[alumni] ([sno], [name], [branch], [cname], [salary], [email]) VALUES (62, N'S SUPRIYA', N'CSE', N'INRHYTHM', N'3.0 LAKHS PER ANNUM', N'X@gmail.com')
INSERT [dbo].[alumni] ([sno], [name], [branch], [cname], [salary], [email]) VALUES (63, N'AKANSHA GUPTA', N'CSE', N'AIR WORLD WIDE INDIA', N'4.64 LAKHS PER ANNUM', N'X@gmail.com')
INSERT [dbo].[alumni] ([sno], [name], [branch], [cname], [salary], [email]) VALUES (64, N'MURALIDHARAN', N'CSE', N'AIR WORLD WIDE INDIA', N'4.64 LAKHS PER ANNUM', N'X@gmail.com')
INSERT [dbo].[alumni] ([sno], [name], [branch], [cname], [salary], [email]) VALUES (65, N'SHRAVAN', N'CSE', N'AIR WORLD WIDE INDIA', N'4.64 LAKHS PER ANNUM', N'X@gmail.com')
INSERT [dbo].[alumni] ([sno], [name], [branch], [cname], [salary], [email]) VALUES (66, N'POCHAMPALLY MEENA', N'CSE', N'POLYCOM', N'6.0 LAKS PER ANNUM', N'X@gmail.com')
INSERT [dbo].[alumni] ([sno], [name], [branch], [cname], [salary], [email]) VALUES (67, N'PRAHARSHA', N'CSE', N'POLYCOM', N'6.0 LAKS PER ANNUM', N'X@gmail.com')
INSERT [dbo].[alumni] ([sno], [name], [branch], [cname], [salary], [email]) VALUES (68, N'NISHANTH', N'CSE', N'POLYCOM', N'6.0 LAKS PER ANNUM', N'X@gmail.com')
INSERT [dbo].[alumni] ([sno], [name], [branch], [cname], [salary], [email]) VALUES (69, N'PRASHANTH', N'EIE', N'POLYCOM', N'6.0 LAKS PER ANNUM', N'X@gmail.com')
INSERT [dbo].[alumni] ([sno], [name], [branch], [cname], [salary], [email]) VALUES (70, N'MURALI', N'CSE', N'POLYCOM', N'6.0 LAKS PER ANNUM', N'X@gmail.com')
INSERT [dbo].[alumni] ([sno], [name], [branch], [cname], [salary], [email]) VALUES (71, N'S VARUN SREE HARSHA', N'IT', N'POLYCOM', N'6.0 LAKS PER ANNUM', N'X@gmail.com')
INSERT [dbo].[alumni] ([sno], [name], [branch], [cname], [salary], [email]) VALUES (72, N'Y SHARATH CHANDRA', N'CSE', N'POLYCOM', N'6.0 LAKS PER ANNUM', N'X@gmail.com')
INSERT [dbo].[alumni] ([sno], [name], [branch], [cname], [salary], [email]) VALUES (79, N'R SURESH', N'EIE', N'SPINCO BIOTECH', N'2.0 LAKHS PER ANNUM', N'X@gmail.com')
INSERT [dbo].[alumni] ([sno], [name], [branch], [cname], [salary], [email]) VALUES (80, N'K ANANTH', N'EIE', N'SPINCO BIOTECH', N'2.0 LAKHS PER ANNUM', N'X@gmail.com')
INSERT [dbo].[alumni] ([sno], [name], [branch], [cname], [salary], [email]) VALUES (81, N'VISHNU CHAITANYA', N'EIE', N'SPINCO BIOTECH', N'2.0 LAKHS PER ANNUM', N'X@gmail.com')
INSERT [dbo].[alumni] ([sno], [name], [branch], [cname], [salary], [email]) VALUES (82, N'RAMAKRISHNA BAJAJ', N'EIE', N'SPINCO BIOTECH', N'2.0 LAKHS PER ANNUM', N'X@gmail.com')
INSERT [dbo].[alumni] ([sno], [name], [branch], [cname], [salary], [email]) VALUES (83, N'Y SHARATH', N'CSE', N'XTREAM IT SOLUTIONS', N'3.0 LAKHS PER ANNUM', N'X@gmail.com')
INSERT [dbo].[alumni] ([sno], [name], [branch], [cname], [salary], [email]) VALUES (84, N'GOURAV PATIL', N'CSE', N'XTREAM IT SOLUTIONS', N'3.0 LAKHS PER ANNUM', N'X@gmail.com')
INSERT [dbo].[alumni] ([sno], [name], [branch], [cname], [salary], [email]) VALUES (85, N' A GUPTA', N'CSE', N'XTREAM IT SOLUTIONS', N'3.0 LAKHS PER ANNUM', N'X@gmail.com')
INSERT [dbo].[alumni] ([sno], [name], [branch], [cname], [salary], [email]) VALUES (86, N'SHARON VARGEESE', N'CSE', N'PERSISTENT SYSTEMS', N'3.58 LAKHS PER ANNUM', N'X@gmail.com')
INSERT [dbo].[alumni] ([sno], [name], [branch], [cname], [salary], [email]) VALUES (87, N'GOVINDH KULKARNI', N'CSE', N'PERSISTENT SYSTEMS', N'3.58 LAKHS PER ANNUM', N'X@gmail.com')
INSERT [dbo].[alumni] ([sno], [name], [branch], [cname], [salary], [email]) VALUES (88, N'M MAHESH CHANDRA', N'CSE', N'PERSISTENT SYSTEMS', N'3.58 LAKHS PER ANNUM', N'X@gmail.com')
INSERT [dbo].[alumni] ([sno], [name], [branch], [cname], [salary], [email]) VALUES (89, N'N AMANICA GOUD', N'IT', N'PERSISTENT SYSTEMS', N'3.58 LAKHS PER ANNUM', N'X@gmail.com')
INSERT [dbo].[alumni] ([sno], [name], [branch], [cname], [salary], [email]) VALUES (90, N'DASARI GAYATHRI', N'CSE', N'PERSISTENT SYSTEMS', N'3.58 LAKHS PER ANNUM', N'X@gmail.com')
INSERT [dbo].[alumni] ([sno], [name], [branch], [cname], [salary], [email]) VALUES (91, N'H KASHYAP', N'CSE', N'PERSISTENT SYSTEMS', N'3.58 LAKHS PER ANNUM', N'X@gmail.com')
INSERT [dbo].[alumni] ([sno], [name], [branch], [cname], [salary], [email]) VALUES (92, N'T KISHORE KIRAN', N'CSE', N'PERSISTENT SYSTEMS', N'3.58 LAKHS PER ANNUM', N'X@gmail.com')
INSERT [dbo].[alumni] ([sno], [name], [branch], [cname], [salary], [email]) VALUES (93, N'LAXMI SHARANYA', N'IT', N'PERSISTENT SYSTEMS', N'3.58 LAKHS PER ANNUM', N'X@gmail.com')
INSERT [dbo].[alumni] ([sno], [name], [branch], [cname], [salary], [email]) VALUES (94, N'P DEEPIKA', N'CSE', N'PERSISTENT SYSTEMS', N'3.58 LAKHS PER ANNUM', N'X@gmail.com')
INSERT [dbo].[alumni] ([sno], [name], [branch], [cname], [salary], [email]) VALUES (95, N'PATI THARUNYA', N'CSE', N'PERSISTENT SYSTEMS', N'3.58 LAKHS PER ANNUM', N'X@gmail.com')
INSERT [dbo].[alumni] ([sno], [name], [branch], [cname], [salary], [email]) VALUES (96, N' RAGHURAM', N'CSE', N'PERSISTENT SYSTEMS', N'3.58 LAKHS PER ANNUM', N'X@gmail.com')
INSERT [dbo].[alumni] ([sno], [name], [branch], [cname], [salary], [email]) VALUES (97, N'SAI PHANI TEJA', N'ECE', N'MINDTREE', N'3.25 LAKHS PER ANNUM', N'X@gmail.com')
INSERT [dbo].[alumni] ([sno], [name], [branch], [cname], [salary], [email]) VALUES (98, N'OGIRALA RAGHURAM', N'CSE', N'MINDTREE', N'3.25 LAKHS PER ANNUM', N'X@gmail.com')
INSERT [dbo].[alumni] ([sno], [name], [branch], [cname], [salary], [email]) VALUES (99, N'HARSHINI NALLABOTHU', N'ECE', N'ZEN TECHNOLOGIES', N'3.0 LAKHS PER ANNUM', N'X@gmail.com')
INSERT [dbo].[alumni] ([sno], [name], [branch], [cname], [salary], [email]) VALUES (100, N'ASIF BAIG', N'EIE', N'ZEN TECHNOLOGIES', N'3.0 LAKHS PER ANNUM', N'X@gmail.com')
INSERT [dbo].[alumni] ([sno], [name], [branch], [cname], [salary], [email]) VALUES (101, N'G SNEHA CHAITANYA', N'ECE', N'ZEN TECHNOLOGIES', N'3.0 LAKHS PER ANNUM', N'X@gmail.com')
INSERT [dbo].[alumni] ([sno], [name], [branch], [cname], [salary], [email]) VALUES (102, N'HARISH REDDY', N'ECE', N'ZEN TECHNOLOGIES', N'3.0 LAKHS PER ANNUM', N'X@gmail.com')
INSERT [dbo].[alumni] ([sno], [name], [branch], [cname], [salary], [email]) VALUES (103, N'RAKHA ANASUYA', N'EIE', N'ZEN TECHNOLOGIES', N'3.0 LAKHS PER ANNUM', N'X@gmail.com')
INSERT [dbo].[alumni] ([sno], [name], [branch], [cname], [salary], [email]) VALUES (104, N'S SAI KRISHNA', N'CSE', N'MPHASIS', N'3.0 LAKHS PER ANNUM', N'X@gmail.com')
INSERT [dbo].[alumni] ([sno], [name], [branch], [cname], [salary], [email]) VALUES (105, N'V RAHUL NAIK', N'IT', N'MPHASIS', N'3.0 LAKHS PER ANNUM', N'X@gmail.com')
INSERT [dbo].[alumni] ([sno], [name], [branch], [cname], [salary], [email]) VALUES (106, N'ADITI GOTIKAR', N'CSE', N'ADP', N'4.05 LAKHS PER ANNUM', N'X@gmail.com')
INSERT [dbo].[alumni] ([sno], [name], [branch], [cname], [salary], [email]) VALUES (107, N'Y SUBADHA', N'CSE', N'ADP', N'4.05 LAKHS PER ANNUM', N'X@gmail.com')
GO
print 'Processed 100 total records'
INSERT [dbo].[alumni] ([sno], [name], [branch], [cname], [salary], [email]) VALUES (108, N'S REKHA ANASUYA', N'EIE', N'ADP', N'4.05 LAKHS PER ANNUM', N'X@gmail.com')
INSERT [dbo].[alumni] ([sno], [name], [branch], [cname], [salary], [email]) VALUES (109, N'Y SHARATH CHANDRA', N'CSE', N'ADP', N'4.05 LAKHS PER ANNUM', N'X@gmail.com')
INSERT [dbo].[alumni] ([sno], [name], [branch], [cname], [salary], [email]) VALUES (110, N'SAI KRISHNA', N'CSE', N'CALIBER TECHNOLOGIES', N'2.4 LAKHS PER ANNUM', N'X@gmail.com')
INSERT [dbo].[alumni] ([sno], [name], [branch], [cname], [salary], [email]) VALUES (111, N'P BALRAJ', N'CSE', N'CALIBER TECHNOLOGIES', N'2.4 LAKHS PER ANNUM', N'X@gmail.com')
INSERT [dbo].[alumni] ([sno], [name], [branch], [cname], [salary], [email]) VALUES (112, N'ABHISHEK KILAMBI', N'ECE', N'CALIBER TECHNOLOGIES', N'2.4 LAKHS PER ANNUM', N'X@gmail.com')
INSERT [dbo].[alumni] ([sno], [name], [branch], [cname], [salary], [email]) VALUES (113, N'RAMA DURGA PAAVAN', N'CSE', N'CALIBER TECHNOLOGIES', N'2.4 LAKHS PER ANNUM', N'X@gmail.com')
INSERT [dbo].[alumni] ([sno], [name], [branch], [cname], [salary], [email]) VALUES (114, N'PRIYA KAALE', N'CSE', N'CALIBER TECHNOLOGIES', N'2.4 LAKHS PER ANNUM', N'X@gmail.com')
INSERT [dbo].[alumni] ([sno], [name], [branch], [cname], [salary], [email]) VALUES (115, N'SAKET BIDI', N'ECE', N'CALIBER TECHNOLOGIES', N'2.4 LAKHS PER ANNUM', N'X@gmail.com')
INSERT [dbo].[alumni] ([sno], [name], [branch], [cname], [salary], [email]) VALUES (116, N'S PRAVEEN KUMAR', N'ECE', N'CALIBER TECHNOLOGIES', N'2.4 LAKHS PER ANNUM', N'X@gmail.com')
INSERT [dbo].[alumni] ([sno], [name], [branch], [cname], [salary], [email]) VALUES (117, N'S THARUN KUMAR', N'ECE', N'CALIBER TECHNOLOGIES', N'2.4 LAKHS PER ANNUM', N'X@gmail.com')
INSERT [dbo].[alumni] ([sno], [name], [branch], [cname], [salary], [email]) VALUES (118, N'MULUGU HAREESH', N'CSE', N'CALIBER TECHNOLOGIES', N'2.4 LAKHS PER ANNUM', N'X@gmail.com')
INSERT [dbo].[alumni] ([sno], [name], [branch], [cname], [salary], [email]) VALUES (119, N'NIKHIL NISANGI', N'EIE', N'CALIBER TECHNOLOGIES', N'2.4 LAKHS PER ANNUM', N'X@gmail.com')
INSERT [dbo].[alumni] ([sno], [name], [branch], [cname], [salary], [email]) VALUES (120, N'K MRINALINI', N'ECE', N'ADTRAN', N'3.75 LAKHS PER ANNUM', N'X@gmail.com')
INSERT [dbo].[alumni] ([sno], [name], [branch], [cname], [salary], [email]) VALUES (121, N'SHANGANTI SUPRIYA', N'CSE', N'ADTRAN', N'3.75 LAKHS PER ANNUM', N'X@gmail.com')
INSERT [dbo].[alumni] ([sno], [name], [branch], [cname], [salary], [email]) VALUES (122, N'LAKSHMI APARNA', N'EIE', N'ADTRAN', N'3.75 LAKHS PER ANNUM', N'X@gmail.com')
INSERT [dbo].[alumni] ([sno], [name], [branch], [cname], [salary], [email]) VALUES (123, N'KUNTALA SREEKANTH', N'ECE', N'ADTRAN', N'3.75 LAKHS PER ANNUM', N'X@gmail.com')
INSERT [dbo].[alumni] ([sno], [name], [branch], [cname], [salary], [email]) VALUES (124, N'V SRIKANTH', N'CSE', N'INSYNC CORPORATION', N'3.0 LAKHS PER ANNUM', N'X@gmail.com')
INSERT [dbo].[alumni] ([sno], [name], [branch], [cname], [salary], [email]) VALUES (125, N'MRUNALINI', N'ECE', N'INSYNC CORPORATION', N'3.0 LAKHS PER ANNUM', N'X@gmail.com')
INSERT [dbo].[alumni] ([sno], [name], [branch], [cname], [salary], [email]) VALUES (126, N'SUPRIYA', N'CSE', N'INSYNC CORPORATION', N'3.0 LAKHS PER ANNUM', N'X@gmail.com')
INSERT [dbo].[alumni] ([sno], [name], [branch], [cname], [salary], [email]) VALUES (127, N'P SPANDANA', N'EIE', N'INSYNC CORPORATION', N'3.0 LAKHS PER ANNUM', N'X@gmail.com')
INSERT [dbo].[alumni] ([sno], [name], [branch], [cname], [salary], [email]) VALUES (128, N'R SINDHUJA', N'EIE', N'HCL', N'3.0 LAKHS PER ANNUM', N'X@gmail.com')
INSERT [dbo].[alumni] ([sno], [name], [branch], [cname], [salary], [email]) VALUES (129, N'KYATHANPALLY VARSHA', N'CSE', N'ROCKWELL COLLINS', N'4.80 LAKHS PER ANNUM', N'X@gmail.com')
INSERT [dbo].[alumni] ([sno], [name], [branch], [cname], [salary], [email]) VALUES (139, N'SINDHUJA REPALLE', N'EIE', N'APPS ASSOCIATES', N'3.54 LAKHS PER ANNUM', N'X@gmail.com')
INSERT [dbo].[alumni] ([sno], [name], [branch], [cname], [salary], [email]) VALUES (140, N'G SHIVA KUMAR', N'ECE', N'APPS ASSOCIATES', N'3.54 LAKHS PER ANNUM', N'X@gmail.com')
INSERT [dbo].[alumni] ([sno], [name], [branch], [cname], [salary], [email]) VALUES (141, N'SPOORTHI K', N'EIE', N'APPS ASSOCIATES', N'3.54 LAKHS PER ANNUM', N'X@gmail.com')
INSERT [dbo].[alumni] ([sno], [name], [branch], [cname], [salary], [email]) VALUES (142, N'NIKHIL SAI DEEP', N'EIE', N'APPS ASSOCIATES', N'3.54 LAKHS PER ANNUM', N'X@gmail.com')
INSERT [dbo].[alumni] ([sno], [name], [branch], [cname], [salary], [email]) VALUES (143, N'G SINDHUJA REDDY', N'CSE', N'TECH MAHINDRA', N'3.07 LAKHS PER ANNUM', N'X@gmail.com')
INSERT [dbo].[alumni] ([sno], [name], [branch], [cname], [salary], [email]) VALUES (144, N'SUVARNA JOSHI', N'EIE', N'TECH MAHINDRA', N'3.07 LAKHS PER ANNUM', N'X@gmail.com')
INSERT [dbo].[alumni] ([sno], [name], [branch], [cname], [salary], [email]) VALUES (145, N'RIDHI SHAH', N'IT', N'TECH MAHINDRA', N'3.07 LAKHS PER ANNUM', N'X@gmail.com')
INSERT [dbo].[alumni] ([sno], [name], [branch], [cname], [salary], [email]) VALUES (146, N'SHARON', N'IT', N'TECH MAHINDRA', N'3.07 LAKHS PER ANNUM', N'X@gmail.com')
INSERT [dbo].[alumni] ([sno], [name], [branch], [cname], [salary], [email]) VALUES (147, N'PHANI TEJA', N'ECE', N'TECH MAHINDRA', N'3.07 LAKHS PER ANNUM', N'X@gmail.com')
INSERT [dbo].[alumni] ([sno], [name], [branch], [cname], [salary], [email]) VALUES (148, N'AMRIT RAJ', N'CSE', N'TECH MAHINDRA', N'3.07 LAKHS PER ANNUM', N'X@gmail.com')
INSERT [dbo].[alumni] ([sno], [name], [branch], [cname], [salary], [email]) VALUES (149, N'PILLI BHAVYA', N'ECE', N'TECH MAHINDRA', N'3.07 LAKHS PER ANNUM', N'X@gmail.com')
INSERT [dbo].[alumni] ([sno], [name], [branch], [cname], [salary], [email]) VALUES (150, N'MERURU RAKSHIT', N'ECE', N'TECH MAHINDRA', N'3.07 LAKHS PER ANNUM', N'X@gmail.com')
INSERT [dbo].[alumni] ([sno], [name], [branch], [cname], [salary], [email]) VALUES (151, N'VEGI DINESH KUMAR', N'EIE', N'TECH MAHINDRA', N'3.07 LAKHS PER ANNUM', N'X@gmail.com')
INSERT [dbo].[alumni] ([sno], [name], [branch], [cname], [salary], [email]) VALUES (152, N'KANDUKURI PRIYANKA', N'IT', N'TECH MAHINDRA', N'3.07 LAKHS PER ANNUM', N'X@gmail.com')
INSERT [dbo].[alumni] ([sno], [name], [branch], [cname], [salary], [email]) VALUES (153, N'K KEERTHI', N'CSE', N'TECH MAHINDRA', N'3.07 LAKHS PER ANNUM', N'X@gmail.com')
INSERT [dbo].[alumni] ([sno], [name], [branch], [cname], [salary], [email]) VALUES (154, N'P SANTOSHI MANASA', N'ECE', N'TECH MAHINDRA', N'3.07 LAKHS PER ANNUM', N'X@gmail.com')
INSERT [dbo].[alumni] ([sno], [name], [branch], [cname], [salary], [email]) VALUES (155, N'SAGAR PATIL', N'CSE', N'TECH MAHINDRA', N'3.07 LAKHS PER ANNUM', N'X@gmail.com')
INSERT [dbo].[alumni] ([sno], [name], [branch], [cname], [salary], [email]) VALUES (156, N'K SUDERSHAN', N'CSE', N'TECH MAHINDRA', N'3.07 LAKHS PER ANNUM', N'X@gmail.com')
INSERT [dbo].[alumni] ([sno], [name], [branch], [cname], [salary], [email]) VALUES (157, N'R BHAVANA', N'CSE', N'TECH MAHINDRA', N'3.07 LAKHS PER ANNUM', N'X@gmail.com')
INSERT [dbo].[alumni] ([sno], [name], [branch], [cname], [salary], [email]) VALUES (158, N'NEHA SINGU', N'EIE', N'TECH MAHINDRA', N'3.07 LAKHS PER ANNUM', N'X@gmail.com')
