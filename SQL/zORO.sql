USE [Assgn_PRJ1]
GO
/****** Object:  Table [dbo].[Account]    Script Date: 7/7/2024 11:44:52 PM ******/
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
/****** Object:  Table [dbo].[Cart]    Script Date: 7/7/2024 11:44:52 PM ******/
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
/****** Object:  Table [dbo].[Category]    Script Date: 7/7/2024 11:44:52 PM ******/
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
/****** Object:  Table [dbo].[OrderDetail]    Script Date: 7/7/2024 11:44:52 PM ******/
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
/****** Object:  Table [dbo].[Orders]    Script Date: 7/7/2024 11:44:52 PM ******/
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
/****** Object:  Table [dbo].[product]    Script Date: 7/7/2024 11:44:52 PM ******/
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
/****** Object:  Table [dbo].[Shipping]    Script Date: 7/7/2024 11:44:52 PM ******/
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

INSERT [dbo].[Category] ([cid], [cname]) VALUES (1, N'KHÓA  CHỤP BÁT CỬA TOÀN DIỆN')
INSERT [dbo].[Category] ([cid], [cname]) VALUES (2, N'KHÓA CỬA BÁO ĐỘNG CHỐNG TRỘM')
INSERT [dbo].[Category] ([cid], [cname]) VALUES (3, N'KHÓA CỬA THÉP KHÔNG GỈ')
INSERT [dbo].[Category] ([cid], [cname]) VALUES (4, N'KHÓA CỬA GIÁ RẺ')
SET IDENTITY_INSERT [dbo].[Category] OFF
GO
SET IDENTITY_INSERT [dbo].[OrderDetail] ON 

INSERT [dbo].[OrderDetail] ([id], [order_id], [productName], [productImage], [productPrice], [quantity]) VALUES (46, 19, N'Thương hiệu: ZORO
Loại: sắt 6 phân- càng chống cắt-chìa muỗng
Tình trạng: Còn hàng
Mã sản phẩm: sat 6 phan chong cat', N'https://bizweb.dktcdn.net/thumb/large/100/505/529/products/a59f31cb36544f9985727924fcc616cd-1700744822996.jpg?v=1702864701260', 140, 1)
INSERT [dbo].[OrderDetail] ([id], [order_id], [productName], [productImage], [productPrice], [quantity]) VALUES (47, 19, N'Ổ khóa ZORO 5 phân càng dài,chìa muỗng - bấm khóa không cần chìa', N'https://bizweb.dktcdn.net/thumb/large/100/505/529/products/e70c1297e876974c4b2adc49fa5fd4b3-1700744709415.jpg?v=1702864736310', 150, 1)
SET IDENTITY_INSERT [dbo].[OrderDetail] OFF
GO
SET IDENTITY_INSERT [dbo].[Orders] ON 

INSERT [dbo].[Orders] ([id], [account_id], [totalPrice], [note], [create_date], [shipping_id]) VALUES (19, 1, 290, N'hang de vo', CAST(N'2022-04-23' AS Date), 19)
SET IDENTITY_INSERT [dbo].[Orders] OFF
GO
SET IDENTITY_INSERT [dbo].[product] ON 

INSERT [dbo].[product] ([id], [name], [image], [price], [title], [description], [cateID], [sell_ID]) VALUES (19, N'Ổ khóa mật mã chống cắt ZORO cao cấp - thép hardened chống gỉ chống nước bảo mật cao chống trộm', N'https://bizweb.dktcdn.net/thumb/large/100/505/529/products/d3ca71cc4302eb5cb213-1.jpg?v=1703227268003', 140.0000, N'Ổ khóa mật mã chống cắt ZOR', N'Thương hiệu: ZORO
Loại: khóa mở mật mã - càng chống cắt
Tình trạng: Còn hàng
Mã sản phẩm: o khoa mat khau chong cat ZORO', 2, 1)
INSERT [dbo].[product] ([id], [name], [image], [price], [title], [description], [cateID], [sell_ID]) VALUES (20, N'Ổ khóa chụp pát cửa ZORO chống cắt toàn diện
', N'https://bizweb.dktcdn.net/thumb/large/100/505/529/products/ad704fe71edfb681efce-1703135082562.jpg?v=1703135886270', 150.0000, N'Ổ khóa chụp pát cửa ZORO', N'Thương hiệu: ZORO
Loại: không báo động - chìa kiếm - vàng đồng
Tình trạng: Còn hàng
Mã sản phẩm: chupvangkhonghu', 1, 6)
INSERT [dbo].[product] ([id], [name], [image], [price], [title], [description], [cateID], [sell_ID]) VALUES (21, N'Ổ khóa mật mã 4 số ZORO dạng chữ U màu đen thay đổi mật mã theo ý muốn', N'https://bizweb.dktcdn.net/thumb/large/100/505/529/products/fd5375ed594e2b682bf4b85302e0c82f-1700744443222.jpg?v=1703227645037', 160.0000, N'Ổ khóa mật mã 4 số ZORO', N'Thương hiệu: ZORO
Loại: khóa mở mật mã - số U đen
Tình trạng: Còn hàng
Mã sản phẩm: U den', 2, 7)
INSERT [dbo].[product] ([id], [name], [image], [price], [title], [description], [cateID], [sell_ID]) VALUES (22, N'Khóa chụp pát cửa báo động chống trộm ZORO chìa xe hơi', N'https://bizweb.dktcdn.net/thumb/large/100/505/529/products/3bbaef9110a940468276dd9dc6726a33tplv-o3syd03w52-origin-jpeg-jpeg-1694075027488.jpg?v=1703151545620', 170.0000, N'Khóa chụp pát cửa báo động chống trộm ZORO', N'Thương hiệu: ZORO
Loại: có báo động - chìa kiếm - vàng đồng
Tình trạng: Còn hàng
Mã sản phẩm: chupvangbaodong', 1, 14)
INSERT [dbo].[product] ([id], [name], [image], [price], [title], [description], [cateID], [sell_ID]) VALUES (23, N'Ổ khóa mật mã 4 số ZORO dạng chữ U màu đỏ thay đổi mật mã theo ý muốn', N'https://bizweb.dktcdn.net/thumb/large/100/505/529/products/990b959fd6b63db1bee921592c5accfd-1700751744203.jpg?v=1702864624030', 120.0000, N'Ổ khóa mật mã 4 số ZORO ', N'Thương hiệu: ZORO
Loại: khóa mở mật mã -số U đỏ
Tình trạng: Hết hàng
Mã sản phẩm: so U do', 2, 6)
INSERT [dbo].[product] ([id], [name], [image], [price], [title], [description], [cateID], [sell_ID]) VALUES (24, N'Ổ khóa chụp bát cửa báo động chống trộm ZORO chìa đạn tròn', N'https://bizweb.dktcdn.net/thumb/large/100/505/529/products/e3058147b6831edd4792.jpg?v=1703152503243', 130.0000, N'Ổ khóa chụp bát cửa báo động chống trộm ZORO ', N'Thương hiệu: ZORO
Loại: có báo động - chìa tròn - màu trắng
Tình trạng: Hết hàng
Mã sản phẩm: chuptrangbaodong', 1, 7)
INSERT [dbo].[product] ([id], [name], [image], [price], [title], [description], [cateID], [sell_ID]) VALUES (25, N'Ổ khóa chụp bát cửa báo động chống trộm ZORO chìa đạn vuông', N'https://bizweb.dktcdn.net/thumb/large/100/505/529/products/8dae1d9be0c84d1b9ef3f9350c6b78c3tplv-o3syd03w52-origin-jpeg-jpeg-1694075027488.jpg?v=1703151566900', 100.0000, N'Ổ khóa chụp bát cửa báo động chống trộm ZORO ', N'Khóa chụp pát cửa báo động chống trộm ZORO chìa xe hơi
Thương hiệu: ZORO
Loại: có báo động - chìa kiếm - mạ vàng Tình trạng: Còn hàng
Mã sản phẩm: chupvangbaodong', 1, 1)
INSERT [dbo].[product] ([id], [name], [image], [price], [title], [description], [cateID], [sell_ID]) VALUES (26, N'Ổ khóa chống cắt ZORO bông lúa chìa tròn cao cấp - khóa ngoài trời chống gỉ', N'https://bizweb.dktcdn.net/thumb/large/100/505/529/products/d42d4a5fe2334d257a07ca20f8de4fb1-1700744375382.jpg?v=1702864802263', 180.0000, N'Ổ khóa chống cắt ZORO', N'Thương hiệu: ZORO
Loại: càng chống cắt - chìa tròn - khóa bấm không cần chìa
Tình trạng: Còn hàng
Mã sản phẩm: bong lua chong cat', 3, 14)
INSERT [dbo].[product] ([id], [name], [image], [price], [title], [description], [cateID], [sell_ID]) VALUES (27, N'Ổ khóa ZORO 4 phân chìa muỗng thích hợp khóa tủ, phòng', N'https://bizweb.dktcdn.net/thumb/large/100/505/529/products/2fdbd7335c77727073631d9b46582d5c-1700744552300.jpg?v=1702864782303', 80.0000, N'Ổ khóa ZORO 4', N'Thương hiệu: ZORO
Loại: 4 phân - chìa muỗng
Tình trạng: Còn hàng
Mã sản phẩm: sat 4 phan', 4, 6)
INSERT [dbo].[product] ([id], [name], [image], [price], [title], [description], [cateID], [sell_ID]) VALUES (28, N'Ổ khoá ZORO bông chìa tròn càng ngắn thép hardened không gỉ', N'https://bizweb.dktcdn.net/thumb/large/100/505/529/products/7f839c5b64e79ff99a17659095edb6e6-1700744292015.jpg?v=1702864825413', 100.0000, N'Ổ khoá ZORO ', N'hương hiệu: ZORO
Loại: càng ngắn - chìa tròn - khóa bấm
Tình trạng: Còn hàng
Mã sản phẩm: bong lua cang ngan', 3, 1)
INSERT [dbo].[product] ([id], [name], [image], [price], [title], [description], [cateID], [sell_ID]) VALUES (29, N'Ổ khoá càng dài ZORO bông chìa tròn thép hardened chống gỉ chống nước', N'https://bizweb.dktcdn.net/thumb/large/100/505/529/products/f309c8c3a87f93e46bfff0c2887109c1-1700744335374.jpg?v=1702864814057', 120.0000, N'Ổ khoá càng dài ZORO ', N'Thương hiệu: ZORO
Loại: càng dài - chìa đạn tròn - khóa bấm
Tình trạng: Còn hàng
Mã sản phẩm: bong lua cang dai', 3, 7)
INSERT [dbo].[product] ([id], [name], [image], [price], [title], [description], [cateID], [sell_ID]) VALUES (30, N'Ổ khóa ZORO 5 phân chìa muỗng càng ngắn, khóa bấm không dùng chìa công nghệ mỹ', N'https://bizweb.dktcdn.net/thumb/large/100/505/529/products/80df50655cafa5c21455e117c81bb4e5-1700744588023.jpg?v=1702864770123', 120.0000, N'Ổ khóa ZORO 5 ', N'Thương hiệu: ZORO
Loại: sắt 5 phân - càng ngắn - chìa muỗng
Tình trạng: Còn hàng
Mã sản phẩm: sat 5 phan cang ngan', 4, 7)
INSERT [dbo].[product] ([id], [name], [image], [price], [title], [description], [cateID], [sell_ID]) VALUES (31, N'Ổ khóa đầu báo chống cắt ZORO chìa kiếm xe hơi cao cấp', N'https://bizweb.dktcdn.net/thumb/large/100/505/529/products/vn-11134207-7r98o-lo6779oy44jb27-1700745455402.jpg?v=1702864627970', 165.0000, N'Ổ khóa đầu báo chống cắt ZORO ', N'Thương hiệu: ZORO
Loại: càng chống cắt - chìa kiếm - bấm khóa ko cần chìa
Tình trạng: Còn hàng
Mã sản phẩm: dau bao chong cat', 3, 19)
INSERT [dbo].[product] ([id], [name], [image], [price], [title], [description], [cateID], [sell_ID]) VALUES (32, N'Ổ khóa ZORO 5 phân càng dài,chìa muỗng - bấm khóa không cần chìa', N'https://bizweb.dktcdn.net/thumb/large/100/505/529/products/e70c1297e876974c4b2adc49fa5fd4b3-1700744709415.jpg?v=1702864736310', 150.0000, N'Ổ khóa ZORO 5 ', N'Thương hiệu: ZORO
Loại: sắt 5 phân - càng dài - chìa muỗng
Tình trạng: Còn hàng
Mã sản phẩm: sat 5 phan cang dai', 4, 15)
INSERT [dbo].[product] ([id], [name], [image], [price], [title], [description], [cateID], [sell_ID]) VALUES (33, N'Ổ khóa cửa đầu báo chìa kiếm ZORO càng ngắn chống gỉ cao cấp', N'https://bizweb.dktcdn.net/thumb/large/100/505/529/products/3ecdd9f4848592b0919b528e1382dc80-1700744934129.jpg?v=1702864670700', 185.0000, N'Ổ khóa cửa đầu báo chìa kiếm ZORO ', N'Thương hiệu: ZORO
Loại: càng ngắn - chìa kiếm - khóa bấm
Tình trạng: Còn hàng
Mã sản phẩm: dau bao cang ngan', 3, 18)
INSERT [dbo].[product] ([id], [name], [image], [price], [title], [description], [cateID], [sell_ID]) VALUES (34, N'Ổ khóa càng dài đầu báo chìa kiếm ZORO chống gỉ cao cấp', N'https://bizweb.dktcdn.net/thumb/large/100/505/529/products/ea63de6e94174e64440f62f43767870c-1700744964250.jpg?v=1702864659163', 150.0000, N'Ổ khóa càng dài đầu báo chìa kiếm ZORO', N'Thương hiệu: ZORO
Loại: càng dài - chìa kiếm - khóa bấm
Tình trạng: Còn hàng
Mã sản phẩm: dau bao cang dai', 3, 17)
INSERT [dbo].[product] ([id], [name], [image], [price], [title], [description], [cateID], [sell_ID]) VALUES (35, N'Ổ khoá chống cắt ZORO 6 phân càng chống cắt chìa muỗng thép hardened chắc chắn', N'https://bizweb.dktcdn.net/thumb/large/100/505/529/products/a59f31cb36544f9985727924fcc616cd-1700744822996.jpg?v=1702864701260', 180.0000, N'Ổ khoá chống cắt ZORO 6', N'Thương hiệu: ZORO
Loại: sắt 6 phân- càng chống cắt-chìa muỗng
Tình trạng: Còn hàng
Mã sản phẩm: sat 6 phan chong cat', 4, 15)
INSERT [dbo].[product] ([id], [name], [image], [price], [title], [description], [cateID], [sell_ID]) VALUES (36, N'Ổ khóa ZORO size đại 7 phân chìa muỗng càng ngắn thép hardened, khóa bấm công nghệ mỹ', N'https://bizweb.dktcdn.net/thumb/large/100/505/529/products/d781c7a0405540d132600fe4f8aa12d6-1700744753595.jpg?v=1702864723653', 200.0000, N'Ổ khóa ZORO size đại 7', N'Thương hiệu: ZORO
Loại: 7 phân-càng ngắn-chìa muỗng
Tình trạng: Còn hàng
Mã sản phẩm: sat 7 phan cang ngan', 4, 1)
SET IDENTITY_INSERT [dbo].[product] OFF
GO
SET IDENTITY_INSERT [dbo].[Shipping] ON 

INSERT [dbo].[Shipping] ([id], [name], [phone], [address]) VALUES (19, N'viet', N'12345678', N'hanoi')
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
