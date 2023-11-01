USE [qlSachTuNhan]
GO
/****** Object:  Table [dbo].[ca]    Script Date: 11/2/2023 1:41:13 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ca](
	[maCa] [int] NOT NULL,
	[gioBatDau] [nvarchar](3) NOT NULL,
	[gioKetThuc] [nvarchar](3) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[maCa] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[chiTietDatHang]    Script Date: 11/2/2023 1:41:13 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[chiTietDatHang](
	[maDH] [nvarchar](5) NOT NULL,
	[maSP] [nvarchar](5) NOT NULL,
	[soLuong] [int] NOT NULL,
	[donGiaNhap] [float] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[maDH] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[chiTietHD]    Script Date: 11/2/2023 1:41:13 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[chiTietHD](
	[maHD] [nvarchar](5) NOT NULL,
	[maSP] [nvarchar](5) NOT NULL,
	[soLuong] [int] NOT NULL,
	[donGia] [float] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[maHD] ASC,
	[maSP] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[hoaDon]    Script Date: 11/2/2023 1:41:13 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[hoaDon](
	[maHD] [nvarchar](5) NOT NULL,
	[maNV] [nvarchar](5) NOT NULL,
	[maKH] [nvarchar](5) NOT NULL,
	[ngayTaoHD] [date] NULL,
PRIMARY KEY CLUSTERED 
(
	[maHD] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[khachHang]    Script Date: 11/2/2023 1:41:13 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[khachHang](
	[maKH] [nvarchar](5) NOT NULL,
	[tenKH] [nvarchar](50) NOT NULL,
	[SDT] [nvarchar](10) NOT NULL,
	[diaChi] [nvarchar](255) NOT NULL,
	[loaiKH] [nvarchar](10) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[maKH] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[khuyenMai]    Script Date: 11/2/2023 1:41:13 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[khuyenMai](
	[maSP] [nvarchar](5) NOT NULL,
	[discount] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[maSP] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[nhanVien]    Script Date: 11/2/2023 1:41:13 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[nhanVien](
	[maNV] [nvarchar](5) NOT NULL,
	[tenNV] [nvarchar](50) NOT NULL,
	[ngaySinh] [date] NULL,
	[gioiTinh] [int] NOT NULL,
	[soDienThoai] [nvarchar](11) NOT NULL,
	[diaChi] [nvarchar](50) NOT NULL,
	[email] [nvarchar](50) NOT NULL,
	[chucVu] [nvarchar](10) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[maNV] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[phanCongCa]    Script Date: 11/2/2023 1:41:13 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[phanCongCa](
	[ngayLamViec] [date] NOT NULL,
	[maNV] [nvarchar](5) NOT NULL,
	[maCa] [int] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[maNV] ASC,
	[maCa] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[phieuDatHang]    Script Date: 11/2/2023 1:41:13 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[phieuDatHang](
	[maDatHang] [nvarchar](5) NOT NULL,
	[maNv] [nvarchar](5) NOT NULL,
	[ngayDatHang] [date] NOT NULL,
	[chietKhau] [float] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[maDatHang] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[sanPham]    Script Date: 11/2/2023 1:41:13 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[sanPham](
	[maSP] [nvarchar](5) NOT NULL,
	[tenSP] [nvarchar](50) NOT NULL,
	[tenTacGia] [nvarchar](50) NOT NULL,
	[danhMuc] [nvarchar](50) NOT NULL,
	[nhaXB] [nvarchar](50) NOT NULL,
	[namXB] [int] NOT NULL,
	[soLuong] [int] NULL,
	[donGiaGoc] [float] NOT NULL,
	[donGiaMua] [float] NOT NULL,
	[tinhTrang] [nvarchar](5) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[maSP] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[taiKhoan]    Script Date: 11/2/2023 1:41:13 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[taiKhoan](
	[username] [nvarchar](11) NOT NULL,
	[password] [nvarchar](20) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[username] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [UQ__khachHan__CA1930A536157F62]    Script Date: 11/2/2023 1:41:13 AM ******/
ALTER TABLE [dbo].[khachHang] ADD UNIQUE NONCLUSTERED 
(
	[SDT] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [UQ__nhanVien__06ACB9A23FB7E18A]    Script Date: 11/2/2023 1:41:13 AM ******/
ALTER TABLE [dbo].[nhanVien] ADD UNIQUE NONCLUSTERED 
(
	[soDienThoai] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
ALTER TABLE [dbo].[hoaDon] ADD  DEFAULT (getdate()) FOR [ngayTaoHD]
GO
ALTER TABLE [dbo].[chiTietDatHang]  WITH CHECK ADD FOREIGN KEY([maDH])
REFERENCES [dbo].[phieuDatHang] ([maDatHang])
GO
ALTER TABLE [dbo].[chiTietDatHang]  WITH CHECK ADD FOREIGN KEY([maSP])
REFERENCES [dbo].[sanPham] ([maSP])
GO
ALTER TABLE [dbo].[chiTietHD]  WITH CHECK ADD FOREIGN KEY([maHD])
REFERENCES [dbo].[hoaDon] ([maHD])
GO
ALTER TABLE [dbo].[chiTietHD]  WITH CHECK ADD FOREIGN KEY([maSP])
REFERENCES [dbo].[sanPham] ([maSP])
GO
ALTER TABLE [dbo].[hoaDon]  WITH CHECK ADD FOREIGN KEY([maKH])
REFERENCES [dbo].[khachHang] ([maKH])
GO
ALTER TABLE [dbo].[hoaDon]  WITH CHECK ADD FOREIGN KEY([maNV])
REFERENCES [dbo].[nhanVien] ([maNV])
GO
ALTER TABLE [dbo].[khuyenMai]  WITH CHECK ADD FOREIGN KEY([maSP])
REFERENCES [dbo].[sanPham] ([maSP])
GO
ALTER TABLE [dbo].[phanCongCa]  WITH CHECK ADD FOREIGN KEY([maCa])
REFERENCES [dbo].[ca] ([maCa])
GO
ALTER TABLE [dbo].[phanCongCa]  WITH CHECK ADD FOREIGN KEY([maNV])
REFERENCES [dbo].[nhanVien] ([maNV])
GO
ALTER TABLE [dbo].[phieuDatHang]  WITH CHECK ADD FOREIGN KEY([maNv])
REFERENCES [dbo].[nhanVien] ([maNV])
GO
ALTER TABLE [dbo].[taiKhoan]  WITH CHECK ADD FOREIGN KEY([username])
REFERENCES [dbo].[nhanVien] ([soDienThoai])
GO
ALTER TABLE [dbo].[chiTietDatHang]  WITH CHECK ADD  CONSTRAINT [chk_donGiaNhap] CHECK  (([donGiaNhap]>(0)))
GO
ALTER TABLE [dbo].[chiTietDatHang] CHECK CONSTRAINT [chk_donGiaNhap]
GO
ALTER TABLE [dbo].[chiTietDatHang]  WITH CHECK ADD  CONSTRAINT [chk_soLg] CHECK  (([soLuong]>(0)))
GO
ALTER TABLE [dbo].[chiTietDatHang] CHECK CONSTRAINT [chk_soLg]
GO
ALTER TABLE [dbo].[chiTietHD]  WITH CHECK ADD  CONSTRAINT [chk_donGia] CHECK  (([donGia]>(0)))
GO
ALTER TABLE [dbo].[chiTietHD] CHECK CONSTRAINT [chk_donGia]
GO
ALTER TABLE [dbo].[chiTietHD]  WITH CHECK ADD  CONSTRAINT [chk_sL] CHECK  (([soLuong]>(0)))
GO
ALTER TABLE [dbo].[chiTietHD] CHECK CONSTRAINT [chk_sL]
GO
ALTER TABLE [dbo].[khuyenMai]  WITH CHECK ADD  CONSTRAINT [chk_disc] CHECK  (([discount]>(0) AND [discount]<(100)))
GO
ALTER TABLE [dbo].[khuyenMai] CHECK CONSTRAINT [chk_disc]
GO
ALTER TABLE [dbo].[phieuDatHang]  WITH CHECK ADD  CONSTRAINT [chk_chiecKhau] CHECK  (([chietKhau]>(0)))
GO
ALTER TABLE [dbo].[phieuDatHang] CHECK CONSTRAINT [chk_chiecKhau]
GO
ALTER TABLE [dbo].[phieuDatHang]  WITH CHECK ADD  CONSTRAINT [chk_ngayDH] CHECK  (([ngayDatHang]>getdate()))
GO
ALTER TABLE [dbo].[phieuDatHang] CHECK CONSTRAINT [chk_ngayDH]
GO
ALTER TABLE [dbo].[sanPham]  WITH CHECK ADD  CONSTRAINT [chk_donGiaGoc] CHECK  (([donGiaGoc]>(0)))
GO
ALTER TABLE [dbo].[sanPham] CHECK CONSTRAINT [chk_donGiaGoc]
GO
ALTER TABLE [dbo].[sanPham]  WITH CHECK ADD  CONSTRAINT [chk_donGiaMua] CHECK  (([donGiaMua]>(0)))
GO
ALTER TABLE [dbo].[sanPham] CHECK CONSTRAINT [chk_donGiaMua]
GO
ALTER TABLE [dbo].[sanPham]  WITH CHECK ADD  CONSTRAINT [chk_soLuong] CHECK  (([soLuong]>(0)))
GO
ALTER TABLE [dbo].[sanPham] CHECK CONSTRAINT [chk_soLuong]
GO
