USE [master]
GO
/****** Object:  Database [HotelManagement]    Script Date: 03/19/2022 22:21:52 ******/
CREATE DATABASE [HotelManagement] ON  PRIMARY 
( NAME = N'HotelManagement', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL10_50.SQL2008EXPRESS\MSSQL\DATA\HotelManagement.mdf' , SIZE = 8192KB , MAXSIZE = UNLIMITED, FILEGROWTH = 65536KB )
 LOG ON 
( NAME = N'HotelManagement_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL10_50.SQL2008EXPRESS\MSSQL\DATA\HotelManagement_log.ldf' , SIZE = 8192KB , MAXSIZE = 2048GB , FILEGROWTH = 65536KB )
GO
ALTER DATABASE [HotelManagement] SET COMPATIBILITY_LEVEL = 100
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [HotelManagement].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [HotelManagement] SET ANSI_NULL_DEFAULT OFF
GO
ALTER DATABASE [HotelManagement] SET ANSI_NULLS OFF
GO
ALTER DATABASE [HotelManagement] SET ANSI_PADDING OFF
GO
ALTER DATABASE [HotelManagement] SET ANSI_WARNINGS OFF
GO
ALTER DATABASE [HotelManagement] SET ARITHABORT OFF
GO
ALTER DATABASE [HotelManagement] SET AUTO_CLOSE OFF
GO
ALTER DATABASE [HotelManagement] SET AUTO_CREATE_STATISTICS ON
GO
ALTER DATABASE [HotelManagement] SET AUTO_SHRINK OFF
GO
ALTER DATABASE [HotelManagement] SET AUTO_UPDATE_STATISTICS ON
GO
ALTER DATABASE [HotelManagement] SET CURSOR_CLOSE_ON_COMMIT OFF
GO
ALTER DATABASE [HotelManagement] SET CURSOR_DEFAULT  GLOBAL
GO
ALTER DATABASE [HotelManagement] SET CONCAT_NULL_YIELDS_NULL OFF
GO
ALTER DATABASE [HotelManagement] SET NUMERIC_ROUNDABORT OFF
GO
ALTER DATABASE [HotelManagement] SET QUOTED_IDENTIFIER OFF
GO
ALTER DATABASE [HotelManagement] SET RECURSIVE_TRIGGERS OFF
GO
ALTER DATABASE [HotelManagement] SET  DISABLE_BROKER
GO
ALTER DATABASE [HotelManagement] SET AUTO_UPDATE_STATISTICS_ASYNC OFF
GO
ALTER DATABASE [HotelManagement] SET DATE_CORRELATION_OPTIMIZATION OFF
GO
ALTER DATABASE [HotelManagement] SET TRUSTWORTHY OFF
GO
ALTER DATABASE [HotelManagement] SET ALLOW_SNAPSHOT_ISOLATION OFF
GO
ALTER DATABASE [HotelManagement] SET PARAMETERIZATION SIMPLE
GO
ALTER DATABASE [HotelManagement] SET READ_COMMITTED_SNAPSHOT OFF
GO
ALTER DATABASE [HotelManagement] SET HONOR_BROKER_PRIORITY OFF
GO
ALTER DATABASE [HotelManagement] SET  READ_WRITE
GO
ALTER DATABASE [HotelManagement] SET RECOVERY SIMPLE
GO
ALTER DATABASE [HotelManagement] SET  MULTI_USER
GO
ALTER DATABASE [HotelManagement] SET PAGE_VERIFY CHECKSUM
GO
ALTER DATABASE [HotelManagement] SET DB_CHAINING OFF
GO
USE [HotelManagement]
GO
/****** Object:  Table [dbo].[Employee]    Script Date: 03/19/2022 22:21:52 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Employee](
	[EmployeeID] [int] NOT NULL,
	[EmployeeName] [nvarchar](50) NULL,
	[PathImage] [varchar](max) NULL,
	[username] [nvarchar](50) NULL,
	[password] [nvarchar](30) NULL,
 CONSTRAINT [PK_Employee] PRIMARY KEY CLUSTERED 
(
	[EmployeeID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
INSERT [dbo].[Employee] ([EmployeeID], [EmployeeName], [PathImage], [username], [password]) VALUES (1, N'John', N'https://scontent.fsgn2-6.fna.fbcdn.net/v/t1.15752-9/273483442_364707825527102_9051969603426664808_n.png?_nc_cat=110&ccb=1-5&_nc_sid=ae9488&_nc_ohc=45lQkclqU8kAX_S98RK&_nc_ht=scontent.fsgn2-6.fna&oh=03_AVL4cAVe3jtaOuYsHEaNcog7VgB8i2HdvsccAGOXiDsmSA&oe=624C5213', N'employee1', N'1')
INSERT [dbo].[Employee] ([EmployeeID], [EmployeeName], [PathImage], [username], [password]) VALUES (2, N'Diya', N'https://scontent.fsgn2-1.fna.fbcdn.net/v/t1.15752-9/274337303_354705849714075_549337629208154249_n.png?_nc_cat=107&ccb=1-5&_nc_sid=ae9488&_nc_ohc=72bXgkQXtIUAX__wQbS&tn=bVoafena3DAZtJ9s&_nc_ht=scontent.fsgn2-1.fna&oh=03_AVJtNHOg_BItztJRmGGqOeWxkF5qhtc-BdSgK92jt4KlpA&oe=624D97A0', N'employee2', N'1')
INSERT [dbo].[Employee] ([EmployeeID], [EmployeeName], [PathImage], [username], [password]) VALUES (3, N'Eric', N'https://scontent.fsgn2-2.fna.fbcdn.net/v/t1.15752-9/274575916_678438790249894_468324753168779258_n.png?_nc_cat=103&ccb=1-5&_nc_sid=ae9488&_nc_ohc=qZW8LJiBb2wAX_yKV5s&_nc_ht=scontent.fsgn2-2.fna&oh=03_AVLFlSZvElSPVjJr4NjqvniEiP4BsiDgdVGbSCDa-m_ixQ&oe=624C266A', N'employee3', N'1')
INSERT [dbo].[Employee] ([EmployeeID], [EmployeeName], [PathImage], [username], [password]) VALUES (4, N'Amanda', N'...', N'employee', N'123')
/****** Object:  Table [dbo].[Customer]    Script Date: 03/19/2022 22:21:52 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Customer](
	[CustomerID] [int] NOT NULL,
	[NameCustomer] [nvarchar](50) NULL,
	[Nationality] [varchar](50) NULL,
 CONSTRAINT [PK_Customer] PRIMARY KEY CLUSTERED 
(
	[CustomerID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
INSERT [dbo].[Customer] ([CustomerID], [NameCustomer], [Nationality]) VALUES (1, N'Beatriz', N'India')
INSERT [dbo].[Customer] ([CustomerID], [NameCustomer], [Nationality]) VALUES (2, N'Charles', N'England')
INSERT [dbo].[Customer] ([CustomerID], [NameCustomer], [Nationality]) VALUES (3, N'Fatima', N'Norway')
INSERT [dbo].[Customer] ([CustomerID], [NameCustomer], [Nationality]) VALUES (4, N'Toan', N'Vietnam')
INSERT [dbo].[Customer] ([CustomerID], [NameCustomer], [Nationality]) VALUES (5, N'Peter', N'Bruney')
/****** Object:  Table [dbo].[Service]    Script Date: 03/19/2022 22:21:52 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Service](
	[ServiceID] [int] NOT NULL,
	[ServiceName] [nvarchar](50) NULL,
	[ServicePrice] [money] NULL,
 CONSTRAINT [PK_Service] PRIMARY KEY CLUSTERED 
(
	[ServiceID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
INSERT [dbo].[Service] ([ServiceID], [ServiceName], [ServicePrice]) VALUES (1, N'Cake', 30000.0000)
INSERT [dbo].[Service] ([ServiceID], [ServiceName], [ServicePrice]) VALUES (2, N'Soda', 20000.0000)
INSERT [dbo].[Service] ([ServiceID], [ServiceName], [ServicePrice]) VALUES (3, N'Juice', 15000.0000)
/****** Object:  Table [dbo].[RoomType]    Script Date: 03/19/2022 22:21:52 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[RoomType](
	[RoomTypeID] [int] NOT NULL,
	[RoomType] [varchar](15) NULL,
 CONSTRAINT [PK_RoomType] PRIMARY KEY CLUSTERED 
(
	[RoomTypeID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
INSERT [dbo].[RoomType] ([RoomTypeID], [RoomType]) VALUES (1, N'Normal')
INSERT [dbo].[RoomType] ([RoomTypeID], [RoomType]) VALUES (2, N'Good')
INSERT [dbo].[RoomType] ([RoomTypeID], [RoomType]) VALUES (3, N'VIP')
/****** Object:  Table [dbo].[Room]    Script Date: 03/19/2022 22:21:52 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Room](
	[RoomID] [int] NOT NULL,
	[RoomTypeID] [int] NULL,
	[RoomPrice] [money] NULL,
 CONSTRAINT [PK_Room] PRIMARY KEY CLUSTERED 
(
	[RoomID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
INSERT [dbo].[Room] ([RoomID], [RoomTypeID], [RoomPrice]) VALUES (1, 1, 50000.0000)
INSERT [dbo].[Room] ([RoomID], [RoomTypeID], [RoomPrice]) VALUES (2, 1, 50000.0000)
INSERT [dbo].[Room] ([RoomID], [RoomTypeID], [RoomPrice]) VALUES (3, 2, 100000.0000)
INSERT [dbo].[Room] ([RoomID], [RoomTypeID], [RoomPrice]) VALUES (4, 2, 100000.0000)
INSERT [dbo].[Room] ([RoomID], [RoomTypeID], [RoomPrice]) VALUES (5, 3, 150000.0000)
INSERT [dbo].[Room] ([RoomID], [RoomTypeID], [RoomPrice]) VALUES (6, 3, 150000.0000)
/****** Object:  Table [dbo].[Order]    Script Date: 03/19/2022 22:21:52 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Order](
	[OrderID] [int] NOT NULL,
	[EmployeeID] [int] NULL,
	[CustomerID] [int] NULL,
	[RoomID] [int] NULL,
	[RoomType] [varchar](15) NULL,
	[CheckInDay] [datetime] NULL,
	[NumberOfCustomer] [int] NULL,
	[OrderDay] [datetime] NULL,
	[Total] [money] NULL,
 CONSTRAINT [PK_Order] PRIMARY KEY CLUSTERED 
(
	[OrderID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
INSERT [dbo].[Order] ([OrderID], [EmployeeID], [CustomerID], [RoomID], [RoomType], [CheckInDay], [NumberOfCustomer], [OrderDay], [Total]) VALUES (1, 1, 1, 2, N'Normal', CAST(0x0000000100000000 AS DateTime), 1, CAST(0x0000AE4D00000000 AS DateTime), 50000.0000)
INSERT [dbo].[Order] ([OrderID], [EmployeeID], [CustomerID], [RoomID], [RoomType], [CheckInDay], [NumberOfCustomer], [OrderDay], [Total]) VALUES (2, 1, 2, 3, N'Good', CAST(0x0000000100000000 AS DateTime), 1, CAST(0x0000AE3000000000 AS DateTime), 70000.0000)
INSERT [dbo].[Order] ([OrderID], [EmployeeID], [CustomerID], [RoomID], [RoomType], [CheckInDay], [NumberOfCustomer], [OrderDay], [Total]) VALUES (3, 1, 4, 2, N'Normal', CAST(0x0000AE58017F536C AS DateTime), 1, CAST(0x0000AE58017F536C AS DateTime), 50000.0000)
INSERT [dbo].[Order] ([OrderID], [EmployeeID], [CustomerID], [RoomID], [RoomType], [CheckInDay], [NumberOfCustomer], [OrderDay], [Total]) VALUES (4, 1, 2, 1, N'Normal', CAST(0x0000AE5A01528C24 AS DateTime), 2, CAST(0x0000AE5A01528C24 AS DateTime), 50000.0000)
INSERT [dbo].[Order] ([OrderID], [EmployeeID], [CustomerID], [RoomID], [RoomType], [CheckInDay], [NumberOfCustomer], [OrderDay], [Total]) VALUES (5, 1, 4, 1, N'Normal', CAST(0x0000AE5D01491454 AS DateTime), 1, CAST(0x0000AE5D01491454 AS DateTime), 50000.0000)
/****** Object:  Table [dbo].[OrderDetail]    Script Date: 03/19/2022 22:21:52 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[OrderDetail](
	[DetailsID] [int] NOT NULL,
	[OderID] [int] NULL,
	[ServiceID] [int] NULL,
	[ServicePrice] [money] NULL,
	[Quantity] [int] NULL,
	[Total] [money] NULL,
 CONSTRAINT [PK_OrderDetail] PRIMARY KEY CLUSTERED 
(
	[DetailsID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
INSERT [dbo].[OrderDetail] ([DetailsID], [OderID], [ServiceID], [ServicePrice], [Quantity], [Total]) VALUES (1, 1, 1, 30000.0000, 1, 80000.0000)
INSERT [dbo].[OrderDetail] ([DetailsID], [OderID], [ServiceID], [ServicePrice], [Quantity], [Total]) VALUES (2, 1, 2, 20000.0000, 1, 90000.0000)
INSERT [dbo].[OrderDetail] ([DetailsID], [OderID], [ServiceID], [ServicePrice], [Quantity], [Total]) VALUES (3, 1, 3, 15000.0000, 2, 80000.0000)
/****** Object:  ForeignKey [FK_Room_RoomType]    Script Date: 03/19/2022 22:21:52 ******/
ALTER TABLE [dbo].[Room]  WITH CHECK ADD  CONSTRAINT [FK_Room_RoomType] FOREIGN KEY([RoomTypeID])
REFERENCES [dbo].[RoomType] ([RoomTypeID])
GO
ALTER TABLE [dbo].[Room] CHECK CONSTRAINT [FK_Room_RoomType]
GO
/****** Object:  ForeignKey [FK_Order_Customer]    Script Date: 03/19/2022 22:21:52 ******/
ALTER TABLE [dbo].[Order]  WITH CHECK ADD  CONSTRAINT [FK_Order_Customer] FOREIGN KEY([CustomerID])
REFERENCES [dbo].[Customer] ([CustomerID])
GO
ALTER TABLE [dbo].[Order] CHECK CONSTRAINT [FK_Order_Customer]
GO
/****** Object:  ForeignKey [FK_Order_Employee]    Script Date: 03/19/2022 22:21:52 ******/
ALTER TABLE [dbo].[Order]  WITH CHECK ADD  CONSTRAINT [FK_Order_Employee] FOREIGN KEY([EmployeeID])
REFERENCES [dbo].[Employee] ([EmployeeID])
GO
ALTER TABLE [dbo].[Order] CHECK CONSTRAINT [FK_Order_Employee]
GO
/****** Object:  ForeignKey [FK_Order_Room1]    Script Date: 03/19/2022 22:21:52 ******/
ALTER TABLE [dbo].[Order]  WITH CHECK ADD  CONSTRAINT [FK_Order_Room1] FOREIGN KEY([RoomID])
REFERENCES [dbo].[Room] ([RoomID])
GO
ALTER TABLE [dbo].[Order] CHECK CONSTRAINT [FK_Order_Room1]
GO
/****** Object:  ForeignKey [FK_OrderDetail_Order]    Script Date: 03/19/2022 22:21:52 ******/
ALTER TABLE [dbo].[OrderDetail]  WITH CHECK ADD  CONSTRAINT [FK_OrderDetail_Order] FOREIGN KEY([OderID])
REFERENCES [dbo].[Order] ([OrderID])
GO
ALTER TABLE [dbo].[OrderDetail] CHECK CONSTRAINT [FK_OrderDetail_Order]
GO
/****** Object:  ForeignKey [FK_OrderDetail_Service]    Script Date: 03/19/2022 22:21:52 ******/
ALTER TABLE [dbo].[OrderDetail]  WITH CHECK ADD  CONSTRAINT [FK_OrderDetail_Service] FOREIGN KEY([ServiceID])
REFERENCES [dbo].[Service] ([ServiceID])
GO
ALTER TABLE [dbo].[OrderDetail] CHECK CONSTRAINT [FK_OrderDetail_Service]
GO
