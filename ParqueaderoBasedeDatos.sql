USE [PARKING]
GO
/****** Object:  Table [dbo].[Clientes]    Script Date: 11/29/2022 12:50:14 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Clientes](
	[idcliente] [nchar](10) NOT NULL,
	[nombre] [nchar](20) NULL,
	[apellido] [nchar](20) NOT NULL,
	[genero] [nchar](10) NULL,
	[telefono] [nchar](10) NULL,
 CONSTRAINT [PK_Clientes_1] PRIMARY KEY CLUSTERED 
(
	[idcliente] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ConsultarFactura]    Script Date: 11/29/2022 12:50:14 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ConsultarFactura](
	[idparqueadero] [int] NOT NULL,
	[cedula] [nchar](10) NULL,
	[placa] [nchar](10) NULL,
	[marca] [nchar](10) NULL,
	[modelo] [nchar](15) NULL,
	[color] [nchar](15) NULL,
	[fechallegada] [nchar](10) NULL,
	[valorhora] [int] NULL,
	[fechasalida] [nchar](20) NULL,
	[horasalida] [nchar](20) NULL,
	[total] [nchar](10) NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Parqueadero]    Script Date: 11/29/2022 12:50:14 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Parqueadero](
	[idparqueadero] [int] NOT NULL,
	[idcliente] [nchar](10) NULL,
	[placa] [nchar](10) NULL,
	[marca] [nchar](10) NULL,
	[modelo] [nchar](10) NULL,
	[color] [nchar](15) NULL,
	[fechallegada] [date] NULL,
	[fechasalida] [date] NULL,
	[tipoveh] [nchar](10) NULL,
	[valorhora] [int] NULL,
	[total] [nchar](10) NULL,
 CONSTRAINT [PK_Parqueadero] PRIMARY KEY CLUSTERED 
(
	[idparqueadero] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Tipos_Vehiculos]    Script Date: 11/29/2022 12:50:14 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Tipos_Vehiculos](
	[id] [int] NOT NULL,
	[tipo] [nchar](40) NULL,
	[valorHora] [nchar](10) NULL,
 CONSTRAINT [PK_Tipos_Vehiculos] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[usuario]    Script Date: 11/29/2022 12:50:14 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[usuario](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[usuario] [varchar](50) NULL,
	[password] [varchar](50) NULL,
 CONSTRAINT [PK_usuario] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Vehiculos]    Script Date: 11/29/2022 12:50:14 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Vehiculos](
	[idcliente] [nchar](10) NOT NULL,
	[placa] [nchar](10) NOT NULL,
	[marca] [nchar](10) NULL,
	[modelo] [nchar](10) NULL,
	[color] [nchar](10) NULL,
	[fechallegada] [datetime] NULL,
 CONSTRAINT [PK_Vehiculos] PRIMARY KEY CLUSTERED 
(
	[placa] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY],
UNIQUE NONCLUSTERED 
(
	[idcliente] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[ConsultarFactura]  WITH CHECK ADD  CONSTRAINT [FK_ConsultarFactura_Parqueadero] FOREIGN KEY([idparqueadero])
REFERENCES [dbo].[Parqueadero] ([idparqueadero])
GO
ALTER TABLE [dbo].[ConsultarFactura] CHECK CONSTRAINT [FK_ConsultarFactura_Parqueadero]
GO
ALTER TABLE [dbo].[Parqueadero]  WITH CHECK ADD  CONSTRAINT [FK_Parqueadero_Clientes] FOREIGN KEY([idcliente])
REFERENCES [dbo].[Clientes] ([idcliente])
GO
ALTER TABLE [dbo].[Parqueadero] CHECK CONSTRAINT [FK_Parqueadero_Clientes]
GO
ALTER TABLE [dbo].[Parqueadero]  WITH CHECK ADD  CONSTRAINT [FK_Parqueadero_Vehiculos] FOREIGN KEY([placa])
REFERENCES [dbo].[Vehiculos] ([placa])
GO
ALTER TABLE [dbo].[Parqueadero] CHECK CONSTRAINT [FK_Parqueadero_Vehiculos]
GO
ALTER TABLE [dbo].[Vehiculos]  WITH CHECK ADD  CONSTRAINT [FK_Vehiculos_Clientes] FOREIGN KEY([idcliente])
REFERENCES [dbo].[Clientes] ([idcliente])
GO
ALTER TABLE [dbo].[Vehiculos] CHECK CONSTRAINT [FK_Vehiculos_Clientes]
GO
/****** Object:  StoredProcedure [dbo].[cargarvehiculo]    Script Date: 11/29/2022 12:50:14 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create proc [dbo].[cargarvehiculo]
as
select id, tipo, valorhora from Tipos_Vehiculos;
GO
/****** Object:  StoredProcedure [dbo].[pr_tipovehiculo]    Script Date: 11/29/2022 12:50:14 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create proc [dbo].[pr_tipovehiculo] 
as 
select tipo,valorHora from tipos_vehiculos;
GO
/****** Object:  StoredProcedure [dbo].[SP_CARGARCLIENTES]    Script Date: 11/29/2022 12:50:14 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[SP_CARGARCLIENTES]
AS 
SELECT idcliente, nombre from Clientes
GO
/****** Object:  StoredProcedure [dbo].[USP_Listado_cli]    Script Date: 11/29/2022 12:50:14 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
Create Procedure [dbo].[USP_Listado_cli]
@cTexto varchar(30)=''
as
select idcliente,nombre,apellido,genero,telefono 
from clientes
GO
/****** Object:  StoredProcedure [dbo].[USP_Listado_Parqueadero]    Script Date: 11/29/2022 12:50:14 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
Create Procedure [dbo].[USP_Listado_Parqueadero]
@cTexto varchar(30)=''
as
select idcliente,placa,marca,modelo,color,fechallegada,fechasalida,valorhora,total
from Parqueadero;
GO
/****** Object:  StoredProcedure [dbo].[USP_Listado_vehi]    Script Date: 11/29/2022 12:50:14 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
Create Procedure [dbo].[USP_Listado_vehi]
@cTexto varchar(30)=''
as
select idcliente,placa,marca,modelo,color,fechallegada
from Vehiculos
GO
