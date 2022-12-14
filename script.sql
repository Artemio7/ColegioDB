USE [master]
GO
/****** Object:  Database [ColegioDB]    Script Date: 8/09/2022 14:16:39 ******/
CREATE DATABASE [ColegioDB]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'ColegioDB', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL15.MSSQLSERVER\MSSQL\DATA\ColegioDB.mdf' , SIZE = 8192KB , MAXSIZE = UNLIMITED, FILEGROWTH = 65536KB )
 LOG ON 
( NAME = N'ColegioDB_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL15.MSSQLSERVER\MSSQL\DATA\ColegioDB_log.ldf' , SIZE = 8192KB , MAXSIZE = 2048GB , FILEGROWTH = 65536KB )
 WITH CATALOG_COLLATION = DATABASE_DEFAULT
GO
ALTER DATABASE [ColegioDB] SET COMPATIBILITY_LEVEL = 150
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [ColegioDB].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [ColegioDB] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [ColegioDB] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [ColegioDB] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [ColegioDB] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [ColegioDB] SET ARITHABORT OFF 
GO
ALTER DATABASE [ColegioDB] SET AUTO_CLOSE OFF 
GO
ALTER DATABASE [ColegioDB] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [ColegioDB] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [ColegioDB] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [ColegioDB] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [ColegioDB] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [ColegioDB] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [ColegioDB] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [ColegioDB] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [ColegioDB] SET  ENABLE_BROKER 
GO
ALTER DATABASE [ColegioDB] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [ColegioDB] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [ColegioDB] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [ColegioDB] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [ColegioDB] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [ColegioDB] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [ColegioDB] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [ColegioDB] SET RECOVERY FULL 
GO
ALTER DATABASE [ColegioDB] SET  MULTI_USER 
GO
ALTER DATABASE [ColegioDB] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [ColegioDB] SET DB_CHAINING OFF 
GO
ALTER DATABASE [ColegioDB] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [ColegioDB] SET TARGET_RECOVERY_TIME = 60 SECONDS 
GO
ALTER DATABASE [ColegioDB] SET DELAYED_DURABILITY = DISABLED 
GO
ALTER DATABASE [ColegioDB] SET ACCELERATED_DATABASE_RECOVERY = OFF  
GO
EXEC sys.sp_db_vardecimal_storage_format N'ColegioDB', N'ON'
GO
ALTER DATABASE [ColegioDB] SET QUERY_STORE = OFF
GO
USE [ColegioDB]
GO
/****** Object:  Table [dbo].[AlumnoDB]    Script Date: 8/09/2022 14:16:39 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AlumnoDB](
	[IDAlumno] [int] IDENTITY(1,1) NOT NULL,
	[Nombre] [varchar](255) NULL,
	[Codigo] [varchar](255) NULL,
	[Distrito] [varchar](255) NULL,
	[Edad] [varchar](255) NULL,
	[Turno] [varchar](255) NULL,
	[Celular] [varchar](255) NULL,
	[Correo] [varchar](255) NULL,
PRIMARY KEY CLUSTERED 
(
	[IDAlumno] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[DirectivosDB]    Script Date: 8/09/2022 14:16:39 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[DirectivosDB](
	[IDAlumno] [int] IDENTITY(1,1) NOT NULL,
	[Nombre] [varchar](255) NULL,
	[Cargo] [varchar](255) NULL,
	[Correo] [varchar](255) NULL,
	[Asunto] [varchar](255) NULL,
	[Hora] [varchar](255) NULL,
	[Celular] [varchar](255) NULL,
PRIMARY KEY CLUSTERED 
(
	[IDAlumno] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[DirectorDB]    Script Date: 8/09/2022 14:16:39 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[DirectorDB](
	[IDAlumno] [int] IDENTITY(1,1) NOT NULL,
	[Nombre] [varchar](255) NULL,
	[NumerodeUbigueo] [varchar](255) NULL,
	[Correo] [varchar](255) NULL,
	[Edad] [varchar](255) NULL,
	[NumerodeProfesores] [varchar](255) NULL,
	[Sueldo] [varchar](255) NULL,
	[NumerodeReuniones] [varchar](255) NULL,
PRIMARY KEY CLUSTERED 
(
	[IDAlumno] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[MaestroDB]    Script Date: 8/09/2022 14:16:39 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[MaestroDB](
	[IDAlumno] [int] IDENTITY(1,1) NOT NULL,
	[Nombre] [varchar](255) NULL,
	[Codigo] [varchar](255) NULL,
	[Correo] [varchar](255) NULL,
	[NumerodeCursos] [varchar](255) NULL,
	[Hora] [varchar](255) NULL,
	[Celular] [varchar](255) NULL,
	[DiaLaboral] [varchar](255) NULL,
	[Salon] [varchar](255) NULL,
PRIMARY KEY CLUSTERED 
(
	[IDAlumno] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[PadredeFamiliaDB]    Script Date: 8/09/2022 14:16:39 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[PadredeFamiliaDB](
	[IDAlumno] [int] IDENTITY(1,1) NOT NULL,
	[Nombre] [varchar](255) NULL,
	[Aula] [varchar](255) NULL,
	[Cita] [varchar](255) NULL,
	[Celular] [varchar](255) NULL,
PRIMARY KEY CLUSTERED 
(
	[IDAlumno] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[AlumnoDB] ON 

INSERT [dbo].[AlumnoDB] ([IDAlumno], [Nombre], [Codigo], [Distrito], [Edad], [Turno], [Celular], [Correo]) VALUES (1, N'Juan', N'202112432', N'Comas', N'18', N'Mañana', N'955847401', N'202112432@urp.edu.pe')
INSERT [dbo].[AlumnoDB] ([IDAlumno], [Nombre], [Codigo], [Distrito], [Edad], [Turno], [Celular], [Correo]) VALUES (2, N'Diego', N'202010655', N'Villa Maria del Triunfo', N'18', N'Mañana ', N'917533540', N'202010655@urp.edu.pe')
INSERT [dbo].[AlumnoDB] ([IDAlumno], [Nombre], [Codigo], [Distrito], [Edad], [Turno], [Celular], [Correo]) VALUES (3, N'Khatleen', N'202111999', N'San Juan de Lurigancho', N'20', N'Mañana', N'921601406', N'202111999@urp.edu.pe')
SET IDENTITY_INSERT [dbo].[AlumnoDB] OFF
GO
SET IDENTITY_INSERT [dbo].[DirectivosDB] ON 

INSERT [dbo].[DirectivosDB] ([IDAlumno], [Nombre], [Cargo], [Correo], [Asunto], [Hora], [Celular]) VALUES (1, N'Sarai', N'Directora ', N'202112433', N'Presupuesto para renovacion', N'10', N'944805948')
INSERT [dbo].[DirectivosDB] ([IDAlumno], [Nombre], [Cargo], [Correo], [Asunto], [Hora], [Celular]) VALUES (2, N'Gaston', N'Director', N'202114566', N'Problemas en el colegio', N'11', N'944825156')
INSERT [dbo].[DirectivosDB] ([IDAlumno], [Nombre], [Cargo], [Correo], [Asunto], [Hora], [Celular]) VALUES (3, N'Carlos', N'Director', N'202122151', N'Actualizacion de maquinas', N'12', N'951515151')
SET IDENTITY_INSERT [dbo].[DirectivosDB] OFF
GO
SET IDENTITY_INSERT [dbo].[DirectorDB] ON 

INSERT [dbo].[DirectorDB] ([IDAlumno], [Nombre], [NumerodeUbigueo], [Correo], [Edad], [NumerodeProfesores], [Sueldo], [NumerodeReuniones]) VALUES (1, N'Carlos ', N'51215', N'112615@urp.edu.pe', N'50', N'20', N'4000', N'5')
INSERT [dbo].[DirectorDB] ([IDAlumno], [Nombre], [NumerodeUbigueo], [Correo], [Edad], [NumerodeProfesores], [Sueldo], [NumerodeReuniones]) VALUES (2, N'Jose', N'62515', N'151514@urp.edu.pe', N'60', N'14', N'6600', N'4')
INSERT [dbo].[DirectorDB] ([IDAlumno], [Nombre], [NumerodeUbigueo], [Correo], [Edad], [NumerodeProfesores], [Sueldo], [NumerodeReuniones]) VALUES (3, N'Jesus', N'51215', N'151155@urp.edu.pe', N'40', N'10', N'3000', N'4')
SET IDENTITY_INSERT [dbo].[DirectorDB] OFF
GO
SET IDENTITY_INSERT [dbo].[MaestroDB] ON 

INSERT [dbo].[MaestroDB] ([IDAlumno], [Nombre], [Codigo], [Correo], [NumerodeCursos], [Hora], [Celular], [DiaLaboral], [Salon]) VALUES (1, N'Silvia', N'20222451', N'20222451@urp.edu.pe', N'10', N'10 am', N'95558151', N'Lunes', N'402')
INSERT [dbo].[MaestroDB] ([IDAlumno], [Nombre], [Codigo], [Correo], [NumerodeCursos], [Hora], [Celular], [DiaLaboral], [Salon]) VALUES (2, N'Estela', N'55515066', N'55515066', N'6', N'9 am ', N'95615151', N'Martes', N'506')
INSERT [dbo].[MaestroDB] ([IDAlumno], [Nombre], [Codigo], [Correo], [NumerodeCursos], [Hora], [Celular], [DiaLaboral], [Salon]) VALUES (3, N'Ruben', N'41515158', N'15161554@urp.edu.pe', N'3', N'11 am', N'96262323', N'Miercoles', N'303')
SET IDENTITY_INSERT [dbo].[MaestroDB] OFF
GO
SET IDENTITY_INSERT [dbo].[PadredeFamiliaDB] ON 

INSERT [dbo].[PadredeFamiliaDB] ([IDAlumno], [Nombre], [Aula], [Cita], [Celular]) VALUES (1, N'Yamilet', N'407', N'MAÑANA', N'9625151')
INSERT [dbo].[PadredeFamiliaDB] ([IDAlumno], [Nombre], [Aula], [Cita], [Celular]) VALUES (2, N'Yaseli', N'260', N'MAÑANA', N'9562626')
INSERT [dbo].[PadredeFamiliaDB] ([IDAlumno], [Nombre], [Aula], [Cita], [Celular]) VALUES (3, N'Alisson', N'112', N'MAÑANA', N'9956262')
SET IDENTITY_INSERT [dbo].[PadredeFamiliaDB] OFF
GO
USE [master]
GO
ALTER DATABASE [ColegioDB] SET  READ_WRITE 
GO
