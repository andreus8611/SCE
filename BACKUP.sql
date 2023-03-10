USE [BDCOLEGIOWEB]
GO
/****** Object:  Table [dbo].[ALUMNO]    Script Date: 03/02/2023 01:23:31 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ALUMNO](
	[IdAlumno] [int] IDENTITY(1,1) NOT NULL,
	[ValorCodigo] [int] NULL,
	[Codigo] [varchar](50) NULL,
	[Nombres] [varchar](100) NULL,
	[Apellidos] [varchar](100) NULL,
	[DocumentoIdentidad] [varchar](100) NULL,
	[FechaNacimiento] [date] NULL,
	[Sexo] [varchar](50) NULL,
	[Ciudad] [varchar](100) NULL,
	[Direccion] [varchar](100) NULL,
	[Activo] [bit] NULL,
	[FechaRegistro] [datetime] NULL,
PRIMARY KEY CLUSTERED 
(
	[IdAlumno] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[APODERADO]    Script Date: 03/02/2023 01:23:32 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[APODERADO](
	[IdApoderado] [int] IDENTITY(1,1) NOT NULL,
	[TipoRelacion] [varchar](50) NULL,
	[Nombres] [varchar](100) NULL,
	[Apellidos] [varchar](100) NULL,
	[DocumentoIdentidad] [varchar](100) NULL,
	[FechaNacimiento] [date] NULL,
	[Sexo] [varchar](50) NULL,
	[EstadoCivil] [varchar](50) NULL,
	[Ciudad] [varchar](100) NULL,
	[Direccion] [varchar](100) NULL,
	[Activo] [bit] NULL,
	[FechaRegistro] [datetime] NULL,
PRIMARY KEY CLUSTERED 
(
	[IdApoderado] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[CALIFICACION]    Script Date: 03/02/2023 01:23:32 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[CALIFICACION](
	[IdCalificacion] [int] IDENTITY(1,1) NOT NULL,
	[IdCurricula] [int] NULL,
	[IdAlumno] [int] NULL,
	[Nota] [float] NULL,
	[Activo] [bit] NULL,
	[FechaRegistro] [datetime] NULL,
PRIMARY KEY CLUSTERED 
(
	[IdCalificacion] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[CURRICULA]    Script Date: 03/02/2023 01:23:32 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[CURRICULA](
	[IdCurricula] [int] IDENTITY(1,1) NOT NULL,
	[IdDocenteNivelDetalleCurso] [int] NULL,
	[Descripcion] [varchar](100) NULL,
	[Activo] [bit] NULL,
	[FechaRegistro] [datetime] NULL,
PRIMARY KEY CLUSTERED 
(
	[IdCurricula] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[CURSO]    Script Date: 03/02/2023 01:23:32 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[CURSO](
	[IdCurso] [int] IDENTITY(1,1) NOT NULL,
	[Descripcion] [varchar](100) NULL,
	[Activo] [bit] NULL,
	[FechaRegistro] [datetime] NULL,
PRIMARY KEY CLUSTERED 
(
	[IdCurso] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[DOCENTE]    Script Date: 03/02/2023 01:23:32 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[DOCENTE](
	[IdDocente] [int] IDENTITY(1,1) NOT NULL,
	[ValorCodigo] [int] NULL,
	[Codigo] [varchar](50) NULL,
	[DocumentoIdentidad] [varchar](100) NULL,
	[Nombres] [varchar](100) NULL,
	[Apellidos] [varchar](100) NULL,
	[FechaNacimiento] [date] NULL,
	[Sexo] [varchar](50) NULL,
	[GradoEstudio] [varchar](100) NULL,
	[Ciudad] [varchar](100) NULL,
	[Direccion] [varchar](100) NULL,
	[Email] [varchar](50) NULL,
	[NumeroTelefono] [varchar](50) NULL,
	[Activo] [bit] NULL,
	[FechaRegistro] [datetime] NULL,
PRIMARY KEY CLUSTERED 
(
	[IdDocente] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[DOCENTE_NIVELDETALLE_CURSO]    Script Date: 03/02/2023 01:23:32 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[DOCENTE_NIVELDETALLE_CURSO](
	[IdDocenteNivelDetalleCurso] [int] IDENTITY(1,1) NOT NULL,
	[IdNivelDetalleCurso] [int] NULL,
	[IdDocente] [int] NULL,
	[Activo] [bit] NULL,
	[FechaRegistro] [datetime] NULL,
PRIMARY KEY CLUSTERED 
(
	[IdDocenteNivelDetalleCurso] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[GRADO_SECCION]    Script Date: 03/02/2023 01:23:32 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[GRADO_SECCION](
	[IdGradoSeccion] [int] IDENTITY(1,1) NOT NULL,
	[DescripcionGrado] [varchar](100) NULL,
	[DescripcionSeccion] [varchar](100) NULL,
	[Activo] [bit] NULL,
	[FechaRegistro] [datetime] NULL,
PRIMARY KEY CLUSTERED 
(
	[IdGradoSeccion] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[HORARIO]    Script Date: 03/02/2023 01:23:32 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[HORARIO](
	[IdHorario] [int] IDENTITY(1,1) NOT NULL,
	[IdNivelDetalleCurso] [int] NULL,
	[DiaSemana] [varchar](50) NULL,
	[HoraInicio] [time](7) NULL,
	[HoraFin] [time](7) NULL,
	[Activo] [bit] NULL,
	[FechaRegistro] [datetime] NULL,
PRIMARY KEY CLUSTERED 
(
	[IdHorario] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[MATRICULA]    Script Date: 03/02/2023 01:23:32 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[MATRICULA](
	[IdMatricula] [int] IDENTITY(1,1) NOT NULL,
	[ValorCodigo] [int] NULL,
	[Codigo] [varchar](50) NULL,
	[Situacion] [varchar](50) NULL,
	[IdAlumno] [int] NULL,
	[IdNivelDetalle] [int] NULL,
	[IdApoderado] [int] NULL,
	[InstitucionProcedencia] [varchar](50) NULL,
	[EsRepitente] [bit] NULL,
	[Activo] [bit] NULL,
	[FechaRegistro] [datetime] NULL,
PRIMARY KEY CLUSTERED 
(
	[IdMatricula] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[MENU]    Script Date: 03/02/2023 01:23:32 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[MENU](
	[IdMenu] [int] IDENTITY(1,1) NOT NULL,
	[Nombre] [varchar](60) NULL,
	[Icono] [varchar](60) NULL,
	[Activo] [bit] NULL,
	[FechaRegistro] [datetime] NULL,
PRIMARY KEY CLUSTERED 
(
	[IdMenu] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[NIVEL]    Script Date: 03/02/2023 01:23:32 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[NIVEL](
	[IdNivel] [int] IDENTITY(1,1) NOT NULL,
	[IdPeriodo] [int] NULL,
	[DescripcionNivel] [varchar](100) NULL,
	[DescripcionTurno] [varchar](100) NULL,
	[HoraInicio] [time](7) NULL,
	[HoraFin] [time](7) NULL,
	[Activo] [bit] NULL,
	[FechaRegistro] [datetime] NULL,
PRIMARY KEY CLUSTERED 
(
	[IdNivel] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[NIVEL_DETALLE]    Script Date: 03/02/2023 01:23:32 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[NIVEL_DETALLE](
	[IdNivelDetalle] [int] IDENTITY(1,1) NOT NULL,
	[IdNivel] [int] NULL,
	[IdGradoSeccion] [int] NULL,
	[TotalVacantes] [int] NULL,
	[VacantesDisponibles] [int] NULL,
	[VacantesOcupadas] [int] NULL,
	[Activo] [bit] NULL,
	[FechaRegistro] [datetime] NULL,
PRIMARY KEY CLUSTERED 
(
	[IdNivelDetalle] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[NIVEL_DETALLE_CURSO]    Script Date: 03/02/2023 01:23:32 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[NIVEL_DETALLE_CURSO](
	[IdNivelDetalleCurso] [int] IDENTITY(1,1) NOT NULL,
	[IdNivelDetalle] [int] NULL,
	[IdCurso] [int] NULL,
	[Activo] [bit] NULL,
	[FechaRegistro] [datetime] NULL,
PRIMARY KEY CLUSTERED 
(
	[IdNivelDetalleCurso] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[PERIODO]    Script Date: 03/02/2023 01:23:32 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[PERIODO](
	[IdPeriodo] [int] IDENTITY(1,1) NOT NULL,
	[Descripcion] [varchar](50) NULL,
	[FechaInicio] [date] NULL,
	[FechaFin] [date] NULL,
	[Activo] [bit] NULL,
	[FechaRegistro] [datetime] NULL,
PRIMARY KEY CLUSTERED 
(
	[IdPeriodo] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[PERMISOS]    Script Date: 03/02/2023 01:23:32 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[PERMISOS](
	[IdPermisos] [int] IDENTITY(1,1) NOT NULL,
	[IdRol] [int] NULL,
	[IdSubMenu] [int] NULL,
	[Activo] [bit] NULL,
	[FechaRegistro] [datetime] NULL,
PRIMARY KEY CLUSTERED 
(
	[IdPermisos] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ROL]    Script Date: 03/02/2023 01:23:32 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ROL](
	[IdRol] [int] IDENTITY(1,1) NOT NULL,
	[Descripcion] [varchar](60) NULL,
	[Activo] [bit] NULL,
	[FechaRegistro] [datetime] NULL,
PRIMARY KEY CLUSTERED 
(
	[IdRol] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[SUBMENU]    Script Date: 03/02/2023 01:23:32 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[SUBMENU](
	[IdSubMenu] [int] IDENTITY(1,1) NOT NULL,
	[IdMenu] [int] NULL,
	[Nombre] [varchar](60) NULL,
	[NombreFormulario] [varchar](60) NULL,
	[Accion] [varchar](50) NULL,
	[Activo] [bit] NULL,
	[FechaRegistro] [datetime] NULL,
PRIMARY KEY CLUSTERED 
(
	[IdSubMenu] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[USUARIO]    Script Date: 03/02/2023 01:23:32 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[USUARIO](
	[IdUsuario] [int] IDENTITY(1,1) NOT NULL,
	[Nombres] [varchar](100) NULL,
	[Apellidos] [varchar](100) NULL,
	[IdRol] [int] NULL,
	[LoginUsuario] [varchar](50) NULL,
	[LoginClave] [varchar](50) NULL,
	[DescripcionReferencia] [varchar](50) NULL,
	[IdReferencia] [int] NULL,
	[Activo] [bit] NULL,
	[FechaRegistro] [datetime] NULL,
PRIMARY KEY CLUSTERED 
(
	[IdUsuario] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[ALUMNO] ON 

INSERT [dbo].[ALUMNO] ([IdAlumno], [ValorCodigo], [Codigo], [Nombres], [Apellidos], [DocumentoIdentidad], [FechaNacimiento], [Sexo], [Ciudad], [Direccion], [Activo], [FechaRegistro]) VALUES (1, 1, N'AL000001', N'ROSALIA', N'MENDEZ', N'78974545', CAST(N'1999-02-16' AS Date), N'Femenino', N'TEXAS', N'AV. GUG', 1, CAST(N'2022-12-21T17:29:17.540' AS DateTime))
INSERT [dbo].[ALUMNO] ([IdAlumno], [ValorCodigo], [Codigo], [Nombres], [Apellidos], [DocumentoIdentidad], [FechaNacimiento], [Sexo], [Ciudad], [Direccion], [Activo], [FechaRegistro]) VALUES (2, 2, N'AL000002', N'JUAN', N'TORRES', N'78946548', CAST(N'2000-02-08' AS Date), N'Masculino', N'ALENG', N'AV.UG', 1, CAST(N'2022-12-21T17:29:17.540' AS DateTime))
INSERT [dbo].[ALUMNO] ([IdAlumno], [ValorCodigo], [Codigo], [Nombres], [Apellidos], [DocumentoIdentidad], [FechaNacimiento], [Sexo], [Ciudad], [Direccion], [Activo], [FechaRegistro]) VALUES (3, 3, N'AL000003', N'PAMELA', N'ESTEBAN', N'79005645', CAST(N'2000-12-23' AS Date), N'Femenino', N'ALEXANDRIA', N'AV.TORRYU', 1, CAST(N'2022-12-21T17:29:17.540' AS DateTime))
INSERT [dbo].[ALUMNO] ([IdAlumno], [ValorCodigo], [Codigo], [Nombres], [Apellidos], [DocumentoIdentidad], [FechaNacimiento], [Sexo], [Ciudad], [Direccion], [Activo], [FechaRegistro]) VALUES (4, 4, N'AL000004', N'ROCIO', N'PINTO', N'76345623', CAST(N'2001-06-12' AS Date), N'Femenino', N'LUISIANA', N'AV.LUX', 1, CAST(N'2022-12-21T17:29:17.540' AS DateTime))
INSERT [dbo].[ALUMNO] ([IdAlumno], [ValorCodigo], [Codigo], [Nombres], [Apellidos], [DocumentoIdentidad], [FechaNacimiento], [Sexo], [Ciudad], [Direccion], [Activo], [FechaRegistro]) VALUES (5, 5, N'AL000005', N'ALFONSO', N'SANCHEZ', N'70795647', CAST(N'2001-07-10' AS Date), N'Masculino', N'PERSIANA', N'AV.PERSI', 1, CAST(N'2022-12-21T17:29:17.540' AS DateTime))
INSERT [dbo].[ALUMNO] ([IdAlumno], [ValorCodigo], [Codigo], [Nombres], [Apellidos], [DocumentoIdentidad], [FechaNacimiento], [Sexo], [Ciudad], [Direccion], [Activo], [FechaRegistro]) VALUES (6, 6, N'AL000006', N'RODRIGO', N'PEREZ', N'76453626', CAST(N'2000-08-17' AS Date), N'Masculino', N'LOREM', N'AV.LOREM', 1, CAST(N'2022-12-21T17:29:17.540' AS DateTime))
INSERT [dbo].[ALUMNO] ([IdAlumno], [ValorCodigo], [Codigo], [Nombres], [Apellidos], [DocumentoIdentidad], [FechaNacimiento], [Sexo], [Ciudad], [Direccion], [Activo], [FechaRegistro]) VALUES (7, 7, N'AL000007', N'ROSALIA', N'MENDES', N'78974545', CAST(N'1999-02-16' AS Date), N'Femenino', N'TEXAS', N'AV. GUG', 1, CAST(N'2022-12-28T15:08:03.177' AS DateTime))
SET IDENTITY_INSERT [dbo].[ALUMNO] OFF
GO
SET IDENTITY_INSERT [dbo].[APODERADO] ON 

INSERT [dbo].[APODERADO] ([IdApoderado], [TipoRelacion], [Nombres], [Apellidos], [DocumentoIdentidad], [FechaNacimiento], [Sexo], [EstadoCivil], [Ciudad], [Direccion], [Activo], [FechaRegistro]) VALUES (1, N'Tio', N'ALEX DAVID', N'SANCHEZ SANCHEZ', N'29590', CAST(N'2004-05-05' AS Date), N'Masculino', N'Soltero(a)', N'CHIAPAS', N'Sn Belisario Domínguez sn', 1, CAST(N'2022-12-28T15:08:03.220' AS DateTime))
SET IDENTITY_INSERT [dbo].[APODERADO] OFF
GO
SET IDENTITY_INSERT [dbo].[CURRICULA] ON 

INSERT [dbo].[CURRICULA] ([IdCurricula], [IdDocenteNivelDetalleCurso], [Descripcion], [Activo], [FechaRegistro]) VALUES (1, 1, N'EVALUACION 001', 1, CAST(N'2022-12-21T17:29:17.550' AS DateTime))
INSERT [dbo].[CURRICULA] ([IdCurricula], [IdDocenteNivelDetalleCurso], [Descripcion], [Activo], [FechaRegistro]) VALUES (2, 1, N'EVALUACION 002', 1, CAST(N'2022-12-21T17:29:17.550' AS DateTime))
INSERT [dbo].[CURRICULA] ([IdCurricula], [IdDocenteNivelDetalleCurso], [Descripcion], [Activo], [FechaRegistro]) VALUES (3, 1, N'EVALUACION 003', 1, CAST(N'2022-12-21T17:29:17.550' AS DateTime))
SET IDENTITY_INSERT [dbo].[CURRICULA] OFF
GO
SET IDENTITY_INSERT [dbo].[CURSO] ON 

INSERT [dbo].[CURSO] ([IdCurso], [Descripcion], [Activo], [FechaRegistro]) VALUES (1, N'QUIMICA', 1, CAST(N'2022-12-21T17:29:17.480' AS DateTime))
INSERT [dbo].[CURSO] ([IdCurso], [Descripcion], [Activo], [FechaRegistro]) VALUES (2, N'MATEMATICAS', 1, CAST(N'2022-12-21T17:29:17.480' AS DateTime))
INSERT [dbo].[CURSO] ([IdCurso], [Descripcion], [Activo], [FechaRegistro]) VALUES (3, N'RELIGION', 1, CAST(N'2022-12-21T17:29:17.480' AS DateTime))
INSERT [dbo].[CURSO] ([IdCurso], [Descripcion], [Activo], [FechaRegistro]) VALUES (4, N'HISTORIA', 1, CAST(N'2022-12-21T17:29:17.480' AS DateTime))
INSERT [dbo].[CURSO] ([IdCurso], [Descripcion], [Activo], [FechaRegistro]) VALUES (5, N'COMPUTACION', 1, CAST(N'2022-12-21T17:29:17.480' AS DateTime))
INSERT [dbo].[CURSO] ([IdCurso], [Descripcion], [Activo], [FechaRegistro]) VALUES (6, N'FISICA', 1, CAST(N'2022-12-21T17:29:17.480' AS DateTime))
INSERT [dbo].[CURSO] ([IdCurso], [Descripcion], [Activo], [FechaRegistro]) VALUES (7, N'COMUNICACION', 1, CAST(N'2022-12-21T17:29:17.480' AS DateTime))
INSERT [dbo].[CURSO] ([IdCurso], [Descripcion], [Activo], [FechaRegistro]) VALUES (8, N'PSICOLOGIA', 1, CAST(N'2022-12-21T17:29:17.480' AS DateTime))
SET IDENTITY_INSERT [dbo].[CURSO] OFF
GO
SET IDENTITY_INSERT [dbo].[DOCENTE] ON 

INSERT [dbo].[DOCENTE] ([IdDocente], [ValorCodigo], [Codigo], [DocumentoIdentidad], [Nombres], [Apellidos], [FechaNacimiento], [Sexo], [GradoEstudio], [Ciudad], [Direccion], [Email], [NumeroTelefono], [Activo], [FechaRegistro]) VALUES (1, 1, N'DO000001', N'78945612', N'ALBERTO', N'RODRIGUEZ', CAST(N'1980-07-19' AS Date), N'Masculino', N'BACHICHERATO', N'TEXAS', N'MIAMI 123', N'ROD@GMAIL.COM', N'936798490', 1, CAST(N'2022-12-21T17:29:17.537' AS DateTime))
INSERT [dbo].[DOCENTE] ([IdDocente], [ValorCodigo], [Codigo], [DocumentoIdentidad], [Nombres], [Apellidos], [FechaNacimiento], [Sexo], [GradoEstudio], [Ciudad], [Direccion], [Email], [NumeroTelefono], [Activo], [FechaRegistro]) VALUES (2, 2, N'DO000002', N'78894500', N'ESTEBAN', N'TAPUR', CAST(N'1970-02-06' AS Date), N'Masculino', N'TITULADO', N'THE END', N'STRET 456', N'EST@GMAIL.COM', N'987654321', 1, CAST(N'2022-12-21T17:29:17.537' AS DateTime))
INSERT [dbo].[DOCENTE] ([IdDocente], [ValorCodigo], [Codigo], [DocumentoIdentidad], [Nombres], [Apellidos], [FechaNacimiento], [Sexo], [GradoEstudio], [Ciudad], [Direccion], [Email], [NumeroTelefono], [Activo], [FechaRegistro]) VALUES (3, 3, N'DO000003', N'789458923', N'SARA', N'SANTIR', CAST(N'1979-02-06' AS Date), N'Femenino', N'TITULADO', N'AV.TORE', N'STRET 799', N'SAR@GMAIL.COM', N'964852100', 1, CAST(N'2022-12-21T17:29:17.537' AS DateTime))
SET IDENTITY_INSERT [dbo].[DOCENTE] OFF
GO
SET IDENTITY_INSERT [dbo].[DOCENTE_NIVELDETALLE_CURSO] ON 

INSERT [dbo].[DOCENTE_NIVELDETALLE_CURSO] ([IdDocenteNivelDetalleCurso], [IdNivelDetalleCurso], [IdDocente], [Activo], [FechaRegistro]) VALUES (1, 1, 1, 1, CAST(N'2022-12-21T17:29:17.547' AS DateTime))
INSERT [dbo].[DOCENTE_NIVELDETALLE_CURSO] ([IdDocenteNivelDetalleCurso], [IdNivelDetalleCurso], [IdDocente], [Activo], [FechaRegistro]) VALUES (2, 2, 2, 1, CAST(N'2022-12-21T17:29:17.547' AS DateTime))
INSERT [dbo].[DOCENTE_NIVELDETALLE_CURSO] ([IdDocenteNivelDetalleCurso], [IdNivelDetalleCurso], [IdDocente], [Activo], [FechaRegistro]) VALUES (3, 9, 1, 1, CAST(N'2022-12-22T14:06:34.463' AS DateTime))
SET IDENTITY_INSERT [dbo].[DOCENTE_NIVELDETALLE_CURSO] OFF
GO
SET IDENTITY_INSERT [dbo].[GRADO_SECCION] ON 

INSERT [dbo].[GRADO_SECCION] ([IdGradoSeccion], [DescripcionGrado], [DescripcionSeccion], [Activo], [FechaRegistro]) VALUES (1, N'PRIMERO', N'A', 1, CAST(N'2022-12-21T17:29:17.467' AS DateTime))
INSERT [dbo].[GRADO_SECCION] ([IdGradoSeccion], [DescripcionGrado], [DescripcionSeccion], [Activo], [FechaRegistro]) VALUES (2, N'PRIMERO', N'B', 1, CAST(N'2022-12-21T17:29:17.467' AS DateTime))
INSERT [dbo].[GRADO_SECCION] ([IdGradoSeccion], [DescripcionGrado], [DescripcionSeccion], [Activo], [FechaRegistro]) VALUES (3, N'PRIMERO', N'C', 1, CAST(N'2022-12-21T17:29:17.467' AS DateTime))
INSERT [dbo].[GRADO_SECCION] ([IdGradoSeccion], [DescripcionGrado], [DescripcionSeccion], [Activo], [FechaRegistro]) VALUES (4, N'SEGUNDO', N'A', 1, CAST(N'2022-12-21T17:29:17.467' AS DateTime))
INSERT [dbo].[GRADO_SECCION] ([IdGradoSeccion], [DescripcionGrado], [DescripcionSeccion], [Activo], [FechaRegistro]) VALUES (5, N'SEGUNDO', N'B', 1, CAST(N'2022-12-21T17:29:17.467' AS DateTime))
INSERT [dbo].[GRADO_SECCION] ([IdGradoSeccion], [DescripcionGrado], [DescripcionSeccion], [Activo], [FechaRegistro]) VALUES (7, N'TERCERO', N'A', 1, CAST(N'2022-12-21T17:29:17.467' AS DateTime))
INSERT [dbo].[GRADO_SECCION] ([IdGradoSeccion], [DescripcionGrado], [DescripcionSeccion], [Activo], [FechaRegistro]) VALUES (8, N'TERCERO', N'B', 1, CAST(N'2022-12-21T17:29:17.467' AS DateTime))
SET IDENTITY_INSERT [dbo].[GRADO_SECCION] OFF
GO
SET IDENTITY_INSERT [dbo].[HORARIO] ON 

INSERT [dbo].[HORARIO] ([IdHorario], [IdNivelDetalleCurso], [DiaSemana], [HoraInicio], [HoraFin], [Activo], [FechaRegistro]) VALUES (1, NULL, N'Lunes', CAST(N'08:30:00' AS Time), CAST(N'09:30:00' AS Time), 1, CAST(N'2022-12-21T17:29:17.533' AS DateTime))
INSERT [dbo].[HORARIO] ([IdHorario], [IdNivelDetalleCurso], [DiaSemana], [HoraInicio], [HoraFin], [Activo], [FechaRegistro]) VALUES (2, NULL, N'Lunes', CAST(N'09:30:00' AS Time), CAST(N'10:30:00' AS Time), 1, CAST(N'2022-12-21T17:29:17.533' AS DateTime))
INSERT [dbo].[HORARIO] ([IdHorario], [IdNivelDetalleCurso], [DiaSemana], [HoraInicio], [HoraFin], [Activo], [FechaRegistro]) VALUES (3, NULL, N'Lunes', CAST(N'10:30:00' AS Time), CAST(N'11:30:00' AS Time), 1, CAST(N'2022-12-21T17:29:17.533' AS DateTime))
INSERT [dbo].[HORARIO] ([IdHorario], [IdNivelDetalleCurso], [DiaSemana], [HoraInicio], [HoraFin], [Activo], [FechaRegistro]) VALUES (4, NULL, N'Lunes', CAST(N'11:30:00' AS Time), CAST(N'12:35:00' AS Time), 1, CAST(N'2022-12-21T17:29:17.533' AS DateTime))
INSERT [dbo].[HORARIO] ([IdHorario], [IdNivelDetalleCurso], [DiaSemana], [HoraInicio], [HoraFin], [Activo], [FechaRegistro]) VALUES (5, 9, N'Lunes', CAST(N'06:00:00' AS Time), CAST(N'07:30:00' AS Time), 1, CAST(N'2022-12-22T14:06:13.607' AS DateTime))
SET IDENTITY_INSERT [dbo].[HORARIO] OFF
GO
SET IDENTITY_INSERT [dbo].[MATRICULA] ON 

INSERT [dbo].[MATRICULA] ([IdMatricula], [ValorCodigo], [Codigo], [Situacion], [IdAlumno], [IdNivelDetalle], [IdApoderado], [InstitucionProcedencia], [EsRepitente], [Activo], [FechaRegistro]) VALUES (1, 1, N'MA000001', N'Nuevo', 7, 4, 1, N'Carlos Juarez', 0, 1, CAST(N'2022-12-28T15:08:03.267' AS DateTime))
SET IDENTITY_INSERT [dbo].[MATRICULA] OFF
GO
SET IDENTITY_INSERT [dbo].[MENU] ON 

INSERT [dbo].[MENU] ([IdMenu], [Nombre], [Icono], [Activo], [FechaRegistro]) VALUES (1, N'Configuraciones', N'', 1, CAST(N'2022-12-21T17:29:17.060' AS DateTime))
INSERT [dbo].[MENU] ([IdMenu], [Nombre], [Icono], [Activo], [FechaRegistro]) VALUES (2, N'Usuarios', N'', 1, CAST(N'2022-12-21T17:29:17.060' AS DateTime))
INSERT [dbo].[MENU] ([IdMenu], [Nombre], [Icono], [Activo], [FechaRegistro]) VALUES (3, N'Alumnos', N'', 1, CAST(N'2022-12-21T17:29:17.060' AS DateTime))
INSERT [dbo].[MENU] ([IdMenu], [Nombre], [Icono], [Activo], [FechaRegistro]) VALUES (4, N'Docentes', N'', 1, CAST(N'2022-12-21T17:29:17.060' AS DateTime))
INSERT [dbo].[MENU] ([IdMenu], [Nombre], [Icono], [Activo], [FechaRegistro]) VALUES (5, N'Cursos', N'', 1, CAST(N'2022-12-21T17:29:17.060' AS DateTime))
INSERT [dbo].[MENU] ([IdMenu], [Nombre], [Icono], [Activo], [FechaRegistro]) VALUES (6, N'Matricula', N'', 1, CAST(N'2022-12-21T17:29:17.060' AS DateTime))
SET IDENTITY_INSERT [dbo].[MENU] OFF
GO
SET IDENTITY_INSERT [dbo].[NIVEL] ON 

INSERT [dbo].[NIVEL] ([IdNivel], [IdPeriodo], [DescripcionNivel], [DescripcionTurno], [HoraInicio], [HoraFin], [Activo], [FechaRegistro]) VALUES (1, NULL, N'PRIMARIA', N'MAÑANA', CAST(N'08:30:00' AS Time), CAST(N'12:35:00' AS Time), 0, CAST(N'2022-12-21T17:29:17.460' AS DateTime))
INSERT [dbo].[NIVEL] ([IdNivel], [IdPeriodo], [DescripcionNivel], [DescripcionTurno], [HoraInicio], [HoraFin], [Activo], [FechaRegistro]) VALUES (2, NULL, N'SECUNDARIA', N'TARDE', CAST(N'13:00:00' AS Time), CAST(N'18:00:00' AS Time), 0, CAST(N'2022-12-21T17:29:17.460' AS DateTime))
INSERT [dbo].[NIVEL] ([IdNivel], [IdPeriodo], [DescripcionNivel], [DescripcionTurno], [HoraInicio], [HoraFin], [Activo], [FechaRegistro]) VALUES (3, NULL, N'PRIMARIA', N'MAÑANA', CAST(N'08:30:00' AS Time), CAST(N'12:35:00' AS Time), 1, CAST(N'2022-12-21T17:29:17.460' AS DateTime))
INSERT [dbo].[NIVEL] ([IdNivel], [IdPeriodo], [DescripcionNivel], [DescripcionTurno], [HoraInicio], [HoraFin], [Activo], [FechaRegistro]) VALUES (4, NULL, N'SECUNDARIA', N'TARDE', CAST(N'13:00:00' AS Time), CAST(N'18:00:00' AS Time), 1, CAST(N'2022-12-21T17:29:17.460' AS DateTime))
INSERT [dbo].[NIVEL] ([IdNivel], [IdPeriodo], [DescripcionNivel], [DescripcionTurno], [HoraInicio], [HoraFin], [Activo], [FechaRegistro]) VALUES (5, 2, N'Universidad', N'Matutino', CAST(N'06:00:00' AS Time), CAST(N'13:00:00' AS Time), 1, CAST(N'2022-12-22T14:00:29.853' AS DateTime))
INSERT [dbo].[NIVEL] ([IdNivel], [IdPeriodo], [DescripcionNivel], [DescripcionTurno], [HoraInicio], [HoraFin], [Activo], [FechaRegistro]) VALUES (7, 2, N'prueba', N'das', CAST(N'06:00:00' AS Time), CAST(N'13:00:00' AS Time), 1, CAST(N'2023-01-30T22:14:18.550' AS DateTime))
SET IDENTITY_INSERT [dbo].[NIVEL] OFF
GO
SET IDENTITY_INSERT [dbo].[NIVEL_DETALLE] ON 

INSERT [dbo].[NIVEL_DETALLE] ([IdNivelDetalle], [IdNivel], [IdGradoSeccion], [TotalVacantes], [VacantesDisponibles], [VacantesOcupadas], [Activo], [FechaRegistro]) VALUES (1, NULL, 1, 30, 30, 0, 1, CAST(N'2022-12-21T17:29:17.477' AS DateTime))
INSERT [dbo].[NIVEL_DETALLE] ([IdNivelDetalle], [IdNivel], [IdGradoSeccion], [TotalVacantes], [VacantesDisponibles], [VacantesOcupadas], [Activo], [FechaRegistro]) VALUES (2, NULL, 2, 30, 30, 0, 1, CAST(N'2022-12-21T17:29:17.477' AS DateTime))
INSERT [dbo].[NIVEL_DETALLE] ([IdNivelDetalle], [IdNivel], [IdGradoSeccion], [TotalVacantes], [VacantesDisponibles], [VacantesOcupadas], [Activo], [FechaRegistro]) VALUES (3, NULL, 3, 30, 30, 0, 1, CAST(N'2022-12-21T17:29:17.477' AS DateTime))
INSERT [dbo].[NIVEL_DETALLE] ([IdNivelDetalle], [IdNivel], [IdGradoSeccion], [TotalVacantes], [VacantesDisponibles], [VacantesOcupadas], [Activo], [FechaRegistro]) VALUES (4, 5, 8, 5, 4, 1, 1, CAST(N'2022-12-22T14:01:26.090' AS DateTime))
SET IDENTITY_INSERT [dbo].[NIVEL_DETALLE] OFF
GO
SET IDENTITY_INSERT [dbo].[NIVEL_DETALLE_CURSO] ON 

INSERT [dbo].[NIVEL_DETALLE_CURSO] ([IdNivelDetalleCurso], [IdNivelDetalle], [IdCurso], [Activo], [FechaRegistro]) VALUES (1, NULL, 1, 1, CAST(N'2022-12-21T17:29:17.513' AS DateTime))
INSERT [dbo].[NIVEL_DETALLE_CURSO] ([IdNivelDetalleCurso], [IdNivelDetalle], [IdCurso], [Activo], [FechaRegistro]) VALUES (2, NULL, 2, 1, CAST(N'2022-12-21T17:29:17.513' AS DateTime))
INSERT [dbo].[NIVEL_DETALLE_CURSO] ([IdNivelDetalleCurso], [IdNivelDetalle], [IdCurso], [Activo], [FechaRegistro]) VALUES (3, NULL, 3, 1, CAST(N'2022-12-21T17:29:17.513' AS DateTime))
INSERT [dbo].[NIVEL_DETALLE_CURSO] ([IdNivelDetalleCurso], [IdNivelDetalle], [IdCurso], [Activo], [FechaRegistro]) VALUES (4, NULL, 4, 1, CAST(N'2022-12-21T17:29:17.513' AS DateTime))
INSERT [dbo].[NIVEL_DETALLE_CURSO] ([IdNivelDetalleCurso], [IdNivelDetalle], [IdCurso], [Activo], [FechaRegistro]) VALUES (5, NULL, 5, 1, CAST(N'2022-12-21T17:29:17.513' AS DateTime))
INSERT [dbo].[NIVEL_DETALLE_CURSO] ([IdNivelDetalleCurso], [IdNivelDetalle], [IdCurso], [Activo], [FechaRegistro]) VALUES (6, NULL, 6, 1, CAST(N'2022-12-21T17:29:17.513' AS DateTime))
INSERT [dbo].[NIVEL_DETALLE_CURSO] ([IdNivelDetalleCurso], [IdNivelDetalle], [IdCurso], [Activo], [FechaRegistro]) VALUES (7, NULL, 7, 1, CAST(N'2022-12-21T17:29:17.513' AS DateTime))
INSERT [dbo].[NIVEL_DETALLE_CURSO] ([IdNivelDetalleCurso], [IdNivelDetalle], [IdCurso], [Activo], [FechaRegistro]) VALUES (8, NULL, 8, 1, CAST(N'2022-12-21T17:29:17.513' AS DateTime))
INSERT [dbo].[NIVEL_DETALLE_CURSO] ([IdNivelDetalleCurso], [IdNivelDetalle], [IdCurso], [Activo], [FechaRegistro]) VALUES (9, 4, 2, 1, CAST(N'2022-12-22T14:05:09.863' AS DateTime))
SET IDENTITY_INSERT [dbo].[NIVEL_DETALLE_CURSO] OFF
GO
SET IDENTITY_INSERT [dbo].[PERIODO] ON 

INSERT [dbo].[PERIODO] ([IdPeriodo], [Descripcion], [FechaInicio], [FechaFin], [Activo], [FechaRegistro]) VALUES (2, N'2022 - 2023', CAST(N'2022-12-09' AS Date), CAST(N'2023-09-15' AS Date), 1, CAST(N'2022-12-22T13:59:21.583' AS DateTime))
SET IDENTITY_INSERT [dbo].[PERIODO] OFF
GO
SET IDENTITY_INSERT [dbo].[PERMISOS] ON 

INSERT [dbo].[PERMISOS] ([IdPermisos], [IdRol], [IdSubMenu], [Activo], [FechaRegistro]) VALUES (1, 1, 1, 1, CAST(N'2022-12-21T17:29:17.210' AS DateTime))
INSERT [dbo].[PERMISOS] ([IdPermisos], [IdRol], [IdSubMenu], [Activo], [FechaRegistro]) VALUES (2, 1, 2, 1, CAST(N'2022-12-21T17:29:17.210' AS DateTime))
INSERT [dbo].[PERMISOS] ([IdPermisos], [IdRol], [IdSubMenu], [Activo], [FechaRegistro]) VALUES (3, 1, 3, 1, CAST(N'2022-12-21T17:29:17.210' AS DateTime))
INSERT [dbo].[PERMISOS] ([IdPermisos], [IdRol], [IdSubMenu], [Activo], [FechaRegistro]) VALUES (4, 1, 4, 1, CAST(N'2022-12-21T17:29:17.210' AS DateTime))
INSERT [dbo].[PERMISOS] ([IdPermisos], [IdRol], [IdSubMenu], [Activo], [FechaRegistro]) VALUES (5, 1, 5, 1, CAST(N'2022-12-21T17:29:17.210' AS DateTime))
INSERT [dbo].[PERMISOS] ([IdPermisos], [IdRol], [IdSubMenu], [Activo], [FechaRegistro]) VALUES (6, 1, 6, 1, CAST(N'2022-12-21T17:29:17.210' AS DateTime))
INSERT [dbo].[PERMISOS] ([IdPermisos], [IdRol], [IdSubMenu], [Activo], [FechaRegistro]) VALUES (7, 1, 7, 1, CAST(N'2022-12-21T17:29:17.210' AS DateTime))
INSERT [dbo].[PERMISOS] ([IdPermisos], [IdRol], [IdSubMenu], [Activo], [FechaRegistro]) VALUES (8, 1, 8, 1, CAST(N'2022-12-21T17:29:17.210' AS DateTime))
INSERT [dbo].[PERMISOS] ([IdPermisos], [IdRol], [IdSubMenu], [Activo], [FechaRegistro]) VALUES (9, 1, 9, 1, CAST(N'2022-12-21T17:29:17.210' AS DateTime))
INSERT [dbo].[PERMISOS] ([IdPermisos], [IdRol], [IdSubMenu], [Activo], [FechaRegistro]) VALUES (10, 1, 10, 1, CAST(N'2022-12-21T17:29:17.210' AS DateTime))
INSERT [dbo].[PERMISOS] ([IdPermisos], [IdRol], [IdSubMenu], [Activo], [FechaRegistro]) VALUES (11, 1, 11, 1, CAST(N'2022-12-21T17:29:17.210' AS DateTime))
INSERT [dbo].[PERMISOS] ([IdPermisos], [IdRol], [IdSubMenu], [Activo], [FechaRegistro]) VALUES (12, 1, 12, 1, CAST(N'2022-12-21T17:29:17.210' AS DateTime))
INSERT [dbo].[PERMISOS] ([IdPermisos], [IdRol], [IdSubMenu], [Activo], [FechaRegistro]) VALUES (13, 1, 13, 1, CAST(N'2022-12-21T17:29:17.210' AS DateTime))
INSERT [dbo].[PERMISOS] ([IdPermisos], [IdRol], [IdSubMenu], [Activo], [FechaRegistro]) VALUES (14, 1, 14, 1, CAST(N'2022-12-21T17:29:17.210' AS DateTime))
INSERT [dbo].[PERMISOS] ([IdPermisos], [IdRol], [IdSubMenu], [Activo], [FechaRegistro]) VALUES (15, 1, 15, 1, CAST(N'2022-12-21T17:29:17.210' AS DateTime))
INSERT [dbo].[PERMISOS] ([IdPermisos], [IdRol], [IdSubMenu], [Activo], [FechaRegistro]) VALUES (16, 1, 16, 1, CAST(N'2022-12-21T17:29:17.210' AS DateTime))
INSERT [dbo].[PERMISOS] ([IdPermisos], [IdRol], [IdSubMenu], [Activo], [FechaRegistro]) VALUES (17, 1, 17, 1, CAST(N'2022-12-21T17:29:17.210' AS DateTime))
INSERT [dbo].[PERMISOS] ([IdPermisos], [IdRol], [IdSubMenu], [Activo], [FechaRegistro]) VALUES (18, 1, 18, 1, CAST(N'2022-12-21T17:29:17.210' AS DateTime))
INSERT [dbo].[PERMISOS] ([IdPermisos], [IdRol], [IdSubMenu], [Activo], [FechaRegistro]) VALUES (19, 1, 19, 1, CAST(N'2022-12-21T17:29:17.210' AS DateTime))
INSERT [dbo].[PERMISOS] ([IdPermisos], [IdRol], [IdSubMenu], [Activo], [FechaRegistro]) VALUES (20, 2, 1, 0, CAST(N'2022-12-21T17:29:17.220' AS DateTime))
INSERT [dbo].[PERMISOS] ([IdPermisos], [IdRol], [IdSubMenu], [Activo], [FechaRegistro]) VALUES (21, 2, 2, 0, CAST(N'2022-12-21T17:29:17.220' AS DateTime))
INSERT [dbo].[PERMISOS] ([IdPermisos], [IdRol], [IdSubMenu], [Activo], [FechaRegistro]) VALUES (22, 2, 3, 0, CAST(N'2022-12-21T17:29:17.220' AS DateTime))
INSERT [dbo].[PERMISOS] ([IdPermisos], [IdRol], [IdSubMenu], [Activo], [FechaRegistro]) VALUES (23, 2, 4, 0, CAST(N'2022-12-21T17:29:17.220' AS DateTime))
INSERT [dbo].[PERMISOS] ([IdPermisos], [IdRol], [IdSubMenu], [Activo], [FechaRegistro]) VALUES (24, 2, 5, 0, CAST(N'2022-12-21T17:29:17.220' AS DateTime))
INSERT [dbo].[PERMISOS] ([IdPermisos], [IdRol], [IdSubMenu], [Activo], [FechaRegistro]) VALUES (25, 2, 6, 0, CAST(N'2022-12-21T17:29:17.220' AS DateTime))
INSERT [dbo].[PERMISOS] ([IdPermisos], [IdRol], [IdSubMenu], [Activo], [FechaRegistro]) VALUES (26, 2, 7, 0, CAST(N'2022-12-21T17:29:17.220' AS DateTime))
INSERT [dbo].[PERMISOS] ([IdPermisos], [IdRol], [IdSubMenu], [Activo], [FechaRegistro]) VALUES (27, 2, 8, 0, CAST(N'2022-12-21T17:29:17.220' AS DateTime))
INSERT [dbo].[PERMISOS] ([IdPermisos], [IdRol], [IdSubMenu], [Activo], [FechaRegistro]) VALUES (28, 2, 9, 0, CAST(N'2022-12-21T17:29:17.220' AS DateTime))
INSERT [dbo].[PERMISOS] ([IdPermisos], [IdRol], [IdSubMenu], [Activo], [FechaRegistro]) VALUES (29, 2, 10, 0, CAST(N'2022-12-21T17:29:17.220' AS DateTime))
INSERT [dbo].[PERMISOS] ([IdPermisos], [IdRol], [IdSubMenu], [Activo], [FechaRegistro]) VALUES (30, 2, 11, 0, CAST(N'2022-12-21T17:29:17.220' AS DateTime))
INSERT [dbo].[PERMISOS] ([IdPermisos], [IdRol], [IdSubMenu], [Activo], [FechaRegistro]) VALUES (31, 2, 12, 0, CAST(N'2022-12-21T17:29:17.220' AS DateTime))
INSERT [dbo].[PERMISOS] ([IdPermisos], [IdRol], [IdSubMenu], [Activo], [FechaRegistro]) VALUES (32, 2, 13, 0, CAST(N'2022-12-21T17:29:17.220' AS DateTime))
INSERT [dbo].[PERMISOS] ([IdPermisos], [IdRol], [IdSubMenu], [Activo], [FechaRegistro]) VALUES (33, 2, 14, 0, CAST(N'2022-12-21T17:29:17.220' AS DateTime))
INSERT [dbo].[PERMISOS] ([IdPermisos], [IdRol], [IdSubMenu], [Activo], [FechaRegistro]) VALUES (34, 2, 15, 0, CAST(N'2022-12-21T17:29:17.220' AS DateTime))
INSERT [dbo].[PERMISOS] ([IdPermisos], [IdRol], [IdSubMenu], [Activo], [FechaRegistro]) VALUES (35, 2, 16, 0, CAST(N'2022-12-21T17:29:17.220' AS DateTime))
INSERT [dbo].[PERMISOS] ([IdPermisos], [IdRol], [IdSubMenu], [Activo], [FechaRegistro]) VALUES (36, 2, 17, 0, CAST(N'2022-12-21T17:29:17.220' AS DateTime))
INSERT [dbo].[PERMISOS] ([IdPermisos], [IdRol], [IdSubMenu], [Activo], [FechaRegistro]) VALUES (37, 2, 18, 0, CAST(N'2022-12-21T17:29:17.220' AS DateTime))
INSERT [dbo].[PERMISOS] ([IdPermisos], [IdRol], [IdSubMenu], [Activo], [FechaRegistro]) VALUES (38, 2, 19, 0, CAST(N'2022-12-21T17:29:17.220' AS DateTime))
INSERT [dbo].[PERMISOS] ([IdPermisos], [IdRol], [IdSubMenu], [Activo], [FechaRegistro]) VALUES (39, 3, 1, 0, CAST(N'2022-12-21T17:29:17.230' AS DateTime))
INSERT [dbo].[PERMISOS] ([IdPermisos], [IdRol], [IdSubMenu], [Activo], [FechaRegistro]) VALUES (40, 3, 2, 0, CAST(N'2022-12-21T17:29:17.230' AS DateTime))
INSERT [dbo].[PERMISOS] ([IdPermisos], [IdRol], [IdSubMenu], [Activo], [FechaRegistro]) VALUES (41, 3, 3, 0, CAST(N'2022-12-21T17:29:17.230' AS DateTime))
INSERT [dbo].[PERMISOS] ([IdPermisos], [IdRol], [IdSubMenu], [Activo], [FechaRegistro]) VALUES (42, 3, 4, 0, CAST(N'2022-12-21T17:29:17.230' AS DateTime))
INSERT [dbo].[PERMISOS] ([IdPermisos], [IdRol], [IdSubMenu], [Activo], [FechaRegistro]) VALUES (43, 3, 5, 0, CAST(N'2022-12-21T17:29:17.230' AS DateTime))
INSERT [dbo].[PERMISOS] ([IdPermisos], [IdRol], [IdSubMenu], [Activo], [FechaRegistro]) VALUES (44, 3, 6, 0, CAST(N'2022-12-21T17:29:17.230' AS DateTime))
INSERT [dbo].[PERMISOS] ([IdPermisos], [IdRol], [IdSubMenu], [Activo], [FechaRegistro]) VALUES (45, 3, 7, 0, CAST(N'2022-12-21T17:29:17.230' AS DateTime))
INSERT [dbo].[PERMISOS] ([IdPermisos], [IdRol], [IdSubMenu], [Activo], [FechaRegistro]) VALUES (46, 3, 8, 0, CAST(N'2022-12-21T17:29:17.230' AS DateTime))
INSERT [dbo].[PERMISOS] ([IdPermisos], [IdRol], [IdSubMenu], [Activo], [FechaRegistro]) VALUES (47, 3, 9, 0, CAST(N'2022-12-21T17:29:17.230' AS DateTime))
INSERT [dbo].[PERMISOS] ([IdPermisos], [IdRol], [IdSubMenu], [Activo], [FechaRegistro]) VALUES (48, 3, 10, 0, CAST(N'2022-12-21T17:29:17.230' AS DateTime))
INSERT [dbo].[PERMISOS] ([IdPermisos], [IdRol], [IdSubMenu], [Activo], [FechaRegistro]) VALUES (49, 3, 11, 0, CAST(N'2022-12-21T17:29:17.230' AS DateTime))
INSERT [dbo].[PERMISOS] ([IdPermisos], [IdRol], [IdSubMenu], [Activo], [FechaRegistro]) VALUES (50, 3, 12, 0, CAST(N'2022-12-21T17:29:17.230' AS DateTime))
INSERT [dbo].[PERMISOS] ([IdPermisos], [IdRol], [IdSubMenu], [Activo], [FechaRegistro]) VALUES (51, 3, 13, 0, CAST(N'2022-12-21T17:29:17.230' AS DateTime))
INSERT [dbo].[PERMISOS] ([IdPermisos], [IdRol], [IdSubMenu], [Activo], [FechaRegistro]) VALUES (52, 3, 14, 0, CAST(N'2022-12-21T17:29:17.230' AS DateTime))
INSERT [dbo].[PERMISOS] ([IdPermisos], [IdRol], [IdSubMenu], [Activo], [FechaRegistro]) VALUES (53, 3, 15, 0, CAST(N'2022-12-21T17:29:17.230' AS DateTime))
INSERT [dbo].[PERMISOS] ([IdPermisos], [IdRol], [IdSubMenu], [Activo], [FechaRegistro]) VALUES (54, 3, 16, 0, CAST(N'2022-12-21T17:29:17.230' AS DateTime))
INSERT [dbo].[PERMISOS] ([IdPermisos], [IdRol], [IdSubMenu], [Activo], [FechaRegistro]) VALUES (55, 3, 17, 0, CAST(N'2022-12-21T17:29:17.230' AS DateTime))
INSERT [dbo].[PERMISOS] ([IdPermisos], [IdRol], [IdSubMenu], [Activo], [FechaRegistro]) VALUES (56, 3, 18, 0, CAST(N'2022-12-21T17:29:17.230' AS DateTime))
INSERT [dbo].[PERMISOS] ([IdPermisos], [IdRol], [IdSubMenu], [Activo], [FechaRegistro]) VALUES (57, 3, 19, 0, CAST(N'2022-12-21T17:29:17.230' AS DateTime))
SET IDENTITY_INSERT [dbo].[PERMISOS] OFF
GO
SET IDENTITY_INSERT [dbo].[ROL] ON 

INSERT [dbo].[ROL] ([IdRol], [Descripcion], [Activo], [FechaRegistro]) VALUES (1, N'ADMINISTRADOR', 1, CAST(N'2022-12-21T17:29:17.043' AS DateTime))
INSERT [dbo].[ROL] ([IdRol], [Descripcion], [Activo], [FechaRegistro]) VALUES (2, N'DOCENTE', 1, CAST(N'2022-12-21T17:29:17.043' AS DateTime))
INSERT [dbo].[ROL] ([IdRol], [Descripcion], [Activo], [FechaRegistro]) VALUES (3, N'ALUMNO', 1, CAST(N'2022-12-21T17:29:17.043' AS DateTime))
SET IDENTITY_INSERT [dbo].[ROL] OFF
GO
SET IDENTITY_INSERT [dbo].[SUBMENU] ON 

INSERT [dbo].[SUBMENU] ([IdSubMenu], [IdMenu], [Nombre], [NombreFormulario], [Accion], [Activo], [FechaRegistro]) VALUES (1, 2, N'Crear Usuario', N'Usuario', N'Crear', 1, CAST(N'2022-12-21T17:29:17.160' AS DateTime))
INSERT [dbo].[SUBMENU] ([IdSubMenu], [IdMenu], [Nombre], [NombreFormulario], [Accion], [Activo], [FechaRegistro]) VALUES (2, 2, N'Crear Rol', N'Rol', N'Crear', 1, CAST(N'2022-12-21T17:29:17.160' AS DateTime))
INSERT [dbo].[SUBMENU] ([IdSubMenu], [IdMenu], [Nombre], [NombreFormulario], [Accion], [Activo], [FechaRegistro]) VALUES (3, 2, N'Asignar rol permisos', N'RolPermiso', N'Crear', 1, CAST(N'2022-12-21T17:29:17.160' AS DateTime))
INSERT [dbo].[SUBMENU] ([IdSubMenu], [IdMenu], [Nombre], [NombreFormulario], [Accion], [Activo], [FechaRegistro]) VALUES (4, 3, N'Crear Alumnos', N'Alumno', N'Crear', 1, CAST(N'2022-12-21T17:29:17.160' AS DateTime))
INSERT [dbo].[SUBMENU] ([IdSubMenu], [IdMenu], [Nombre], [NombreFormulario], [Accion], [Activo], [FechaRegistro]) VALUES (5, 3, N'Consulta y Reporte', N'Alumno', N'Reporte', 1, CAST(N'2022-12-21T17:29:17.160' AS DateTime))
INSERT [dbo].[SUBMENU] ([IdSubMenu], [IdMenu], [Nombre], [NombreFormulario], [Accion], [Activo], [FechaRegistro]) VALUES (6, 4, N'Crear Docentes', N'Docente', N'Crear', 1, CAST(N'2022-12-21T17:29:17.160' AS DateTime))
INSERT [dbo].[SUBMENU] ([IdSubMenu], [IdMenu], [Nombre], [NombreFormulario], [Accion], [Activo], [FechaRegistro]) VALUES (7, 4, N'Agregar Curricula', N'Docente', N'Curricula', 1, CAST(N'2022-12-21T17:29:17.160' AS DateTime))
INSERT [dbo].[SUBMENU] ([IdSubMenu], [IdMenu], [Nombre], [NombreFormulario], [Accion], [Activo], [FechaRegistro]) VALUES (8, 4, N'Agregar Calificacion', N'Docente', N'Calificacion', 1, CAST(N'2022-12-21T17:29:17.160' AS DateTime))
INSERT [dbo].[SUBMENU] ([IdSubMenu], [IdMenu], [Nombre], [NombreFormulario], [Accion], [Activo], [FechaRegistro]) VALUES (9, 5, N'Crear Cursos', N'Curso', N'Crear', 1, CAST(N'2022-12-21T17:29:17.160' AS DateTime))
INSERT [dbo].[SUBMENU] ([IdSubMenu], [IdMenu], [Nombre], [NombreFormulario], [Accion], [Activo], [FechaRegistro]) VALUES (10, 6, N'Crear Matricula', N'Matricula', N'Crear', 1, CAST(N'2022-12-21T17:29:17.160' AS DateTime))
INSERT [dbo].[SUBMENU] ([IdSubMenu], [IdMenu], [Nombre], [NombreFormulario], [Accion], [Activo], [FechaRegistro]) VALUES (11, 6, N'Consulta y Reporte', N'Matricula', N'Reporte', 1, CAST(N'2022-12-21T17:29:17.160' AS DateTime))
INSERT [dbo].[SUBMENU] ([IdSubMenu], [IdMenu], [Nombre], [NombreFormulario], [Accion], [Activo], [FechaRegistro]) VALUES (12, 1, N'Crear Periodo', N'Periodo', N'Crear', 1, CAST(N'2022-12-21T17:29:17.160' AS DateTime))
INSERT [dbo].[SUBMENU] ([IdSubMenu], [IdMenu], [Nombre], [NombreFormulario], [Accion], [Activo], [FechaRegistro]) VALUES (13, 1, N'Crear Nivel Academico', N'NivelAcademico', N'Crear', 1, CAST(N'2022-12-21T17:29:17.160' AS DateTime))
INSERT [dbo].[SUBMENU] ([IdSubMenu], [IdMenu], [Nombre], [NombreFormulario], [Accion], [Activo], [FechaRegistro]) VALUES (14, 1, N'Crear Grados y Grupos', N'GradoSeccion', N'Crear', 1, CAST(N'2022-12-21T17:29:17.160' AS DateTime))
INSERT [dbo].[SUBMENU] ([IdSubMenu], [IdMenu], [Nombre], [NombreFormulario], [Accion], [Activo], [FechaRegistro]) VALUES (15, 1, N'Asignar Grados por Niveles', N'GradoporNivel', N'Crear', 1, CAST(N'2022-12-21T17:29:17.160' AS DateTime))
INSERT [dbo].[SUBMENU] ([IdSubMenu], [IdMenu], [Nombre], [NombreFormulario], [Accion], [Activo], [FechaRegistro]) VALUES (16, 1, N'Asignar Cursos por Niveles', N'Curso', N'Asignar', 1, CAST(N'2022-12-21T17:29:17.160' AS DateTime))
INSERT [dbo].[SUBMENU] ([IdSubMenu], [IdMenu], [Nombre], [NombreFormulario], [Accion], [Activo], [FechaRegistro]) VALUES (17, 1, N'Alumnos Matriculados', N'Vacante', N'Crear', 1, CAST(N'2022-12-21T17:29:17.160' AS DateTime))
INSERT [dbo].[SUBMENU] ([IdSubMenu], [IdMenu], [Nombre], [NombreFormulario], [Accion], [Activo], [FechaRegistro]) VALUES (18, 1, N'Crear Horario', N'Horario', N'Crear', 1, CAST(N'2022-12-21T17:29:17.160' AS DateTime))
INSERT [dbo].[SUBMENU] ([IdSubMenu], [IdMenu], [Nombre], [NombreFormulario], [Accion], [Activo], [FechaRegistro]) VALUES (19, 1, N'Asignar Docentes por Cursos', N'Docente', N'Asignar', 1, CAST(N'2022-12-21T17:29:17.160' AS DateTime))
SET IDENTITY_INSERT [dbo].[SUBMENU] OFF
GO
SET IDENTITY_INSERT [dbo].[USUARIO] ON 

INSERT [dbo].[USUARIO] ([IdUsuario], [Nombres], [Apellidos], [IdRol], [LoginUsuario], [LoginClave], [DescripcionReferencia], [IdReferencia], [Activo], [FechaRegistro]) VALUES (1, N'Alex D', N'Sanchez', 1, N'Admin', N'Admin123', N'NINGUNA', 0, 1, CAST(N'2022-12-21T17:29:17.183' AS DateTime))
SET IDENTITY_INSERT [dbo].[USUARIO] OFF
GO
ALTER TABLE [dbo].[ALUMNO] ADD  DEFAULT ((1)) FOR [Activo]
GO
ALTER TABLE [dbo].[ALUMNO] ADD  DEFAULT (getdate()) FOR [FechaRegistro]
GO
ALTER TABLE [dbo].[APODERADO] ADD  DEFAULT ((1)) FOR [Activo]
GO
ALTER TABLE [dbo].[APODERADO] ADD  DEFAULT (getdate()) FOR [FechaRegistro]
GO
ALTER TABLE [dbo].[CALIFICACION] ADD  DEFAULT ((1)) FOR [Activo]
GO
ALTER TABLE [dbo].[CALIFICACION] ADD  DEFAULT (getdate()) FOR [FechaRegistro]
GO
ALTER TABLE [dbo].[CURRICULA] ADD  DEFAULT ((1)) FOR [Activo]
GO
ALTER TABLE [dbo].[CURRICULA] ADD  DEFAULT (getdate()) FOR [FechaRegistro]
GO
ALTER TABLE [dbo].[CURSO] ADD  DEFAULT ((1)) FOR [Activo]
GO
ALTER TABLE [dbo].[CURSO] ADD  DEFAULT (getdate()) FOR [FechaRegistro]
GO
ALTER TABLE [dbo].[DOCENTE] ADD  DEFAULT ((1)) FOR [Activo]
GO
ALTER TABLE [dbo].[DOCENTE] ADD  DEFAULT (getdate()) FOR [FechaRegistro]
GO
ALTER TABLE [dbo].[DOCENTE_NIVELDETALLE_CURSO] ADD  DEFAULT ((1)) FOR [Activo]
GO
ALTER TABLE [dbo].[DOCENTE_NIVELDETALLE_CURSO] ADD  DEFAULT (getdate()) FOR [FechaRegistro]
GO
ALTER TABLE [dbo].[GRADO_SECCION] ADD  DEFAULT ((1)) FOR [Activo]
GO
ALTER TABLE [dbo].[GRADO_SECCION] ADD  DEFAULT (getdate()) FOR [FechaRegistro]
GO
ALTER TABLE [dbo].[HORARIO] ADD  DEFAULT ((1)) FOR [Activo]
GO
ALTER TABLE [dbo].[HORARIO] ADD  DEFAULT (getdate()) FOR [FechaRegistro]
GO
ALTER TABLE [dbo].[MATRICULA] ADD  DEFAULT ((1)) FOR [Activo]
GO
ALTER TABLE [dbo].[MATRICULA] ADD  DEFAULT (getdate()) FOR [FechaRegistro]
GO
ALTER TABLE [dbo].[MENU] ADD  DEFAULT ((1)) FOR [Activo]
GO
ALTER TABLE [dbo].[MENU] ADD  DEFAULT (getdate()) FOR [FechaRegistro]
GO
ALTER TABLE [dbo].[NIVEL] ADD  DEFAULT ((1)) FOR [Activo]
GO
ALTER TABLE [dbo].[NIVEL] ADD  DEFAULT (getdate()) FOR [FechaRegistro]
GO
ALTER TABLE [dbo].[NIVEL_DETALLE] ADD  DEFAULT ((1)) FOR [Activo]
GO
ALTER TABLE [dbo].[NIVEL_DETALLE] ADD  DEFAULT (getdate()) FOR [FechaRegistro]
GO
ALTER TABLE [dbo].[NIVEL_DETALLE_CURSO] ADD  DEFAULT ((1)) FOR [Activo]
GO
ALTER TABLE [dbo].[NIVEL_DETALLE_CURSO] ADD  DEFAULT (getdate()) FOR [FechaRegistro]
GO
ALTER TABLE [dbo].[PERIODO] ADD  DEFAULT ((1)) FOR [Activo]
GO
ALTER TABLE [dbo].[PERIODO] ADD  DEFAULT (getdate()) FOR [FechaRegistro]
GO
ALTER TABLE [dbo].[PERMISOS] ADD  DEFAULT ((1)) FOR [Activo]
GO
ALTER TABLE [dbo].[PERMISOS] ADD  DEFAULT (getdate()) FOR [FechaRegistro]
GO
ALTER TABLE [dbo].[ROL] ADD  DEFAULT ((1)) FOR [Activo]
GO
ALTER TABLE [dbo].[ROL] ADD  DEFAULT (getdate()) FOR [FechaRegistro]
GO
ALTER TABLE [dbo].[SUBMENU] ADD  DEFAULT ((1)) FOR [Activo]
GO
ALTER TABLE [dbo].[SUBMENU] ADD  DEFAULT (getdate()) FOR [FechaRegistro]
GO
ALTER TABLE [dbo].[USUARIO] ADD  DEFAULT ((1)) FOR [Activo]
GO
ALTER TABLE [dbo].[USUARIO] ADD  DEFAULT (getdate()) FOR [FechaRegistro]
GO
ALTER TABLE [dbo].[CALIFICACION]  WITH CHECK ADD FOREIGN KEY([IdAlumno])
REFERENCES [dbo].[ALUMNO] ([IdAlumno])
GO
ALTER TABLE [dbo].[CALIFICACION]  WITH CHECK ADD FOREIGN KEY([IdCurricula])
REFERENCES [dbo].[CURRICULA] ([IdCurricula])
GO
ALTER TABLE [dbo].[CURRICULA]  WITH CHECK ADD FOREIGN KEY([IdDocenteNivelDetalleCurso])
REFERENCES [dbo].[DOCENTE_NIVELDETALLE_CURSO] ([IdDocenteNivelDetalleCurso])
GO
ALTER TABLE [dbo].[DOCENTE_NIVELDETALLE_CURSO]  WITH CHECK ADD FOREIGN KEY([IdDocente])
REFERENCES [dbo].[DOCENTE] ([IdDocente])
GO
ALTER TABLE [dbo].[DOCENTE_NIVELDETALLE_CURSO]  WITH CHECK ADD FOREIGN KEY([IdNivelDetalleCurso])
REFERENCES [dbo].[NIVEL_DETALLE_CURSO] ([IdNivelDetalleCurso])
GO
ALTER TABLE [dbo].[HORARIO]  WITH CHECK ADD FOREIGN KEY([IdNivelDetalleCurso])
REFERENCES [dbo].[NIVEL_DETALLE_CURSO] ([IdNivelDetalleCurso])
GO
ALTER TABLE [dbo].[MATRICULA]  WITH CHECK ADD FOREIGN KEY([IdAlumno])
REFERENCES [dbo].[ALUMNO] ([IdAlumno])
GO
ALTER TABLE [dbo].[MATRICULA]  WITH CHECK ADD FOREIGN KEY([IdApoderado])
REFERENCES [dbo].[APODERADO] ([IdApoderado])
GO
ALTER TABLE [dbo].[MATRICULA]  WITH CHECK ADD FOREIGN KEY([IdNivelDetalle])
REFERENCES [dbo].[NIVEL_DETALLE] ([IdNivelDetalle])
GO
ALTER TABLE [dbo].[NIVEL]  WITH CHECK ADD FOREIGN KEY([IdPeriodo])
REFERENCES [dbo].[PERIODO] ([IdPeriodo])
GO
ALTER TABLE [dbo].[NIVEL_DETALLE]  WITH CHECK ADD FOREIGN KEY([IdGradoSeccion])
REFERENCES [dbo].[GRADO_SECCION] ([IdGradoSeccion])
GO
ALTER TABLE [dbo].[NIVEL_DETALLE]  WITH CHECK ADD FOREIGN KEY([IdNivel])
REFERENCES [dbo].[NIVEL] ([IdNivel])
GO
ALTER TABLE [dbo].[NIVEL_DETALLE_CURSO]  WITH CHECK ADD FOREIGN KEY([IdCurso])
REFERENCES [dbo].[CURSO] ([IdCurso])
GO
ALTER TABLE [dbo].[NIVEL_DETALLE_CURSO]  WITH CHECK ADD FOREIGN KEY([IdNivelDetalle])
REFERENCES [dbo].[NIVEL_DETALLE] ([IdNivelDetalle])
GO
ALTER TABLE [dbo].[PERMISOS]  WITH CHECK ADD FOREIGN KEY([IdRol])
REFERENCES [dbo].[ROL] ([IdRol])
GO
ALTER TABLE [dbo].[PERMISOS]  WITH CHECK ADD FOREIGN KEY([IdSubMenu])
REFERENCES [dbo].[SUBMENU] ([IdSubMenu])
GO
ALTER TABLE [dbo].[SUBMENU]  WITH CHECK ADD FOREIGN KEY([IdMenu])
REFERENCES [dbo].[MENU] ([IdMenu])
GO
ALTER TABLE [dbo].[USUARIO]  WITH CHECK ADD FOREIGN KEY([IdRol])
REFERENCES [dbo].[ROL] ([IdRol])
GO
/****** Object:  StoredProcedure [dbo].[usp_ActualizarPermisos]    Script Date: 03/02/2023 01:23:32 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

--PROCEDIMIENTO PARA ACTUALIZAR PERMISOS
create procedure [dbo].[usp_ActualizarPermisos](
@Detalle xml,
@Resultado bit output
)
as
begin
begin try

	BEGIN TRANSACTION
	declare @permisos table(idpermisos int,activo bit)

	insert into @permisos(idpermisos,activo)
	select 
	idpermisos = Node.Data.value('(IdPermisos)[1]','int'),
	activo = Node.Data.value('(Activo)[1]','bit')
	FROM @Detalle.nodes('/DETALLE/PERMISO') Node(Data)

	select * from @permisos

	update p set p.Activo = pe.activo from PERMISOS p
	inner join @permisos pe on pe.idpermisos = p.IdPermisos

	COMMIT
	set @Resultado = 1

end try
begin catch
	ROLLBACK
	set @Resultado = 0
end catch
end

GO
/****** Object:  StoredProcedure [dbo].[usp_AsginarCursos]    Script Date: 03/02/2023 01:23:32 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

------

--REGITRAR ASIGNAMIENTO DE CURSOS
create procedure [dbo].[usp_AsginarCursos](
@xml xml,
@Resultado bit output
)
as
begin
begin try

	BEGIN TRANSACTION
		declare @nivel table(idnivel int)
		declare @gradoseccion table(idgradoseccion int)
		declare @curso table (idcurso int)
		declare @idniveldetalle int = 0;

		declare @horario table(idnivel int,idgradoseccion int,idcurso int, diasemana varchar(100), horainicio time,horafin time)


		insert into @nivel(idnivel)
		select 
		IdNivel = Node.Data.value('(IdNivel)[1]','int')
		FROM @xml.nodes('/DETALLE/NIVEL') Node(Data)

		insert into @gradoseccion(idgradoseccion)
		select 
		IdGradoSeccion = Node.Data.value('(IdGradoSeccion)[1]','int')
		FROM @xml.nodes('/DETALLE/GRADOSECCION') Node(Data)

		insert into @curso(idcurso)
		select 
		IdCurso = Node.Data.value('(IdCurso)[1]','int')
		FROM @xml.nodes('/DETALLE/CURSOS/DATA') Node(Data)



		if not exists(select * from NIVEL_DETALLE_CURSO ndc
		inner join HORARIO h on h.IdNivelDetalleCurso = ndc.IdNivelDetalleCurso
		inner join NIVEL_DETALLE nd on nd.IdNivelDetalle = ndc.IdNivelDetalle
		where nd.IdNivel = (select idnivel from @nivel) and nd.IdGradoSeccion = (select idgradoseccion from @gradoseccion))
		begin

			/*insert into @horario(idnivel,idgradoseccion,idcurso,diasemana,horainicio,horafin)
			SELECT (select idnivel from @nivel),(select idgradoseccion from @gradoseccion),idcurso, '',convert(time, getdate()),convert(time, getdate()) FROM @curso

			update ht set
			ht.diasemana = h.DiaSemana,
			ht.horainicio = h.HoraInicio,
			ht.horafin = h.HoraFin
			
			from 
			@horario ht
			inner join NIVEL_DETALLE nd on nd.IdNivel = ht.idnivel and nd.IdGradoSeccion = ht.idgradoseccion
			inner join NIVEL_DETALLE_CURSO ndc on ndc.IdNivelDetalle = nd.IdNivelDetalle and ndc.IdCurso = ht.idcurso
			inner join HORARIO h on h.IdNivelDetalleCurso = ndc.IdNivelDetalleCurso*/


			set @idniveldetalle = (select top 1 IdNivelDetalle from NIVEL_DETALLE where IdNivel = (select idnivel from @nivel) and IdGradoSeccion = (select idgradoseccion from @gradoseccion))

			delete from NIVEL_DETALLE_CURSO where IdNivelDetalle =  @idniveldetalle
			set @Resultado = 1
		end
		else
			set @Resultado = 0

		if(@Resultado = 1)
		begin
			insert into NIVEL_DETALLE_CURSO(IdNivelDetalle,IdCurso)
			SELECT @idniveldetalle, idcurso FROM @curso
		

		end
		
	COMMIT
	
 end try
 begin catch
	ROLLBACK
	set @Resultado = 0
 end catch
end


GO
/****** Object:  StoredProcedure [dbo].[usp_DetalleDocenteCurso]    Script Date: 03/02/2023 01:23:32 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

--OBTENER DETALLE DOCENTE CURSO
create proc [dbo].[usp_DetalleDocenteCurso]
as
begin

 select 

 (select d.IdDocente,d.Nombres,d.Apellidos,

  (select 
  
	(SELECT N.IdNivel,N.DescripcionNivel,(
		select 
			(select GS.IdGradoSeccion,gs.DescripcionGrado,gs.DescripcionSeccion,(
				select
				 (SELECT c.IdCurso,c.Descripcion FROM CURSO C WHERE C.IdCurso = CU.IdCurso FOR XML PATH (''),TYPE) AS 'CURSO'
				
				from (
					select distinct c.IdCurso from DOCENTE_NIVELDETALLE_CURSO dndc
					  INNER JOIN NIVEL_DETALLE_CURSO NDC ON NDC.IdNivelDetalleCurso = dndc.IdNivelDetalleCurso
					  INNER JOIN NIVEL_DETALLE ND ON ND.IdNivelDetalle = NDC.IdNivelDetalle
					  INNER JOIN NIVEL N ON N.IdNivel = ND.IdNivel 
					  inner join CURSO C on c.IdCurso = ndc.IdCurso 
					  inner join GRADO_SECCION gs1 on gs1.IdGradoSeccion = nd.IdGradoSeccion 
					  where gs1.IdGradoSeccion = gs.IdGradoSeccion and dndc.IdDocente = fd.IdDocente
				
				) cu FOR XML PATH (''),TYPE) AS 'CURSOS' 
			
			
			from GRADO_SECCION gs 
			where gs.IdGradoSeccion = gsu.IdGradoSeccion FOR XML PATH (''),TYPE) AS 'GRADO'



		from (
		  select distinct gs.IdGradoSeccion from DOCENTE_NIVELDETALLE_CURSO dndc
		  INNER JOIN NIVEL_DETALLE_CURSO NDC ON NDC.IdNivelDetalleCurso = dndc.IdNivelDetalleCurso
		  INNER JOIN NIVEL_DETALLE ND1 ON ND1.IdNivelDetalle = NDC.IdNivelDetalle
		  INNER JOIN NIVEL N1 ON N1.IdNivel = ND1.IdNivel 
		  inner join GRADO_SECCION gs on gs.IdGradoSeccion = nd1.IdGradoSeccion where n1.IdNivel = nd.IdNivel
		) gsu
	
		FOR XML PATH (''),TYPE) AS 'GRADOS_SECCION' 


	FROM NIVEL N WHERE N.IDNIVEL = ND.IDNIVEL FOR XML PATH (''),TYPE) AS 'NIVEL'

  
  from (
  select DISTINCT N.IdNivel from DOCENTE_NIVELDETALLE_CURSO dndc
  INNER JOIN NIVEL_DETALLE_CURSO NDC ON NDC.IdNivelDetalleCurso = dndc.IdNivelDetalleCurso
  INNER JOIN NIVEL_DETALLE ND ON ND.IdNivelDetalle = NDC.IdNivelDetalle
  INNER JOIN NIVEL N ON N.IdNivel = ND.IdNivel WHERE DNDC.IdDocente = d.IdDocente) nd
  FOR XML PATH (''),TYPE) AS 'NIVELES' 
 


 from DOCENTE d
 where d.IdDocente = fd.IdDocente
 FOR XML PATH (''),TYPE) AS 'DOCENTE' 
 
 
 from (

 SELECT 
 distinct IdDocente FROM 
 DOCENTE_NIVELDETALLE_CURSO) 
 fd
FOR XML PATH(''), ROOT('DOCENTES') 

end


GO
/****** Object:  StoredProcedure [dbo].[usp_EditarAlumno]    Script Date: 03/02/2023 01:23:32 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

-- REGISTRAR ALUMNO
CREATE PROC [dbo].[usp_EditarAlumno](
@IdAlumno int,
@Codigo varchar(50),
@Nombres varchar(100),
@Apellidos varchar(100),
@DocumentoIdentidad varchar(100),
@FechaNacimiento date,
@Sexo varchar(50),
@Ciudad varchar(100),
@Direccion varchar(100),
@Activo bit,
@Resultado bit output
)as
begin
	SET DATEFORMAT dmy;
	SET @Resultado = 1
	IF NOT EXISTS (SELECT * FROM ALUMNO WHERE DocumentoIdentidad = @DocumentoIdentidad and Nombres like '%' + @Nombres +'%' and Apellidos like '%' + @Apellidos +'%' and Codigo != @Codigo)
		update ALUMNO SET
		Nombres = @Nombres,
		Apellidos = @Apellidos,
		DocumentoIdentidad = @DocumentoIdentidad,
		FechaNacimiento = @FechaNacimiento,
		Sexo = @Sexo,
		Ciudad = @Ciudad,
		Direccion = @Direccion,
		Activo = @Activo
		where IdAlumno = @IdAlumno

	ELSE
		SET @Resultado = 0
	
end

GO
/****** Object:  StoredProcedure [dbo].[usp_EditarCurso]    Script Date: 03/02/2023 01:23:32 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

-- EDITAR CURSO
CREATE PROC [dbo].[usp_EditarCurso](
@IdCurso int,
@Descripcion varchar(50),
@Activo bit,
@Resultado bit output
)as
begin
	SET DATEFORMAT dmy;
	SET @Resultado = 1

	IF NOT EXISTS (SELECT * FROM CURSO WHERE Descripcion = @Descripcion and IdCurso != @IdCurso )
		update CURSO SET
		Descripcion = @Descripcion,
		Activo = @Activo
		where IdCurso = @IdCurso
	ELSE
		SET @Resultado = 0
	
end

GO
/****** Object:  StoredProcedure [dbo].[usp_EditarDocente]    Script Date: 03/02/2023 01:23:32 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

-- REGISTRAR ALUMNO
CREATE PROC [dbo].[usp_EditarDocente](
@IdDocente int,
@DocumentoIdentidad varchar(100),
@Nombres varchar(100),
@Apellidos varchar(100),
@FechaNacimiento date,
@Sexo varchar(50),
@GradoEstudio varchar(100),
@Ciudad varchar(100),
@Direccion varchar(100),
@Email varchar(100),
@NumeroTelefono varchar(50),
@Activo bit,
@Resultado bit output
)as
begin
	SET DATEFORMAT dmy;
	SET @Resultado = 1
	IF NOT EXISTS (SELECT * FROM DOCENTE WHERE DocumentoIdentidad = @DocumentoIdentidad and Nombres like '%' + @Nombres +'%' and Apellidos like '%' + @Apellidos +'%' and IdDocente != @IdDocente)
		update DOCENTE SET
		DocumentoIdentidad = @DocumentoIdentidad,
		Nombres = @Nombres,
		Apellidos = @Apellidos,
		FechaNacimiento = @FechaNacimiento,
		Sexo = @Sexo,
		GradoEstudio = @GradoEstudio,
		Ciudad = @Ciudad,
		Direccion = @Direccion,
		Email = @Email,
		NumeroTelefono = @NumeroTelefono,
		Activo = @Activo
		where IdDocente = @IdDocente

	ELSE
		SET @Resultado = 0
	
end

GO
/****** Object:  StoredProcedure [dbo].[usp_EditarGradoSeccion]    Script Date: 03/02/2023 01:23:32 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- EDITAR GRADOSECCION
CREATE PROC [dbo].[usp_EditarGradoSeccion](
@IdGradoSeccion int ,
@DescripcionGrado varchar(100),
@DescripcionSeccion varchar(100),
@Activo bit,
@Resultado bit output
)as
begin
	SET @Resultado = 1
	IF NOT EXISTS (SELECT * FROM GRADO_SECCION WHERE DescripcionGrado like '%' + @DescripcionGrado +'%' and DescripcionSeccion like '%' + @DescripcionSeccion +'%' and IdGradoSeccion !=@IdGradoSeccion )
		update GRADO_SECCION SET
		DescripcionGrado = @DescripcionGrado,
		DescripcionSeccion = @DescripcionSeccion,
		Activo = @Activo
		where IdGradoSeccion = @IdGradoSeccion
	ELSE
		SET @Resultado = 0
end
GO
/****** Object:  StoredProcedure [dbo].[usp_EditarNivel]    Script Date: 03/02/2023 01:23:32 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

-- EDITAR NIVEL
CREATE PROC [dbo].[usp_EditarNivel](
@IdNivel int ,
@IdPeriodo int ,
@DescripcionNivel varchar(100),
@DescripcionTurno varchar(100),
@HoraInicio time,
@HoraFin time,
@Activo bit,
@Resultado bit output
)as
begin
	SET DATEFORMAT dmy;
	SET @Resultado = 1


	IF NOT EXISTS (SELECT * FROM NIVEL WHERE DescripcionNivel like '%' + @DescripcionNivel +'%' and DescripcionTurno like '%' + @DescripcionTurno +'%' and IdPeriodo = @IdPeriodo and IdNivel !=@IdNivel )
		update NIVEL SET
		IdPeriodo = @IdPeriodo,
		DescripcionNivel = @DescripcionNivel,
		DescripcionTurno = @DescripcionTurno,
		HoraInicio = @HoraInicio,
		HoraFin = @HoraFin,
		Activo = @Activo
		where IdNivel = @IdNivel
	ELSE
		SET @Resultado = 0

	
end


GO
/****** Object:  StoredProcedure [dbo].[usp_EditarPeriodo]    Script Date: 03/02/2023 01:23:32 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO


-- EDITAR PERIODO
CREATE PROC [dbo].[usp_EditarPeriodo](
@IdPeriodo int,
@Descripcion varchar(50),
@FechaInicio date,
@FechaFin Date,
@Activo bit,
@Resultado bit output
)as
begin
	SET DATEFORMAT dmy;
	SET @Resultado = 1

	IF(@Activo = 1)
		IF NOT EXISTS (SELECT * FROM PERIODO where IdPeriodo != @IdPeriodo and Activo = 1 )
			update PERIODO SET
			Descripcion = @Descripcion,
			FechaInicio = @FechaInicio,
			FechaFin = @FechaFin,
			Activo = @Activo
			where IdPeriodo = @IdPeriodo
		ELSE
			SET @Resultado = 0
	else
		update PERIODO SET
			Descripcion = @Descripcion,
			FechaInicio = @FechaInicio,
			FechaFin = @FechaFin,
			Activo = @Activo
			where IdPeriodo = @IdPeriodo
	
end

GO
/****** Object:  StoredProcedure [dbo].[usp_EliminarAlumno]    Script Date: 03/02/2023 01:23:32 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
--ELIMINAR ALUMNO
create procedure [dbo].[usp_EliminarAlumno](
@IdAlumno int,
@Resultado bit output
)
as
begin
	SET @Resultado = 1

	--validamos que ningun usuario se encuentre relacionado a una tienda
	IF (not EXISTS (select * from MATRICULA m 
		inner join ALUMNO a on a.IdAlumno = m.IdAlumno
		where a.IdAlumno = @IdAlumno
		) 
	)
		delete from ALUMNO where IdAlumno = @IdAlumno
	ELSE
		SET @Resultado = 0

end


GO
/****** Object:  StoredProcedure [dbo].[usp_EliminarCurricula]    Script Date: 03/02/2023 01:23:32 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

--ELIMINAR CURRICULA
create proc [dbo].[usp_EliminarCurricula](
@IdCurricula int,
@Resultado bit output
)
as
begin
	begin try
		begin transaction

		delete from CURRICULA where IdCurricula = @IdCurricula

		commit
		set @Resultado = 1
		
	end try
	begin catch
		ROLLBACK
		set @Resultado = 0
	end catch
end

GO
/****** Object:  StoredProcedure [dbo].[usp_EliminarCurso]    Script Date: 03/02/2023 01:23:32 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO


--ELIMINAR NIVEL
create procedure [dbo].[usp_EliminarCurso](
@IdCurso int,
@Resultado bit output
)
as
begin
	SET @Resultado = 1

	--validamos que ningun usuario se encuentre relacionado a una tienda
	IF (not EXISTS (select * from CURSO c 
		inner join NIVEL_DETALLE_CURSO ndc on ndc.IdCurso = c.IdCurso
		where c.IdCurso = @IdCurso
		) 
	)
		delete from CURSO where IdCurso = @IdCurso
	ELSE
		SET @Resultado = 0

end


GO
/****** Object:  StoredProcedure [dbo].[usp_EliminarDocente]    Script Date: 03/02/2023 01:23:32 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
--ELIMINAR ALUMNO
create procedure [dbo].[usp_EliminarDocente](
@IdDocente int,
@Resultado bit output
)
as
begin
	SET @Resultado = 1

	--validamos que ningun usuario se encuentre relacionado a una tienda
	IF (not EXISTS (select * from DOCENTE_NIVELDETALLE_CURSO m 
		inner join DOCENTE a on a.IdDocente = m.IdDocente
		where a.IdDocente = @IdDocente
		) 
	)
		delete from DOCENTE where IdDocente = @IdDocente
	ELSE
		SET @Resultado = 0

end

GO
/****** Object:  StoredProcedure [dbo].[usp_EliminarDocenteCurso]    Script Date: 03/02/2023 01:23:32 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
--ELIMINAR DOCENTE CURSO
create proc [dbo].[usp_EliminarDocenteCurso](
@IdDocenteCurso int,
@Resultado bit output
)
as
begin
	begin try
		begin transaction

		delete from DOCENTE_NIVELDETALLE_CURSO where IdDocenteNivelDetalleCurso = @IdDocenteCurso

		commit
		set @Resultado = 1
		
	end try
	begin catch
		ROLLBACK
		set @Resultado = 0
	end catch
end

GO
/****** Object:  StoredProcedure [dbo].[usp_EliminarGradoSeccion]    Script Date: 03/02/2023 01:23:32 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
--ELIMINAR GRADOSECCION
create procedure [dbo].[usp_EliminarGradoSeccion](
@IdGradoSeccion int,
@Resultado bit output
)
as
begin
	SET @Resultado = 1

	--validamos que ningun usuario se encuentre relacionado a una tienda
	IF (not EXISTS (select * from GRADO_SECCION n 
		inner join NIVEL_DETALLE p on p.IdGradoSeccion = n.IdGradoSeccion
		where n.IdGradoSeccion = @IdGradoSeccion
		) 
	)
		delete from GRADO_SECCION where IdGradoSeccion = @IdGradoSeccion
	ELSE
		SET @Resultado = 0

end

GO
/****** Object:  StoredProcedure [dbo].[usp_EliminarHorario]    Script Date: 03/02/2023 01:23:32 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

--ELIMINAR HORARIO
create proc [dbo].[usp_EliminarHorario](
@IdHorario int,
@Resultado bit output
)
as
begin
	begin try
		begin transaction

		delete from HORARIO where IdHorario = @IdHorario

		commit
		set @Resultado = 1
		
	end try
	begin catch
		ROLLBACK
		set @Resultado = 0
	end catch
end


GO
/****** Object:  StoredProcedure [dbo].[usp_EliminarNivel]    Script Date: 03/02/2023 01:23:32 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

--ELIMINAR NIVEL
create procedure [dbo].[usp_EliminarNivel](
@IdNivel int,
@Resultado bit output
)
as
begin
	SET @Resultado = 1

	--validamos que ningun usuario se encuentre relacionado a una tienda
	IF (not EXISTS (select * from NIVEL n 
		inner join NIVEL_DETALLE p on p.IdNivel = n.IdNivel
		where n.IdNivel = @IdNivel
		) 
	)
		delete from NIVEL where IdNivel = @IdNivel
	ELSE
		SET @Resultado = 0

end

GO
/****** Object:  StoredProcedure [dbo].[usp_EliminarPeriodo]    Script Date: 03/02/2023 01:23:32 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

--ELIMINAR PERIODO
create procedure [dbo].[usp_EliminarPeriodo](
@IdPeriodo int,
@Resultado bit output
)
as
begin
	SET @Resultado = 1

	--validamos que ningun usuario se encuentre relacionado a una tienda
	IF (not EXISTS (select * from NIVEL n 
		inner join PERIODO p on p.IdPeriodo = n.IdPeriodo
		where p.IdPeriodo = @IdPeriodo
		) 
	)
		delete from PERIODO where IdPeriodo = @IdPeriodo
	ELSE
		SET @Resultado = 0

end


GO
/****** Object:  StoredProcedure [dbo].[usp_EliminarRol]    Script Date: 03/02/2023 01:23:32 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

--PROCEDIMIENTO PARA ELIMINAR ROL
create procedure [dbo].[usp_EliminarRol](
@IdRol int,
@Resultado bit output
)
as
begin
	SET @Resultado = 1

	--validamos que el rol no se encuentre asignado a algun usuario
	IF not EXISTS (select * from USUARIO u
	inner join ROL r on r.IdRol  = u.IdRol
	where r.IdRol = @IdRol)
	begin	
		delete from PERMISOS where IdRol = @IdRol
		delete from ROL where IdRol = @IdRol
	end
	ELSE
		SET @Resultado = 0

end
GO
/****** Object:  StoredProcedure [dbo].[usp_EliminarUsuario]    Script Date: 03/02/2023 01:23:32 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

--PROCEDIMIENTO PARA ELIMINAR USUARIO
create procedure [dbo].[usp_EliminarUsuario](
@IdUsuario int,
@Resultado bit output
)
as
begin

	delete from USUARIO where IdUsuario = @IdUsuario
	SET @Resultado = 1
end

GO
/****** Object:  StoredProcedure [dbo].[usp_ListarAlumno]    Script Date: 03/02/2023 01:23:32 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO


--PROCEDMIENTO PARA OBTENER USUARIOS
CREATE PROC [dbo].[usp_ListarAlumno]
as
begin
 select IdAlumno,Codigo,Nombres,Apellidos,DocumentoIdentidad,FechaNacimiento,Sexo,Ciudad,Direccion,Activo from ALUMNO
end

GO
/****** Object:  StoredProcedure [dbo].[usp_ListarCurso]    Script Date: 03/02/2023 01:23:32 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

--LISTAR CURSO
CREATE PROC [dbo].[usp_ListarCurso]
as
begin
 select IdCurso,Descripcion,Activo from CURSO
end

GO
/****** Object:  StoredProcedure [dbo].[usp_ListarCursosAsignados]    Script Date: 03/02/2023 01:23:32 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO


--LISTAR CURSOS ASIGNADOS
CREATE PROC [dbo].[usp_ListarCursosAsignados]
as
begin
SELECT 
NDC.IdNivelDetalleCurso,

nd.IdNivelDetalle,

n.IdNivel, n.DescripcionNivel, n.DescripcionTurno,n.HoraInicio,n.HoraFin,

gs.IdGradoSeccion, gs.DescripcionGrado,gs.DescripcionSeccion,

C.IdCurso, C.Descripcion, C.Activo[CursoActivo]


FROM NIVEL_DETALLE_CURSO NDC
INNER JOIN NIVEL_DETALLE ND ON ND.IdNivelDetalle = NDC.IdNivelDetalle
INNER JOIN NIVEL N ON N.IdNivel = ND.IdNivel
INNER JOIN GRADO_SECCION GS ON GS.IdGradoSeccion = ND.IdGradoSeccion
INNER JOIN CURSO C ON C.IdCurso = NDC.IdCurso

end


GO
/****** Object:  StoredProcedure [dbo].[usp_ListarDocente]    Script Date: 03/02/2023 01:23:32 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

--LISTAR DOCENTE
CREATE PROC [dbo].[usp_ListarDocente]
as
begin
 select IdDocente,Codigo,DocumentoIdentidad,Nombres,Apellidos,FechaNacimiento,Sexo,GradoEstudio,Ciudad,Direccion,Email,NumeroTelefono,Activo from DOCENTE
 order by Nombres
end

GO
/****** Object:  StoredProcedure [dbo].[usp_ListarDocenteCurso]    Script Date: 03/02/2023 01:23:32 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO


--LISTAR DOCENTE CURSO
CREATE PROC [dbo].[usp_ListarDocenteCurso]
as
begin
 
 select
 dndc.IdDocenteNivelDetalleCurso[IdDocenteCurso],
 n.IdNivel,
 gs.IdGradoSeccion,
 d.IdDocente,
 c.IdCurso,
 d.Codigo[CodigoDocente],
 d.Nombres[NombreDocente],
 d.Apellidos[ApellidoDocente],
 n.DescripcionNivel,
 gs.DescripcionGrado,
 gs.DescripcionSeccion,
 c.Descripcion[DescripcionCurso],
 dndc.Activo

 from DOCENTE_NIVELDETALLE_CURSO dndc
 inner join NIVEL_DETALLE_CURSO ndc on ndc.IdNivelDetalleCurso = dndc.IdNivelDetalleCurso
 inner join CURSO c on c.IdCurso = ndc.IdCurso
 inner join NIVEL_DETALLE nd on nd.IdNivelDetalle = ndc.IdNivelDetalle
 inner join NIVEL n on n.IdNivel = nd.IdNivel
 inner join GRADO_SECCION gs on gs.IdGradoSeccion = nd.IdGradoSeccion
 inner join DOCENTE d on d.IdDocente = dndc.IdDocente
 order by d.Nombres
end

GO
/****** Object:  StoredProcedure [dbo].[usp_ListarGradoSeccion]    Script Date: 03/02/2023 01:23:32 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

--PROCEDMIENTO GRADOSECCION
CREATE PROC [dbo].[usp_ListarGradoSeccion]
as
begin
 SELECT IdGradoSeccion,DescripcionGrado,DescripcionSeccion,Activo FROM GRADO_SECCION order by IdGradoSeccion asc
end

GO
/****** Object:  StoredProcedure [dbo].[usp_ListarHorario]    Script Date: 03/02/2023 01:23:32 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

--LISTAR HORARIO

 CREATE PROC [dbo].[usp_ListarHorario]
as
begin

select h.IdHorario,ndc.IdCurso,nd.IdNivel,nd.IdGradoSeccion, h.DiaSemana,c.Descripcion[NombreCurso] ,h.HoraInicio,h.HoraFin,h.Activo from horario h
 inner join NIVEL_DETALLE_CURSO ndc on ndc.IdNivelDetalleCurso = h.IdNivelDetalleCurso
 inner join CURSO c on c.IdCurso = ndc.IdCurso
 inner join NIVEL_DETALLE nd on nd.IdNivelDetalle = ndc.IdNivelDetalle

end

GO
/****** Object:  StoredProcedure [dbo].[usp_ListarNivel]    Script Date: 03/02/2023 01:23:32 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

--PROCEDMIENTO NIVEL
CREATE PROC [dbo].[usp_ListarNivel]
as
begin
 select n.IdNivel,n.IdPeriodo,p.Descripcion[DescripcionPeriodo],n.DescripcionNivel,n.DescripcionTurno,n.HoraInicio,n.HoraFin,n.Activo from NIVEL n
 inner join PERIODO p on n.IdPeriodo = p.IdPeriodo
 
end

GO
/****** Object:  StoredProcedure [dbo].[usp_ListarNivelDetalle]    Script Date: 03/02/2023 01:23:32 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

--LISTAR NIVELDETALLE
CREATE PROC [dbo].[usp_ListarNivelDetalle]
as
begin
 --SELECT IdNivelDetalle, IdNivel,IdGradoSeccion,TotalVacantes,VacantesDisponibles,VacantesOcupadas,Activo FROM NIVEL_DETALLE

 select nd.IdNivelDetalle,n.IdNivel,n.DescripcionNivel,n.DescripcionTurno,gs.IdGradoSeccion,gs.DescripcionGrado,gs.DescripcionSeccion,nd.TotalVacantes,nd.VacantesDisponibles,nd.VacantesOcupadas,nd.Activo from NIVEL_DETALLE nd
	  inner join NIVEL n on n.IdNivel = nd.IdNivel
	  inner join GRADO_SECCION gs on gs.IdGradoSeccion = nd.IdGradoSeccion
end

GO
/****** Object:  StoredProcedure [dbo].[usp_ListarPeriodo]    Script Date: 03/02/2023 01:23:32 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

--PROCEDMIENTO PERIODO
CREATE PROC [dbo].[usp_ListarPeriodo]
as
begin
 select IdPeriodo, Descripcion,FechaInicio,FechaFin,Activo from PERIODO
end

GO
/****** Object:  StoredProcedure [dbo].[usp_LoginUsuario]    Script Date: 03/02/2023 01:23:32 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

--PROCEDMIENTO PARA OBTENER USUARIO

create procedure [dbo].[usp_LoginUsuario](
@Usuario varchar(60),
@Clave varchar(60),
@IdUsuario int output
)
as
begin
	set @IdUsuario = 0
	if exists(select * from USUARIO where [LoginUsuario] COLLATE Latin1_General_CS_AS = @Usuario and LoginClave COLLATE Latin1_General_CS_AS = @Clave and Activo = 1)
		set @IdUsuario = (select top 1 IdUsuario from USUARIO where [LoginUsuario]  COLLATE Latin1_General_CS_AS = @Usuario and LoginClave COLLATE Latin1_General_CS_AS = @Clave and Activo = 1)
end

GO
/****** Object:  StoredProcedure [dbo].[usp_ModificarRol]    Script Date: 03/02/2023 01:23:32 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

--PROCEDIMIENTO PARA MODIFICAR ROLES
create procedure [dbo].[usp_ModificarRol](
@IdRol int,
@Descripcion varchar(60),
@Activo bit,
@Resultado bit output
)
as
begin
	SET @Resultado = 1
	IF NOT EXISTS (SELECT * FROM ROL WHERE Descripcion =@Descripcion and IdRol != @IdRol)
		
		update ROL set 
		Descripcion = @Descripcion,
		Activo = @Activo
		where IdRol = @IdRol
	ELSE
		SET @Resultado = 0

end

GO
/****** Object:  StoredProcedure [dbo].[usp_ModificarUsuario]    Script Date: 03/02/2023 01:23:32 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

--PROCEDIMIENTO PARA MODIFICAR USUARIO
create procedure [dbo].[usp_ModificarUsuario](
@IdUsuario int,
@Nombres varchar(50),
@Apellidos varchar(50),
@IdRol int,
@Usuario varchar(50),
@Clave varchar(50),
@DescripcionReferencia varchar(50),
@IdReferencia int,
@Activo bit,
@Resultado bit output
)
as
begin
	SET @Resultado = 1
	IF NOT EXISTS (SELECT * FROM USUARIO WHERE LoginUsuario = @Usuario and IdUsuario != @IdUsuario)
		
		update USUARIO set 
		Nombres = @Nombres,
		Apellidos = @Apellidos,
		IdRol = @IdRol,
		LoginUsuario = @Usuario,
		LoginClave = @Clave,
		DescripcionReferencia = @DescripcionReferencia,
		IdReferencia = @IdReferencia,
		Activo = @Activo
		where IdUsuario = @IdUsuario

	ELSE
		SET @Resultado = 0

end

GO
/****** Object:  StoredProcedure [dbo].[usp_ObtenerClalificacion]    Script Date: 03/02/2023 01:23:32 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO


create proc [dbo].[usp_ObtenerClalificacion](
@IdNivel int,
@IdGradoSeccion int,
@IdCurso int,
@IdAlumno int
)
as
begin
	  select nd.IdNivel,nd.IdGradoSeccion,ndc.IdCurso,ca.IdAlumno,cu.IdCurricula,cu.Descripcion,ca.Nota from CALIFICACION ca
	  inner join CURRICULA cu on cu.IdCurricula = ca.IdCurricula
	  inner join DOCENTE_NIVELDETALLE_CURSO dndc on dndc.IdDocenteNivelDetalleCurso = cu.IdDocenteNivelDetalleCurso
	  inner join NIVEL_DETALLE_CURSO ndc on ndc.IdNivelDetalleCurso = dndc.IdNivelDetalleCurso
	  inner join NIVEL_DETALLE nd on nd.IdNivelDetalle = ndc.IdNivelDetalle
	  where nd.IdNivel = @IdNivel and nd.IdGradoSeccion = @IdGradoSeccion and ndc.IdCurso = @IdCurso and ca.IdAlumno = @IdAlumno
end

GO
/****** Object:  StoredProcedure [dbo].[usp_ObtenerCurricula]    Script Date: 03/02/2023 01:23:32 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

create proc [dbo].[usp_ObtenerCurricula](
@IdNivel int,
@IdGradoSeccion int,
@IdCurso int,
@IdDocente int
)
as
begin
	select cu.IdCurricula,cu.IdDocenteNivelDetalleCurso,cu.Descripcion from CURRICULA cu
	inner join DOCENTE_NIVELDETALLE_CURSO dndc on dndc.IdDocenteNivelDetalleCurso = cu.IdDocenteNivelDetalleCurso
	inner join NIVEL_DETALLE_CURSO ndc on ndc.IdNivelDetalleCurso = dndc.IdNivelDetalleCurso
	inner join NIVEL_DETALLE nd on nd.IdNivelDetalle = ndc.IdNivelDetalle
	where nd.IdNivel = @IdNivel and nd.IdGradoSeccion = @IdGradoSeccion and ndc.IdCurso = @IdCurso and dndc.IdDocente = @IdDocente
end

GO
/****** Object:  StoredProcedure [dbo].[usp_ObtenerDetalleUsuario]    Script Date: 03/02/2023 01:23:32 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

--PROCEDMIENTO PARA OBTENER DETALLE USUARIO
create proc [dbo].[usp_ObtenerDetalleUsuario](
@IdUsuario int
)
as
begin
 select *,
(select * from ROL r
 where r.IdRol = up.IdRol
FOR XML PATH (''),TYPE) AS 'DetalleRol'
,
 (
 select t.NombreMenu,t.Icono,
 (select sm.Nombre[NombreSubMenu],sm.NombreFormulario,sm.Accion,p.Activo
	 from PERMISOS p
	 inner join ROL r on r.IdRol = p.IdRol
	 inner join SUBMENU sm on sm.IdSubMenu = p.IdSubMenu
	 inner join MENU m on m.IdMenu = sm.IdMenu
	 inner join USUARIO u on u.IdRol = r.IdRol and u.IdUsuario = up.IdUsuario
	where sm.IdMenu = t.IdMenu
  FOR XML PATH ('SubMenu'),TYPE) AS 'DetalleSubMenu' 

 from (
 select distinct m.Nombre[NombreMenu],m.IdMenu,m.Icono
 from PERMISOS p
 inner join ROL r on r.IdRol = p.IdRol
 inner join SUBMENU sm on sm.IdSubMenu = p.IdSubMenu
 inner join MENU m on m.IdMenu = sm.IdMenu
 inner join USUARIO u on u.IdRol = r.IdRol and u.IdUsuario = up.IdUsuario
 where p.Activo = 1) t
 FOR XML PATH ('Menu'),TYPE) AS 'DetalleMenu'  
 from USUARIO up
 where UP.IdUsuario = @IdUsuario
 FOR XML PATH(''), ROOT('Usuario')  

end

GO
/****** Object:  StoredProcedure [dbo].[usp_ObtenerMatricula]    Script Date: 03/02/2023 01:23:32 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

create proc [dbo].[usp_ObtenerMatricula]
as
begin
  select m.IdMatricula, nd.IdNivel,nd.IdGradoSeccion,a.IdAlumno,a.Nombres,a.Apellidos from MATRICULA m
  inner join NIVEL_DETALLE nd on m.IdNivelDetalle = nd.IdNivelDetalle
  inner join ALUMNO a on a.IdAlumno = m.IdAlumno
end

GO
/****** Object:  StoredProcedure [dbo].[usp_ObtenerPermisos]    Script Date: 03/02/2023 01:23:32 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO


--PROCEDMIENTO PARA OBTENER PERMISOS
create procedure [dbo].[usp_ObtenerPermisos](
@IdRol int)
as
begin
select p.IdPermisos,m.Nombre[Menu],sm.Nombre[SubMenu],p.Activo from PERMISOS p
inner join SUBMENU sm on sm.IdSubMenu = p.IdSubMenu
inner join MENU m on m.IdMenu = sm.IdMenu
where p.IdRol = @IdRol
end

GO
/****** Object:  StoredProcedure [dbo].[usp_ObtenerRoles]    Script Date: 03/02/2023 01:23:32 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO


--PROCEDMIENTO PARA OBTENER ROLES
CREATE PROC [dbo].[usp_ObtenerRoles]
as
begin
 select IdRol, Descripcion,Activo from ROL
end

GO
/****** Object:  StoredProcedure [dbo].[usp_ObtenerUsuario]    Script Date: 03/02/2023 01:23:32 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

--PROCEDMIENTO PARA OBTENER USUARIOS
CREATE PROC [dbo].[usp_ObtenerUsuario]
as
begin
 select u.IdUsuario,u.Nombres,u.Apellidos,u.LoginUsuario,u.LoginClave,u.IdRol,u.Activo,u.DescripcionReferencia,r.Descripcion[DescripcionRol],u.Activo from USUARIO u
 inner join ROL r on r.IdRol = u.IdRol
end

GO
/****** Object:  StoredProcedure [dbo].[usp_RegistrarAlumno]    Script Date: 03/02/2023 01:23:32 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

-- REGISTRAR ALUMNO
CREATE PROC [dbo].[usp_RegistrarAlumno](
@Nombres varchar(100),
@Apellidos varchar(100),
@DocumentoIdentidad varchar(100),
@FechaNacimiento date,
@Sexo varchar(50),
@Ciudad varchar(100),
@Direccion varchar(100),
@Resultado bit output
)as
begin
	SET DATEFORMAT dmy;
	SET @Resultado = 1
	IF NOT EXISTS (SELECT * FROM ALUMNO WHERE DocumentoIdentidad = @DocumentoIdentidad and Nombres like '%' + @Nombres +'%' and Apellidos like '%' + @Apellidos +'%')
		insert into ALUMNO(ValorCodigo,Codigo,Nombres,Apellidos,DocumentoIdentidad,FechaNacimiento,Sexo,Ciudad,Direccion) values (
		(select isnull(max(ValorCodigo),0) + 1 from ALUMNO),
		'AL' + RIGHT('000000' + convert(varchar(max),(select isnull(max(ValorCodigo),0) + 1 from ALUMNO)),6),
		@Nombres,
		@Apellidos,
		@DocumentoIdentidad,
		@FechaNacimiento,
		@Sexo,
		@Ciudad,
		@Direccion
		)
	ELSE
		SET @Resultado = 0
	
end

GO
/****** Object:  StoredProcedure [dbo].[usp_RegistrarCalificacion]    Script Date: 03/02/2023 01:23:32 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO


--REGITRAR VACANTES
create procedure [dbo].[usp_RegistrarCalificacion](
@xml xml,
@Resultado bit output
)
as
begin
begin try

	BEGIN TRANSACTION
		declare @detalle table(IdCurricula int,IdAlumno int,Nota float)
		declare @IdAlumno int = 0;

		insert into @detalle(IdCurricula,IdAlumno,Nota)
		select 
		d1 = Node.Data.value('(IdCurricula)[1]','int'),
		d2 = Node.Data.value('(IdAlumno)[1]','int'),
		d3 = Node.Data.value('(Nota)[1]','float')
		FROM @xml.nodes('/DETALLE/DATA') Node(Data)


		set @IdAlumno = (select top 1 IdAlumno from @detalle)

		delete ca from CALIFICACION ca
		inner join CURRICULA cu on cu.IdCurricula = ca.IdCurricula
		inner join DOCENTE_NIVELDETALLE_CURSO dndc on dndc.IdDocenteNivelDetalleCurso = cu.IdDocenteNivelDetalleCurso
		inner join NIVEL_DETALLE_CURSO ndc on ndc.IdNivelDetalleCurso = dndc.IdNivelDetalleCurso
		inner join NIVEL_DETALLE nd on nd.IdNivelDetalle = ndc.IdNivelDetalle
		inner join NIVEL n on nd.IdNivel = nd.IdNivel
		inner join PERIODO p on p.IdPeriodo = n.IdPeriodo
		where ca.IdAlumno = @IdAlumno and p.Activo = 1

		insert into CALIFICACION(IdCurricula,IdAlumno,Nota)
		select IdCurricula,IdAlumno,Nota from @detalle

		set @Resultado = 1

	COMMIT

 end try
 begin catch
	ROLLBACK
	set @Resultado = 0
 end catch
end

GO
/****** Object:  StoredProcedure [dbo].[usp_RegistrarCurricula]    Script Date: 03/02/2023 01:23:32 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

--REGISTRAR DOCENTE CURSO
CREATE PROC [dbo].[usp_RegistrarCurricula](
@IdNivel int,
@IdGradoSeccion int,
@IdCurso int,
@IdDocente int,
@Descripcion varchar(100),
@Resultado bit output
)
as
begin
	declare @iddocenteniveldetallecurso int = 0

	set @iddocenteniveldetallecurso = (select top 1 ndc.IdNivelDetalleCurso from DOCENTE_NIVELDETALLE_CURSO dndc
	inner join NIVEL_DETALLE_CURSO ndc on ndc.IdNivelDetalleCurso = dndc.IdNivelDetalleCurso
	inner join NIVEL_DETALLE nd on nd.IdNivelDetalle = ndc.IdNivelDetalle
	where nd.IdNivel = @IdNivel and nd.IdGradoSeccion = @IdGradoSeccion and ndc.IdCurso = @IdCurso and dndc.IdDocente = @IdDocente)

	if(@iddocenteniveldetallecurso = 0 or @iddocenteniveldetallecurso is null)
		set @Resultado = 0
	else
	begin
		set @Resultado = 1

		if( not exists (select * from CURRICULA where IdDocenteNivelDetalleCurso = @iddocenteniveldetallecurso and Descripcion like '%' + @Descripcion +'%'))
			insert into CURRICULA(IdDocenteNivelDetalleCurso,Descripcion) values
			(@iddocenteniveldetallecurso,@Descripcion)
		else
			set @Resultado = 0

		
	end

end

GO
/****** Object:  StoredProcedure [dbo].[usp_RegistrarCurso]    Script Date: 03/02/2023 01:23:32 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

-- REGISTRAR CURSO
CREATE PROC [dbo].[usp_RegistrarCurso](
@Descripcion varchar(50),
@Resultado bit output
)as
begin
	SET DATEFORMAT dmy;
	SET @Resultado = 1

	IF NOT EXISTS (SELECT * FROM CURSO WHERE Descripcion = @Descripcion )
		INSERT INTO CURSO(Descripcion)
		values(
			@Descripcion
		)
	ELSE
		SET @Resultado = 0
	
end

GO
/****** Object:  StoredProcedure [dbo].[usp_RegistrarDocente]    Script Date: 03/02/2023 01:23:32 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

-- REGISTRAR DOCENTE
CREATE PROC [dbo].[usp_RegistrarDocente](
@DocumentoIdentidad varchar(100),
@Nombres varchar(100),
@Apellidos varchar(100),
@FechaNacimiento date,
@Sexo varchar(50),
@GradoEstudio varchar(100),
@Ciudad varchar(100),
@Direccion varchar(100),
@Email varchar(100),
@NumeroTelefono varchar(50),
@Resultado bit output
)as
begin
	SET DATEFORMAT dmy;
	SET @Resultado = 1
	IF NOT EXISTS (SELECT * FROM DOCENTE WHERE DocumentoIdentidad = @DocumentoIdentidad and Nombres like '%' + @Nombres +'%' and Apellidos like '%' + @Apellidos +'%')
		insert into DOCENTE(ValorCodigo,Codigo,DocumentoIdentidad,Nombres,Apellidos,FechaNacimiento,Sexo,GradoEstudio,Ciudad,Direccion,Email,NumeroTelefono) values (
		(select isnull(max(ValorCodigo),0) + 1 from DOCENTE),
		'DO' + RIGHT('000000' + convert(varchar(max),(select isnull(max(ValorCodigo),0) + 1 from DOCENTE)),6),
		@DocumentoIdentidad,
		@Nombres,
		@Apellidos,
		@FechaNacimiento,
		@Sexo,
		@GradoEstudio,
		@Ciudad,
		@Direccion,
		@Email,
		@NumeroTelefono
		)
	ELSE
		SET @Resultado = 0
	
end

GO
/****** Object:  StoredProcedure [dbo].[usp_RegistrarDocenteCurso]    Script Date: 03/02/2023 01:23:32 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

--REGISTRAR DOCENTE CURSO
CREATE PROC [dbo].[usp_RegistrarDocenteCurso](
@IdNivel int,
@IdGradoSeccion int,
@IdCurso int,
@IdDocente int,
@Resultado bit output
)
as
begin
	declare @idniveldetallecurso int = 0
	declare @idhorario int = 0

	set @idniveldetallecurso = (select top 1 ndc.IdNivelDetalleCurso from NIVEL_DETALLE_CURSO ndc
	inner join NIVEL_DETALLE nd on nd.IdNivelDetalle = ndc.IdNivelDetalle
	where nd.IdNivel = @IdNivel and nd.IdGradoSeccion = @IdGradoSeccion and ndc.IdCurso = @IdCurso)

	if(@idniveldetallecurso = 0)
		set @Resultado = 0
	else
	begin
		insert into DOCENTE_NIVELDETALLE_CURSO(IdNivelDetalleCurso,IdDocente) values
		(@idniveldetallecurso,@IdDocente)
		

		set @Resultado = 1
	end

end

GO
/****** Object:  StoredProcedure [dbo].[usp_RegistrarGradoSeccion]    Script Date: 03/02/2023 01:23:32 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

-- REGISTRAR GRADOSECCION
CREATE PROC [dbo].[usp_RegistrarGradoSeccion](
@DescripcionGrado varchar(100),
@DescripcionSeccion varchar(100),
@Resultado bit output
)as
begin
	SET DATEFORMAT dmy;
	SET @Resultado = 1

	IF NOT EXISTS (SELECT * FROM GRADO_SECCION WHERE DescripcionGrado like '%' + @DescripcionGrado +'%' and DescripcionSeccion like '%' + @DescripcionSeccion +'%')
		INSERT INTO GRADO_SECCION(DescripcionGrado,DescripcionSeccion)
		values(
			@DescripcionGrado,
			@DescripcionSeccion
		)
	ELSE
		SET @Resultado = 0
	
end
GO
/****** Object:  StoredProcedure [dbo].[usp_RegistrarHorario]    Script Date: 03/02/2023 01:23:32 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

--REGISTRAR HORARIO
CREATE PROC [dbo].[usp_RegistrarHorario](
@IdNivel int,
@IdGradoSeccion int,
@IdCurso int,
@DiaSemana varchar(100),
@HoraInicio datetime,
@HoraFin datetime,
@Resultado bit output
)
as
begin
	declare @idniveldetallecurso int = 0
	declare @idhorario int = 0

	set @idniveldetallecurso = (select top 1 ndc.IdNivelDetalleCurso from NIVEL_DETALLE_CURSO ndc
	inner join NIVEL_DETALLE nd on ndc.IdNivelDetalle = ndc.IdNivelDetalle
	where nd.IdNivel = @IdNivel and nd.IdGradoSeccion = @IdGradoSeccion and ndc.IdCurso = @IdCurso)

	if(@idniveldetallecurso = 0)
		set @Resultado = 0
	else
	begin
		
		set @idhorario = (select top 1 IdHorario from HORARIO where IdNivelDetalleCurso = @idniveldetallecurso)

		if(@idhorario = 0 or @idhorario is null)
			insert into HORARIO(IdNivelDetalleCurso,DiaSemana,HoraInicio,HoraFin) values
			(@idniveldetallecurso,@DiaSemana,@HoraInicio,@HoraFin)
		else
			update HORARIO set
			DiaSemana = @DiaSemana,
			HoraInicio = @HoraInicio,
			HoraFin = @HoraFin
			where IdHorario = @idhorario

		set @Resultado = 1
	end

end

GO
/****** Object:  StoredProcedure [dbo].[usp_RegistrarMatricula]    Script Date: 03/02/2023 01:23:32 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO


--REGITRAR MATRICULA
create procedure [dbo].[usp_RegistrarMatricula](
@xml xml,
@Resultado int output
)
as
begin
begin try

	BEGIN TRANSACTION

		SET DATEFORMAT dmy;
		declare @idalumno int
		declare @idapoderado int
		declare @idniveldetalle int

		declare @academico table (situacion varchar(50),idperiodo int,idnivel int,idgradoseccion int,institucionprocedencia varchar(100),esrepitente varchar(50))
		declare @alumno table(idalumno int,documentoidentidad varchar(50),nombres varchar(50),apellidos varchar(50),fechanacimiento varchar(50),
							sexo varchar(50),ciudad varchar(50), direccion varchar(100))

		declare @apoderado table(tiporelacion varchar(50),documentoidentidad varchar(50),nombres varchar(50),apellidos varchar(50),fechanacimiento varchar(50),
							sexo varchar(50),estadocivil varchar(50),ciudad varchar(50), direccion varchar(100))
		
		insert into @academico(situacion,idperiodo,idnivel,idgradoseccion,institucionprocedencia,esrepitente)
		select 
		data0 = Node.Data.value('(situacion)[1]','varchar(50)'),
		data1 = Node.Data.value('(idperiodo)[1]','int'),
		data2 = Node.Data.value('(idnivel)[1]','int'),
		data3 = Node.Data.value('(idgradoseccion)[1]','int'),
		data4 = Node.Data.value('(institucionprocedencia)[1]','varchar(100)'),
		data5 = Node.Data.value('(esrepitente)[1]','varchar(50)')
		FROM @xml.nodes('/DATA/ACADEMICO') Node(Data)

		insert into @alumno(idalumno,documentoidentidad,nombres,apellidos,fechanacimiento,sexo,ciudad,direccion)
		select 
		data1 = Node.Data.value('(idalumno)[1]','int'),
		data2 = Node.Data.value('(documentoidentidad)[1]','varchar(100)'),
		data3 = Node.Data.value('(nombres)[1]','varchar(100)'),
		data4 = Node.Data.value('(apellidos)[1]','varchar(100)'),
		data5 = Node.Data.value('(fechanacimiento)[1]','varchar(50)'),
		data6 = Node.Data.value('(sexo)[1]','varchar(100)'),
		data7 = Node.Data.value('(ciudad)[1]','varchar(100)'),
		data8 = Node.Data.value('(direccion)[1]','varchar(100)')
		FROM @xml.nodes('/DATA/ALUMNO') Node(Data)


		insert into @apoderado(tiporelacion,documentoidentidad,nombres,apellidos,fechanacimiento,sexo,estadocivil,ciudad,direccion)
		select 
		data1 = Node.Data.value('(tiporelacion)[1]','varchar(100)'),
		data2 = Node.Data.value('(documentoidentidad)[1]','varchar(100)'),
		data3 = Node.Data.value('(nombres)[1]','varchar(100)'),
		data4 = Node.Data.value('(apellidos)[1]','varchar(100)'),
		data5 = Node.Data.value('(fechanacimiento)[1]','varchar(50)'),
		data6 = Node.Data.value('(sexo)[1]','varchar(100)'),
		data7 = Node.Data.value('(estadocivil)[1]','varchar(100)'),
		data8 = Node.Data.value('(ciudad)[1]','varchar(100)'),
		data8 = Node.Data.value('(direccion)[1]','varchar(100)')
		FROM @xml.nodes('/DATA/APODERADO') Node(Data)

		---AREA DE TRABAJO
		--REGISTRAMOS ALUMNO
		if((select top 1 idalumno from @alumno) = 0)
		begin
			insert into ALUMNO(ValorCodigo,Codigo,Nombres,Apellidos,DocumentoIdentidad,FechaNacimiento,Sexo,Ciudad,Direccion)
			select 
			(select isnull(max(ValorCodigo),0) + 1 from ALUMNO),
			'AL' + RIGHT('000000' + convert(varchar(max),(select isnull(max(ValorCodigo),0) + 1 from ALUMNO)),6),
			nombres,
			apellidos,
			documentoidentidad,
			convert(date,fechanacimiento),
			sexo,
			ciudad,
			direccion
			from @alumno

			set @idalumno = scope_identity()
		end
		else
			set @idalumno =(select top 1 idalumno from @alumno)

		--REGISTRAMOS DOCENTE
		insert into APODERADO(TipoRelacion,Nombres,Apellidos,DocumentoIdentidad,FechaNacimiento,Sexo,EstadoCivil,Ciudad,Direccion)
		select 
		tiporelacion,
		nombres,
		apellidos,
		documentoidentidad,
		convert(date,fechanacimiento),
		sexo,
		estadocivil,
		ciudad,
		direccion
		from @apoderado

		set @idapoderado = scope_identity()

		
		set @idniveldetalle = (select top 1 IdNivelDetalle from NIVEL_DETALLE 
		where IdNivel = (select top 1 idnivel from @academico) and 
		IdGradoSeccion = (select top 1 IdGradoSeccion from @academico))


		insert into MATRICULA(ValorCodigo,Codigo,Situacion,IdAlumno,IdNivelDetalle,IdApoderado,InstitucionProcedencia,EsRepitente)
		select 
		(select isnull(max(ValorCodigo),0) + 1 from MATRICULA),
		'MA' + RIGHT('000000' + convert(varchar(max),(select isnull(max(ValorCodigo),0) + 1 from MATRICULA)),6),
		situacion,
		@idalumno,
		@idniveldetalle,
		@idapoderado,
		institucionprocedencia,
		iif(esrepitente= 'NO',0,1)
		from @academico

		
		update NIVEL_DETALLE set VacantesOcupadas = VacantesOcupadas + 1  where IdNivelDetalle = @idniveldetalle
		update NIVEL_DETALLE set VacantesDisponibles = TotalVacantes - VacantesOcupadas   where IdNivelDetalle =  @idniveldetalle


		set @Resultado = scope_identity()

	COMMIT

 end try
 begin catch
	ROLLBACK
	--set @Resultado = ERROR_MESSAGE()
	set @Resultado = 0
 end catch
end

GO
/****** Object:  StoredProcedure [dbo].[usp_RegistrarNivel]    Script Date: 03/02/2023 01:23:32 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

-- REGISTRAR NIVEL
CREATE PROC [dbo].[usp_RegistrarNivel](
@IdPeriodo int,
@DescripcionNivel varchar(100),
@DescripcionTurno varchar(100),
@HoraInicio time,
@HoraFin time,
@Resultado bit output
)as
begin
	SET DATEFORMAT dmy;
	SET @Resultado = 1

	IF NOT EXISTS (SELECT * FROM NIVEL WHERE DescripcionNivel like '%' + @DescripcionNivel +'%' and DescripcionTurno like '%' + @DescripcionTurno +'%' and IdPeriodo = @IdPeriodo )
		INSERT INTO NIVEL(IdPeriodo,DescripcionNivel,DescripcionTurno,HoraInicio,HoraFin)
		values(
			@IdPeriodo,
			@DescripcionNivel,
			@DescripcionTurno,
			@HoraInicio,
			@HoraFin
		)
	ELSE
		SET @Resultado = 0
	
end

GO
/****** Object:  StoredProcedure [dbo].[usp_RegistrarNivelDetalle]    Script Date: 03/02/2023 01:23:32 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

--REGITRAR NIVELDETALLE
create procedure [dbo].[usp_RegistrarNivelDetalle](
@xml xml,
@Resultado bit output
)
as
begin
begin try

	BEGIN TRANSACTION
		declare @nivel table(idnivel int)
		declare @gradoseccion table(idgradoseccion int)	
		declare @nivelgradoseccion table(idnivel int,idgradoseccion int,totalvacantes int, vacantesdisponibles int,vacantesocupadas int)


		insert into @nivel(idnivel)
		select 
		IdNivel = Node.Data.value('(IdNivel)[1]','int')
		FROM @xml.nodes('/DETALLE/DATA') Node(Data)

		insert into @gradoseccion(idgradoseccion)
		select 
		IdGradoSeccion = Node.Data.value('(IdGradoSeccion)[1]','int')
		FROM @xml.nodes('/DETALLE/GRADOSECCION/DATA') Node(Data)

		if not exists(select * from NIVEL_DETALLE nd
		inner join NIVEL_DETALLE_CURSO ndc on ndc.IdNivelDetalle = nd.IdNivelDetalle
		where nd.IdNivel = (select idnivel from @nivel))
		begin

			insert into @nivelgradoseccion(idnivel,idgradoseccion,totalvacantes,vacantesdisponibles,vacantesocupadas)
			SELECT (select idnivel from @nivel), idgradoseccion,0,0,0 FROM @gradoseccion

			update ngs set 
			ngs.totalvacantes = nd.TotalVacantes, 
			ngs.vacantesdisponibles = nd.VacantesDisponibles,
			ngs.vacantesocupadas = nd.VacantesOcupadas 
			from @nivelgradoseccion ngs
			inner join NIVEL_DETALLE nd on nd.IdNivel = ngs.idnivel and nd.IdGradoSeccion = ngs.idgradoseccion


			delete from NIVEL_DETALLE where IdNivel = (select idnivel from @nivel)
			set @Resultado = 1
		end
		else
			set @Resultado = 0

		if(@Resultado = 1)
		begin
			insert into NIVEL_DETALLE(IdNivel,IdGradoSeccion,TotalVacantes,VacantesOcupadas,VacantesDisponibles)
			SELECT (select idnivel from @nivel), idgradoseccion,0,0,0 FROM @gradoseccion
		

			update nd set 
			nd.TotalVacantes = ngs.TotalVacantes,
			nd.VacantesDisponibles = nd.TotalVacantes - ngs.VacantesOcupadas
			from NIVEL_DETALLE nd
			inner join @nivelgradoseccion ngs on nd.IdNivel = ngs.idnivel and nd.IdGradoSeccion = ngs.idgradoseccion
		end
		


	COMMIT
	

 end try
 begin catch
	ROLLBACK
	set @Resultado = 0
 end catch
end


GO
/****** Object:  StoredProcedure [dbo].[usp_RegistrarPeriodo]    Script Date: 03/02/2023 01:23:32 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

-- REGISTRAR PERIODO
CREATE PROC [dbo].[usp_RegistrarPeriodo](
@Descripcion varchar(50),
@FechaInicio date,
@FechaFin Date,
@Resultado bit output
)as
begin
	SET DATEFORMAT dmy;
	SET @Resultado = 1

	IF NOT EXISTS (SELECT * FROM PERIODO WHERE Activo = 1)
		INSERT INTO PERIODO(Descripcion,FechaInicio,FechaFin)
		values(
			@Descripcion,
			@FechaInicio,
			@FechaFin
		)
	ELSE
		SET @Resultado = 0
	
end

GO
/****** Object:  StoredProcedure [dbo].[usp_RegistrarRol]    Script Date: 03/02/2023 01:23:32 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

--PROCEDIMIENTO PARA GUARDAR ROL
CREATE PROC [dbo].[usp_RegistrarRol](
@Descripcion varchar(50),
@Resultado bit output
)as
begin
	SET @Resultado = 1
	IF NOT EXISTS (SELECT * FROM ROL WHERE Descripcion = @Descripcion)
	begin
		declare @idrol int = 0
		insert into ROL(Descripcion) values (
		@Descripcion
		)
		set @idrol  = Scope_identity()

		insert into PERMISOS(IdRol,IdSubMenu,Activo)
		select @idrol, IdSubMenu,0 from SUBMENU
	end
	ELSE
		SET @Resultado = 0
	
end


GO
/****** Object:  StoredProcedure [dbo].[usp_RegistrarUsuario]    Script Date: 03/02/2023 01:23:32 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

--PROCEDIMIENTO PARA REGISTRAR USUARIO
CREATE PROC [dbo].[usp_RegistrarUsuario](
@Nombres varchar(50),
@Apellidos varchar(50),
@IdRol int,
@Usuario varchar(50),
@Clave varchar(50),
@DescripcionReferencia varchar(50),
@IdReferencia int,
@Resultado bit output
)as
begin
	SET @Resultado = 1
	IF NOT EXISTS (SELECT * FROM USUARIO WHERE LoginUsuario = @Usuario)

		insert into USUARIO(Nombres,Apellidos,IdRol,LoginUsuario,LoginClave,DescripcionReferencia,IdReferencia) values (
		@Nombres,@Apellidos,@IdRol,@Usuario,@Clave,@DescripcionReferencia,@IdReferencia)
	ELSE
		SET @Resultado = 0
	
end
GO
/****** Object:  StoredProcedure [dbo].[usp_RegistrarVacantes]    Script Date: 03/02/2023 01:23:32 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO


--REGITRAR VACANTES
create procedure [dbo].[usp_RegistrarVacantes](
@xml xml,
@Resultado bit output
)
as
begin
begin try

	BEGIN TRANSACTION
		declare @detalle table(idniveldetalle int,totalvacantes int)	

		insert into @detalle(idniveldetalle,totalvacantes)
		select 
		idniveldetalle = Node.Data.value('(IdNivelDetalle)[1]','int'),
		totalvacantes = Node.Data.value('(TotalVacantes)[1]','int')
		FROM @xml.nodes('/DETALLE/DATA') Node(Data)


		update nd set nd.TotalVacantes = d.totalvacantes , nd.VacantesDisponibles = d.totalvacantes - nd.VacantesOcupadas from NIVEL_DETALLE nd
		inner join @detalle d on d.idniveldetalle = nd.IdNivelDetalle

		set @Resultado = 1

	COMMIT

 end try
 begin catch
	ROLLBACK
	set @Resultado = 0
 end catch
end

GO
/****** Object:  StoredProcedure [dbo].[usp_ReporteAlumno]    Script Date: 03/02/2023 01:23:32 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

create proc [dbo].[usp_ReporteAlumno](
@Nombres varchar(50),
@Apellidos varchar(50),
@Codigo varchar(50),
@DocumentoIdentidad varchar(50)
)
as
begin

  select a.Codigo,a.DocumentoIdentidad[Documento Identidad],a.Nombres,a.Apellidos,
  convert(char(10),a.FechaNacimiento,103)[Fecha Nacimiento],a.Sexo,a.Ciudad,a.Direccion,
  n.DescripcionNivel[Nivel Academico],n.DescripcionTurno[Turno],gs.DescripcionGrado[Grado],gs.DescripcionSeccion[Seccion]
  from MATRICULA m
  inner join ALUMNO a on a.IdAlumno = m.IdAlumno
  inner join NIVEL_DETALLE nd on nd.IdNivelDetalle = m.IdNivelDetalle
  inner join NIVEL n on n.IdNivel = nd.IdNivel
  inner join GRADO_SECCION gs on gs.IdGradoSeccion = nd.IdGradoSeccion
  where a.Nombres like '%' + @Nombres +'%' and a.Apellidos like '%' + @Apellidos +'%' and 
  a.Codigo like '%' + @Codigo+ '%' and a.DocumentoIdentidad like '%' + @DocumentoIdentidad+ '%'

end

GO
/****** Object:  StoredProcedure [dbo].[usp_ReporteMatricula]    Script Date: 03/02/2023 01:23:32 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

create proc [dbo].[usp_ReporteMatricula](
@CodigoMatricula varchar(50),
@SituacionMatricula varchar(50),
@CodigoAlumno varchar(50),
@DocumentoIdentidad varchar(50),
@Nombres varchar(50),
@Apellidos varchar(50),
@Periodo varchar(50),
@NivelAcademico varchar(50),
@GradoSeccion varchar(50)
)
as
begin

 select 
m.Codigo[Codigo Matricula],m.Situacion,iif(m.EsRepitente=1,'si','no')[Repitente],
n.DescripcionNivel[Nivel Academico],n.DescripcionTurno[Turno Nivel],
gs.DescripcionGrado[Grado],gs.DescripcionSeccion[Seccion],
a.Codigo[Codigo alumno],a.DocumentoIdentidad[Documento identidad alumno],a.Nombres,a.Apellidos
from MATRICULA m
inner join NIVEL_DETALLE nd on nd.IdNivelDetalle = m.IdNivelDetalle
inner join NIVEL n on nd.IdNivel = n.IdNivel
inner join PERIODO p on n.IdPeriodo = p.IdPeriodo
inner join GRADO_SECCION gs on gs.IdGradoSeccion = nd.IdGradoSeccion
inner join ALUMNO a on a.IdAlumno = m.IdAlumno 
where m.Codigo like '%' + @CodigoMatricula + '%' and m.Situacion like '%' + @SituacionMatricula +'%' and
a.Codigo like '%' + @CodigoAlumno + '%' and a.DocumentoIdentidad like '%' + @DocumentoIdentidad +'%' and a.Nombres like '%' + @Nombres+'%' and a.Apellidos like '%' +@Apellidos+'%' and
n.DescripcionNivel like '%'+@NivelAcademico+'%' and p.Descripcion like '%'+@Periodo+'%' and
concat(gs.DescripcionGrado,' - ',gs.DescripcionSeccion) like '%' +@GradoSeccion+'%'

end

GO
