USE [master]
GO
/****** Object:  Database [PRJ301_CMS]    Script Date: 22/04/2023 11:04:24 PM ******/
CREATE DATABASE [PRJ301_CMS]
GO
ALTER DATABASE [PRJ301_CMS] SET COMPATIBILITY_LEVEL = 150
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [PRJ301_CMS].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [PRJ301_CMS] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [PRJ301_CMS] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [PRJ301_CMS] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [PRJ301_CMS] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [PRJ301_CMS] SET ARITHABORT OFF 
GO
ALTER DATABASE [PRJ301_CMS] SET AUTO_CLOSE OFF 
GO
ALTER DATABASE [PRJ301_CMS] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [PRJ301_CMS] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [PRJ301_CMS] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [PRJ301_CMS] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [PRJ301_CMS] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [PRJ301_CMS] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [PRJ301_CMS] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [PRJ301_CMS] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [PRJ301_CMS] SET  DISABLE_BROKER 
GO
ALTER DATABASE [PRJ301_CMS] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [PRJ301_CMS] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [PRJ301_CMS] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [PRJ301_CMS] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [PRJ301_CMS] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [PRJ301_CMS] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [PRJ301_CMS] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [PRJ301_CMS] SET RECOVERY FULL 
GO
ALTER DATABASE [PRJ301_CMS] SET  MULTI_USER 
GO
ALTER DATABASE [PRJ301_CMS] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [PRJ301_CMS] SET DB_CHAINING OFF 
GO
ALTER DATABASE [PRJ301_CMS] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [PRJ301_CMS] SET TARGET_RECOVERY_TIME = 60 SECONDS 
GO
ALTER DATABASE [PRJ301_CMS] SET DELAYED_DURABILITY = DISABLED 
GO
ALTER DATABASE [PRJ301_CMS] SET ACCELERATED_DATABASE_RECOVERY = OFF  
GO
EXEC sys.sp_db_vardecimal_storage_format N'PRJ301_CMS', N'ON'
GO
ALTER DATABASE [PRJ301_CMS] SET QUERY_STORE = OFF
GO
USE [PRJ301_CMS]
GO
/****** Object:  Table [dbo].[tblDanhMuc]    Script Date: 22/04/2023 11:04:24 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tblDanhMuc](
	[madm] [int] IDENTITY(1,1) NOT NULL,
	[tendm] [nvarchar](50) NULL,
	[trangthai] [bit] NULL,
 CONSTRAINT [PK_tblDanhMuc] PRIMARY KEY CLUSTERED 
(
	[madm] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tblNhomTaiKhoan]    Script Date: 22/04/2023 11:04:24 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tblNhomTaiKhoan](
	[nhomtk] [int] IDENTITY(1,1) NOT NULL,
	[mota] [nvarchar](50) NULL,
	[trangthai] [bit] NULL,
 CONSTRAINT [PK_tblNhomTaiKhoan] PRIMARY KEY CLUSTERED 
(
	[nhomtk] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tblSanPham]    Script Date: 22/04/2023 11:04:24 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tblSanPham](
	[masp] [int] IDENTITY(1,1) NOT NULL,
	[tensp] [nvarchar](50) NULL,
	[mota] [nvarchar](max) NULL,
	[soluong] [int] NULL,
	[dongia] [float] NULL,
	[hinhanh] [nvarchar](250) NULL,
	[trangthai] [bit] NULL,
	[madm] [int] NULL,
	[mancc] [nvarchar](250) NULL,
 CONSTRAINT [PK_Table_1] PRIMARY KEY CLUSTERED 
(
	[masp] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tblTaiKhoan]    Script Date: 22/04/2023 11:04:24 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tblTaiKhoan](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[tentk] [nvarchar](50) NULL,
	[matkhau] [nvarchar](50) NULL,
	[trangthai] [bit] NULL,
	[email] [nvarchar](50) NULL,
	[nhomtk] [int] NULL,
 CONSTRAINT [PK_tblTaiKhoan] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[tblDanhMuc] ON 
GO
INSERT [dbo].[tblDanhMuc] ([madm], [tendm], [trangthai]) VALUES (1, N'Audi', 1)
GO
INSERT [dbo].[tblDanhMuc] ([madm], [tendm], [trangthai]) VALUES (2, N'Toyota', 1)
GO
INSERT [dbo].[tblDanhMuc] ([madm], [tendm], [trangthai]) VALUES (3, N'Hyundai', 1)
GO
INSERT [dbo].[tblDanhMuc] ([madm], [tendm], [trangthai]) VALUES (4, N'BMW', 1)
GO
INSERT [dbo].[tblDanhMuc] ([madm], [tendm], [trangthai]) VALUES (5, N'Vinfast', 1)
GO
INSERT [dbo].[tblDanhMuc] ([madm], [tendm], [trangthai]) VALUES (6, N'Mazda', 1)
GO
INSERT [dbo].[tblDanhMuc] ([madm], [tendm], [trangthai]) VALUES (7, N'KIA', 1)
GO
INSERT [dbo].[tblDanhMuc] ([madm], [tendm], [trangthai]) VALUES (8, N'Mercedes', 1)
GO
SET IDENTITY_INSERT [dbo].[tblDanhMuc] OFF
GO
SET IDENTITY_INSERT [dbo].[tblNhomTaiKhoan] ON 
GO
INSERT [dbo].[tblNhomTaiKhoan] ([nhomtk], [mota], [trangthai]) VALUES (1, N'quantrivien', 1)
GO
INSERT [dbo].[tblNhomTaiKhoan] ([nhomtk], [mota], [trangthai]) VALUES (9, N'giám đốc', 1)
GO
SET IDENTITY_INSERT [dbo].[tblNhomTaiKhoan] OFF
GO
SET IDENTITY_INSERT [dbo].[tblSanPham] ON 
GO
INSERT [dbo].[tblSanPham] ([masp], [tensp], [mota], [soluong], [dongia], [hinhanh], [trangthai], [madm], [mancc]) VALUES (10, N'AUDI A5 RS 2023', N'
The 2023 Audi A5 RS is a high-performance sports car with a powerful 2.9-liter V6 engine, sport-tuned suspension, sleek exterior design, and luxurious interior. It offers an exhilarating driving experience with excellent handling and stability, and advanced technology features such as a digital gauge cluster and a Bang & Olufsen sound system. The A5 RS is designed to combine high-performance capabilities with comfort and luxury, making it a highly desirable sports car.', 1, 100000, N'https://giaxe60s.com/images/danhmuc/audi-rs51.jpg', 1, 1, NULL)
GO
INSERT [dbo].[tblSanPham] ([masp], [tensp], [mota], [soluong], [dongia], [hinhanh], [trangthai], [madm], [mancc]) VALUES (11, N'AUDI Q5 2023', N'
The 2023 Audi Q5 is a luxury compact SUV that offers a blend of performance, comfort, and technology. It comes with a standard 2.0-liter four-cylinder engine that produces 261 horsepower and 273 lb-ft of torque, paired with a seven-speed dual-clutch automatic transmission. The Q5 also features Audi Quattro all-wheel-drive system and a sport-tuned suspension for an engaging driving experience. The interior is spacious and luxurious, with premium materials and advanced technology features such as a digital gauge cluster, a large infotainment display, and a Bang & Olufsen sound system', 2, 150000, N'https://i2-vnexpress.vnecdn.net/2021/09/19/AudiQ52021611487231626964582jpg-1632032037.jpg?w=750&h=450&q=100&dpr=1&fit=crop&s=NwEKqJbE2XId37ctJi5V2Q', 1, 1, NULL)
GO
INSERT [dbo].[tblSanPham] ([masp], [tensp], [mota], [soluong], [dongia], [hinhanh], [trangthai], [madm], [mancc]) VALUES (12, N'AUDI A1 Sportback', N'The Audi A1 Sportback is a subcompact hatchback that offers sporty style, agile handling, and advanced technology features. It comes with a range of efficient gasoline and diesel engines, with power outputs ranging from 94 to 197 horsepower, and offers a choice of a manual or automatic transmission. The car compact size and responsive steering make it an excellent city car, while its sport-tuned suspension and available Quattro all-wheel-drive system offer a more engaging driving experience', 1, 50000, N'https://cdn.motor1.com/images/mgl/XBBYl2/s3/2023-audi-a1-allstreet.jpg', 1, 1, NULL)
GO
INSERT [dbo].[tblSanPham] ([masp], [tensp], [mota], [soluong], [dongia], [hinhanh], [trangthai], [madm], [mancc]) VALUES (13, N'Toyota Camry 2.5Q 2022', N'The Toyota Camry 2.5Q 2022 is a midsize sedan that offers a comfortable ride, advanced technology features, and impressive fuel efficiency. It comes with a 2.5-liter four-cylinder engine that produces 203 horsepower and is available in both front-wheel and all-wheel-drive configurations. The interior is spacious and comfortable, with high-quality materials and advanced technology features such as a large infotainment display with Apple CarPlay and Android Auto compatibility and a JBL premium audio system. The car also features advanced safety features such as a backup camera, blind-spot monitoring, and rear cross-traffic alert.', 1, 65000, N'https://danviet.mediacdn.vn/296231569849192448/2022/12/18/chay-197km-toyota-camry-25q-2022-da-rao-ban-lo-kho-tin-danvietvn-4-16713734691331301949217.jpg', 1, 2, NULL)
GO
INSERT [dbo].[tblSanPham] ([masp], [tensp], [mota], [soluong], [dongia], [hinhanh], [trangthai], [madm], [mancc]) VALUES (14, N'Toyota Fortuner 2021', N'The Toyota Fortuner 2021 is a midsize SUV that offers a rugged design, powerful performance, and advanced technology features. It comes with a choice of two engines: a 2.7-liter four-cylinder engine that produces 164 horsepower and a 4.0-liter V6 engine that produces 278 horsepower, both paired with a six-speed automatic transmission. The Fortuner is available in both rear-wheel drive and all-wheel drive configurations.', 1, 70000, N'https://files01.danhgiaxe.com/1AuIvsQfzuNfKj6pPUh4_04L8vY=/fit-in/1200x0/20200930/danhgiaxe.com-toyota-fortuner-2021-11-230758.jpg', 1, 2, NULL)
GO
INSERT [dbo].[tblSanPham] ([masp], [tensp], [mota], [soluong], [dongia], [hinhanh], [trangthai], [madm], [mancc]) VALUES (15, N'Hyundai Accent 2023', N'The Hyundai Accent 2021 is a subcompact sedan that offers a practical and affordable driving option for those looking for a reliable and fuel-efficient car. It is equipped with a 1.6-liter four-cylinder engine that produces 120 horsepower and is paired with either a six-speed manual or a continuously variable transmission (CVT).', 1, 30000, N'https://oto8s.com/uploads/files/Hyundai/Accent%202023/Accent%202023%201.jpg', 1, 3, NULL)
GO
INSERT [dbo].[tblSanPham] ([masp], [tensp], [mota], [soluong], [dongia], [hinhanh], [trangthai], [madm], [mancc]) VALUES (16, N'Hyundai Tucson 2021', N'The Hyundai Tucson 2021 is a compact SUV that offers a stylish and modern design, advanced technology features, and a comfortable ride. It is available with two engine options: a 2.5-liter four-cylinder engine that produces 187 horsepower and a 1.6-liter four-cylinder engine that produces 227 horsepower when paired with a hybrid system. The car transmission options include an eight-speed automatic and a six-speed automatic transmission.', 1, 40000, N'https://img1.oto.com.vn/2020/10/30/4Cs5VWrI/hyundai-tucson-2021-oto-com-1-e756.jpg', 1, 3, NULL)
GO
INSERT [dbo].[tblSanPham] ([masp], [tensp], [mota], [soluong], [dongia], [hinhanh], [trangthai], [madm], [mancc]) VALUES (17, N'BMW 320i 2020', N'The BMW 320i 2020 is a luxury compact sedan that offers a sporty driving experience, advanced technology features, and a refined interior. It is equipped with a 2.0-liter turbocharged four-cylinder engine that produces 180 horsepower and is paired with an eight-speed automatic transmission. The car is available in both rear-wheel and all-wheel-drive configurations.', 1, 85000, N'https://autopro8.mediacdn.vn/2020/4/22/bmw-3-series-cac-phien-ban-16-1587532639946455821534.jpg', 1, 4, NULL)
GO
INSERT [dbo].[tblSanPham] ([masp], [tensp], [mota], [soluong], [dongia], [hinhanh], [trangthai], [madm], [mancc]) VALUES (18, N'Vinfast Lux A2.0 2020', N'The VinFast Lux A2.0 is a mid-size sedan produced by the Vietnamese automaker VinFast. It features a stylish and modern design, a spacious and luxurious interior, and is equipped with a 2.0-liter turbocharged four-cylinder engine that produces 228 horsepower. The car comes with advanced technology features such as a large infotainment display, a panoramic sunroof, and a premium audio system. The Lux A2.0 also comes with advanced safety features, including automatic emergency braking, lane departure warning, and blind-spot monitoring. It offers a comfortable ride and good handling, making it a great choice for those looking for a luxurious and practical sedan.', 1, 28000, N'https://giaxeoto.vn/admin/upload/images/chi-tiet-xe-sedan-vinfast-lux-a20-1569306270.JPG', 1, 5, NULL)
GO
INSERT [dbo].[tblSanPham] ([masp], [tensp], [mota], [soluong], [dongia], [hinhanh], [trangthai], [madm], [mancc]) VALUES (19, N'Mazda 6 2.0L Premium 2019', N'The Mazda 6 exterior features a sleek and sporty design, and it offers impressive handling and a comfortable ride. The car suspension system is well-tuned, and it offers a refined driving experience. Overall, the Mazda 6 2.0L Premium 2019 is a well-rounded mid-size sedan that offers a stylish design, advanced technology features, and excellent safety ratings, making it an excellent choice for those looking for a practical and reliable sedan.', 1, 30000, N'https://autobikes.vn/stores/news_dataimages/vantrinh/032019/05/09/1322_Autobikes-gia-lan-banh-Mazda6-2019.jpg', 1, 6, NULL)
GO
INSERT [dbo].[tblSanPham] ([masp], [tensp], [mota], [soluong], [dongia], [hinhanh], [trangthai], [madm], [mancc]) VALUES (20, N'KIA Seltos 1.6 Deluxe 2022', N'The KIA Seltos 1.6 Deluxe 2022 is a compact SUV that offers a stylish design, advanced technology features, and a comfortable ride. It is powered by a 1.6-liter turbocharged four-cylinder engine that produces 175 horsepower and is paired with a seven-speed dual-clutch automatic transmission. The car fuel efficiency is noteworthy, with an EPA-estimated 29 mpg in combined city/highway driving.', 1, 25000, N'https://giaxeoto.vn/admin/upload/images/resize/640-gia-xe-kia-seltos.jpg', 1, 7, NULL)
GO
INSERT [dbo].[tblSanPham] ([masp], [tensp], [mota], [soluong], [dongia], [hinhanh], [trangthai], [madm], [mancc]) VALUES (21, N'Mercedes C300 AMG 2021', N'The Mercedes C300 AMG 2021 is a luxury mid-size sedan that offers a sleek and sporty design, advanced technology features, and a comfortable ride. It is powered by a 2.0-liter turbocharged four-cylinder engine that produces 255 horsepower and is paired with a nine-speed automatic transmission. The car fuel efficiency is noteworthy, with an EPA-estimated 27 mpg in combined city/highway driving.', 1, 75000, N'https://giaxeoto.vn/admin/upload/images/resize/640-ngoai-that-xe-mercedes-c300-amg.jpg', 1, 8, NULL)
GO
INSERT [dbo].[tblSanPham] ([masp], [tensp], [mota], [soluong], [dongia], [hinhanh], [trangthai], [madm], [mancc]) VALUES (23, N'Mazda CX5 2.0 Premium AT 2022', N'The Mazda CX-5 2022 is a compact SUV that offers a sleek and sophisticated design, advanced technology features, and a comfortable ride. It is available with two engine options, including a standard 2.5-liter four-cylinder engine that produces 187 horsepower and a turbocharged 2.5-liter four-cylinder engine that produces 227 horsepower. Both engine options are paired with a six-speed automatic transmission', 1, 38000, N'https://giaxeoto.vn/admin/upload/images/resize/640-mazda-cx5-2023-co-gi-moi.jpg', 1, 6, NULL)
GO
INSERT [dbo].[tblSanPham] ([masp], [tensp], [mota], [soluong], [dongia], [hinhanh], [trangthai], [madm], [mancc]) VALUES (24, N'KIA K5 2022', N'The Kia K5 2022 is a midsize sedan that offers a stylish design, advanced technology features, and a comfortable ride. It is available with two engine options, including a standard 1.6-liter turbocharged four-cylinder engine that produces 180 horsepower and a turbocharged 2.5-liter four-cylinder engine that produces 290 horsepower. Both engine options are paired with an eight-speed automatic transmission. The car fuel efficiency is noteworthy, with an EPA-estimated 31 mpg in combined city/highway driving for the standard engine.', 1, 39000, N'https://giaxeoto.vn/admin/upload/images/resize/640-Kia-K5-mau-do.jpg', 1, 7, NULL)
GO
INSERT [dbo].[tblSanPham] ([masp], [tensp], [mota], [soluong], [dongia], [hinhanh], [trangthai], [madm], [mancc]) VALUES (25, N'Vinfast President 2022', N'Vinfast President is known as a full-size luxury SUV model produced by Vinfast, a Vietnamese automaker. The Vinfast Lux V8 concept car was previously showcased at the 2019 Geneva Motor Show, which generated a lot of curiosity and excitement among car enthusiasts. The fact that the car was displayed on the world stage before being introduced in Vietnam shows Vinfast systematic and calculated approach.', 1, 150000, N'https://giaxeoto.vn/admin/upload/images/resize/640-ngoai-that-xe-vinfast-president.JPG', 1, 5, NULL)
GO
SET IDENTITY_INSERT [dbo].[tblSanPham] OFF
GO
SET IDENTITY_INSERT [dbo].[tblTaiKhoan] ON 
GO
INSERT [dbo].[tblTaiKhoan] ([id], [tentk], [matkhau], [trangthai], [email], [nhomtk]) VALUES (15, N'admin', N'123', 1, N'abc@gmail.com', 1)
GO
INSERT [dbo].[tblTaiKhoan] ([id], [tentk], [matkhau], [trangthai], [email], [nhomtk]) VALUES (17, N'giamdoc', N'123', 1, N'abc@gmail.com', 9)
GO
SET IDENTITY_INSERT [dbo].[tblTaiKhoan] OFF
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [IX_tblTaiKhoan]    Script Date: 22/04/2023 11:04:24 PM ******/
ALTER TABLE [dbo].[tblTaiKhoan] ADD  CONSTRAINT [IX_tblTaiKhoan] UNIQUE NONCLUSTERED 
(
	[tentk] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
ALTER TABLE [dbo].[tblSanPham]  WITH CHECK ADD  CONSTRAINT [FK_tblSanPham_tblDanhMuc] FOREIGN KEY([madm])
REFERENCES [dbo].[tblDanhMuc] ([madm])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[tblSanPham] CHECK CONSTRAINT [FK_tblSanPham_tblDanhMuc]
GO
ALTER TABLE [dbo].[tblTaiKhoan]  WITH CHECK ADD  CONSTRAINT [FK_tblTaiKhoan_tblNhomTaiKhoan] FOREIGN KEY([nhomtk])
REFERENCES [dbo].[tblNhomTaiKhoan] ([nhomtk])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[tblTaiKhoan] CHECK CONSTRAINT [FK_tblTaiKhoan_tblNhomTaiKhoan]
GO
USE [master]
GO
ALTER DATABASE [PRJ301_CMS] SET  READ_WRITE 
GO
