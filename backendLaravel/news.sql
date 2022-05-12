-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Máy chủ: 127.0.0.1
-- Thời gian đã tạo: Th1 11, 2022 lúc 10:52 AM
-- Phiên bản máy phục vụ: 10.4.21-MariaDB
-- Phiên bản PHP: 8.0.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Cơ sở dữ liệu: `btl`
--

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `news`
--

CREATE TABLE `news` (
  `id` int(10) NOT NULL,
  `title` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `content` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `img` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `para` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `create_at` timestamp NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `news`
--

INSERT INTO `news` (`id`, `title`, `content`, `img`, `para`, `create_at`) VALUES
(1, 'MSI công bố loạt sản phẩm laptop chơi game và sáng tạo nội dung mới tại CES 2022', 'MSI - thương hiệu đi đầu về sự sáng tạo trên các sản phẩm laptop chơi game, sáng tạo nội dung và làm việc – đã chính thức công bố dải sản phẩm laptop mới được trang bị vi xử lí Intel® H thế hệ 12. MSI đã thể hiện quyết tâm và tầm nhìn của hãng trong việc đón đầu thời đại metaverse sắp tới. Các mẫu laptop mới có logo Meta-ready đều có cấu hình từ vi xử lí Intel® CoreTM i7 và card đồ họa NVIDIA GeForce RTX ™ 3070 trở lên, nhằm đáp ứng nhu cầu về hiệu năng cho những ai muốn trải nghiệm Metaverse. ', 'msi.jpg', NULL, NULL),
(2, 'Windows 11 chính thức ra mắt với 11 tính năng thú vị. Yêu cầu hệ thống và các dòng máy được cập nhật', 'Windows 11 là hệ điều hành mới nhất của Microsoft tính đến 10/2021. Tại phiên bản này, người dùng sẽ được trải nghiệm giao diện mới với hệ thống icons đẹp mắt, các tính năng thông minh như snap cửa sổ đa nhiệm hoặc cài đặt các ứng dụng Android cũng được nhà sản xuất trang bị trên hệ điều hành này.', 'win11_1280x720-800-resize.jpg', NULL, NULL),
(3, 'CES 2022: Asus ra mắt laptop màn hình gập đầu tiên trên thế giới', 'Zenbook 17 Fold OLED là máy tính xách tay 17.3 inch có thể gập lại đầu tiên trên thế giới. Giống như các mẫu điện thoại thông minh có thể gập lại của Samsung, Oppo, Zenbook 17 Fold OLED trang bị màn hình lớn có thể gập lại một nửa, khiến cho máy giống như một chiếc laptop mini không bàn phím.', 'ces-2022-asus-ra-mat-laptop-man-hinh-gap-dau-tien.jpg', NULL, NULL),
(4, 'CES 2022: Sony hé lộ phụ kiện đỉnh dành cho PlayStation 5', 'Sony cho biết tại sự kiện CES 2022 này, hãng sẽ ra mắt thiết bị đeo mới, có tên PlayStation VR2, tương thích với máy chơi game PS5, có độ phân giải mỗi mắt là 2000x2040 pixel, góc nhìn rộng 110 độ, hỗ trợ 4K HDR và tần số quét 90 – 120 Hz.', 'ces-2022-sony-he-lo-phu-kien-dinh-danh-cho-playstation-5.jpg', NULL, NULL),
(5, 'Apple ra sản phẩm \'Tết con hổ\'', 'Apple vừa giới thiệu một phiên bản giới hạn của tai nghe không dây Beats Studio Buds để chào đón Tết Âm lịch 2022, Tết Nhâm Dần. Phiên bản này của tai nghe Beats mang màu đỏ vằn vàng, tạo sự liên tưởng đến con giáp năm tới.', 'apple-ra-sa-n-pha-m-te-t-con-ho-2.jpg', NULL, NULL),
(6, 'Đối phó Apple, Samsung đặt cược vào smartphone màn hình gập', 'Một thập kỷ trước, nỗ lực mang đến kiểu dáng mới cho smartphone của Samsung đã được đền đáp với Galaxy Note. Màn hình khổng lồ so với tiêu chuẩn khi đó cuối cùng trở nên phổ biến. Kết hợp với bút cảm ứng độc đáo, Note tạo sự khác biệt so với iPhone và các điện thoại khác trên thị trường. Thiết bị bán được hàng triệu máy mỗi năm, tuy nhiên, sự khác biệt dần phai nhạt theo thời gian. Do đó, Samsung quyết định không ra thêm mẫu mới mà đưa bút cảm ứng lên Z Fold 3, tạo dư địa cho điện thoại gập phát triển.', 'samsung-dat-cuoc-vao-smartphone-man-hinh-gap.jpg', NULL, NULL),
(7, 'Apple trình làng MacBook Pro 2021: thiết kế mới, tai thỏ, chip siêu mạnh', 'Trong sự kiện 18/10, Apple đã giới thiệu MacBook Pro 14 inch và 16 inch mới với nhiều tính năng hấp dẫn. Đặc biệt, đây là mẫu MacBook đầu tiên có “tai thỏ” tương tự iPhone.', 'apple-trinh-lang-macbook-pro-2021-thiet-ke-moi-tai-tho-chip-sieu-manh-2.jpg', NULL, NULL),
(8, 'Huawei sẽ công bố P50 Pro bản quốc tế vào ngày 12/1', 'Trên Twitter chính thức, Huawei Malaysia cho biết nhà sản xuất smartphone Trung Quốc sẽ giới thiệu P50 Pro bản quốc tế vào ngày 12/1. Huawei P50 trình làng tháng 7/2021 và bản Pro bán ra tại Trung Quốc một tháng sau đó.', 'huawei-se-cong-bo-p50-pro-ban-quoc-te-vao-ngay-12-1.jpg', '', NULL),
(9, 'Garmin lần đầu giới thiệu đồng hồ thông minh nghe gọi điện thoại', 'Garmin vừa giới thiệu ra thị trường Việt Nam chiếc Venu 2 Plus, đồng hồ thông minh GPS đầu tiên của hãng có tính năng nghe gọi, gửi tin nhắn và điều khiển thông qua trợ lý giọng nói kết nối với điện thoại thông minh.', 'garmin-lan-dau-gioi-thieu-dong-ho-thong-minh-nghe-goi-dien-thoai.jpg', '', NULL),
(10, 'Microsoft ra loạt máy tính Surface và smartphone gập mới', '<p>H&ocirc;m 22/9, Microsoft giới thiệu loạt sản phẩm mới, bao gồm 1 laptop, 3 m&aacute;y t&iacute;nh bảng v&agrave; 1 điện thoại gập. C&ocirc;ng ty vốn kh&ocirc;ng kiếm được nhiều từ phần cứng. Chỉ 4% doanh thu của h&atilde;ng trong qu&yacute; II đến từ thiết bị. Thị trường m&aacute;y t&iacute;nh to&agrave;n cầu l&agrave; s&acirc;n chơi của Lenovo, HP, Dell v&agrave; Apple, theo ước t&iacute;nh của h&atilde;ng nghi&ecirc;n cứu Gartner.</p>', 'microsoft-ra-loat-may-tinh-surface-va-smartphone-gap-moi-5.jpg', NULL, NULL),
(11, 'Chuyển đổi số không phải phép màu', '<p>Nhiều c&ocirc;ng ty nghĩ chuyển đổi giống như bụi ti&ecirc;n: rắc một &iacute;t xung quanh văn ph&ograve;ng l&agrave; họ đ&atilde; sẵn s&agrave;ng đối mặt với thế giới &quot;đổi mới&quot; n&agrave;y.</p>', 'cdc-5155-1617615216.jpg', '<p><em>Michael Bruck - cựu ch&aacute;nh văn ph&ograve;ng cho Andrew Grove, cựu CEO Intel v&agrave; hiện l&agrave; Gi&aacute;m đốc quản l&yacute; của Vacuumlabs Asia, chia sẻ quan điểm về chuyển đổi số với SCMP.</em></p>\r\n\r\n<p>Thuật ngữ <strong>chuyển đổi số</strong>&nbsp;đang được nhắc nhiều tới mức dần trở n&ecirc;n s&aacute;o rỗng. Ban đầu chương tr&igrave;nh n&agrave;y được đặt ra để nhấn mạnh sự cần thiết của c&aacute;c c&ocirc;ng ty v&agrave; tổ chức trong việc nắm bắt c&ocirc;ng nghệ, tạo n&ecirc;n sự thay đổi. Chuyển đổi số sau đ&oacute; trở th&agrave;nh thuật ngữ rộng đến mức n&oacute; c&oacute; nghĩa l&agrave; hầu hết mọi thứ.</p>\r\n\r\n<p>Đối mặt với th&aacute;ch thức ng&agrave;y c&agrave;ng tăng từ c&aacute;c c&ocirc;ng ty khởi nghiệp số, c&aacute;c c&ocirc;ng ty truyền thống cuối c&ugrave;ng cũng nhận ra rằng họ kh&ocirc;ng thể phụ thuộc v&agrave;o những thứ như m&aacute;y fax nữa. Nhiều b&ecirc;n dường như nghĩ chuyển đổi l&agrave; một loại bụi thần ti&ecirc;n: rắc một &iacute;t xung quanh văn ph&ograve;ng, thế l&agrave; c&ocirc;ng ty của họ đ&atilde; sẵn s&agrave;ng đối mặt với thế giới &quot;đổi mới&quot; n&agrave;y.</p>\r\n\r\n<p>Tuy nhi&ecirc;n, chuyển đổi số ho&agrave;n to&agrave;n kh&ocirc;ng phải như vậy. Những g&igrave; n&oacute; mang đến l&agrave; cơ sở hạ tầng c&ocirc;ng nghệ quan trọng, giống điện v&agrave; nước, để cho ph&eacute;p theo đuổi c&aacute;c &yacute; tưởng v&agrave; thực tiễn đổi mới. Bất kỳ c&ocirc;ng ty n&agrave;o, nếu kh&ocirc;ng &aacute;p dụng c&ocirc;ng nghệ số trong to&agrave;n bộ tổ chức của m&igrave;nh m&agrave; vẫn dựa v&agrave;o giấy tờ, sẽ giống như lo&agrave;i khủng long.</p>\r\n\r\n<p>&nbsp;</p>', '2022-01-09 09:20:01');

--
-- Chỉ mục cho các bảng đã đổ
--

--
-- Chỉ mục cho bảng `news`
--
ALTER TABLE `news`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT cho các bảng đã đổ
--

--
-- AUTO_INCREMENT cho bảng `news`
--
ALTER TABLE `news`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
