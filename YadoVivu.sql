USE [YadodVivu]
GO
/****** Object:  Table [dbo].[Activities]    Script Date: 5/26/2023 9:38:10 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Activities](
	[Activity_ID] [int] IDENTITY(1,1) NOT NULL,
	[ActivityName] [nvarchar](50) NULL,
	[Tour_ID] [int] NULL,
	[StartTime] [datetime] NULL,
	[EndTime] [datetime] NULL,
	[Landscape_Address] [nvarchar](50) NULL,
PRIMARY KEY CLUSTERED 
(
	[Activity_ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Booking]    Script Date: 5/26/2023 9:38:11 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Booking](
	[Booking_ID] [int] IDENTITY(1,1) NOT NULL,
	[Order_ID] [int] NOT NULL,
	[Date] [datetime] NULL,
	[Promotion_ID] [int] NULL,
	[Tour_ID] [int] NOT NULL,
	[Tax] [float] NULL,
PRIMARY KEY CLUSTERED 
(
	[Booking_ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[City]    Script Date: 5/26/2023 9:38:11 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[City](
	[City_ID] [int] IDENTITY(1,1) NOT NULL,
	[CityName] [nvarchar](50) NULL,
PRIMARY KEY CLUSTERED 
(
	[City_ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Comment]    Script Date: 5/26/2023 9:38:11 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Comment](
	[UserID] [int] NULL,
	[Tour_ID] [int] NULL,
	[Content] [text] NULL,
	[status] [bit] NULL
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Hoadon]    Script Date: 5/26/2023 9:38:11 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Hoadon](
	[Order_ID] [int] IDENTITY(1,1) NOT NULL,
	[UserID] [int] NOT NULL,
	[Date] [datetime] NULL,
	[Promotion_ID] [int] NULL,
	[Tax] [float] NULL,
PRIMARY KEY CLUSTERED 
(
	[Order_ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Price]    Script Date: 5/26/2023 9:38:11 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Price](
	[Price_ID] [int] IDENTITY(1,1) NOT NULL,
	[Tour_ID] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[Price_ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Promotion]    Script Date: 5/26/2023 9:38:11 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Promotion](
	[Promotion_ID] [int] IDENTITY(1,1) NOT NULL,
	[Description] [varchar](50) NULL,
	[StartDate] [datetime] NULL,
	[EndDate] [datetime] NULL,
	[Amount] [float] NULL,
PRIMARY KEY CLUSTERED 
(
	[Promotion_ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Tour]    Script Date: 5/26/2023 9:38:11 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Tour](
	[Tour_ID] [int] IDENTITY(1,1) NOT NULL,
	[StartDate] [date] NULL,
	[EndDate] [date] NULL,
	[Hotel] [nvarchar](50) NULL,
	[City_ID] [int] NULL,
	[NumberPeople] [int] NULL,
	[Content] [nvarchar](50) NULL,
	[IMG] [nvarchar](500) NULL,
	[TotalPrice] [float] NULL,
	[status] [bit] NULL,
 CONSTRAINT [PK__Tour__D436A8633DE9EB21] PRIMARY KEY CLUSTERED 
(
	[Tour_ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Tour_Detail]    Script Date: 5/26/2023 9:38:11 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Tour_Detail](
	[ID] [int] IDENTITY(1,1) NOT NULL,
 CONSTRAINT [PK_Tour_Detail] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Tourist]    Script Date: 5/26/2023 9:38:11 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Tourist](
	[Tourist_ID] [int] IDENTITY(1,1) NOT NULL,
	[Booking_ID] [int] NOT NULL,
	[UserID] [int] NULL,
	[Tourist_Name] [nvarchar](50) NULL,
	[Gender] [char](1) NULL,
	[Birthday] [date] NULL,
	[Phone] [varchar](20) NULL,
	[CCCD] [varchar](20) NULL,
PRIMARY KEY CLUSTERED 
(
	[Tourist_ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Users]    Script Date: 5/26/2023 9:38:11 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Users](
	[UserID] [int] IDENTITY(1,1) NOT NULL,
	[FullName] [nvarchar](100) NOT NULL,
	[cmnd] [int] NULL,
	[Email] [nvarchar](100) NULL,
	[UserName] [nvarchar](30) NULL,
	[Password] [nvarchar](50) NULL,
	[Phone] [nvarchar](20) NULL,
	[UserType] [nvarchar](50) NULL,
	[IsBlocked] [bit] NULL,
	[Gender] [bit] NULL,
	[DOB] [nchar](10) NULL,
	[Address] [nvarchar](100) NULL,
 CONSTRAINT [PK__Users__1788CCAC15AD8B19] PRIMARY KEY CLUSTERED 
(
	[UserID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[City] ON 
GO
INSERT [dbo].[City] ([City_ID], [CityName]) VALUES (1, N'Vinh')
GO
INSERT [dbo].[City] ([City_ID], [CityName]) VALUES (2, N'Hà Nội')
GO
INSERT [dbo].[City] ([City_ID], [CityName]) VALUES (3, N'TP HCM')
GO
INSERT [dbo].[City] ([City_ID], [CityName]) VALUES (4, N'TP Vĩnh Phúc')
GO
SET IDENTITY_INSERT [dbo].[City] OFF
GO
SET IDENTITY_INSERT [dbo].[Tour] ON 
GO
INSERT [dbo].[Tour] ([Tour_ID], [StartDate], [EndDate], [Hotel], [City_ID], [NumberPeople], [Content], [IMG], [TotalPrice], [status]) VALUES (4, CAST(N'2022-03-03' AS Date), CAST(N'2022-05-05' AS Date), N'Villa', 1, 2, N'eqweqweqwe qwe qwe qwe qwe ', N'https://th.bing.com/th/id/OIP.UohZxsT4s61Ou-9SJ5DMDwHaFL?pid=ImgDet&rs=1', NULL, 1)
GO
INSERT [dbo].[Tour] ([Tour_ID], [StartDate], [EndDate], [Hotel], [City_ID], [NumberPeople], [Content], [IMG], [TotalPrice], [status]) VALUES (5, CAST(N'2022-08-01' AS Date), CAST(N'2022-09-01' AS Date), N'Hoàng Gia', 2, 3, N'qe qw eqwe qwe qwe qwe', N'https://th.bing.com/th/id/R.c4ed5b9a25ff6f551bf905f43fdb2058?rik=%2fNsEZfaQNmKDJg&pid=ImgRaw&r=0', NULL, 1)
GO
INSERT [dbo].[Tour] ([Tour_ID], [StartDate], [EndDate], [Hotel], [City_ID], [NumberPeople], [Content], [IMG], [TotalPrice], [status]) VALUES (6, CAST(N'2023-01-01' AS Date), CAST(N'2021-01-10' AS Date), N'Khách Sạn Trung Tâm', 1, 2, N'qw eqw eqw eqw eqw eqw eqw e', NULL, NULL, 1)
GO
INSERT [dbo].[Tour] ([Tour_ID], [StartDate], [EndDate], [Hotel], [City_ID], [NumberPeople], [Content], [IMG], [TotalPrice], [status]) VALUES (7, CAST(N'2023-01-01' AS Date), CAST(N'2023-01-05' AS Date), N'Nghệ Tĩnh', 1, 5, N'qwecdxcca cas dsa dasdqw', NULL, NULL, 1)
GO
INSERT [dbo].[Tour] ([Tour_ID], [StartDate], [EndDate], [Hotel], [City_ID], [NumberPeople], [Content], [IMG], [TotalPrice], [status]) VALUES (8, CAST(N'2023-02-01' AS Date), CAST(N'2023-02-08' AS Date), N'Tam Đảo', 4, 3, N' e1232 dwqsd 1 12e21 ', NULL, NULL, 1)
GO
SET IDENTITY_INSERT [dbo].[Tour] OFF
GO
SET IDENTITY_INSERT [dbo].[Users] ON 
GO
INSERT [dbo].[Users] ([UserID], [FullName], [cmnd], [Email], [UserName], [Password], [Phone], [UserType], [IsBlocked], [Gender], [DOB], [Address]) VALUES (3, N'tung', 1231231, N'tung@123.com', N'tung123', N'123', N'1231323 ', N'Admin', 1, NULL, NULL, NULL)
GO
INSERT [dbo].[Users] ([UserID], [FullName], [cmnd], [Email], [UserName], [Password], [Phone], [UserType], [IsBlocked], [Gender], [DOB], [Address]) VALUES (15, N'Đứctung', 123123123, N'tung020802@gmail.com', N'tung1231', N'eqwewqeqwewe', N'0972074620', N'User', 1, NULL, NULL, NULL)
GO
INSERT [dbo].[Users] ([UserID], [FullName], [cmnd], [Email], [UserName], [Password], [Phone], [UserType], [IsBlocked], [Gender], [DOB], [Address]) VALUES (16, N'dqwd', 123123, N'tungb123@', N'tung123', N'123', N'123123123', N'User', 1, NULL, NULL, NULL)
GO
INSERT [dbo].[Users] ([UserID], [FullName], [cmnd], [Email], [UserName], [Password], [Phone], [UserType], [IsBlocked], [Gender], [DOB], [Address]) VALUES (17, N'Đứctung', 123123123, N'tung020802@gmail.com', N'ewqeqwe', N'qweqweqweqwe', N'0972074620', N'User', 1, NULL, NULL, NULL)
GO
INSERT [dbo].[Users] ([UserID], [FullName], [cmnd], [Email], [UserName], [Password], [Phone], [UserType], [IsBlocked], [Gender], [DOB], [Address]) VALUES (18, N'Đứctung', 123122312, N'tung020802@gmail.com123123', N'213123213', N'qwdqwdqwd', N'0972074620', N'User', 1, NULL, NULL, NULL)
GO
INSERT [dbo].[Users] ([UserID], [FullName], [cmnd], [Email], [UserName], [Password], [Phone], [UserType], [IsBlocked], [Gender], [DOB], [Address]) VALUES (21, N'ngọc ngu', 11231231, N'ngocngu@gmail.com', N'1', N'1', N'0987654321', N'Admin', 1, NULL, NULL, NULL)
GO
INSERT [dbo].[Users] ([UserID], [FullName], [cmnd], [Email], [UserName], [Password], [Phone], [UserType], [IsBlocked], [Gender], [DOB], [Address]) VALUES (22, N'Sơn ', 123213213, N'son123@gmail.com', N'son123', N'qwewqeqw', N'0972074620', N'User', 1, NULL, NULL, NULL)
GO
SET IDENTITY_INSERT [dbo].[Users] OFF
GO
ALTER TABLE [dbo].[Comment] ADD  DEFAULT ((1)) FOR [status]
GO
ALTER TABLE [dbo].[Tour] ADD  DEFAULT ((1)) FOR [status]
GO
ALTER TABLE [dbo].[Activities]  WITH CHECK ADD  CONSTRAINT [fk_tblActivities] FOREIGN KEY([Tour_ID])
REFERENCES [dbo].[Tour] ([Tour_ID])
GO
ALTER TABLE [dbo].[Activities] CHECK CONSTRAINT [fk_tblActivities]
GO
ALTER TABLE [dbo].[Booking]  WITH CHECK ADD  CONSTRAINT [fk_tblTicket] FOREIGN KEY([Order_ID])
REFERENCES [dbo].[Hoadon] ([Order_ID])
GO
ALTER TABLE [dbo].[Booking] CHECK CONSTRAINT [fk_tblTicket]
GO
ALTER TABLE [dbo].[Booking]  WITH CHECK ADD  CONSTRAINT [fk_tblTicket1] FOREIGN KEY([Promotion_ID])
REFERENCES [dbo].[Promotion] ([Promotion_ID])
GO
ALTER TABLE [dbo].[Booking] CHECK CONSTRAINT [fk_tblTicket1]
GO
ALTER TABLE [dbo].[Booking]  WITH CHECK ADD  CONSTRAINT [fk_tblTicket2] FOREIGN KEY([Tour_ID])
REFERENCES [dbo].[Tour] ([Tour_ID])
GO
ALTER TABLE [dbo].[Booking] CHECK CONSTRAINT [fk_tblTicket2]
GO
ALTER TABLE [dbo].[Comment]  WITH CHECK ADD FOREIGN KEY([Tour_ID])
REFERENCES [dbo].[Tour] ([Tour_ID])
GO
ALTER TABLE [dbo].[Comment]  WITH CHECK ADD FOREIGN KEY([UserID])
REFERENCES [dbo].[Users] ([UserID])
GO
ALTER TABLE [dbo].[Hoadon]  WITH CHECK ADD  CONSTRAINT [fk_tblHoadon] FOREIGN KEY([UserID])
REFERENCES [dbo].[Users] ([UserID])
GO
ALTER TABLE [dbo].[Hoadon] CHECK CONSTRAINT [fk_tblHoadon]
GO
ALTER TABLE [dbo].[Price]  WITH CHECK ADD  CONSTRAINT [fk_tblPrice] FOREIGN KEY([Tour_ID])
REFERENCES [dbo].[Tour] ([Tour_ID])
GO
ALTER TABLE [dbo].[Price] CHECK CONSTRAINT [fk_tblPrice]
GO
ALTER TABLE [dbo].[Tour]  WITH CHECK ADD  CONSTRAINT [fk_tblTour] FOREIGN KEY([City_ID])
REFERENCES [dbo].[City] ([City_ID])
GO
ALTER TABLE [dbo].[Tour] CHECK CONSTRAINT [fk_tblTour]
GO
ALTER TABLE [dbo].[Tourist]  WITH CHECK ADD  CONSTRAINT [fk_tblPassenger2] FOREIGN KEY([Booking_ID])
REFERENCES [dbo].[Booking] ([Booking_ID])
GO
ALTER TABLE [dbo].[Tourist] CHECK CONSTRAINT [fk_tblPassenger2]
GO
ALTER TABLE [dbo].[Tourist]  WITH CHECK ADD CHECK  (([Gender]='M' OR [Gender]='F'))
GO
ALTER TABLE [dbo].[Users]  WITH CHECK ADD  CONSTRAINT [CK__Users__UserType__628FA481] CHECK  (([UserType]='Staff booking' OR [UserType]='User' OR [UserType]='Admin'))
GO
ALTER TABLE [dbo].[Users] CHECK CONSTRAINT [CK__Users__UserType__628FA481]
GO
