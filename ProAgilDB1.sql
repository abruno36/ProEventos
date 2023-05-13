USE [master]
GO
/****** Object:  Database [ProAgil.db]    Script Date: 02/06/2021 12:01:38 ******/
CREATE DATABASE [ProAgil.db]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'ProAgil.db', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL15.SQLEXPRESS\MSSQL\DATA\ProAgil.db.mdf' , SIZE = 8192KB , MAXSIZE = UNLIMITED, FILEGROWTH = 65536KB )
 LOG ON 
( NAME = N'ProAgil.db_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL15.SQLEXPRESS\MSSQL\DATA\ProAgil.db_log.ldf' , SIZE = 8192KB , MAXSIZE = 2048GB , FILEGROWTH = 65536KB )
 WITH CATALOG_COLLATION = DATABASE_DEFAULT
GO
ALTER DATABASE [ProAgil.db] SET COMPATIBILITY_LEVEL = 150
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [ProAgil.db].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [ProAgil.db] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [ProAgil.db] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [ProAgil.db] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [ProAgil.db] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [ProAgil.db] SET ARITHABORT OFF 
GO
ALTER DATABASE [ProAgil.db] SET AUTO_CLOSE ON 
GO
ALTER DATABASE [ProAgil.db] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [ProAgil.db] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [ProAgil.db] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [ProAgil.db] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [ProAgil.db] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [ProAgil.db] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [ProAgil.db] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [ProAgil.db] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [ProAgil.db] SET  ENABLE_BROKER 
GO
ALTER DATABASE [ProAgil.db] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [ProAgil.db] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [ProAgil.db] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [ProAgil.db] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [ProAgil.db] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [ProAgil.db] SET READ_COMMITTED_SNAPSHOT ON 
GO
ALTER DATABASE [ProAgil.db] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [ProAgil.db] SET RECOVERY SIMPLE 
GO
ALTER DATABASE [ProAgil.db] SET  MULTI_USER 
GO
ALTER DATABASE [ProAgil.db] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [ProAgil.db] SET DB_CHAINING OFF 
GO
ALTER DATABASE [ProAgil.db] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [ProAgil.db] SET TARGET_RECOVERY_TIME = 60 SECONDS 
GO
ALTER DATABASE [ProAgil.db] SET DELAYED_DURABILITY = DISABLED 
GO
ALTER DATABASE [ProAgil.db] SET ACCELERATED_DATABASE_RECOVERY = OFF  
GO
ALTER DATABASE [ProAgil.db] SET QUERY_STORE = OFF
GO
USE [ProAgil.db]
GO
/****** Object:  Table [dbo].[__EFMigrationsHistory]    Script Date: 02/06/2021 12:01:38 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[__EFMigrationsHistory](
	[MigrationId] [nvarchar](150) NOT NULL,
	[ProductVersion] [nvarchar](32) NOT NULL,
 CONSTRAINT [PK___EFMigrationsHistory] PRIMARY KEY CLUSTERED 
(
	[MigrationId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[AspNetRoleClaims]    Script Date: 02/06/2021 12:01:38 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AspNetRoleClaims](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[RoleId] [int] NOT NULL,
	[ClaimType] [nvarchar](max) NULL,
	[ClaimValue] [nvarchar](max) NULL,
 CONSTRAINT [PK_AspNetRoleClaims] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[AspNetRoles]    Script Date: 02/06/2021 12:01:38 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AspNetRoles](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](256) NULL,
	[NormalizedName] [nvarchar](256) NULL,
	[ConcurrencyStamp] [nvarchar](max) NULL,
 CONSTRAINT [PK_AspNetRoles] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[AspNetUserClaims]    Script Date: 02/06/2021 12:01:38 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AspNetUserClaims](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[UserId] [int] NOT NULL,
	[ClaimType] [nvarchar](max) NULL,
	[ClaimValue] [nvarchar](max) NULL,
 CONSTRAINT [PK_AspNetUserClaims] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[AspNetUserLogins]    Script Date: 02/06/2021 12:01:38 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AspNetUserLogins](
	[LoginProvider] [nvarchar](450) NOT NULL,
	[ProviderKey] [nvarchar](450) NOT NULL,
	[ProviderDisplayName] [nvarchar](max) NULL,
	[UserId] [int] NOT NULL,
 CONSTRAINT [PK_AspNetUserLogins] PRIMARY KEY CLUSTERED 
(
	[LoginProvider] ASC,
	[ProviderKey] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[AspNetUserRoles]    Script Date: 02/06/2021 12:01:38 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AspNetUserRoles](
	[UserId] [int] NOT NULL,
	[RoleId] [int] NOT NULL,
 CONSTRAINT [PK_AspNetUserRoles] PRIMARY KEY CLUSTERED 
(
	[UserId] ASC,
	[RoleId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[AspNetUsers]    Script Date: 02/06/2021 12:01:38 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AspNetUsers](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[UserName] [nvarchar](256) NULL,
	[NormalizedUserName] [nvarchar](256) NULL,
	[Email] [nvarchar](256) NULL,
	[NormalizedEmail] [nvarchar](256) NULL,
	[EmailConfirmed] [bit] NOT NULL,
	[PasswordHash] [nvarchar](max) NULL,
	[SecurityStamp] [nvarchar](max) NULL,
	[ConcurrencyStamp] [nvarchar](max) NULL,
	[PhoneNumber] [nvarchar](max) NULL,
	[PhoneNumberConfirmed] [bit] NOT NULL,
	[TwoFactorEnabled] [bit] NOT NULL,
	[LockoutEnd] [datetimeoffset](7) NULL,
	[LockoutEnabled] [bit] NOT NULL,
	[AccessFailedCount] [int] NOT NULL,
	[FullName] [nvarchar](150) NULL,
 CONSTRAINT [PK_AspNetUsers] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[AspNetUserTokens]    Script Date: 02/06/2021 12:01:38 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AspNetUserTokens](
	[UserId] [int] NOT NULL,
	[LoginProvider] [nvarchar](450) NOT NULL,
	[Name] [nvarchar](450) NOT NULL,
	[Value] [nvarchar](max) NULL,
 CONSTRAINT [PK_AspNetUserTokens] PRIMARY KEY CLUSTERED 
(
	[UserId] ASC,
	[LoginProvider] ASC,
	[Name] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Eventos]    Script Date: 02/06/2021 12:01:38 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Eventos](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Local] [nvarchar](max) NULL,
	[DataEvento] [datetime2](7) NULL,
	[Tema] [nvarchar](max) NULL,
	[QtdPessoas] [int] NOT NULL,
	[ImagemURL] [nvarchar](max) NULL,
	[Telefone] [nvarchar](max) NULL,
	[Email] [nvarchar](max) NULL,
 CONSTRAINT [PK_Eventos] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Lotes]    Script Date: 02/06/2021 12:01:38 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Lotes](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Nome] [nvarchar](max) NULL,
	[Preco] [decimal](18, 2) NOT NULL,
	[DataInicio] [datetime2](7) NULL,
	[DataFim] [datetime2](7) NULL,
	[quantidade] [int] NOT NULL,
	[EventoId] [int] NOT NULL,
 CONSTRAINT [PK_Lotes] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[PalestranteEventos]    Script Date: 02/06/2021 12:01:38 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[PalestranteEventos](
	[PalestranteId] [int] NOT NULL,
	[EventoId] [int] NOT NULL,
 CONSTRAINT [PK_PalestranteEventos] PRIMARY KEY CLUSTERED 
(
	[EventoId] ASC,
	[PalestranteId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Palestrantes]    Script Date: 02/06/2021 12:01:38 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Palestrantes](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Nome] [nvarchar](max) NULL,
	[MiniCurriculo] [nvarchar](max) NULL,
	[ImagemURL] [nvarchar](max) NULL,
	[Telefone] [nvarchar](max) NULL,
	[Email] [nvarchar](max) NULL,
 CONSTRAINT [PK_Palestrantes] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[RedeSociais]    Script Date: 02/06/2021 12:01:38 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[RedeSociais](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Nome] [nvarchar](max) NULL,
	[URL] [nvarchar](max) NULL,
	[EventoId] [int] NULL,
	[PalestranteId] [int] NULL,
 CONSTRAINT [PK_RedeSociais] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
INSERT [dbo].[__EFMigrationsHistory] ([MigrationId], [ProductVersion]) VALUES (N'20210531104233_init', N'2.2.6-servicing-10079')
GO
SET IDENTITY_INSERT [dbo].[AspNetUsers] ON 

INSERT [dbo].[AspNetUsers] ([Id], [UserName], [NormalizedUserName], [Email], [NormalizedEmail], [EmailConfirmed], [PasswordHash], [SecurityStamp], [ConcurrencyStamp], [PhoneNumber], [PhoneNumberConfirmed], [TwoFactorEnabled], [LockoutEnd], [LockoutEnabled], [AccessFailedCount], [FullName]) VALUES (1, N'Bruno', N'BRUNO', N'abruno36@gmail.com', N'ABRUNO36@GMAIL.COM', 0, N'AQAAAAEAACcQAAAAEGFrWMr3WjVi0jY/caSWUnpjrf+Bg5IqtjB7XsZqW32QL4wrqAgV2qtRf7Q4JRZD+w==', N'RL2RNJUZ7TTAIO6A2R2U7OZT2ROORIBQ', N'941b5491-8b91-43c8-8929-e837873f9c4e', NULL, 0, 0, NULL, 1, 0, N'Antonio Bruno')
SET IDENTITY_INSERT [dbo].[AspNetUsers] OFF
GO
SET IDENTITY_INSERT [dbo].[Eventos] ON 

INSERT [dbo].[Eventos] ([Id], [Local], [DataEvento], [Tema], [QtdPessoas], [ImagemURL], [Telefone], [Email]) VALUES (1, N'São Paulo', CAST(N'2021-05-31T21:00:00.0000000' AS DateTime2), N'Angular 12', 100, N'amigos.jpg', N'11993936883', N'abruno36@gmail.com')
INSERT [dbo].[Eventos] ([Id], [Local], [DataEvento], [Tema], [QtdPessoas], [ImagemURL], [Telefone], [Email]) VALUES (2, N'São Bernardo do Campo', CAST(N'2021-05-24T18:00:00.0000000' AS DateTime2), N'Angular 7 e suas novidades', 200, N'angular.jpg', N'11993936883', N'abruno36@gmail.com')
INSERT [dbo].[Eventos] ([Id], [Local], [DataEvento], [Tema], [QtdPessoas], [ImagemURL], [Telefone], [Email]) VALUES (6, N'São Caetano do Sul', CAST(N'2021-06-28T14:00:00.0000000' AS DateTime2), N'NET CORE 5', 200, N'img9.jpg', N'11993936883', N'abruno36@gmail.com')
INSERT [dbo].[Eventos] ([Id], [Local], [DataEvento], [Tema], [QtdPessoas], [ImagemURL], [Telefone], [Email]) VALUES (8, N'São Paulo', CAST(N'2021-06-30T10:30:00.0000000' AS DateTime2), N'Angular 12', 122, N'img7.jpg', N'11993936883', N'abruno36@gmail.com')
INSERT [dbo].[Eventos] ([Id], [Local], [DataEvento], [Tema], [QtdPessoas], [ImagemURL], [Telefone], [Email]) VALUES (9, N'Santos', CAST(N'2021-06-29T23:00:00.0000000' AS DateTime2), N'Angular 12', 100, N'amigos.jpg', N'11993936883', N'abruno36@gmail.com')
INSERT [dbo].[Eventos] ([Id], [Local], [DataEvento], [Tema], [QtdPessoas], [ImagemURL], [Telefone], [Email]) VALUES (10, N'Bragança', CAST(N'2021-06-30T10:26:28.0000000' AS DateTime2), N'Angular 12', 100, N'1_8T0T3N36vuOKVs1hIFu2OQ.jpg', N'11993936883', N'abruno36@gmail.com')
INSERT [dbo].[Eventos] ([Id], [Local], [DataEvento], [Tema], [QtdPessoas], [ImagemURL], [Telefone], [Email]) VALUES (11, N'São Bernardo do Campo', CAST(N'2021-06-30T14:08:09.0000000' AS DateTime2), N'NET CORE 5', 100, N'1_bxErHtluCSUA2YLvri-IsA.jpeg', N'11993936883', N'abruno36@gmail.com')
INSERT [dbo].[Eventos] ([Id], [Local], [DataEvento], [Tema], [QtdPessoas], [ImagemURL], [Telefone], [Email]) VALUES (12, N'São Paulo, SP', CAST(N'2021-06-30T20:00:00.0000000' AS DateTime2), N'NET CORE 12 e Angular', 200, N'img7.jpg', N'11993936883', N'abruno36@gmail.com')
INSERT [dbo].[Eventos] ([Id], [Local], [DataEvento], [Tema], [QtdPessoas], [ImagemURL], [Telefone], [Email]) VALUES (13, N'Minas Gerais, MG', CAST(N'2021-06-29T11:10:29.0000000' AS DateTime2), N'Angular 12 e novidades', 200, N'angular.jpg', N'11993936883', N'abruno36@gmail.com')
SET IDENTITY_INSERT [dbo].[Eventos] OFF
GO
SET IDENTITY_INSERT [dbo].[Lotes] ON 

INSERT [dbo].[Lotes] ([Id], [Nome], [Preco], [DataInicio], [DataFim], [quantidade], [EventoId]) VALUES (3, N'Lote 01', CAST(300.00 AS Decimal(18, 2)), CAST(N'2021-07-20T00:00:00.0000000' AS DateTime2), CAST(N'2021-07-30T00:00:00.0000000' AS DateTime2), 20, 1)
INSERT [dbo].[Lotes] ([Id], [Nome], [Preco], [DataInicio], [DataFim], [quantidade], [EventoId]) VALUES (4, N'Lote 02', CAST(1000.00 AS Decimal(18, 2)), CAST(N'2021-08-01T00:00:00.0000000' AS DateTime2), CAST(N'2021-08-10T00:00:00.0000000' AS DateTime2), 300, 1)
SET IDENTITY_INSERT [dbo].[Lotes] OFF
GO
SET IDENTITY_INSERT [dbo].[RedeSociais] ON 

INSERT [dbo].[RedeSociais] ([Id], [Nome], [URL], [EventoId], [PalestranteId]) VALUES (2, N'fab fa-twitter', N'http://twiter.com.br', NULL, NULL)
SET IDENTITY_INSERT [dbo].[RedeSociais] OFF
GO
/****** Object:  Index [IX_AspNetRoleClaims_RoleId]    Script Date: 02/06/2021 12:01:38 ******/
CREATE NONCLUSTERED INDEX [IX_AspNetRoleClaims_RoleId] ON [dbo].[AspNetRoleClaims]
(
	[RoleId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [RoleNameIndex]    Script Date: 02/06/2021 12:01:38 ******/
CREATE UNIQUE NONCLUSTERED INDEX [RoleNameIndex] ON [dbo].[AspNetRoles]
(
	[NormalizedName] ASC
)
WHERE ([NormalizedName] IS NOT NULL)
WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
/****** Object:  Index [IX_AspNetUserClaims_UserId]    Script Date: 02/06/2021 12:01:38 ******/
CREATE NONCLUSTERED INDEX [IX_AspNetUserClaims_UserId] ON [dbo].[AspNetUserClaims]
(
	[UserId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
/****** Object:  Index [IX_AspNetUserLogins_UserId]    Script Date: 02/06/2021 12:01:38 ******/
CREATE NONCLUSTERED INDEX [IX_AspNetUserLogins_UserId] ON [dbo].[AspNetUserLogins]
(
	[UserId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
/****** Object:  Index [IX_AspNetUserRoles_RoleId]    Script Date: 02/06/2021 12:01:38 ******/
CREATE NONCLUSTERED INDEX [IX_AspNetUserRoles_RoleId] ON [dbo].[AspNetUserRoles]
(
	[RoleId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [EmailIndex]    Script Date: 02/06/2021 12:01:38 ******/
CREATE NONCLUSTERED INDEX [EmailIndex] ON [dbo].[AspNetUsers]
(
	[NormalizedEmail] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [UserNameIndex]    Script Date: 02/06/2021 12:01:38 ******/
CREATE UNIQUE NONCLUSTERED INDEX [UserNameIndex] ON [dbo].[AspNetUsers]
(
	[NormalizedUserName] ASC
)
WHERE ([NormalizedUserName] IS NOT NULL)
WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
/****** Object:  Index [IX_Lotes_EventoId]    Script Date: 02/06/2021 12:01:38 ******/
CREATE NONCLUSTERED INDEX [IX_Lotes_EventoId] ON [dbo].[Lotes]
(
	[EventoId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
/****** Object:  Index [IX_PalestranteEventos_PalestranteId]    Script Date: 02/06/2021 12:01:38 ******/
CREATE NONCLUSTERED INDEX [IX_PalestranteEventos_PalestranteId] ON [dbo].[PalestranteEventos]
(
	[PalestranteId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
/****** Object:  Index [IX_RedeSociais_EventoId]    Script Date: 02/06/2021 12:01:38 ******/
CREATE NONCLUSTERED INDEX [IX_RedeSociais_EventoId] ON [dbo].[RedeSociais]
(
	[EventoId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
/****** Object:  Index [IX_RedeSociais_PalestranteId]    Script Date: 02/06/2021 12:01:38 ******/
CREATE NONCLUSTERED INDEX [IX_RedeSociais_PalestranteId] ON [dbo].[RedeSociais]
(
	[PalestranteId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
ALTER TABLE [dbo].[AspNetRoleClaims]  WITH CHECK ADD  CONSTRAINT [FK_AspNetRoleClaims_AspNetRoles_RoleId] FOREIGN KEY([RoleId])
REFERENCES [dbo].[AspNetRoles] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[AspNetRoleClaims] CHECK CONSTRAINT [FK_AspNetRoleClaims_AspNetRoles_RoleId]
GO
ALTER TABLE [dbo].[AspNetUserClaims]  WITH CHECK ADD  CONSTRAINT [FK_AspNetUserClaims_AspNetUsers_UserId] FOREIGN KEY([UserId])
REFERENCES [dbo].[AspNetUsers] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[AspNetUserClaims] CHECK CONSTRAINT [FK_AspNetUserClaims_AspNetUsers_UserId]
GO
ALTER TABLE [dbo].[AspNetUserLogins]  WITH CHECK ADD  CONSTRAINT [FK_AspNetUserLogins_AspNetUsers_UserId] FOREIGN KEY([UserId])
REFERENCES [dbo].[AspNetUsers] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[AspNetUserLogins] CHECK CONSTRAINT [FK_AspNetUserLogins_AspNetUsers_UserId]
GO
ALTER TABLE [dbo].[AspNetUserRoles]  WITH CHECK ADD  CONSTRAINT [FK_AspNetUserRoles_AspNetRoles_RoleId] FOREIGN KEY([RoleId])
REFERENCES [dbo].[AspNetRoles] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[AspNetUserRoles] CHECK CONSTRAINT [FK_AspNetUserRoles_AspNetRoles_RoleId]
GO
ALTER TABLE [dbo].[AspNetUserRoles]  WITH CHECK ADD  CONSTRAINT [FK_AspNetUserRoles_AspNetUsers_UserId] FOREIGN KEY([UserId])
REFERENCES [dbo].[AspNetUsers] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[AspNetUserRoles] CHECK CONSTRAINT [FK_AspNetUserRoles_AspNetUsers_UserId]
GO
ALTER TABLE [dbo].[AspNetUserTokens]  WITH CHECK ADD  CONSTRAINT [FK_AspNetUserTokens_AspNetUsers_UserId] FOREIGN KEY([UserId])
REFERENCES [dbo].[AspNetUsers] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[AspNetUserTokens] CHECK CONSTRAINT [FK_AspNetUserTokens_AspNetUsers_UserId]
GO
ALTER TABLE [dbo].[Lotes]  WITH CHECK ADD  CONSTRAINT [FK_Lotes_Eventos_EventoId] FOREIGN KEY([EventoId])
REFERENCES [dbo].[Eventos] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[Lotes] CHECK CONSTRAINT [FK_Lotes_Eventos_EventoId]
GO
ALTER TABLE [dbo].[PalestranteEventos]  WITH CHECK ADD  CONSTRAINT [FK_PalestranteEventos_Eventos_EventoId] FOREIGN KEY([EventoId])
REFERENCES [dbo].[Eventos] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[PalestranteEventos] CHECK CONSTRAINT [FK_PalestranteEventos_Eventos_EventoId]
GO
ALTER TABLE [dbo].[PalestranteEventos]  WITH CHECK ADD  CONSTRAINT [FK_PalestranteEventos_Palestrantes_PalestranteId] FOREIGN KEY([PalestranteId])
REFERENCES [dbo].[Palestrantes] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[PalestranteEventos] CHECK CONSTRAINT [FK_PalestranteEventos_Palestrantes_PalestranteId]
GO
ALTER TABLE [dbo].[RedeSociais]  WITH CHECK ADD  CONSTRAINT [FK_RedeSociais_Eventos_EventoId] FOREIGN KEY([EventoId])
REFERENCES [dbo].[Eventos] ([Id])
GO
ALTER TABLE [dbo].[RedeSociais] CHECK CONSTRAINT [FK_RedeSociais_Eventos_EventoId]
GO
ALTER TABLE [dbo].[RedeSociais]  WITH CHECK ADD  CONSTRAINT [FK_RedeSociais_Palestrantes_PalestranteId] FOREIGN KEY([PalestranteId])
REFERENCES [dbo].[Palestrantes] ([Id])
GO
ALTER TABLE [dbo].[RedeSociais] CHECK CONSTRAINT [FK_RedeSociais_Palestrantes_PalestranteId]
GO
USE [master]
GO
ALTER DATABASE [ProAgil.db] SET  READ_WRITE 
GO
