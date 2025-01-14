USE [Assgn_PRJ301]
GO
/****** Object:  Table [dbo].[Account]    Script Date: 7/7/2024 3:36:50 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Account](
	[uID] [int] IDENTITY(1,1) NOT NULL,
	[user] [varchar](255) NULL,
	[pass] [varchar](255) NULL,
	[isSell] [int] NULL,
	[isAdmin] [int] NULL,
	[active] [bit] NULL,
PRIMARY KEY CLUSTERED 
(
	[uID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Cart]    Script Date: 7/7/2024 3:36:50 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Cart](
	[AccountID] [int] NOT NULL,
	[ProductID] [int] NOT NULL,
	[Amount] [int] NULL,
 CONSTRAINT [PK_Cart] PRIMARY KEY CLUSTERED 
(
	[AccountID] ASC,
	[ProductID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Category]    Script Date: 7/7/2024 3:36:50 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Category](
	[cid] [int] IDENTITY(1,1) NOT NULL,
	[cname] [nvarchar](50) NOT NULL,
 CONSTRAINT [PK_Category] PRIMARY KEY CLUSTERED 
(
	[cid] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[OrderDetail]    Script Date: 7/7/2024 3:36:50 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[OrderDetail](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[order_id] [int] NULL,
	[productName] [nvarchar](255) NULL,
	[productImage] [nvarchar](255) NULL,
	[productPrice] [float] NULL,
	[quantity] [int] NULL,
 CONSTRAINT [PK_OrderDetail] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Orders]    Script Date: 7/7/2024 3:36:50 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Orders](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[account_id] [int] NULL,
	[totalPrice] [float] NULL,
	[note] [nvarchar](255) NULL,
	[create_date] [date] NULL,
	[shipping_id] [int] NULL,
 CONSTRAINT [PK_Orders] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[product]    Script Date: 7/7/2024 3:36:50 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[product](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[name] [nvarchar](max) NULL,
	[image] [nvarchar](max) NULL,
	[price] [money] NULL,
	[title] [nvarchar](max) NULL,
	[description] [nvarchar](max) NULL,
	[cateID] [int] NULL,
	[sell_ID] [int] NULL,
 CONSTRAINT [PK_product] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Shipping]    Script Date: 7/7/2024 3:36:50 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Shipping](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[name] [nvarchar](255) NULL,
	[phone] [nvarchar](255) NULL,
	[address] [nvarchar](255) NULL,
 CONSTRAINT [PK_Shipping] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[Account] ON 

INSERT [dbo].[Account] ([uID], [user], [pass], [isSell], [isAdmin], [active]) VALUES (1, N'giang', N'123', 1, 1, 1)
INSERT [dbo].[Account] ([uID], [user], [pass], [isSell], [isAdmin], [active]) VALUES (2, N'Anjolie', N'SNZ6HE', 0, 1, 1)
INSERT [dbo].[Account] ([uID], [user], [pass], [isSell], [isAdmin], [active]) VALUES (3, N'Ferris', N'RXH3XJ', 0, 1, 1)
INSERT [dbo].[Account] ([uID], [user], [pass], [isSell], [isAdmin], [active]) VALUES (4, N'Katell', N'HWV8ZN', 0, 0, 0)
INSERT [dbo].[Account] ([uID], [user], [pass], [isSell], [isAdmin], [active]) VALUES (5, N'Zahir', N'NPX7OF', 1, 0, 0)
INSERT [dbo].[Account] ([uID], [user], [pass], [isSell], [isAdmin], [active]) VALUES (6, N'Conan', N'WIZ5VZ', 1, 0, 0)
INSERT [dbo].[Account] ([uID], [user], [pass], [isSell], [isAdmin], [active]) VALUES (7, N'Cade', N'ZSW2LU', 1, 0, 1)
INSERT [dbo].[Account] ([uID], [user], [pass], [isSell], [isAdmin], [active]) VALUES (8, N'Micah', N'RVV5SR', 0, 0, 0)
INSERT [dbo].[Account] ([uID], [user], [pass], [isSell], [isAdmin], [active]) VALUES (9, N'Rowan', N'VAI6XR', 1, 1, 1)
INSERT [dbo].[Account] ([uID], [user], [pass], [isSell], [isAdmin], [active]) VALUES (10, N'Kirby', N'DNX6JK', 1, 0, 1)
INSERT [dbo].[Account] ([uID], [user], [pass], [isSell], [isAdmin], [active]) VALUES (11, N'Tanisha', N'XWU7JP', 0, 1, 1)
INSERT [dbo].[Account] ([uID], [user], [pass], [isSell], [isAdmin], [active]) VALUES (12, N'Howard', N'TSR5MR', 0, 1, 1)
INSERT [dbo].[Account] ([uID], [user], [pass], [isSell], [isAdmin], [active]) VALUES (13, N'Tana', N'EHS8CM', 0, 0, 0)
INSERT [dbo].[Account] ([uID], [user], [pass], [isSell], [isAdmin], [active]) VALUES (14, N'Hadassah', N'YOY7ZW', 1, 0, 1)
INSERT [dbo].[Account] ([uID], [user], [pass], [isSell], [isAdmin], [active]) VALUES (15, N'Echo', N'IGE8TN', 1, 0, 1)
INSERT [dbo].[Account] ([uID], [user], [pass], [isSell], [isAdmin], [active]) VALUES (16, N'Slade', N'OFO6QS', 0, 0, 1)
INSERT [dbo].[Account] ([uID], [user], [pass], [isSell], [isAdmin], [active]) VALUES (17, N'Devin', N'IBM6RZ', 1, 0, 1)
INSERT [dbo].[Account] ([uID], [user], [pass], [isSell], [isAdmin], [active]) VALUES (18, N'Rowan', N'ZYS9VI', 1, 0, 1)
INSERT [dbo].[Account] ([uID], [user], [pass], [isSell], [isAdmin], [active]) VALUES (19, N'Rafael', N'WZA0IH', 1, 0, 1)
INSERT [dbo].[Account] ([uID], [user], [pass], [isSell], [isAdmin], [active]) VALUES (20, N'Madaline', N'QMW4EN', 0, 1, 1)
INSERT [dbo].[Account] ([uID], [user], [pass], [isSell], [isAdmin], [active]) VALUES (21, N'Vera', N'CZB2VM', 0, 1, 0)
INSERT [dbo].[Account] ([uID], [user], [pass], [isSell], [isAdmin], [active]) VALUES (22, N'Declan', N'ZKE7QZ', 1, 1, 0)
INSERT [dbo].[Account] ([uID], [user], [pass], [isSell], [isAdmin], [active]) VALUES (23, N'Katell', N'SFS0IW', 1, 1, 1)
INSERT [dbo].[Account] ([uID], [user], [pass], [isSell], [isAdmin], [active]) VALUES (24, N'Summer', N'PSQ7LC', 0, 1, 1)
INSERT [dbo].[Account] ([uID], [user], [pass], [isSell], [isAdmin], [active]) VALUES (25, N'Robin', N'KIS9AF', 1, 1, 1)
INSERT [dbo].[Account] ([uID], [user], [pass], [isSell], [isAdmin], [active]) VALUES (26, N'Dominique', N'IKV0IX', 0, 0, 1)
INSERT [dbo].[Account] ([uID], [user], [pass], [isSell], [isAdmin], [active]) VALUES (27, N'admin', N'123', 1, 1, 1)
INSERT [dbo].[Account] ([uID], [user], [pass], [isSell], [isAdmin], [active]) VALUES (28, N'mra', N'mra', 0, 0, 0)
INSERT [dbo].[Account] ([uID], [user], [pass], [isSell], [isAdmin], [active]) VALUES (29, N'mrb', N'123', 0, 0, 1)
INSERT [dbo].[Account] ([uID], [user], [pass], [isSell], [isAdmin], [active]) VALUES (30, N'Camden', N'123', 0, 0, 0)
INSERT [dbo].[Account] ([uID], [user], [pass], [isSell], [isAdmin], [active]) VALUES (31, N'manhdsz', N'123456', 0, 0, 1)
INSERT [dbo].[Account] ([uID], [user], [pass], [isSell], [isAdmin], [active]) VALUES (32, N'sfdfds', N'123', 0, 0, 0)
INSERT [dbo].[Account] ([uID], [user], [pass], [isSell], [isAdmin], [active]) VALUES (33, N'aaaaa', N'123', 0, 0, 1)
INSERT [dbo].[Account] ([uID], [user], [pass], [isSell], [isAdmin], [active]) VALUES (34, N'bbbb', N'1234', 0, 0, 1)
INSERT [dbo].[Account] ([uID], [user], [pass], [isSell], [isAdmin], [active]) VALUES (35, N'luong', N'123', 0, 0, 0)
INSERT [dbo].[Account] ([uID], [user], [pass], [isSell], [isAdmin], [active]) VALUES (38, N'mit', N'123', 0, 0, 1)
INSERT [dbo].[Account] ([uID], [user], [pass], [isSell], [isAdmin], [active]) VALUES (39, N'aaaaaaaa', N'123', 0, 0, 1)
INSERT [dbo].[Account] ([uID], [user], [pass], [isSell], [isAdmin], [active]) VALUES (40, N'bantq', N'123', 0, 0, 1)
INSERT [dbo].[Account] ([uID], [user], [pass], [isSell], [isAdmin], [active]) VALUES (41, N'thong', N'123', 0, 0, 1)
INSERT [dbo].[Account] ([uID], [user], [pass], [isSell], [isAdmin], [active]) VALUES (42, N'cd', N'1234', 0, 0, 1)
INSERT [dbo].[Account] ([uID], [user], [pass], [isSell], [isAdmin], [active]) VALUES (43, N'trungdk', N'123', 1, 1, 1)
INSERT [dbo].[Account] ([uID], [user], [pass], [isSell], [isAdmin], [active]) VALUES (44, N'viet', N'123', 0, 0, 0)
SET IDENTITY_INSERT [dbo].[Account] OFF
GO
SET IDENTITY_INSERT [dbo].[Category] ON 

INSERT [dbo].[Category] ([cid], [cname]) VALUES (1, N'POM')
INSERT [dbo].[Category] ([cid], [cname]) VALUES (2, N'POODLE')
INSERT [dbo].[Category] ([cid], [cname]) VALUES (3, N'GOLDEN')
INSERT [dbo].[Category] ([cid], [cname]) VALUES (4, N'DOLCE & GABBANA')
SET IDENTITY_INSERT [dbo].[Category] OFF
GO
SET IDENTITY_INSERT [dbo].[OrderDetail] ON 

INSERT [dbo].[OrderDetail] ([id], [order_id], [productName], [productImage], [productPrice], [quantity]) VALUES (46, 19, N'Chó Husky xám trắng mã HK324', N'https://pethouse.com.vn/wp-content/uploads/2022/08/anh-husky-020933-1507x1536.jpg', 140, 1)
INSERT [dbo].[OrderDetail] ([id], [order_id], [productName], [productImage], [productPrice], [quantity]) VALUES (47, 19, N'Chó Husky Nâu Đỏ mã SM1044', N'https://pethouse.com.vn/wp-content/uploads/2023/04/fdf6138aad40711e2851-1366x2048.jpg', 150, 1)
INSERT [dbo].[OrderDetail] ([id], [order_id], [productName], [productImage], [productPrice], [quantity]) VALUES (48, 20, N'Poodle Tiny Tai Gấu Màu SilverBeige Mã 1740', N'https://pethouse.com.vn/wp-content/uploads/2024/06/z5578273891713_b60fa38ed075994e37872531f2990f17-1134x1536.jpg', 140, 1)
SET IDENTITY_INSERT [dbo].[OrderDetail] OFF
GO
SET IDENTITY_INSERT [dbo].[Orders] ON 

INSERT [dbo].[Orders] ([id], [account_id], [totalPrice], [note], [create_date], [shipping_id]) VALUES (19, 1, 290, N'hang de vo', CAST(N'2022-04-23' AS Date), 19)
INSERT [dbo].[Orders] ([id], [account_id], [totalPrice], [note], [create_date], [shipping_id]) VALUES (20, 1, 140, N'', CAST(N'2024-07-07' AS Date), 20)
SET IDENTITY_INSERT [dbo].[Orders] OFF
GO
SET IDENTITY_INSERT [dbo].[product] ON 

INSERT [dbo].[product] ([id], [name], [image], [price], [title], [description], [cateID], [sell_ID]) VALUES (19, N'Poodle Tiny Tai Gấu Màu SilverBeige Mã 1740', N'https://pethouse.com.vn/wp-content/uploads/2024/06/z5578273891713_b60fa38ed075994e37872531f2990f17-1134x1536.jpg', 145.0000, N'Poodle Tiny Tai Gấu Màu SilverBeige ', N'Tháng tuổi: 2 tháng tuổi	Bố: Adin
Giới tính: Đực	Mẹ: Alex
Màu: Trắng vàng	Sức khỏe: Nhanh nhẹn, ăn uống tốt
Tình trạng: Có Sẵn	Vận chuyển: Miễn phí
Tẩy giun: 2 lần	Tiêm phòng: 1 mũi vacxin
Nguồn gốc: Thuần chủng, sinh sản tại Trại Pethouse	Đặc điểm: Lông dài', 2, 1)
INSERT [dbo].[product] ([id], [name], [image], [price], [title], [description], [cateID], [sell_ID]) VALUES (20, N'Chó Phốc Sóc trắng kem mã PS1694', N'https://pethouse.com.vn/wp-content/uploads/2024/05/1-ps-1694-1510x1510.jpg', 150.0000, N'Chó Phốc Sóc trắng kem ', N'Tháng tuổi: 2 tháng tuổi	Bố: Adin
Giới tính: Đực	Mẹ: Alex
Màu: Trắng vàng	Sức khỏe: Nhanh nhẹn, ăn uống tốt
Tình trạng: Có Sẵn	Vận chuyển: Miễn phí
Tẩy giun: 2 lần	Tiêm phòng: 1 mũi vacxin
Nguồn gốc: Thuần chủng, sinh sản tại Trại Pethouse	Đặc điểm: Lông dài', 1, 6)
INSERT [dbo].[product] ([id], [name], [image], [price], [title], [description], [cateID], [sell_ID]) VALUES (21, N'Chó Poodle Tiny trắng mã PD1562', N'https://pethouse.com.vn/wp-content/uploads/2023/12/1-pd-1562.jpg', 160.0000, N'Chó Poodle Tiny trắng ', N'Tháng tuổi: 2 tháng tuổi	Bố: Adin
Giới tính: Đực	Mẹ: Alex
Màu: Trắng vàng	Sức khỏe: Nhanh nhẹn, ăn uống tốt
Tình trạng: Có Sẵn	Vận chuyển: Miễn phí
Tẩy giun: 2 lần	Tiêm phòng: 1 mũi vacxin
Nguồn gốc: Thuần chủng, sinh sản tại Trại Pethouse	Đặc điểm: Lông dài', 2, 7)
INSERT [dbo].[product] ([id], [name], [image], [price], [title], [description], [cateID], [sell_ID]) VALUES (22, N'Chó Phốc Sóc party mã PS610', N'https://pethouse.com.vn/wp-content/uploads/2023/01/anh-cho-phoc-soc-0505500094-1152x1536.jpg', 170.0000, N'Chó Phốc Sóc party', N'Tháng tuổi: 2 tháng tuổi	Bố: Adin
Giới tính: Đực	Mẹ: Alex
Màu: Trắng vàng	Sức khỏe: Nhanh nhẹn, ăn uống tốt
Tình trạng: Có Sẵn	Vận chuyển: Miễn phí
Tẩy giun: 2 lần	Tiêm phòng: 1 mũi vacxin
Nguồn gốc: Thuần chủng, sinh sản tại Trại Pethouse	Đặc điểm: Lông dài', 1, 14)
INSERT [dbo].[product] ([id], [name], [image], [price], [title], [description], [cateID], [sell_ID]) VALUES (23, N'Chó Poodle Teacup xám mã PD1711', N'https://pethouse.com.vn/wp-content/uploads/2024/05/2-pd-1711.jpg', 120.0000, N'Chó Poodle Teacup xám ', N'Tháng tuổi: 2 tháng tuổi	Bố: Adin
Giới tính: Đực	Mẹ: Alex
Màu: Trắng vàng	Sức khỏe: Nhanh nhẹn, ăn uống tốt
Tình trạng: Có Sẵn	Vận chuyển: Miễn phí
Tẩy giun: 2 lần	Tiêm phòng: 1 mũi vacxin
Nguồn gốc: Thuần chủng, sinh sản tại Trại Pethouse	Đặc điểm: Lông dài', 2, 6)
INSERT [dbo].[product] ([id], [name], [image], [price], [title], [description], [cateID], [sell_ID]) VALUES (24, N'Chó Phốc Sóc màu Blacktan mã PS1582', N'https://pethouse.com.vn/wp-content/uploads/2023/07/1-pom-ma-1282.jpg', 130.0000, N'Chó Phốc Sóc màu Blacktan ', N'Tháng tuổi: 2 tháng tuổi	Bố: Milo
Giới tính: Cái	Mẹ: Mon
Màu: Trắng kem	Sức khỏe: Nhanh nhẹn, ăn uống tốt
Tình trạng: Có Sẵn	Vận chuyển: Miễn phí
Tẩy giun: 1 lần	Tiêm phòng: 1 mũi vacxin
Nguồn gốc: Thuần chủng, sinh sản tại Trại Pethouse	Đặc điểm: Mặt xinh', 1, 7)
INSERT [dbo].[product] ([id], [name], [image], [price], [title], [description], [cateID], [sell_ID]) VALUES (25, N'Chó Phốc Sóc màu Cam mã PS1506', N'https://pethouse.com.vn/wp-content/uploads/2023/11/photophocsoc1505vang-768x1024.jpg', 100.0000, N'Chó Phốc Sóc màu Cam ', N'Tháng tuổi: 2 tháng tuổi	Bố: Milo
Giới tính: Cái	Mẹ: Mon
Màu: Trắng kem	Sức khỏe: Nhanh nhẹn, ăn uống tốt
Tình trạng: Có Sẵn	Vận chuyển: Miễn phí
Tẩy giun: 1 lần	Tiêm phòng: 1 mũi vacxin
Nguồn gốc: Thuần chủng, sinh sản tại Trại Pethouse	Đặc điểm: Mặt xinh', 1, 1)
INSERT [dbo].[product] ([id], [name], [image], [price], [title], [description], [cateID], [sell_ID]) VALUES (26, N'Chó Golden vàng đậm mã GD638
', N'https://pethouse.com.vn/wp-content/uploads/2023/11/Goldenvangdam1537a.jpg', 180.0000, N'Chó Golden vàng đậm', N'Tháng tuổi: 2 tháng tuổi	Bố: Adin
Giới tính: Đực	Mẹ: Alex
Màu: Trắng vàng	Sức khỏe: Nhanh nhẹn, ăn uống tốt
Tình trạng: Có Sẵn	Vận chuyển: Miễn phí
Tẩy giun: 2 lần	Tiêm phòng: 1 mũi vacxin
Nguồn gốc: Thuần chủng, sinh sản tại Trại Pethouse	Đặc điểm: Lông dài', 3, 14)
INSERT [dbo].[product] ([id], [name], [image], [price], [title], [description], [cateID], [sell_ID]) VALUES (27, N'Chó Husky màu hồng phấn mã HK1089', N'https://pethouse.com.vn/wp-content/uploads/2023/04/61C0A582-986A-4E89-A182-FE184785E93B-1086x1536.jpg', 100.0000, N'Chó Husky màu hồng phấn ', N'Tháng tuổi: 2 tháng tuổi	Bố: Adin
Giới tính: Đực	Mẹ: Alex
Màu: Trắng vàng	Sức khỏe: Nhanh nhẹn, ăn uống tốt
Tình trạng: Có Sẵn	Vận chuyển: Miễn phí
Tẩy giun: 2 lần	Tiêm phòng: 1 mũi vacxin
Nguồn gốc: Thuần chủng, sinh sản tại Trại Pethouse	Đặc điểm: Lông dài', 4, 6)
INSERT [dbo].[product] ([id], [name], [image], [price], [title], [description], [cateID], [sell_ID]) VALUES (28, N'Chó Golden VIP màu Vàng kim mã GD1507', N'https://pethouse.com.vn/wp-content/uploads/2023/11/photogoldenvangkim1507-1190x1536.jpg', 100.0000, N'Chó Golden VIP màu Vàng kim', N'Tháng tuổi: 2 tháng tuổi	Bố: Adin
Giới tính: Đực	Mẹ: Alex
Màu: Trắng vàng	Sức khỏe: Nhanh nhẹn, ăn uống tốt
Tình trạng: Có Sẵn	Vận chuyển: Miễn phí
Tẩy giun: 2 lần	Tiêm phòng: 1 mũi vacxin
Nguồn gốc: Thuần chủng, sinh sản tại Trại Pethouse	Đặc điểm: Lông dài', 3, 1)
INSERT [dbo].[product] ([id], [name], [image], [price], [title], [description], [cateID], [sell_ID]) VALUES (29, N'Chó Golden màu nâu mã GD1125', N'https://pethouse.com.vn/wp-content/uploads/2023/04/z4304505382078_3a9907dd1c813529a16b78f60b4fb392-1152x1536.jpg', 120.0000, N'Chó Golden màu nâu ', N'Tháng tuổi: 2 tháng tuổi	Bố: Adin
Giới tính: Đực	Mẹ: Alex
Màu: Trắng vàng	Sức khỏe: Nhanh nhẹn, ăn uống tốt
Tình trạng: Có Sẵn	Vận chuyển: Miễn phí
Tẩy giun: 2 lần	Tiêm phòng: 1 mũi vacxin
Nguồn gốc: Thuần chủng, sinh sản tại Trại Pethouse	Đặc điểm: Lông dài', 3, 7)
INSERT [dbo].[product] ([id], [name], [image], [price], [title], [description], [cateID], [sell_ID]) VALUES (30, N'Chó Husky Nâu Đỏ mã SM1044', N'https://pethouse.com.vn/wp-content/uploads/2023/04/fdf6138aad40711e2851-1366x2048.jpg', 120.0000, N'Chó Husky Nâu Đỏ ', N'Tháng tuổi: 2 tháng tuổi	Bố: Adin
Giới tính: Đực	Mẹ: Alex
Màu: Trắng vàng	Sức khỏe: Nhanh nhẹn, ăn uống tốt
Tình trạng: Có Sẵn	Vận chuyển: Miễn phí
Tẩy giun: 2 lần	Tiêm phòng: 1 mũi vacxin
Nguồn gốc: Thuần chủng, sinh sản tại Trại Pethouse	Đặc điểm: Lông dài', 4, 7)
INSERT [dbo].[product] ([id], [name], [image], [price], [title], [description], [cateID], [sell_ID]) VALUES (31, N'Chó Golden nâu mã GD776', N'https://pethouse.com.vn/wp-content/uploads/2023/02/anh-cho-golden-292929298899923-1365x2048.jpg', 165.0000, N'Chó Golden nâu ', N'Tháng tuổi: 2 tháng tuổi	Bố: Adin
Giới tính: Đực	Mẹ: Alex
Màu: Trắng vàng	Sức khỏe: Nhanh nhẹn, ăn uống tốt
Tình trạng: Có Sẵn	Vận chuyển: Miễn phí
Tẩy giun: 2 lần	Tiêm phòng: 1 mũi vacxin
Nguồn gốc: Thuần chủng, sinh sản tại Trại Pethouse	Đặc điểm: Lông dài', 3, 19)
INSERT [dbo].[product] ([id], [name], [image], [price], [title], [description], [cateID], [sell_ID]) VALUES (32, N'Chó Husky đen trắng mã HK454', N'https://pethouse.com.vn/wp-content/uploads/2022/11/anh-cho-husky-100991.jpg', 150.0000, N'Chó Husky đen trắng ', N'Tháng tuổi: 2 tháng tuổi	Bố: Adin
Giới tính: Đực	Mẹ: Alex
Màu: Trắng vàng	Sức khỏe: Nhanh nhẹn, ăn uống tốt
Tình trạng: Có Sẵn	Vận chuyển: Miễn phí
Tẩy giun: 2 lần	Tiêm phòng: 1 mũi vacxin
Nguồn gốc: Thuần chủng, sinh sản tại Trại Pethouse	Đặc điểm: Lông dài', 4, 15)
INSERT [dbo].[product] ([id], [name], [image], [price], [title], [description], [cateID], [sell_ID]) VALUES (33, N'Chó Golden vàng kim mã GD642', N'https://pethouse.com.vn/wp-content/uploads/2023/02/z4076018963682_f6eb1dd3cb59cd7b016ea2d62274706b-1152x1536.jpg', 185.0000, N'Chó Golden vàng kim ', N'Tháng tuổi: 2 tháng tuổi	Bố: Adin
Giới tính: Đực	Mẹ: Alex
Màu: Trắng vàng	Sức khỏe: Nhanh nhẹn, ăn uống tốt
Tình trạng: Có Sẵn	Vận chuyển: Miễn phí
Tẩy giun: 2 lần	Tiêm phòng: 1 mũi vacxin
Nguồn gốc: Thuần chủng, sinh sản tại Trại Pethouse	Đặc điểm: Lông dài', 3, 18)
INSERT [dbo].[product] ([id], [name], [image], [price], [title], [description], [cateID], [sell_ID]) VALUES (34, N'Chó Golden Vip vàng kim mã GD209', N'https://pethouse.com.vn/wp-content/uploads/2022/08/anh-cho-golden-192838-1510x1527.jpg', 150.0000, N'Chó Golden Vip vàng kim ', N'Tháng tuổi: 2 tháng tuổi	Bố: Adin
Giới tính: Đực	Mẹ: Alex
Màu: Trắng vàng	Sức khỏe: Nhanh nhẹn, ăn uống tốt
Tình trạng: Có Sẵn	Vận chuyển: Miễn phí
Tẩy giun: 2 lần	Tiêm phòng: 1 mũi vacxin
Nguồn gốc: Thuần chủng, sinh sản tại Trại Pethouse	Đặc điểm: Lông dài', 3, 17)
INSERT [dbo].[product] ([id], [name], [image], [price], [title], [description], [cateID], [sell_ID]) VALUES (35, N'Chó Husky xám trắng mã HK379', N'https://pethouse.com.vn/wp-content/uploads/2022/08/anh-cho-Husky-204343.jpg', 180.0000, N'Chó Husky xám trắng', N'Tháng tuổi: 2 tháng tuổi	Bố: Adin
Giới tính: Đực	Mẹ: Alex
Màu: Trắng vàng	Sức khỏe: Nhanh nhẹn, ăn uống tốt
Tình trạng: Có Sẵn	Vận chuyển: Miễn phí
Tẩy giun: 2 lần	Tiêm phòng: 1 mũi vacxin
Nguồn gốc: Thuần chủng, sinh sản tại Trại Pethouse	Đặc điểm: Lông dài', 4, 15)
INSERT [dbo].[product] ([id], [name], [image], [price], [title], [description], [cateID], [sell_ID]) VALUES (36, N'Chó Husky xám trắng mã HK324', N'https://pethouse.com.vn/wp-content/uploads/2022/08/anh-husky-020933-1507x1536.jpg', 200.0000, N'Chó Husky xám trắng ', N'Tháng tuổi: 2 tháng tuổi	Bố: Adin
Giới tính: Đực	Mẹ: Alex
Màu: Trắng vàng	Sức khỏe: Nhanh nhẹn, ăn uống tốt
Tình trạng: Có Sẵn	Vận chuyển: Miễn phí
Tẩy giun: 2 lần	Tiêm phòng: 1 mũi vacxin
Nguồn gốc: Thuần chủng, sinh sản tại Trại Pethouse	Đặc điểm: Lông dài', 4, 1)
SET IDENTITY_INSERT [dbo].[product] OFF
GO
SET IDENTITY_INSERT [dbo].[Shipping] ON 

INSERT [dbo].[Shipping] ([id], [name], [phone], [address]) VALUES (19, N'viet', N'12345678', N'hanoi')
INSERT [dbo].[Shipping] ([id], [name], [phone], [address]) VALUES (20, N'Nguyen Van', N'1234556753', N'Ha noi')
SET IDENTITY_INSERT [dbo].[Shipping] OFF
GO
ALTER TABLE [dbo].[Orders] ADD  CONSTRAINT [DF_Orders_create_date]  DEFAULT (getdate()) FOR [create_date]
GO
ALTER TABLE [dbo].[Cart]  WITH CHECK ADD  CONSTRAINT [FK_Cart_Account] FOREIGN KEY([AccountID])
REFERENCES [dbo].[Account] ([uID])
GO
ALTER TABLE [dbo].[Cart] CHECK CONSTRAINT [FK_Cart_Account]
GO
ALTER TABLE [dbo].[Cart]  WITH CHECK ADD  CONSTRAINT [FK_Cart_product] FOREIGN KEY([AccountID])
REFERENCES [dbo].[product] ([id])
GO
ALTER TABLE [dbo].[Cart] CHECK CONSTRAINT [FK_Cart_product]
GO
ALTER TABLE [dbo].[OrderDetail]  WITH CHECK ADD  CONSTRAINT [FK_OrderDetail_Orders] FOREIGN KEY([order_id])
REFERENCES [dbo].[Orders] ([id])
GO
ALTER TABLE [dbo].[OrderDetail] CHECK CONSTRAINT [FK_OrderDetail_Orders]
GO
ALTER TABLE [dbo].[Orders]  WITH CHECK ADD  CONSTRAINT [FK_Orders_Account] FOREIGN KEY([account_id])
REFERENCES [dbo].[Account] ([uID])
GO
ALTER TABLE [dbo].[Orders] CHECK CONSTRAINT [FK_Orders_Account]
GO
ALTER TABLE [dbo].[Orders]  WITH CHECK ADD  CONSTRAINT [FK_Orders_Shipping] FOREIGN KEY([shipping_id])
REFERENCES [dbo].[Shipping] ([id])
GO
ALTER TABLE [dbo].[Orders] CHECK CONSTRAINT [FK_Orders_Shipping]
GO
ALTER TABLE [dbo].[product]  WITH CHECK ADD  CONSTRAINT [FK_product_Category] FOREIGN KEY([cateID])
REFERENCES [dbo].[Category] ([cid])
GO
ALTER TABLE [dbo].[product] CHECK CONSTRAINT [FK_product_Category]
GO
