USE [E_COMMERCE_WEB]
GO
/****** Object:  Table [dbo].[Cards]    Script Date: 5/19/2020 9:27:37 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Cards](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Image] [nvarchar](500) NULL,
	[ProId] [int] NOT NULL,
 CONSTRAINT [PK_Cards] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[CartItems]    Script Date: 5/19/2020 9:27:37 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[CartItems](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Quantity] [int] NOT NULL,
	[ProId] [int] NOT NULL,
	[CartId] [int] NOT NULL,
 CONSTRAINT [PK__CartItem__3214EC0704141BF6] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Carts]    Script Date: 5/19/2020 9:27:37 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Carts](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[UserId] [int] NOT NULL,
 CONSTRAINT [PK__Carts__3214EC0718967049] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Categories]    Script Date: 5/19/2020 9:27:37 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Categories](
	[CateId] [int] IDENTITY(1,1) NOT NULL,
	[CateName] [nvarchar](255) NOT NULL,
	[CateImage] [nvarchar](500) NULL,
	[Display] [bit] NOT NULL,
 CONSTRAINT [PK__Categori__27638D142D0C84FA] PRIMARY KEY CLUSTERED 
(
	[CateId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[OrderItems]    Script Date: 5/19/2020 9:27:37 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[OrderItems](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Quantity] [int] NOT NULL,
	[UnitPrice] [float] NOT NULL,
	[ProId] [int] NOT NULL,
	[OrderId] [int] NOT NULL,
 CONSTRAINT [PK_OrderItems] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Orders]    Script Date: 5/19/2020 9:27:37 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Orders](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[UserId] [int] NOT NULL,
	[BuyDate] [date] NOT NULL,
	[Name] [nvarchar](50) NULL,
	[Phone] [nchar](10) NULL,
	[Email] [nvarchar](50) NULL,
	[Address] [nvarchar](50) NULL,
	[Note] [nvarchar](200) NULL,
	[StatusId] [int] NULL,
 CONSTRAINT [PK_Orders] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Products]    Script Date: 5/19/2020 9:27:37 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Products](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](255) NOT NULL,
	[Stock] [int] NOT NULL,
	[Price] [float] NOT NULL,
	[Discount] [float] NOT NULL,
	[CateId] [int] NOT NULL,
	[Description] [nvarchar](2000) NULL,
	[Information] [nvarchar](4000) NULL,
	[Image] [nvarchar](500) NULL,
	[Display] [bit] NOT NULL,
 CONSTRAINT [PK__Products__3214EC078D14CE25] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Roles]    Script Date: 5/19/2020 9:27:37 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Roles](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[RoleName] [nvarchar](50) NOT NULL,
 CONSTRAINT [PK_Roles] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Statuses]    Script Date: 5/19/2020 9:27:37 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Statuses](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[StatusName] [nvarchar](50) NOT NULL,
 CONSTRAINT [PK_Statuses] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Users]    Script Date: 5/19/2020 9:27:37 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Users](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](50) NOT NULL,
	[Email] [nvarchar](50) NOT NULL,
	[Phone] [nchar](10) NOT NULL,
	[Address] [nvarchar](150) NOT NULL,
	[Username] [varchar](50) NOT NULL,
	[Password] [varchar](36) NOT NULL,
	[Avatar] [nvarchar](500) NULL,
	[RoleId] [int] NOT NULL,
	[Lock] [bit] NOT NULL,
 CONSTRAINT [PK__Users__3214EC072ADE063C] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
SET IDENTITY_INSERT [dbo].[Cards] ON 

INSERT [dbo].[Cards] ([Id], [Image], [ProId]) VALUES (1, N'https://cdn.tgdd.vn/Products/Images/42/153856/Slider/-iphone-11-thumbvideo.jpg', 1)
INSERT [dbo].[Cards] ([Id], [Image], [ProId]) VALUES (2, N'https://cdn.tgdd.vn/Products/Images/42/153856/Slider/-iphone-11-thietke.jpg', 1)
INSERT [dbo].[Cards] ([Id], [Image], [ProId]) VALUES (3, N'https://cdn.tgdd.vn/Products/Images/42/161554/Slider/-samsung-galaxy-s10-thietke.jpg', 2)
INSERT [dbo].[Cards] ([Id], [Image], [ProId]) VALUES (4, N'https://cdn.tgdd.vn/Products/Images/42/218361/Slider/vi-vn-realme-c3-thietke.jpg', 5)
INSERT [dbo].[Cards] ([Id], [Image], [ProId]) VALUES (5, N'https://cdn.tgdd.vn/Products/Images/42/218361/Slider/-realme-c3-manhinh.jpg', 5)
SET IDENTITY_INSERT [dbo].[Cards] OFF
SET IDENTITY_INSERT [dbo].[CartItems] ON 

INSERT [dbo].[CartItems] ([Id], [Quantity], [ProId], [CartId]) VALUES (11, 1, 1, 2)
INSERT [dbo].[CartItems] ([Id], [Quantity], [ProId], [CartId]) VALUES (12, 1, 4, 3)
INSERT [dbo].[CartItems] ([Id], [Quantity], [ProId], [CartId]) VALUES (15, 2, 11, 2)
SET IDENTITY_INSERT [dbo].[CartItems] OFF
SET IDENTITY_INSERT [dbo].[Carts] ON 

INSERT [dbo].[Carts] ([Id], [UserId]) VALUES (2, 2)
INSERT [dbo].[Carts] ([Id], [UserId]) VALUES (3, 5)
INSERT [dbo].[Carts] ([Id], [UserId]) VALUES (4, 6)
SET IDENTITY_INSERT [dbo].[Carts] OFF
SET IDENTITY_INSERT [dbo].[Categories] ON 

INSERT [dbo].[Categories] ([CateId], [CateName], [CateImage], [Display]) VALUES (1, N'Điện thoại', N'https://image.flaticon.com/icons/png/512/65/65680.png', 1)
INSERT [dbo].[Categories] ([CateId], [CateName], [CateImage], [Display]) VALUES (2, N'Tablet', N'https://image.flaticon.com/icons/png/512/31/31138.png', 1)
INSERT [dbo].[Categories] ([CateId], [CateName], [CateImage], [Display]) VALUES (3, N'Laptop', N'https://image.flaticon.com/icons/png/512/44/44510.png', 1)
INSERT [dbo].[Categories] ([CateId], [CateName], [CateImage], [Display]) VALUES (4, N'Phụ kiện', N'https://image.flaticon.com/icons/png/512/27/27130.png', 1)
INSERT [dbo].[Categories] ([CateId], [CateName], [CateImage], [Display]) VALUES (5, N'Đồng hồ', N'https://image.flaticon.com/icons/png/512/116/116107.png', 1)
SET IDENTITY_INSERT [dbo].[Categories] OFF
SET IDENTITY_INSERT [dbo].[OrderItems] ON 

INSERT [dbo].[OrderItems] ([Id], [Quantity], [UnitPrice], [ProId], [OrderId]) VALUES (1, 1, 29000000, 1, 1)
INSERT [dbo].[OrderItems] ([Id], [Quantity], [UnitPrice], [ProId], [OrderId]) VALUES (2, 3, 15000000, 4, 1)
INSERT [dbo].[OrderItems] ([Id], [Quantity], [UnitPrice], [ProId], [OrderId]) VALUES (3, 2, 5000000, 5, 1)
INSERT [dbo].[OrderItems] ([Id], [Quantity], [UnitPrice], [ProId], [OrderId]) VALUES (4, 1, 22000000, 2, 2)
INSERT [dbo].[OrderItems] ([Id], [Quantity], [UnitPrice], [ProId], [OrderId]) VALUES (5, 3, 5000000, 5, 2)
INSERT [dbo].[OrderItems] ([Id], [Quantity], [UnitPrice], [ProId], [OrderId]) VALUES (6, 1, 20900000, 2, 3)
INSERT [dbo].[OrderItems] ([Id], [Quantity], [UnitPrice], [ProId], [OrderId]) VALUES (7, 2, 13500000, 4, 3)
SET IDENTITY_INSERT [dbo].[OrderItems] OFF
SET IDENTITY_INSERT [dbo].[Orders] ON 

INSERT [dbo].[Orders] ([Id], [UserId], [BuyDate], [Name], [Phone], [Email], [Address], [Note], [StatusId]) VALUES (1, 5, CAST(N'2020-05-13' AS Date), N'Thu', N'0326779770', N'ltt123@gmail.com', N'48, MT', N'none', 4)
INSERT [dbo].[Orders] ([Id], [UserId], [BuyDate], [Name], [Phone], [Email], [Address], [Note], [StatusId]) VALUES (2, 2, CAST(N'2020-05-13' AS Date), N'Thuỷ', N'0326779770', N'ptt123@gmail.com', N'50, MT', N'none', 1)
INSERT [dbo].[Orders] ([Id], [UserId], [BuyDate], [Name], [Phone], [Email], [Address], [Note], [StatusId]) VALUES (3, 2, CAST(N'2020-05-13' AS Date), N'Thuỷ', N'0326779770', N'ptt123@gmail.com', N'50, MT', N'none', 1)
SET IDENTITY_INSERT [dbo].[Orders] OFF
SET IDENTITY_INSERT [dbo].[Products] ON 

INSERT [dbo].[Products] ([Id], [Name], [Stock], [Price], [Discount], [CateId], [Description], [Information], [Image], [Display]) VALUES (1, N'iPhone 11 Pro Max 64GB', 99, 33990000, 0.1, 1, N'KHUYẾN MÃI
Giảm ngay 2 triệu (đã trừ vào giá) *
Tặng 2 suất mua Đồng hồ thời trang giảm 40% (không áp dụng thêm khuyến mãi khác)', N'Màn hình
Công nghệ màn hình	OLED
Độ phân giải	1242 x 2688 Pixels
Màn hình rộng	6.5"
Mặt kính cảm ứng	Kính cường lực oleophobic (ion cường lực)
Camera sau
Độ phân giải	3 camera 12 MP
Quay phim	Quay phim HD 720p@30fps, Quay phim FullHD 1080p@30fps, Quay phim FullHD 1080p@60fps, Quay phim FullHD 1080p@120fps, Quay phim FullHD 1080p@240fps, Quay phim 4K 2160p@24fps, Quay phim 4K 2160p@30fps, Quay phim 4K 2160p@60fps
Đèn Flash	4 đèn LED (2 tông màu)
Chụp ảnh nâng cao	Ban đêm (Night Mode), Trôi nhanh thời gian (Time Lapse), Quay chậm (Slow Motion), Xoá phông, Góc rộng (Wide), Góc siêu rộng (Ultrawide), Tự động lấy nét (AF), Chạm lấy nét, Nhận diện khuôn mặt, HDR, Toàn cảnh (Panorama), Chống rung quang học (OIS)
Camera trước
Độ phân giải	12 MP
Videocall	Có
Thông tin khác	Xoá phông, Quay phim 4K, Nhãn dán (AR Stickers), Retina Flash, Quay video HD, Nhận diện khuôn mặt, Quay video Full HD, Tự động lấy nét (AF), HDR, Quay chậm (Slow Motion)
Hệ điều hành - CPU
Hệ điều hành	iOS 13
Chipset (hãng SX CPU)	Apple A13 Bionic 6 nhân
Tốc độ CPU	2 nhân 2.65 GHz & 4 nhân 1.8 GHz
Chip đồ họa (GPU)	Apple GPU 4 nhân
Bộ nhớ & Lưu trữ
RAM	4 GB
Bộ nhớ trong	64 GB
Bộ nhớ còn lại (khả dụng)	Khoảng 59 GB
Thẻ nhớ ngoài	Không
Kết nối
Mạng di động	Hỗ trợ 4G
SIM	1 eSIM & 1 Nano SIM
Wifi	Dual-band, Wi-Fi 802.11 a/b/g/n/ac/ax, Wi-Fi hotspot
GPS	BDS, A-GPS, GLONASS
Bluetooth	A2DP, LE, v5.0
Cổng kết nối/sạc	Lightning
Jack tai nghe	Lightning
Kết nối khác	NFC, OTG
Thiết kế & Trọng lượng
Thiết kế	Nguyên khối
Chất liệu	Khung thép không gỉ & Mặt lưng kính cường lực
Kích thước	Dài 158 mm - Ngang 77.8 mm - Dày 8.1 mm
Trọng lượng	226 g
Thông tin pin & Sạc
Dung lượng pin	3969 mAh
Loại pin	Pin chuẩn Li-Ion
Công nghệ pin	Tiết kiệm pin, Sạc pin nhanh, Sạc pin không dây
Tiện ích
Bảo mật nâng cao	Mở khoá khuôn mặt Face ID
Tính năng đặc biệt	Đèn pin
Sạc pin không dây
Dolby Audio™
Chuẩn Kháng nước, Chuẩn kháng bụi
Sạc pin nhanh
Apple Pay
Ghi âm	Có, microphone chuyên dụng chống ồn
Radio	Không
Xem phim	H.264(MPEG4-AVC)
Nghe nhạc	Lossless, MP3, AAC, FLAC
Thông tin khác
Thời điểm ra mắt	11/2019', N'https://cdn.tgdd.vn/Products/Images/42/200533/iphone-11-pro-max-black-400x460.png', 1)
INSERT [dbo].[Products] ([Id], [Name], [Stock], [Price], [Discount], [CateId], [Description], [Information], [Image], [Display]) VALUES (2, N'Samsung Galaxy S10', 0, 22000000, 0.05, 1, N'NGỪNG KINH DOANH', N'Màn hình
Công nghệ màn hình	Dynamic AMOLED
Độ phân giải	2K+ (1440 x 3040 Pixels)
Màn hình rộng	6.1"
Mặt kính cảm ứng	Kính cường lực Corning Gorilla Glass 6
Camera sau
Độ phân giải	Chính 12 MP & Phụ 12 MP, 16 MP
Quay phim	Quay phim siêu chậm 960 fps, Quay phim FullHD 1080p@240fps, Quay phim 4K 2160p@60fps
Đèn Flash	Có
Chụp ảnh nâng cao	Zoom quang học, Xoá phông, Quay chậm (Slow Motion), Trôi nhanh thời gian (Time Lapse), Ban đêm (Night Mode), A.I Camera, Lấy nét theo pha (PDAF), Điều chỉnh khẩu độ, Quay siêu chậm (Super Slow Motion), Tự động lấy nét (AF), Chạm lấy nét, Nhận diện khuôn mặt, HDR, Toàn cảnh (Panorama), Chống rung quang học (OIS), Làm đẹp (Beautify), Chuyên nghiệp (Pro)
Camera trước
Độ phân giải	10 MP
Videocall	Có
Thông tin khác	Nhãn dán (AR Stickers), Flash màn hình, Chụp bằng cử chỉ, Nhận diện khuôn mặt, Làm đẹp (Beautify), Quay video Full HD, Tự động lấy nét (AF), HDR, Xoá phông, Quay phim 4K
Hệ điều hành - CPU
Hệ điều hành	Android 9.0 (Pie)
Chipset (hãng SX CPU)	Exynos 9820 8 nhân
Tốc độ CPU	2 nhân 2.7 GHz, 2 nhân 2.3 GHz & 4 nhân 1.9 GHz
Chip đồ họa (GPU)	Mali-G76 MP12
Bộ nhớ & Lưu trữ
RAM	8 GB
Bộ nhớ trong	128 GB
Bộ nhớ còn lại (khả dụng)	Khoảng 108 GB
Thẻ nhớ ngoài	MicroSD, hỗ trợ tối đa 512 GB
Kết nối
Mạng di động	Hỗ trợ 4G
SIM	2 SIM Nano (SIM 2 chung khe thẻ nhớ)
Wifi	Dual-band, Wi-Fi 802.11 a/b/g/n/ac/ax, Wi-Fi Direct, Wi-Fi hotspot
GPS	BDS, A-GPS, GLONASS
Bluetooth	LE, apt-X, A2DP, v5.0
Cổng kết nối/sạc	USB Type-C
Jack tai nghe	3.5 mm
Kết nối khác	NFC, OTG
Thiết kế & Trọng lượng
Thiết kế	Nguyên khối
Chất liệu	Khung kim loại & Mặt lưng kính cường lực
Kích thước	Dài 149.9 mm - Ngang 70.4 mm - Dày 7.8 mm
Trọng lượng	157 g
Thông tin pin & Sạc
Dung lượng pin	3400 mAh
Loại pin	Pin chuẩn Li-Ion
Công nghệ pin	Tiết kiệm pin, Siêu tiết kiệm pin, Sạc pin nhanh, Sạc pin không dây, Sạc ngược không dây
Tiện ích
Bảo mật nâng cao	Mở khoá khuôn mặt, Mở khoá vân tay dưới màn hình
Tính năng đặc biệt	Dolby Audio™
Chuẩn Kháng nước, Chuẩn kháng bụi
Đèn pin
Chạm 2 lần sáng màn hình
Sạc pin nhanh
Chặn cuộc gọi
Ghi âm cuộc gọi
Samsung DeX
Nhân bản ứng dụng
Samsung Pay
Thu nhỏ màn hình sử dụng một tay
Trợ lý ảo Samsung Bixby
Màn hình luôn hiển thị AOD
Chặn tin nhắn
Ghi âm	Có, microphone chuyên dụng chống ồn
Radio	Không
Xem phim	H.265, 3GP, MP4, AVI, WMV, H.264(MPEG4-AVC), DivX, WMV9, Xvid
Nghe nhạc	Midi, Lossless, MP3, WAV, WMA, AAC++, eAAC+, OGG, AC3, FLAC
Thông tin khác
Thời điểm ra mắt	02/2019', N'https://cdn.tgdd.vn/Products/Images/42/161554/sieu-pham-galaxy-s-black-400x460.png', 1)
INSERT [dbo].[Products] ([Id], [Name], [Stock], [Price], [Discount], [CateId], [Description], [Information], [Image], [Display]) VALUES (4, N'Oppo Reno 3 Pro', 90, 14990000, 0, 1, N'KHUYẾN MÃI
Tai nghe không dây OPPO Enco W31 (Trị giá 1.990.000đ)
Tặng 2 suất mua Đồng hồ thời trang giảm 40% (không áp dụng thêm khuyến mãi khác)', N'Màn hình
Công nghệ màn hình	Sunlight Super AMOLED
Độ phân giải	Full HD+ (1080 x 2400 Pixels)
Màn hình rộng	6.4"
Mặt kính cảm ứng	Kính cường lực Corning Gorilla Glass 5
Camera sau
Độ phân giải	Chính 64 MP & Phụ 13 MP, 8 MP, 2 MP
Quay phim	Quay phim HD 720p@30fps, Quay phim FullHD 1080p@30fps, Quay phim FullHD 1080p@60fps, Quay phim 4K 2160p@30fps
Đèn Flash	Có
Chụp ảnh nâng cao	A.I Camera, Xoá phông, Làm đẹp, Góc rộng (Wide), Tự động lấy nét (AF), Chạm lấy nét, Nhận diện khuôn mặt, HDR, Toàn cảnh (Panorama), Chuyên nghiệp (Pro)
Camera trước
Độ phân giải	Chính 44 MP & Phụ 2 MP
Videocall	Hỗ trợ VideoCall thông qua ứng dụng
Thông tin khác	Xoá phông, Làm đẹp (Selfie A.I Beauty), Flash màn hình, Quay video HD, Nhận diện khuôn mặt, Quay video Full HD, Tự động lấy nét (AF), HDR
Hệ điều hành - CPU
Hệ điều hành	Android 10
Chipset (hãng SX CPU)	MediaTek Helio P95 8 nhân
Tốc độ CPU	2 nhân 2.2 GHz & 6 nhân 2.0 GHz
Chip đồ họa (GPU)	PowerVR GM 94446
Bộ nhớ & Lưu trữ
RAM	8 GB
Bộ nhớ trong	256 GB
Bộ nhớ còn lại (khả dụng)	Đang cập nhật
Thẻ nhớ ngoài	MicroSD, hỗ trợ tối đa 256 GB
Kết nối
Mạng di động	Hỗ trợ 4G
SIM	2 Nano SIM
Wifi	Wi-Fi 802.11 a/b/g/n/ac, Dual-band, Wi-Fi Direct, Wi-Fi hotspot
GPS	BDS, A-GPS, GLONASS
Bluetooth	A2DP, LE, v5.0
Cổng kết nối/sạc	USB Type-C
Jack tai nghe	3.5 mm
Kết nối khác	OTG
Thiết kế & Trọng lượng
Thiết kế	Nguyên khối
Chất liệu	Khung & Mặt lưng thủy tinh hữu cơ
Kích thước	Dài 158.8 mm - Ngang 73.4 mm - Dày 8.1 mm
Trọng lượng	175 g
Thông tin pin & Sạc
Dung lượng pin	4025 mAh
Loại pin	Đang cập nhật
Công nghệ pin	Tiết kiệm pin, Siêu tiết kiệm pin, Sạc nhanh VOOC
Tiện ích
Bảo mật nâng cao	Mở khoá khuôn mặt, Mở khoá vân tay dưới màn hình
Tính năng đặc biệt	Chặn cuộc gọi
Ghi âm cuộc gọi
Sạc pin nhanh
Đèn pin
Chặn tin nhắn
Nhân bản ứng dụng
Đa cửa sổ (chia đôi màn hình)
Không gian trò chơi
Ghi âm	Có, microphone chuyên dụng chống ồn
Radio	Có
Xem phim	WMV, H.263, H.264(MPEG4-AVC)
Nghe nhạc	MP3, WAV, WMA
Thông tin khác
Thời điểm ra mắt	04/2020', N'https://cdn.tgdd.vn/Products/Images/42/216172/oppo-reno3-pro-den-400x460-400x460.png', 1)
INSERT [dbo].[Products] ([Id], [Name], [Stock], [Price], [Discount], [CateId], [Description], [Information], [Image], [Display]) VALUES (5, N'Realme C3', 75, 2990000, 0, 1, N'KHUYẾN MÃI
Tặng 2 suất mua Đồng hồ thời trang giảm 40% (không áp dụng thêm khuyến mãi khác)', N'Màn hình
Công nghệ màn hình	IPS LCD
Độ phân giải	HD+ (720 x 1600 Pixels)
Màn hình rộng	6.5"
Mặt kính cảm ứng	Kính cường lực Corning Gorilla Glass 3
Camera sau
Độ phân giải	Chính 12 MP & Phụ 2 MP, 2 MP
Quay phim	Quay phim HD 720p@30fps, Quay phim FullHD 1080p@30fps
Đèn Flash	Có
Chụp ảnh nâng cao	A.I Camera, Ban đêm (Night Mode), Xoá phông, Làm đẹp, Siêu cận (Macro), Tự động lấy nét (AF), Chạm lấy nét, Nhận diện khuôn mặt, HDR, Toàn cảnh (Panorama), Chuyên nghiệp (Pro)
Camera trước
Độ phân giải	5 MP
Videocall	Hỗ trợ VideoCall thông qua ứng dụng
Thông tin khác	Làm đẹp (Selfie A.I Beauty), Quay video HD, Nhận diện khuôn mặt, Quay video Full HD, Tự động lấy nét (AF), HDR
Hệ điều hành - CPU
Hệ điều hành	Android 10
Chipset (hãng SX CPU)	MediaTek Helio G70 8 nhân
Tốc độ CPU	2 nhân 2.0 GHz & 6 nhân 1.7 GHz
Chip đồ họa (GPU)	Mali-G52 MC2
Bộ nhớ & Lưu trữ
RAM	3 GB
Bộ nhớ trong	32 GB
Bộ nhớ còn lại (khả dụng)	Khoảng 16 GB
Thẻ nhớ ngoài	MicroSD, hỗ trợ tối đa 256 GB
Kết nối
Mạng di động	Hỗ trợ 4G
SIM	2 Nano SIM
Wifi	Wi-Fi 802.11 b/g/n, Wi-Fi Direct, Wi-Fi hotspot
GPS	A-GPS, GLONASS
Bluetooth	LE, A2DP, v5.0
Cổng kết nối/sạc	Micro USB
Jack tai nghe	3.5 mm
Kết nối khác	OTG
Thiết kế & Trọng lượng
Thiết kế	Nguyên khối
Chất liệu	Khung & Mặt lưng nhựa
Kích thước	Dài 164.4 mm - Ngang 75 mm - Dày 8.95 mm
Trọng lượng	195 g
Thông tin pin & Sạc
Dung lượng pin	5000 mAh
Loại pin	Pin chuẩn Li-Po
Công nghệ pin	Tiết kiệm pin, Sạc ngược qua cáp
Tiện ích
Bảo mật nâng cao	Mở khóa bằng vân tay, Mở khoá khuôn mặt
Tính năng đặc biệt	Đèn pin
Trợ lý ảo Google Assistant
Chặn tin nhắn
Nhân bản ứng dụng
Mặt kính 2.5D
Đa cửa sổ (chia đôi màn hình)
Không gian trò chơi
Ghi âm cuộc gọi
Chặn cuộc gọi
Ghi âm	Có
Radio	Có
Xem phim	3GP, MP4, AVI, WMV
Nghe nhạc	Midi, AMR, MP3, WAV, AAC, OGG, FLAC
Thông tin khác
Thời điểm ra mắt	02/2020', N'https://cdn.tgdd.vn/Products/Images/42/218361/realme-c3-red-460x400-400x460.png', 1)
INSERT [dbo].[Products] ([Id], [Name], [Stock], [Price], [Discount], [CateId], [Description], [Information], [Image], [Display]) VALUES (6, N'Máy tính bảng Samsung Galaxy Tab A 10.1 T515 (2019)', 50, 7490000, 0, 2, N'KHUYẾN MÃI
Mua kèm Microsoft 365 Personal ưu đãi giảm 600.000đ
Tặng 2 suất mua Đồng hồ thời trang giảm 40% (không áp dụng thêm khuyến mãi khác) ', N'Màn hình
Công nghệ màn hình	TFT LCD
Độ phân giải	1920 x 1200 pixels
Kích thước màn hình	10.1"
Chụp ảnh & Quay phim
Camera sau	8 MP
Quay phim	FullHD 1080p@30fps
Tính năng camera	Tự động lấy nét, Chạm lấy nét, Nhận diện khuôn mặt
Camera trước	5 MP
Cấu hình
Hệ điều hành	Android 9.0 (Pie)
Loại CPU (Chipset)	Exynos 7904 8 nhân
Tốc độ CPU	2 nhân 1.8 GHz & 6 nhân 1.6 GHz
Chip đồ hoạ (GPU)	G71 MP2
RAM	3 GB
Bộ nhớ trong (ROM)	32 GB
Bộ nhớ khả dụng	Khoảng 26 GB
Thẻ nhớ ngoài	Micro SD
Hỗ trợ thẻ tối đa	512 GB
Cảm biến	Rung, Ánh sáng, Gia tốc
Kết nối
Số khe SIM	1 SIM
Loại SIM	Nano Sim
Thực hiện cuộc gọi	Có
Hỗ trợ 3G	Có 3G
Hỗ trợ 4G	4G LTE
WiFi	Wi-Fi 802.11 a/b/g/n/ac
Bluetooth	5.0
GPS	A-GPS
Cổng kết nối/sạc	USB Type-C
Jack tai nghe	3.5 mm
Hỗ trợ OTG	Không
Kết nối khác	Không
Chức năng khác
Ghi âm	Không
Radio	Không
Tính năng đặc biệt	Dolby Atmos
Thiết kế & Trọng lượng
Chất liệu	Kim loại
Kích thước	Dài 245.2 mm - Ngang 149.4 mm - Dày 7.5 mm
Trọng lượng	470 g
Pin & Dung lượng
Loại pin	Lithium - Ion
Dung lượng pin	6150 mAh', N'https://cdn.tgdd.vn/Products/Images/522/200963/samsung-galaxy-tab-a-101-t515-2019-gold-400x460.png', 1)
INSERT [dbo].[Products] ([Id], [Name], [Stock], [Price], [Discount], [CateId], [Description], [Information], [Image], [Display]) VALUES (7, N'Máy tính bảng iPad Pro 12.9 inch Wifi 128GB (2020)
', 30, 27990000, 0.05, 2, N'KHUYẾN MÃI
Giảm ngay 1 triệu (áp dụng đặt và nhận hàng từ 15 - 17/5) (đã trừ vào giá) *
Giảm ngay 500.000đ (áp dụng đặt và nhận hàng từ 15 - 17/5) (đã trừ vào giá)
Mua kèm Microsoft 365 Personal ưu đãi giảm 600.000đ
Tặng 2 suất mua Đồng hồ thời trang giảm 40% (không áp dụng thêm khuyến mãi khác) ', N'Màn hình
Công nghệ màn hình	Liquid Retina
Độ phân giải	2048 x 2732 pixels
Kích thước màn hình	12.9"
Chụp ảnh & Quay phim
Camera sau	Chính 12 MP & Phụ 10 MP, TOF 3D LiDAR
Quay phim	HD 720p@30fps, FullHD 1080p@30fps, FullHD 1080p@60fps, FullHD 1080p@120fps, FullHD 1080p@240fps, 4K 2160p@24fps, 4K 2160p@30fps, 4K 2160p@60fps
Tính năng camera	Chụp hình góc siêu rộng, Chụp hình góc rộng, Đèn Flash, Chế độ ánh sáng yếu, Tự động lấy nét, Chạm lấy nét, Nhận diện khuôn mặt, HDR, Slow Motion
Camera trước	7 MP
Cấu hình
Hệ điều hành	iPadOS 13
Loại CPU (Chipset)	Apple A12Z Bionic
Tốc độ CPU	4 nhân 2.5 GHz & 4 nhân 1.6 GHz
Chip đồ hoạ (GPU)	Apple GPU 8 nhân
RAM	6 GB
Bộ nhớ trong (ROM)	128 GB
Bộ nhớ khả dụng	Đang cập nhật
Thẻ nhớ ngoài	Không
Hỗ trợ thẻ tối đa	Không
Cảm biến	Con quay hồi chuyển 3 chiều, Khí áp kế, Ánh sáng, Gia tốc
Kết nối
Số khe SIM	Không
Loại SIM	Không
Thực hiện cuộc gọi	FaceTime
Hỗ trợ 3G	Không 3G
Hỗ trợ 4G	Không hỗ trợ 4G
WiFi	MIMO, Wi-Fi 802.11 a/b/g/n/ac/ax, Dual-band
Bluetooth	5.0
GPS	A-GPS, GPS, GLONASS
Cổng kết nối/sạc	USB Type-C
Jack tai nghe	Type C
Hỗ trợ OTG	Không
Kết nối khác	Không
Chức năng khác
Ghi âm	Có
Radio	Không
Tính năng đặc biệt	Hỗ trợ bàn phím rời, Gọi điện FaceTime, Mở khóa bằng khuôn mặt (Face ID), Nam châm & sạc cho Apple Pencil
Thiết kế & Trọng lượng
Chất liệu	Kim loại nguyên khối
Kích thước	Dài 247.6 mm - Ngang 178.5 mm - Dày 5.9 mm
Trọng lượng	471 g
Pin & Dung lượng
Loại pin	Pin Lithium Polymer
Mức năng lượng tiêu thụ	36.71 Wh', N'https://cdn.tgdd.vn/Products/Images/522/221775/ipad-pro-12-9-inch-wifi-128gb-2020-xam-400x460-1-400x460.png', 1)
INSERT [dbo].[Products] ([Id], [Name], [Stock], [Price], [Discount], [CateId], [Description], [Information], [Image], [Display]) VALUES (8, N'Laptop Acer Aspire A315 54 36QY i3 10110U/4GB/256GB/Win10 (NX.HM2SV.001)', 70, 10990000, 0.1, 3, N'KHUYẾN MÃI
Bao cước NET 10% (đã trừ vào giá) *
Balo Laptop
Mua kèm Microsoft 365 Personal ưu đãi giảm 600.000đ', N'Bộ xử lý
Công nghệ CPU	Intel Core i3 Comet Lake
Loại CPU	10110U
Tốc độ CPU	2.10 GHz
Tốc độ tối đa	Turbo Boost 4.1 GHz
Bộ nhớ RAM, Ổ cứng
RAM	4 GB
Loại RAM	DDR4 (On board +1 khe)
Tốc độ Bus RAM	2400 MHz
Hỗ trợ RAM tối đa	12 GB
Ổ cứng	SSD 256GB NVMe PCIe, Hỗ trợ khe cắm HDD SATA
Màn hình
Kích thước màn hình	15.6 inch
Độ phân giải	Full HD (1920 x 1080)
Công nghệ màn hình	60Hz, Acer ComfyView
Màn hình cảm ứng	Không
Đồ họa và Âm thanh
Thiết kế card	Card đồ họa tích hợp
Card đồ họa	Intel UHD Graphics
Công nghệ âm thanh	Realtek High Definition Audio
Cổng kết nối & tính năng mở rộng
Cổng giao tiếp	2 x USB 2.0, USB 3.1, HDMI, LAN (RJ45)
Kết nối không dây	Bluetooth v5.0, Wi-Fi 802.11 a/b/g/n/ac
Khe đọc thẻ nhớ	Không
Ổ đĩa quang	Không
Webcam	VGA Webcam
Tính năng khác	Không
Đèn bàn phím	Không
PIN
Loại PIN	PIN liền
Thông tin Pin	Li-Ion 2 cell
Hệ điều hành
Hệ điều hành	Windows 10 Home SL
Kích thước & trọng lượng
Kích thước	Dài 363.4 mm - Rộng 247.5 mm - Dày 19.9 mm
Trọng lượng	1.7 kg
Chất liệu	Vỏ nhựa
Thông tin khác
Thời điểm ra mắt	2019', N'https://cdn.tgdd.vn/Products/Images/44/212625/acer-aspire-a315-54-36qy-i3-10110u-4gb-256gb-win10-1-600x600.jpg', 1)
INSERT [dbo].[Products] ([Id], [Name], [Stock], [Price], [Discount], [CateId], [Description], [Information], [Image], [Display]) VALUES (10, N'Laptop Asus VivoBook X509FA i3 8145U/4GB/512GB/Chuột/Win10 (EJ857T)
', 20, 11690000, 0, 3, N'KHUYẾN MÃI
Chuột không dây *
Mua kèm Microsoft 365 Personal ưu đãi giảm 600.000đ', N'Bộ xử lý
Công nghệ CPU	Intel Core i3 Coffee Lake
Loại CPU	8145U
Tốc độ CPU	2.10 GHz
Tốc độ tối đa	Turbo Boost 3.9 GHz
Bộ nhớ RAM, Ổ cứng
RAM	4 GB
Loại RAM	DDR4 (On board +1 khe)
Tốc độ Bus RAM	2400 MHz
Hỗ trợ RAM tối đa	20 GB
Ổ cứng	SSD 512 GB M.2 PCIe, Hỗ trợ khe cắm HDD SATA
Màn hình
Kích thước màn hình	15.6 inch
Độ phân giải	Full HD (1920 x 1080)
Công nghệ màn hình	60Hz, Tấm nền TN, Anti-Glare
Màn hình cảm ứng	Không
Đồ họa và Âm thanh
Thiết kế card	Card đồ họa tích hợp
Card đồ họa	Intel® UHD Graphics 620
Công nghệ âm thanh	SonicMaster audio
Cổng kết nối & tính năng mở rộng
Cổng giao tiếp	2 x USB 2.0, HDMI, USB 3.0, USB Type-C
Kết nối không dây	Bluetooth 4.2, Wi-Fi 802.11 a/b/g/n/ac
Khe đọc thẻ nhớ	Micro SD
Ổ đĩa quang	Không
Webcam	HD webcam, VGA Webcam
Tính năng khác	Bảo mật vân tay
Đèn bàn phím	Không
PIN
Loại PIN	PIN liền
Thông tin Pin	Li-Ion 2 cell
Hệ điều hành
Hệ điều hành	Windows 10 Home SL
Kích thước & trọng lượng
Kích thước	Dài 360 mm - Dày 235 mm - Rộng 22.9 mm
Trọng lượng	1.8 kg
Chất liệu	Vỏ nhựa
Thông tin khác
Thời điểm ra mắt	2019', N'https://cdn.tgdd.vn/Products/Images/44/220575/asus-vivobook-x509fa-i3-8145u-4gb-512gb-chuot-win1-220575copy-600x600.jpg', 1)
INSERT [dbo].[Products] ([Id], [Name], [Stock], [Price], [Discount], [CateId], [Description], [Information], [Image], [Display]) VALUES (11, N'Laptop Apple Macbook Air 2020 i3 1.1GHz/8GB/256GB (MWTL2SA/A)
', 10, 28990000, 0, 3, N'KHUYẾN MÃI
Túi chống sốc Laptop 13" WIWU
Mua kèm Microsoft 365 Personal ưu đãi giảm 600.000đ', N'Bộ xử lý
Công nghệ CPU	Intel Core i3 Thế hệ 10
Loại CPU	Hãng không công bố
Tốc độ CPU	1.10 GHz
Tốc độ tối đa	Turbo Boost 3.2 GHz
Bộ nhớ RAM, Ổ cứng
RAM	8 GB
Loại RAM	LPDDR4X (On board)
Tốc độ Bus RAM	3733 MHz
Hỗ trợ RAM tối đa	Không hỗ trợ nâng cấp
Ổ cứng	SSD: 256 GB
Màn hình
Kích thước màn hình	13.3 inch
Độ phân giải	Retina (2560 x 1600)
Công nghệ màn hình	Công nghệ IPS, LED Backlit
Màn hình cảm ứng	Không
Đồ họa và Âm thanh
Thiết kế card	Card đồ họa tích hợp
Card đồ họa	Intel Iris Plus Graphics
Công nghệ âm thanh	3 microphones, Headphones, Loa kép (2 kênh)
Cổng kết nối & tính năng mở rộng
Cổng giao tiếp	2 x Thunderbolt 3 (USB-C)
Kết nối không dây	Bluetooth v5.0, Wi-Fi 802.11 a/b/g/n/ac
Khe đọc thẻ nhớ	Không
Ổ đĩa quang	Không
Webcam	FaceTime Camera
Tính năng khác	Hỗ trợ eGPU rời, Bảo mật vân tay
Đèn bàn phím	Có
PIN
Loại PIN	PIN liền
Thông tin Pin	Khoảng 10 giờ
Hệ điều hành
Hệ điều hành	Mac OS
Kích thước & trọng lượng
Kích thước	Dài 304.1 mm - Rộng 212.4 mm - Dày 4.1 mm đến 16.1 mm
Trọng lượng	1.29 kg
Chất liệu	Vỏ kim loại nguyên khối
Thông tin khác
Thời điểm ra mắt	2020', N'https://cdn.tgdd.vn/Products/Images/44/220174/apple-macbook-air-2020-i3-11ghz-8gb-256gb-600x600.jpg', 1)
INSERT [dbo].[Products] ([Id], [Name], [Stock], [Price], [Discount], [CateId], [Description], [Information], [Image], [Display]) VALUES (13, N'Apple Watch S5 40mm viền nhôm dây cao su
', 5, 11990000, 0.05, 5, N'KHUYẾN MÃI
Giảm ngay 500,000đ (Áp dụng từ 15/5 đến hết 17/5) (đã trừ vào giá)', N'Màn hình
Công nghệ màn hình	OLED
Kích thước màn hình	1.57 inch
Độ phân giải	324 x 394 pixels
Chất liệu mặt	Ion-X strengthened glass
Đường kính mặt	40 mm
Cấu hình
CPU	Apple S5 64 bit
Bộ nhớ trong	32 GB
Hệ điều hành	watchOS 6.0
Kết nối được với hệ điều hành	iOS 13 trở lên
Cổng sạc	Đế sạc nam châm
Pin
Thời gian sử dụng pin	Khoảng 1.5 ngày
Thời gian sạc	Khoảng 2 giờ
Dung lượng pin	Đang cập nhật
Tiện ích & kết nối
Tính năng cho sức khỏe	Đo nhịp tim, Tính lượng calories tiêu thụ, Đếm số bước chân, Chế độ luyện tập, Tính quãng đường chạy
Hiển thị thông báo	Cuộc gọi, Nội dung tin nhắn, Tin nhắn, Zalo, Messenger (Facebook), Line, Viber
Tiện ích khác	Nghe gọi trên đồng hồ, Nghe nhạc với tai nghe Bluetooth, Màn hình luôn hiển thị, La bàn, Đồng hồ bấm giờ, Điều khiển chơi nhạc, Rung thông báo, Thay mặt đồng hồ, Phát hiện té ngã, Báo thức, Từ chối cuộc gọi
Kết nối	Bluetooth v5.0, Wifi, GPS
Camera	Không có
Dây đeo
Độ dài dây	Đang cập nhật
Độ rộng dây	Đang cập nhật
Dây có thể tháo rời	Có
Chất liệu dây	Silicon
Thông tin khác
Chất liệu khung viền	Nhôm
Kích thước	Đường kính 40 mm - Dày 10.7 mm
Trọng lượng	30 gram
Ngôn ngữ	Tiếng Việt, Tiếng Anh', N'https://cdn.tgdd.vn/Products/Images/7077/212769/apple-watch-s5-40mm-vien-nhom-day-cao-su10-2-1-600x600.jpg', 1)
INSERT [dbo].[Products] ([Id], [Name], [Stock], [Price], [Discount], [CateId], [Description], [Information], [Image], [Display]) VALUES (14, N'Apple Watch S5 LTE 40mm viền thép dây thép
', 3, 21990000, 0.07, 5, N'KHUYẾN MÃI
Giảm ngay 1,500,000đ (Áp dụng từ 15/5 đến hết 17/5) (đã trừ vào giá)', N'Màn hình
Công nghệ màn hình	OLED
Kích thước màn hình	1.57 inch
Độ phân giải	324 x 394 pixels
Chất liệu mặt	Kính cường lực Saphire
Đường kính mặt	40 mm
Cấu hình
CPU	Apple S5 64 bit
Bộ nhớ trong	32 GB
Hệ điều hành	watchOS 6.0
Kết nối được với hệ điều hành	iOS 13 trở lên
Cổng sạc	Đế sạc nam châm
Pin
Thời gian sử dụng pin	Khoảng 1.5 ngày
Thời gian sạc	Khoảng 1 giờ
Dung lượng pin	Đang cập nhật
Tiện ích & kết nối
Tính năng cho sức khỏe	Đo nhịp tim, Tính lượng calories tiêu thụ, Đếm số bước chân, Chế độ luyện tập, Tính quãng đường chạy
Hiển thị thông báo	Cuộc gọi, Nội dung tin nhắn, Tin nhắn, Zalo, Messenger (Facebook), Line, Viber
Tiện ích khác	Định vị, Hỗ trợ eSIM, Nghe gọi trên đồng hồ, Nghe nhạc với tai nghe Bluetooth, Màn hình luôn hiển thị, La bàn, Đồng hồ bấm giờ, Điều khiển chơi nhạc, Rung thông báo, Thay mặt đồng hồ, Nhận cuộc gọi, Tìm điện thoại, Báo thức, Đồng hồ đếm ngược, Đếm bước chân, Từ chối cuộc gọi, Phát hiện té ngã
Kết nối	Bluetooth v5.0, Wifi, GPS, Hỗ trợ eSim
Camera	Không có
Dây đeo
Độ dài dây	Đang cập nhật
Độ rộng dây	Đang cập nhật
Dây có thể tháo rời	Có
Chất liệu dây	Kim loại
Thông tin khác
Chất liệu khung viền	Thép không gỉ
Kích thước	Đường kính 40 mm - Dày 10.7 mm
Trọng lượng	30 gram
Ngôn ngữ	Tiếng Việt, Tiếng Anh', N'https://cdn.tgdd.vn/Products/Images/7077/215834/apple-watch-s5-lte-40mm-vien-thep-day-thep-thum-600x600.jpg', 1)
INSERT [dbo].[Products] ([Id], [Name], [Stock], [Price], [Discount], [CateId], [Description], [Information], [Image], [Display]) VALUES (15, N'Đồng hồ thông minh trẻ em Kidcare 26', 20, 1290000, 0.08, 5, N'KHUYẾN MÃI
Giảm ngay 100,000đ (Áp dụng từ 15/5 đến hết 17/5) (đã trừ vào giá)', N'Màn hình
Công nghệ màn hình	TFT
Kích thước màn hình	1.44 inch
Độ phân giải	240 x 240 pixels
Chất liệu mặt	Mặt kính nhựa
Đường kính mặt	36 mm
Cấu hình
CPU	MT2503A 260MHz
Bộ nhớ trong	32 MB
Hệ điều hành	Nucleus
Kết nối được với hệ điều hành	iOS 10 trở lên, Android 4.3 trở lên
Cổng sạc	Cổng sạc USB trên thân vòng đeo tay
Pin
Thời gian sử dụng pin	Khoảng 1.5 ngày
Thời gian sạc	Khoảng 2 giờ
Dung lượng pin	500 mAh
Tiện ích & kết nối
Tính năng cho sức khỏe	Không có
Hiển thị thông báo	Không có
Tiện ích khác	Định vị trẻ em, Nghe gọi trên đồng hồ, Lộ trình đường đi, Cuộc gọi khẩn cấp SOS, Chụp ảnh, Báo thức, Chặn số lạ gọi đến, Cài đặt vùng an toàn, Đếm bước chân
Kết nối	LBS, Wifi Location, Hỗ trợ Nano Sim, GPS
Camera	0.08 Mp
Dây đeo
Độ dài dây	18.4 cm
Độ rộng dây	1.9 cm
Dây có thể tháo rời	Có
Chất liệu dây	Silicon
Thông tin khác
Chất liệu khung viền	Nhựa
Kích thước	44.5 mm x 42.2 mm x 15.6 mm
Trọng lượng	48 gram
Ngôn ngữ	Tiếng Việt', N'https://cdn.tgdd.vn/Products/Images/7077/210472/kidcare-26-thum-600x600.jpg', 1)
SET IDENTITY_INSERT [dbo].[Products] OFF
SET IDENTITY_INSERT [dbo].[Roles] ON 

INSERT [dbo].[Roles] ([Id], [RoleName]) VALUES (1, N'User')
INSERT [dbo].[Roles] ([Id], [RoleName]) VALUES (2, N'Admin')
SET IDENTITY_INSERT [dbo].[Roles] OFF
SET IDENTITY_INSERT [dbo].[Statuses] ON 

INSERT [dbo].[Statuses] ([Id], [StatusName]) VALUES (1, N'Chờ xác nhận')
INSERT [dbo].[Statuses] ([Id], [StatusName]) VALUES (2, N'Đang giao hàng')
INSERT [dbo].[Statuses] ([Id], [StatusName]) VALUES (3, N'Đã giao hàng')
INSERT [dbo].[Statuses] ([Id], [StatusName]) VALUES (4, N'Đã huỷ')
SET IDENTITY_INSERT [dbo].[Statuses] OFF
SET IDENTITY_INSERT [dbo].[Users] ON 

INSERT [dbo].[Users] ([Id], [Name], [Email], [Phone], [Address], [Username], [Password], [Avatar], [RoleId], [Lock]) VALUES (2, N'Phạm Thị Thuỷ', N'ptt@gmail.com', N'0347783547', N'97, Man Thiện', N'ptt', N'1234', NULL, 1, 0)
INSERT [dbo].[Users] ([Id], [Name], [Email], [Phone], [Address], [Username], [Password], [Avatar], [RoleId], [Lock]) VALUES (5, N'Lê Thị Thu', N'ltt@gmail.com', N'0356799685', N'99, Man thiện', N'ltt', N'1234', NULL, 1, 0)
INSERT [dbo].[Users] ([Id], [Name], [Email], [Phone], [Address], [Username], [Password], [Avatar], [RoleId], [Lock]) VALUES (6, N'Lê Hồng Quân', N'lhq@gmail.com', N'0326779770', N'48, MT', N'lhq', N'123', NULL, 1, 0)
SET IDENTITY_INSERT [dbo].[Users] OFF
/****** Object:  Index [Unique_UserId]    Script Date: 5/19/2020 9:27:37 PM ******/
ALTER TABLE [dbo].[Carts] ADD  CONSTRAINT [Unique_UserId] UNIQUE NONCLUSTERED 
(
	[UserId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
SET ANSI_PADDING ON

GO
/****** Object:  Index [UQ__Users__536C85E4A2F8190E]    Script Date: 5/19/2020 9:27:37 PM ******/
ALTER TABLE [dbo].[Users] ADD  CONSTRAINT [UQ__Users__536C85E4A2F8190E] UNIQUE NONCLUSTERED 
(
	[Username] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
ALTER TABLE [dbo].[Cards]  WITH CHECK ADD  CONSTRAINT [FK_Cards_Products] FOREIGN KEY([ProId])
REFERENCES [dbo].[Products] ([Id])
GO
ALTER TABLE [dbo].[Cards] CHECK CONSTRAINT [FK_Cards_Products]
GO
ALTER TABLE [dbo].[CartItems]  WITH CHECK ADD  CONSTRAINT [FK__CartItems__CartI__1BFD2C07] FOREIGN KEY([CartId])
REFERENCES [dbo].[Carts] ([Id])
GO
ALTER TABLE [dbo].[CartItems] CHECK CONSTRAINT [FK__CartItems__CartI__1BFD2C07]
GO
ALTER TABLE [dbo].[CartItems]  WITH CHECK ADD  CONSTRAINT [FK__CartItems__ProId__1B0907CE] FOREIGN KEY([ProId])
REFERENCES [dbo].[Products] ([Id])
GO
ALTER TABLE [dbo].[CartItems] CHECK CONSTRAINT [FK__CartItems__ProId__1B0907CE]
GO
ALTER TABLE [dbo].[Carts]  WITH CHECK ADD  CONSTRAINT [FK_Carts_Users] FOREIGN KEY([UserId])
REFERENCES [dbo].[Users] ([Id])
GO
ALTER TABLE [dbo].[Carts] CHECK CONSTRAINT [FK_Carts_Users]
GO
ALTER TABLE [dbo].[OrderItems]  WITH CHECK ADD  CONSTRAINT [FK_OrderItems_Orders] FOREIGN KEY([OrderId])
REFERENCES [dbo].[Orders] ([Id])
GO
ALTER TABLE [dbo].[OrderItems] CHECK CONSTRAINT [FK_OrderItems_Orders]
GO
ALTER TABLE [dbo].[OrderItems]  WITH CHECK ADD  CONSTRAINT [FK_OrderItems_Products] FOREIGN KEY([ProId])
REFERENCES [dbo].[Products] ([Id])
GO
ALTER TABLE [dbo].[OrderItems] CHECK CONSTRAINT [FK_OrderItems_Products]
GO
ALTER TABLE [dbo].[Orders]  WITH CHECK ADD  CONSTRAINT [FK_Orders_Statuses] FOREIGN KEY([StatusId])
REFERENCES [dbo].[Statuses] ([Id])
GO
ALTER TABLE [dbo].[Orders] CHECK CONSTRAINT [FK_Orders_Statuses]
GO
ALTER TABLE [dbo].[Orders]  WITH CHECK ADD  CONSTRAINT [FK_Orders_Users] FOREIGN KEY([UserId])
REFERENCES [dbo].[Users] ([Id])
GO
ALTER TABLE [dbo].[Orders] CHECK CONSTRAINT [FK_Orders_Users]
GO
ALTER TABLE [dbo].[Products]  WITH CHECK ADD  CONSTRAINT [FK__Products__CateId__15502E78] FOREIGN KEY([CateId])
REFERENCES [dbo].[Categories] ([CateId])
GO
ALTER TABLE [dbo].[Products] CHECK CONSTRAINT [FK__Products__CateId__15502E78]
GO
ALTER TABLE [dbo].[Users]  WITH CHECK ADD  CONSTRAINT [FK_Users_Roles] FOREIGN KEY([RoleId])
REFERENCES [dbo].[Roles] ([Id])
GO
ALTER TABLE [dbo].[Users] CHECK CONSTRAINT [FK_Users_Roles]
GO
/****** Object:  StoredProcedure [dbo].[CancelOrder]    Script Date: 5/19/2020 9:27:37 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [dbo].[CancelOrder]
	@orderId INT
AS
BEGIN
	IF NOT EXISTS(SELECT * FROM dbo.Orders WHERE Id = @orderId)
		SELECT 0 AS result, N'thất bại' AS message	--Thất bại
	ELSE
	BEGIN
		UPDATE dbo.Orders 
		SET StatusId = 4
		WHERE Id = @orderId

		SELECT 1 AS result, N'thành công' AS message	--Thành công
	END		
END

GO
/****** Object:  StoredProcedure [dbo].[ChangePassword]    Script Date: 5/19/2020 9:27:37 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[ChangePassword]
	@userId INT,
	@oldPass VARCHAR(36),
	@newPass VARCHAR(36)
AS
BEGIN
	IF EXISTS (SELECT * FROM dbo.Users WHERE Id = @userId AND Password != @oldPass)
		SELECT -1 AS result, N'mật khẩu cũ không đúng' AS message --mật khẩu cũ không đúng
	ELSE
		BEGIN
			UPDATE dbo.Users 
			SET Password = @newPass
			WHERE Id = @userId

			SELECT 1 AS result, N'thành công' AS message --thành công
		END
END

GO
/****** Object:  StoredProcedure [dbo].[CheckOut]    Script Date: 5/19/2020 9:27:37 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [dbo].[CheckOut]
	@userId INT,
	@name NVARCHAR(50),
	@phone NCHAR(10),
	@email NVARCHAR(50),
	@address NVARCHAR(50),
	@note NVARCHAR(200)	
AS
BEGIN
	DECLARE @cartId INT = 0

	SET @cartId = (SELECT Id FROM dbo.Carts WHERE UserId = @userId)	 
			
	SET XACT_ABORT ON
	BEGIN TRY
		BEGIN TRANSACTION
		
		--xử lý
		INSERT dbo.Orders
	        ( UserId ,
	          BuyDate ,
	          Name ,
	          Phone ,
	          Email ,
	          Address ,
	          Note ,
	          StatusId
	        )
		VALUES  ( @userId , -- UserId - int
				  GETDATE() , -- BuyDate - date
				  @name , -- Name - nvarchar(50)
				  @phone , -- Phone - nchar(10)
				  @email , -- Email - nvarchar(50)
				  @address , -- Address - nvarchar(50)
				  @note , -- Note - nvarchar(200)
				  1  -- StatusId - int
				)

		INSERT INTO dbo.OrderItems (Quantity, UnitPrice, ProId, OrderId)
		SELECT ci.Quantity, pro.Price - (pro.Price * pro.Discount), ci.ProId, (SELECT TOP(1)Id FROM dbo.Orders ORDER BY Id DESC)
		FROM dbo.CartItems ci INNER JOIN dbo.Products pro ON pro.Id = ci.ProId
		WHERE ci.CartId = @cartId	

		UPDATE dbo.Products SET Stock = Stock - oi.Quantity 
		FROM dbo.Products pro INNER JOIN dbo.OrderItems oi ON oi.ProId = pro.Id
		WHERE oi.OrderId = (SELECT TOP(1)Id FROM dbo.Orders ORDER BY Id DESC)	

		DELETE dbo.CartItems
		WHERE CartId = @cartId
		---------------------------
		IF(@@TRANCOUNT > 0)
		BEGIN
			PRINT 'Commit Success'
			COMMIT TRANSACTION
			SELECT 1 AS result, N'thành công' AS message	--Thành công
		END
	END TRY
	BEGIN CATCH
		IF(@@TRANCOUNT > 0)
		BEGIN
			ROLLBACK TRANSACTION
			PRINT 'Commit Failure'
			SELECT 0 AS result, N'thất bại' AS message	--Thất bại
		END
	END CATCH

END

GO
/****** Object:  StoredProcedure [dbo].[DeleteCartItem]    Script Date: 5/19/2020 9:27:37 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[DeleteCartItem]
	@userId INT,
	@productId INT
AS
BEGIN
	DECLARE @cartId INT = 0 
	DECLARE @cartItemId INT = 0
	
	SET @cartId = (SELECT Id FROM dbo.Carts WHERE UserId = @userId)
	SET @cartItemId = (SELECT Id FROM dbo.CartItems	WHERE CartId = @cartId AND ProId = @productId)

	IF (@cartItemId > 0)
		BEGIN
			DELETE dbo.CartItems
			WHERE Id = @cartItemId

			SELECT 1 AS result, N'thành công' AS message --thành công
		END
	ELSE
		SELECT 0 AS result, N'thất bại' AS message --thất bại
END

GO
/****** Object:  StoredProcedure [dbo].[GetAllCards]    Script Date: 5/19/2020 9:27:37 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [dbo].[GetAllCards]	
AS
BEGIN
	SELECT *
	FROM dbo.Cards
END

GO
/****** Object:  StoredProcedure [dbo].[GetAllCategories]    Script Date: 5/19/2020 9:27:37 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [dbo].[GetAllCategories]	
AS
BEGIN
	SELECT *
	FROM dbo.Categories
END

GO
/****** Object:  StoredProcedure [dbo].[GetAllOrdersOfUser]    Script Date: 5/19/2020 9:27:37 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [dbo].[GetAllOrdersOfUser]
	@userId INT	
AS
BEGIN
	SELECT *
	FROM dbo.Orders
	WHERE UserId = @userId
END

GO
/****** Object:  StoredProcedure [dbo].[GetAllOrderStatus]    Script Date: 5/19/2020 9:27:37 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [dbo].[GetAllOrderStatus]
AS
BEGIN
	SELECT *
	FROM dbo.Statuses
END

GO
/****** Object:  StoredProcedure [dbo].[GetAllProducts]    Script Date: 5/19/2020 9:27:37 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [dbo].[GetAllProducts]
AS
    BEGIN
        SELECT  *
        FROM    dbo.Products
    END

GO
/****** Object:  StoredProcedure [dbo].[GetAllProductsOfCart]    Script Date: 5/19/2020 9:27:37 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [dbo].[GetAllProductsOfCart]
	@userId INT	
AS
BEGIN
	SELECT pro.*,ci.Quantity
	FROM dbo.Products pro INNER JOIN dbo.CartItems ci ON ci.ProId = pro.Id
	WHERE ci.CartId = (SELECT Id FROM dbo.Carts WHERE UserId = @userId)  
END

GO
/****** Object:  StoredProcedure [dbo].[GetAllProductsOfCategory]    Script Date: 5/19/2020 9:27:37 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [dbo].[GetAllProductsOfCategory]
	@cateId INT		
AS
BEGIN
	SELECT *
	FROM dbo.Products
	WHERE CateId = @cateId
END

GO
/****** Object:  StoredProcedure [dbo].[GetAllSaleProducts]    Script Date: 5/19/2020 9:27:37 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [dbo].[GetAllSaleProducts]		
AS
BEGIN
	SELECT *
	FROM dbo.Products
	WHERE Discount > 0
END

GO
/****** Object:  StoredProcedure [dbo].[GetCartCount]    Script Date: 5/19/2020 9:27:37 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [dbo].[GetCartCount]
	@userId INT	
AS
BEGIN
	SELECT COUNT(ProId)
	FROM dbo.CartItems INNER JOIN dbo.Carts
	ON Carts.Id = CartItems.CartId
	WHERE UserId = @userId	
END

GO
/****** Object:  StoredProcedure [dbo].[GetOrderByStatus]    Script Date: 5/19/2020 9:27:37 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[GetOrderByStatus]
	@userId INT,
	@statusId INT
AS
BEGIN
	SELECT *
	FROM dbo.Orders
	WHERE StatusId = @statusId AND UserId = @userId
END

GO
/****** Object:  StoredProcedure [dbo].[GetOrderItemByOrder]    Script Date: 5/19/2020 9:27:37 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[GetOrderItemByOrder]
	@orderId INT
AS
BEGIN
	SELECT oi.*,pro.Name,pro.Image
	FROM dbo.OrderItems oi INNER JOIN dbo.Products pro ON pro.Id = oi.ProId
	WHERE OrderId = @orderId
END

GO
/****** Object:  StoredProcedure [dbo].[GetProductDetailById]    Script Date: 5/19/2020 9:27:37 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[GetProductDetailById]
	@productId INT
AS
BEGIN
	SELECT *
	FROM dbo.Products
	WHERE Id = @productId
END

GO
/****** Object:  StoredProcedure [dbo].[GetUserInfoById]    Script Date: 5/19/2020 9:27:37 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[GetUserInfoById]
	@userId INT
AS
BEGIN		
		SELECT *
		FROM dbo.Users
		WHERE Id = @userId
END

GO
/****** Object:  StoredProcedure [dbo].[Login]    Script Date: 5/19/2020 9:27:37 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[Login]
	@userName VARCHAR(50),
	@password VARCHAR(36)
AS
BEGIN
	IF NOT EXISTS (SELECT * FROM dbo.Users WHERE Username = @userName OR Email = @userName OR Phone = @userName)
		SELECT -1 AS result, N'sai username' AS message --sai userName
	ELSE IF EXISTS (SELECT * FROM dbo.Users WHERE (Username = @userName OR Email = @userName OR Phone = @userName) AND Password != @password)
		SELECT -2 AS result, N'đúng userName, sai password' AS message --đúng userName, sai password
	ELSE		
		SELECT Id AS result, N'đăng nhập thành công' AS message --đăng nhập thành công
		FROM dbo.Users
		WHERE (Username = @userName OR Email = @userName OR Phone = @userName) AND Password = @password
END

GO
/****** Object:  StoredProcedure [dbo].[MinusCartItem]    Script Date: 5/19/2020 9:27:37 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [dbo].[MinusCartItem]
	@userId INT,
	@productId INT	
AS
BEGIN
	DECLARE @cartId INT = 0 
	DECLARE @cartItemId INT = 0 	 
	DECLARE @quantity INT = 0
	
	SET @cartId = (SELECT Id FROM dbo.Carts WHERE UserId = @userId)
	SET @cartItemId = (SELECT Id FROM dbo.CartItems	WHERE CartId = @cartId AND ProId = @productId)
	SET @quantity = (SELECT Quantity FROM dbo.CartItems WHERE CartId = @cartId AND ProId = @productId)
									
	IF (@cartItemId > 0)
		BEGIN
			IF (@quantity > 1)
				BEGIN
					UPDATE dbo.CartItems 
					SET Quantity = Quantity - 1
					WHERE Id = @cartItemId
				END
			ELSE
				BEGIN
					DELETE dbo.CartItems
					WHERE Id = @cartItemId
				END
			SELECT 1 AS result, N'thành công' AS message --thành công
		END
	ELSE
		SELECT 0 AS result, N'thất bại' AS message --thất bại	
END

GO
/****** Object:  StoredProcedure [dbo].[PlusCartItem]    Script Date: 5/19/2020 9:27:37 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [dbo].[PlusCartItem]
	@userId INT,
	@productId INT,
	@quantity INT	
AS
BEGIN
	DECLARE @cartId INT = 0
	DECLARE @cartItemId INT = 0
	DECLARE @stock INT = 0

	SET @cartId = (SELECT Id FROM dbo.Carts WHERE UserId = @userId)
	SET @cartItemId = (SELECT Id FROM dbo.CartItems WHERE CartId = @cartId AND ProId = @productId)	 
	SET @stock = (SELECT pro.Stock FROM dbo.Products pro INNER JOIN dbo.CartItems ci ON ci.ProId = pro.Id WHERE ci.Id = @cartItemId)
		
	IF (@cartItemId > 0)
		BEGIN
			IF(@quantity <= @stock)
				BEGIN
					UPDATE dbo.CartItems 
					SET Quantity = Quantity + @quantity 
					WHERE Id = @cartItemId

					SELECT 1 AS result, N'thành công' AS message --thành công
				END
			ELSE
				SELECT -1 AS result, N'số lượng tồn không đủ' AS message --số lượng tồn không đủ 				
		END
	ELSE
		BEGIN
			INSERT dbo.CartItems
			        ( Quantity, ProId, CartId )
			VALUES  ( @quantity, -- Quantity - int
			          @productId, -- ProId - int
			          @cartId  -- CartId - int
			          )
			SELECT 1 AS result, N'thành công' AS message --thành công
		END      
END

GO
/****** Object:  StoredProcedure [dbo].[SignUp]    Script Date: 5/19/2020 9:27:37 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [dbo].[SignUp]	
	@userName VARCHAR(50),
	@password VARCHAR(36),
	@name NVARCHAR(50),
	@email NVARCHAR(50),
	@phone NCHAR(10),
	@address NVARCHAR(150)
AS
BEGIN
	IF EXISTS (SELECT * FROM dbo.Users WHERE Username = @userName)
		SELECT -1 AS result, N'trùng userName' AS message --trùng userName
	ELSE IF EXISTS (SELECT * FROM dbo.Users WHERE Email = @email)
		SELECT -2 AS result, N'trùng email' AS message --trùng email
	ELSE IF EXISTS (SELECT * FROM dbo.Users WHERE Phone = @phone)
		SELECT -3 AS result, N'trùng số điện thoại' AS message --trùng phone
	ELSE
		BEGIN	
			INSERT dbo.Users
			        ( Name ,
			          Email ,
			          Phone ,
			          Address ,
			          Username ,
			          Password ,
			          Avatar ,
			          RoleId ,
			          Lock
			        )
			VALUES  ( @name , -- Name - nvarchar(50)
			          @email , -- Email - nvarchar(50)
			          @phone , -- Phone - nchar(10)
			          @address , -- Address - nvarchar(150)
			          @userName , -- Username - varchar(50)
			          @password , -- Password - varchar(36)
			          NULL , -- Avatar - nvarchar(500)
			          1 , -- RoleId - int
			          0  -- Lock - bit
			        )
			
			INSERT dbo.Carts
			        ( UserId )
			VALUES  ( (SELECT TOP(1)Id FROM dbo.Users ORDER BY Id DESC)   -- UserId - int
			          )

			SELECT 1 AS result, N'đăng ký thành công' AS message --đăng ký thành công
		END
		
END

GO
/****** Object:  StoredProcedure [dbo].[UpdateUserInfo]    Script Date: 5/19/2020 9:27:37 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[UpdateUserInfo]
	@userId INT,
	@name NVARCHAR(50),
	@email NVARCHAR(50),
	@phone NCHAR(10),
	@address NVARCHAR(150),
	@avatar NVARCHAR(500)
AS
BEGIN
	IF EXISTS (SELECT * FROM dbo.Users WHERE Id != @userId AND Email = @email)
		SELECT -1 AS result, N'email đã được sử dụng' AS message --email đã được sử dụng
	ELSE IF EXISTS (SELECT * FROM dbo.Users WHERE Id != @userId AND Phone = @phone)
		SELECT -2 AS result, N'số điện thoại đã được sử dụng' AS message --số điện thoại đã được sử dụng
	ELSE
		BEGIN
			UPDATE dbo.Users 
			SET Name = @name, 
				Email = @email, 
				Phone = @phone, 
				Address = @address, 
				Avatar = @avatar
			WHERE Id = @userId

			SELECT 1 AS result, N'thành công' AS message --thành công
		END
END

GO
