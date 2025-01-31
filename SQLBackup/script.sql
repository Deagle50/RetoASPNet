USE [DAM_Compartido_DEV]
GO
/****** Object:  Schema [animeyt]    Script Date: 31/10/2019 12:47:21 ******/
CREATE SCHEMA [animeyt]
GO
/****** Object:  Schema [BlogHistoria]    Script Date: 31/10/2019 12:47:21 ******/
CREATE SCHEMA [BlogHistoria]
GO
/****** Object:  Schema [JKO]    Script Date: 31/10/2019 12:47:21 ******/
CREATE SCHEMA [JKO]
GO
/****** Object:  Schema [mcu]    Script Date: 31/10/2019 12:47:21 ******/
CREATE SCHEMA [mcu]
GO
/****** Object:  Schema [Minecraft]    Script Date: 31/10/2019 12:47:21 ******/
CREATE SCHEMA [Minecraft]
GO
/****** Object:  Schema [Moto]    Script Date: 31/10/2019 12:47:21 ******/
CREATE SCHEMA [Moto]
GO
/****** Object:  Schema [SecondChance]    Script Date: 31/10/2019 12:47:21 ******/
CREATE SCHEMA [SecondChance]
GO
/****** Object:  Schema [SEGUNDO\andermaestre]    Script Date: 31/10/2019 12:47:21 ******/
CREATE SCHEMA [SEGUNDO\andermaestre]
GO
/****** Object:  Schema [SEGUNDO\heldaigorospe]    Script Date: 31/10/2019 12:47:21 ******/
CREATE SCHEMA [SEGUNDO\heldaigorospe]
GO
/****** Object:  Schema [SEGUNDO\ibaisaldise]    Script Date: 31/10/2019 12:47:21 ******/
CREATE SCHEMA [SEGUNDO\ibaisaldise]
GO
/****** Object:  Schema [SEGUNDO\iñakialkiza]    Script Date: 31/10/2019 12:47:21 ******/
CREATE SCHEMA [SEGUNDO\iñakialkiza]
GO
/****** Object:  Schema [SEGUNDO\jonamengual]    Script Date: 31/10/2019 12:47:21 ******/
CREATE SCHEMA [SEGUNDO\jonamengual]
GO
/****** Object:  Schema [SEGUNDO\jonpuerto]    Script Date: 31/10/2019 12:47:21 ******/
CREATE SCHEMA [SEGUNDO\jonpuerto]
GO
/****** Object:  Schema [SEGUNDO\jorgefernandez]    Script Date: 31/10/2019 12:47:21 ******/
CREATE SCHEMA [SEGUNDO\jorgefernandez]
GO
/****** Object:  Schema [SEGUNDO\julenmartin]    Script Date: 31/10/2019 12:47:21 ******/
CREATE SCHEMA [SEGUNDO\julenmartin]
GO
/****** Object:  Schema [SEGUNDO\julenrico]    Script Date: 31/10/2019 12:47:21 ******/
CREATE SCHEMA [SEGUNDO\julenrico]
GO
/****** Object:  Schema [SEGUNDO\kevincaballero]    Script Date: 31/10/2019 12:47:21 ******/
CREATE SCHEMA [SEGUNDO\kevincaballero]
GO
/****** Object:  Schema [SEGUNDO\manexcabrera]    Script Date: 31/10/2019 12:47:21 ******/
CREATE SCHEMA [SEGUNDO\manexcabrera]
GO
/****** Object:  Schema [SEGUNDO\mikelhueso]    Script Date: 31/10/2019 12:47:21 ******/
CREATE SCHEMA [SEGUNDO\mikelhueso]
GO
/****** Object:  Schema [Vinos]    Script Date: 31/10/2019 12:47:21 ******/
CREATE SCHEMA [Vinos]
GO
/****** Object:  Schema [Zapatazo]    Script Date: 31/10/2019 12:47:21 ******/
CREATE SCHEMA [Zapatazo]
GO
/****** Object:  Table [animeyt].[Animes]    Script Date: 31/10/2019 12:47:21 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [animeyt].[Animes](
	[IDDeAnime] [int] IDENTITY(1,1) NOT NULL,
	[NombreDeAnime] [varchar](70) NOT NULL,
	[SinopsisDeAnime] [text] NOT NULL,
	[NumeroDeEpisodios] [int] NOT NULL,
	[FechaDeEstreno] [date] NULL,
	[NombreDePrecuela] [varchar](70) NULL,
	[NombreDeSecuela] [varchar](70) NULL,
	[NombreDeAnimeTraducido] [varchar](70) NULL,
	[ImagenDeCapitulo] [text] NULL,
	[ImagenDeAnime] [text] NULL,
	[Importante] [bit] NULL,
	[Duracion] [int] NOT NULL,
	[IDDeTipo] [tinyint] NOT NULL,
	[IDDeEstado] [tinyint] NOT NULL,
 CONSTRAINT [PK_Animes] PRIMARY KEY CLUSTERED 
(
	[IDDeAnime] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [animeyt].[Capitulos]    Script Date: 31/10/2019 12:47:21 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [animeyt].[Capitulos](
	[IDDeCapitulo] [int] IDENTITY(1,1) NOT NULL,
	[NumeroDeCapitulo] [int] NOT NULL,
	[IDDeAnime] [int] NOT NULL,
 CONSTRAINT [PK_Capitulos] PRIMARY KEY CLUSTERED 
(
	[IDDeCapitulo] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [animeyt].[Cate_Animes]    Script Date: 31/10/2019 12:47:21 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [animeyt].[Cate_Animes](
	[IDDeAnime] [int] NOT NULL,
	[IDDeCategoria] [tinyint] NOT NULL,
 CONSTRAINT [PK_Cate_Animes] PRIMARY KEY CLUSTERED 
(
	[IDDeAnime] ASC,
	[IDDeCategoria] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [animeyt].[Categoria]    Script Date: 31/10/2019 12:47:21 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [animeyt].[Categoria](
	[IDDeCategoria] [tinyint] IDENTITY(1,1) NOT NULL,
	[NombreDeCategoria] [varchar](50) NOT NULL,
 CONSTRAINT [PK_Categoria] PRIMARY KEY CLUSTERED 
(
	[IDDeCategoria] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [animeyt].[Estado]    Script Date: 31/10/2019 12:47:21 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [animeyt].[Estado](
	[IDDeEstado] [tinyint] IDENTITY(1,1) NOT NULL,
	[NombreDeEstado] [varchar](50) NOT NULL,
 CONSTRAINT [PK_Estado] PRIMARY KEY CLUSTERED 
(
	[IDDeEstado] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [animeyt].[Tipo]    Script Date: 31/10/2019 12:47:21 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [animeyt].[Tipo](
	[IDDeTipo] [tinyint] IDENTITY(1,1) NOT NULL,
	[NombrDeTipo] [varchar](50) NOT NULL,
 CONSTRAINT [PK_Tipo] PRIMARY KEY CLUSTERED 
(
	[IDDeTipo] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [BlogHistoria].[Autores]    Script Date: 31/10/2019 12:47:21 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [BlogHistoria].[Autores](
	[IdAutor] [int] NOT NULL,
	[Nombre] [varchar](50) NOT NULL,
	[Apellidos] [varchar](100) NOT NULL,
	[IdUsuario] [int] NULL,
 CONSTRAINT [PK_Autores] PRIMARY KEY CLUSTERED 
(
	[IdAutor] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [BlogHistoria].[Categorias]    Script Date: 31/10/2019 12:47:21 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [BlogHistoria].[Categorias](
	[IdCategoria] [tinyint] NOT NULL,
	[Nombre] [varchar](25) NOT NULL,
	[Descripcion] [varchar](100) NULL,
 CONSTRAINT [PK_Categorias] PRIMARY KEY CLUSTERED 
(
	[IdCategoria] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [BlogHistoria].[Comentarios]    Script Date: 31/10/2019 12:47:21 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [BlogHistoria].[Comentarios](
	[IdComentario] [int] NOT NULL,
	[IdUsuario] [int] NOT NULL,
	[Contenido] [varchar](max) NOT NULL,
	[Fecha] [date] NOT NULL,
	[Hora] [time](7) NOT NULL,
 CONSTRAINT [PK_Comentarios] PRIMARY KEY CLUSTERED 
(
	[IdComentario] ASC,
	[IdUsuario] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [BlogHistoria].[Entradas]    Script Date: 31/10/2019 12:47:21 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [BlogHistoria].[Entradas](
	[IdEntrada] [int] NOT NULL,
	[Categoria] [tinyint] NULL,
	[Imagen] [varchar](400) NULL,
	[Titulo] [varchar](50) NULL,
	[Autor] [int] NULL,
	[Contenido] [varchar](max) NULL,
	[FechaPubli] [datetime] NULL,
 CONSTRAINT [PK_Entradas_IdEntrada] PRIMARY KEY CLUSTERED 
(
	[IdEntrada] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [BlogHistoria].[Usuarios]    Script Date: 31/10/2019 12:47:21 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [BlogHistoria].[Usuarios](
	[IdUsuario] [int] NOT NULL,
	[Nombre] [varchar](100) NOT NULL,
	[Correo] [varchar](150) NOT NULL,
	[Contrasena] [varchar](30) NOT NULL,
 CONSTRAINT [PK_Usuarios_1] PRIMARY KEY CLUSTERED 
(
	[IdUsuario] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [JKO].[Categoria]    Script Date: 31/10/2019 12:47:21 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [JKO].[Categoria](
	[IdCategoria] [varchar](1) NULL,
	[IdModalidad] [varchar](1) NULL,
	[IdLuchadores] [varchar](1) NULL,
	[IdPeso] [varchar](1) NULL
) ON [PRIMARY]
GO
/****** Object:  Table [JKO].[Luchadores]    Script Date: 31/10/2019 12:47:21 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [JKO].[Luchadores](
	[IdLuchadores] [varchar](1) NULL,
	[Nombre] [varchar](1) NULL,
	[IdModalidad] [varchar](1) NULL,
	[IdCategoria] [varchar](1) NULL,
	[IdVeladas] [varchar](1) NULL
) ON [PRIMARY]
GO
/****** Object:  Table [JKO].[Modalidad]    Script Date: 31/10/2019 12:47:21 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [JKO].[Modalidad](
	[IdModalidad] [varchar](1) NULL,
	[IdCategoria] [varchar](1) NULL,
	[IdLuchadores] [varchar](1) NULL
) ON [PRIMARY]
GO
/****** Object:  Table [JKO].[Usuarios]    Script Date: 31/10/2019 12:47:21 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [JKO].[Usuarios](
	[IdUsuario] [varchar](25) NOT NULL,
	[Password] [varchar](25) NULL,
	[Nombre] [varchar](25) NULL,
	[Apellido] [varchar](25) NULL,
	[Email] [varchar](50) NOT NULL
) ON [PRIMARY]
GO
/****** Object:  Table [JKO].[Veladas]    Script Date: 31/10/2019 12:47:21 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [JKO].[Veladas](
	[IdVeladas] [varchar](1) NULL,
	[IdModalidad] [varchar](1) NULL,
	[IdCategoria] [varchar](1) NULL,
	[IdLuchadores] [varchar](1) NULL
) ON [PRIMARY]
GO
/****** Object:  Table [mcu].[actors]    Script Date: 31/10/2019 12:47:21 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [mcu].[actors](
	[actor_id] [int] IDENTITY(1,1) NOT NULL,
	[name] [varchar](50) NOT NULL,
	[surname] [varchar](50) NOT NULL,
	[born_date] [date] NOT NULL,
	[born_place] [varchar](50) NOT NULL,
	[character] [varchar](50) NULL,
	[actor_image] [varchar](50) NULL,
 CONSTRAINT [PK_actors] PRIMARY KEY CLUSTERED 
(
	[actor_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [mcu].[actors_films]    Script Date: 31/10/2019 12:47:21 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [mcu].[actors_films](
	[film_id] [int] NOT NULL,
	[actor_id] [int] NOT NULL
) ON [PRIMARY]
GO
/****** Object:  Table [mcu].[actors_series]    Script Date: 31/10/2019 12:47:21 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [mcu].[actors_series](
	[series_id] [int] NOT NULL,
	[actors_id] [int] NOT NULL
) ON [PRIMARY]
GO
/****** Object:  Table [mcu].[directors]    Script Date: 31/10/2019 12:47:21 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [mcu].[directors](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[name] [varchar](50) NOT NULL,
 CONSTRAINT [PK_directors] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [mcu].[film_comments]    Script Date: 31/10/2019 12:47:21 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [mcu].[film_comments](
	[user_id] [int] NOT NULL,
	[film_id] [int] NOT NULL,
	[comment] [varchar](50) NOT NULL,
	[comment_date] [date] NOT NULL
) ON [PRIMARY]
GO
/****** Object:  Table [mcu].[film_valorations]    Script Date: 31/10/2019 12:47:21 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [mcu].[film_valorations](
	[user_id] [int] NOT NULL,
	[film_id] [int] NOT NULL,
	[amount] [int] NOT NULL,
 CONSTRAINT [PK_film_valorations] PRIMARY KEY CLUSTERED 
(
	[user_id] ASC,
	[film_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [mcu].[films]    Script Date: 31/10/2019 12:47:21 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [mcu].[films](
	[film_id] [int] IDENTITY(1,1) NOT NULL,
	[title] [varchar](50) NOT NULL,
	[title_original] [varchar](50) NOT NULL,
	[release_data] [date] NOT NULL,
	[duration] [int] NOT NULL,
	[director_id] [int] NOT NULL,
	[trailer] [varchar](50) NULL,
	[film_image] [varchar](50) NOT NULL,
	[money_earned] [int] NULL,
	[mcu_order] [int] NOT NULL,
 CONSTRAINT [PK_films] PRIMARY KEY CLUSTERED 
(
	[film_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [mcu].[series]    Script Date: 31/10/2019 12:47:21 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [mcu].[series](
	[series_id] [int] IDENTITY(1,1) NOT NULL,
	[title] [varchar](50) NULL,
	[title_original] [varchar](50) NULL,
	[director_id] [int] NULL,
	[release_data] [date] NULL,
	[seasons] [int] NULL,
	[chapter_count] [int] NULL,
	[average_duration] [decimal](18, 0) NULL,
	[trailer] [varchar](50) NULL,
	[series_image] [varchar](50) NULL,
 CONSTRAINT [PK_series] PRIMARY KEY CLUSTERED 
(
	[series_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [mcu].[series_comments]    Script Date: 31/10/2019 12:47:21 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [mcu].[series_comments](
	[user_id] [int] NOT NULL,
	[series_id] [int] NOT NULL,
	[comment] [varchar](50) NOT NULL,
	[comment_date] [date] NOT NULL
) ON [PRIMARY]
GO
/****** Object:  Table [mcu].[series_valorations]    Script Date: 31/10/2019 12:47:21 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [mcu].[series_valorations](
	[user_id] [int] NOT NULL,
	[series_id] [int] NOT NULL,
	[amount] [int] NOT NULL
) ON [PRIMARY]
GO
/****** Object:  Table [mcu].[users]    Script Date: 31/10/2019 12:47:21 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [mcu].[users](
	[user_id] [int] IDENTITY(1,1) NOT NULL,
	[username] [varchar](50) NOT NULL,
	[email] [varchar](50) NOT NULL,
	[password] [varchar](100) NOT NULL,
	[salt] [varchar](100) NOT NULL,
	[profile_image] [image] NULL
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [Minecraft].[Biomes]    Script Date: 31/10/2019 12:47:21 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [Minecraft].[Biomes](
	[biome_id] [int] NOT NULL,
	[biome_name] [varchar](25) NULL,
	[type] [varchar](15) NULL,
	[desc] [varchar](250) NULL,
 CONSTRAINT [PK_Biomes] PRIMARY KEY CLUSTERED 
(
	[biome_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [Minecraft].[Dimensions]    Script Date: 31/10/2019 12:47:21 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [Minecraft].[Dimensions](
	[dimension_id] [int] NOT NULL,
	[dimension_name] [varchar](25) NULL,
	[desc] [varchar](300) NULL,
 CONSTRAINT [PK_Dimensions] PRIMARY KEY CLUSTERED 
(
	[dimension_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [Minecraft].[Easter_Eggs]    Script Date: 31/10/2019 12:47:21 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [Minecraft].[Easter_Eggs](
	[easter_id] [int] NOT NULL,
	[easter_name] [varchar](50) NULL,
	[easter_desc] [varchar](300) NULL,
	[easter_date] [date] NULL,
 CONSTRAINT [PK_Easter_Eggs] PRIMARY KEY CLUSTERED 
(
	[easter_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [Minecraft].[Mobs]    Script Date: 31/10/2019 12:47:21 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [Minecraft].[Mobs](
	[mob_id] [int] NOT NULL,
	[mob_name] [varchar](25) NULL,
	[biome_id] [int] NOT NULL,
	[tipo] [varchar](10) NULL,
	[healthpoints] [int] NULL,
	[damage] [int] NULL,
	[trigger_vision] [int] NULL,
	[trigger_desc] [varchar](250) NULL,
	[drop] [varchar](250) NULL,
	[raredrop] [varchar](250) NULL,
	[image] [varchar](250) NULL,
	[exp] [int] NULL,
	[tool_id] [int] NULL,
 CONSTRAINT [PK_Mobs] PRIMARY KEY CLUSTERED 
(
	[mob_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [Minecraft].[Structures]    Script Date: 31/10/2019 12:47:21 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [Minecraft].[Structures](
	[struct_id] [int] NOT NULL,
	[struct_name] [varchar](25) NULL,
	[biome_id] [int] NULL,
	[struct_desc] [varchar](150) NULL,
	[size] [int] NULL,
	[tool_id] [int] NULL,
	[dimension_id] [int] NULL,
 CONSTRAINT [PK_Structures] PRIMARY KEY CLUSTERED 
(
	[struct_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [Minecraft].[Tools]    Script Date: 31/10/2019 12:47:21 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [Minecraft].[Tools](
	[tool_id] [int] NOT NULL,
	[tool_name] [varchar](25) NULL,
	[resources] [varchar](25) NULL,
	[durability] [int] NULL,
	[damage_attack] [int] NULL,
	[armor] [float] NULL,
 CONSTRAINT [PK_Tools] PRIMARY KEY CLUSTERED 
(
	[tool_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [Minecraft].[Usuarios]    Script Date: 31/10/2019 12:47:21 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [Minecraft].[Usuarios](
	[username] [varchar](50) NOT NULL,
	[password] [varchar](50) NOT NULL,
	[name] [varchar](50) NOT NULL,
	[last_name] [varchar](50) NULL,
	[birthdate] [date] NULL,
	[user_id] [int] IDENTITY(1,1) NOT NULL,
	[email] [varchar](50) NOT NULL,
 CONSTRAINT [PK_Usuarios_2] PRIMARY KEY CLUSTERED 
(
	[user_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [Moto].[Comentaries]    Script Date: 31/10/2019 12:47:21 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [Moto].[Comentaries](
	[CommentaryID] [int] NOT NULL,
	[UserID] [int] NULL,
	[Text] [varchar](50) NULL,
	[likes] [float] NULL,
	[MeetingID] [int] NULL,
 CONSTRAINT [PK_Comentaries] PRIMARY KEY CLUSTERED 
(
	[CommentaryID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [Moto].[Meetings]    Script Date: 31/10/2019 12:47:21 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [Moto].[Meetings](
	[MeetingID] [int] IDENTITY(1,1) NOT NULL,
	[meeting_name] [varchar](50) NULL,
	[Desde] [varchar](50) NULL,
	[Hasta] [varchar](50) NULL,
	[Distancia] [float] NULL,
	[UserID] [int] NULL,
	[Fecha] [date] NULL,
 CONSTRAINT [PK_Meetings] PRIMARY KEY CLUSTERED 
(
	[MeetingID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [Moto].[Usuarios]    Script Date: 31/10/2019 12:47:21 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [Moto].[Usuarios](
	[UserID] [int] IDENTITY(1,1) NOT NULL,
	[Nombre] [varchar](50) NULL,
	[Apellido] [varchar](50) NULL,
	[Nick] [varchar](50) NULL,
	[Pass] [varchar](50) NULL,
	[Likes] [float] NULL,
 CONSTRAINT [PK_Usuarios] PRIMARY KEY CLUSTERED 
(
	[UserID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [SecondChance].[Categories]    Script Date: 31/10/2019 12:47:21 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [SecondChance].[Categories](
	[CategoryID] [int] NULL,
	[CategoryName] [varchar](50) NULL,
	[CategoryDescription] [varchar](255) NULL
) ON [PRIMARY]
GO
/****** Object:  Table [SecondChance].[Order_details]    Script Date: 31/10/2019 12:47:21 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [SecondChance].[Order_details](
	[OrderID] [int] NULL,
	[ProductID] [int] NULL,
	[UnitPrice] [money] NULL,
	[Quantity] [int] NULL,
	[Discount] [decimal](18, 0) NULL
) ON [PRIMARY]
GO
/****** Object:  Table [SecondChance].[Products]    Script Date: 31/10/2019 12:47:21 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [SecondChance].[Products](
	[ProductID] [int] NOT NULL,
	[CategoryID] [int] NULL,
	[ProductName] [varchar](50) NULL,
	[PublicationDate] [date] NULL,
	[UnitPrice] [money] NULL,
	[ProductCondition] [varchar](20) NULL,
	[ProductOrigin] [varchar](20) NULL
) ON [PRIMARY]
GO
/****** Object:  Table [SecondChance].[ShoppingCart]    Script Date: 31/10/2019 12:47:21 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [SecondChance].[ShoppingCart](
	[OrderID] [int] NOT NULL,
	[UserID] [int] NOT NULL,
	[OrderDate] [date] NOT NULL,
	[Ship_adress] [varchar](50) NOT NULL,
 CONSTRAINT [PK_SecondChance.ShoppingCart] PRIMARY KEY CLUSTERED 
(
	[OrderID] ASC,
	[UserID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [SecondChance].[Users]    Script Date: 31/10/2019 12:47:21 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [SecondChance].[Users](
	[UserID] [int] IDENTITY(1,1) NOT NULL,
	[First_Name] [varchar](20) NOT NULL,
	[Last_Name] [varchar](20) NOT NULL,
	[Birth_Date] [date] NOT NULL,
	[Phone_Number] [varchar](10) NOT NULL,
	[Email] [varchar](40) NOT NULL,
	[Country] [varchar](50) NULL,
	[Adress] [varchar](50) NOT NULL,
	[Password] [varchar](20) NOT NULL,
	[Username] [varchar](15) NOT NULL,
 CONSTRAINT [PK_SecondChance.Users] PRIMARY KEY CLUSTERED 
(
	[UserID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [Vinos].[Categories]    Script Date: 31/10/2019 12:47:21 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [Vinos].[Categories](
	[Category_Id] [int] NOT NULL,
	[Category_Name] [nchar](50) NULL,
 CONSTRAINT [PK_Categories] PRIMARY KEY CLUSTERED 
(
	[Category_Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [Vinos].[Order_Details]    Script Date: 31/10/2019 12:47:21 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [Vinos].[Order_Details](
	[Order_Id] [int] NOT NULL,
	[Wine_Id] [int] NOT NULL,
	[Quantity] [int] NULL,
 CONSTRAINT [PK_Order_Details] PRIMARY KEY CLUSTERED 
(
	[Order_Id] ASC,
	[Wine_Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [Vinos].[Orders]    Script Date: 31/10/2019 12:47:21 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [Vinos].[Orders](
	[Order_Id] [int] NOT NULL,
	[User_Id] [int] NULL,
	[Order_Date] [date] NULL,
 CONSTRAINT [PK_Orders] PRIMARY KEY CLUSTERED 
(
	[Order_Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [Vinos].[Users]    Script Date: 31/10/2019 12:47:21 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [Vinos].[Users](
	[User_Id] [int] IDENTITY(1,1) NOT NULL,
	[Username] [nchar](50) NOT NULL,
	[Password] [nchar](50) NULL,
	[Email] [nchar](50) NOT NULL,
	[Phone_Number] [nchar](9) NOT NULL,
	[Card_Number] [nchar](20) NOT NULL,
	[Card_CVV] [nchar](10) NULL,
	[Address] [nchar](150) NULL,
	[City] [nchar](30) NULL,
	[Country] [nchar](30) NULL,
 CONSTRAINT [PK_Users] PRIMARY KEY CLUSTERED 
(
	[User_Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [Vinos].[Wineries]    Script Date: 31/10/2019 12:47:21 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [Vinos].[Wineries](
	[Winery_Id] [int] NOT NULL,
	[Winery_Name] [nchar](30) NULL,
	[City] [nchar](30) NULL,
	[Country] [nchar](30) NULL,
 CONSTRAINT [PK_Wineries] PRIMARY KEY CLUSTERED 
(
	[Winery_Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [Vinos].[Wines]    Script Date: 31/10/2019 12:47:21 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [Vinos].[Wines](
	[Wine_Id] [int] NOT NULL,
	[Wine_Name] [nchar](50) NULL,
	[Category_Id] [int] NULL,
	[Winery_Id] [int] NULL,
	[Wine_Description] [nchar](100) NULL,
	[Alcohol_Percentage] [int] NULL,
	[Production_Area] [nchar](50) NULL,
	[Units_In_Stock] [int] NULL,
	[Unit_Price] [money] NULL,
	[Offer_Percentage] [int] NULL,
 CONSTRAINT [PK_Wines] PRIMARY KEY CLUSTERED 
(
	[Wine_Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [Zapatazo].[Almacen]    Script Date: 31/10/2019 12:47:21 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [Zapatazo].[Almacen](
	[ID_Almacen] [int] NOT NULL,
	[Descripcion] [varchar](50) NOT NULL,
	[Localizacion] [varchar](50) NOT NULL,
 CONSTRAINT [PK_Almacen] PRIMARY KEY CLUSTERED 
(
	[ID_Almacen] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [Zapatazo].[Categorias]    Script Date: 31/10/2019 12:47:21 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [Zapatazo].[Categorias](
	[CodCategoria] [char](3) NOT NULL,
	[Descripcion] [nvarchar](10) NULL,
 CONSTRAINT [PK_Order] PRIMARY KEY CLUSTERED 
(
	[CodCategoria] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [Zapatazo].[Cliente]    Script Date: 31/10/2019 12:47:21 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [Zapatazo].[Cliente](
	[IDCliente] [int] NOT NULL,
	[Nombre] [varchar](50) NULL,
	[Apellido] [varchar](50) NULL,
	[UserName] [varchar](50) NOT NULL,
	[Password] [varchar](16) NOT NULL,
	[email] [varchar](50) NULL,
	[Saldo] [money] NULL,
	[telefono] [char](9) NULL,
	[Genero] [char](1) NULL,
 CONSTRAINT [PK_Cliente] PRIMARY KEY CLUSTERED 
(
	[IDCliente] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [Zapatazo].[Marca]    Script Date: 31/10/2019 12:47:21 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [Zapatazo].[Marca](
	[ID_Marca] [int] NOT NULL,
	[Nombre] [varchar](50) NOT NULL,
 CONSTRAINT [PK_Product] PRIMARY KEY CLUSTERED 
(
	[ID_Marca] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [Zapatazo].[Stock]    Script Date: 31/10/2019 12:47:21 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [Zapatazo].[Stock](
	[ID_Almacen] [int] NOT NULL,
	[CodZapato] [int] NOT NULL,
	[ID_Talla] [int] NOT NULL,
	[Stock] [int] NOT NULL,
 CONSTRAINT [PK_Stock] PRIMARY KEY CLUSTERED 
(
	[ID_Almacen] ASC,
	[CodZapato] ASC,
	[ID_Talla] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [Zapatazo].[Tallaje]    Script Date: 31/10/2019 12:47:21 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [Zapatazo].[Tallaje](
	[ID_Talla] [int] IDENTITY(1,1) NOT NULL,
	[Tallaje] [decimal](5, 2) NOT NULL,
 CONSTRAINT [PK_Supplier] PRIMARY KEY CLUSTERED 
(
	[ID_Talla] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [Zapatazo].[Zapatos]    Script Date: 31/10/2019 12:47:21 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [Zapatazo].[Zapatos](
	[CodZapato] [int] IDENTITY(1,1) NOT NULL,
	[CodCategoria] [char](3) NULL,
	[ID_Marca] [int] NULL,
	[Genero] [char](1) NULL,
	[Descripcion] [varchar](50) NULL,
	[Precio] [money] NULL,
 CONSTRAINT [PK_Zapatos] PRIMARY KEY CLUSTERED 
(
	[CodZapato] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET IDENTITY_INSERT [animeyt].[Animes] ON 

INSERT [animeyt].[Animes] ([IDDeAnime], [NombreDeAnime], [SinopsisDeAnime], [NumeroDeEpisodios], [FechaDeEstreno], [NombreDePrecuela], [NombreDeSecuela], [NombreDeAnimeTraducido], [ImagenDeCapitulo], [ImagenDeAnime], [Importante], [Duracion], [IDDeTipo], [IDDeEstado]) VALUES (1, N'One Piece', N'Una historia épica de piratas, donde narra la historia de "Monkey D. Luffy" quien cuado tenia 7 años, comió accidentalmente una "Akuma no mi"(Futa del diablo) la cual le dio poderes de goma. Por otra parte "Gol D. Roger" conocido como "El rey de los Piratas" quien fuera ejecutado por la Marine, habló antes de morir, acerca de su famoso tesoro "One Piece" escondido en la "Gran line". Esta noticia desato la gran era de la piratas lanzando a incontables piratas a ese lugar, en busca de "One Piece" el tesoro perdido. Diez años después, Luffy inspirado en "Gol D. Roger" y un pirata de nombre Akagami no Shanks (Shanks el pelirrojo) se convierte en pirata deseando ser el próximo "Rey de los Piratas" y zarpar para conocer amigos y tener aventuras con ellos, teniendo como meta encontrar el "One Piece".', 907, CAST(N'1997-10-20' AS Date), NULL, NULL, NULL, N'https://freakelitex.com/wp-content/uploads/2017/12/One-piece.png', N'https://www.google.com/url?sa=i&source=images&cd=&ved=2ahUKEwjX9MrJwr7lAhVCxhoKHd5LDsMQjRx6BAgBEAQ&url=https%3A%2F%2Fwww.t13.cl%2Fnoticia%2Fmundo%2FJapon-cambiara-el-nombre-de-una-isla-en-honor-a-personaje-de-One-Piece&psig=AOvVaw3butI2hMri6VCxLPJiY2xH&ust=1572337169497941', NULL, 24, 1, 1)
INSERT [animeyt].[Animes] ([IDDeAnime], [NombreDeAnime], [SinopsisDeAnime], [NumeroDeEpisodios], [FechaDeEstreno], [NombreDePrecuela], [NombreDeSecuela], [NombreDeAnimeTraducido], [ImagenDeCapitulo], [ImagenDeAnime], [Importante], [Duracion], [IDDeTipo], [IDDeEstado]) VALUES (2, N'Naruto', N'Naruto, un aprendiz de ninja de la Aldea Oculta de Konoha es un chico travieso que desea llegar a ser el Hokage de la aldea para demostrar a todos lo que vale. Lo que descubre al inicio de la historia es que la gente le mira con desconfianza porque en su interior está encerrado el demonio Kyubi que una vez destruyó la aldea, y que el anterior líder de la misma tuvo que encerrar en su cuerpo siendo aún muy pequeño, a coste de su vida. Aunque sus compañeros no saben esto, tampoco le aprecian porque es mal estudiante y siempre está haciendo bromas. Sin embargo, la forma de actuar y la determinación de Naruto demuestran a los demás que puede llegar muy lejos, y el recelo de los otros chicos se va disipando. Naruto y sus compañeros Sakura y Sasuke, junto a su maestro Kakashi tendrán que enfrentarse a una serie de combates y misiones a lo largo de la historia que les permitirán mejorar y crecer. Naruto se vera enfrentado a sus principales enemigos Akatsuki, Itachi y Kisame.', 220, CAST(N'2002-10-03' AS Date), NULL, N'Naruto Shippuden', NULL, N'https://hips.hearstapps.com/hmg-prod.s3.amazonaws.com/images/naruto-1562922306.jpeg?resize=480:*', N'https://www.google.com/url?sa=i&source=images&cd=&cad=rja&uact=8&ved=2ahUKEwib-7Hewr7lAhVGzoUKHVo-DO8QjRx6BAgBEAQ&url=https%3A%2F%2Findiehoy.com%2Fseries%2Fadidas-presentara-una-linea-de-zapatillas-inspirada-en-naruto%2F&psig=AOvVaw1qJ9HS49AC-QWzyWf4Gvs2&ust=1572337218231316', NULL, 24, 1, 2)
INSERT [animeyt].[Animes] ([IDDeAnime], [NombreDeAnime], [SinopsisDeAnime], [NumeroDeEpisodios], [FechaDeEstreno], [NombreDePrecuela], [NombreDeSecuela], [NombreDeAnimeTraducido], [ImagenDeCapitulo], [ImagenDeAnime], [Importante], [Duracion], [IDDeTipo], [IDDeEstado]) VALUES (3, N'Boku no Hero Academia 2nd Season', N'Segunda temporada de Boku no Hero Academia.', 25, CAST(N'2017-04-01' AS Date), N'Boku no Hero', N'Boku no Hero 3rd Season', N'My Hero Academia Season 2', NULL, N'C:\Users\julenrico\Desktop\Imágenes Página Anime\Boku no Hero 2.jpg', NULL, 24, 1, 2)
INSERT [animeyt].[Animes] ([IDDeAnime], [NombreDeAnime], [SinopsisDeAnime], [NumeroDeEpisodios], [FechaDeEstreno], [NombreDePrecuela], [NombreDeSecuela], [NombreDeAnimeTraducido], [ImagenDeCapitulo], [ImagenDeAnime], [Importante], [Duracion], [IDDeTipo], [IDDeEstado]) VALUES (4, N'Boku Dake ga Inai Machi', N'"Boku dake ga Inai Machi" es una serie de ciencia ficción que cuenta la historia de Satory Fujinuma, un autor de manga sin mucho éxito que sufre de un peculiar fenómeno conocido como Resucitación en el cual se transporta a la fuerza atrás en el tiempo hasta el momento anterior de que ocurra algo que supone un peligro para una vida. Satoru no tarda en descubrir que el fenómeno persiste hasta que la causa de la amenaza desaparece.', 12, CAST(N'2016-01-08' AS Date), NULL, NULL, N'Erased', NULL, N'C:\Users\julenrico\Desktop\Erased.jpg', NULL, 24, 1, 2)
INSERT [animeyt].[Animes] ([IDDeAnime], [NombreDeAnime], [SinopsisDeAnime], [NumeroDeEpisodios], [FechaDeEstreno], [NombreDePrecuela], [NombreDeSecuela], [NombreDeAnimeTraducido], [ImagenDeCapitulo], [ImagenDeAnime], [Importante], [Duracion], [IDDeTipo], [IDDeEstado]) VALUES (5, N'Kimi no Na wa', N'El joven Taki vive en Tokio: la joven Mitsuha, en un pequeño pueblo en las montañas. Durante el sueño, los cuerpos de ambos se intercambian. Recluidos en un cuerpo que les resulta extraño, comienzan a comunicarse.', 1, CAST(N'2016-08-26' AS Date), NULL, NULL, N'Your Name', NULL, N'C:\Users\julenrico\Desktop\KimiNoNaWa.jpg', NULL, 106, 2, 1)
SET IDENTITY_INSERT [animeyt].[Animes] OFF
SET IDENTITY_INSERT [animeyt].[Capitulos] ON 

INSERT [animeyt].[Capitulos] ([IDDeCapitulo], [NumeroDeCapitulo], [IDDeAnime]) VALUES (1, 23, 1)
INSERT [animeyt].[Capitulos] ([IDDeCapitulo], [NumeroDeCapitulo], [IDDeAnime]) VALUES (2, 12, 2)
INSERT [animeyt].[Capitulos] ([IDDeCapitulo], [NumeroDeCapitulo], [IDDeAnime]) VALUES (3, 24, 1)
INSERT [animeyt].[Capitulos] ([IDDeCapitulo], [NumeroDeCapitulo], [IDDeAnime]) VALUES (4, 13, 2)
INSERT [animeyt].[Capitulos] ([IDDeCapitulo], [NumeroDeCapitulo], [IDDeAnime]) VALUES (6, 154, 2)
INSERT [animeyt].[Capitulos] ([IDDeCapitulo], [NumeroDeCapitulo], [IDDeAnime]) VALUES (7, 1, 2)
INSERT [animeyt].[Capitulos] ([IDDeCapitulo], [NumeroDeCapitulo], [IDDeAnime]) VALUES (8, 31, 1)
INSERT [animeyt].[Capitulos] ([IDDeCapitulo], [NumeroDeCapitulo], [IDDeAnime]) VALUES (9, 2, 2)
INSERT [animeyt].[Capitulos] ([IDDeCapitulo], [NumeroDeCapitulo], [IDDeAnime]) VALUES (10, 5, 2)
INSERT [animeyt].[Capitulos] ([IDDeCapitulo], [NumeroDeCapitulo], [IDDeAnime]) VALUES (12, 4, 1)
INSERT [animeyt].[Capitulos] ([IDDeCapitulo], [NumeroDeCapitulo], [IDDeAnime]) VALUES (15, 7, 1)
INSERT [animeyt].[Capitulos] ([IDDeCapitulo], [NumeroDeCapitulo], [IDDeAnime]) VALUES (16, 89, 2)
INSERT [animeyt].[Capitulos] ([IDDeCapitulo], [NumeroDeCapitulo], [IDDeAnime]) VALUES (17, 98, 1)
INSERT [animeyt].[Capitulos] ([IDDeCapitulo], [NumeroDeCapitulo], [IDDeAnime]) VALUES (18, 97, 2)
INSERT [animeyt].[Capitulos] ([IDDeCapitulo], [NumeroDeCapitulo], [IDDeAnime]) VALUES (19, 97, 1)
INSERT [animeyt].[Capitulos] ([IDDeCapitulo], [NumeroDeCapitulo], [IDDeAnime]) VALUES (20, 67, 1)
INSERT [animeyt].[Capitulos] ([IDDeCapitulo], [NumeroDeCapitulo], [IDDeAnime]) VALUES (21, 134, 1)
INSERT [animeyt].[Capitulos] ([IDDeCapitulo], [NumeroDeCapitulo], [IDDeAnime]) VALUES (22, 899, 1)
INSERT [animeyt].[Capitulos] ([IDDeCapitulo], [NumeroDeCapitulo], [IDDeAnime]) VALUES (23, 1341, 1)
INSERT [animeyt].[Capitulos] ([IDDeCapitulo], [NumeroDeCapitulo], [IDDeAnime]) VALUES (24, 213, 2)
SET IDENTITY_INSERT [animeyt].[Capitulos] OFF
INSERT [animeyt].[Cate_Animes] ([IDDeAnime], [IDDeCategoria]) VALUES (1, 1)
INSERT [animeyt].[Cate_Animes] ([IDDeAnime], [IDDeCategoria]) VALUES (1, 3)
INSERT [animeyt].[Cate_Animes] ([IDDeAnime], [IDDeCategoria]) VALUES (1, 6)
INSERT [animeyt].[Cate_Animes] ([IDDeAnime], [IDDeCategoria]) VALUES (1, 10)
INSERT [animeyt].[Cate_Animes] ([IDDeAnime], [IDDeCategoria]) VALUES (1, 14)
INSERT [animeyt].[Cate_Animes] ([IDDeAnime], [IDDeCategoria]) VALUES (1, 33)
INSERT [animeyt].[Cate_Animes] ([IDDeAnime], [IDDeCategoria]) VALUES (1, 35)
INSERT [animeyt].[Cate_Animes] ([IDDeAnime], [IDDeCategoria]) VALUES (2, 1)
INSERT [animeyt].[Cate_Animes] ([IDDeAnime], [IDDeCategoria]) VALUES (2, 2)
INSERT [animeyt].[Cate_Animes] ([IDDeAnime], [IDDeCategoria]) VALUES (2, 6)
INSERT [animeyt].[Cate_Animes] ([IDDeAnime], [IDDeCategoria]) VALUES (2, 33)
INSERT [animeyt].[Cate_Animes] ([IDDeAnime], [IDDeCategoria]) VALUES (2, 35)
INSERT [animeyt].[Cate_Animes] ([IDDeAnime], [IDDeCategoria]) VALUES (3, 1)
INSERT [animeyt].[Cate_Animes] ([IDDeAnime], [IDDeCategoria]) VALUES (3, 3)
INSERT [animeyt].[Cate_Animes] ([IDDeAnime], [IDDeCategoria]) VALUES (3, 12)
INSERT [animeyt].[Cate_Animes] ([IDDeAnime], [IDDeCategoria]) VALUES (3, 33)
INSERT [animeyt].[Cate_Animes] ([IDDeAnime], [IDDeCategoria]) VALUES (3, 35)
INSERT [animeyt].[Cate_Animes] ([IDDeAnime], [IDDeCategoria]) VALUES (4, 23)
INSERT [animeyt].[Cate_Animes] ([IDDeAnime], [IDDeCategoria]) VALUES (4, 27)
INSERT [animeyt].[Cate_Animes] ([IDDeAnime], [IDDeCategoria]) VALUES (4, 31)
INSERT [animeyt].[Cate_Animes] ([IDDeAnime], [IDDeCategoria]) VALUES (4, 34)
INSERT [animeyt].[Cate_Animes] ([IDDeAnime], [IDDeCategoria]) VALUES (5, 10)
INSERT [animeyt].[Cate_Animes] ([IDDeAnime], [IDDeCategoria]) VALUES (5, 12)
INSERT [animeyt].[Cate_Animes] ([IDDeAnime], [IDDeCategoria]) VALUES (5, 29)
INSERT [animeyt].[Cate_Animes] ([IDDeAnime], [IDDeCategoria]) VALUES (5, 34)
SET IDENTITY_INSERT [animeyt].[Categoria] ON 

INSERT [animeyt].[Categoria] ([IDDeCategoria], [NombreDeCategoria]) VALUES (1, N'Acción')
INSERT [animeyt].[Categoria] ([IDDeCategoria], [NombreDeCategoria]) VALUES (2, N'Artes Marciales')
INSERT [animeyt].[Categoria] ([IDDeCategoria], [NombreDeCategoria]) VALUES (3, N'Aventuras')
INSERT [animeyt].[Categoria] ([IDDeCategoria], [NombreDeCategoria]) VALUES (4, N'Carreras')
INSERT [animeyt].[Categoria] ([IDDeCategoria], [NombreDeCategoria]) VALUES (5, N'Ciencia Ficción')
INSERT [animeyt].[Categoria] ([IDDeCategoria], [NombreDeCategoria]) VALUES (6, N'Comedia')
INSERT [animeyt].[Categoria] ([IDDeCategoria], [NombreDeCategoria]) VALUES (7, N'Demencia')
INSERT [animeyt].[Categoria] ([IDDeCategoria], [NombreDeCategoria]) VALUES (8, N'Demonios')
INSERT [animeyt].[Categoria] ([IDDeCategoria], [NombreDeCategoria]) VALUES (9, N'Deportes')
INSERT [animeyt].[Categoria] ([IDDeCategoria], [NombreDeCategoria]) VALUES (10, N'Drama')
INSERT [animeyt].[Categoria] ([IDDeCategoria], [NombreDeCategoria]) VALUES (11, N'Ecchi')
INSERT [animeyt].[Categoria] ([IDDeCategoria], [NombreDeCategoria]) VALUES (12, N'Escolares')
INSERT [animeyt].[Categoria] ([IDDeCategoria], [NombreDeCategoria]) VALUES (13, N'Espacial')
INSERT [animeyt].[Categoria] ([IDDeCategoria], [NombreDeCategoria]) VALUES (14, N'Fantasía')
INSERT [animeyt].[Categoria] ([IDDeCategoria], [NombreDeCategoria]) VALUES (15, N'Harem')
INSERT [animeyt].[Categoria] ([IDDeCategoria], [NombreDeCategoria]) VALUES (16, N'Histórico')
INSERT [animeyt].[Categoria] ([IDDeCategoria], [NombreDeCategoria]) VALUES (17, N'Infantil')
INSERT [animeyt].[Categoria] ([IDDeCategoria], [NombreDeCategoria]) VALUES (18, N'Josei')
INSERT [animeyt].[Categoria] ([IDDeCategoria], [NombreDeCategoria]) VALUES (19, N'Juegos')
INSERT [animeyt].[Categoria] ([IDDeCategoria], [NombreDeCategoria]) VALUES (20, N'Magia')
INSERT [animeyt].[Categoria] ([IDDeCategoria], [NombreDeCategoria]) VALUES (21, N'Mecha')
INSERT [animeyt].[Categoria] ([IDDeCategoria], [NombreDeCategoria]) VALUES (22, N'Militar')
INSERT [animeyt].[Categoria] ([IDDeCategoria], [NombreDeCategoria]) VALUES (23, N'Misterio')
INSERT [animeyt].[Categoria] ([IDDeCategoria], [NombreDeCategoria]) VALUES (24, N'Música')
INSERT [animeyt].[Categoria] ([IDDeCategoria], [NombreDeCategoria]) VALUES (25, N'Parodia')
INSERT [animeyt].[Categoria] ([IDDeCategoria], [NombreDeCategoria]) VALUES (26, N'Policía')
INSERT [animeyt].[Categoria] ([IDDeCategoria], [NombreDeCategoria]) VALUES (27, N'Psicológico')
INSERT [animeyt].[Categoria] ([IDDeCategoria], [NombreDeCategoria]) VALUES (28, N'Recuerdos de la vida')
INSERT [animeyt].[Categoria] ([IDDeCategoria], [NombreDeCategoria]) VALUES (29, N'Romance')
INSERT [animeyt].[Categoria] ([IDDeCategoria], [NombreDeCategoria]) VALUES (30, N'Samurai')
INSERT [animeyt].[Categoria] ([IDDeCategoria], [NombreDeCategoria]) VALUES (31, N'Seinen')
INSERT [animeyt].[Categoria] ([IDDeCategoria], [NombreDeCategoria]) VALUES (32, N'Shoujo')
INSERT [animeyt].[Categoria] ([IDDeCategoria], [NombreDeCategoria]) VALUES (33, N'Shounen')
INSERT [animeyt].[Categoria] ([IDDeCategoria], [NombreDeCategoria]) VALUES (34, N'Sobrenatural')
INSERT [animeyt].[Categoria] ([IDDeCategoria], [NombreDeCategoria]) VALUES (35, N'Superpoderes')
INSERT [animeyt].[Categoria] ([IDDeCategoria], [NombreDeCategoria]) VALUES (36, N'Suspense')
INSERT [animeyt].[Categoria] ([IDDeCategoria], [NombreDeCategoria]) VALUES (37, N'Terror')
INSERT [animeyt].[Categoria] ([IDDeCategoria], [NombreDeCategoria]) VALUES (38, N'Vampiros')
INSERT [animeyt].[Categoria] ([IDDeCategoria], [NombreDeCategoria]) VALUES (39, N'Yaoi')
INSERT [animeyt].[Categoria] ([IDDeCategoria], [NombreDeCategoria]) VALUES (40, N'Yuri')
SET IDENTITY_INSERT [animeyt].[Categoria] OFF
SET IDENTITY_INSERT [animeyt].[Estado] ON 

INSERT [animeyt].[Estado] ([IDDeEstado], [NombreDeEstado]) VALUES (1, N'En Emisión')
INSERT [animeyt].[Estado] ([IDDeEstado], [NombreDeEstado]) VALUES (2, N'Finalizado')
INSERT [animeyt].[Estado] ([IDDeEstado], [NombreDeEstado]) VALUES (3, N'Próximamente')
SET IDENTITY_INSERT [animeyt].[Estado] OFF
SET IDENTITY_INSERT [animeyt].[Tipo] ON 

INSERT [animeyt].[Tipo] ([IDDeTipo], [NombrDeTipo]) VALUES (1, N'Serie')
INSERT [animeyt].[Tipo] ([IDDeTipo], [NombrDeTipo]) VALUES (2, N'Película')
INSERT [animeyt].[Tipo] ([IDDeTipo], [NombrDeTipo]) VALUES (3, N'OVA')
INSERT [animeyt].[Tipo] ([IDDeTipo], [NombrDeTipo]) VALUES (4, N'Especial')
SET IDENTITY_INSERT [animeyt].[Tipo] OFF
INSERT [BlogHistoria].[Autores] ([IdAutor], [Nombre], [Apellidos], [IdUsuario]) VALUES (1, N'Gandalf', N'El Mago', 1)
INSERT [BlogHistoria].[Autores] ([IdAutor], [Nombre], [Apellidos], [IdUsuario]) VALUES (2, N'Aragorn', N'Montaraz', 3)
INSERT [BlogHistoria].[Autores] ([IdAutor], [Nombre], [Apellidos], [IdUsuario]) VALUES (3, N'Frodo', N'Bolson', 2)
INSERT [BlogHistoria].[Autores] ([IdAutor], [Nombre], [Apellidos], [IdUsuario]) VALUES (4, N'Gimli', N'Enano', 4)
INSERT [BlogHistoria].[Categorias] ([IdCategoria], [Nombre], [Descripcion]) VALUES (1, N'Grecia Antigua', N'Curiosidades de la época de la antigua Grecia')
INSERT [BlogHistoria].[Categorias] ([IdCategoria], [Nombre], [Descripcion]) VALUES (2, N'Renacimiento', N'Curiosidades de la época del Renacimiento')
INSERT [BlogHistoria].[Categorias] ([IdCategoria], [Nombre], [Descripcion]) VALUES (3, N'Egipto Antiguo', N'Curiosidades de la época del Egipto antiguo')
INSERT [BlogHistoria].[Categorias] ([IdCategoria], [Nombre], [Descripcion]) VALUES (4, N'Roma', N'Curiosidades de la época de la antigua Roma')
INSERT [BlogHistoria].[Categorias] ([IdCategoria], [Nombre], [Descripcion]) VALUES (5, N'Segunda Guerra Mundial', N'Curiosidades de la época de la Segunda Guerra Mundial')
INSERT [BlogHistoria].[Comentarios] ([IdComentario], [IdUsuario], [Contenido], [Fecha], [Hora]) VALUES (1, 1, N'Muy interesante', CAST(N'2019-10-22' AS Date), CAST(N'12:00:00' AS Time))
INSERT [BlogHistoria].[Comentarios] ([IdComentario], [IdUsuario], [Contenido], [Fecha], [Hora]) VALUES (2, 2, N'Está bien saberlo, siempre se aprende algo nuevo.', CAST(N'2019-10-23' AS Date), CAST(N'11:00:00' AS Time))
INSERT [BlogHistoria].[Entradas] ([IdEntrada], [Categoria], [Imagen], [Titulo], [Autor], [Contenido], [FechaPubli]) VALUES (1, 1, NULL, N'Esperanza de vida', 1, N' El promedio de vida en la antigua Grecia era muy alto, y de hecho mucha gente vivía hasta los 100 años o más. Esto era debido a la dieta mediterránea que tenían, y su continua actividad física y la sanidad que tenían implementada.', CAST(N'2019-10-10T00:00:00.000' AS DateTime))
INSERT [BlogHistoria].[Entradas] ([IdEntrada], [Categoria], [Imagen], [Titulo], [Autor], [Contenido], [FechaPubli]) VALUES (2, 2, NULL, N'Besos en el Renacimiento', 2, N' En el Renacimiento los besos en la boca eran una forma de saludo muy frecuente. En Inglaterra era de lo más normal que cualquier invitado al llegar a casa de alguien, propinara uno de ellos no sólo al anfitrión sino también a su mujer, a todos sus hijos e incluso a las mascotas como perros y gatos.', CAST(N'2019-10-13T00:00:00.000' AS DateTime))
INSERT [BlogHistoria].[Entradas] ([IdEntrada], [Categoria], [Imagen], [Titulo], [Autor], [Contenido], [FechaPubli]) VALUES (3, 3, NULL, N'Procedencia de Cleopatra', 3, N'Aunque nació en Alejandría, Cleopatra no era egipcia. Descendía de una larga estirpe de macedonios, sucesores de Ptolomeo I. La dinastía ptlomaica gobernó casi 3 siglos en Egipto pero seguían manteniendo su cultura griega. Cuando Cleopatra se alzó en el poder, tuvo que aprender egipcio.', CAST(N'2019-10-07T00:00:00.000' AS DateTime))
INSERT [BlogHistoria].[Entradas] ([IdEntrada], [Categoria], [Imagen], [Titulo], [Autor], [Contenido], [FechaPubli]) VALUES (4, 4, NULL, N'Medición del tiempo', 4, N'Una hora romana podía durar desde 75 minutos modernos en verano hasta 44 en invierno. Lo que sucede es que los romanos se basaban en el sol. 12 horas diurnas empezaban con el amanecer, y después de la puesta del sol se contaban otras 12 horas nocturnas. Debido a que la longitud del día en invierno y en verano era muy diferente, la longitud de cada hora también podía variar. Por lo tanto, los romanos tenían mucha paciencia con las tardanzas y no eran muy puntuales.', CAST(N'2018-11-05T00:00:00.000' AS DateTime))
INSERT [BlogHistoria].[Usuarios] ([IdUsuario], [Nombre], [Correo], [Contrasena]) VALUES (1, N'Gandalf', N'El Mago', N'1234')
INSERT [BlogHistoria].[Usuarios] ([IdUsuario], [Nombre], [Correo], [Contrasena]) VALUES (2, N'Frodo', N'Bolson', N'5343')
INSERT [BlogHistoria].[Usuarios] ([IdUsuario], [Nombre], [Correo], [Contrasena]) VALUES (3, N'Aragorn', N'Montaraz', N'3232')
INSERT [BlogHistoria].[Usuarios] ([IdUsuario], [Nombre], [Correo], [Contrasena]) VALUES (4, N'Gimli', N'Enano', N'3423')
INSERT [BlogHistoria].[Usuarios] ([IdUsuario], [Nombre], [Correo], [Contrasena]) VALUES (5, N'Jorge', N'jorge@gmail.com', N'jorgepass')
INSERT [BlogHistoria].[Usuarios] ([IdUsuario], [Nombre], [Correo], [Contrasena]) VALUES (6, N'Jorge', N'jorge2@gmail.com', N'prueba')
INSERT [BlogHistoria].[Usuarios] ([IdUsuario], [Nombre], [Correo], [Contrasena]) VALUES (7, N'Joseba', N'joseba@gmail.com', N'joseba1234')
SET IDENTITY_INSERT [mcu].[actors] ON 

INSERT [mcu].[actors] ([actor_id], [name], [surname], [born_date], [born_place], [character], [actor_image]) VALUES (2, N'Robert', N'Downey Jr', CAST(N'1965-04-04' AS Date), N'Nueva York', N'Tony Stark / Iron Man', N'/Resources/img/actors/rdj.png')
INSERT [mcu].[actors] ([actor_id], [name], [surname], [born_date], [born_place], [character], [actor_image]) VALUES (3, N'Chris', N'Evans', CAST(N'1981-06-13' AS Date), N'Boston', N'Steve Rogers / Capitán América', N'/Resources/img/actors/ce.png')
INSERT [mcu].[actors] ([actor_id], [name], [surname], [born_date], [born_place], [character], [actor_image]) VALUES (4, N'Chris', N'Hemsworth ', CAST(N'1983-08-11' AS Date), N'Melbourne', N'Thor', N'/Resources/img/actors/ch.png')
INSERT [mcu].[actors] ([actor_id], [name], [surname], [born_date], [born_place], [character], [actor_image]) VALUES (5, N'Mark', N'Ruffalo', CAST(N'1967-11-22' AS Date), N'Wisconsin', N'Bruce Banner / Hulk', N'/Resources/img/actors/mr.png')
INSERT [mcu].[actors] ([actor_id], [name], [surname], [born_date], [born_place], [character], [actor_image]) VALUES (6, N'Scarlett', N'Johansson ', CAST(N'1984-11-22' AS Date), N'Nueva York', N'Natasha Romanoff / Viuda Negra
', N'/Resources/img/actors/sj.png')
INSERT [mcu].[actors] ([actor_id], [name], [surname], [born_date], [born_place], [character], [actor_image]) VALUES (7, N'Jeremy', N'Renner ', CAST(N'1971-01-07' AS Date), N'Modesto', N'Clint Barton / Ojo de Halcón
', N'/Resources/img/actors/jr.png')
INSERT [mcu].[actors] ([actor_id], [name], [surname], [born_date], [born_place], [character], [actor_image]) VALUES (8, N'Samuel L.', N'Jackson', CAST(N'1948-12-21' AS Date), N'Washington D.C.', N'Nick Furia', N'/Resources/img/actors/slj.png')
INSERT [mcu].[actors] ([actor_id], [name], [surname], [born_date], [born_place], [character], [actor_image]) VALUES (9, N'Finn', N'Jones', CAST(N'1988-03-24' AS Date), N'Londres', N'Iron Fist', N'/Resources/img/actors/fj.png')
INSERT [mcu].[actors] ([actor_id], [name], [surname], [born_date], [born_place], [character], [actor_image]) VALUES (10, N'Mike', N'Colter', CAST(N'1976-08-26' AS Date), N'Columbia', N'Luke Cage', N'/Resources/img/actors/mc.png')
INSERT [mcu].[actors] ([actor_id], [name], [surname], [born_date], [born_place], [character], [actor_image]) VALUES (11, N'Krysten', N'Ritter', CAST(N'1981-12-16' AS Date), N'Pensilvania', N'Jessica Jones', N'/Resources/img/actors/kr.png')
INSERT [mcu].[actors] ([actor_id], [name], [surname], [born_date], [born_place], [character], [actor_image]) VALUES (12, N'Charlie', N'Cox', CAST(N'1982-12-15' AS Date), N'Londres', N'Daredevil', N'/Resources/img/actors/cc.png')
INSERT [mcu].[actors] ([actor_id], [name], [surname], [born_date], [born_place], [character], [actor_image]) VALUES (13, N'Hayley', N'Atwell', CAST(N'1982-04-05' AS Date), N'Londres', N'Peggy Carter', N'/Resources/img/actors/ha.png')
INSERT [mcu].[actors] ([actor_id], [name], [surname], [born_date], [born_place], [character], [actor_image]) VALUES (14, N'Dave', N'Bautista', CAST(N'1969-01-18' AS Date), N'Arlington', N'Drax', N'/Resources/img/actors/db.png')
INSERT [mcu].[actors] ([actor_id], [name], [surname], [born_date], [born_place], [character], [actor_image]) VALUES (15, N'Chris', N'Pratt', CAST(N'1979-06-21' AS Date), N'Virginia', N'Star Lord', N'/Resources/img/actors/cp.png')
INSERT [mcu].[actors] ([actor_id], [name], [surname], [born_date], [born_place], [character], [actor_image]) VALUES (16, N'Zoe', N'Saldaña', CAST(N'1978-06-19' AS Date), N'Nueva Jersey', N'Gamora', N'/Resources/img/actors/zs.png')
INSERT [mcu].[actors] ([actor_id], [name], [surname], [born_date], [born_place], [character], [actor_image]) VALUES (17, N'Vin', N'Diesel', CAST(N'1967-07-18' AS Date), N'California', N'Groot', N'/Resources/img/actors/vd.png')
INSERT [mcu].[actors] ([actor_id], [name], [surname], [born_date], [born_place], [character], [actor_image]) VALUES (18, N'Bradley', N'Cooper', CAST(N'1975-01-05' AS Date), N'Filadelfia', N'Rocket Raccoon', N'/Resources/img/actors/bc.png')
INSERT [mcu].[actors] ([actor_id], [name], [surname], [born_date], [born_place], [character], [actor_image]) VALUES (19, N'Lee', N'Pace', CAST(N'1979-03-25' AS Date), N'Oklahoma', N'Ronan', N'/Resources/img/actors/lp.png')
INSERT [mcu].[actors] ([actor_id], [name], [surname], [born_date], [born_place], [character], [actor_image]) VALUES (20, N'Michael', N'Rooker', CAST(N'1955-04-06' AS Date), N'Alabama', N'Bruce Banner / Hulk', N'/Resources/img/actors/mr2.png')
INSERT [mcu].[actors] ([actor_id], [name], [surname], [born_date], [born_place], [character], [actor_image]) VALUES (22, N'Karen', N'Gillan', CAST(N'1987-11-28' AS Date), N'Escocia', N'Nebula', N'/Resources/img/actors/kg.png')
INSERT [mcu].[actors] ([actor_id], [name], [surname], [born_date], [born_place], [character], [actor_image]) VALUES (23, N'Pom', N'Klementieff', CAST(N'1986-05-03' AS Date), N'Quebec', N'Mantis', N'/Resources/img/actors/pk.png')
INSERT [mcu].[actors] ([actor_id], [name], [surname], [born_date], [born_place], [character], [actor_image]) VALUES (24, N'Elizabeth', N'Debicki', CAST(N'1990-08-24' AS Date), N'París', N'Ayesha', N'/Resources/img/actors/ed.png')
INSERT [mcu].[actors] ([actor_id], [name], [surname], [born_date], [born_place], [character], [actor_image]) VALUES (25, N'Sean', N'Gunn', CAST(N'1974-05-22' AS Date), N'Misuri', N'Kraglin', N'/Resources/img/actors/sg.png')
INSERT [mcu].[actors] ([actor_id], [name], [surname], [born_date], [born_place], [character], [actor_image]) VALUES (26, N'Kurt', N'Russell', CAST(N'1951-03-17' AS Date), N'Springfield', N'Ego', N'/Resources/img/actors/kr2.png')
INSERT [mcu].[actors] ([actor_id], [name], [surname], [born_date], [born_place], [character], [actor_image]) VALUES (27, N'Jon', N'Favreau', CAST(N'1966-10-19' AS Date), N'Nueva York', N'Happy Hogan', N'/Resources/img/actors/jf.png')
INSERT [mcu].[actors] ([actor_id], [name], [surname], [born_date], [born_place], [character], [actor_image]) VALUES (28, N'Gwyneth', N'Paltrow', CAST(N'1972-09-27' AS Date), N'Los Ángeles', N'Virginia "Pepper" Potts', N'/Resources/img/actors/gp.png')
INSERT [mcu].[actors] ([actor_id], [name], [surname], [born_date], [born_place], [character], [actor_image]) VALUES (29, N'Jeff', N'Bridges', CAST(N'1949-12-04' AS Date), N'Los Ángeles', N'Obadiah Stane / Iron Monger', N'/Resources/img/actors/jb.png')
INSERT [mcu].[actors] ([actor_id], [name], [surname], [born_date], [born_place], [character], [actor_image]) VALUES (30, N'Don', N'Cheadle', CAST(N'1964-11-29' AS Date), N'Kansas City', N'James Rhodes / War Machine', N'/Resources/img/actors/dc.png')
INSERT [mcu].[actors] ([actor_id], [name], [surname], [born_date], [born_place], [character], [actor_image]) VALUES (31, N'Mickey', N'Rourke', CAST(N'1952-09-16' AS Date), N'Nueva York', N'Ivan Vanko / Whiplash', N'/Resources/img/actors/mr3.png')
INSERT [mcu].[actors] ([actor_id], [name], [surname], [born_date], [born_place], [character], [actor_image]) VALUES (32, N'Hugo', N'Weaving', CAST(N'1960-04-04' AS Date), N'NIgeria', NULL, N'/Resources/img/actors/hw.png')
INSERT [mcu].[actors] ([actor_id], [name], [surname], [born_date], [born_place], [character], [actor_image]) VALUES (33, N'Sebastian', N'Stan', CAST(N'1982-08-13' AS Date), N'Rumania', N' Bucky Barnes / Winter Soldier', N'/Resources/img/actors/ss.png')
INSERT [mcu].[actors] ([actor_id], [name], [surname], [born_date], [born_place], [character], [actor_image]) VALUES (34, N'Dominic', N'Cooper', CAST(N'1978-06-02' AS Date), N'Greenwich', NULL, N'/Resources/img/actors/dc2.png')
INSERT [mcu].[actors] ([actor_id], [name], [surname], [born_date], [born_place], [character], [actor_image]) VALUES (35, N'Anthony', N'Mackie', CAST(N'1978-09-23' AS Date), N'Nueva Orleans', N'Sam Wilson / Falcon', N'/Resources/img/actors/am.png')
INSERT [mcu].[actors] ([actor_id], [name], [surname], [born_date], [born_place], [character], [actor_image]) VALUES (36, N'Emily', N'VanCamp', CAST(N'1986-05-12' AS Date), N'Ontario', NULL, N'/Resources/img/actors/ev.png')
INSERT [mcu].[actors] ([actor_id], [name], [surname], [born_date], [born_place], [character], [actor_image]) VALUES (37, N'Robert', N'Redford', CAST(N'1936-08-18' AS Date), N'Santa Mónica', NULL, N'/Resources/img/actors/rr.png')
INSERT [mcu].[actors] ([actor_id], [name], [surname], [born_date], [born_place], [character], [actor_image]) VALUES (38, N'Frank', N'Grillo', CAST(N'1965-06-08' AS Date), N'Nueva York', NULL, N'/Resources/img/actors/fg.png')
INSERT [mcu].[actors] ([actor_id], [name], [surname], [born_date], [born_place], [character], [actor_image]) VALUES (39, N'Tom', N'Hiddleston', CAST(N'1981-02-09' AS Date), N'Londres', N'Loki', N'/Resources/img/actors/th.png')
INSERT [mcu].[actors] ([actor_id], [name], [surname], [born_date], [born_place], [character], [actor_image]) VALUES (40, N'Stellan', N'Skarsgård', CAST(N'1951-06-13' AS Date), N'Gotemburgo', N'Erik Selvig', N'/Resources/img/actors/ss2.png')
INSERT [mcu].[actors] ([actor_id], [name], [surname], [born_date], [born_place], [character], [actor_image]) VALUES (41, N'Natalie', N'Portman', CAST(N'1981-06-09' AS Date), N'Washington D. C.', NULL, N'/Resources/img/actors/np.png')
INSERT [mcu].[actors] ([actor_id], [name], [surname], [born_date], [born_place], [character], [actor_image]) VALUES (42, N'Idris', N'Elba', CAST(N'1972-09-06' AS Date), N'Hackney', N'Heimdall', N'/Resources/img/actors/ie.png')
INSERT [mcu].[actors] ([actor_id], [name], [surname], [born_date], [born_place], [character], [actor_image]) VALUES (43, N'Anthony', N'Hopkins', CAST(N'1937-12-31' AS Date), N'Gales', NULL, N'/Resources/img/actors/ah.png')
INSERT [mcu].[actors] ([actor_id], [name], [surname], [born_date], [born_place], [character], [actor_image]) VALUES (44, N'Kat', N'Dennings', CAST(N'1986-06-13' AS Date), N'Filadelfia', NULL, N'/Resources/img/actors/kd.png')
INSERT [mcu].[actors] ([actor_id], [name], [surname], [born_date], [born_place], [character], [actor_image]) VALUES (45, N'Christopher', N'Eccleston', CAST(N'1964-02-16' AS Date), N'Lancashire', NULL, N'/Resources/img/actors/ce2.png')
INSERT [mcu].[actors] ([actor_id], [name], [surname], [born_date], [born_place], [character], [actor_image]) VALUES (46, N'Rene', N'Russo', CAST(N'1954-02-17' AS Date), N'California', NULL, N'/Resources/img/actors/rr2.png')
INSERT [mcu].[actors] ([actor_id], [name], [surname], [born_date], [born_place], [character], [actor_image]) VALUES (47, N'Taika', N'Waititi', CAST(N'1975-08-16' AS Date), N'Nueva Zelanda', NULL, N'/Resources/img/actors/tw.png')
INSERT [mcu].[actors] ([actor_id], [name], [surname], [born_date], [born_place], [character], [actor_image]) VALUES (48, N'Tessa', N'Thompson', CAST(N'1983-10-03' AS Date), N'Los Ángeles', NULL, N'/Resources/img/actors/tw2.png')
INSERT [mcu].[actors] ([actor_id], [name], [surname], [born_date], [born_place], [character], [actor_image]) VALUES (49, N'Cate', N'Blanchett', CAST(N'1969-05-14' AS Date), N'Melbourne', NULL, N'/Resources/img/actors/cb.png')
INSERT [mcu].[actors] ([actor_id], [name], [surname], [born_date], [born_place], [character], [actor_image]) VALUES (50, N'Karl', N'Urban', CAST(N'1972-06-07' AS Date), N'Wellington', NULL, N'/Resources/img/actors/ku.png')
INSERT [mcu].[actors] ([actor_id], [name], [surname], [born_date], [born_place], [character], [actor_image]) VALUES (51, N'Ben', N'Kingsley', CAST(N'1943-12-31' AS Date), N'Yorkshire', N'Trevor Slattery', N'/Resources/img/actors/bk.png')
INSERT [mcu].[actors] ([actor_id], [name], [surname], [born_date], [born_place], [character], [actor_image]) VALUES (52, N'Guy', N'Pearce', CAST(N'1967-10-05' AS Date), N'Cambridgeshire', N'Aldrich Killian', N'/Resources/img/actors/gp2.png')
INSERT [mcu].[actors] ([actor_id], [name], [surname], [born_date], [born_place], [character], [actor_image]) VALUES (53, N'Tim', N'Roth', CAST(N'1961-05-14' AS Date), N'Inglaterra', NULL, N'/Resources/img/actors/tr.png')
INSERT [mcu].[actors] ([actor_id], [name], [surname], [born_date], [born_place], [character], [actor_image]) VALUES (54, N'Edward', N'Norton', CAST(N'1969-08-18' AS Date), N'Boston', NULL, N'/Resources/img/actors/en.png')
INSERT [mcu].[actors] ([actor_id], [name], [surname], [born_date], [born_place], [character], [actor_image]) VALUES (55, N'Liv', N'Tyler', CAST(N'1977-07-01' AS Date), N'Nueva York', NULL, N'/Resources/img/actors/lt.png')
INSERT [mcu].[actors] ([actor_id], [name], [surname], [born_date], [born_place], [character], [actor_image]) VALUES (56, N'William', N'Hurt', CAST(N'1950-03-20' AS Date), N'Washington D. C.', NULL, N'/Resources/img/actors/wh.png')
INSERT [mcu].[actors] ([actor_id], [name], [surname], [born_date], [born_place], [character], [actor_image]) VALUES (58, N'Josh', N'Brolin', CAST(N'1968-02-12' AS Date), N'Santa Mónica', N'Thanos', N'/Resources/img/actors/jb2.png')
INSERT [mcu].[actors] ([actor_id], [name], [surname], [born_date], [born_place], [character], [actor_image]) VALUES (59, N'Clark', N'Gregg', CAST(N'1962-04-02' AS Date), N'Boston', N'Phil Coulson', N'/Resources/img/actors/cg.png')
INSERT [mcu].[actors] ([actor_id], [name], [surname], [born_date], [born_place], [character], [actor_image]) VALUES (60, N'Cobie', N'Smulders', CAST(N'1982-04-03' AS Date), N'Vancouver', N'Maria Hill', N'/Resources/img/actors/cs.png')
INSERT [mcu].[actors] ([actor_id], [name], [surname], [born_date], [born_place], [character], [actor_image]) VALUES (61, N'Aaron', N'Taylor-Johnson', CAST(N'1990-06-13' AS Date), N'High Wycombe', N'Pietro Maximoff / Quicksilver', N'/Resources/img/actors/atj.png')
INSERT [mcu].[actors] ([actor_id], [name], [surname], [born_date], [born_place], [character], [actor_image]) VALUES (62, N'Elizabeth', N'Olsen', CAST(N'1989-02-16' AS Date), N'Los Ángeles', N'Wanda Maximoff / Bruja Escarlata', N'/Resources/img/actors/eo.png')
INSERT [mcu].[actors] ([actor_id], [name], [surname], [born_date], [born_place], [character], [actor_image]) VALUES (63, N'Paul', N'Bettany', CAST(N'1971-05-27' AS Date), N'Londres', N'Visión', N'/Resources/img/actors/pb.png')
INSERT [mcu].[actors] ([actor_id], [name], [surname], [born_date], [born_place], [character], [actor_image]) VALUES (64, N'James', N'Spader', CAST(N'1960-02-07' AS Date), N'Boston', N'Ultrón', N'/Resources/img/actors/js.png')
INSERT [mcu].[actors] ([actor_id], [name], [surname], [born_date], [born_place], [character], [actor_image]) VALUES (65, N'Tom', N'Holland', CAST(N'1996-06-01' AS Date), N'Londres', N'Peter Parker / Spider-Man', N'/Resources/img/actors/th2.png')
INSERT [mcu].[actors] ([actor_id], [name], [surname], [born_date], [born_place], [character], [actor_image]) VALUES (66, N'Michael', N'Keaton', CAST(N'1951-09-05' AS Date), N'Pensylvania', N'Adrian Toomes / Buitre', N'/Resources/img/actors/mk.png')
INSERT [mcu].[actors] ([actor_id], [name], [surname], [born_date], [born_place], [character], [actor_image]) VALUES (67, N'Zendaya', N'Coleman', CAST(N'1996-09-01' AS Date), N'Oakland', N'Michelle Jones', N'/Resources/img/actors/zc.png')
INSERT [mcu].[actors] ([actor_id], [name], [surname], [born_date], [born_place], [character], [actor_image]) VALUES (68, N'Marisa', N'Tomei', CAST(N'1964-12-04' AS Date), N'Brooklyn', N'May Parker', N'/Resources/img/actors/mt.png')
SET IDENTITY_INSERT [mcu].[actors] OFF
INSERT [mcu].[actors_films] ([film_id], [actor_id]) VALUES (1, 2)
INSERT [mcu].[actors_films] ([film_id], [actor_id]) VALUES (2, 2)
INSERT [mcu].[actors_films] ([film_id], [actor_id]) VALUES (3, 4)
INSERT [mcu].[actors_films] ([film_id], [actor_id]) VALUES (4, 5)
INSERT [mcu].[actors_films] ([film_id], [actor_id]) VALUES (2, 6)
INSERT [mcu].[actors_films] ([film_id], [actor_id]) VALUES (5, 3)
INSERT [mcu].[actors_films] ([film_id], [actor_id]) VALUES (6, 2)
INSERT [mcu].[actors_films] ([film_id], [actor_id]) VALUES (6, 3)
INSERT [mcu].[actors_films] ([film_id], [actor_id]) VALUES (6, 4)
INSERT [mcu].[actors_films] ([film_id], [actor_id]) VALUES (6, 5)
INSERT [mcu].[actors_films] ([film_id], [actor_id]) VALUES (6, 6)
INSERT [mcu].[actors_films] ([film_id], [actor_id]) VALUES (6, 7)
INSERT [mcu].[actors_films] ([film_id], [actor_id]) VALUES (6, 8)
INSERT [mcu].[actors_films] ([film_id], [actor_id]) VALUES (3, 13)
INSERT [mcu].[actors_series] ([series_id], [actors_id]) VALUES (2, 13)
INSERT [mcu].[actors_series] ([series_id], [actors_id]) VALUES (3, 12)
INSERT [mcu].[actors_series] ([series_id], [actors_id]) VALUES (4, 11)
INSERT [mcu].[actors_series] ([series_id], [actors_id]) VALUES (5, 10)
INSERT [mcu].[actors_series] ([series_id], [actors_id]) VALUES (6, 9)
SET IDENTITY_INSERT [mcu].[directors] ON 

INSERT [mcu].[directors] ([id], [name]) VALUES (1, N'Joe Johnston')
INSERT [mcu].[directors] ([id], [name]) VALUES (2, N'Jon Favreau')
INSERT [mcu].[directors] ([id], [name]) VALUES (3, N'Louis Leterrier')
INSERT [mcu].[directors] ([id], [name]) VALUES (4, N'Kenneth Branagh')
INSERT [mcu].[directors] ([id], [name]) VALUES (5, N'Joss Whedon')
INSERT [mcu].[directors] ([id], [name]) VALUES (6, N'Shane Black')
INSERT [mcu].[directors] ([id], [name]) VALUES (7, N'Alan Taylor')
INSERT [mcu].[directors] ([id], [name]) VALUES (8, N'Anthony y Joe Russo')
INSERT [mcu].[directors] ([id], [name]) VALUES (9, N'James Gunn')
INSERT [mcu].[directors] ([id], [name]) VALUES (10, N'Peyton Reed')
INSERT [mcu].[directors] ([id], [name]) VALUES (11, N'Scott Derrickson')
INSERT [mcu].[directors] ([id], [name]) VALUES (12, N'Jon Watts')
INSERT [mcu].[directors] ([id], [name]) VALUES (13, N'Taika Waititi')
INSERT [mcu].[directors] ([id], [name]) VALUES (14, N'Ryan Coogler')
INSERT [mcu].[directors] ([id], [name]) VALUES (15, N'Anna Boden y Ryan Fleck')
INSERT [mcu].[directors] ([id], [name]) VALUES (16, N'Tara Butters')
INSERT [mcu].[directors] ([id], [name]) VALUES (17, N'Drew Goddard')
INSERT [mcu].[directors] ([id], [name]) VALUES (18, N'Melissa Rosenberg')
INSERT [mcu].[directors] ([id], [name]) VALUES (19, N'Cheo Hodari Coker')
INSERT [mcu].[directors] ([id], [name]) VALUES (20, N'Scott Buck ')
INSERT [mcu].[directors] ([id], [name]) VALUES (21, N'S.J. Clarkson')
SET IDENTITY_INSERT [mcu].[directors] OFF
SET IDENTITY_INSERT [mcu].[films] ON 

INSERT [mcu].[films] ([film_id], [title], [title_original], [release_data], [duration], [director_id], [trailer], [film_image], [money_earned], [mcu_order]) VALUES (1, N'Iron Man', N'Iron Man', CAST(N'2008-04-30' AS Date), 126, 2, N'https://www.youtube.com/watch?v=Rxxfxhuob04', N'/Resources/img/film/im.png', 585200000, 3)
INSERT [mcu].[films] ([film_id], [title], [title_original], [release_data], [duration], [director_id], [trailer], [film_image], [money_earned], [mcu_order]) VALUES (2, N'Iron Man 2', N'Iron Man 2', CAST(N'2010-04-26' AS Date), 124, 2, N'https://www.youtube.com/watch?v=Ab_mvS68xng', N'/Resources/img/film/im2.png', 623900000, 5)
INSERT [mcu].[films] ([film_id], [title], [title_original], [release_data], [duration], [director_id], [trailer], [film_image], [money_earned], [mcu_order]) VALUES (3, N'Thor', N'Thor', CAST(N'2011-04-17' AS Date), 115, 4, N'https://www.youtube.com/watch?v=gNOX4SEQ7aM', N'/Resources/img/film/t.png', 449326618, 6)
INSERT [mcu].[films] ([film_id], [title], [title_original], [release_data], [duration], [director_id], [trailer], [film_image], [money_earned], [mcu_order]) VALUES (4, N'El increíble Hulk', N'The Incredible Hulk', CAST(N'2008-06-08' AS Date), 112, 3, N'https://www.youtube.com/watch?v=hLPmTK8SSq8', N'/Resources/img/film/h.png', 263427551, 4)
INSERT [mcu].[films] ([film_id], [title], [title_original], [release_data], [duration], [director_id], [trailer], [film_image], [money_earned], [mcu_order]) VALUES (5, N'Capitán América: El primer vengador', N'Captain America: The First Avenger', CAST(N'2011-07-03' AS Date), 124, 1, N'https://www.youtube.com/watch?v=YqEJ0jpFvSU', N'/Resources/img/film/ca.png', 370569774, 1)
INSERT [mcu].[films] ([film_id], [title], [title_original], [release_data], [duration], [director_id], [trailer], [film_image], [money_earned], [mcu_order]) VALUES (6, N'Los Vengadores', N'The Avengers', CAST(N'2012-04-11' AS Date), 143, 5, N'https://www.youtube.com/watch?v=HQIiYqOVTWo', N'/Resources/img/film/lv.png', 1519000000, 7)
INSERT [mcu].[films] ([film_id], [title], [title_original], [release_data], [duration], [director_id], [trailer], [film_image], [money_earned], [mcu_order]) VALUES (7, N'Iron Man 3', N'Iron Man 3', CAST(N'2013-05-03' AS Date), 131, 6, N'https://www.youtube.com/watch?v=6dhCPF_Jsco', N'/Resources/img/film/im3.png', 1215000000, 8)
INSERT [mcu].[films] ([film_id], [title], [title_original], [release_data], [duration], [director_id], [trailer], [film_image], [money_earned], [mcu_order]) VALUES (9, N'Thor: el mundo oscuro', N'Thor: The Dark World', CAST(N'2013-10-22' AS Date), 112, 7, N'https://www.youtube.com/watch?v=Dos2w0C3LP0', N'/Resources/img/film/t2.png', 644600000, 9)
INSERT [mcu].[films] ([film_id], [title], [title_original], [release_data], [duration], [director_id], [trailer], [film_image], [money_earned], [mcu_order]) VALUES (10, N'Capitán América: el Soldado de Invierno', N'Captain America: The Winter Soldier', CAST(N'2014-04-04' AS Date), 136, 8, N'https://www.youtube.com/watch?v=Ics4g1xppFg', N'/Resources/img/film/ca2.png', 714000000, 10)
INSERT [mcu].[films] ([film_id], [title], [title_original], [release_data], [duration], [director_id], [trailer], [film_image], [money_earned], [mcu_order]) VALUES (11, N'Los Guardianes de la Galaxia', N'Guardians of the Galaxy', CAST(N'2014-09-01' AS Date), 122, 9, N'https://www.youtube.com/watch?v=bBTtlcJwjSo', N'/Resources/img/film/gg.png', 773300000, 11)
INSERT [mcu].[films] ([film_id], [title], [title_original], [release_data], [duration], [director_id], [trailer], [film_image], [money_earned], [mcu_order]) VALUES (12, N'Guardianes de la Galaxia Vol. 2', N'Guardians of the Galaxy Vol 2', CAST(N'2017-05-05' AS Date), 137, 9, N'https://www.youtube.com/watch?v=aaYKiWXcc9I', N'/Resources/img/film/gg2.png', 863800000, 12)
INSERT [mcu].[films] ([film_id], [title], [title_original], [release_data], [duration], [director_id], [trailer], [film_image], [money_earned], [mcu_order]) VALUES (13, N'Avengers: Era de Ultrón', N'Avengers: Age of Ultron', CAST(N'2015-05-01' AS Date), 141, 5, N'https://www.youtube.com/watch?v=jSvcbzK_bD8', N'/Resources/img/film/lv2.png', 1405000000, 13)
SET IDENTITY_INSERT [mcu].[films] OFF
SET IDENTITY_INSERT [mcu].[series] ON 

INSERT [mcu].[series] ([series_id], [title], [title_original], [director_id], [release_data], [seasons], [chapter_count], [average_duration], [trailer], [series_image]) VALUES (1, N'Agentes de S.H.I.E.L.D', N' Agents of S.H.I.E.L.D', 5, CAST(N'2013-09-24' AS Date), 6, 123, CAST(4920 AS Decimal(18, 0)), N'trailerAgentesDeSHIELD', N'/Resources/img/series/ads.png')
INSERT [mcu].[series] ([series_id], [title], [title_original], [director_id], [release_data], [seasons], [chapter_count], [average_duration], [trailer], [series_image]) VALUES (2, N'Agente Carter', N' Agent Carter', 16, CAST(N'2015-01-06' AS Date), 2, 18, CAST(756 AS Decimal(18, 0)), N'trailerAgenteCarter', N'/Resources/img/series/ac.png')
INSERT [mcu].[series] ([series_id], [title], [title_original], [director_id], [release_data], [seasons], [chapter_count], [average_duration], [trailer], [series_image]) VALUES (3, N'Daredevil ', N'Daredevil ', 17, CAST(N'2015-04-10' AS Date), 3, 39, CAST(2106 AS Decimal(18, 0)), N'trailerDaredevil', N'/Resources/img/series/d.png')
INSERT [mcu].[series] ([series_id], [title], [title_original], [director_id], [release_data], [seasons], [chapter_count], [average_duration], [trailer], [series_image]) VALUES (4, N'Jessica Jones', N'Jessica Jones', 18, CAST(N'2015-11-20' AS Date), 3, 39, CAST(1950 AS Decimal(18, 0)), N'trailerJessicaJones', N'/Resources/img/series/jj.png')
INSERT [mcu].[series] ([series_id], [title], [title_original], [director_id], [release_data], [seasons], [chapter_count], [average_duration], [trailer], [series_image]) VALUES (5, N'Luke Cage', N'Luke Cage', 19, CAST(N'2016-09-30' AS Date), 2, 26, CAST(1508 AS Decimal(18, 0)), N'trailerLukeCage', N'/Resources/img/series/lc.png')
INSERT [mcu].[series] ([series_id], [title], [title_original], [director_id], [release_data], [seasons], [chapter_count], [average_duration], [trailer], [series_image]) VALUES (6, N'Iron Fist', N'Iron Fist', 20, CAST(N'2017-03-17' AS Date), 2, 24, CAST(1242 AS Decimal(18, 0)), N'trailerIronFist', N'/Resources/img/series/if.png')
INSERT [mcu].[series] ([series_id], [title], [title_original], [director_id], [release_data], [seasons], [chapter_count], [average_duration], [trailer], [series_image]) VALUES (7, N'The Defenders', N'The Defenders', 21, CAST(N'2017-08-18' AS Date), 1, 8, CAST(400 AS Decimal(18, 0)), N'trailerTheDefenders', N'/Resources/img/series/td.png')
SET IDENTITY_INSERT [mcu].[series] OFF
INSERT [Minecraft].[Biomes] ([biome_id], [biome_name], [type], [desc]) VALUES (1, N'Llanura helada', N'Nevado', N'Un bioma expansivo y plano con una gran cantidad de nieve. Todas las fuentes de agua expuestas al cielo se congelan.')
INSERT [Minecraft].[Biomes] ([biome_id], [biome_name], [type], [desc]) VALUES (2, N'Espigas de hielo', N'Nevado', N'Una variante extraña de las Llanuras nevadas, un bioma caracterizado por las largas espigas de hielo compacto, así como ''lagos'' de hielo compacto.')
INSERT [Minecraft].[Biomes] ([biome_id], [biome_name], [type], [desc]) VALUES (3, N'Colinas Extremas', N'Frio', N'Un bioma de las tierras altas (con algunas cimas de montañas que alcanzan y = 130 o incluso más) con algunos robles y abetos dispersos.')
INSERT [Minecraft].[Biomes] ([biome_id], [biome_name], [type], [desc]) VALUES (4, N'Taiga', N'Frio', N'Un bioma predominantemente plano cubierto por un bosque de abetos. Helechos y helechos grandes crecen comúnmente en el suelo del bosque.')
INSERT [Minecraft].[Biomes] ([biome_id], [biome_name], [type], [desc]) VALUES (5, N'Colinas Extremas', N'Frio', N'Un bioma de las tierras altas (con algunas cimas de montañas que alcanzan y = 130 o incluso más) con algunos robles y abetos dispersos.')
INSERT [Minecraft].[Biomes] ([biome_id], [biome_name], [type], [desc]) VALUES (6, N'Playa de piedra', N'Frio', N'Fiel a su nombre, este bioma cubierto de piedra aparece a menudo donde los biomas de las colinas extremas se encuentran con el océano.')
INSERT [Minecraft].[Biomes] ([biome_id], [biome_name], [type], [desc]) VALUES (7, N'Llanuras', N'Exuberante', N'Un bioma relativamente plano y cubierto de hierba con colinas y pocos árboles. Los barrancos, los pozos de agua y las aldeas NPC son comunes.')
INSERT [Minecraft].[Biomes] ([biome_id], [biome_name], [type], [desc]) VALUES (8, N'Bosque', N'Exuberante', N'Un bioma con muchos robles y abedules, colinas ocasionales y una buena cantidad de hierba alta.')
INSERT [Minecraft].[Biomes] ([biome_id], [biome_name], [type], [desc]) VALUES (9, N'Bosque de abedul', N'Exuberante', N'Un bosque en el que solo se generan abedules.')
INSERT [Minecraft].[Biomes] ([biome_id], [biome_name], [type], [desc]) VALUES (10, N'Bosque techado', N'Exuberante', N'Este bioma está compuesto por robles oscuros, un techo de hojas mayormente cerrado y, en ocasiones, grandes setas.')
INSERT [Minecraft].[Biomes] ([biome_id], [biome_name], [type], [desc]) VALUES (11, N'Pantano', N'Exuberante', N'Un bioma caracterizado por una mezcla de áreas planas y áridas alrededor del nivel del mar y piscinas poco profundas de agua verde salobre con nenúfares.')
INSERT [Minecraft].[Biomes] ([biome_id], [biome_name], [type], [desc]) VALUES (12, N'Jungla', N'Exuberante', N'Un muy denso, pero más bien poco común bioma tropical. Tiene largos arboles de jungla que pueden llegar a medir 31 bloques de alto con 2×2 el grueso del tronco.')
INSERT [Minecraft].[Biomes] ([biome_id], [biome_name], [type], [desc]) VALUES (13, N'Rio', N'Exuberante', N'Un bioma que consiste de bloques de agua que forman una alargada, forma curva similar a un verdadero rió.')
INSERT [Minecraft].[Biomes] ([biome_id], [biome_name], [type], [desc]) VALUES (14, N'Playa', N'Exuberante', N'Generadas donde los océanos se encuentran con otros biomas, las playas están compuestas principalmente de arena. ')
INSERT [Minecraft].[Biomes] ([biome_id], [biome_name], [type], [desc]) VALUES (15, N'Isla de setas', N'Exuberante', N'Este raro bioma consiste en una mezcla de de paisaje plano y colinas empinadas y tiene micelio en vez de césped como superficie.')
INSERT [Minecraft].[Biomes] ([biome_id], [biome_name], [type], [desc]) VALUES (16, N'Desierto', N'Seco', N'Un bioma estéril e inhóspito que consiste principalmente en dunas de arena, arbustos muertos y cactus. Arenisca, y a veces fósiles, se encuentran debajo de la arena.')
INSERT [Minecraft].[Biomes] ([biome_id], [biome_name], [type], [desc]) VALUES (17, N'Savana', N'Seco', N'Un bioma relativamente plano y seco con un color de hierba morena y un acacia trapeciado, acementerios puede estar generando ahora y luego. ')
INSERT [Minecraft].[Biomes] ([biome_id], [biome_name], [type], [desc]) VALUES (18, N'Mesa', N'Seco', N'Un bioma raro en el que se generarán grandes montículos de terracota y terracota teñida. La arena roja también se generará aquí en lugar de arena normal, con ocasionales cactus y arbustos muertos.')
INSERT [Minecraft].[Biomes] ([biome_id], [biome_name], [type], [desc]) VALUES (19, N'Plateau', N'Seco', N'Estos biomas son similares a los biomas de las colinas, pero solo se generan dentro de los biomas de la sabana y la mesa, y se aplanan en la parte superior, al igual que las mesetas de la vida real.')
INSERT [Minecraft].[Dimensions] ([dimension_id], [dimension_name], [desc]) VALUES (1, N'Nether', N'This is the biome used to generate the Nether. Within this biome spawn mobs such as ghasts, packs of zombie pigmen and the occasional magma cubes and endermen. Certain structures, such as Nether quartz, glowstone veins, and Nether fortresses will only generate in the Nether.')
INSERT [Minecraft].[Dimensions] ([dimension_id], [dimension_name], [desc]) VALUES (2, N'End', N'El End (The End en inglés) es una dimensión que contiene una isla flotante en el centro, rodeada de varias islas accesibles a través de portales naturales, distribuidos por la isla principal.')
INSERT [Minecraft].[Dimensions] ([dimension_id], [dimension_name], [desc]) VALUES (3, N'Overworld', N'The normal world')
INSERT [Minecraft].[Easter_Eggs] ([easter_id], [easter_name], [easter_desc], [easter_date]) VALUES (1, N'Locked Chest', N'The Locked Chest was a naturally generated block used as the premise of Notch''s 2011 April Fools'' Day joke. Upon attempting to open the chest, a message would appear stating that a Steve Co. Supply Crate Key is needed and that one could be purchased at the Minecraft store.', CAST(N'2011-01-01' AS Date))
INSERT [Minecraft].[Mobs] ([mob_id], [mob_name], [biome_id], [tipo], [healthpoints], [damage], [trigger_vision], [trigger_desc], [drop], [raredrop], [image], [exp], [tool_id]) VALUES (1, N'Vaca', 1, N'Pasivo', 10, 0, 0, NULL, N'Cuero, Ternera cruda, Filete', NULL, N'/images/CowFace.png', 3, NULL)
INSERT [Minecraft].[Mobs] ([mob_id], [mob_name], [biome_id], [tipo], [healthpoints], [damage], [trigger_vision], [trigger_desc], [drop], [raredrop], [image], [exp], [tool_id]) VALUES (2, N'Lobo', 2, N'Neutral', 8, 6, 15, N'No atacarán al jugador a no ser que éste golpee a un lobo, puesto que si un lobo es golpeado, ellos atacarán al jugador hasta eliminarlo o ahuyentarlo.', NULL, NULL, N'/images/WolfFace.png', 3, NULL)
INSERT [Minecraft].[Mobs] ([mob_id], [mob_name], [biome_id], [tipo], [healthpoints], [damage], [trigger_vision], [trigger_desc], [drop], [raredrop], [image], [exp], [tool_id]) VALUES (3, N'Slime', 2, N'Hostil', 21, 6, 16, NULL, N'Bola de Slime', NULL, N'/images/SlimeFace.png', 7, NULL)
INSERT [Minecraft].[Mobs] ([mob_id], [mob_name], [biome_id], [tipo], [healthpoints], [damage], [trigger_vision], [trigger_desc], [drop], [raredrop], [image], [exp], [tool_id]) VALUES (4, N'Gallina', 3, N'Pasivo', 4, 0, 0, NULL, N'Huevos, Plumas, Pollo crudo, Pollo cocido', NULL, N'/images/ChickenFace.png', 3, NULL)
INSERT [Minecraft].[Mobs] ([mob_id], [mob_name], [biome_id], [tipo], [healthpoints], [damage], [trigger_vision], [trigger_desc], [drop], [raredrop], [image], [exp], [tool_id]) VALUES (5, N'Murciélago', 4, N'Pasivo', 6, 0, 0, NULL, NULL, NULL, N'/images/BatFace.png', 0, NULL)
INSERT [Minecraft].[Mobs] ([mob_id], [mob_name], [biome_id], [tipo], [healthpoints], [damage], [trigger_vision], [trigger_desc], [drop], [raredrop], [image], [exp], [tool_id]) VALUES (6, N'Champiñaca', 3, N'Pasivo', 10, 0, 0, NULL, N'Champiños rojos, Cuero, Carne cruda, Bife', NULL, N'/images/MooshroomFace.png', 3, NULL)
INSERT [Minecraft].[Mobs] ([mob_id], [mob_name], [biome_id], [tipo], [healthpoints], [damage], [trigger_vision], [trigger_desc], [drop], [raredrop], [image], [exp], [tool_id]) VALUES (7, N'Cerdo', 2, N'Pasivo', 10, 0, 0, NULL, N'Chuleta de cerdo cruda, Chuleta de cerdo cocinada', NULL, N'/images/PigFace.png', 3, NULL)
INSERT [Minecraft].[Mobs] ([mob_id], [mob_name], [biome_id], [tipo], [healthpoints], [damage], [trigger_vision], [trigger_desc], [drop], [raredrop], [image], [exp], [tool_id]) VALUES (8, N'Conejo', 1, N'Pasivo', 3, 0, 0, NULL, N'Piel de conejo, Conejo crudo, Conejo cocinado ', N'Pata de conejo', N'/images/Rabbiticon.png', 3, NULL)
INSERT [Minecraft].[Mobs] ([mob_id], [mob_name], [biome_id], [tipo], [healthpoints], [damage], [trigger_vision], [trigger_desc], [drop], [raredrop], [image], [exp], [tool_id]) VALUES (9, N'Conejo Asesino', 3, N'Hostil', 3, 12, 4, N'Atacará cuando alguien se acerque a menos de 4 bloques', N'Piel de conejo, Conejo crudo, Conejo cocinado ', N'Pata de conejo', N'/images/KillerRabbitFace.png', 3, NULL)
INSERT [Minecraft].[Mobs] ([mob_id], [mob_name], [biome_id], [tipo], [healthpoints], [damage], [trigger_vision], [trigger_desc], [drop], [raredrop], [image], [exp], [tool_id]) VALUES (10, N'Oveja', 3, N'Pasivo', 8, 0, 0, NULL, N'Corderos crudos, Cordero cocinado, Lana', NULL, N'/images/SheepFace.png', 3, NULL)
INSERT [Minecraft].[Mobs] ([mob_id], [mob_name], [biome_id], [tipo], [healthpoints], [damage], [trigger_vision], [trigger_desc], [drop], [raredrop], [image], [exp], [tool_id]) VALUES (11, N'Calamar', 2, N'Pasivo', 10, 0, 0, NULL, N'Saco de tinta', NULL, N'/images/Squidface.png', 3, NULL)
INSERT [Minecraft].[Mobs] ([mob_id], [mob_name], [biome_id], [tipo], [healthpoints], [damage], [trigger_vision], [trigger_desc], [drop], [raredrop], [image], [exp], [tool_id]) VALUES (12, N'Aldeano', 3, N'Pasivo', 20, 0, 0, NULL, NULL, NULL, N'/images/VillagerHead.png', 0, NULL)
INSERT [Minecraft].[Mobs] ([mob_id], [mob_name], [biome_id], [tipo], [healthpoints], [damage], [trigger_vision], [trigger_desc], [drop], [raredrop], [image], [exp], [tool_id]) VALUES (13, N'Tortuga', 3, N'Pasivo', 30, 0, 0, NULL, N'Hierba marina', NULL, N'/images/Cara_de_Tortuga.png', 3, NULL)
INSERT [Minecraft].[Mobs] ([mob_id], [mob_name], [biome_id], [tipo], [healthpoints], [damage], [trigger_vision], [trigger_desc], [drop], [raredrop], [image], [exp], [tool_id]) VALUES (14, N'Araña', 3, N'Neutral', 20, 3, 14, N'Solo atacan de noche o en una cueva, de día son neutrales', N'Hilos, Ojo de araña', NULL, N'/images/SpiderFace.png', 5, NULL)
INSERT [Minecraft].[Mobs] ([mob_id], [mob_name], [biome_id], [tipo], [healthpoints], [damage], [trigger_vision], [trigger_desc], [drop], [raredrop], [image], [exp], [tool_id]) VALUES (15, N'Araña de cueva', 2, N'Neutral', 20, 4, 14, N'Solo atacan de noche o en una cueva, de día son neutrales', N'Hilos, Ojo de araña', NULL, N'/images/CaveSpiderFace.png', 5, NULL)
INSERT [Minecraft].[Mobs] ([mob_id], [mob_name], [biome_id], [tipo], [healthpoints], [damage], [trigger_vision], [trigger_desc], [drop], [raredrop], [image], [exp], [tool_id]) VALUES (16, N'Delfín', 3, N'Neutral', 10, 4, 13, N'Los delfines son atraídos por objetos que han sido soltados, persiguiéndolos y empujándolos, jugando con él. Si un jugador golpea a un delfín que va en grupo, todo el grupo se volverá hostil y golpearán de vuelta al jugador.', N'Bacalao', NULL, N'/images/Cara_de_Delfín.png', 0, NULL)
INSERT [Minecraft].[Mobs] ([mob_id], [mob_name], [biome_id], [tipo], [healthpoints], [damage], [trigger_vision], [trigger_desc], [drop], [raredrop], [image], [exp], [tool_id]) VALUES (17, N'Enderman', 2, N'Neutral', 40, 10, 999, N'La única forma de hacer que te siga un enderman es golpearlo y salir corriendo o mirarle fijamente a los ojos.', N'Ender Pearl', NULL, N'/images/EndermanFace.png', 5, NULL)
INSERT [Minecraft].[Mobs] ([mob_id], [mob_name], [biome_id], [tipo], [healthpoints], [damage], [trigger_vision], [trigger_desc], [drop], [raredrop], [image], [exp], [tool_id]) VALUES (18, N'Hombre-Cerdo-Zombie', 3, N'Neutral', 20, 12, 40, N'Atacar a un hombre-cerdo-zombi causará que el grupo más cercano se vuelva hostil, a menudo causando un enjambre al jugador.', N'Carne podrida, pepita de oro, Espada de oro', N'Lingote de oro', N'/images/ZombiePigmanFace.png', 8, NULL)
INSERT [Minecraft].[Mobs] ([mob_id], [mob_name], [biome_id], [tipo], [healthpoints], [damage], [trigger_vision], [trigger_desc], [drop], [raredrop], [image], [exp], [tool_id]) VALUES (19, N'Oso polar', 3, N'Neutral', 30, 9, 41, N'Se volverán hostiles hacia el jugador si el se acerca demasiado a sus crías.', N'Salmón, Pescado crudo', NULL, N'/images/Oso_polar.png', 40, NULL)
INSERT [Minecraft].[Mobs] ([mob_id], [mob_name], [biome_id], [tipo], [healthpoints], [damage], [trigger_vision], [trigger_desc], [drop], [raredrop], [image], [exp], [tool_id]) VALUES (20, N'Blaze', 2, N'Hostil', 20, 9, 30, NULL, N'Vara de blaze', NULL, N'/images/Blaze_Face.png', 10, NULL)
INSERT [Minecraft].[Mobs] ([mob_id], [mob_name], [biome_id], [tipo], [healthpoints], [damage], [trigger_vision], [trigger_desc], [drop], [raredrop], [image], [exp], [tool_id]) VALUES (21, N'Jinete avícola', 2, N'Hostil', 20, 13, 19, NULL, N'Carne podrida, Pepita de oro, Pluma, Pollo crudo, Pollo cocinado', N'Zanahoria, Lingote de hierro, Patata, Lingote de oro, Pala de hierro, Espada de hierro, Armadura aleatoria, Espada de oro', N'/images/Chickenjockey.png', 22, NULL)
INSERT [Minecraft].[Mobs] ([mob_id], [mob_name], [biome_id], [tipo], [healthpoints], [damage], [trigger_vision], [trigger_desc], [drop], [raredrop], [image], [exp], [tool_id]) VALUES (22, N'Creeper', 3, N'Hostil', 20, 49, 16, NULL, N'Pólvora', N'Disco de musica, cabeza de creeper', N'/images/CreeperFace.png', 5, NULL)
INSERT [Minecraft].[Mobs] ([mob_id], [mob_name], [biome_id], [tipo], [healthpoints], [damage], [trigger_vision], [trigger_desc], [drop], [raredrop], [image], [exp], [tool_id]) VALUES (23, N'Creeper Eléctrico', 2, N'Hostil', 20, 100, 16, NULL, N'Pólvora', N'Disco de musica, cabeza de creeper', N'/images/CreeperFace.png', 5, NULL)
INSERT [Minecraft].[Mobs] ([mob_id], [mob_name], [biome_id], [tipo], [healthpoints], [damage], [trigger_vision], [trigger_desc], [drop], [raredrop], [image], [exp], [tool_id]) VALUES (24, N'Elder guardian', 3, N'Hostil', 80, 12, 20, NULL, N'Cristales de prismarina, fragmento de prismarina, Pescado crudo', N'Pez payaso, Pez globo', N'/images/Elder_GuradianFace.png', 10, NULL)
INSERT [Minecraft].[Mobs] ([mob_id], [mob_name], [biome_id], [tipo], [healthpoints], [damage], [trigger_vision], [trigger_desc], [drop], [raredrop], [image], [exp], [tool_id]) VALUES (25, N'Endermite', 2, N'Hostil', 8, 2, 4, N'Cuando una perla de end es tirada (con una probabilidad del 5%, aunque esta probabilidad aumenta cuando se lanza a una criatura)', NULL, NULL, N'/images/EndermiteFace.png', 3, NULL)
INSERT [Minecraft].[Mobs] ([mob_id], [mob_name], [biome_id], [tipo], [healthpoints], [damage], [trigger_vision], [trigger_desc], [drop], [raredrop], [image], [exp], [tool_id]) VALUES (26, N'Ghast', 2, N'Hostil', 10, 6, 0, NULL, N'Pólvora, Lagrima de ghast', NULL, N'/images/GhastFace.png', 5, NULL)
INSERT [Minecraft].[Mobs] ([mob_id], [mob_name], [biome_id], [tipo], [healthpoints], [damage], [trigger_vision], [trigger_desc], [drop], [raredrop], [image], [exp], [tool_id]) VALUES (27, N'Guardián', 3, N'Hostil', 30, 9, 20, NULL, N'Pescado crudo, Cristales de prismarina,Fragmento de prismarina', NULL, N'/images/GuardianFace.png', 10, NULL)
INSERT [Minecraft].[Mobs] ([mob_id], [mob_name], [biome_id], [tipo], [healthpoints], [damage], [trigger_vision], [trigger_desc], [drop], [raredrop], [image], [exp], [tool_id]) VALUES (28, N'Shulker', 2, N'Hostil', 30, 4, 15, NULL, N'Shulker shell', NULL, N'/images/64px-ShulkerFace.png', 13, NULL)
INSERT [Minecraft].[Mobs] ([mob_id], [mob_name], [biome_id], [tipo], [healthpoints], [damage], [trigger_vision], [trigger_desc], [drop], [raredrop], [image], [exp], [tool_id]) VALUES (29, N'Slime de magma', 3, N'Hostil', 22, 13, 8, NULL, N'Crema de magma', NULL, N'/images/Magma_Cube_Face.png', 7, NULL)
INSERT [Minecraft].[Mobs] ([mob_id], [mob_name], [biome_id], [tipo], [healthpoints], [damage], [trigger_vision], [trigger_desc], [drop], [raredrop], [image], [exp], [tool_id]) VALUES (30, N'Invocador', 3, N'Hostil', 24, 6, 12, NULL, N'Tótem de la inmortalidad, esmeralda', NULL, N'/images/Invocador.png', 10, NULL)
INSERT [Minecraft].[Mobs] ([mob_id], [mob_name], [biome_id], [tipo], [healthpoints], [damage], [trigger_vision], [trigger_desc], [drop], [raredrop], [image], [exp], [tool_id]) VALUES (31, N'Ánima', 2, N'Hostil', 14, 13, 15, NULL, NULL, N'Espada de hierro', N'/images/Ánima.png', 3, NULL)
INSERT [Minecraft].[Mobs] ([mob_id], [mob_name], [biome_id], [tipo], [healthpoints], [damage], [trigger_vision], [trigger_desc], [drop], [raredrop], [image], [exp], [tool_id]) VALUES (32, N'Vindicador', 3, N'Hostil', 24, 19, 12, NULL, N'Esmeralda', NULL, N'/images/20171217115959!Vindicador.png', 5, NULL)
INSERT [Minecraft].[Mobs] ([mob_id], [mob_name], [biome_id], [tipo], [healthpoints], [damage], [trigger_vision], [trigger_desc], [drop], [raredrop], [image], [exp], [tool_id]) VALUES (33, N'Lepisma', 2, N'Hostil', 8, 1, 21, NULL, NULL, NULL, N'/images/SilverfishFace.png', 5, NULL)
INSERT [Minecraft].[Mobs] ([mob_id], [mob_name], [biome_id], [tipo], [healthpoints], [damage], [trigger_vision], [trigger_desc], [drop], [raredrop], [image], [exp], [tool_id]) VALUES (34, N'Caballos esqueléticos', 3, N'Pasivo', 15, 0, 0, NULL, N'Huesos', NULL, N'/images/SkeletonRiderFace.png', 3, NULL)
INSERT [Minecraft].[Mobs] ([mob_id], [mob_name], [biome_id], [tipo], [healthpoints], [damage], [trigger_vision], [trigger_desc], [drop], [raredrop], [image], [exp], [tool_id]) VALUES (35, N'Esqueleto', 2, N'Hostil', 20, 5, 16, NULL, N'Huesos, Flechas', N'Arco, Cabeza de esqueleto', N'/images/SkeletonFace.png', 5, NULL)
INSERT [Minecraft].[Mobs] ([mob_id], [mob_name], [biome_id], [tipo], [healthpoints], [damage], [trigger_vision], [trigger_desc], [drop], [raredrop], [image], [exp], [tool_id]) VALUES (36, N'Jinete arácnido', 3, N'Hostil', 40, 3, 16, NULL, N'Cuerda, Ojos de araña, Huesos, Flechas', NULL, N'/images/SpiderJockeyFace.png', 10, NULL)
INSERT [Minecraft].[Mobs] ([mob_id], [mob_name], [biome_id], [tipo], [healthpoints], [damage], [trigger_vision], [trigger_desc], [drop], [raredrop], [image], [exp], [tool_id]) VALUES (37, N'Bruja', 3, N'Hostil', 26, 6, 7, NULL, N'Frasco de cristal, Polvo de piedra luminosa, Pólvora, Redstone, Ojo de araña, Azúcar, Palo', NULL, N'/images/WitherFace2.png', 5, NULL)
INSERT [Minecraft].[Mobs] ([mob_id], [mob_name], [biome_id], [tipo], [healthpoints], [damage], [trigger_vision], [trigger_desc], [drop], [raredrop], [image], [exp], [tool_id]) VALUES (38, N'Esqueleto wither', 2, N'Hostil', 20, 11, 10, NULL, N'Carbón, Hueso', N'Cabeza de esqueleto wither', N'/images/WitherSkeletonHead.png', 5, NULL)
INSERT [Minecraft].[Mobs] ([mob_id], [mob_name], [biome_id], [tipo], [healthpoints], [damage], [trigger_vision], [trigger_desc], [drop], [raredrop], [image], [exp], [tool_id]) VALUES (39, N'Zombie', 1, N'Hostil', 20, 4, 40, NULL, N'Carne podrida', N'Lingotes de hierro, Zanahorias, Patatas, Equipamiento aleatorio', N'/images/ZombieFace.png', 8, NULL)
INSERT [Minecraft].[Mobs] ([mob_id], [mob_name], [biome_id], [tipo], [healthpoints], [damage], [trigger_vision], [trigger_desc], [drop], [raredrop], [image], [exp], [tool_id]) VALUES (40, N'Zombie momificado', 2, N'Hostil', 20, 4, 40, NULL, N'Carne podrida', N'Lingotes de hierro, Zanahorias, Patatas, Equipamiento aleatorio', N'/images/Zombiemomificado.png', 8, NULL)
INSERT [Minecraft].[Mobs] ([mob_id], [mob_name], [biome_id], [tipo], [healthpoints], [damage], [trigger_vision], [trigger_desc], [drop], [raredrop], [image], [exp], [tool_id]) VALUES (41, N'Aldeano zombie', 1, N'Hostil', 20, 4, 40, NULL, N'Carne podrida', N'Lingotes de hierro, Zanahorias, Patatas, Equipamiento aleatorio', N'/images/Carasdezombiealdeano.gif', 8, NULL)
INSERT [Minecraft].[Mobs] ([mob_id], [mob_name], [biome_id], [tipo], [healthpoints], [damage], [trigger_vision], [trigger_desc], [drop], [raredrop], [image], [exp], [tool_id]) VALUES (42, N'Fantasma', 4, N'Hostil', 20, 9, 20, NULL, N'Membrana de fantasma', NULL, N'/images/Cara_de_fantasma.png', 5, NULL)
INSERT [Minecraft].[Mobs] ([mob_id], [mob_name], [biome_id], [tipo], [healthpoints], [damage], [trigger_vision], [trigger_desc], [drop], [raredrop], [image], [exp], [tool_id]) VALUES (43, N'Ahogado', 3, N'Hostil', 20, 4, 30, NULL, N'Carne podrida', N'Lingote de oro, Tridente', N'/images/Cara_de_ahogado.png', 4, NULL)
INSERT [Minecraft].[Mobs] ([mob_id], [mob_name], [biome_id], [tipo], [healthpoints], [damage], [trigger_vision], [trigger_desc], [drop], [raredrop], [image], [exp], [tool_id]) VALUES (44, N'Caballo', 2, N'Pasivo', 30, 0, 0, NULL, N'Cuero', NULL, N'/images/HorseHead.png', 3, NULL)
INSERT [Minecraft].[Mobs] ([mob_id], [mob_name], [biome_id], [tipo], [healthpoints], [damage], [trigger_vision], [trigger_desc], [drop], [raredrop], [image], [exp], [tool_id]) VALUES (45, N'Ocelote', 1, N'Pasivo', 10, 0, 0, NULL, NULL, NULL, N'/images/OcelotFace.png', 3, NULL)
INSERT [Minecraft].[Mobs] ([mob_id], [mob_name], [biome_id], [tipo], [healthpoints], [damage], [trigger_vision], [trigger_desc], [drop], [raredrop], [image], [exp], [tool_id]) VALUES (46, N'Llama', 2, N'Pasivo', 30, 1, 0, NULL, N'Cuero', NULL, N'/images/LlamaFace.png', 3, NULL)
INSERT [Minecraft].[Mobs] ([mob_id], [mob_name], [biome_id], [tipo], [healthpoints], [damage], [trigger_vision], [trigger_desc], [drop], [raredrop], [image], [exp], [tool_id]) VALUES (47, N'Loro', 3, N'Pasivo', 6, 0, 0, NULL, N'Plumas', NULL, N'/images/ParrotFace.png', 3, NULL)
INSERT [Minecraft].[Mobs] ([mob_id], [mob_name], [biome_id], [tipo], [healthpoints], [damage], [trigger_vision], [trigger_desc], [drop], [raredrop], [image], [exp], [tool_id]) VALUES (48, N'Golem de hierro', 2, N'Neutral', 100, 21, 0, N'Si atacas a un aldeano el golem de hierro te atacará', N'Lingote de hierro, Amapolas', NULL, N'/images/Vg_face.png', 0, NULL)
INSERT [Minecraft].[Mobs] ([mob_id], [mob_name], [biome_id], [tipo], [healthpoints], [damage], [trigger_vision], [trigger_desc], [drop], [raredrop], [image], [exp], [tool_id]) VALUES (49, N'Golem de nieve', 4, N'Pasivo', 4, 0, 10, NULL, N'Bola de nieve', NULL, N'/images/Snowgolemhead.png', 0, NULL)
INSERT [Minecraft].[Mobs] ([mob_id], [mob_name], [biome_id], [tipo], [healthpoints], [damage], [trigger_vision], [trigger_desc], [drop], [raredrop], [image], [exp], [tool_id]) VALUES (50, N'Ender dragon', 3, N'Hostil', 200, 15, 30, NULL, N'Huevo de enderdragon', NULL, N'/images/Enderdragon_face_3.png', 12000, NULL)
INSERT [Minecraft].[Mobs] ([mob_id], [mob_name], [biome_id], [tipo], [healthpoints], [damage], [trigger_vision], [trigger_desc], [drop], [raredrop], [image], [exp], [tool_id]) VALUES (51, N'Wither', 2, N'Hostil', 300, 12, 25, NULL, N'Estrella del inframundo', NULL, N'/images/WitherFace.png', 50, NULL)
INSERT [Minecraft].[Structures] ([struct_id], [struct_name], [biome_id], [struct_desc], [size], [tool_id], [dimension_id]) VALUES (1, N'Village_taiga', 3, N'Las aldeas de PNJs se generan en zonas planas y son hogar de los aldeanos.', 150, 1, 3)
INSERT [Minecraft].[Tools] ([tool_id], [tool_name], [resources], [durability], [damage_attack], [armor]) VALUES (1, N'Espada de hierro', N'Hierro', 251, 6, 0)
INSERT [Minecraft].[Tools] ([tool_id], [tool_name], [resources], [durability], [damage_attack], [armor]) VALUES (2, N'Arco', N'Palos, Hilos', 385, 5, 0)
INSERT [Minecraft].[Tools] ([tool_id], [tool_name], [resources], [durability], [damage_attack], [armor]) VALUES (3, N'Azada de diamante', N'Palos, Diamantes', 1562, 3, 0)
INSERT [Minecraft].[Tools] ([tool_id], [tool_name], [resources], [durability], [damage_attack], [armor]) VALUES (4, N'Azada de hierro', N'Palos, Hierro', 251, 2, 0)
INSERT [Minecraft].[Tools] ([tool_id], [tool_name], [resources], [durability], [damage_attack], [armor]) VALUES (5, N'Azada de oro', N'Palos, oro', 33, 2, 0)
INSERT [Minecraft].[Tools] ([tool_id], [tool_name], [resources], [durability], [damage_attack], [armor]) VALUES (6, N'Azada de Piedra', N'Palos, piedra', 132, 2, 0)
INSERT [Minecraft].[Tools] ([tool_id], [tool_name], [resources], [durability], [damage_attack], [armor]) VALUES (7, N'Azada de madera', N'Palos, madera', 60, 1, 0)
INSERT [Minecraft].[Tools] ([tool_id], [tool_name], [resources], [durability], [damage_attack], [armor]) VALUES (8, N'Casco de cuero', N'Cuero', 56, 0, 1)
INSERT [Minecraft].[Tools] ([tool_id], [tool_name], [resources], [durability], [damage_attack], [armor]) VALUES (9, N'Casco de oro', N'Oro', 78, 0, 2)
INSERT [Minecraft].[Tools] ([tool_id], [tool_name], [resources], [durability], [damage_attack], [armor]) VALUES (10, N'Casco de mallas/hierro', N'Hierro', 166, 0, 2)
INSERT [Minecraft].[Tools] ([tool_id], [tool_name], [resources], [durability], [damage_attack], [armor]) VALUES (11, N'Casco de diamante', N'Diamante', 364, 0, 2)
INSERT [Minecraft].[Tools] ([tool_id], [tool_name], [resources], [durability], [damage_attack], [armor]) VALUES (12, N'Peto de cuero', N'Cuero', 81, 0, 2.5)
INSERT [Minecraft].[Tools] ([tool_id], [tool_name], [resources], [durability], [damage_attack], [armor]) VALUES (13, N'Peto de oro', N'Oro', 113, 0, 5)
INSERT [Minecraft].[Tools] ([tool_id], [tool_name], [resources], [durability], [damage_attack], [armor]) VALUES (14, N'Peto de malla/hierro', N'Hierro', 241, 0, 5.5)
INSERT [Minecraft].[Tools] ([tool_id], [tool_name], [resources], [durability], [damage_attack], [armor]) VALUES (15, N'Peto de diamante', N'Diamante', 529, 0, 8)
INSERT [Minecraft].[Tools] ([tool_id], [tool_name], [resources], [durability], [damage_attack], [armor]) VALUES (16, N'Grebas de cuero', N'Cuero', 76, 0, 2)
INSERT [Minecraft].[Tools] ([tool_id], [tool_name], [resources], [durability], [damage_attack], [armor]) VALUES (17, N'Grebas de oro', N'Oro ', 106, 0, 3)
INSERT [Minecraft].[Tools] ([tool_id], [tool_name], [resources], [durability], [damage_attack], [armor]) VALUES (18, N'Grebas de malla/hierro', N'Hierro', 226, 0, 4.5)
INSERT [Minecraft].[Tools] ([tool_id], [tool_name], [resources], [durability], [damage_attack], [armor]) VALUES (19, N'Grebas de diamante', N'Diamante', 496, 0, 7)
INSERT [Minecraft].[Tools] ([tool_id], [tool_name], [resources], [durability], [damage_attack], [armor]) VALUES (20, N'Botas de Cuero', N'Cuero', 66, 0, 1)
INSERT [Minecraft].[Tools] ([tool_id], [tool_name], [resources], [durability], [damage_attack], [armor]) VALUES (21, N'Botas de oro', N'Oro', 92, 0, 1)
INSERT [Minecraft].[Tools] ([tool_id], [tool_name], [resources], [durability], [damage_attack], [armor]) VALUES (22, N'Botas de malla/hierro', N'Hierro', 196, 0, 1.5)
INSERT [Minecraft].[Tools] ([tool_id], [tool_name], [resources], [durability], [damage_attack], [armor]) VALUES (23, N'Botas de diamante', N'Diamante', 430, 0, 2.5)
INSERT [Minecraft].[Tools] ([tool_id], [tool_name], [resources], [durability], [damage_attack], [armor]) VALUES (24, N'Espada de madera', N'Palos, Madera', 60, 4, 0)
INSERT [Minecraft].[Tools] ([tool_id], [tool_name], [resources], [durability], [damage_attack], [armor]) VALUES (25, N'Espada de piedra', N'Palos, Piedra', 132, 5, 0)
INSERT [Minecraft].[Tools] ([tool_id], [tool_name], [resources], [durability], [damage_attack], [armor]) VALUES (26, N'Espada de oro', N'Palos, Oro', 33, 4, 0)
INSERT [Minecraft].[Tools] ([tool_id], [tool_name], [resources], [durability], [damage_attack], [armor]) VALUES (27, N'Espada de diamante', N'Palos, Diamante', 1562, 7, 0)
INSERT [Minecraft].[Tools] ([tool_id], [tool_name], [resources], [durability], [damage_attack], [armor]) VALUES (28, N'Hacha de madera', N'Palos, Madera', 60, 2, 0)
INSERT [Minecraft].[Tools] ([tool_id], [tool_name], [resources], [durability], [damage_attack], [armor]) VALUES (29, N'Hacha de oro', N'Palos, Oro', 33, 2, 0)
INSERT [Minecraft].[Tools] ([tool_id], [tool_name], [resources], [durability], [damage_attack], [armor]) VALUES (30, N'Hacha de piedra', N'Palos, Piedra', 132, 3, 0)
INSERT [Minecraft].[Tools] ([tool_id], [tool_name], [resources], [durability], [damage_attack], [armor]) VALUES (31, N'Hacha de hierro', N'Palos, Hierro', 251, 4, 0)
INSERT [Minecraft].[Tools] ([tool_id], [tool_name], [resources], [durability], [damage_attack], [armor]) VALUES (32, N'Hacha de diamante', N'Palos, Diamante', 1561, 5, 0)
SET IDENTITY_INSERT [Minecraft].[Usuarios] ON 

INSERT [Minecraft].[Usuarios] ([username], [password], [name], [last_name], [birthdate], [user_id], [email]) VALUES (N'Kulen', N'KulenFeo', N'Kulentxo', N'Feo', CAST(N'2019-01-01' AS Date), 2, N'kulen@feo.feo')
INSERT [Minecraft].[Usuarios] ([username], [password], [name], [last_name], [birthdate], [user_id], [email]) VALUES (N'lllibailll', N'asd', N'Ibai', N'Saldise', CAST(N'2000-02-20' AS Date), 3, N'laskdaslk@ansd.com')
SET IDENTITY_INSERT [Minecraft].[Usuarios] OFF
INSERT [Moto].[Comentaries] ([CommentaryID], [UserID], [Text], [likes], [MeetingID]) VALUES (1, 1, N'Esto es un comentario de prueba de kevin', 0, 1)
INSERT [Moto].[Comentaries] ([CommentaryID], [UserID], [Text], [likes], [MeetingID]) VALUES (2, 1, N'Esto es un comentario de prueba de kevin', 0, 2)
INSERT [Moto].[Comentaries] ([CommentaryID], [UserID], [Text], [likes], [MeetingID]) VALUES (3, 2, N'Esto es un comentario de prueba de ander', 0, 1)
INSERT [Moto].[Comentaries] ([CommentaryID], [UserID], [Text], [likes], [MeetingID]) VALUES (4, 2, N'Esto es un comentario de prueba de ander', 0, 2)
SET IDENTITY_INSERT [Moto].[Meetings] ON 

INSERT [Moto].[Meetings] ([MeetingID], [meeting_name], [Desde], [Hasta], [Distancia], [UserID], [Fecha]) VALUES (0, N'rutaprubea', N'aquimismo', N'allimismo', 3, NULL, CAST(N'2019-10-10' AS Date))
INSERT [Moto].[Meetings] ([MeetingID], [meeting_name], [Desde], [Hasta], [Distancia], [UserID], [Fecha]) VALUES (1, N'RutaSalchichera', N'Ponferrada', N'Alcorcon', 1000, 1, CAST(N'2019-10-20' AS Date))
INSERT [Moto].[Meetings] ([MeetingID], [meeting_name], [Desde], [Hasta], [Distancia], [UserID], [Fecha]) VALUES (2, N'RutaPalomera', N'Puentelareina', N'Despeñaperros', 5, 2, CAST(N'2019-10-21' AS Date))
INSERT [Moto].[Meetings] ([MeetingID], [meeting_name], [Desde], [Hasta], [Distancia], [UserID], [Fecha]) VALUES (3, N'Apechopalomo', N'Aqui', N'Alli', 300, NULL, CAST(N'2020-07-10' AS Date))
INSERT [Moto].[Meetings] ([MeetingID], [meeting_name], [Desde], [Hasta], [Distancia], [UserID], [Fecha]) VALUES (4, N'prueba', N'aqui', N'alli', 5, NULL, CAST(N'2019-10-10' AS Date))
INSERT [Moto].[Meetings] ([MeetingID], [meeting_name], [Desde], [Hasta], [Distancia], [UserID], [Fecha]) VALUES (5, N'prueba2', N'aqui2', N'alli2', 52, NULL, CAST(N'2019-10-10' AS Date))
INSERT [Moto].[Meetings] ([MeetingID], [meeting_name], [Desde], [Hasta], [Distancia], [UserID], [Fecha]) VALUES (6, N'prueba3', N'aqui3', N'alli3', 53, NULL, CAST(N'2019-10-10' AS Date))
INSERT [Moto].[Meetings] ([MeetingID], [meeting_name], [Desde], [Hasta], [Distancia], [UserID], [Fecha]) VALUES (7, N'caraperro', N'ahimismo', N'allimismo', 3, NULL, CAST(N'2020-12-12' AS Date))
INSERT [Moto].[Meetings] ([MeetingID], [meeting_name], [Desde], [Hasta], [Distancia], [UserID], [Fecha]) VALUES (8, N'caraperro2', N'ahimismo2', N'allimismo2', 32, NULL, CAST(N'2020-12-12' AS Date))
INSERT [Moto].[Meetings] ([MeetingID], [meeting_name], [Desde], [Hasta], [Distancia], [UserID], [Fecha]) VALUES (9, N'1', N'1', N'1', 1, NULL, CAST(N'2020-12-12' AS Date))
SET IDENTITY_INSERT [Moto].[Meetings] OFF
SET IDENTITY_INSERT [Moto].[Usuarios] ON 

INSERT [Moto].[Usuarios] ([UserID], [Nombre], [Apellido], [Nick], [Pass], [Likes]) VALUES (1, N'AdminKevin', N'AdminCaballero', N'ADMINK', N'ADMINK', 0)
INSERT [Moto].[Usuarios] ([UserID], [Nombre], [Apellido], [Nick], [Pass], [Likes]) VALUES (2, N'AdminiAnder', N'AdminMaestre', N'ADMINA', N'ADMINA', 0)
INSERT [Moto].[Usuarios] ([UserID], [Nombre], [Apellido], [Nick], [Pass], [Likes]) VALUES (3, N'Piter', N'Pander', N'PitPan', N'Pass', NULL)
INSERT [Moto].[Usuarios] ([UserID], [Nombre], [Apellido], [Nick], [Pass], [Likes]) VALUES (4, N'Piter', N'Pander', N'PitPan', N'Pass', NULL)
INSERT [Moto].[Usuarios] ([UserID], [Nombre], [Apellido], [Nick], [Pass], [Likes]) VALUES (5, N'k', N'c', N'kevinmaister', N'1', NULL)
INSERT [Moto].[Usuarios] ([UserID], [Nombre], [Apellido], [Nick], [Pass], [Likes]) VALUES (6, N'a', N'm', N'andermaister', N'2', NULL)
INSERT [Moto].[Usuarios] ([UserID], [Nombre], [Apellido], [Nick], [Pass], [Likes]) VALUES (7, N'', N'', N'', N'', NULL)
INSERT [Moto].[Usuarios] ([UserID], [Nombre], [Apellido], [Nick], [Pass], [Likes]) VALUES (8, N'k', N'c', N'kevinmaister2', N'1', NULL)
SET IDENTITY_INSERT [Moto].[Usuarios] OFF
INSERT [SecondChance].[Categories] ([CategoryID], [CategoryName], [CategoryDescription]) VALUES (1, N'Informatica', N'Productos relacionados con la informatica')
INSERT [SecondChance].[Categories] ([CategoryID], [CategoryName], [CategoryDescription]) VALUES (2, N'Moda', N'Productos relacionados con la moda(ropa, accesorios, bolsos, etc.)')
INSERT [SecondChance].[Categories] ([CategoryID], [CategoryName], [CategoryDescription]) VALUES (3, N'Hogar', N'Productos relacionados con el hogar(Muebles,  tapiceria, etc)')
INSERT [SecondChance].[Categories] ([CategoryID], [CategoryName], [CategoryDescription]) VALUES (4, N'Ocio y Deporte', N'Productos relacionados con el ocio y el deporte(balones, accesorios de deporte, zapatos de deporte, etc.)')
INSERT [SecondChance].[Categories] ([CategoryID], [CategoryName], [CategoryDescription]) VALUES (5, N'Libros y Musica', N'Productos relacionados con la lectura y la musica (libros, cds, reproductores de musica, altavoces, etc.)')
INSERT [SecondChance].[Categories] ([CategoryID], [CategoryName], [CategoryDescription]) VALUES (6, N'Vehiculos', N'Productos relacionados con vehiculos(motos, coches y accesorios de estos)')
SET IDENTITY_INSERT [SecondChance].[Users] ON 

INSERT [SecondChance].[Users] ([UserID], [First_Name], [Last_Name], [Birth_Date], [Phone_Number], [Email], [Country], [Adress], [Password], [Username]) VALUES (1, N'y', N'y', CAST(N'2019-10-24' AS Date), N'333', N'y', N'Spain', N'y', N'y', N'y')
INSERT [SecondChance].[Users] ([UserID], [First_Name], [Last_Name], [Birth_Date], [Phone_Number], [Email], [Country], [Adress], [Password], [Username]) VALUES (2, N'iñaki', N'alkiza', CAST(N'2019-10-24' AS Date), N'675501292', N'inaki.seim@gmail.com', NULL, N'herrera 26a', N'seim-2020', N'alki')
INSERT [SecondChance].[Users] ([UserID], [First_Name], [Last_Name], [Birth_Date], [Phone_Number], [Email], [Country], [Adress], [Password], [Username]) VALUES (6, N'usu5', N'usu5', CAST(N'2019-10-24' AS Date), N'894357', N'usu5@usu5.com', N'Bulgaria', N'usu5', N'usu5', N'usu5')
INSERT [SecondChance].[Users] ([UserID], [First_Name], [Last_Name], [Birth_Date], [Phone_Number], [Email], [Country], [Adress], [Password], [Username]) VALUES (7, N'niko', N'zabaleta', CAST(N'2019-10-24' AS Date), N'4534535', N'niko@niko.com', N'Russia', N'gros', N'niko', N'niko')
INSERT [SecondChance].[Users] ([UserID], [First_Name], [Last_Name], [Birth_Date], [Phone_Number], [Email], [Country], [Adress], [Password], [Username]) VALUES (8, N'hh', N'hh', CAST(N'2019-10-24' AS Date), N'h', N'h', N'Afghanistan', N'h', N'h', N'h')
INSERT [SecondChance].[Users] ([UserID], [First_Name], [Last_Name], [Birth_Date], [Phone_Number], [Email], [Country], [Adress], [Password], [Username]) VALUES (9, N'', N'f', CAST(N'2019-10-24' AS Date), N'f', N'f', N'Afghanistan', N'f', N'f', N'f')
INSERT [SecondChance].[Users] ([UserID], [First_Name], [Last_Name], [Birth_Date], [Phone_Number], [Email], [Country], [Adress], [Password], [Username]) VALUES (10, N'', N'', CAST(N'1900-01-01' AS Date), N'', N'', N'Afghanistan', N'', N'', N'')
INSERT [SecondChance].[Users] ([UserID], [First_Name], [Last_Name], [Birth_Date], [Phone_Number], [Email], [Country], [Adress], [Password], [Username]) VALUES (11, N'ander ', N'maestre', CAST(N'2019-10-16' AS Date), N'3424', N'elmaestro@gmail.zumo', N'Belarus', N'marte', N'elmaestro', N'elmaestro')
INSERT [SecondChance].[Users] ([UserID], [First_Name], [Last_Name], [Birth_Date], [Phone_Number], [Email], [Country], [Adress], [Password], [Username]) VALUES (12, N'', N'', CAST(N'1995-10-01' AS Date), N'', N'', N'Afghanistan', N'', N'asdasdads', N'asdasd')
SET IDENTITY_INSERT [SecondChance].[Users] OFF
INSERT [Vinos].[Categories] ([Category_Id], [Category_Name]) VALUES (1, N'Cat1                                              ')
INSERT [Vinos].[Categories] ([Category_Id], [Category_Name]) VALUES (2, N'Cat2                                              ')
INSERT [Vinos].[Order_Details] ([Order_Id], [Wine_Id], [Quantity]) VALUES (1, 1, 20)
INSERT [Vinos].[Order_Details] ([Order_Id], [Wine_Id], [Quantity]) VALUES (2, 2, 4)
INSERT [Vinos].[Orders] ([Order_Id], [User_Id], [Order_Date]) VALUES (1, 1, CAST(N'2019-05-05' AS Date))
INSERT [Vinos].[Orders] ([Order_Id], [User_Id], [Order_Date]) VALUES (2, 2, CAST(N'2014-11-19' AS Date))
INSERT [Vinos].[Orders] ([Order_Id], [User_Id], [Order_Date]) VALUES (3, 2, CAST(N'2018-09-23' AS Date))
SET IDENTITY_INSERT [Vinos].[Users] ON 

INSERT [Vinos].[Users] ([User_Id], [Username], [Password], [Email], [Phone_Number], [Card_Number], [Card_CVV], [Address], [City], [Country]) VALUES (1, N'Administrator                                     ', N'Password                                          ', N'administrator@gmail.com                           ', N'678901234', N'111111111           ', N'1111      ', N'Add                                                                                                                                                   ', N'City                          ', N'Country                       ')
INSERT [Vinos].[Users] ([User_Id], [Username], [Password], [Email], [Phone_Number], [Card_Number], [Card_CVV], [Address], [City], [Country]) VALUES (2, N'Mikel                                             ', N'1234567                                           ', N'mikel@gmail.com                                   ', N'666666666', N'123456789           ', N'4646      ', N'Add1                                                                                                                                                  ', N'City1                         ', N'Country1                      ')
INSERT [Vinos].[Users] ([User_Id], [Username], [Password], [Email], [Phone_Number], [Card_Number], [Card_CVV], [Address], [City], [Country]) VALUES (4, N'Heldai                                            ', N'7654321                                           ', N'heldai@gmail.com                                  ', N'123653777', N'235462727           ', N'5467      ', N'Add2                                                                                                                                                  ', N'City2                         ', N'Country2                      ')
INSERT [Vinos].[Users] ([User_Id], [Username], [Password], [Email], [Phone_Number], [Card_Number], [Card_CVV], [Address], [City], [Country]) VALUES (5, N'Jon                                               ', N'123456                                            ', N'Jon@gmail.com                                     ', N'685333178', N'254888912           ', N'3145      ', N'Add3                                                                                                                                                  ', N'City3                         ', N'Country3                      ')
SET IDENTITY_INSERT [Vinos].[Users] OFF
INSERT [Vinos].[Wineries] ([Winery_Id], [Winery_Name], [City], [Country]) VALUES (1, N'W1                            ', N'City1                         ', N'Country1                      ')
INSERT [Vinos].[Wineries] ([Winery_Id], [Winery_Name], [City], [Country]) VALUES (2, N'W2                            ', N'City2                         ', N'Country2                      ')
INSERT [Vinos].[Wineries] ([Winery_Id], [Winery_Name], [City], [Country]) VALUES (3, N'W3                            ', N'City3                         ', N'Country2                      ')
INSERT [Vinos].[Wines] ([Wine_Id], [Wine_Name], [Category_Id], [Winery_Id], [Wine_Description], [Alcohol_Percentage], [Production_Area], [Units_In_Stock], [Unit_Price], [Offer_Percentage]) VALUES (1, N'Wine1                                             ', 1, 1, N'descripcion1                                                                                        ', 20, N'area1                                             ', 33, 2.0000, 0)
INSERT [Vinos].[Wines] ([Wine_Id], [Wine_Name], [Category_Id], [Winery_Id], [Wine_Description], [Alcohol_Percentage], [Production_Area], [Units_In_Stock], [Unit_Price], [Offer_Percentage]) VALUES (2, N'Wine2                                             ', 2, 2, N'desc2                                                                                               ', 15, N'area2                                             ', 14, 5.0000, 0)
INSERT [Vinos].[Wines] ([Wine_Id], [Wine_Name], [Category_Id], [Winery_Id], [Wine_Description], [Alcohol_Percentage], [Production_Area], [Units_In_Stock], [Unit_Price], [Offer_Percentage]) VALUES (3, N'Wine3                                             ', 1, 2, N'descripcion3                                                                                        ', 12, N'area3                                             ', 23, 4.5000, 0)
INSERT [Vinos].[Wines] ([Wine_Id], [Wine_Name], [Category_Id], [Winery_Id], [Wine_Description], [Alcohol_Percentage], [Production_Area], [Units_In_Stock], [Unit_Price], [Offer_Percentage]) VALUES (4, N'Wine4                                             ', 2, 1, N'desc4                                                                                               ', 18, N'area4                                             ', 45, 7.0000, 0)
INSERT [Zapatazo].[Categorias] ([CodCategoria], [Descripcion]) VALUES (N'BOT', N'Bota')
INSERT [Zapatazo].[Categorias] ([CodCategoria], [Descripcion]) VALUES (N'DEP', N'Deportiva')
INSERT [Zapatazo].[Categorias] ([CodCategoria], [Descripcion]) VALUES (N'GAL', N'Galactico')
INSERT [Zapatazo].[Categorias] ([CodCategoria], [Descripcion]) VALUES (N'TAC', N'Tacon')
INSERT [Zapatazo].[Cliente] ([IDCliente], [Nombre], [Apellido], [UserName], [Password], [email], [Saldo], [telefono], [Genero]) VALUES (1, N'Jon', N'Amengual', N'JonA', N'seim-2019', N'jonamengual.sa@gmail.com', 0.0000, N'94351756 ', N'H')
INSERT [Zapatazo].[Cliente] ([IDCliente], [Nombre], [Apellido], [UserName], [Password], [email], [Saldo], [telefono], [Genero]) VALUES (2, N'Ivan', N'Blazquez', N'Ivan', N'1234', NULL, NULL, NULL, NULL)
INSERT [Zapatazo].[Cliente] ([IDCliente], [Nombre], [Apellido], [UserName], [Password], [email], [Saldo], [telefono], [Genero]) VALUES (3, N'p1', N'p1', N'p1', N'p1', N'p1@gmail.com', 0.0000, N'123456789', N'H')
INSERT [Zapatazo].[Cliente] ([IDCliente], [Nombre], [Apellido], [UserName], [Password], [email], [Saldo], [telefono], [Genero]) VALUES (4, N'Jose', N'p1', N'Jose', N'123', N'p1@gmail.com', 0.0000, N'123456789', N'H')
INSERT [Zapatazo].[Cliente] ([IDCliente], [Nombre], [Apellido], [UserName], [Password], [email], [Saldo], [telefono], [Genero]) VALUES (5, N'Holooo', N'p1', N'Holooo', N'1234', N'p1@gmail.com', 0.0000, N'123456789', N'H')
INSERT [Zapatazo].[Cliente] ([IDCliente], [Nombre], [Apellido], [UserName], [Password], [email], [Saldo], [telefono], [Genero]) VALUES (6, N'juantxo', N'gomez', N'Juantxo300', N'1234', N'juantxo@tontito', 0.0000, N'528323928', N'H')
INSERT [Zapatazo].[Cliente] ([IDCliente], [Nombre], [Apellido], [UserName], [Password], [email], [Saldo], [telefono], [Genero]) VALUES (7, N'Marta', N'Paca', N'Paquita300', N'1234', N'Paquita.toloca@gmail.com', 0.0000, N'635248384', N'M')
INSERT [Zapatazo].[Cliente] ([IDCliente], [Nombre], [Apellido], [UserName], [Password], [email], [Saldo], [telefono], [Genero]) VALUES (8, N'Che', N'Kulham', N'Che', N'1234', N'Che.centroseim@gmail.com', 0.0000, N'653345434', N'H')
INSERT [Zapatazo].[Marca] ([ID_Marca], [Nombre]) VALUES (5, N'Adidas')
INSERT [Zapatazo].[Marca] ([ID_Marca], [Nombre]) VALUES (2, N'Canguro')
INSERT [Zapatazo].[Marca] ([ID_Marca], [Nombre]) VALUES (7, N'Chirrisclas')
INSERT [Zapatazo].[Marca] ([ID_Marca], [Nombre]) VALUES (3, N'Granjera')
INSERT [Zapatazo].[Marca] ([ID_Marca], [Nombre]) VALUES (8, N'Gutxi')
INSERT [Zapatazo].[Marca] ([ID_Marca], [Nombre]) VALUES (4, N'Maria')
INSERT [Zapatazo].[Marca] ([ID_Marca], [Nombre]) VALUES (6, N'Nike')
INSERT [Zapatazo].[Marca] ([ID_Marca], [Nombre]) VALUES (1, N'Panama')
INSERT [Zapatazo].[Marca] ([ID_Marca], [Nombre]) VALUES (9, N'Zapatazo')
SET IDENTITY_INSERT [Zapatazo].[Zapatos] ON 

INSERT [Zapatazo].[Zapatos] ([CodZapato], [CodCategoria], [ID_Marca], [Genero], [Descripcion], [Precio]) VALUES (3, N'BOT', 1, N'U', N'Estilo urbano de  cuero y de gran calidad', 154.0000)
INSERT [Zapatazo].[Zapatos] ([CodZapato], [CodCategoria], [ID_Marca], [Genero], [Descripcion], [Precio]) VALUES (4, N'BOT', 2, N'H', N'Estilo militar', 89.0000)
INSERT [Zapatazo].[Zapatos] ([CodZapato], [CodCategoria], [ID_Marca], [Genero], [Descripcion], [Precio]) VALUES (5, N'BOT', 3, N'M', N'Botas altas de esestilo vaquero', 183.0000)
INSERT [Zapatazo].[Zapatos] ([CodZapato], [CodCategoria], [ID_Marca], [Genero], [Descripcion], [Precio]) VALUES (6, N'BOT', 4, N'M', N'Botas altas de estilo urbano', 146.0000)
INSERT [Zapatazo].[Zapatos] ([CodZapato], [CodCategoria], [ID_Marca], [Genero], [Descripcion], [Precio]) VALUES (10, N'DEP', 5, N'H', N'Deportivas acolchadas', 57.0000)
INSERT [Zapatazo].[Zapatos] ([CodZapato], [CodCategoria], [ID_Marca], [Genero], [Descripcion], [Precio]) VALUES (11, N'DEP', 6, N'H', N'Deportivas con tacon elevado', 68.0000)
INSERT [Zapatazo].[Zapatos] ([CodZapato], [CodCategoria], [ID_Marca], [Genero], [Descripcion], [Precio]) VALUES (19, N'TAC', 7, N'M', N'Zapato de tacon aireado', 92.0000)
INSERT [Zapatazo].[Zapatos] ([CodZapato], [CodCategoria], [ID_Marca], [Genero], [Descripcion], [Precio]) VALUES (20, N'TAC', 8, N'M', N'Zapato de tacon bronceado', 340.0000)
INSERT [Zapatazo].[Zapatos] ([CodZapato], [CodCategoria], [ID_Marca], [Genero], [Descripcion], [Precio]) VALUES (21, N'TAC', 8, N'M', N'Zapato de tacon blanco', 340.0000)
SET IDENTITY_INSERT [Zapatazo].[Zapatos] OFF
/****** Object:  Index [users_pk]    Script Date: 31/10/2019 12:47:22 ******/
ALTER TABLE [mcu].[users] ADD  CONSTRAINT [users_pk] PRIMARY KEY NONCLUSTERED 
(
	[user_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [IX_Users]    Script Date: 31/10/2019 12:47:22 ******/
ALTER TABLE [SecondChance].[Users] ADD  CONSTRAINT [IX_Users] UNIQUE NONCLUSTERED 
(
	[Username] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [AK1_Order_OrderNumber]    Script Date: 31/10/2019 12:47:22 ******/
ALTER TABLE [Zapatazo].[Categorias] ADD  CONSTRAINT [AK1_Order_OrderNumber] UNIQUE NONCLUSTERED 
(
	[Descripcion] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [AK1_Product_SupplierId_ProductName]    Script Date: 31/10/2019 12:47:22 ******/
ALTER TABLE [Zapatazo].[Marca] ADD  CONSTRAINT [AK1_Product_SupplierId_ProductName] UNIQUE NONCLUSTERED 
(
	[Nombre] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [AK1_Supplier_CompanyName]    Script Date: 31/10/2019 12:47:22 ******/
ALTER TABLE [Zapatazo].[Tallaje] ADD  CONSTRAINT [AK1_Supplier_CompanyName] UNIQUE NONCLUSTERED 
(
	[Tallaje] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
ALTER TABLE [animeyt].[Animes]  WITH CHECK ADD  CONSTRAINT [FK_Animes_Estado] FOREIGN KEY([IDDeEstado])
REFERENCES [animeyt].[Estado] ([IDDeEstado])
GO
ALTER TABLE [animeyt].[Animes] CHECK CONSTRAINT [FK_Animes_Estado]
GO
ALTER TABLE [animeyt].[Animes]  WITH CHECK ADD  CONSTRAINT [FK_Animes_Tipo] FOREIGN KEY([IDDeTipo])
REFERENCES [animeyt].[Tipo] ([IDDeTipo])
GO
ALTER TABLE [animeyt].[Animes] CHECK CONSTRAINT [FK_Animes_Tipo]
GO
ALTER TABLE [animeyt].[Capitulos]  WITH CHECK ADD  CONSTRAINT [FK_Capitulos_Animes] FOREIGN KEY([IDDeAnime])
REFERENCES [animeyt].[Animes] ([IDDeAnime])
GO
ALTER TABLE [animeyt].[Capitulos] CHECK CONSTRAINT [FK_Capitulos_Animes]
GO
ALTER TABLE [animeyt].[Cate_Animes]  WITH CHECK ADD  CONSTRAINT [FK_Cate_Animes_Animes] FOREIGN KEY([IDDeAnime])
REFERENCES [animeyt].[Animes] ([IDDeAnime])
GO
ALTER TABLE [animeyt].[Cate_Animes] CHECK CONSTRAINT [FK_Cate_Animes_Animes]
GO
ALTER TABLE [animeyt].[Cate_Animes]  WITH CHECK ADD  CONSTRAINT [FK_Cate_Animes_Categoria] FOREIGN KEY([IDDeCategoria])
REFERENCES [animeyt].[Categoria] ([IDDeCategoria])
GO
ALTER TABLE [animeyt].[Cate_Animes] CHECK CONSTRAINT [FK_Cate_Animes_Categoria]
GO
ALTER TABLE [BlogHistoria].[Autores]  WITH CHECK ADD  CONSTRAINT [FK_Autores_Usuarios_IdUsuario] FOREIGN KEY([IdUsuario])
REFERENCES [BlogHistoria].[Usuarios] ([IdUsuario])
GO
ALTER TABLE [BlogHistoria].[Autores] CHECK CONSTRAINT [FK_Autores_Usuarios_IdUsuario]
GO
ALTER TABLE [BlogHistoria].[Comentarios]  WITH CHECK ADD  CONSTRAINT [FK_Comentarios_Comentarios_IdUsuario] FOREIGN KEY([IdUsuario])
REFERENCES [BlogHistoria].[Usuarios] ([IdUsuario])
GO
ALTER TABLE [BlogHistoria].[Comentarios] CHECK CONSTRAINT [FK_Comentarios_Comentarios_IdUsuario]
GO
ALTER TABLE [BlogHistoria].[Entradas]  WITH CHECK ADD  CONSTRAINT [FK_Entrada_Categorias_IdCategoria] FOREIGN KEY([Categoria])
REFERENCES [BlogHistoria].[Categorias] ([IdCategoria])
GO
ALTER TABLE [BlogHistoria].[Entradas] CHECK CONSTRAINT [FK_Entrada_Categorias_IdCategoria]
GO
ALTER TABLE [mcu].[actors_films]  WITH CHECK ADD  CONSTRAINT [actors_films_actor_id_fk] FOREIGN KEY([actor_id])
REFERENCES [mcu].[actors] ([actor_id])
ON UPDATE CASCADE
ON DELETE CASCADE
GO
ALTER TABLE [mcu].[actors_films] CHECK CONSTRAINT [actors_films_actor_id_fk]
GO
ALTER TABLE [mcu].[actors_films]  WITH CHECK ADD  CONSTRAINT [actors_films_film_id_fk] FOREIGN KEY([film_id])
REFERENCES [mcu].[films] ([film_id])
ON UPDATE CASCADE
ON DELETE CASCADE
GO
ALTER TABLE [mcu].[actors_films] CHECK CONSTRAINT [actors_films_film_id_fk]
GO
ALTER TABLE [mcu].[actors_series]  WITH CHECK ADD  CONSTRAINT [actors_series_actor_id_fk] FOREIGN KEY([actors_id])
REFERENCES [mcu].[actors] ([actor_id])
ON UPDATE CASCADE
ON DELETE CASCADE
GO
ALTER TABLE [mcu].[actors_series] CHECK CONSTRAINT [actors_series_actor_id_fk]
GO
ALTER TABLE [mcu].[actors_series]  WITH CHECK ADD  CONSTRAINT [actors_series_series_id_fk] FOREIGN KEY([series_id])
REFERENCES [mcu].[series] ([series_id])
ON UPDATE CASCADE
ON DELETE CASCADE
GO
ALTER TABLE [mcu].[actors_series] CHECK CONSTRAINT [actors_series_series_id_fk]
GO
ALTER TABLE [mcu].[film_comments]  WITH CHECK ADD  CONSTRAINT [film_comments_film_id_fk] FOREIGN KEY([film_id])
REFERENCES [mcu].[films] ([film_id])
ON UPDATE CASCADE
ON DELETE CASCADE
GO
ALTER TABLE [mcu].[film_comments] CHECK CONSTRAINT [film_comments_film_id_fk]
GO
ALTER TABLE [mcu].[film_comments]  WITH CHECK ADD  CONSTRAINT [film_comments_user_id_fk] FOREIGN KEY([user_id])
REFERENCES [mcu].[users] ([user_id])
ON UPDATE CASCADE
ON DELETE CASCADE
GO
ALTER TABLE [mcu].[film_comments] CHECK CONSTRAINT [film_comments_user_id_fk]
GO
ALTER TABLE [mcu].[film_valorations]  WITH CHECK ADD  CONSTRAINT [film_valorations_film_id_fk] FOREIGN KEY([film_id])
REFERENCES [mcu].[films] ([film_id])
ON UPDATE CASCADE
ON DELETE CASCADE
GO
ALTER TABLE [mcu].[film_valorations] CHECK CONSTRAINT [film_valorations_film_id_fk]
GO
ALTER TABLE [mcu].[film_valorations]  WITH CHECK ADD  CONSTRAINT [film_valorations_user_id_fk] FOREIGN KEY([user_id])
REFERENCES [mcu].[users] ([user_id])
ON UPDATE CASCADE
ON DELETE CASCADE
GO
ALTER TABLE [mcu].[film_valorations] CHECK CONSTRAINT [film_valorations_user_id_fk]
GO
ALTER TABLE [mcu].[films]  WITH CHECK ADD  CONSTRAINT [films_director_id_fk] FOREIGN KEY([director_id])
REFERENCES [mcu].[directors] ([id])
ON UPDATE CASCADE
ON DELETE CASCADE
GO
ALTER TABLE [mcu].[films] CHECK CONSTRAINT [films_director_id_fk]
GO
ALTER TABLE [mcu].[series]  WITH CHECK ADD  CONSTRAINT [series_director_id_fk] FOREIGN KEY([director_id])
REFERENCES [mcu].[directors] ([id])
ON UPDATE CASCADE
ON DELETE CASCADE
GO
ALTER TABLE [mcu].[series] CHECK CONSTRAINT [series_director_id_fk]
GO
ALTER TABLE [mcu].[series_comments]  WITH CHECK ADD  CONSTRAINT [series_comments_series_id_fk] FOREIGN KEY([series_id])
REFERENCES [mcu].[series] ([series_id])
ON UPDATE CASCADE
ON DELETE CASCADE
GO
ALTER TABLE [mcu].[series_comments] CHECK CONSTRAINT [series_comments_series_id_fk]
GO
ALTER TABLE [mcu].[series_comments]  WITH CHECK ADD  CONSTRAINT [series_comments_user_id_fk] FOREIGN KEY([user_id])
REFERENCES [mcu].[users] ([user_id])
ON UPDATE CASCADE
ON DELETE CASCADE
GO
ALTER TABLE [mcu].[series_comments] CHECK CONSTRAINT [series_comments_user_id_fk]
GO
ALTER TABLE [mcu].[series_valorations]  WITH CHECK ADD  CONSTRAINT [series_valorations_series_id_fk] FOREIGN KEY([series_id])
REFERENCES [mcu].[series] ([series_id])
ON UPDATE CASCADE
ON DELETE CASCADE
GO
ALTER TABLE [mcu].[series_valorations] CHECK CONSTRAINT [series_valorations_series_id_fk]
GO
ALTER TABLE [mcu].[series_valorations]  WITH CHECK ADD  CONSTRAINT [series_valorations_user_id_fk] FOREIGN KEY([user_id])
REFERENCES [mcu].[users] ([user_id])
ON UPDATE CASCADE
ON DELETE CASCADE
GO
ALTER TABLE [mcu].[series_valorations] CHECK CONSTRAINT [series_valorations_user_id_fk]
GO
ALTER TABLE [Minecraft].[Mobs]  WITH CHECK ADD  CONSTRAINT [FK_Mobs_Biomes] FOREIGN KEY([biome_id])
REFERENCES [Minecraft].[Biomes] ([biome_id])
GO
ALTER TABLE [Minecraft].[Mobs] CHECK CONSTRAINT [FK_Mobs_Biomes]
GO
ALTER TABLE [Minecraft].[Mobs]  WITH CHECK ADD  CONSTRAINT [FK_Mobs_Tools] FOREIGN KEY([tool_id])
REFERENCES [Minecraft].[Tools] ([tool_id])
GO
ALTER TABLE [Minecraft].[Mobs] CHECK CONSTRAINT [FK_Mobs_Tools]
GO
ALTER TABLE [Minecraft].[Structures]  WITH CHECK ADD  CONSTRAINT [FK_Structures_Biomes] FOREIGN KEY([biome_id])
REFERENCES [Minecraft].[Biomes] ([biome_id])
GO
ALTER TABLE [Minecraft].[Structures] CHECK CONSTRAINT [FK_Structures_Biomes]
GO
ALTER TABLE [Minecraft].[Structures]  WITH CHECK ADD  CONSTRAINT [FK_Structures_Dimensions] FOREIGN KEY([dimension_id])
REFERENCES [Minecraft].[Dimensions] ([dimension_id])
GO
ALTER TABLE [Minecraft].[Structures] CHECK CONSTRAINT [FK_Structures_Dimensions]
GO
ALTER TABLE [Minecraft].[Structures]  WITH CHECK ADD  CONSTRAINT [FK_Structures_Tools] FOREIGN KEY([tool_id])
REFERENCES [Minecraft].[Tools] ([tool_id])
GO
ALTER TABLE [Minecraft].[Structures] CHECK CONSTRAINT [FK_Structures_Tools]
GO
ALTER TABLE [Moto].[Comentaries]  WITH CHECK ADD  CONSTRAINT [FK_Comentaries_Meetings] FOREIGN KEY([MeetingID])
REFERENCES [Moto].[Meetings] ([MeetingID])
GO
ALTER TABLE [Moto].[Comentaries] CHECK CONSTRAINT [FK_Comentaries_Meetings]
GO
ALTER TABLE [Moto].[Comentaries]  WITH CHECK ADD  CONSTRAINT [FK_Comentaries_Usuarios] FOREIGN KEY([UserID])
REFERENCES [Moto].[Usuarios] ([UserID])
GO
ALTER TABLE [Moto].[Comentaries] CHECK CONSTRAINT [FK_Comentaries_Usuarios]
GO
ALTER TABLE [Moto].[Meetings]  WITH CHECK ADD  CONSTRAINT [FK_Meetings_Usuarios] FOREIGN KEY([UserID])
REFERENCES [Moto].[Usuarios] ([UserID])
GO
ALTER TABLE [Moto].[Meetings] CHECK CONSTRAINT [FK_Meetings_Usuarios]
GO
ALTER TABLE [Vinos].[Order_Details]  WITH CHECK ADD  CONSTRAINT [FK_Order_Details_Orders] FOREIGN KEY([Order_Id])
REFERENCES [Vinos].[Orders] ([Order_Id])
GO
ALTER TABLE [Vinos].[Order_Details] CHECK CONSTRAINT [FK_Order_Details_Orders]
GO
ALTER TABLE [Vinos].[Order_Details]  WITH CHECK ADD  CONSTRAINT [FK_Order_Details_Wines] FOREIGN KEY([Wine_Id])
REFERENCES [Vinos].[Wines] ([Wine_Id])
GO
ALTER TABLE [Vinos].[Order_Details] CHECK CONSTRAINT [FK_Order_Details_Wines]
GO
ALTER TABLE [Vinos].[Orders]  WITH CHECK ADD  CONSTRAINT [FK_Orders_Users] FOREIGN KEY([User_Id])
REFERENCES [Vinos].[Users] ([User_Id])
GO
ALTER TABLE [Vinos].[Orders] CHECK CONSTRAINT [FK_Orders_Users]
GO
ALTER TABLE [Vinos].[Wines]  WITH CHECK ADD  CONSTRAINT [FK_CategoryID] FOREIGN KEY([Category_Id])
REFERENCES [Vinos].[Categories] ([Category_Id])
GO
ALTER TABLE [Vinos].[Wines] CHECK CONSTRAINT [FK_CategoryID]
GO
ALTER TABLE [Vinos].[Wines]  WITH CHECK ADD  CONSTRAINT [FK_WineryID] FOREIGN KEY([Winery_Id])
REFERENCES [Vinos].[Wineries] ([Winery_Id])
GO
ALTER TABLE [Vinos].[Wines] CHECK CONSTRAINT [FK_WineryID]
GO
ALTER TABLE [Zapatazo].[Stock]  WITH CHECK ADD  CONSTRAINT [FK_Stock_Almacen] FOREIGN KEY([ID_Almacen])
REFERENCES [Zapatazo].[Almacen] ([ID_Almacen])
GO
ALTER TABLE [Zapatazo].[Stock] CHECK CONSTRAINT [FK_Stock_Almacen]
GO
ALTER TABLE [Zapatazo].[Stock]  WITH CHECK ADD  CONSTRAINT [FK_Stock_Tallaje] FOREIGN KEY([ID_Talla])
REFERENCES [Zapatazo].[Tallaje] ([ID_Talla])
GO
ALTER TABLE [Zapatazo].[Stock] CHECK CONSTRAINT [FK_Stock_Tallaje]
GO
ALTER TABLE [Zapatazo].[Stock]  WITH CHECK ADD  CONSTRAINT [FK_Stock_Zapatos] FOREIGN KEY([CodZapato])
REFERENCES [Zapatazo].[Zapatos] ([CodZapato])
GO
ALTER TABLE [Zapatazo].[Stock] CHECK CONSTRAINT [FK_Stock_Zapatos]
GO
ALTER TABLE [Zapatazo].[Zapatos]  WITH CHECK ADD  CONSTRAINT [FK_Zapatos_Categorias] FOREIGN KEY([CodCategoria])
REFERENCES [Zapatazo].[Categorias] ([CodCategoria])
GO
ALTER TABLE [Zapatazo].[Zapatos] CHECK CONSTRAINT [FK_Zapatos_Categorias]
GO
ALTER TABLE [Zapatazo].[Zapatos]  WITH CHECK ADD  CONSTRAINT [FK_Zapatos_Marca] FOREIGN KEY([ID_Marca])
REFERENCES [Zapatazo].[Marca] ([ID_Marca])
GO
ALTER TABLE [Zapatazo].[Zapatos] CHECK CONSTRAINT [FK_Zapatos_Marca]
GO
ALTER TABLE [Zapatazo].[Cliente]  WITH CHECK ADD  CONSTRAINT [CK_ClienGenero] CHECK  (([Genero]='H' OR [Genero]='M' OR [Genero]='O'))
GO
ALTER TABLE [Zapatazo].[Cliente] CHECK CONSTRAINT [CK_ClienGenero]
GO
ALTER TABLE [Zapatazo].[Zapatos]  WITH CHECK ADD  CONSTRAINT [CK_Zap_Gen] CHECK  (([Genero]='H' OR [Genero]='M' OR [Genero]='U'))
GO
ALTER TABLE [Zapatazo].[Zapatos] CHECK CONSTRAINT [CK_Zap_Gen]
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Order information
like Date, Amount' , @level0type=N'SCHEMA',@level0name=N'Zapatazo', @level1type=N'TABLE',@level1name=N'Categorias'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Genero=''H''or Genero=''M''or Genero=''O''' , @level0type=N'SCHEMA',@level0name=N'Zapatazo', @level1type=N'TABLE',@level1name=N'Cliente', @level2type=N'CONSTRAINT',@level2name=N'CK_ClienGenero'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Basic information 
about Product' , @level0type=N'SCHEMA',@level0name=N'Zapatazo', @level1type=N'TABLE',@level1name=N'Marca'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Basic information 
about Supplier' , @level0type=N'SCHEMA',@level0name=N'Zapatazo', @level1type=N'TABLE',@level1name=N'Tallaje'
GO
