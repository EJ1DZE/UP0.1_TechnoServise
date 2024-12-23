USE [master]
GO
/****** Object:  Database [EquipmentRepair]    Script Date: 19.12.2024 17:08:51 ******/
CREATE DATABASE [EquipmentRepair]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'EquipmentRepair', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL16.MSSQLSERVER\MSSQL\DATA\EquipmentRepair.mdf' , SIZE = 8192KB , MAXSIZE = UNLIMITED, FILEGROWTH = 65536KB )
 LOG ON 
( NAME = N'EquipmentRepair_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL16.MSSQLSERVER\MSSQL\DATA\EquipmentRepair_log.ldf' , SIZE = 73728KB , MAXSIZE = 2048GB , FILEGROWTH = 65536KB )
 WITH CATALOG_COLLATION = DATABASE_DEFAULT, LEDGER = OFF
GO
ALTER DATABASE [EquipmentRepair] SET COMPATIBILITY_LEVEL = 160
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [EquipmentRepair].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [EquipmentRepair] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [EquipmentRepair] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [EquipmentRepair] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [EquipmentRepair] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [EquipmentRepair] SET ARITHABORT OFF 
GO
ALTER DATABASE [EquipmentRepair] SET AUTO_CLOSE OFF 
GO
ALTER DATABASE [EquipmentRepair] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [EquipmentRepair] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [EquipmentRepair] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [EquipmentRepair] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [EquipmentRepair] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [EquipmentRepair] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [EquipmentRepair] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [EquipmentRepair] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [EquipmentRepair] SET  DISABLE_BROKER 
GO
ALTER DATABASE [EquipmentRepair] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [EquipmentRepair] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [EquipmentRepair] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [EquipmentRepair] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [EquipmentRepair] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [EquipmentRepair] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [EquipmentRepair] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [EquipmentRepair] SET RECOVERY FULL 
GO
ALTER DATABASE [EquipmentRepair] SET  MULTI_USER 
GO
ALTER DATABASE [EquipmentRepair] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [EquipmentRepair] SET DB_CHAINING OFF 
GO
ALTER DATABASE [EquipmentRepair] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [EquipmentRepair] SET TARGET_RECOVERY_TIME = 60 SECONDS 
GO
ALTER DATABASE [EquipmentRepair] SET DELAYED_DURABILITY = DISABLED 
GO
ALTER DATABASE [EquipmentRepair] SET ACCELERATED_DATABASE_RECOVERY = OFF  
GO
EXEC sys.sp_db_vardecimal_storage_format N'EquipmentRepair', N'ON'
GO
ALTER DATABASE [EquipmentRepair] SET QUERY_STORE = ON
GO
ALTER DATABASE [EquipmentRepair] SET QUERY_STORE (OPERATION_MODE = READ_WRITE, CLEANUP_POLICY = (STALE_QUERY_THRESHOLD_DAYS = 30), DATA_FLUSH_INTERVAL_SECONDS = 900, INTERVAL_LENGTH_MINUTES = 60, MAX_STORAGE_SIZE_MB = 1000, QUERY_CAPTURE_MODE = AUTO, SIZE_BASED_CLEANUP_MODE = AUTO, MAX_PLANS_PER_QUERY = 200, WAIT_STATS_CAPTURE_MODE = ON)
GO
USE [EquipmentRepair]
GO
/****** Object:  Table [dbo].[Client]    Script Date: 19.12.2024 17:08:52 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Client](
	[client_id] [int] IDENTITY(1,1) NOT NULL,
	[client_name] [nvarchar](100) NULL,
	[client_surname] [nvarchar](100) NULL,
	[client_secondName] [nvarchar](100) NULL,
	[contact_info] [nvarchar](255) NULL,
PRIMARY KEY CLUSTERED 
(
	[client_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Equipment]    Script Date: 19.12.2024 17:08:52 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Equipment](
	[equipment_id] [int] IDENTITY(1,1) NOT NULL,
	[serial_number] [nvarchar](50) NULL,
	[type] [nvarchar](100) NULL,
	[description] [nvarchar](255) NULL,
 CONSTRAINT [PK__Equipmen__197068AF003BDF99] PRIMARY KEY CLUSTERED 
(
	[equipment_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[FaultType]    Script Date: 19.12.2024 17:08:52 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[FaultType](
	[fault_type_id] [int] IDENTITY(1,1) NOT NULL,
	[description] [nvarchar](100) NULL,
PRIMARY KEY CLUSTERED 
(
	[fault_type_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Position]    Script Date: 19.12.2024 17:08:52 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Position](
	[position_id] [int] IDENTITY(1,1) NOT NULL,
	[position_name] [nvarchar](100) NULL,
PRIMARY KEY CLUSTERED 
(
	[position_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Priority]    Script Date: 19.12.2024 17:08:52 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Priority](
	[priority_id] [int] IDENTITY(1,1) NOT NULL,
	[priority_name] [nvarchar](50) NULL,
PRIMARY KEY CLUSTERED 
(
	[priority_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Request]    Script Date: 19.12.2024 17:08:52 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Request](
	[request_id] [int] IDENTITY(1,1) NOT NULL,
	[date_created] [datetime] NULL,
	[date_ended] [datetime] NULL,
	[equipment_id] [int] NULL,
	[fault_type_id] [int] NULL,
	[problem_description] [nvarchar](255) NULL,
	[client_id] [int] NULL,
	[technician_id] [int] NULL,
	[status_id] [int] NULL,
	[priority_id] [int] NULL,
 CONSTRAINT [PK__Request__18D3B90FF3D72648] PRIMARY KEY CLUSTERED 
(
	[request_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[RequestLog]    Script Date: 19.12.2024 17:08:52 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[RequestLog](
	[log_id] [int] IDENTITY(1,1) NOT NULL,
	[request_id] [int] NULL,
	[date_changed] [datetime] NULL,
	[comment] [nvarchar](max) NULL,
 CONSTRAINT [PK__RequestL__9E2397E021172037] PRIMARY KEY CLUSTERED 
(
	[log_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Status]    Script Date: 19.12.2024 17:08:52 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Status](
	[status_id] [int] IDENTITY(1,1) NOT NULL,
	[status_name] [nvarchar](50) NULL,
PRIMARY KEY CLUSTERED 
(
	[status_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Technician]    Script Date: 19.12.2024 17:08:52 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Technician](
	[technician_id] [int] IDENTITY(1,1) NOT NULL,
	[technician_surname] [nvarchar](100) NULL,
	[technician_name] [nvarchar](100) NULL,
	[technician_secondName] [nvarchar](100) NULL,
	[position_id] [int] NULL,
	[contact_info] [varchar](255) NULL,
PRIMARY KEY CLUSTERED 
(
	[technician_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Users]    Script Date: 19.12.2024 17:08:52 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Users](
	[userID] [int] IDENTITY(1,1) NOT NULL,
	[Login] [nvarchar](100) NULL,
	[Password] [nvarchar](100) NULL,
	[TechnicianID] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[userID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[Client] ON 

INSERT [dbo].[Client] ([client_id], [client_name], [client_surname], [client_secondName], [contact_info]) VALUES (1, N'Иван', N'Иванов', N'Иванович', N'ivanov@yandex,ru')
INSERT [dbo].[Client] ([client_id], [client_name], [client_surname], [client_secondName], [contact_info]) VALUES (2, N'Мария', N'Петрова', N'Алексеевна', N'petrova@yandex.ru')
INSERT [dbo].[Client] ([client_id], [client_name], [client_surname], [client_secondName], [contact_info]) VALUES (3, N'Сергей', N'Сидоров', N'Петрович', N'sidorov@yandex.ru')
INSERT [dbo].[Client] ([client_id], [client_name], [client_surname], [client_secondName], [contact_info]) VALUES (4, N'Виталий', N'Клопов', N'Михайлович', N'klopov@yandex.ru')
INSERT [dbo].[Client] ([client_id], [client_name], [client_surname], [client_secondName], [contact_info]) VALUES (5, N'Михаил', N'Медведев', N'Александрович', N'medvedev@yandex.ru')
SET IDENTITY_INSERT [dbo].[Client] OFF
GO
SET IDENTITY_INSERT [dbo].[Equipment] ON 

INSERT [dbo].[Equipment] ([equipment_id], [serial_number], [type], [description]) VALUES (1, N'SN12345', N'Станок', N'Токарный станок')
INSERT [dbo].[Equipment] ([equipment_id], [serial_number], [type], [description]) VALUES (2, N'SN54321', N'Принтер', N'Цветной принтер')
INSERT [dbo].[Equipment] ([equipment_id], [serial_number], [type], [description]) VALUES (3, N'SN98765', N'Сервер', N'Сервер DELL')
INSERT [dbo].[Equipment] ([equipment_id], [serial_number], [type], [description]) VALUES (4, N'SN56789', N'Сканер', N'Сканер Phillips')
INSERT [dbo].[Equipment] ([equipment_id], [serial_number], [type], [description]) VALUES (5, N'SN34567', N'Паяльник', N'Стержневой паяльник')
SET IDENTITY_INSERT [dbo].[Equipment] OFF
GO
SET IDENTITY_INSERT [dbo].[FaultType] ON 

INSERT [dbo].[FaultType] ([fault_type_id], [description]) VALUES (1, N'Не включается')
INSERT [dbo].[FaultType] ([fault_type_id], [description]) VALUES (2, N'Выдает ошибку')
INSERT [dbo].[FaultType] ([fault_type_id], [description]) VALUES (3, N'Не печатает')
INSERT [dbo].[FaultType] ([fault_type_id], [description]) VALUES (4, N'Сбои в сети')
SET IDENTITY_INSERT [dbo].[FaultType] OFF
GO
SET IDENTITY_INSERT [dbo].[Position] ON 

INSERT [dbo].[Position] ([position_id], [position_name]) VALUES (1, N'Инженер')
INSERT [dbo].[Position] ([position_id], [position_name]) VALUES (2, N'Техник')
INSERT [dbo].[Position] ([position_id], [position_name]) VALUES (3, N'Менеджер')
SET IDENTITY_INSERT [dbo].[Position] OFF
GO
SET IDENTITY_INSERT [dbo].[Priority] ON 

INSERT [dbo].[Priority] ([priority_id], [priority_name]) VALUES (1, N'Низкий')
INSERT [dbo].[Priority] ([priority_id], [priority_name]) VALUES (2, N'Средний')
INSERT [dbo].[Priority] ([priority_id], [priority_name]) VALUES (3, N'Высокий')
SET IDENTITY_INSERT [dbo].[Priority] OFF
GO
SET IDENTITY_INSERT [dbo].[Request] ON 

INSERT [dbo].[Request] ([request_id], [date_created], [date_ended], [equipment_id], [fault_type_id], [problem_description], [client_id], [technician_id], [status_id], [priority_id]) VALUES (1, CAST(N'2024-11-06T00:00:00.000' AS DateTime), CAST(N'2024-12-15T00:00:00.000' AS DateTime), 1, 1, N'Не включается после перепада', 1, 1, 2, 3)
INSERT [dbo].[Request] ([request_id], [date_created], [date_ended], [equipment_id], [fault_type_id], [problem_description], [client_id], [technician_id], [status_id], [priority_id]) VALUES (2, CAST(N'2024-11-06T00:00:00.000' AS DateTime), CAST(N'2024-12-12T00:00:00.000' AS DateTime), 2, 2, N'Не печатает принтер', 2, 2, 2, 2)
INSERT [dbo].[Request] ([request_id], [date_created], [date_ended], [equipment_id], [fault_type_id], [problem_description], [client_id], [technician_id], [status_id], [priority_id]) VALUES (3, CAST(N'2024-11-06T16:43:29.423' AS DateTime), CAST(N'2024-12-20T00:00:00.000' AS DateTime), 3, 3, N'Не работает сервер', 3, 4, 2, 1)
INSERT [dbo].[Request] ([request_id], [date_created], [date_ended], [equipment_id], [fault_type_id], [problem_description], [client_id], [technician_id], [status_id], [priority_id]) VALUES (4, CAST(N'2024-11-06T00:00:00.000' AS DateTime), CAST(N'2024-12-01T00:00:00.000' AS DateTime), 4, 2, N'Не работает сканер', 4, 5, 3, 3)
INSERT [dbo].[Request] ([request_id], [date_created], [date_ended], [equipment_id], [fault_type_id], [problem_description], [client_id], [technician_id], [status_id], [priority_id]) VALUES (5, CAST(N'2024-11-06T00:00:00.000' AS DateTime), CAST(N'2024-12-20T00:00:00.000' AS DateTime), 5, 1, N'Не работает паяльник', 5, 2, 1, 2)
INSERT [dbo].[Request] ([request_id], [date_created], [date_ended], [equipment_id], [fault_type_id], [problem_description], [client_id], [technician_id], [status_id], [priority_id]) VALUES (6, CAST(N'2024-11-14T00:00:00.000' AS DateTime), CAST(N'2024-12-15T00:00:00.000' AS DateTime), 2, 3, N'Не печатает цветные фотографии', 2, 3, 2, 2)
INSERT [dbo].[Request] ([request_id], [date_created], [date_ended], [equipment_id], [fault_type_id], [problem_description], [client_id], [technician_id], [status_id], [priority_id]) VALUES (7, CAST(N'2024-12-18T00:00:00.000' AS DateTime), CAST(N'2025-01-04T00:00:00.000' AS DateTime), 2, 3, N'--', 2, 4, 2, 2)
INSERT [dbo].[Request] ([request_id], [date_created], [date_ended], [equipment_id], [fault_type_id], [problem_description], [client_id], [technician_id], [status_id], [priority_id]) VALUES (8, CAST(N'2024-12-18T00:00:00.000' AS DateTime), CAST(N'2025-01-15T00:00:00.000' AS DateTime), 3, 4, N'--', 4, 4, 2, 1)
INSERT [dbo].[Request] ([request_id], [date_created], [date_ended], [equipment_id], [fault_type_id], [problem_description], [client_id], [technician_id], [status_id], [priority_id]) VALUES (9, CAST(N'2024-12-18T00:00:00.000' AS DateTime), CAST(N'2025-01-26T00:00:00.000' AS DateTime), 4, 4, N'--', 5, 5, 1, 3)
SET IDENTITY_INSERT [dbo].[Request] OFF
GO
SET IDENTITY_INSERT [dbo].[RequestLog] ON 

INSERT [dbo].[RequestLog] ([log_id], [request_id], [date_changed], [comment]) VALUES (1, 4, CAST(N'2024-11-10T00:00:00.000' AS DateTime), NULL)
INSERT [dbo].[RequestLog] ([log_id], [request_id], [date_changed], [comment]) VALUES (8, 3, CAST(N'2024-12-02T04:04:29.813' AS DateTime), NULL)
INSERT [dbo].[RequestLog] ([log_id], [request_id], [date_changed], [comment]) VALUES (9, 2, CAST(N'2024-12-03T20:57:40.123' AS DateTime), NULL)
INSERT [dbo].[RequestLog] ([log_id], [request_id], [date_changed], [comment]) VALUES (10, 1, CAST(N'2024-12-18T14:24:14.713' AS DateTime), NULL)
INSERT [dbo].[RequestLog] ([log_id], [request_id], [date_changed], [comment]) VALUES (11, 7, CAST(N'2024-12-18T15:13:29.567' AS DateTime), NULL)
INSERT [dbo].[RequestLog] ([log_id], [request_id], [date_changed], [comment]) VALUES (12, 7, CAST(N'2024-12-18T15:30:40.890' AS DateTime), NULL)
INSERT [dbo].[RequestLog] ([log_id], [request_id], [date_changed], [comment]) VALUES (13, 8, CAST(N'2024-12-18T16:31:58.130' AS DateTime), NULL)
INSERT [dbo].[RequestLog] ([log_id], [request_id], [date_changed], [comment]) VALUES (14, 8, CAST(N'2024-12-18T16:32:32.800' AS DateTime), NULL)
SET IDENTITY_INSERT [dbo].[RequestLog] OFF
GO
SET IDENTITY_INSERT [dbo].[Status] ON 

INSERT [dbo].[Status] ([status_id], [status_name]) VALUES (1, N'В ожидании')
INSERT [dbo].[Status] ([status_id], [status_name]) VALUES (2, N'В работе')
INSERT [dbo].[Status] ([status_id], [status_name]) VALUES (3, N'Выполнен')
SET IDENTITY_INSERT [dbo].[Status] OFF
GO
SET IDENTITY_INSERT [dbo].[Technician] ON 

INSERT [dbo].[Technician] ([technician_id], [technician_surname], [technician_name], [technician_secondName], [position_id], [contact_info]) VALUES (1, N'Смирнов', N'Алексей', N'Иванович', 2, N'smirnov@yandex.ru')
INSERT [dbo].[Technician] ([technician_id], [technician_surname], [technician_name], [technician_secondName], [position_id], [contact_info]) VALUES (2, N'Кузнецов', N'Дмитрий', N'Петрович', 2, N'kuznetsov@yandex.ru')
INSERT [dbo].[Technician] ([technician_id], [technician_surname], [technician_name], [technician_secondName], [position_id], [contact_info]) VALUES (3, N'Новиков', N'Петр', N'Сергеевич', 3, N'novikov@yandex.ru')
INSERT [dbo].[Technician] ([technician_id], [technician_surname], [technician_name], [technician_secondName], [position_id], [contact_info]) VALUES (4, N'Никитин', N'Михаил', N'Евгеньевич', 3, N'nikitin@yandex.ru')
INSERT [dbo].[Technician] ([technician_id], [technician_surname], [technician_name], [technician_secondName], [position_id], [contact_info]) VALUES (5, N'Ложкин', N'Евгений', N'Андреевич', 2, N'loshkin@yandex.ru')
SET IDENTITY_INSERT [dbo].[Technician] OFF
GO
SET IDENTITY_INSERT [dbo].[Users] ON 

INSERT [dbo].[Users] ([userID], [Login], [Password], [TechnicianID]) VALUES (1, N'Smirnov', N'123', 1)
INSERT [dbo].[Users] ([userID], [Login], [Password], [TechnicianID]) VALUES (2, N'Kuznetsov', N'123', 2)
INSERT [dbo].[Users] ([userID], [Login], [Password], [TechnicianID]) VALUES (3, N'Novikov', N'123', 3)
INSERT [dbo].[Users] ([userID], [Login], [Password], [TechnicianID]) VALUES (4, N'Nikitin', N'456', 4)
INSERT [dbo].[Users] ([userID], [Login], [Password], [TechnicianID]) VALUES (5, N'Loshkin', N'321', 5)
SET IDENTITY_INSERT [dbo].[Users] OFF
GO
ALTER TABLE [dbo].[Request] ADD  CONSTRAINT [DF__Request__date_cr__45F365D3]  DEFAULT (getdate()) FOR [date_created]
GO
ALTER TABLE [dbo].[RequestLog] ADD  CONSTRAINT [DF__RequestLo__date___4E88ABD4]  DEFAULT (getdate()) FOR [date_changed]
GO
ALTER TABLE [dbo].[Request]  WITH CHECK ADD  CONSTRAINT [FK__Request__client___48CFD27E] FOREIGN KEY([client_id])
REFERENCES [dbo].[Client] ([client_id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[Request] CHECK CONSTRAINT [FK__Request__client___48CFD27E]
GO
ALTER TABLE [dbo].[Request]  WITH CHECK ADD  CONSTRAINT [FK__Request__equipme__46E78A0C] FOREIGN KEY([equipment_id])
REFERENCES [dbo].[Equipment] ([equipment_id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[Request] CHECK CONSTRAINT [FK__Request__equipme__46E78A0C]
GO
ALTER TABLE [dbo].[Request]  WITH CHECK ADD  CONSTRAINT [FK__Request__fault_t__47DBAE45] FOREIGN KEY([fault_type_id])
REFERENCES [dbo].[FaultType] ([fault_type_id])
ON DELETE SET NULL
GO
ALTER TABLE [dbo].[Request] CHECK CONSTRAINT [FK__Request__fault_t__47DBAE45]
GO
ALTER TABLE [dbo].[Request]  WITH CHECK ADD  CONSTRAINT [FK__Request__priorit__4BAC3F29] FOREIGN KEY([priority_id])
REFERENCES [dbo].[Priority] ([priority_id])
ON DELETE SET NULL
GO
ALTER TABLE [dbo].[Request] CHECK CONSTRAINT [FK__Request__priorit__4BAC3F29]
GO
ALTER TABLE [dbo].[Request]  WITH CHECK ADD  CONSTRAINT [FK__Request__status___4AB81AF0] FOREIGN KEY([status_id])
REFERENCES [dbo].[Status] ([status_id])
ON DELETE SET NULL
GO
ALTER TABLE [dbo].[Request] CHECK CONSTRAINT [FK__Request__status___4AB81AF0]
GO
ALTER TABLE [dbo].[Request]  WITH CHECK ADD  CONSTRAINT [FK__Request__technic__49C3F6B7] FOREIGN KEY([technician_id])
REFERENCES [dbo].[Technician] ([technician_id])
ON DELETE SET NULL
GO
ALTER TABLE [dbo].[Request] CHECK CONSTRAINT [FK__Request__technic__49C3F6B7]
GO
ALTER TABLE [dbo].[RequestLog]  WITH CHECK ADD  CONSTRAINT [FK__RequestLo__reque__4F7CD00D] FOREIGN KEY([request_id])
REFERENCES [dbo].[Request] ([request_id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[RequestLog] CHECK CONSTRAINT [FK__RequestLo__reque__4F7CD00D]
GO
ALTER TABLE [dbo].[Technician]  WITH CHECK ADD FOREIGN KEY([position_id])
REFERENCES [dbo].[Position] ([position_id])
ON DELETE SET NULL
GO
ALTER TABLE [dbo].[Users]  WITH CHECK ADD FOREIGN KEY([TechnicianID])
REFERENCES [dbo].[Technician] ([technician_id])
GO
USE [master]
GO
ALTER DATABASE [EquipmentRepair] SET  READ_WRITE 
GO
