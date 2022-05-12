-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Máy chủ: 127.0.0.1
-- Thời gian đã tạo: Th2 18, 2022 lúc 01:43 PM
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
-- Cơ sở dữ liệu: `cntt`
--

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `comment`
--

CREATE TABLE `comment` (
  `id` int(10) NOT NULL,
  `Content` varchar(5000) COLLATE utf8_unicode_ci NOT NULL,
  `post_id` int(10) NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `date` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `comment`
--

INSERT INTO `comment` (`id`, `Content`, `post_id`, `user_id`, `date`) VALUES
(1, 'Dùng Aiseesoft MXF Converter 9 hoặc AnyMP4 MXF Converter 8 thử nha bạn.', 3, 24, '2022-02-16 06:22:42'),
(2, 'Window defender của win 10 đủ xài rồi, không cần thêm mấy phần mềm đó làm gì đâu bạn ê.', 9, 20, '2022-02-16 06:38:44'),
(3, 'con Kaspersky Internet Security mà nhanh nữa thì tớ chịu :( nó ngon thật nhưng làm máy chậm như rùa. Malwarebytes tớ thấy ngon hơn :v Eset cũng khá ổn', 9, 18, '2022-02-16 06:41:58'),
(4, 'Sài quen thèn nào thì sài thôi. giờ cũng tương tự nhau cả thôi. Chủ yếu nhẹ, không bắt máy tính gánh nhiều khi khởi động là được', 9, 25, '2022-02-16 06:44:14'),
(5, '1 phần mềm khá lâu đời, và hình như tới nay k còn cập nhật nữa đó là Picasa của Google', 4, 26, '2022-02-16 06:49:15'),
(6, 'Mình đang sử dụng Faststone View, bản cài đặt nhẹ, chạy ổn.', 4, 25, '2022-02-16 06:50:16'),
(7, 'Dùng Honeyview đi bạn, có thể sẽ phù hợp', 4, 23, '2022-02-16 06:50:47'),
(8, 'Thằng Avast Free mà mạnh gớm, dùng cũng nhẹ nhàng nữa. Like', 9, 23, '2022-02-16 06:51:15'),
(9, 'Tools bạn cần đây | https://github.com/martinchrzan/FileExplorerGallery', 4, 21, '2022-02-16 06:53:12'),
(10, 'Mình dùng cả chục phần mềm xem ảnh, ACDSee vẫn hợp ý nhất', 4, 27, '2022-02-16 06:55:18'),
(11, 'con này ngon á ... mà mỗi tội dram ddr4x với bộ nhớ ufs 2.1 ... cho nên hôm bữa mình bỏ thêm gần triệu mua con k40 luôn', 1, 28, '2022-02-16 06:58:45'),
(12, 'Mua winner đi sư phụ, nhanh hơn Cân đẩu vân của con nhiều.', 11, 29, '2022-02-16 07:09:16'),
(13, 'Sư phụ mua SH300i đi, vừa nhanh vừa sang. Đừng nghe lời con khỉ kia mua Winner, bóp nhả côn mệt lắm sự phụ.', 11, 31, '2022-02-16 07:11:31'),
(14, 'Cảm ơn bạn rất nhiều vì đã chia sẻ, tôi đã tải xuống Hitman Pro v3.8.15 Build 306 và nó là ngôn ngữ gì? hay là đa ngôn ngữ?', 12, 18, '2022-02-16 08:03:48'),
(15, 'Xin cảm ơn!', 5, 18, '2022-02-16 08:04:39'),
(16, 'Windows 11 Insider Preview sẽ phát hành vào tuần sau nha mọi người. Còn bản chính thức sẽ phát hành vào cuối năm nay.', 13, 21, '2022-02-16 08:09:00'),
(17, 'Cảm ơn bài viết chia sẽ của bác, rất hữu ích!', 6, 27, '2022-02-16 08:11:13'),
(18, 'Cảm ơn bác đã chia sẽ!', 10, 27, '2022-02-16 08:13:55'),
(19, 'Kêu bạn của bạn mua máy khác đi', 7, 25, '2022-02-16 08:16:38'),
(20, 'Giờ ai cũng xài Iphone, ai đâu mà mua Redmi làm gì nữa, liuliu', 1, 25, '2022-02-16 08:17:27'),
(21, 'Iphone Muôn năm, Iphone vạn tuế', 2, 25, '2022-02-16 08:17:53'),
(22, 'Sư phụ lên núi mua voi cưỡi cho nó hoang dã ạ', 11, 19, '2022-02-16 08:20:07'),
(23, 'Cảm ơn bài chia sẽ của bạn!', 8, 16, '2022-02-17 10:10:02'),
(24, 'Bitlocker chống lại truy cập dữ liệu nếu ổ cứng của bạn bị mất thôi. Nó là 1 bước mã hóa dữ liệu vào ổ cứng để không ai có thể truy cập được vào dữ liệu ổ cứng của bạn nếu ko có personal key.\nCòn việc bạn đang dùng windows, bị viruts, worm vẫn bị đánh cắp dữ liệu như bình thường.', 15, 16, '2022-02-17 10:13:24'),
(25, 'Khó xài hơn Win 10 với còn nhiều lỗi vặt, nếu bạn muốn trãi nghiệm sớm thì up lên nhưng luy ý là cài lại win 10 cũng hơi quằng nên bác lưu ý trước khi lên win 11', 13, 16, '2022-02-17 10:15:32'),
(26, 'Chủ đề hay, cho 1000+ Like\nTheo mình thì phần mềm Easeus data recovery là tốt nhất.', 16, 22, '2022-02-17 10:21:38'),
(27, 'tùy từng file thôi , chứ ko hẳn file nào cũng cứu dc đâu , trc mình nhỡ shift del file word vào khôi phục nhg chỉ có file trắng báo lỗi mất chữ bên trong phải làm lại từ đầu :(', 16, 24, '2022-02-17 10:22:30'),
(28, 'Mang máy ra trung tâm nhờ người ta khôi phục dùm đi bạn', 14, 24, '2022-02-17 10:23:48'),
(29, 'Mình thì không dùng Microsoft Access bao giờ nhưng mình thấy bộ phần mềm LibreOffice Suite có các phần mềm như bộ phần mềm Microsoft Office, trong đó LibreOffice Base tương tự như Microsoft Access.\nBạn download về dùng thử xem có được không, phần mềm này miễn phí.', 18, 13, '2022-02-18 03:42:08'),
(30, 'Cảm ơn bài chia sẽ của bạn', 17, 13, '2022-02-18 03:42:35'),
(31, 'Bạn tháo ổ cứng để ở nhà , còn bảo mật dữ liệu có nhiều cách : bitlocker hoặc hơn là đặt password ổ cứng , 2 giải pháp bảo mật dữ liệu khá tốt . Nhưng nhớ là đừng có quên pass', 19, 16, '2022-02-18 03:44:04'),
(32, 'Kệ nó đi bạn à, modem nhà mạng chứ có phải đồ hãng lớn đâu, hãng người ta còn cho firmware vá bảo mật các thứ. Còn cái này bạn thấy đó \"Contact the vendor\", chủ yếu giờ ai cũng xài router ngoài, con modem chỉ để chuyển quang thành internet thôi.', 20, 31, '2022-02-18 03:47:31'),
(33, 'thanks bác nhé', 22, 16, '2022-02-18 03:50:12'),
(34, 'Mình cứ nghĩ LTSC là 1 phiên bản của enterprise nên k có bản quyền số chứ nhỉ? trước mình có hỏi một bạn trên này rồi', 23, 14, '2022-02-18 03:52:12'),
(35, 'là tính năng của phần mềm quản lý phòng net chứ có cái gì lạ', 26, 16, '2022-02-18 03:58:11'),
(36, 'Chụp màn hình thì y như nhau thoi bạn ơi . Nếu có setting thì chọn chất lượng 100% ảnh ra Jpg nhỏ gọn. Ko bạn tự nhấn chụp mh ra mspaint dán và save dạng bmp file lớn nhất, tốt nhất. Mình đang dùng PrtScr chụp lẹ nhanh.', 27, 27, '2022-02-18 03:59:40'),
(37, 'cái này bác nên học lập trình guide trong autoit', 28, 14, '2022-02-18 04:00:37'),
(38, 'Bỏ tiền ra mua bản quyền đi các bạn.', 25, 14, '2022-02-18 04:03:36'),
(39, 'snipping tool xài cũng ổn mà bác', 27, 26, '2022-02-18 04:05:30'),
(40, 'thank bạn, mình tích hợp lệnh chuột phải cũng có mà k để ý có sốt hay hỗ trợ Unicode k nữa', 31, 13, '2022-02-18 04:08:12'),
(41, 'không nên up ảnh lên các dịch vụ lưu trữ bởi nếu điều khoản thay đổi, khả năng cao ảnh sẽ bị xoá. Ngày xưa em cũng up flickr gần hết dung lượng. Không chi tiền bây giờ xoá gần hết rồi', 30, 13, '2022-02-18 04:08:25'),
(42, 'Ấn Window + G r tìm đến mục ghi màn hình á bác', 29, 13, '2022-02-18 04:08:56'),
(43, 'Mua nas về tự sync thôi các bro à\nMây nhà làm, bao rẻ bao ngon', 28, 22, '2022-02-18 04:09:34'),
(44, 'Em có một câu hỏi đó là: Những file .cmd, .bat này là biết bằng ngôn ngữ lập trình gì ạ? Có phải batch script language không ạ?', 30, 22, '2022-02-18 04:09:58'),
(45, 'Đơn giản thôi, gỡ ra cài lại là được. Không có cách khác.\nKey bị như thế này 100% là key trial bằng thẻ cc giả, hoặc thẻ thật nhưng không chính chủ. Express xác minh giao dịch bất thường thì khoá acc thôi.', 33, 14, '2022-02-18 04:13:07'),
(46, 'Lên gg đi bác', 34, 25, '2022-02-18 04:14:50'),
(47, 'Phần mềm chặn cài trên hệ thống này, cài trên VMWARE ok nhé.', 36, 16, '2022-02-18 04:15:22'),
(48, 'Cái phím tắt đấy. Gỡ n ra cho xong', 37, 13, '2022-02-18 04:16:19'),
(49, 'Phím tắt trên máy tính đó mà ko xài thì gỡ ra thui', 37, 15, '2022-02-18 04:16:45'),
(50, 'v', 38, 13, '2022-02-18 06:42:41');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `failed_jobs`
--

CREATE TABLE `failed_jobs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `uuid` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `connection` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `queue` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `exception` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

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
  `create_at` timestamp NULL DEFAULT current_timestamp(),
  `user_id` bigint(20) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `news`
--

INSERT INTO `news` (`id`, `title`, `content`, `img`, `para`, `create_at`, `user_id`) VALUES
(14, 'IntelliJ loại bỏ hoàn toàn các thành phần Log4j', '<h1>Ng&agrave;y 14 th&aacute;ng 02 năm 2022, JetBrains đ&atilde; th&ocirc;ng b&aacute;o tr&ecirc;n blog ch&iacute;nh thức của m&igrave;nh rằng họ sẽ loại bỏ th&agrave;nh phần Log4j khỏi nền tảng IntelliJ, do c&aacute;c lỗ hổng lớn trước đ&oacute;.</h1>', 'Inteliji.jpg', '<p>C&aacute;c IDE dựa tr&ecirc;n nền tảng IntelliJ kh&ocirc;ng bị ảnh hưởng bởi lỗ hổng n&agrave;y bởi phi&ecirc;n bản v&aacute; lỗi Log4j 1.2 được sử dụng v&agrave; tất cả m&atilde; li&ecirc;n quan đều bị x&oacute;a. Mặc d&ugrave; vậy, một số c&ocirc;ng cụ bảo mật tự động vẫn đ&aacute;nh dấu c&aacute;c phi&ecirc;n bản an to&agrave;n của Log4j l&agrave; kh&ocirc;ng an to&agrave;n.<br />\r\nNền tảng IntelliJ c&oacute; y&ecirc;u cầu kh&aacute; thấp đối với khung ghi nhật k&yacute; v&agrave; c&oacute; thể được đưa v&agrave;o API ghi nhật k&yacute; ti&ecirc;u chuẩn (java.util.logging) l&agrave; một phần của JDK. Để tr&aacute;nh c&aacute;c cảnh b&aacute;o bảo mật sai v&agrave; giảm nguy cơ tấn c&ocirc;ng tiềm ẩn, JetBrains đ&atilde; quyết định ngừng sử dụng Log4j ho&agrave;n to&agrave;n v&agrave; chuyển sang java.util.logging l&agrave;m khung ghi nhật k&yacute; ti&ecirc;u chuẩn.<br />\r\n<br />\r\nNhững thay đổi sẽ được ph&aacute;t h&agrave;nh trong phi&ecirc;n bản 2022.1. V&igrave; một số lượng lớn c&aacute;c plugin của b&ecirc;n thứ ba (trực tiếp hoặc gi&aacute;n tiếp) sử dụng Log4j, JetBrains sẽ xuất bản v&agrave; triển khai API Log4j mặc định để chuyển hướng xuất nhật k&yacute; sang java.util.logging, một t&iacute;nh năng từ dự &aacute;n SLF4J.<br />\r\n<br />\r\nTuy nhi&ecirc;n, việc triển khai mặc định kh&ocirc;ng thực hiện đầy đủ tất cả c&aacute;c phương ph&aacute;p, v&igrave; vậy để duy tr&igrave; chức năng đầy đủ của plugin, c&aacute;c nh&agrave; ph&aacute;t triển c&oacute; thể cần phải điều chỉnh m&atilde; cho ph&ugrave; hợp với m&ocirc;i trường mới.<br />\r\n<br />\r\nTrước đ&oacute; v&agrave;o ng&agrave;y 11 th&aacute;ng 12 năm 2021, Vn-z team đ&atilde; chia sẻ th&ocirc;ng tin về lỗ hổng thực thi m&atilde; từ xa trong Apache Log4j . Những kẻ tấn c&ocirc;ng c&oacute; thể sử dụng lỗ hổng n&agrave;y để thực thi m&atilde; từ xa.</p>', '2022-02-16 07:20:02', 16),
(15, 'Facebook thua kiện 90 triệu USD', '<p>Meta, c&ocirc;ng ty mẹ của Facebook, chấp nhận thua v&agrave; bồi thường 90 triệu USD cho một vụ kiện k&eacute;o d&agrave;i 10 năm về quyền ri&ecirc;ng tư.</p>', 'markzuckerbergreuters0-1644952-7979-5058-1644952577.jpg', '<p>Meta, c&ocirc;ng ty mẹ của Facebook, chấp nhận thua v&agrave; bồi thường 90 triệu USD cho một vụ kiện k&eacute;o d&agrave;i 10 năm về quyền ri&ecirc;ng tư.</p>\r\n\r\n<p>Vụ kiện kết th&uacute;c v&agrave;o ng&agrave;y 14/2, li&ecirc;n quan đến vấn đề&nbsp;<a href=\"https://vnexpress.net/chu-de/facebook-1538\" rel=\"dofollow\">Facebook</a>&nbsp;thu thập dữ liệu từ tr&igrave;nh duyệt web. Theo đ&oacute;, Facebook phải x&oacute;a to&agrave;n bộ dữ liệu li&ecirc;n quan v&agrave; trả tiền cho c&aacute;c nguy&ecirc;n đơn, dựa tr&ecirc;n mức độ bị ảnh hưởng của họ bởi h&agrave;nh động theo d&otilde;i của Facebook.</p>\r\n\r\n<p>Đơn kiện tập thể được nộp năm 2012, tổng hợp 21 vụ kiện ri&ecirc;ng biệt tr&ecirc;n khắp nước Mỹ giai đoạn 2011-2012, tố mạng x&atilde; hội của&nbsp;<a href=\"https://vnexpress.net/chu-de/mark-zuckerberg-1854\" rel=\"dofollow\">Mark Zuckerberg</a>&nbsp;sử dụng cookie v&agrave; một chương tr&igrave;nh mở rộng (plug-in) tr&ecirc;n tr&igrave;nh duyệt để thu thập th&ocirc;ng tin về việc truy cập của của người d&ugrave;ng đến c&aacute;c trang web kh&aacute;c.</p>\r\n\r\n<p>Việc theo d&otilde;i ban đầu vốn hợp ph&aacute;p do được người d&ugrave;ng đồng &yacute;. Facebook khẳng định ngừng theo d&otilde;i khi người d&ugrave;ng tho&aacute;t t&agrave;i khoản mạng x&atilde; hội, song họ đ&atilde; vi phạm điều khoản n&agrave;y. C&aacute;c dữ liệu duyệt web của người d&ugrave;ng được ph&aacute;t hiện vẫn gửi về c&ocirc;ng ty th&ocirc;ng qua plug-in, ngay cả khi người d&ugrave;ng đ&atilde; đăng xuất khỏi Facebook.</p>\r\n\r\n<p>C&ocirc;ng ty luật DiCello Levitt Gutzler, đại diện nguy&ecirc;n đơn, cho biết số tiền 90 triệu USD tương đương 100% khoản lợi nhuận bất ch&iacute;nh m&agrave; c&ocirc;ng ty c&oacute; thể thu được từ lượng dữ liệu n&oacute;i tr&ecirc;n.</p>\r\n\r\n<p>Vụ kiện k&eacute;o d&agrave;i 10 năm do hai b&ecirc;n li&ecirc;n tục kh&aacute;ng c&aacute;o. Facebook ba lần thắng trong c&aacute;c đợt x&eacute;t xử trước. Đến năm 2020, T&ograve;a &aacute;n ph&uacute;c thẩm Mỹ b&aacute;c bỏ c&aacute;c l&yacute; lẽ của Facebook v&agrave; cho rằng việc sao ch&eacute;p bất hợp ph&aacute;p v&agrave; kiếm tiền từ dữ liệu c&aacute; nh&acirc;n sẽ tạo ra những thiệt hại về kinh tế. Mạng x&atilde; hội tiếp tục nộp đơn kh&aacute;ng c&aacute;o l&ecirc;n T&ograve;a &aacute;n tối cao nhưng bị từ chối xem x&eacute;t.</p>\r\n\r\n<p>Trả lời trang&nbsp;<em>Variety</em>, đại diện&nbsp;<a href=\"https://vnexpress.net/chu-de/cong-ty-meta-3788\" rel=\"dofollow\">Meta</a>&nbsp;cho biết: &quot;Việc đạt được thỏa thuận d&agrave;n xếp trong trường hợp n&agrave;y l&agrave; v&igrave; lợi &iacute;ch tốt nhất cho cộng đồng v&agrave; cổ đ&ocirc;ng của ch&uacute;ng t&ocirc;i. Ch&uacute;ng t&ocirc;i h&agrave;i l&ograve;ng v&igrave; đ&atilde; vượt qua vấn đề&quot;.</p>\r\n\r\n<p>Với kết quả tr&ecirc;n, Meta chiếm hai vị tr&iacute; trong top 10 vụ bồi thường lớn nhất lịch sử nước Mỹ về bảo mật dữ liệu. Năm ngo&aacute;i, h&atilde;ng cũng phải&nbsp;<a href=\"https://vnexpress.net/facebook-phai-tra-650-trieu-usd-vi-vi-pham-quyen-rieng-tu-4241417.html\" rel=\"dofollow\">trả 650 triệu USD</a>&nbsp;v&igrave; vi phạm quyền ri&ecirc;ng tư, li&ecirc;n quan đến c&ocirc;ng nghệ nhận dạng khu&ocirc;n mặt trong t&iacute;nh năng gắn thẻ ảnh tr&ecirc;n Facebook.</p>', '2022-02-16 07:24:43', 16),
(16, 'Phần mềm dự đoán nhân viên nghỉ việc gây tranh cãi', '<p>TRUNG QUỐC - Phần mềm do Sangfor Technologies ph&aacute;t triển c&oacute; thể theo d&otilde;i nh&acirc;n vi&ecirc;n c&ocirc;ng ty v&agrave; b&aacute;o cho người quản l&yacute; nếu ai đ&oacute; c&oacute; &yacute; định th&ocirc;i việc.</p>', '9ce5dcad-6e9b-4020-b680-1949e9-7690-8174-1644894825.jpg', '<p>Theo&nbsp;<em>SCMP</em>, hệ thống của Sangfor Technologies, c&ocirc;ng ty c&oacute; trụ sở tại Th&acirc;m Quyến, c&oacute; thể dự đo&aacute;n liệu một nh&acirc;n vi&ecirc;n sắp nghỉ việc hay kh&ocirc;ng bằng c&aacute;ch theo d&otilde;i hoạt động của họ, như khi họ duyệt website tuyển dụng hoặc soạn/gửi email xin việc đến nơi kh&aacute;c.</p>\r\n\r\n<p>Phần mềm của Sangfor thu h&uacute;t sự ch&uacute; &yacute; sau khi một người d&ugrave;ng tr&ecirc;n&nbsp;<em>Maimai&nbsp;</em>- mạng x&atilde; hội nghề nghiệp của Trung Quốc tương tự LinkedIn - đăng c&acirc;u chuyện bị sa thải do l&atilde;nh đạo ph&aacute;t hiện &ocirc;ng viết đơn xin việc ở nơi kh&aacute;c.</p>\r\n\r\n<p>&quot;Sếp t&ocirc;i n&oacute;i &ocirc;ng ta biết ch&iacute;nh x&aacute;c những g&igrave; t&ocirc;i đang l&agrave;m trong giờ l&agrave;m việc&quot;, người n&agrave;y kể, đ&iacute;nh k&egrave;m ảnh chụp m&agrave;n h&igrave;nh về phần mềm c&oacute; t&ecirc;n &quot;Hệ thống ph&acirc;n t&iacute;ch nghỉ việc&quot;.</p>\r\n\r\n<p>C&acirc;u chuyện sau đ&oacute; tạo ra một cuộc tranh luận s&ocirc;i nổi tr&ecirc;n một số mạng x&atilde; hội ở Trung Quốc như Weibo v&agrave; nền tảng hỏi đ&aacute;p Zhihu. Nhiều người chỉ tr&iacute;ch phần mềm n&agrave;y v&agrave; c&aacute;c ứng dụng tương tự đ&atilde; vi phạm quyền ri&ecirc;ng tư c&aacute; nh&acirc;n.</p>\r\n\r\n<p>&quot;Thật kh&oacute; chịu khi mọi h&agrave;nh động đều bị ghi lại. C&ocirc;ng ty đ&oacute; kh&ocirc;ng xứng để bạn cống hiến&quot;, t&agrave;i khoản Su Linshen b&igrave;nh luận tr&ecirc;n Zhihu. &quot;Cảm gi&aacute;c như cầm t&ugrave;, vi phạm nghi&ecirc;m trọng đời tư c&aacute; nh&acirc;n. T&ocirc;i cũng từng bị như vậy v&agrave; lập tức xin nghỉ kh&ocirc;ng do dự sau đ&oacute;&quot;, t&agrave;i khoản Billy Su viết.</p>\r\n\r\n<p>D&ugrave; vậy, cũng c&oacute; &yacute; kiến cho rằng mạng nội bộ l&agrave; t&agrave;i sản của doanh nghiệp đ&oacute; n&ecirc;n giới chủ to&agrave;n quyền kiểm so&aacute;t. &quot;Bạn cần nhớ m&igrave;nh đang d&ugrave;ng t&agrave;i sản của c&ocirc;ng ty để l&agrave;m việc ri&ecirc;ng. H&atilde;y đặt m&igrave;nh v&agrave;o vị tr&iacute; của sếp để hiểu hơn&quot;, một người c&oacute; t&ecirc;n Liu Zhengtao n&ecirc;u quan điểm. &quot;Nếu c&oacute; &yacute; định nghỉ việc, h&atilde;y d&ugrave;ng thiết bị của m&igrave;nh với kết nối Internet ri&ecirc;ng v&agrave; thực hiện ở b&ecirc;n ngo&agrave;i thay v&igrave; l&agrave;m điều đ&oacute; ngay tại c&ocirc;ng ty&quot;, t&agrave;i khoản Shuo đồng t&igrave;nh.</p>\r\n\r\n<p>Theo dữ liệu tr&ecirc;n website về s&aacute;ng chế Qichacha, Sangfor đ&atilde; đăng k&yacute; sở hữu tr&iacute; tuệ cho một hệ thống ph&acirc;n t&iacute;ch &yacute; định th&ocirc;i việc của nh&acirc;n vi&ecirc;n từ năm 2018. Ở phần m&ocirc; tả, phần mềm hoạt động bằng c&aacute;ch &quot;đọc th&ocirc;ng tin một người gửi đến c&aacute;c website tuyển dụng, nền tảng truyền th&ocirc;ng x&atilde; hội v&agrave; hệ thống email&quot;. N&oacute;i c&aacute;ch kh&aacute;c, hệ thống c&oacute; thể theo d&otilde;i hoạt động trực tuyến của nh&acirc;n vi&ecirc;n trong văn ph&ograve;ng để xem họ l&agrave;m g&igrave;, sau đ&oacute; ph&acirc;n t&iacute;ch v&agrave; đ&aacute;nh gi&aacute; x&aacute;c suất nghỉ việc của người đ&oacute;.</p>\r\n\r\n<p>Sangfor Technologies th&agrave;nh lập năm 2000, l&agrave; nh&agrave; cung cấp nền tảng gi&aacute;m s&aacute;t trực tuyến lớn nhất Trung Quốc, hiện c&oacute; hơn 100.000 kh&aacute;ch h&agrave;ng. Theo th&ocirc;ng tin tr&ecirc;n website ch&iacute;nh thức, nhiều kh&aacute;ch h&agrave;ng của c&ocirc;ng ty trong số đ&oacute; l&agrave; c&aacute;c cơ quan ch&iacute;nh phủ Trung Quốc.</p>', '2022-02-16 07:25:45', 16),
(17, 'Các hãng công nghệ lớn trước nguy cơ thoái trào', '<p>Một số chuy&ecirc;n gia nhận định c&aacute;c c&ocirc;ng ty Big Tech như Facebook, Google, Alibaba... đang bước v&agrave;o giai đoạn xuống dốc.</p>', 'facebook-meta-1644228243-6161-9890-3255-1644907710.jpg', '<p>Một số chuy&ecirc;n gia nhận định c&aacute;c c&ocirc;ng ty Big Tech như Facebook, Google, Alibaba... đang bước v&agrave;o giai đoạn xuống dốc.</p>\r\n\r\n<p>&quot;Cần thận trọng khi tiếp cận những c&ocirc;ng ty như Meta v&agrave; Alphabet, bởi họ đang ở giai đoạn &#39;xế chiều&#39;. Tất cả đều đ&aacute;ng hứng chịu nhiều vấn đề&quot;, Viktor Shvets, Gi&aacute;m đốc chiến lược to&agrave;n cầu v&agrave; ch&acirc;u &Aacute; của tập đo&agrave;n t&agrave;i ch&iacute;nh Macquarie Capital, khuyến c&aacute;o. &Ocirc;ng cũng đề cập t&igrave;nh trạng tương tự với Apple v&agrave; Alibaba.</p>\r\n\r\n<p>Theo Shvets, c&aacute;c vấn đề cản trở những tập đo&agrave;n n&agrave;y tiếp tục tiến xa bao gồm &aacute;p lực ch&iacute;nh trị, kinh tế v&agrave; c&ocirc;ng nghệ mới nổi. &quot;H&atilde;y cẩn thận với c&aacute;c nền tảng kỹ thuật số lớn, nhưng vẫn c&ograve;n nhiều cơ hội l&agrave;m gi&agrave;u trong phần c&ograve;n lại của thế giới c&ocirc;ng nghệ&quot;, &ocirc;ng n&oacute;i.</p>\r\n\r\n<p><strong>Canh bạc c&ocirc;ng nghệ</strong></p>\r\n\r\n<p>H&agrave;ng loạt tập đo&agrave;n c&ocirc;ng nghệ lớn của Mỹ v&agrave; Trung Quốc đ&atilde; phải đối mặt với sự kiểm so&aacute;t gắt gao từ giới chức những năm gần đ&acirc;y. Ch&iacute;nh phủ Trung Quốc năm ngo&aacute;i&nbsp;<a href=\"https://vnexpress.net/tai-sao-trung-quoc-siet-cac-cong-ty-cong-nghe-4359335.html\" rel=\"dofollow\">trấn &aacute;p</a>&nbsp;nhiều c&ocirc;ng ty c&ocirc;ng nghệ, &aacute;p dụng đạo luật mới trong c&aacute;c lĩnh vực như chống độc quyền v&agrave; bảo vệ dữ liệu. Cổ phiếu của Tencent, Alibaba v&agrave; Didi đ&atilde; bị b&aacute;n th&aacute;o hồi năm ngo&aacute;i khi những tập đo&agrave;n n&agrave;y lọt v&agrave;o tầm ngắm.</p>\r\n\r\n<p>Tại Mỹ, Tổng thống Joe Biden năm ngo&aacute;i cũng k&yacute; sắc lệnh h&agrave;nh ph&aacute;p nhằm hạn chế những h&agrave;nh vi phản cạnh tranh của Big Tech.</p>\r\n\r\n<p>Ngo&agrave;i &aacute;p lực từ cơ quan quản l&yacute;, Shvets cho rằng một l&yacute; do quan trọng hơn l&agrave; thế giới đang dần chuyển dịch từ c&ocirc;ng nghệ thế hệ hai sang thế hệ ba. C&acirc;u hỏi l&agrave; ai sẽ sống s&oacute;t qua đợt chuyển dịch quy m&ocirc; lớn n&agrave;y.</p>\r\n\r\n<p>&quot;B&agrave;i học cho thấy chỉ một v&agrave;i c&ocirc;ng ty đủ sức tồn tại sau qu&aacute; tr&igrave;nh n&agrave;y. Microsoft l&agrave; tập đo&agrave;n c&ocirc;ng nghệ duy nhất th&agrave;nh c&ocirc;ng khi chuyển từ thế hệ một sang thế hệ hai. Gần như kh&ocirc;ng ai kh&aacute;c l&agrave;m được điều đ&oacute;. Hiện chưa r&otilde; nền tảng kỹ thuật số n&agrave;o c&oacute; cơ hội v&agrave; đủ năng lực, d&ugrave; l&agrave; Meta, Google hay Alibaba&quot;, &ocirc;ng n&oacute;i.</p>\r\n\r\n<p>Shvets kh&ocirc;ng n&ecirc;u chi tiết đợt chuyển dịch thế hệ ba sẽ đi k&egrave;m những c&ocirc;ng nghệ g&igrave;. Tuy nhi&ecirc;n, sức h&uacute;t li&ecirc;n quan tới c&aacute;c xu hướng như metaverse, blockchain, Web 3.0... đ&atilde; bắt đầu n&oacute;ng l&ecirc;n từ cuối năm ngo&aacute;i.</p>\r\n\r\n<p>Meta, Apple, Microsoft v&agrave; Google đều đang nỗ lực th&uacute;c đẩy qu&aacute; tr&igrave;nh tung ra sản phẩm phần cứng v&agrave; dịch vụ li&ecirc;n quan tới vũ trụ ảo metaverse. Tuy nhi&ecirc;n, c&aacute;c tập đo&agrave;n Big Tech được cho l&agrave; qu&aacute; lớn v&agrave; chậm chuyển m&igrave;nh hơn so với c&aacute;c c&ocirc;ng ty mới nổi trong việc tận dụng cơ hội v&agrave; đ&oacute;n nhận xu hướng mới.</p>\r\n\r\n<p>Một sự thực đang diễn ra ở Thung lũng Sillicon l&agrave; c&aacute;c c&ocirc;ng ty c&ocirc;ng nghệ lớn gặp kh&oacute; khăn trong việc giữ ch&acirc;n hoặc thu h&uacute;t nh&acirc;n t&agrave;i. Theo New York Times, g&agrave;y c&agrave;ng nhiều c&aacute;c gi&aacute;m đốc điều h&agrave;nh v&agrave; nh&agrave; ph&aacute;t triển cấp cao rời c&ocirc;ng ty c&oacute; t&ecirc;n tuổi để chuyển sang c&aacute;c doanh nghiệp nhỏ hơn về tiền điện tử v&agrave; dự &aacute;n c&ocirc;ng nghệ phi tập trung kh&aacute;c.</p>\r\n\r\n<p><strong>Sự cạnh tranh dữ dội ở Trung Quốc</strong></p>\r\n\r\n<p>Trong khi đ&oacute;, c&aacute;c tập đo&agrave;n c&ocirc;ng nghệ lớn của Trung Quốc chịu &aacute;p lực quản l&yacute; rất lớn, đi k&egrave;m l&agrave; sức cạnh tranh từ h&agrave;ng loạt đối thủ h&ugrave;ng mạnh, theo Roderick Snell, Gi&aacute;m đốc đầu tư ở c&ocirc;ng ty quản l&yacute; Baillie Gifford.</p>\r\n\r\n<p>&quot;Vấn đề lớn nhất với c&aacute;c tập đo&agrave;n c&ocirc;ng nghệ như Alibaba hay Tencent lu&ocirc;n l&agrave; thị trường cạnh tranh dữ dội trong những lĩnh vực mới nổi. Tencent đ&atilde; mất 40% thị phần quảng c&aacute;o tr&ecirc;n mạng x&atilde; hội v&agrave;o tay đối thủ trong 3-4 năm qua. Đ&oacute; l&agrave; lo ngại lớn nhất, khi ng&agrave;y c&agrave;ng c&oacute; nhiều đối thủ cạnh tranh&quot;, &ocirc;ng n&oacute;i.</p>', '2022-02-16 07:28:28', 16),
(18, 'Người Mỹ mất một tỷ USD vì bị lừa tình trên mạng', '<p>Khoảng 24.000 người Mỹ bị lừa t&igrave;nh qua Internet v&agrave; mất tổng số tiền một tỷ USD trong năm 2021, nhiều vụ li&ecirc;n quan đến tiền điện tử.</p>', 'bitcoin-9133-1644678374.jpg', '<p>Thống k&ecirc; được đưa ra trong b&aacute;o c&aacute;o về c&aacute;c vụ lừa t&igrave;nh tr&ecirc;n mạng năm ngo&aacute;i do Cục Điều tra Li&ecirc;n bang Mỹ (FBI) c&ocirc;ng bố tuần trước. Năm 2021 được Ủy ban Thương mại Li&ecirc;n bang Mỹ (FTC) đ&aacute;nh gi&aacute; l&agrave; năm b&eacute;o bở nhất lịch sử với những kẻ lừa t&igrave;nh.</p>\r\n\r\n<p>FTC đưa ra con số thấp hơn l&agrave; 547 triệu USD, do chỉ t&iacute;nh đến những sự việc được th&ocirc;ng b&aacute;o cho Mạng lưới Bảo vệ Người ti&ecirc;u d&ugrave;ng, nhưng vẫn tăng đ&aacute;ng kể so với 307 triệu USD năm 2020 v&agrave; 202 triệu USD năm 2019.&nbsp;</p>\r\n\r\n<p>25% trong số n&agrave;y được chuyển cho kẻ lừa đảo th&ocirc;ng qua tiền điện tử, với mức thiệt hại trung b&igrave;nh 9.770 USD/nạn nh&acirc;n. Giới chức Mỹ cảnh b&aacute;o những kẻ lừa đảo đang đẩy mạnh nỗ lực dụ dỗ mục ti&ecirc;u bằng những lời khuy&ecirc;n đầu tư v&agrave;o tiền điện tử.</p>\r\n\r\n<p>C&aacute;c nh&oacute;m độ tuổi đều ghi nhận mức tăng về thiệt hại, trong đ&oacute; cao nhất l&agrave; người d&ugrave;ng từ 18 đến 29 tuổi, nhưng số n&agrave;y chỉ chứng kiến mức thiệt hại 750 USD/người. Trong khi đ&oacute;, nh&oacute;m tr&ecirc;n 70 tuổi c&oacute; thiệt hại lớn nhất với hơn 9.000 USD/nạn nh&acirc;n.</p>\r\n\r\n<p>Những vụ lừa đảo li&ecirc;n quan tới tiền điện tử trong năm 2021 tăng gần năm lần so với một năm trước đ&oacute;, nhưng thẻ qu&agrave; tặng vẫn l&agrave; phương thức thanh to&aacute;n bị lạm dụng nhất với 28% số vụ được b&aacute;o c&aacute;o. Con số n&agrave;y với tiền điện tử l&agrave; 18%, dịch vụ hoặc ứng dụng thanh to&aacute;n 14%, chuyển khoản ng&acirc;n h&agrave;ng 13% v&agrave; chuyển tiền mặt 12%.</p>\r\n\r\n<p>Nhiều người bị kẻ lừa đảo tiếp cận th&ocirc;ng qua ứng dụng hẹn h&ograve;, nhưng hơn 33% kết nối qua Facebook hoặc Instagram.</p>\r\n\r\n<p>Đ&agrave; tăng c&aacute;c vụ lừa t&igrave;nh tr&ugrave;ng khớp với t&igrave;nh trạng t&aacute;ch biệt khỏi x&atilde; hội v&agrave; dựa v&agrave;o c&ocirc;ng nghệ để duy tr&igrave; quan hệ do Covid-19. Người d&ugrave;ng Tinder trong th&aacute;ng 2/2021 gửi nhiều tin nhắn hơn 19% so với một năm trước đ&oacute;, độ d&agrave;i c&aacute;c cuộc thảo luận cũng tăng 32% so với trước đại dịch.</p>\r\n\r\n<p>Những kẻ lừa đảo thường tạo t&agrave;i khoản tr&ecirc;n mạng với h&igrave;nh ảnh giả mạo, k&egrave;m l&yacute; do kh&ocirc;ng thể gặp mặt trực tiếp do đang bị c&aacute;ch ly hoặc l&agrave;m nhiệm vụ qu&acirc;n sự ở nước ngo&agrave;i. Khi đ&atilde; gi&agrave;nh được sự tin tưởng của nạn nh&acirc;n, ch&uacute;ng sẽ đề nghị họ chuyển tiền để giải quyết kh&oacute; khăn.</p>\r\n\r\n<p>Thống k&ecirc; ch&iacute;nh x&aacute;c sẽ được c&ocirc;ng bố trong b&aacute;o c&aacute;o thường ni&ecirc;n của Trung t&acirc;m Khiếu nại Tội phạm Internet. FBI cho biết nhiều nạn nh&acirc;n kh&ocirc;ng b&aacute;o c&aacute;o việc m&igrave;nh bị lừa, khiến những con số kh&ocirc;ng phản &aacute;nh thực tế.</p>', '2022-02-16 07:29:58', 16),
(19, 'Xiaomi quyết đua smartphone cao cấp với Apple', '<p>Người đứng đầu Xiaomi Lei Jun nhận định việc cạnh tranh ở ph&acirc;n kh&uacute;c smartphone cao cấp l&agrave; &quot;cuộc chiến sinh tử&quot; v&agrave; đối thủ quan trọng nhất l&agrave; Apple.</p>\r\n\r\n<p>&nbsp;</p>', '0c27ba36-f9ea-11eb-aa37-9736ba-6394-3086-1644569569.jpg', '<p>&quot;Ch&uacute;ng t&ocirc;i đặt mục ti&ecirc;u c&oacute; thể so s&aacute;nh tương đồng với Apple về cả sản phẩm lẫn trải nghiệm, đồng thời trở th&agrave;nh thương hiệu smartphone cao cấp lớn nhất của Trung Quốc trong ba năm tới&quot;, Lei Jun, người s&aacute;ng lập ki&ecirc;m CEO Xiaomi, viết tr&ecirc;n Weibo h&ocirc;m 8/2.</p>\r\n\r\n<p>B&ecirc;n cạnh đ&oacute;, &ocirc;ng cũng khẳng định lại mục ti&ecirc;u của c&ocirc;ng ty l&agrave; ph&aacute;t triển Xiaomi th&agrave;nh nh&agrave; cung cấp smartphone đứng đầu thế giới. Việc tập trung v&agrave;o ph&acirc;n kh&uacute;c cao cấp sẽ được ưu ti&ecirc;n, b&ecirc;n cạnh thiết bị gi&aacute; rẻ v&agrave; tầm trung - những sản phẩm l&agrave;m n&ecirc;n th&agrave;nh c&ocirc;ng cho Xiaomi những năm qua.</p>\r\n\r\n<p>Trong cuộc họp chiến lược sau kỳ nghỉ Tết, &ocirc;ng Jun cũng m&ocirc; tả sự cạnh tranh trong lĩnh vực smartphone cao cấp l&agrave; &quot;cuộc chiến sinh tử&quot; m&agrave; Xiaomi phải vượt qua để tiếp tục ph&aacute;t triển. &Ocirc;ng lặp lại cam kết đầu tư 100 tỷ nh&acirc;n d&acirc;n tệ (15,71 tỷ USD) v&agrave;o R&amp;D để đạt tham vọng.</p>\r\n\r\n<p>Theo b&aacute;o c&aacute;o của Canalys trong qu&yacute; II/2021, Xiaomi lần đầu trở th&agrave;nh nh&agrave; cung cấp điện thoại th&ocirc;ng minh lớn thứ hai thế giới với 17%, xếp tr&ecirc;n Apple v&agrave; sau Samsung. Tuy nhi&ecirc;n, phần lớn thị phần của h&atilde;ng c&oacute; được từ smartphone tầm trung v&agrave; tăng trưởng chủ yếu ở Nam Mỹ, ch&acirc;u Phi v&agrave; T&acirc;y &Acirc;u.</p>\r\n\r\n<p>Mục ti&ecirc;u đứng đầu về smartphone của Xiaomi chững lại từ qu&yacute; III/2021 do khủng hoảng b&aacute;n dẫn to&agrave;n cầu. Th&aacute;ng 11 năm ngo&aacute;i, Chủ tịch Xiaomi Wang Xiang thừa nhận nguồn cung linh kiện kh&ocirc;ng ổn định khiến họ gặp kh&oacute; khăn trong việc lập kế hoạch sản xuất. Cũng trong th&aacute;ng đ&oacute;, h&atilde;ng c&ocirc;ng bố chương tr&igrave;nh cơ sở hạ tầng b&aacute;n lẻ đầy tham vọng, mở rộng chuỗi cửa h&agrave;ng tại Trung Quốc từ 10.000 l&ecirc;n 30.000 trong ba năm tới. Mục ti&ecirc;u của c&ocirc;ng ty l&agrave; chiếm 70% thị phần smartphone tại đ&acirc;y.</p>\r\n\r\n<p>Trong khi đ&oacute;, Apple đ&atilde; vượt Vivo trong qu&yacute; IV/2021 để đứng đầu thị trường smartphone Trung Quốc - th&agrave;nh t&iacute;ch m&agrave; c&ocirc;ng ty đ&atilde; kh&ocirc;ng thể đạt từ năm 2015. Theo nh&agrave; ph&acirc;n t&iacute;ch Zhang Mengmeng của Counterpoint, việc cạnh tranh giữa Apple v&agrave; c&aacute;c nh&agrave; sản xuất Trung Quốc sẽ c&ograve;n trở n&ecirc;n gay gắt thời gian tới.</p>', '2022-02-16 07:31:12', 16),
(22, 'Giới chuyên gia chê khả năng lập trình của AI', '<p>Một số chuy&ecirc;n gia cho rằng khả năng tự lập tr&igrave;nh của m&aacute;y c&aacute;ch con người &quot;nhiều năm &aacute;nh s&aacute;ng&quot;, d&ugrave; Google mới c&ocirc;ng bố th&agrave;nh tựu của DeepMind.</p>', 'Japanese-programming-terms-628-7091-5693-1644394969.jpg', '<p>&quot;Lập tr&igrave;nh cấp độ như con người của m&aacute;y m&oacute;c vẫn c&ograve;n c&aacute;ch xa nhiều năm &aacute;nh s&aacute;ng&quot;, nh&agrave; khoa học m&aacute;y t&iacute;nh Dzmitry Bahdanau tại Viện AI Mila (Canada) viết tr&ecirc;n Twitter khi nhắc đến AlphaCode. C&ocirc;ng cụ AI n&agrave;y do DeepMind sản xuất, được&nbsp;<a href=\"https://vnexpress.net/google-ai-tu-viet-code-nhu-lap-trinh-vien-4423767.html\" rel=\"dofollow\">tuy&ecirc;n bố</a>&nbsp;c&oacute; thể tự lập tr&igrave;nh với &quot;chuy&ecirc;n m&ocirc;n của một lập tr&igrave;nh vi&ecirc;n b&igrave;nh thường&quot;.</p>\r\n\r\n<p>Để đưa ra kết luận, DeepMind cho biết đ&atilde; kiểm tra khả năng của AlphaCode trong một cuộc thi viết code tr&ecirc;n Codeforces. Đ&acirc;y l&agrave; nền tảng chuy&ecirc;n đ&agrave;o tạo kỹ năng của h&agrave;ng chục ngh&igrave;n lập tr&igrave;nh vi&ecirc;n phần mềm tr&ecirc;n khắp thế giới, cũng như tổ chức c&aacute;c cuộc thi để họ cạnh tranh với nhau.</p>\r\n\r\n<p>Tr&iacute;ch dẫn ch&iacute;nh số liệu của Codeforces, Bahdanau n&oacute;i AlphaCode thu h&uacute;t sự ch&uacute; &yacute; của &ocirc;ng, nhưng để đạt đến khả năng lập tr&igrave;nh như người thường th&igrave; chưa. &quot;Hệ thống AlphaCode xếp sau tới hơn 54,3% số người tham gia, hầu hết lại l&agrave; sinh vi&ecirc;n trung học, đại học - những người đang trau dồi kỹ năng giải quyết vấn đề&quot;, Bahdanau nhận x&eacute;t. &quot;Một người b&igrave;nh thường c&oacute; thể dễ d&agrave;ng r&egrave;n luyện để l&agrave;m tốt hơn AlphaCode&quot;.</p>\r\n\r\n<p>Một chuy&ecirc;n gia về AI kh&aacute;c n&oacute;i với&nbsp;<em>CNBC&nbsp;</em>rằng AlphaCode l&agrave; th&agrave;nh tựu kỹ thuật ấn tượng, nhưng cần ph&acirc;n t&iacute;ch cẩn thận về loại nhiệm vụ lập tr&igrave;nh m&agrave; n&oacute; đảm nhiệm, bởi c&oacute; những c&aacute;i thực hiện tốt v&agrave; những c&aacute;i kh&aacute;c th&igrave; kh&ocirc;ng. Theo người n&agrave;y, c&aacute;c c&ocirc;ng cụ lập tr&igrave;nh dựa tr&ecirc;n AI như AlphaCode c&oacute; thể thay đổi phần n&agrave;o bản chất của lĩnh vực ph&aacute;t triển phần mềm, nhưng giải quyết vấn đề phức tạp vẫn cần đến con người.</p>\r\n\r\n<p>Gary Marcus, gi&aacute;o sư AI tại Đại học New York, cũng đồng t&igrave;nh. &quot;Bạn n&ecirc;n nghĩ về AlphaCode v&agrave; c&aacute;c c&ocirc;ng cụ tương tự như trợ l&yacute; cho lập tr&igrave;nh vi&ecirc;n, như c&aacute;ch một chiếc laptop hỗ trợ gi&aacute;o vi&ecirc;n giảng dạy vậy&quot;, Marcus n&oacute;i. &quot;N&oacute; kh&ocirc;ng phải l&agrave; thứ c&oacute; thể thay thế một lập tr&igrave;nh vi&ecirc;n thực sự. Ch&uacute;ng ta cần nhiều thập kỷ nữa mới đạt được điều đ&oacute;&quot;.</p>\r\n\r\n<p>AlphaCode kh&ocirc;ng phải l&agrave; c&ocirc;ng cụ AI đầu ti&ecirc;n c&oacute; thể tự lập tr&igrave;nh. Th&aacute;ng 6 năm ngo&aacute;i,&nbsp;<a href=\"https://vnexpress.net/chu-de/microsoft-1553\" rel=\"dofollow\">Microsoft</a>&nbsp;v&agrave; c&ocirc;ng ty con GitHub ra phần mềm GitHub Copilot nhằm hỗ trợ lập tr&igrave;nh vi&ecirc;n bằng c&aacute;ch ph&acirc;n t&iacute;ch m&atilde; hiện c&oacute;, tạo c&aacute;c đoạn m&atilde; mới v&agrave; bổ sung m&atilde; cho c&aacute;c đoạn code lỗi. Th&aacute;ng 9/2021, phần mềm Codex AI của OpenAI c&oacute; thể tự lập tr&igrave;nh bằng 12 ng&ocirc;n ngữ.&nbsp;<a href=\"https://vnexpress.net/so-hoa/ai-cua-elon-musk-bi-qua-mat-bat-ngo-4246202.html\" rel=\"dofollow\">OpenAI</a>&nbsp;l&agrave; một trong những ph&ograve;ng nghi&ecirc;n cứu tham vọng nhất thế giới v&agrave; từng nhận đầu tư một tỷ USD năm 2019.</p>\r\n\r\n<p>Nat Friedman, CEO GitHub, m&ocirc; tả GitHub Copilot như một phi&ecirc;n bản cộng sự ảo của nh&agrave; ph&aacute;t triển, c&ugrave;ng l&agrave;m việc song song với nhau trong c&ugrave;ng một dự &aacute;n. &Ocirc;ng cho biết GitHub Copilot gi&uacute;p viết m&atilde; nhanh hơn v&agrave; ng&agrave;y c&agrave;ng nhiều người chấp nhận đề xuất của n&oacute;.</p>\r\n\r\n<p>Samim Winiger, một nh&agrave; nghi&ecirc;n cứu AI ở Berlin, n&oacute;i ngay cả lập tr&igrave;nh vi&ecirc;n giỏi nhất thế giới kh&ocirc;ng thể tạo ra &quot;code ho&agrave;n hảo&quot;. Tuy nhi&ecirc;n, &ocirc;ng cho rằng con người c&oacute; thể x&acirc;y dựng hệ thống &quot;thất bại ở mức an to&agrave;n v&agrave; &quot;c&oacute; tr&aacute;ch nhiệm giải tr&igrave;nh&quot;, c&ograve;n m&aacute;y m&oacute;c kh&ocirc;ng thể c&oacute; khả năng n&agrave;y.</p>', '2022-02-16 07:33:55', 16),
(23, 'Cảnh chen lấn trong sự kiện metaverse của Samsung', '<p>Samsung tổ chức lễ ra mắt Galaxy S22 trong vũ trụ ảo metaverse, nhưng kh&ocirc;ng nhiều người tiếp cận được v&igrave; vấn đề kỹ thuật.</p>', 'FLLzDS9XsBIhxpH-jpeg-3416-1644566306.jpg', '<p>Ng&agrave;y 9/2,&nbsp;<a href=\"https://vnexpress.net/chu-de/samsung-1606\" rel=\"dofollow\">Samsung</a>&nbsp;giới thiệu bộ ba Galaxy S22. B&ecirc;n cạnh việc ph&aacute;t trực tuyến tr&ecirc;n YouTube, h&atilde;ng c&ograve;n tổ chức trong khu vực&nbsp;<a href=\"https://vnexpress.net/galaxy-s22-se-ra-mat-trong-vu-tru-ao-4425513.html\" rel=\"dofollow\">Samsung 837X</a>&nbsp;thuộc nền tảng&nbsp;<a href=\"https://vnexpress.net/chu-de/metaverse-3754\" rel=\"dofollow\">metaverse</a>&nbsp;<a href=\"https://vnexpress.net/khu-dat-ao-gia-2-4-trieu-usd-trong-metaverse-4394818.html\" rel=\"dofollow\">Decentraland</a>. Kh&ocirc;ng gian ảo n&agrave;y m&ocirc; phỏng một cửa h&agrave;ng ngo&agrave;i đời thực của Samsung tại số 837, phố Washington, New York.</p>\r\n\r\n<p>Bi&ecirc;n tập vi&ecirc;n Sam Shead của&nbsp;<em>CNBC</em>&nbsp;cho biết đ&atilde; tham gia sự kiện qua k&iacute;nh VR. &quot;Sau khi khởi tạo, avatar của t&ocirc;i rơi xuống một khu vực bao quanh bởi khoảng 20 người kh&aacute;c&quot;, Shead m&ocirc; tả. &quot;T&ugrave;y thuộc v&agrave;o quan điểm của mỗi người, nhưng với t&ocirc;i, metaverse thực sự l&agrave; giấc mơ kh&ocirc;ng tưởng hoặc c&oacute; thể coi l&agrave; một cơn &aacute;c mộng&quot;.</p>\r\n\r\n<p>Shead v&agrave; nhiều người phải loay hoay t&igrave;m t&ograve;a nh&agrave; 837X trong Decentraland. Khi đến nơi, &ocirc;ng v&agrave; một số người kh&aacute;c tiếp tục chật vật mới c&oacute; thể v&agrave;o b&ecirc;n trong Connectivity Theatre - nh&agrave; h&aacute;t nơi tổ chức sự kiện.</p>\r\n\r\n<p>&quot;Khi di chuyển, t&ocirc;i thấy khung chat b&ecirc;n tr&aacute;i chứa đầy c&aacute;c nội dung &#39;Trợ gi&uacute;p&#39; v&agrave; &#39;T&ocirc;i gh&eacute;t tr&ograve; n&agrave;y&#39;. Chỉ một số &iacute;t th&iacute;ch th&uacute;, cho rằng họ đang ở trong tương lai&#39;&quot;, &ocirc;ng n&oacute;i.</p>\r\n\r\n<p>Shead tiếp tục di chuyển v&agrave; thấy c&aacute;c quảng c&aacute;o của Samsung. Khi nhấp v&agrave;o biển &quot;Crowd&quot; v&agrave; chọn tham gia, &ocirc;ng được dẫn đến nơi c&oacute; thể thấy to&agrave; nh&agrave; 837X v&agrave; một cửa h&agrave;ng pizza b&ecirc;n cạnh. L&uacute;c n&agrave;y, ph&oacute;ng vi&ecirc;n của&nbsp;<em>CNBC</em>&nbsp;thấy một d&ograve;ng người đang nối h&agrave;ng d&agrave;i để tham gia sự kiện đ&atilde; đợi sẵn.</p>\r\n\r\n<p>&quot;Mọi người chen lấn để được v&agrave;o. T&ocirc;i thậm ch&iacute; thấy nhiều avatar nhảy chồng l&ecirc;n đầu nhau, cố gắng chen v&agrave;o nhưng v&ocirc; vọng. Khung chat lại ngập nội dung nhờ gi&uacute;p đỡ&quot;, &ocirc;ng kể.</p>\r\n\r\n<p>Sau 30 ph&uacute;t cố gắng tiếp cận t&ograve;a nh&agrave; của Samsung trong metaverse kh&ocirc;ng th&agrave;nh, Shead từ bỏ v&agrave; quay trở lại sự kiện trực tuyến tr&ecirc;n YouTube.</p>\r\n\r\n<p>Tr&ecirc;n Twitter, nhiều người cũng than phiền kh&ocirc;ng thể v&agrave;o sự kiện của Samsung tr&ecirc;n metaverse. &quot;T&ocirc;i cũng tham gia nhưng trải nghiệm thật đ&aacute;ng thất vọng&quot;, t&agrave;i khoản Drew Benvie n&ecirc;u. &quot;Nhiều người kh&ocirc;ng thể thực sự v&agrave;o được khu 837X trước khi sự kiện bắt đầu&quot;, Russell Holly của&nbsp;<em>Cnet</em>&nbsp;viết.</p>\r\n\r\n<p>Một số cho biết phải d&ugrave;ng thủ thuật để tham gia, như cần chuyển sang m&aacute;y chủ Athena để v&agrave;o, nhưng kh&ocirc;ng m&ocirc; tả l&agrave;m c&aacute;ch n&agrave;o để thực hiện được điều n&agrave;y.</p>\r\n\r\n<p>Trong khi đ&oacute;, Samsung cho biết trải nghiệm metaverse trong sự kiện Unpacked kh&ocirc;ng gặp nhiều vấn đề, nhưng thừa nhận c&oacute; sai s&oacute;t kỹ thuật.</p>\r\n\r\n<p>&quot;Kh&aacute;ch tham quan v&agrave; cộng đồng Decentraland đ&atilde; gửi cho ch&uacute;ng t&ocirc;i những phản hồi t&iacute;ch cực. Ch&uacute;ng t&ocirc;i coi đ&oacute; như một bước ngoặt trong thế giới số&quot;, đại diện h&atilde;ng phản hồi email của&nbsp;<em>CNBC</em>. &quot;Nhưng thật kh&ocirc;ng may, vấn đề kỹ thuật ở một trong những khu vực của Decentraland đ&atilde; ngăn một số người truy cập sự kiện. Ngay khi ph&aacute;t hiện, ch&uacute;ng t&ocirc;i đ&atilde; th&ocirc;ng b&aacute;o qua Twitter v&agrave; chuyển hướng kh&aacute;ch truy cập đến khu vực mới&quot;.</p>\r\n\r\n<p>Samsung đang nghi&ecirc;m t&uacute;c theo đuổi xu hướng blockchain v&agrave; NFT. B&ecirc;n cạnh kết hợp với Decentraland để ra mắt cửa h&agrave;ng 837X hồi đầu th&aacute;ng 1, Samsung cũng mang đến CES 2022 một ng&ocirc;i nh&agrave; kỹ thuật số c&oacute; thể t&ugrave;y chỉnh, truy cập th&ocirc;ng qua ứng dụng Zepeto. Mới đ&acirc;y, h&atilde;ng tiếp tục giới thiệu loạt thiết bị hỗ trợ NFT, blockchain v&agrave; v&iacute; điện tử Blockchain Wallet để lưu trữ tiền số.</p>', '2022-02-16 07:35:01', 16),
(24, 'Samsung đua công nghệ sạc từ xa', '<p>Samsung đ&atilde; nhận được một số s&aacute;ng chế về c&ocirc;ng nghệ truyền năng lượng qua kh&ocirc;ng kh&iacute; để sạc pin cho thiết bị.</p>', 'f3906367-ce6b-4852-bb8d-2ddb48-1758-4072-1644491952.png', '<p>Theo Cơ quan S&aacute;ng chế H&agrave;n Quốc, Samsung được cấp s&aacute;ng chế về một số hệ thống cho ph&eacute;p sạc thiết bị điện tử kh&ocirc;ng d&acirc;y từ xa. Một trong số đ&oacute; l&agrave; Wireless Power Transmission Device, hỗ trợ sạc ở bất kỳ vị tr&iacute; n&agrave;o trong b&aacute;n k&iacute;nh nhất định, tối đa ba thiết bị. C&aacute;c thiết bị hỗ trợ gồm smartphone, tai nghe v&agrave; c&aacute;c sản phẩm c&oacute; t&iacute;nh năng sạc kh&ocirc;ng d&acirc;y kh&aacute;c.</p>\r\n\r\n<p>Giới c&ocirc;ng nghệ nhận định Samsung sẽ sớm ph&aacute;t triển v&agrave; cho ra mắt thiết bị sạc từ xa trong tương lai gần. Cuộc đua n&agrave;y c&oacute; c&aacute;c c&ocirc;ng ty như&nbsp;<a href=\"https://vnexpress.net/chu-de/xiaomi-2327\" rel=\"dofollow\">Xiaomi</a>,&nbsp;<a href=\"https://vnexpress.net/chu-de/oppo-1605\" rel=\"dofollow\">Oppo</a>&nbsp;hay Motorola đang tham gia.</p>\r\n\r\n<p>Motorola hợp t&aacute;c với GuRu để ph&aacute;t triển c&ocirc;ng nghệ sạc kh&ocirc;ng d&acirc;y kh&ocirc;ng chạm cho c&aacute;c smartphone tương lai với&nbsp;<a href=\"https://vnexpress.net/sac-khong-day-smartphone-tu-khoang-cach-9-met-4278210.html\" rel=\"dofollow\">khoảng c&aacute;ch sạc 9 m&eacute;t</a>. Hồi th&aacute;ng 1/2021, Xiaomi c&ocirc;ng bố Mi Air Charge với khả năng truyền năng lượng kh&ocirc;ng chạm v&agrave; kh&ocirc;ng d&acirc;y tới c&aacute;c thiết bị trong ph&ograve;ng. Th&aacute;ng 2/2021, Oppo giới thiệu &quot;sạc qua kh&ocirc;ng kh&iacute; kh&ocirc;ng cần c&aacute;p hay đế sạc&quot;. Cũng trong th&aacute;ng đ&oacute;, Aeterlink tại Tokyo giới thiệu Airplug với lời khẳng định c&oacute; thể sạc cho c&aacute;c thiết bị trong phạm vi 20 m&eacute;t. Những giải ph&aacute;p tr&ecirc;n đều thu h&uacute;t sự ch&uacute; &yacute; của giới truyền th&ocirc;ng, nhưng chưa c&ocirc;ng ty n&agrave;o c&oacute; kế hoạch đưa sản phẩm ra thị trường.</p>\r\n\r\n<p>Thực tế, c&ocirc;ng nghệ sạc kh&ocirc;ng d&acirc;y đ&atilde; c&oacute; mặt tr&ecirc;n thị trường nhiều năm, nhưng chưa đủ tiện dụng. Người d&ugrave;ng vẫn phải đặt m&aacute;y l&ecirc;n đế sạc v&agrave; đế sạc vẫn phải cắm v&agrave;o ổ điện. Kh&ocirc;ng &iacute;t người&nbsp;<a href=\"https://vnexpress.net/so-hoa/giac-mo-sac-tu-xa-cho-smartphone-4245762.html\" rel=\"dofollow\">mơ đến một ng&agrave;y</a>&nbsp;c&oacute; thể nạp năng lượng cho điện thoại thoải m&aacute;i m&agrave; kh&ocirc;ng phải lo t&igrave;m ổ cắm.</p>\r\n\r\n<p>D&ugrave; được đ&aacute;nh gi&aacute; l&agrave; mang lại sự tiện lợi, sạc kh&ocirc;ng d&acirc;y từ xa cũng g&acirc;y nhiều lo ngại. Trong đ&oacute;, một số nh&agrave; khoa học cho rằng việc d&ugrave;ng c&ocirc;ng nghệ sạc n&agrave;y c&oacute; thể tạo ra c&aacute;c điện t&iacute;ch c&oacute; hại xung quanh v&agrave; t&aacute;c động ở mức độ nhất định tới con người. Những lĩnh vực kh&aacute;c m&agrave; mức sạc kh&ocirc;ng d&acirc;y c&oacute; thể ảnh hưởng gồm h&agrave;ng kh&ocirc;ng, vận chuyển, quan s&aacute;t thi&ecirc;n văn...</p>\r\n\r\n<p>C&aacute;c cơ quan quản l&yacute; Trung Quốc hiện quản l&yacute; kh&aacute; gắt gao về sạc kh&ocirc;ng d&acirc;y. Bộ C&ocirc;ng nghiệp v&agrave; C&ocirc;ng nghệ Th&ocirc;ng tin Trung Quốc năm ngo&aacute;i ban h&agrave;nh dự thảo &quot;Quy định tạm thời về quản l&yacute; thiết bị sạc kh&ocirc;ng d&acirc;y v&ocirc; tuyến&quot;, trong đ&oacute; y&ecirc;u cầu sạc kh&ocirc;ng d&acirc;y kh&ocirc;ng vượt qu&aacute; c&ocirc;ng suất 50 W, cũng như kh&ocirc;ng g&acirc;y nhiễu đến c&aacute;c thiết bị điện tử kh&aacute;c. Tuy nhi&ecirc;n, đ&acirc;y chỉ l&agrave; t&agrave;i liệu sơ bộ v&agrave; c&oacute; thể được sửa đổi trong tương lai.</p>', '2022-02-16 07:36:18', 16),
(25, 'AI của Sony đánh bại game thủ đua xe giỏi nhất', '<p>GT Sophy, AI do Sony ph&aacute;t triển, vượt qua những game thủ giỏi nhất khi tham gia tr&ograve; chơi đua xe Gran Turismo tr&ecirc;n PlayStation.</p>', 'https-3A-2F-2Fs3-ap-northeast-6304-1838-1644468481.jpg', '<p>GT Sophy do nh&oacute;m nghi&ecirc;n cứu&nbsp;<a href=\"https://vnexpress.net/chu-de/sony-1982\" rel=\"dofollow\">Sony</a>&nbsp;<a href=\"https://vnexpress.net/chu-de/tri-tue-nhan-tao-ai-1980\" rel=\"dofollow\">AI</a>&nbsp;Mỹ, đứng đầu l&agrave; tiến sĩ Peter Wurman, ph&aacute;t triển. Theo b&aacute;o c&aacute;o c&ocirc;ng bố tr&ecirc;n tạp ch&iacute;&nbsp;<em>Nature</em>, AI n&agrave;y gi&agrave;nh chiến thắng trong cuộc thi với bốn trong số những tay đua&nbsp;<em>Gran Turismo</em>&nbsp;giỏi nhất thế giới. B&ecirc;n cạnh đ&oacute;, n&oacute; cũng vượt 95% số người chơi game n&agrave;y chỉ sau hai ng&agrave;y tự học c&aacute;ch chơi v&agrave; tiếp tục tiến bộ trong những tuần tiếp theo.</p>\r\n\r\n<p>Sony cho biết, GT Sophy đ&aacute;nh bại c&aacute;c game thủ h&agrave;ng đầu trong&nbsp;<em>Gran Turismo</em>&nbsp;bằng c&aacute;ch t&igrave;m ra đường di chuyển nhanh nhất trong c&aacute;c kh&uacute;c cua để r&uacute;t ngắn thời gian, đồng thời trau dồi chiến thuật về tăng/giảm tốc, phanh... sau mỗi chặng đua. Nếu đối mặt với chướng ngại vật, GT Sophy cũng tự chuyển l&agrave;n đua để vượt qua nhanh ch&oacute;ng.</p>\r\n\r\n<p>Kh&ocirc;ng như cờ vua hoặc cờ v&acirc;y được chơi theo lượt,&nbsp;<em>Gran Turismo</em>&nbsp;y&ecirc;u cầu người chơi quyết định theo thời gian thực dựa tr&ecirc;n những g&igrave; đang diễn ra, n&ecirc;n GT Sophy cần phải đưa ra quyết định chỉ trong t&iacute;ch tắc.</p>\r\n\r\n<p>&quot;Th&agrave;nh c&ocirc;ng của GT Sophy cho thấy lần đầu ti&ecirc;n tr&ecirc;n đường đua ảo, một AI được huấn luyện c&oacute; thể vượt qua những tay đua giỏi nhất&quot;, tiến sĩ Wurman cho biết.</p>\r\n\r\n<p>Để huấn luyện, nh&oacute;m của Wurman đ&atilde; dạy cho GT Sophy một kỹ thuật phổ biến gọi l&agrave; học tăng cường. AI sẽ tiếp nhận th&ocirc;ng tin từ nhiều luồng để tối ưu h&oacute;a thời gian chạy tr&ecirc;n đường đua, gồm tr&aacute;nh chướng ngại vật v&agrave; chọn đường ngắn nhất, đồng thời hạn chế c&aacute;c tai nạn.</p>\r\n\r\n<p>C&aacute;c chuy&ecirc;n gia đ&aacute;nh gi&aacute;, th&agrave;nh tựu GT Sophy đạt được l&agrave; đ&aacute;ng ghi nhận. N&oacute; đ&atilde; chứng tỏ năng lực một AI c&oacute; thể tự học chiến lược để l&agrave;m việc trong c&aacute;c t&igrave;nh huống đ&ograve;i hỏi khả năng ph&aacute;n đo&aacute;n v&agrave; xử l&yacute; rất nhanh như đua xe.</p>\r\n\r\n<p>Theo&nbsp;<em>The Guardian</em>, bước đột ph&aacute; tr&ecirc;n c&oacute; thể mở ra c&aacute;c phương ph&aacute;p t&iacute;nh to&aacute;n tốt nhất để sử dụng cho &ocirc;t&ocirc; kh&ocirc;ng người l&aacute;i. N&oacute; c&oacute; thể kết hợp với c&aacute;c AI h&agrave;ng đầu kh&aacute;c v&agrave; tạo ra phần mềm xử l&yacute; cho hệ thống l&aacute;i tự động, nhất l&agrave; với trường hợp t&igrave;m đường ngắn nhất, tr&aacute;nh chướng ngại vật, xử l&yacute; khi c&oacute; nguy cơ va chạm với c&aacute;c phương tiện kh&aacute;c...</p>\r\n\r\n<p>Nh&oacute;m của Sony thừa nhận GT Sophy vẫn c&ograve;n nhiều điều cần cải tiến. Chẳng hạn, AI n&agrave;y sẽ &quot;trở n&ecirc;n hung h&atilde;n hơn đ&aacute;ng kể&quot; nếu như kh&ocirc;ng c&oacute; c&aacute;c h&igrave;nh phạt về va chạm tr&ecirc;n đường đua.</p>\r\n\r\n<p>&quot;Điểm nổi bật của GT Sophy l&agrave; c&oacute; thể xử l&yacute; nhuần nhuyễn c&aacute;c t&igrave;nh huống trong game, nhất l&agrave; khi đối đầu với chướng ngại vật hoặc xe kh&aacute;c&quot;, Gi&aacute;o sư Christian Gerdes, chuy&ecirc;n gia về xe tại Đại học Stanford, nhận x&eacute;t.</p>\r\n\r\n<p>Trước đ&acirc;y, AI đ&atilde; chiến thắng những người giỏi nhất thế giới trong nhiều tr&ograve; chơi, như poker, cờ vua, cờ v&acirc;y v&agrave; game&nbsp;<em>Starcraft</em>. Game đua xe l&agrave; lĩnh vực mới nhất tr&iacute; tệ nh&acirc;n tạo gi&agrave;nh lợi thế.</p>', '2022-02-16 07:37:21', 13),
(26, 'Ván cược 49 tỷ USD của châu Âu trong cơn khát chip', '<p>Ủy ban ch&acirc;u &Acirc;u th&ocirc;ng qua Đạo luật chip với khoản t&agrave;i trợ trị gi&aacute; 49 tỷ USD nhằm giải quyết cơn kh&aacute;t chip của khu vực v&agrave; to&agrave;n cầu.</p>', 'Dao-luat-chip-Chau-Au-jpeg-3209-1644420696.jpg', '<p>Mục ti&ecirc;u của EU l&agrave; tăng gấp đ&ocirc;i thị phần sản xuất chip to&agrave;n cầu của ch&acirc;u lục n&agrave;y, từ 9% l&ecirc;n 20% v&agrave;o năm 2030. Theo&nbsp;<em>The Verge</em>, đ&acirc;y l&agrave; cuộc đặt cược d&agrave;i hạn nhằm định h&igrave;nh lại thị trường chip to&agrave;n cầu của ch&acirc;u &Acirc;u.</p>\r\n\r\n<p>Trong nhiều năm, ch&acirc;u &Acirc;u muốn n&acirc;ng cao vai tr&ograve; của m&igrave;nh trong việc ph&aacute;t triển v&agrave; chế tạo chip b&aacute;n dẫn. Năm 2013, EU đề xuất một chương tr&igrave;nh t&agrave;i trợ trị gi&aacute; 100 tỷ euro mới mục ti&ecirc;u tương tự nhưng bị tr&igrave; ho&atilde;n. Cuộc khủng hoảng chuỗi cung ứng to&agrave;n cầu do Covid-19 g&acirc;y ra khiến kế hoạch n&agrave;y c&agrave;ng trở n&ecirc;n quan trọng hơn.</p>\r\n\r\n<p>Ursula von der Leyen, Chủ tịch EU, cho biết: &quot;Tất cả đều biết t&igrave;nh trạng thiếu chip tr&ecirc;n to&agrave;n cầu đ&atilde; thực sự l&agrave;m chậm qu&aacute; tr&igrave;nh phục hồi của ch&acirc;u &Acirc;u. To&agrave;n bộ d&acirc;y chuyền sản xuất đ&atilde; đi v&agrave;o bế tắc trong khi nhu cầu ng&agrave;y c&agrave;ng tăng. Ch&uacute;ng t&ocirc;i kh&ocirc;ng thể giao h&agrave;ng theo đơn đặt h&agrave;ng v&igrave; thiếu chip. V&igrave; vậy, Đạo luật chip ch&acirc;u &Acirc;u được th&ocirc;ng qua l&uacute;c n&agrave;y ho&agrave;n to&agrave;n th&iacute;ch hợp&quot;.</p>\r\n\r\n<p>EU kh&ocirc;ng phải khu vực duy nhất nhận ra vai tr&ograve; của ng&agrave;nh c&ocirc;ng nghiệp chip với tăng trưởng kinh tế trong tương lai. Tuần trước, Hạ viện Mỹ cũng th&ocirc;ng qua Đạo luật cạnh tranh, trong đ&oacute; t&agrave;i trợ 52 tỷ USD cho ng&agrave;nh c&ocirc;ng nghiệp b&aacute;n dẫn.</p>\r\n\r\n<p>So với Mỹ, nguồn t&agrave;i trợ của ch&acirc;u &Acirc;u vẫn &iacute;t hơn. Ngo&agrave;i ra, EU cũng gặp kh&oacute; trong việc thu h&uacute;t c&aacute;c nh&agrave; sản xuất chip lớn tr&ecirc;n thế giới. Hiện c&ocirc;ng ty Đ&agrave;i Loan TSMC thống trị ng&agrave;nh b&aacute;n dẫn, tạo ra hơn một nửa doanh thu to&agrave;n cầu. D&ugrave; đ&atilde; c&oacute; th&ocirc;ng tin về việc TSMC xem x&eacute;t th&agrave;nh lập một chi nh&aacute;nh tại Đức, chưa c&oacute; khoản đầu tư cụ thể n&agrave;o được c&ocirc;ng bố. Trong khi đ&oacute;, c&ocirc;ng ty n&agrave;y đ&atilde; x&aacute;c nhận đang x&acirc;y dựng nh&agrave; m&aacute;y mới ở Nhật Bản v&agrave; Mỹ.</p>\r\n\r\n<p>Theo c&aacute;c chuy&ecirc;n gia, bất kỳ kế hoạch n&agrave;o nhằm th&uacute;c đẩy sản lượng chip cũng sẽ kh&ocirc;ng l&agrave;m giảm bớt sự gi&aacute;n đoạn nguồn cung hiện tại, &iacute;t nhất đến cuối năm nay. Tuy nhi&ecirc;n, vấn đề &quot;chủ quyền kỹ thuật số&quot; sẽ l&agrave; mối quan t&acirc;m h&agrave;ng đầu của c&aacute;c cường quốc kinh tế trong nhiều thập kỷ tới.</p>\r\n\r\n<p>&quot;Cần phải n&oacute;i r&otilde; r&agrave;ng rằng kh&ocirc;ng một quốc gia n&agrave;o, thậm ch&iacute; kh&ocirc;ng một lục địa n&agrave;o c&oacute; thể ho&agrave;n to&agrave;n tự cung tự cấp. Điều n&agrave;y l&agrave; kh&ocirc;ng thể. Ch&acirc;u &Acirc;u sẽ lu&ocirc;n nỗ lực giữ cho c&aacute;c thị trường to&agrave;n cầu lu&ocirc;n mở v&agrave; kết nối với nhau. Điều n&agrave;y l&agrave; lợi &iacute;ch của thế giới, cũng v&igrave; lợi &iacute;ch của ch&uacute;ng t&ocirc;i. Nhưng những g&igrave; ch&uacute;ng t&ocirc;i cần giải quyết l&agrave; th&aacute;o những n&uacute;t thắt đang l&agrave;m chậm sự ph&aacute;t triển của ch&acirc;u &Acirc;u&quot;, Ursula von der Leyen n&oacute;i.</p>', '2022-02-16 07:38:18', 13),
(29, 'Thu giữ 3,6 tỷ USD Bitcoin bị đánh cắp', '<p>Bộ Tư ph&aacute;p Mỹ thu giữ hơn 94.000 Bitcoin từ vụ hack Bitfinex v&agrave; khẳng định tiền số kh&ocirc;ng phải nơi tr&uacute; ẩn an to&agrave;n cho tội phạm.</p>', 'bitcoin-5793-1641988619-6215-1644345953.jpg', '<p>Ng&agrave;y 8/2, Bộ Tư ph&aacute;p Mỹ c&ocirc;ng bố đ&atilde; bắt hai người với c&aacute;o buộc &acirc;m mưu rửa tiền v&agrave; thu to&agrave;n bộ số&nbsp;<a href=\"https://vnexpress.net/chu-de/bitcoin-3112\" rel=\"dofollow\">Bitcoin&nbsp;</a>c&ograve;n lại trước khi bị tẩu t&aacute;n. Cơ quan n&agrave;y kh&ocirc;ng tiết lộ họ đ&atilde; t&igrave;m ra số Bitcoin n&oacute;i tr&ecirc;n khi n&agrave;o, nhưng cho biết l&uacute;c đ&oacute; ch&uacute;ng c&oacute; gi&aacute; trị 3,6 tỷ USD. Hiện số coin n&agrave;y tương đương hơn 4,5 tỷ USD v&agrave; l&agrave; vụ tịch thu t&agrave;i ch&iacute;nh lớn nhất đến nay m&agrave; Bộ Tư ph&aacute;p Mỹ từng thực hiện. Hai người bị bắt l&agrave; Ilya Lichtenstein, 34 tuổi v&agrave; vợ Heather Morgan, 31 tuổi, sống tại New York.</p>\r\n\r\n<p>Theo t&agrave;i liệu của cơ quan điều tra, vụ tấn c&ocirc;ng xảy ra năm 2016 khiến 119.754 Bitcoin bị đ&aacute;nh cắp khỏi s&agrave;n Bitfinex. Hacker sau đ&oacute; thực hiện hơn 2.000 giao dịch tr&aacute;i ph&eacute;p, chuyển số Bitcoin tr&ecirc;n đến một v&iacute; kỹ thuật số được kiểm so&aacute;t bởi Lichtenstein. &quot;Trong 5 năm, khoảng 25.000 Bitcoin đ&atilde; được chuyển khỏi v&iacute; của Lichtenstein th&ocirc;ng qua một quy tr&igrave;nh rửa tiền phức tạp, kết th&uacute;c bằng việc gửi tiền v&agrave;o c&aacute;c t&agrave;i khoản do Lichtenstein v&agrave; Morgan kiểm so&aacute;t. Phần c&ograve;n lại gồm hơn 94.000 Bitcoin vẫn nằm trong v&iacute;&quot;, th&ocirc;ng b&aacute;o viết.</p>\r\n\r\n<p>Sau khi c&oacute; quyền kh&aacute;m x&eacute;t c&aacute;c t&agrave;i khoản trực tuyến của Lichtenstein, c&aacute;c đặc vụ t&igrave;m thấy tệp tin chứa kh&oacute;a b&iacute; mật để truy cập v&agrave;o v&iacute; n&oacute;i tr&ecirc;n, từ đ&oacute; thu hồi được số coin c&ograve;n lại.</p>\r\n\r\n<p>Kỹ thuật rửa tiền m&agrave; hai vợ chồng Lichtenstein sử dụng được Bộ Tư ph&aacute;p Mỹ đ&aacute;nh gi&aacute; l&agrave; tương đối tinh vi, c&oacute; kế hoạch b&agrave;i bản. Qu&aacute; tr&igrave;nh n&agrave;y gồm việc d&ugrave;ng danh t&iacute;nh giả để thiết lập c&aacute;c t&agrave;i khoản trực tuyến, sử dụng c&aacute;c chương tr&igrave;nh tự động để thực hiện h&agrave;ng loạt giao dịch trong thời gian ngắn, chuyển tiền ăn cắp v&agrave;o t&agrave;i khoản tr&ecirc;n c&aacute;c s&agrave;n tiền số v&agrave; thị trường chợ đen nhằm x&oacute;a lịch sử giao dịch cũng như dấu vết của d&ograve;ng tiền. Ngo&agrave;i ra, họ cũng chuyển Bitcoin sang một số dạng tiền ảo c&oacute; t&iacute;nh ẩn danh cao, đồng thời sử dụng c&aacute;c t&agrave;i khoản doanh nghiệp để hợp ph&aacute;p h&oacute;a c&aacute;c hoạt động tại ng&acirc;n h&agrave;ng.</p>\r\n\r\n<p>&quot;Tội phạm lu&ocirc;n để lại dấu vết v&agrave; FBI c&oacute; c&aacute;c c&ocirc;ng cụ theo d&otilde;i dấu vết kỹ thuật số, d&ugrave; ch&uacute;ng dẫn đến bất cứ nơi n&agrave;o&quot;, Ph&oacute; Gi&aacute;m đốc FBI Paul M. Abbate tuy&ecirc;n bố.</p>\r\n\r\n<p>Trợ l&yacute; Bộ trưởng Tư ph&aacute;p Mỹ Kenneth A. Polite cũng khẳng định kết quả n&agrave;y cho thấy cơ quan điều tra c&oacute; thể theo d&otilde;i tiền tr&ecirc;n&nbsp;<a href=\"https://vnexpress.net/chu-de/blockchain-3312\" rel=\"dofollow\">blockchain&nbsp;</a>v&agrave; khẳng định tiền điện tử sẽ kh&ocirc;ng phải l&agrave; nơi tr&uacute; ẩn an to&agrave;n cho tội phạm rửa tiền.</p>\r\n\r\n<p>Với t&iacute;nh chất ẩn danh, tiền điện tử được coi l&agrave; một trong những phương ph&aacute;p rửa tiền của tội phạm. Với những đồng như Bitcoin, c&aacute;c giao dịch đều được ghi lại tr&ecirc;n chuỗi khối v&agrave; bất cứ ai cũng c&oacute; thể theo d&otilde;i được c&aacute;c giao dịch n&agrave;y.</p>\r\n\r\n<p>Theo&nbsp;<em>CoinDesk</em>, h&ocirc;m 1/2, những người theo d&otilde;i địa chỉ v&iacute; li&ecirc;n quan đến vụ hack Bitfinex đ&atilde; thấy hơn 94,6 ngh&igrave;n Bitcoin được chuyển đi từ v&iacute; n&agrave;y. Nhiều khả năng đ&acirc;y cũng ch&iacute;nh l&agrave; l&uacute;c lượng tiền số tr&ecirc;n bị thu giữ. Lần gần nhất v&iacute; n&agrave;y hoạt động l&agrave; v&agrave;o th&aacute;ng 4/2021 khi số Bitcoin trị gi&aacute; khoảng 700 triệu USD được chuyển l&ecirc;n s&agrave;n CoinBase, một số kh&aacute;c được chuyển đến thị trường darknet như Hydra v&agrave; v&iacute; Wasabi để rửa tiền.</p>', '2022-02-16 07:41:26', 13);
INSERT INTO `news` (`id`, `title`, `content`, `img`, `para`, `create_at`, `user_id`) VALUES
(31, 'NFT hình thùng rác được mua giá 250.000', '<p>Một nghệ sĩ Mỹ đ&atilde; đổi đời sau khi lấy ảnh th&ugrave;ng r&aacute;c tr&ecirc;n mạng, chỉnh sửa hiệu ứng v&agrave; b&aacute;n dưới dạng NFT với gi&aacute; 250.000 USD.</p>', 'thung-rac-JPG-9706-1644387986.jpg', '<p>Họa sĩ c&oacute; biệt danh Robness tại Los Angeles, Mỹ, cho biết ảnh th&ugrave;ng r&aacute;c được anh tải tr&ecirc;n Internet, bổ sung c&aacute;c hiệu ứng thị gi&aacute;c, đặt t&ecirc;n 64 Gallon Toter v&agrave; rao b&aacute;n tr&ecirc;n nền tảng&nbsp;<a href=\"https://vnexpress.net/chu-de/nft-3313\" rel=\"dofollow\">NFT</a>&nbsp;SuperRare. T&aacute;c phẩm n&agrave;y từng được tải l&ecirc;n mạng v&agrave;i năm trước, nhưng bị x&oacute;a với l&yacute; do vi phạm bản quyền. &quot;T&ocirc;i tải l&ecirc;n nhưng n&oacute; bị x&oacute;a. Họ nghĩ t&ocirc;i vi phạm bản quyền khi lấy ảnh của Home Depot v&agrave; đe dọa &aacute;p dụng h&agrave;nh động ph&aacute;p l&yacute; với t&ocirc;i&quot;, họa sĩ n&agrave;y cho biết.</p>\r\n\r\n<p>Tuy nhi&ecirc;n, Robness bất ngờ khi thấy ảnh xuất hiện lại sau hai năm. SuperRare giải th&iacute;ch rằng cộng đồng ban đầu kh&ocirc;ng coi đ&oacute; l&agrave; t&aacute;c phẩm nghệ thuật, nhưng &quot;nhiều thứ đ&atilde; thay đổi&quot; v&agrave; quan điểm của họ cũng được điều chỉnh.</p>\r\n\r\n<p>NFT th&ugrave;ng r&aacute;c dần thu h&uacute;t sự ch&uacute; &yacute;, k&eacute;o theo sự ra đời của h&agrave;ng ngh&igrave;n phi&ecirc;n bản sao ch&eacute;p. Một nh&agrave; sưu tập đ&atilde; li&ecirc;n hệ ri&ecirc;ng với Robness để t&igrave;m hiểu về t&aacute;c phẩm gốc.</p>\r\n\r\n<p>&quot;Đ&oacute; l&agrave; một trong ba th&ugrave;ng r&aacute;c NFT tr&ecirc;n SupeRare v&agrave; t&ocirc;i đ&atilde; b&aacute;n cho nh&agrave; sưu tập n&agrave;y. Ch&uacute;ng t&ocirc;i n&oacute;i khoảng 30-45 ph&uacute;t về c&acirc;u chuyện h&agrave;i hước xoay quanh n&oacute;. &Ocirc;ng ấy cười suốt v&agrave; muốn sưu tập bức tranh, n&ecirc;n t&ocirc;i đ&atilde; ra gi&aacute;&quot;, Robness kể.</p>\r\n\r\n<p>Mức gi&aacute; 250.000 USD đ&atilde; thay đổi ho&agrave;n to&agrave;n cuộc sống của Robness. Anh từng phải ngủ trong &ocirc;t&ocirc; v&agrave; l&agrave;m đủ nghề đề kiếm sống từ năm 2014, nhưng c&aacute;c khoản thu từ NFT đ&atilde; gi&uacute;p bảo đảm cuộc sống ổn định cho họa sĩ n&agrave;y.</p>\r\n\r\n<p>Bức ảnh th&ugrave;ng r&aacute;c phản &aacute;nh thực tế của thị trường NFT hiện nay, khi nhiều t&aacute;c phẩm bị nghi ngờ về gi&aacute; trị nghệ thuật nhưng lại được b&aacute;n gi&aacute; h&agrave;ng trăm ngh&igrave;n, thậm ch&iacute; h&agrave;ng triệu USD.</p>\r\n\r\n<p>Chẳng hạn, một người Singapore thu về hơn 5,8 triệu USD khi b&aacute;n c&aacute;c bức ảnh của c&ocirc; tr&ecirc;n s&agrave;n OpenSea. Một sinh vi&ecirc;n ở Indonesia cũng trở th&agrave;nh&nbsp;<a href=\"https://vnexpress.net/bong-dung-noi-tieng-vi-ban-duoc-mot-trieu-usd-anh-selfie-4416381.html\" rel=\"dofollow\">hiện tượng tr&ecirc;n Internet</a>&nbsp;hồi th&aacute;ng 1, sau khi quyết định biến 933 ảnh selfie của m&igrave;nh th&agrave;nh NFT v&agrave; đưa l&ecirc;n s&agrave;n giao dịch..</p>', '2022-02-16 07:47:10', 13);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `notification`
--

CREATE TABLE `notification` (
  `id` int(11) NOT NULL,
  `content` text COLLATE utf8_unicode_ci NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `link` text COLLATE utf8_unicode_ci NOT NULL,
  `status` int(1) NOT NULL DEFAULT 0,
  `date` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `notification`
--

INSERT INTO `notification` (`id`, `content`, `user_id`, `link`, `status`, `date`) VALUES
(88, 'Nguyễn Thanh Tùng has comment on your post | [AV-Test] Kết...', 24, '9', 0, '2022-02-16 06:38:44'),
(89, 'Lê Văn Định has comment on your post | [AV-Test] Kết...', 24, '9', 0, '2022-02-16 06:41:58'),
(90, 'tigerbeer400 has comment on your post | [AV-Test] Kết...', 24, '9', 0, '2022-02-16 06:44:14'),
(91, 'GloryZVN has reply your comment on Trần Hữu Phúc\'s post', 18, '9', 1, '2022-02-16 06:46:37'),
(92, 'GloryZVN has comment on your post | phần mềm xe...', 20, '4', 0, '2022-02-16 06:49:15'),
(93, 'tigerbeer400 has reply your comment on Nguyễn Thanh Tùng\'s post', 26, '4', 0, '2022-02-16 06:49:57'),
(94, 'tigerbeer400 has comment on your post | phần mềm xe...', 20, '4', 0, '2022-02-16 06:50:16'),
(95, 'Đào Nhựt Nam has comment on your post | phần mềm xe...', 20, '4', 0, '2022-02-16 06:50:47'),
(96, 'Đào Nhựt Nam has comment on your post | [AV-Test] Kết...', 24, '9', 0, '2022-02-16 06:51:15'),
(97, 'Gia Cát Tường has comment on your post | phần mềm xe...', 20, '4', 0, '2022-02-16 06:53:12'),
(98, 'Khổng Minh has comment on your post | phần mềm xe...', 20, '4', 0, '2022-02-16 06:55:18'),
(99, 'Bao Chuẩn has comment on your post | Đánh giá Red...', 19, '1', 0, '2022-02-16 06:58:45'),
(100, 'Ngộ Không has comment on your post | Cần tìm ph...', 30, '11', 0, '2022-02-16 07:09:16'),
(101, 'Bát Giới has comment on your post | Cần tìm ph...', 30, '11', 0, '2022-02-16 07:11:31'),
(102, 'Lê Văn Định has comment on your post | HitmanPro v3.8....', 26, '12', 0, '2022-02-16 08:03:48'),
(103, 'Lê Văn Định has comment on your post | Malwarebytes An...', 19, '5', 0, '2022-02-16 08:04:39'),
(104, 'Gia Cát Tường has comment on your post | Thảo luận W...', 18, '13', 1, '2022-02-16 08:09:00'),
(105, 'Khổng Minh has reply your comment on Lê Văn Định\'s post', 21, '13', 0, '2022-02-16 08:09:59'),
(106, 'Khổng Minh has comment on your post | Zemana AntiMalw...', 21, '6', 0, '2022-02-16 08:11:13'),
(107, 'tigerbeer400 has comment on your post | Phần mềm an...', 22, '7', 0, '2022-02-16 08:16:38'),
(108, 'tigerbeer400 has comment on your post | Đánh giá Red...', 19, '1', 0, '2022-02-16 08:17:27'),
(109, 'tigerbeer400 has comment on your post | Mở hộp Appl...', 17, '2', 0, '2022-02-16 08:17:53'),
(110, 'Đậu Thị Thu Hằng has reply your comment on Lê Tường Vy\'s post', 25, '7', 0, '2022-02-16 08:18:45'),
(111, 'Đậu Thị Thu Hằng has comment on your post | Cần tìm ph..', 30, '11', 0, '2022-02-16 08:20:07'),
(112, 'Lê Văn Định has reply your comment on Lê Văn Định\'s post', 24, '3', 0, '2022-02-16 08:21:18'),
(113, 'Trần Văn Bo has comment on your post | ZoneAlarm Free ...', 23, '8', 0, '2022-02-17 10:10:02'),
(114, 'Trần Văn Bo has comment on your post | Hỏi về tín...', 25, '15', 0, '2022-02-17 10:13:24'),
(115, 'Trần Văn Bo has comment on your post | Thảo luận W...', 18, '13', 0, '2022-02-17 10:15:32'),
(116, 'Lê Tường Vy has comment on your post | Hỏi/ Thắc m...', 15, '16', 0, '2022-02-17 10:21:38'),
(117, 'Trần Hữu Phúc has comment on your post | Hỏi/ Thắc m...', 15, '16', 0, '2022-02-17 10:22:30'),
(118, 'Trần Hữu Phúc has comment on your post | Cài lại win...', 16, '14', 0, '2022-02-17 10:23:48'),
(119, 'GloryZVN has reply your comment on Bùi Lê Diễm My\'s post', 22, '16', 0, '2022-02-17 10:24:54'),
(120, 'Lý Quốc Hùng has comment on your post | Xin phần mề...', 19, '18', 0, '2022-02-18 03:42:09'),
(121, 'Lý Quốc Hùng has comment on your post | Poedit Pro v2.2...', 28, '17', 0, '2022-02-18 03:42:35'),
(122, 'Trần Văn Bo has comment on your post | Bảo vệ dữ...', 13, '19', 0, '2022-02-18 03:44:04'),
(123, 'Bát Giới has comment on your post | Hỏi về rout...', 16, '20', 0, '2022-02-18 03:47:31'),
(124, 'Trần Văn Bo has comment on your post | Internet Busine...', 31, '22', 0, '2022-02-18 03:50:12'),
(125, 'Nguyễn Thu Hằng has comment on your post | Hướng dẫn ...', 16, '23', 0, '2022-02-18 03:52:12'),
(126, 'Nguyễn Thu Hằng has comment on your post | Ứng dụng au...', 27, '28', 0, '2022-02-18 04:00:37'),
(127, 'Nguyễn Thu Hằng has comment on your post | Tổng hợp ke...', 15, '25', 0, '2022-02-18 04:03:36'),
(128, 'Lý Quốc Hùng has comment on your post | Lập danh sác...', 23, '31', 0, '2022-02-18 04:08:12'),
(129, 'Lý Quốc Hùng has comment on your post | Thay thế goog...', 26, '30', 0, '2022-02-18 04:08:25'),
(130, 'Lý Quốc Hùng has comment on your post | Phần mềm gh...', 14, '29', 0, '2022-02-18 04:08:56'),
(131, 'Lê Tường Vy has comment on your post | Ứng dụng au...', 27, '28', 0, '2022-02-18 04:09:34'),
(132, 'Lê Tường Vy has comment on your post | Thay thế goog...', 26, '30', 0, '2022-02-18 04:09:58'),
(133, 'Nguyễn Thu Hằng has comment on your post | ExpressVPN bị...', 21, '33', 0, '2022-02-18 04:13:07'),
(134, 'tigerbeer400 has comment on your post | Mình cần xin...', 14, '34', 0, '2022-02-18 04:14:50'),
(135, 'Lý Quốc Hùng has comment on your post | HP hotkey UWP S...', 16, '37', 0, '2022-02-18 04:16:19'),
(136, 'Bùi Lê Diễm My has comment on your post | HP hotkey UWP S...', 16, '37', 0, '2022-02-18 04:16:45'),
(137, 'Lê Văn Định has reply your comment on Trần Hữu Phúc\'s post', 20, '9', 0, '2022-02-18 04:21:52');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `personal_access_tokens`
--

CREATE TABLE `personal_access_tokens` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `tokenable_type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `tokenable_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(64) COLLATE utf8mb4_unicode_ci NOT NULL,
  `abilities` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `last_used_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `post`
--

CREATE TABLE `post` (
  `id` int(10) NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `Name` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `Content` varchar(5000) COLLATE utf8_unicode_ci NOT NULL,
  `Date` datetime NOT NULL,
  `topic_id` int(10) NOT NULL,
  `status` int(1) NOT NULL DEFAULT 0,
  `number_like` int(11) NOT NULL DEFAULT 0,
  `number_dislike` int(11) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `post`
--

INSERT INTO `post` (`id`, `user_id`, `Name`, `Content`, `Date`, `topic_id`, `status`, `number_like`, `number_dislike`) VALUES
(1, 19, 'Đánh giá Redmi Note 11 - AMOLED 90Hz', '<h3><strong>M&igrave;nh d&agrave;nh hơn tuần xử dụng sản phẩm mới nhất từ nh&agrave; Xiaomi v&agrave; đ&acirc;y l&agrave; những cảm nhận của m&igrave;nh về sản phẩm gi&aacute; rất thơm tho n&agrave;y:</strong></h3>\r\n\r\n<p>Về ngoại h&igrave;nh, m&aacute;y d&ugrave;ng vỏ nhựa n&ecirc;n trọng lượng tổng thể rất nhẹ, c&aacute;c g&oacute;c bo tr&ograve;n, cảm gi&aacute;c cầm m&aacute;y thoải m&aacute;i kh&ocirc;ng c&oacute; hiện tượng cấn đau tay, do trọng lượng nhẹ n&ecirc;n d&ugrave;ng m&aacute;y l&acirc;u vẫn kh&ocirc;ng m&otilde;i tay lắm. D&ugrave; vỏ nhựa nhưng m&aacute;y kh&ocirc;ng c&oacute; hiện tượng ọp ẹp rẻ tiền, lại kh&ocirc;ng b&aacute;m v&acirc;n tay v&agrave; kh&oacute; vỡ như chất liệu k&iacute;nh gi&uacute;p việc xử dụng m&aacute;y tự tin thoải m&aacute;i hơn - b&ugrave; lại kh&ocirc;ng c&oacute; được cảm gi&aacute;c cao cấp b&oacute;ng bẫy.<br />\r\n<br />\r\n<strong>Ưu điểm lớn nhất của m&aacute;y theo m&igrave;nh l&agrave; m&agrave;n h&igrave;nh: m&agrave;n h&igrave;nh 6.43&rdquo;, độ ph&acirc;n giải FHD+, c&ocirc;ng nghệ AMOLED tần số qu&eacute;t 90Hz.</strong><br />\r\n1 m&agrave;n h&igrave;nh vừa phải, kh&ocirc;ng qu&aacute; to hay qu&aacute; b&eacute;, độ ph&acirc;n giải chuẩn, tần số qu&eacute;t cao gi&uacute;p tr&atilde;i nghiệm người d&ugrave;ng tốt hơn hẳn v&agrave; c&ocirc;ng nghệ AMOLED r&otilde; r&agrave;ng ăn đứt LCD cổ điển. M&agrave;n h&igrave;nh c&oacute; chế độ lu&ocirc;n bật gi&uacute;p người d&ugrave;ng tha hồ b&agrave;y vẻ c&aacute; t&iacute;nh, c&oacute; thể xem giờ hay th&ocirc;ng b&aacute;o m&agrave; kh&ocirc;ng cần những thao t&aacute;c dư thừa như tr&ecirc;n LCD, độ s&aacute;ng v&agrave; tương phản tuyệt vời, khi xử dụng dưới trời nắng ch&oacute;i chan mới thấy r&otilde; đẳng cấp AMOLED. M&agrave;n h&igrave;nh n&agrave;y kết hợp c&ugrave;ng cặp loa k&eacute;p mang đến tr&atilde;i nghiệm phim - nhạc - giải tr&iacute; đ&atilde; hơn rất nhiều so với m&aacute;y chỉ c&oacute; m&agrave;n h&igrave;nh LCD v&agrave; loa chiếc.<br />\r\nH&igrave;nh ảnh hiển thị trong vắt, nịnh mắt, loa ngo&agrave;i to r&otilde; l&agrave;m m&igrave;nh ấn tượng, rất th&iacute;ch.<br />\r\nĐến năm 2019 th&igrave; những điện thoại tầm 10 triệu hơn vẫn chưa được Xiaomi trang bị m&agrave;n h&igrave;nh AMOLED, n&ecirc;n nay với 1 sản ph&acirc;m hơn 4 triệu m&agrave; đ&atilde; được trang bị m&agrave;n h&igrave;nh xịn x&ograve; c&ugrave;ng tầng số qu&eacute;t cao như vậy chắc chắn l&agrave; m&oacute;n hời cho người d&ugrave;ng.<br />\r\nTuy nhi&ecirc;n m&igrave;nh vẫn thấy điểm trừ đ&oacute; l&agrave; khi duyệt web, chữ sẽ bị nh&ograve;e mờ khi m&igrave;nh k&eacute;o l&ecirc;n xuống, chuyện n&agrave;y thực ra cũng kh&ocirc;ng ảnh hưởng g&igrave;.<br />\r\n<br />\r\n<strong>Ưu điểm thứ 2 l&agrave; PIN: dung lượng 5000mAh, sạc nhanh 33w.</strong><br />\r\nDung lượng 5000mAh thực ra cũng b&igrave;nh thường của nh&agrave; Mi nhiều năm rồi, những sản phẩm rẻ nhất trong d&ograve;ng Redmi Note cũng c&oacute; sạc nhanh từ rất l&acirc;u nhưng thường th&igrave; chỉ từ 18-22w th&ocirc;i, năm nay con rẻ nhất đ&atilde; l&ecirc;n 33w vậy chắc chắn 67w sẽ l&agrave; ti&ecirc;u chuẩn mới cho điện thoại Xiaomi trong năm 2022 n&agrave;y.<br />\r\n<br />\r\n<em>Hiện tại trong tầm gi&aacute; tr&ecirc;n mức cơ bản th&igrave; Redmi Note 11 l&agrave; 1 sản phẩm ấn tượng đ&aacute;ng mua, tỉ lệ trang bị hiệu năng - gi&aacute; th&agrave;nh vẫn chất lượng.<br />\r\nSản phẩm c&oacute; cấu h&igrave;nh đủ mạnh, m&agrave;n h&igrave;nh đẹp, camera tốt,</em></p>', '2022-02-16 05:47:53', 3, 1, 0, 0),
(2, 17, 'Mở hộp Apple M1 Pro / Max MacBook Pro 14 2021 mới trước ngày bán chính thức.', '<p>Vn-Z.vn Ng&agrave;y 23 th&aacute;ng 10 năm 2021, Apple đ&atilde; ra mắt MacBook Pro 14 inch v&agrave; 16 inch trang bị chip M1 Pro v&agrave; M1 Max v&agrave;o rạng s&aacute;ng ng&agrave;y 19/10 tại sự kiện họp b&aacute;o trực tuyến. MacBook Pro 14 inch v&agrave; 16 inch trang bị m&agrave;n h&igrave;nh Liquid Retina XDR mới, c&oacute; k&iacute;ch thước vật l&yacute; lớn hơn v&agrave; khung h&igrave;nh nhỏ hơn, đ&egrave;n LED mini độ tương phản cao v&agrave; tốc độ l&agrave;m mới ProMotion 120Hz.<br />\r\n<br />\r\nC&aacute;c mẫu MacBook Pro 2021 14 inch v&agrave; 16 inch mới sẽ ch&iacute;nh thức được ni&ecirc;m yết v&agrave;o ng&agrave;y 26 th&aacute;ng 10, nhưng những bức ảnh thực tế đầu ti&ecirc;n về những chiếc m&aacute;y t&iacute;nh x&aacute;ch tay n&agrave;y đ&atilde; bị r&ograve; rỉ tr&ecirc;n Internet.</p>\r\n\r\n<p>Theo MacRumors, t&agrave;i khoản YouTube Luke Miani đ&atilde; đăng những h&igrave;nh ảnh MacBook Pro 2021 14 inch v&agrave; MacBook Pro 13 inch thế hệ trước l&ecirc;n Twitter. H&igrave;nh ảnh thật ti&ecirc;t lộ MacBook Pro 2021 c&oacute; khe notch ở tr&ecirc;n c&ugrave;ng của m&agrave;n h&igrave;nh với thiết kế b&agrave;n ph&iacute;m m&agrave;u đen. Như Miani tiết lộ, những bức ảnh n&agrave;y cũng được một người d&ugrave;ng Reddit chia sẻ tr&ecirc;n trang con của MacBook Pro.</p>\r\n\r\n<p>Tr&ecirc;n mạng cũng c&oacute; h&igrave;nh ảnh Gi&aacute;m đốc điều h&agrave;nh Apple Tim Cook v&agrave; b&ecirc;n cạnh l&agrave; một chiếc MacBook Pro 2021 16 inch mới. H&igrave;nh n&agrave;y n&agrave;y để lộ khung m&aacute;y d&agrave;y hơn một ch&uacute;t.<br />\r\n<br />\r\nVn-Z team được biết , phi&ecirc;n bản Macbook Pro mới bản cao cấp nhất sẽ c&oacute; gi&aacute; tới 180 triệu VNĐ khi về tới Việt Nam.<br />\r\n&nbsp;</p>', '2022-02-16 05:54:20', 3, 1, 1, 0),
(3, 18, 'Cần phần mềm đuổi đuổi MP4 sang MXF', '<p>Ch&agrave;o mọi người, hiện tại m&igrave;nh đang cần chuyển file MP4 sang MXF nhưng chưa t&igrave;m được phần mềm ưng &yacute;, c&oacute; sử dụng một số c&ocirc;ng cụ chuyển online nhưng kh&ocirc;ng hiệu quả do dung lượng lớn. Ai c&oacute; phần mềm n&agrave;o tốt th&igrave; share m&igrave;nh , Thank you vina miu</p>', '2022-02-16 06:00:29', 2, 1, 0, 0),
(4, 20, 'phần mềm xem ảnh', '<p>C&oacute; phần mềm n&agrave;o xem ảnh m&agrave; thao t&aacute;o zoom v&agrave; xem dung chuột giống như phần mềm photo ko nhỉ<br />\r\nm&igrave;nh dow c&aacute;i iranview về m&agrave; zoom n&oacute; kỳ kỳ kh&oacute; d&ugrave;ng qu&aacute;</p>', '2022-02-16 06:04:33', 2, 1, 0, 0),
(5, 19, 'Malwarebytes Anti-Exploit Premium - Ứng dụng ngăn chặn virus tấn công cho máy vi tính của bạn', '<p><strong>Malwarebytes Anti-Exploit Premium</strong>&nbsp;&ndash; N&oacute; Chống khai Th&aacute;c Cao cấp &ndash; sẽ cung cấp thiết khai th&aacute;c bảo vệ với chủ c&ocirc;ng nghệ cho tr&igrave;nh v&agrave; c&aacute;c ứng dụng. N&oacute; chặn nguy hiểm khai th&aacute;c-dựa độc hại, v&agrave; ngăn chặn sự l&agrave;m hỏng n&oacute; c&oacute; thể l&agrave;m. Kh&ocirc;ng phải l&agrave; một tr&igrave;nh chống virus, nhưng tương th&iacute;ch với hầu hết chống virus, N&oacute; Chống khai Th&aacute;c l&agrave; một chuy&ecirc;n l&aacute; chắn thiết kế để bảo vệ em chống lại một trong những dạng nguy hiểm nhất của ẩn n&aacute;u. V&agrave; n&oacute; miễn ph&iacute;. N&oacute; Chống khai Th&aacute;c Cao cấp bảo vệ bạn từ zero ng&agrave;y khai th&aacute;c nhắm mục ti&ecirc;u duyệt v&agrave; lỗ hổng ứng dụng. N&oacute; thuộc quyền sở hữu c&ocirc;ng nghệ bảo vệ anh trong đ&oacute; giai đoạn quan trọng giữa c&aacute;c ph&aacute;t h&agrave;nh số mới khai th&aacute;c v&agrave; an ninh của m&igrave;nh v&aacute;. V&agrave;, kh&ocirc;ng giống như c&aacute;c sản phẩm chống virus, N&oacute; Chống khai Th&aacute;c Cao cấp chủ động ngăn chặn việc khai th&aacute;c từ c&agrave;i đặt trọng tải của n&oacute;. Trước khi n&oacute; c&oacute; thể l&agrave;m tổn thương.<br />\r\n<br />\r\nKh&ocirc;ng kh&aacute;c chống th&aacute;c c&ocirc;ng nghệ (bao gồm cả Microsoft N&acirc;ng cao Giảm nhẹ kinh Nghiệm c&ocirc;ng Cụ) cung cấp ba lớp bảo vệ. Những lớp c&ugrave;ng nhau l&agrave;m việc để ngăn chặn khai th&aacute;c ngay lập tức, trong cả hai trong giai đoạn đầu ti&ecirc;n của cuộc tấn c&ocirc;ng, ngăn chặn vỏ m&atilde; thực hiện, v&agrave;, trong giai đoạn thứ hai, nhớ gọi v&agrave; c&aacute;t trốn tho&aacute;t v&agrave; nhớ giảm nhẹ đi qua.<br />\r\n<br />\r\nN&oacute; Chống khai Th&aacute;c kh&ocirc;ng l&agrave;m chậm m&aacute;y t&iacute;nh của m&igrave;nh, v&igrave; c&ocirc;ng nghệ n&agrave;y kh&ocirc;ng sử dụng một chữ k&yacute; cơ sở dữ liệu giống như truyền thống an ninh đầu cuối, v&igrave; vậy n&oacute; kh&ocirc;ng y&ecirc;u cầu cập nhật thường xuy&ecirc;n. V&agrave; n&oacute; chỉ c&oacute; ba Aha tr&ecirc;n ổ đĩa cứng của m&igrave;nh &ndash; k&iacute;ch thước của một lớn ảnh độ ph&acirc;n giải cao.<br />\r\n<br />\r\nN&oacute; Chống khai Th&aacute;c Cao cấp hoạt động ở một mức độ kh&aacute;c nhau từ v&agrave; độc lập của chống độc hại, v&agrave; chương tr&igrave;nh chống virus, do đ&oacute; bạn c&oacute; thể c&agrave;i đặt n&oacute; m&agrave; kh&ocirc;ng cần lo lắng.</p>\r\n\r\n<p><br />\r\nTitle Release: Malwarebytes.Anti.Exploit.Premium.v.1.13.1.424 Beta<br />\r\nHome Page :&nbsp;<a href=\"https://vn-z.vn/redirect?to=aHR0cHM6Ly93d3cubWFsd2FyZWJ5dGVzLmNvbS8=\" rel=\"nofollow noopener\" target=\"_blank\">https://www.malwarebytes.com/</a><br />\r\nLicense: ShareWare<br />\r\nOS: Windows</p>', '2022-02-16 06:07:08', 3, 1, 0, 0),
(6, 21, 'Zemana AntiMalware Premium v3.1.395 Full - Loại bỏ Malware, bảo vệ máy tính', '<p><strong>Zemana AntiMalware Premium</strong>&nbsp;l&agrave; phần mềm qu&eacute;t phần mềm độc hại tr&ecirc;n m&aacute;y t&iacute;nh, gi&uacute;p loại bỏ ho&agrave;n to&agrave;n virus v&agrave; c&aacute;c vấn đề bảo mật hệ thống m&aacute;y t&iacute;nh. Zemana AntiMalware sẽ quyets to&agrave;n bộ hệ thống nhanh ch&oacute;ng rồi sau đ&oacute; n&oacute; sẽ t&igrave;m v&agrave; loại bỏ tất cả c&aacute;c mối đe dọa tiềm ẩn. AntiMalware được tối ưu h&oacute;a cao v&agrave; nhẹ với c&aacute;c định nghĩa virus được lưu trữ tr&ecirc;n đ&aacute;m m&acirc;y, kh&ocirc;ng l&agrave;m lộn xộn ổ đĩa của bạn.</p>\r\n\r\n<p>Zemana AntiMalware Premium kh&aacute;c với c&aacute;c phần mềm diệt virus kh&aacute;c l&agrave; n&oacute; kh&ocirc;ng lưu trữ định nghĩa virus tr&ecirc;n PC của bạn. Thay v&agrave;o đ&oacute; Zemana AntiMalware sẽ gửi dữ liệu tr&ecirc;n Scan Cloud để cho 10 c&ocirc;ng cụ chống vi-r&uacute;t kh&aacute;c nhau thực hiện kiểm tra. Sau đ&oacute; th&ocirc;ng tin sẽ gửi lại cho Zemana AntiMalware xử l&yacute; tr&ecirc;n m&aacute;y t&iacute;nh của bạn.<br />\r\n<br />\r\n<strong>C&aacute;c t&iacute;nh năng ch&iacute;nh của Zemana AntiMalware Premium</strong></p>\r\n\r\n<ul>\r\n	<li>Loại bỏ c&aacute;c ứng dụng kh&ocirc;ng mong muốn, c&aacute;c thanh c&ocirc;ng cụ g&acirc;y phiền nhiễu hoặc c&aacute;c tiện &iacute;ch bổ sung cho tr&igrave;nh duyệt.</li>\r\n	<li>T&igrave;m v&agrave; loại bỏ ngay cả c&aacute;c mối đe dọa ti&ecirc;n tiến được nh&uacute;ng s&acirc;u như rootkit v&agrave; bootkits.</li>\r\n	<li>Qu&eacute;t động cơ đa AV.</li>\r\n	<li>Qu&eacute;t h&agrave;ng ng&agrave;n tệp mỗi gi&acirc;y.</li>\r\n	<li>Tương th&iacute;ch với c&aacute;c giải ph&aacute;p chống vi-r&uacute;t kh&aacute;c.</li>\r\n	<li>C&aacute;c thuật to&aacute;n diệt virus n&acirc;ng cao.</li>\r\n	<li>Kh&ocirc;ng l&agrave;m chậm PC của bạn.</li>\r\n</ul>', '2022-02-16 06:10:33', 3, 1, 0, 0),
(7, 22, 'Phần mềm antivirus tốt cho máy Windows 8.1', '<p>M&igrave;nh c&oacute; đứa bạn đang d&ugrave;ng Windows 8.1 Pro with WMC, nhờ m&igrave;nh tư vấn sử dụng phần mềm diệt virus nhưng m&igrave;nh kh&ocirc;ng r&agrave;nh lắm n&ecirc;n nhờ c&aacute;c bạn am hiểu về mảng n&agrave;y đưa ra lời tư vấn gi&uacute;p m&igrave;nh nh&eacute;. Cấu h&igrave;nh m&aacute;y của đứa bạn m&igrave;nh như sau:<br />\r\n<br />\r\nCPU: 390M, 2.66 GHz<br />\r\nHDD: 320 GB<br />\r\nRAM: 4 GB, DDR3, 1333 MHz<br />\r\nM&agrave;n h&igrave;nh: 14&quot;, HD (1366 x 768)<br />\r\nCard m&agrave;n h&igrave;nh: Card t&iacute;ch hợp, Intel Graphics Media Accelerator HD Graphics<br />\r\n<br />\r\nCảm ơn c&aacute;c bạn nhiều nh&eacute;.</p>', '2022-02-16 06:13:47', 1, 1, 0, 0),
(8, 23, 'ZoneAlarm Free Firewall v.15.8.189.19019', '<p><strong>ZoneAlarm Free Firewall</strong>&nbsp;&ndash;cung cấp cho bạn một giải ph&aacute;p thay thế mạnh mẽ cho Tường lửa của Windows v&agrave; kh&ocirc;ng y&ecirc;u cầu gi&aacute;m s&aacute;t hoặc quản l&yacute; li&ecirc;n tục.<br />\r\n<br />\r\nMột t&iacute;nh năng th&uacute; vị được cung cấp trong ZoneAlarm Free Firewall l&agrave; chế độ Tự động học sẽ biết th&oacute;i quen của bạn v&agrave; sau đ&oacute; li&ecirc;n tục cung cấp cho bạn c&aacute;c mức bảo vệ th&iacute;ch hợp.<br />\r\n<br />\r\n<strong>Features</strong><br />\r\n&bull; Antivirus &amp; Anti-spyware Engine<br />\r\n&bull; Advanced Real-Time Antivirus<br />\r\n&bull; Enhanced Browser Protection<br />\r\n&bull; Identity Protection<br />\r\n&bull; Anti-Keylogging<br />\r\n&bull; Anti-Spam<br />\r\n&bull; Parental Controls<br />\r\n&bull; PC Tune-up<br />\r\n&bull; Find My Laptop<br />\r\n&bull; Threat Emulation<br />\r\n<br />\r\n<strong>What&rsquo;s New :</strong><br />\r\n<br />\r\n&nbsp;</p>\r\n\r\n<ul>\r\n	<li>\r\n	<h3>15.8.189.19019​</h3>\r\n\r\n	<ul>\r\n		<li>Resolves install/uninstall issues on Windows 11</li>\r\n	</ul>\r\n	</li>\r\n</ul>\r\n\r\n<p><br />\r\nTitle Release: ZoneAlarm.Free.Firewall.v.15.8.189.19019<br />\r\nDeveloper:&nbsp;<a href=\"https://vn-z.vn/redirect?to=aHR0cDovL2Fub255bXouY29tLz9odHRwczovL3d3dy56b25lYWxhcm0uY29t\" rel=\"nofollow noopener\" target=\"_blank\">Home Page</a><br />\r\nLicense: FreeWare<br />\r\nOS: Windows</p>', '2022-02-16 06:17:38', 3, 1, 1, 0),
(9, 24, '[AV-Test] Kết quả thử nghiệm Phần mềm diệt virus trên Windows 10', '<p><em>B&agrave;i viết kiểm thử phần mềm diệt virus dưới đ&acirc;y do AV-Test Institut thực hiện được đăng v&agrave;o 28/09/2020 bởi c&acirc;y b&uacute;t Frank Ziemann viết cho tờ PCwelt - Đức.<br />\r\nM&igrave;nh xin lược dịch lại:</em><br />\r\n<br />\r\n<br />\r\n<strong>AV-Test Institut đ&atilde; thử nghiệm 22 phần mềm diệt virus cho người d&ugrave;ng c&aacute; nh&acirc;n tr&ecirc;n Windows 10. T&aacute;m sản phẩm đạt đủ số điểm, kh&ocirc;ng sản phẩm n&agrave;o xảy ra lỗi.</strong><br />\r\n<br />\r\nAV-Test Institute đ&atilde; thử nghiệm 22 phần mềm diệt virus m&agrave; c&aacute;c nh&agrave; sản xuất của họ đ&atilde; đệ tr&igrave;nh l&ecirc;n. C&aacute;c b&agrave;i kiểm tra chi tiết diễn ra v&agrave;o th&aacute;ng 7 v&agrave; th&aacute;ng 8 tr&ecirc;n Windows 10 Pro (64 bit).<br />\r\n<br />\r\n<br />\r\n<strong>Kết luận: C&aacute;c phần mềm AV tốt nhất</strong><br />\r\n<br />\r\nTrong 22 sản phẩm dự thi, c&oacute; t&aacute;m &ldquo;th&iacute; sinh&rdquo; đạt tổng điểm l&agrave; 18 điểm:</p>\r\n\r\n<ul>\r\n	<li>AhnLab V3 Internet Security 9.0</li>\r\n	<li>Avira Antivirus Pro 15.0</li>\r\n	<li>F-Secure SAFE 17.8</li>\r\n	<li>G Data Internet Security 25,5</li>\r\n	<li>Kaspersky Internet Security 20.0</li>\r\n	<li>McAfee Total Security 23.0</li>\r\n	<li>Microsoft Windows Defender 4.18</li>\r\n	<li>NortonLifeLock Norton Security 22.20</li>\r\n</ul>\r\n\r\n<p><br />\r\n<strong>Phương ph&aacute;p kiểm tra</strong><br />\r\n__________________________________________________________________________________________<br />\r\nNhư thường lệ, c&aacute;c b&agrave;i kiểm tra được thực hiện ở ba hạng mục:</p>\r\n\r\n<ul>\r\n	<li>Bảo vệ (protection)</li>\r\n	<li>Tốc độ (speed)</li>\r\n	<li>Khả năng sử dụng (usability)</li>\r\n</ul>\r\n\r\n<p>C&aacute;c phần mềm bảo vệ phải ph&aacute;t hiện v&agrave; đẩy l&ugrave;i hơn 13.500 mối đe dọa từ phần mềm độc hại trong kh&ocirc;ng qu&aacute; 4 tuần. Ch&uacute;ng cũng phải đối mặt với 370 m&atilde; độc, c&ograve;n được gọi với c&aacute;i t&ecirc;n &ldquo;kiểm thử thực tế&rdquo; (M&atilde; độc Zero-day)<br />\r\n<br />\r\nTester sẽ kiểm tra thử với mức độ n&agrave;o th&igrave; c&aacute;c phần mềm diệt virus l&agrave;m chậm c&aacute;c t&aacute;c vụ phổ biến h&agrave;ng ng&agrave;y, chẳng hạn như: lướt web, tải về, sao ch&eacute;p file hoặc c&agrave;i đặt v&agrave; sử dụng phần mềm hợp ph&aacute;p.<br />\r\n<br />\r\nKết quả đ&aacute;nh gi&aacute; đến từ c&aacute;c cảnh b&aacute;o giả (false positives) xảy ra trong suốt tiến tr&igrave;nh. Phần mềm được kiểm tra với t&ugrave;y chỉnh mặc định v&agrave; tất cả t&ugrave;y chỉnh n&acirc;ng cao c&oacute; thể, bao gồm bảo vệ đ&aacute;m m&acirc;y (cloud function)<br />\r\n<br />\r\nMỗi hạng mục tối đa 6 điểm, tổng tối đa l&agrave; 18. Sản phẩm đạt tổng điểm từ 10 điểm trở l&ecirc;n v&agrave; mỗi loại đạt &iacute;t nhất 1 điểm sẽ nhận được giấy chứng nhận. Ngo&agrave;i ra, AV-Test trao tặng xếp hạng &ldquo;Sản phẩm h&agrave;ng đầu (Top Product)&rdquo; cho c&aacute;c giải ph&aacute;p đạt điểm cực kỳ tốt (extremely well) trong tất cả c&aacute;c ti&ecirc;u ch&iacute; kiểm tra, v&agrave; đạt được tổng số điểm từ 17,5 trở l&ecirc;n.</p>', '2022-02-16 06:20:34', 1, 1, 1, 0),
(10, 20, 'Bạn đã vượt qua phần mềm diệt virus chưa? Họ phát hiện ra rằng hơn 60% PC có phần mềm độc hại', '<p>Một b&aacute;o c&aacute;o từ Ch&iacute;nh phủ T&acirc;y Ban Nha chỉ ra rằng 59,8% người d&ugrave;ng Internet gặp phải sự cố bảo mật trong nửa cuối năm 2019.<br />\r\nĐ&agrave;i quan s&aacute;t quốc gia về Viễn th&ocirc;ng v&agrave; Hiệp hội Th&ocirc;ng tin (Ontsi) - phụ thuộc v&agrave;o Bộ Kinh tế v&agrave; Chuyển đổi Kỹ thuật số - khẳng định rằng 61,9% PC c&oacute; một số loại phần mềm độc hại. Một con số đ&aacute;ng b&aacute;o động nhưng c&oacute; phần y&ecirc;n t&acirc;m, c&oacute; t&iacute;nh đến mức giảm 5,2% so với s&aacute;u th&aacute;ng trước đ&oacute;<br />\r\nTh&ocirc;ng tin được đưa ra từ &#39;Nghi&ecirc;n cứu về an ninh mạng v&agrave; l&ograve;ng tin của c&ocirc;ng d&acirc;n v&agrave;o Internet&#39;, trong khoảng thời gian từ th&aacute;ng 7 đến th&aacute;ng 12 năm 2019 v&agrave; mục ti&ecirc;u của họ, họ giải th&iacute;ch, l&agrave; thực hiện ph&acirc;n t&iacute;ch t&igrave;nh trạng v&agrave; việc sử dụng Internet trong gia đ&igrave;nh Người T&acirc;y Ban Nha th&ocirc;ng qua c&aacute;c chỉ số bảo mật dựa tr&ecirc;n cảm nhận của người d&ugrave;ng về n&oacute;. Cũng như mức độ tin cậy của những điều n&agrave;y li&ecirc;n quan đến bảo mật v&agrave; sự ph&aacute;t triển của n&oacute;.<br />\r\nViệc thu thập dữ liệu được thực hiện theo hai c&aacute;ch: khảo s&aacute;t trực tuyến 3.738 hộ gia đ&igrave;nh v&agrave; ph&acirc;n t&iacute;ch trực tiếp c&aacute;c thiết bị, thu thập th&ocirc;ng tin từ hệ điều h&agrave;nh, trạng th&aacute;i cập nhật của hệ điều h&agrave;nh v&agrave; c&aacute;c c&ocirc;ng cụ bảo mật được c&agrave;i đặt nhờ phần mềm Pinkerton.<br />\r\n<br />\r\nTrong nửa cuối năm 2019, số lượng người d&ugrave;ng gặp sự cố bảo mật đ&atilde; giảm xuống, duy tr&igrave; xu hướng giảm. Tỷ lệ người d&ugrave;ng gặp phải một số sự cố bảo mật l&agrave; 59,8%.<br />\r\n<br />\r\nTr&ecirc;n thiết bị Android &ndash; điện thoại th&ocirc;ng minh v&agrave; m&aacute;y t&iacute;nh bảng&ndash;, tỷ lệ phần mềm độc hại được ph&aacute;t hiện tiếp tục giảm trong mỗi học kỳ: n&oacute; đ&atilde; giảm 12,7 điểm phần trăm so với c&ugrave;ng kỳ năm trước v&agrave; ở mức 10,2% trong số c&aacute;c thiết bị đầu cuối.<br />\r\n<br />\r\nĐại đa số người d&ugrave;ng &ndash;86,4% - tải xuống ứng dụng th&ocirc;ng qua c&aacute;c kho lưu trữ ch&iacute;nh thức, nơi x&aacute;c minh t&iacute;nh bảo mật của ch&uacute;ng, ủng hộ sự hiện diện thấp của phần mềm độc hại tr&ecirc;n thiết bị di động.<br />\r\n<br />\r\nC&aacute;c biện ph&aacute;p bảo mật phổ biến nhất tr&ecirc;n Internet<br />\r\n<br />\r\n66,9% người d&ugrave;ng PC được khảo s&aacute;t sử dụng chương tr&igrave;nh chống vi-r&uacute;t, những người thường cập nhật hệ điều h&agrave;nh giảm xuống 63,2% v&agrave; những người sử dụng tường lửa hoặc tường lửa vẫn ở mức 36,7%. Đ&acirc;y l&agrave; những biện ph&aacute;p bảo mật internet phổ biến nhất, kh&aacute;c rất nhiều so với những biện ph&aacute;p m&agrave; người d&ugrave;ng Android thực hiện:<br />\r\n<br />\r\nM&atilde; pin, h&igrave;nh mở kh&oacute;a hoặc hệ thống mở kh&oacute;a an to&agrave;n kh&aacute;c: 80,3%.<br />\r\nTự động chặn: 62,7%.<br />\r\nSao lưu: 61,2%</p>\r\n\r\n<p>Văn bản được dịch từ tiếng T&acirc;y Ban Nha sang tiếng Việt với Google Dịch<br />\r\nT&ocirc;i cảm thấy sự bất tiện của những từ bị dịch sai</p>', '2022-02-16 06:35:48', 1, 1, 0, 0),
(11, 30, 'Cần tìm phương tiện đi thỉnh kinh', '<p>Đường thỉnh kinh còn r&acirc;́t xa nhưng b&acirc;̀n tăng đã h&ecirc;́t sức n&ecirc;n c&acirc;̀n tìm m&ocirc;̣t con xe giúp quá trình đi thỉnh kinh d&ecirc;̃ dàng hơn, xin ý ki&ecirc;́n ạ.</p>', '2022-02-16 07:06:24', 2, 1, 0, 0),
(12, 26, 'HitmanPro v3.8.23 Build 318 (x86/x64) Full - Giải pháp chống phần mềm độc hại, mã độc', '<p><strong>HitmanPro</strong>&nbsp;l&agrave; một ứng dụng gọn nhẹ c&oacute; thể gi&aacute;m s&aacute;t hoạt động tr&igrave;nh duyệt của bạn v&agrave; ph&aacute;t hiện c&aacute;c mối đe dọa tiềm ẩn c&oacute; thể bao gồm bảo mật hệ thống. C&ocirc;ng cụ HitmanPro n&agrave;y được x&acirc;y dựng đặc biệt để th&ecirc;m một lớp bảo mật bổ sung cho hệ thống của bạn, để bảo vệ bạn bất cứ khi n&agrave;o bạn mua sắm tr&ecirc;n&nbsp;<strong>Internet</strong>&nbsp;hoặc thực hiện c&aacute;c hoạt động ng&acirc;n h&agrave;ng trực tuyến. N&oacute; cung cấp bảo vệ m&aacute;y t&iacute;nh theo thời gian thực chống lại việc khai th&aacute;c phần mềm, tải xuống theo ổ đĩa, phần mềm m&atilde; h&oacute;a, gian lận trực tuyến v&agrave; trộm danh t&iacute;nh.</p>\r\n\r\n<p><strong><strong>Giao diện trực quan v&agrave; qu&eacute;t phần mềm độc hại</strong></strong><br />\r\n<br />\r\nC&ocirc;ng cụ n&agrave;y mang đến một giao diện hấp dẫn v&agrave; r&otilde; r&agrave;ng, đồng thời cung cấp khả năng qu&eacute;t phần mềm độc hại ngay sau khi c&agrave;i đặt, để c&oacute; được đ&aacute;nh gi&aacute; bảo mật cho m&aacute;y t&iacute;nh của bạn.<br />\r\n<br />\r\n<strong>Duyệt web an to&agrave;n v&agrave; khai th&aacute;c giảm thiểu</strong><br />\r\n<br />\r\nKhi n&oacute;i đến duyệt web an to&agrave;n,&nbsp;<strong>HitmanPro.Alert</strong>&nbsp;bảo vệ c&aacute;c hoạt động của bạn xung quanh ng&acirc;n h&agrave;ng trực tuyến, mua sắm hoặc thư tr&ecirc;n web. N&oacute; cung cấp hỗ trợ cho nhiều tr&igrave;nh duyệt, chẳng hạn như Internet Explorer, Chrome, Firefox, Opera, Maxthon,&nbsp;<strong>Comodo Dragon,</strong>&nbsp;Pale Moon, G&oacute;i Tr&igrave;nh duyệt Tor,&nbsp;<strong>Tr&igrave;nh duyệt Avant</strong>, Tr&igrave;nh duyệt Spark, SRWare Iron v&agrave; Tr&igrave;nh duyệt Yandex.<br />\r\n<br />\r\nT&iacute;nh năng d&agrave;nh ri&ecirc;ng để khai th&aacute;c giảm thiểu ngăn chặn một số ứng dụng của b&ecirc;n thứ ba từ c&aacute;c cuộc tấn c&ocirc;ng dễ bị tổn thương hiện tại v&agrave; tương lai, như Java, VLC Media Player, Windows Media Player, Windows Media Center, Wordpad v&agrave; Adobe Flash Player. Hiện đang chạy c&aacute;c quy tr&igrave;nh kh&ocirc;ng được hỗ trợ bởi HitmanPro.Alert được hiển thị trong một bảng điều khiển kh&aacute;c, v&igrave; vậy bạn &iacute;t nhất c&oacute; thể nhận thức được rủi ro.<br />\r\n<br />\r\n<strong>Chủng ngừa, CryptoGuard v&agrave; tr&igrave;nh th&ocirc;ng b&aacute;o webcam</strong><br />\r\n<br />\r\nỨng dụng phần mềm thể thao bổ sung c&aacute;c c&ocirc;ng cụ để giảm nguy cơ nhiễm phần mềm độc hại. V&iacute; dụ: n&oacute; c&oacute; thể ngăn chặn phần mềm độc hại nhận biết sandbox bằng c&aacute;ch l&agrave;m cho m&aacute;y t&iacute;nh tr&ocirc;ng giống như một nh&agrave; nghi&ecirc;n cứu vi-r&uacute;t, chặn phần mềm m&atilde; h&oacute;a (như CryptoLocker) bằng c&aacute;ch giữ an to&agrave;n cho tệp cục bộ v&agrave; chia sẻ hoặc cảnh b&aacute;o bạn khi webcam của bạn được bật &acirc;m thầm theo d&otilde;i bạn.<br />\r\n<br />\r\n<strong>M&atilde; h&oacute;a tổ hợp ph&iacute;m, bảo vệ qu&aacute; tr&igrave;nh, lockdown mạng v&agrave; USB chặn</strong><br />\r\n<br />\r\nHơn nữa, chương tr&igrave;nh c&oacute; thể m&atilde; h&oacute;a tất cả c&aacute;c tổ hợp ph&iacute;m để ngăn chặn keylogger từ cướp mật khẩu của bạn, tin nhắn v&agrave; c&aacute;c th&ocirc;ng tin nhạy cảm kh&aacute;c, ngăn chặn phần mềm độc hại l&acirc;y nhiễm cho thực thi ch&iacute;nh của một qu&aacute; tr&igrave;nh đ&aacute;ng tin cậy (v&iacute; dụ như chống virus ), dừng lưu lượng truy cập backdoor bằng c&aacute;ch kh&oacute;a mạng v&agrave; chặn c&aacute;c thiết bị USB độc hại g&acirc;y ra l&agrave;m b&agrave;n ph&iacute;m.</p>', '2022-02-16 08:02:33', 3, 1, 1, 0),
(13, 18, 'Thảo luận Windows 11', '<p>Ng&agrave;y 24/6 (US) Microsoft đ&atilde; ch&iacute;nh thức giới thiệu về Windows 11, c&aacute;c y&ecirc;u cầu phần cứng, ch&iacute;nh s&aacute;ch n&acirc;ng cấp v&agrave; lộ tr&igrave;nh Ph&aacute;t h&agrave;nh.</p>\r\n\r\n<p>Theo đ&oacute;:<br />\r\nC&aacute;c bản dựng Windows 11 Insider Preview được ph&aacute;t h&agrave;nh l&ecirc;n K&ecirc;nh Beta ngay sau Hội nghị giới thiệu 24/6.<br />\r\nPhi&ecirc;n bản ch&iacute;nh thức&nbsp;<strong>Windows 11 October 2021 Release</strong>&nbsp;-OSBuild 22000.194 được ph&aacute;t h&agrave;nh v&agrave;o October 05, 2021.</p>\r\n\r\n<p>Topic mở ra để c&ugrave;ng nhau Thảo luận c&aacute;c vấn đề về C&agrave;i đặt, c&aacute;c Th&ocirc;ng tin Update, trải nghiệm t&iacute;nh năng mới, chia sẻ c&aacute;c Thủ thuật, fix lỗi, tối ưu....v&agrave; c&aacute;c vấn đề c&oacute; li&ecirc;n quan đến Windows 11.<br />\r\nXin mời c&aacute;c B&aacute;c, c&aacute;c Bạn am hiểu c&ugrave;ng tham gia chia sẻ th&ecirc;m th&ocirc;ng tin.<br />\r\nViệc đăng tin, viết b&agrave;i Thực hiện theo&nbsp;<a href=\"https://vn-z.vn/threads/quy-dinh-ve-bai-viet-trong-dien-dan.2138/\">Nội qui Diễn đ&agrave;n</a>&nbsp;v&agrave;&nbsp;<a href=\"https://vn-z.vn/threads/noi-quy-chung-box-he-dieu-hanh-windows.11584/\">Nội quy Box Hệ điều h&agrave;nh</a>.<br />\r\n<br />\r\nThanks!</p>\r\n\r\n<p>&nbsp;</p>', '2022-02-16 08:07:15', 1, 1, 1, 0),
(14, 16, 'Cài lại win bị mất hết dữ liệu', '<p>Em mới reset window 10 lại nhưng nó lạ lắm!, toàn b&ocirc;̣ dữ li&ecirc;̣u cũ của em m&acirc;́t sạch, có ai bi&ecirc;́t cách kh&ocirc;i phục lại kh&ocirc;ng ạ, giúp em với</p>', '2022-02-16 08:51:30', 2, 1, 0, 0),
(15, 25, 'Hỏi về tính năng mã hóa dữ liệu Bitlocker trên Win 11', '<p>Em ch&agrave;o c&aacute;c b&aacute;c.<br />\r\n<br />\r\nC&aacute;c b&aacute;c n&agrave;o hiểu về bảo mật dữ liệu cho em hỏi t&iacute;nh năng Bitlocker tr&ecirc;n Win 11 c&oacute; gi&uacute;p bảo mật dữ liệu tr&aacute;nh bị đ&aacute;nh cắp kh&ocirc;ng ạ? V&iacute; dụ như lưu token hay v&iacute; tiền điện tử tr&ecirc;n m&aacute;y sau đ&oacute; bật t&iacute;nh năng Bitlocker th&igrave; c&oacute; gi&uacute;p n&acirc;ng cao t&iacute;nh năng bảo vệ dữ liệu ko ạ?<br />\r\n<br />\r\nEm xin cảm ơn.</p>', '2022-02-17 10:12:03', 2, 1, 0, 0),
(16, 15, 'Hỏi/ Thắc mắc Thảo luận về phần mềm khôi phục dữ liệu đã bị mất?', '<p>Chào anh chị<br />\r\nEm th&acirc;́y tr&ecirc;n mạng có nhi&ecirc;̀u ph&acirc;̀n m&ecirc;̀m kh&ocirc;i phục dữ li&ecirc;̣u đã bị xóa hay format. Anh chị th&acirc;́y ph&acirc;̀n m&ecirc;̀m nào dùng nhanh, t&ocirc;́t, mạnh mẽ nh&acirc;́t, kh&ocirc;i phục các file theo folder, các file sau khi kh&ocirc;i phục kh&ocirc;ng bị l&ocirc;̃i ạ.</p>', '2022-02-17 10:20:36', 1, 1, 1, 0),
(17, 28, 'Poedit Pro v2.2 Build 5561 Full - Trình biên dịch Plugin, theme WordPress mạnh mẽ', '<p><strong>Poedit Pro</strong>&nbsp;cung cấp dịch giả v&agrave; c&aacute;c nh&agrave; ph&aacute;t triển với một tr&igrave;nh soạn thảo mạnh mẽ v&agrave; trực quan cho gettext. N&oacute; gi&uacute;p tiết kiệm thời gian cho c&aacute;c nhiệm vụ dịch thuật với giao diện nhẹ v&agrave; dễ sử dụng cũng như c&aacute;c t&iacute;nh năng th&ocirc;ng minh như dịch trước v&agrave; dịch m&aacute;y.</p>\r\n\r\n<p><strong>Poedit Pro</strong>&nbsp;gi&uacute;p chuyển đổi ng&ocirc;n ngữ gốc lưu trữ tr&ecirc;n c&aacute;c tập tin *.po th&agrave;nh c&aacute;c tập tin *.mo chứa ng&ocirc;n ngữ được dịch. C&aacute;c tập tin *.po được tạo v&agrave; cập nhập c&aacute;c từ kh&oacute;a ng&ocirc;n ngữ nhờ sử dụng gettext &ndash; hệ thống thường được sử dụng để viết c&aacute;c chương tr&igrave;nh đa ng&ocirc;n ngữ.<br />\r\n<br />\r\n<strong>Những t&iacute;nh năng nổi bật của Poedit Pro</strong></p>\r\n\r\n<ul>\r\n	<li>Dịch chuỗi theo chuỗi hoặc tiết kiệm nhiều thời gian hơn bằng c&aacute;ch dịch trước to&agrave;n bộ tệp c&ugrave;ng một l&uacute;c</li>\r\n	<li>Dịch c&aacute;c theme v&agrave; plugin WordPress nhanh ch&oacute;ng</li>\r\n	<li>Tự động kiểm tra c&uacute; ph&aacute;p (thiếu hoặc biến nhập sai, v.v &hellip;)</li>\r\n	<li>Xem thống k&ecirc; chi tiết về bản dịch của bạn</li>\r\n	<li>Kiểm tra lỗi ch&iacute;nh tả (GTK+ 2.x)</li>\r\n	<li>Hỗ trợ l&agrave;m việc nhiều ng&ocirc;n ngữ lập tr&igrave;nh bậc cao như PHP, C#, Java&hellip;</li>\r\n	<li>Hỗ trợ comment cho mỗi từ kh&oacute;a ng&ocirc;n ngữ</li>\r\n	<li>T&igrave;m kiếm nhanh ch&oacute;ng c&aacute;c từ kh&oacute;a ng&ocirc;n ngữ</li>\r\n	<li>Hỗ trợ bộ m&atilde; UTF-8</li>\r\n	<li>Hỗ trợ chuyển đổi giữa c&aacute;c định dạng kết th&uacute;c d&ograve;ng</li>\r\n	<li>Dịch tự động c&aacute;c từ kh&oacute;a ng&ocirc;n ngữ th&ocirc;ng dụng/ thường xuy&ecirc;n sử dụng</li>\r\n	<li>C&oacute; thể qu&eacute;t m&atilde; nguồn v&agrave; cập nhật th&ecirc;m c&aacute;c từ kh&oacute;a ng&ocirc;n ngữ mới cho chuỗi dịch</li>\r\n	<li>Hỗ trợ Unicode tr&ecirc;n mọi phi&ecirc;n bản Windows XP/7/8/10</li>\r\n	<li>Tự động cập nhật headers của c&aacute;c tập tin ng&ocirc;n ngữ gốc</li>\r\n	<li>Những từ kh&oacute;a ng&ocirc;n ngữ chưa được dịch sẽ được đẩy l&ecirc;n tr&ecirc;n đầu, c&aacute;c từ kh&oacute;a đ&atilde; ho&agrave;n th&agrave;nh được đưa xuống dưới</li>\r\n</ul>', '2022-02-18 03:40:12', 3, 1, 0, 0),
(18, 19, 'Xin phần mềm microsoft access trên macbook để học', '<p>M&igrave;nh thấy office d&agrave;nh cho macbook kh&ocirc;ng c&oacute; access.bạn n&agrave;o c&oacute; cho m&igrave;nh xin với.cảm ơn c&aacute;c bạn nhiều.</p>', '2022-02-18 03:41:12', 2, 1, 0, 0),
(19, 13, 'Bảo vệ dữ liệu trên laptop khi đi sửa hoặc mất máy?', '<p>Hi mọi người,<br />\r\n<br />\r\nHiện tại m&igrave;nh đang lưu dữ liệu tr&ecirc;n m&aacute;y t&iacute;nh qua Google Drive, file lưu tại ổ C laptop. Tuy nhi&ecirc;n mới đ&acirc;y m&aacute;y m&igrave;nh bị hư, th&aacute;o ổ cứng ra cắm v&ocirc; m&aacute;y kh&aacute;c th&igrave; vẫn v&ocirc; được dữ liệu b&igrave;nh thường, kh&ocirc;ng v&ocirc; được google online nhưng file lưu sẵn tr&ecirc;n m&aacute;y n&ecirc;n xem được hết.<br />\r\nM&igrave;nh kh&ocirc;ng c&oacute; t&agrave;i liệu ri&ecirc;ng tư g&igrave; nhưng chủ yếu l&agrave; số liệu của C&ocirc;ng ty kh&aacute; bảo mật. N&ecirc;n lo ngại trường hợp lỡ mất m&aacute;y t&iacute;nh hoặc hư m&aacute;y th&igrave; kh&ocirc;ng bảo vệ được.<br />\r\nM&igrave;nh c&oacute; t&iacute;nh phương &aacute;n lưu dữ liệu l&ecirc;n thẻ nhớ cắm th&ecirc;m v&agrave;o khe thẻ nhớ của m&aacute;y. Lỡ c&oacute; bị hư th&igrave; th&aacute;o ra. Tuy nhi&ecirc;n c&oacute; vẻ như kiểu n&agrave;y th&igrave; trường hợp bị mất m&aacute;y c&agrave;ng dễ mất dữ liệu nữa.<br />\r\n<br />\r\nXin hỏi mọi người c&oacute; giải ph&aacute;p n&agrave;o để bảo vệ dữ liệu tr&ecirc;n laptop khi đi sửa m&aacute;y hoặc khi mất m&aacute;y với nh&eacute;.</p>', '2022-02-18 03:43:25', 1, 1, 0, 0),
(20, 16, 'Hỏi về router.', '<p>Ch&agrave;o c&aacute;c bạn.<br />\r\nH&ocirc;m nay m&igrave;nh d&ugrave;ng tool nessus th&igrave; n&oacute; bảo một số lỗi của router iGate GW400.<br />\r\n1. Unencrypted Telnet Server<br />\r\n--&gt; Disable the Telnet service and use SSH instead.<br />\r\n2. Multiple Vendor DNS Response Flooding Denial Of Service<br />\r\n--&gt; Contact the vendor for an appropriate upgrade.<br />\r\n3. DNS Server Cache Snooping Remote Information Disclosure<br />\r\n--&gt; Contact the vendor of the DNS software for a fix.<br />\r\nMấy lỗi n&agrave;y nặng như thế n&agrave;o vậy c&aacute;c bạn?<br />\r\nBạn n&agrave;o biết c&aacute;ch fix lỗi hok vậy?<br />\r\nCảm ơn c&aacute;c bạn.<br />\r\nM&igrave;nh ko biết đặt n&oacute; ở đ&acirc;u.<br />\r\nNếu ko đ&uacute;ng chỗ nhờ mod di chuyển đ&uacute;ng chỗ gi&uacute;p m&igrave;nh nha.<br />\r\nCảm ơn c&aacute;c bạn.</p>', '2022-02-18 03:44:44', 2, 1, 1, 0),
(21, 31, 'Giúp tìm phần mền chuyển đổi file ảnh JPG sang Bin với', '<p>M&igrave;nh cần chuyển đổi một số ảnh sang file .bin m&agrave; kh&ocirc;ng biết c&oacute; phần mền n&agrave;o kh&ocirc;ng. Nếu c&oacute; xin gi&uacute;p cho<br />\r\nTr&ecirc;n mạng chỉ c&oacute; phần chuyển từ file .bin sang jpg th&ocirc;i.</p>', '2022-02-18 03:46:18', 2, 1, 0, 0),
(22, 31, 'Internet Business Promoter 12.2.1 Full - Công cụ SEO hàng đầu!', '<p><strong>Một giải ph&aacute;p x&uacute;c tiến trang web ho&agrave;n chỉnh với c&aacute;c c&ocirc;ng cụ tiếp thị chuy&ecirc;n nghiệp gi&uacute;p bạn c&oacute; được thứ hạng cao tr&ecirc;n Google, Yahoo, Bing v&agrave; c&ocirc;ng cụ t&igrave;m kiếm kh&aacute;c</strong><br />\r\n<br />\r\nInternet Business Promoter l&agrave; một giải ph&aacute;p phần mềm to&agrave;n diện v&agrave; đơn giản cung cấp cho bạn một phương tiện cũng đơn giản của việc th&uacute;c đẩy trang web của bạn một c&aacute;ch trực quan .<br />\r\n<br />\r\nIBP l&agrave; một phần mềm SEO cung cấp mọi thứ bạn cần để th&uacute;c đẩy th&agrave;nh c&ocirc;ng trang web của bạn . N&oacute; l&agrave; một bộ với c&aacute;c c&ocirc;ng cụ quảng b&aacute; đ&atilde; được chứng m&igrave;nh , gi&uacute;p trang web chuy&ecirc;n nghiệp với tất cả c&aacute;c kh&iacute;a cạnh của trang web để x&uacute;c tiến v&agrave; tối ưu h&oacute;a c&ocirc;ng cụ t&igrave;m kiếm . IBP l&agrave; một c&ocirc;ng cụ phần mềm để tối ưu h&oacute;a c&ocirc;ng cụ t&igrave;m kiếm mạnh mẽ gi&uacute;p bạn c&oacute; được thứ hạng cao tr&ecirc;n c&ocirc;ng cụ t&igrave;m kiếm. N&oacute; c&oacute; một tỷ lệ th&agrave;nh c&ocirc;ng hơn 98% v&agrave; ch&uacute;ng t&ocirc;i sẽ ho&agrave;n trả lại tiền nếu bạn thuộc những người kh&ocirc;ng c&oacute; được thứ hạng cao với IBP .<br />\r\n<br />\r\nVới sự trợ gi&uacute;p của Internet Business Promoter bạn c&oacute; khả năng dễ d&agrave;ng tối ưu h&oacute;a trang web của bạn v&agrave; c&aacute;c li&ecirc;n kết v&agrave; nhận được trang web của bạn được liệt k&ecirc; tr&ecirc;n tất cả c&aacute;c c&ocirc;ng cụ t&igrave;m kiếm quan trọng như Google, Yahoo hay Bing v&agrave; c&aacute;c trang web truyền th&ocirc;ng x&atilde; hội như Twitter hay Facebook .<br />\r\n<br />\r\n<strong>L&agrave;m thế n&agrave;o để hoạt động cụ thể?<br />\r\n<br />\r\n1. Bạn chọn từ kho&aacute; v&agrave; động xơ t&igrave;m kiếm</strong><br />\r\n<br />\r\nIBP gi&uacute;p bạn với m&agrave; từ kh&oacute;a bạn muốn c&oacute; được thứ hạng cao v&agrave; bạn chọn c&ocirc;ng cụ t&igrave;m kiếm m&agrave; bạn muốn được liệt k&ecirc; . V&iacute; dụ, điều n&agrave;y c&oacute; thể l&agrave; Google, Yahoo, Bing , c&aacute;c biến thể của địa phương v&agrave; nhiều c&ocirc;ng cụ t&igrave;m kiếm kh&aacute;c .<br />\r\n<br />\r\n<strong>2 . IBP ph&acirc;n t&iacute;ch trang web của bạn</strong><br />\r\n<br />\r\nTop 10 Optimizer của IBP sau đ&oacute; sẽ ph&acirc;n t&iacute;ch tất cả c&aacute;c yếu tố xếp hạng li&ecirc;n quan tr&ecirc;n trang web v&agrave; c&aacute;c li&ecirc;n kết đến trang web của bạn v&agrave; t&iacute;nh to&aacute;n một số điểm xếp hạng dựa tr&ecirc;n th&ocirc;ng tin đ&oacute;. Cao hơn số điểm xếp hạng , nhiều khả năng trang web của bạn sẽ được liệt k&ecirc; tr&ecirc;n trang kết quả đầu ti&ecirc;n của Google.<br />\r\n<br />\r\n<strong>3 . IBP cho bạn biết cụ thể những g&igrave; bạn phải thay đổi</strong><br />\r\n<br />\r\nNếu trang web của bạn kh&ocirc;ng c&oacute; một điểm số 100% , IBP sẽ cho bạn biết bằng tiếng Anh ch&iacute;nh x&aacute;c những g&igrave; bạn phải l&agrave;m để cải thiện trang web v&agrave; c&aacute;c li&ecirc;n kết đến trang web của bạn . Những lời khuy&ecirc;n sẽ được thiết kế cho trang web của bạn , c&aacute;c c&ocirc;ng cụ t&igrave;m kiếm v&agrave; lựa chọn từ kh&oacute;a . IBP sẽ cho bạn biết cụ thể những g&igrave; bạn phải thay đổi v&agrave; l&agrave;m thế n&agrave;o bạn c&oacute; để thay đổi n&oacute; .<br />\r\n<br />\r\n<strong>4 . Bạn thực hiện c&aacute;c thay đổi tr&ecirc;n trang web của bạn</strong><br />\r\n<br />\r\nTrong bước cuối c&ugrave;ng , bạn thay đổi trang web của bạn theo những lời đề nghị của Top 10 Optimizer cho đến khi kh&ocirc;ng c&oacute; đề nghị th&ecirc;m.<br />\r\n&nbsp;</p>', '2022-02-18 03:49:37', 3, 1, 1, 0),
(23, 16, 'Hướng dẫn cách lấy bản quyền số Win IOT LTSC, LTSC 2019 Vĩnh Viễn - 100% thành công', '<p>Search tr&ecirc;n forum cũng như tr&ecirc;n google kh&ocirc;ng c&oacute; tp hay forum n&agrave;o hướng dẫn về việc lấy bản quyền số LTSC, IOT LTSC. Nhiều bạn gặp kh&oacute; khăn khi active bản win n&agrave;y, nay xin hướng dẫn ace c&aacute;ch lấy bản quyền số của win gi&uacute;p ace c&oacute; th&ecirc;m nhiều sự lựa chọn hơn khi c&agrave;i mới cũng như update.<br />\r\n<br />\r\nC&aacute;ch n&agrave;y c&oacute; thể &aacute;p dụng với c&aacute;c bản win kh&aacute;c nữa miễn l&agrave; update theo đ&uacute;ng bản n&acirc;ng cấp của n&oacute;. M&igrave;nh &aacute;p dụng n&oacute; từ trước giờ đều được.<br />\r\n<br />\r\n<br />\r\nC&agrave;i bản quyền số bản IoT đơn giản. C&aacute;c b trước ti&ecirc;n c&agrave;i bản win LTSB 2016 v&agrave;o m&aacute;y sau đ&oacute; active bản quyền kỹ thuật số (<a href=\"https://vn-z.vn/redirect?to=aHR0cHM6Ly9kcml2ZS5nb29nbGUuY29tL2ZpbGUvZC8xbW95Qkk1dWN0SFBzdVp2SElrdm5sTFpqLWl1azFpa2cvdmlldw==\" rel=\"nofollow noopener\" target=\"_blank\"><strong>d&ugrave;ng script n&agrave;y để active</strong></a>) trước giờ chỉ d&ugrave;ng mỗi script n&agrave;y n&ecirc;n c&aacute;c b hỏi c&aacute;i kh&aacute;c th&igrave; chịu k d&ugrave;ng qua n&ecirc;n k biết. Sau đ&oacute; update win, (nhớ l&agrave; update từ bản c&agrave;i đặt IOT LTSC c&oacute; k&egrave;m link tải b&ecirc;n dưới) up l&ecirc;n xong m&aacute;y sẽ c&oacute; bản quyền kỹ thuật số của bản IoT LTSC n&agrave;y lu&ocirc;n.<br />\r\n<br />\r\nTừ b&acirc;y giờ c&aacute;c b c&oacute; thể c&agrave;i lại mới từ bản c&agrave;i IoT LTSC sẽ tự active bản quyền số.<br />\r\n<br />\r\n<strong>Lưu &yacute;: bắt buộc phải c&agrave;i bản LTSB rồi active bản quyền số trước sau đ&oacute; mới UPDATE (Update chứ kh&ocirc;ng phải c&agrave;i đặt mới) từ file c&agrave;i đặt ISO - Win IoT LTSC khi update xong v&agrave;o win l&uacute;c n&agrave;y l&agrave; bản IOT LTSC c&oacute; lu&ocirc;n bản quyền số, sau n&agrave;y c&agrave;i lại m&aacute;y c&oacute; kết nối mạng win tự active bản quyền số lu&ocirc;n hoặc active bằng key b&ecirc;n dưới khi c&agrave;i c&aacute;c bản win kh&aacute;c chỉ cần active bằng key n&agrave;y sẽ c&oacute; bản quyền số IOT LTSC:</strong><br />\r\n&nbsp;</p>\r\n\r\n<p><strong>43TBQ-NH92J-XKTM7-KT3KK-P39PB</strong>​</p>\r\n\r\n<p><br />\r\n<strong>Mẹo với những ai đ&atilde; tạo file GHOST của bản win IOT LTSC từ trước, hoặc bản win n&agrave;o kh&aacute;c c&oacute; c&agrave;i nhiều phần mềm v&agrave; k muốn c&agrave;i lại win từ đầu h&atilde;y l&agrave;m theo c&aacute;ch sau (hoặc tạo file GHOST cho bản win c&aacute;c b đang sử dụng hiện tại .......... lưu lại để khỏi mất thời gian c&agrave;i lại từ đầu). C&agrave;i bản LTSB active bản quyền kỹ thuật số d&ugrave;ng script trong topic n&agrave;y rồi update win từ bản c&agrave;i đặt ISO - IOT LTSC để c&oacute; được bản quyền số IOT LTSC. Xong rồi GHOST lại bản win c&aacute;c b đ&atilde; lưu trước đ&oacute;, active bằng key tr&ecirc;n l&agrave; c&oacute; bản quyền số lu&ocirc;n của bản IOT LTSC 2019 m&agrave; k phải c&agrave;i lại soft từ đầu.<br />\r\n<br />\r\nM&igrave;nh khuy&ecirc;n c&aacute;c b n&ecirc;n c&agrave;i bản mới sạch ho&agrave;n to&agrave;n với bộ c&agrave;i đặt gốc v&agrave; soft cần thiết sau đ&oacute; tạo bản Ghost l&agrave; c&oacute; thể d&ugrave;ng Vĩnh viễn lu&ocirc;n.</strong><br />\r\n<br />\r\nC&aacute;c bản win kh&aacute;c cũng c&oacute; thể l&agrave;m tương tự như bản win tr&ecirc;n miễn l&agrave; up đ&uacute;ng bản n&acirc;ng cấp sau đ&oacute; v&agrave; win cũng tự acti bản quyền kỹ thuật số. C&aacute;i n&agrave;y m l&agrave;m rất nhiều m&aacute;y rồi n&ecirc;n ace y&ecirc;n t&acirc;m l&agrave; th&agrave;nh c&ocirc;ng 100%.<br />\r\n&nbsp;</p>', '2022-02-18 03:51:15', 1, 1, 1, 0),
(24, 15, 'Tech VPN Pro / Protect Privacy v.3.2.8', '<p>Đ&acirc;y l&agrave; M&aacute;y chủ VPN nhanh nhất c&oacute; trả ph&iacute; VIP, Kết nối Vpn an to&agrave;n, Bảo vệ quyền ri&ecirc;ng tư v&agrave; VPN đ&aacute;ng tin cậy tr&ecirc;n thế giới n&agrave;y</p>\r\n\r\n<p>Tech VPN Protection:<br />\r\n<br />\r\n* Cloud protection<br />\r\n* Web Protection<br />\r\n* Malware protection<br />\r\n* Protection Near by hackers<br />\r\n* Bypass Govt. Censorship<br />\r\n* Bypass wi-fi firewall<br />\r\n* Fake your locations<br />\r\n* Encrypt data using VPN<br />\r\n* Protect Privacy<br />\r\n* Hides and change IP address<br />\r\n* Keeping you safe online<br />\r\n* Unlimited VPN client<br />\r\n* More Stable VPN<br />\r\n* Protect All Your Devices<br />\r\n* Fast Access in 2020</p>', '2022-02-18 03:55:48', 3, 1, 0, 0),
(25, 15, 'Tổng hợp key Windows và Office', '<p><strong>Nội quy của topic:</strong></p>\r\n\r\n<ul>\r\n	<li>Th&agrave;nh vi&ecirc;n phải tự chịu tr&aacute;ch nhiệm về bản quyền chia sẻ.</li>\r\n	<li>Nếu Key c&oacute; ng&agrave;y th&aacute;ng v&agrave; năm th&igrave; ghi v&agrave;o sau Key để c&aacute;c th&agrave;nh vi&ecirc;n biết Key của ng&agrave;y n&agrave;o v&agrave; Key c&oacute; mới hay kh&ocirc;ng? V&iacute; dụ:&nbsp;<strong>Key</strong>&nbsp;<strong>Windows Server 2019 RTM ServerStandard Retail,&nbsp;Ng&agrave;y: 10/06/2021.</strong></li>\r\n	<li>Phải kiểm tra key tại thời điểm post, kh&ocirc;ng post lại key m&agrave; member kh&aacute;c đ&atilde; đăng trước đ&oacute; (bao gồm nguồn từ ch&iacute;nh topic share key v&agrave; từ topic kh&aacute;c). Nếu muốn post lại key th&igrave; dẫn link đến post chứa key v&agrave; kh&ocirc;ng để thẻ ẩn khi link đến post chứa key.</li>\r\n	<li>Sau khi chia sẻ key một thời gian nếu c&oacute; th&agrave;nh vi&ecirc;n b&aacute;o key block th&igrave; n&ecirc;n check in lại, nếu thấy key block th&igrave; sửa comment key đ&atilde; bị block để c&aacute;c th&agrave;nh vi&ecirc;n tiện theo d&otilde;i.</li>\r\n	<li>C&aacute;c post chia sẻ key phải đặt trong thẻ ẩn trong đ&oacute; t&ecirc;n keys ở ngo&agrave;i thẻ ẩn.Nếu chia sẻ dạng h&igrave;nh ảnh phải k&egrave;m theo 5 k&iacute; tự đầu hoặc 5 k&iacute; tự cuối của keys để tr&aacute;nh post tr&ugrave;ng lặp.</li>\r\n	<li>C&aacute;c keys chia sẻ c&ugrave;ng loại windows hay Office c&ugrave;ng 1 thời điểm phải ở chung 1 post, nghi&ecirc;m cấm post ở dạng c&acirc;u view.</li>\r\n	<li>Th&agrave;nh vi&ecirc;n c&oacute; key ri&ecirc;ng chưa chia sẻ tr&ecirc;n topic n&agrave;y nhưng kh&ocirc;ng muốn chia sẻ c&ocirc;ng khai th&igrave; c&oacute; thể chia sẻ ẩn danh với th&agrave;nh vi&ecirc;n cần key hoặc hướng dẫn sang topic k&iacute;ch hoạt.</li>\r\n	<li>Nội dung Key trong thẻ ẩn đ&atilde; share l&agrave; phải full key, kh&ocirc;ng được share v&agrave;i k&yacute; tự để c&acirc;u view.</li>\r\n	<li>C&aacute;c th&agrave;nh vi&ecirc;n muốn cảm ơn th&igrave; nhấn like thay cho việc trả lời: &quot;cảm ơn, thanks, tku..&quot; để c&oacute; phản hồi t&iacute;ch cực.</li>\r\n	<li>Topic kh&ocirc;ng&nbsp;<a href=\"https://vn-z.vn/threads/nhan-ho-tro-get-cid-kich-hoat-cac-loai-windows-7-10-va-office-2010-2019-365-qua-teamviewer.21727/\"><strong>hỗ trợ Get CID, hỗ trợ k&iacute;ch hoạt qua Teamviewer</strong></a><strong>.</strong>&nbsp;Do đ&oacute; c&aacute;c member kh&ocirc;ng tự k&iacute;ch hoạt được th&igrave; sẽ đăng b&agrave;i sang c&aacute;c&nbsp;<a href=\"https://vn-z.vn/forums/kich-hoat-windows-office-mien-phi.64/\">topic hỗ trợ k&iacute;ch hoạt</a>&nbsp;hoặc cần hỏi th&igrave; sang topic&nbsp;<a href=\"https://vn-z.vn/threads/cac-van-de-chung-cua-windows-va-kich-hoat-windows-office.13309/\"><strong>C&aacute;c vấn đề chung của Windows v&agrave; K&iacute;ch hoạt Windows/Office</strong></a>. C&aacute;c comment kh&ocirc;ng li&ecirc;n quan đến topic sẽ bị x&oacute;a m&agrave; kh&ocirc;ng cần th&ocirc;ng b&aacute;o.</li>\r\n	<li>T&igrave;m kiếm key trong topic trước khi comment xin key.</li>\r\n	<li>Nội dung xin key phải được ghi r&otilde; r&agrave;ng, dễ đọc (viết c&oacute; dấu nếu ng&ocirc;n ngữ tiếng việt). Key phi&ecirc;n bản loại n&agrave;o (2010, 2013, Reatail hay Mak). V&iacute; dụ: Key Office Office 2013_ProPlusMSDNR_Retail.</li>\r\n	<li>Trả lời văn minh, lịch sự.</li>\r\n	<li>Th&agrave;nh vi&ecirc;n c&oacute; đủ năng lực, nguồn key v&agrave; online thường xuy&ecirc;n để gi&uacute;p đỡ c&aacute;c th&agrave;nh vi&ecirc;n kh&aacute;c xin key th&igrave; đăng k&yacute; với Mod để được mở topic ri&ecirc;ng.</li>\r\n</ul>', '2022-02-18 03:56:31', 1, 1, 0, 1),
(26, 24, 'Chặn các chức năng của máy net?', '<p>Mọi người cho e hỏi l&agrave; c&aacute;c qu&aacute;n net họ sử dụng c&aacute;i g&igrave; để chặn m&igrave;nh truy cập v&agrave;o task manager, control panel,...vậy ạ<br />\r\nV&agrave; l&agrave;m thế n&agrave;o để chặn đc như họ</p>', '2022-02-18 03:57:13', 2, 1, 1, 0),
(27, 16, 'Nên chọn phần mềm chụp ảnh màn hình rõ nét và phóng to ko bị mờ ảnh.', '<p>Em ch&agrave;o mọi người, tr&ecirc;n google c&oacute; nhiều pm chụp ảnh m&agrave;n h&igrave;nh qu&aacute;, e ph&acirc;n v&acirc;n ko biết chọn pm n&agrave;o để chụp ảnh m&agrave;n h&igrave;nh r&otilde; n&eacute;t ạ, c&oacute; c&aacute;ch n&agrave;o chụp ảnh m&agrave;n h&igrave;nh ra ảnh chất lượng cao được ko ạ Hiện m&agrave;n h&igrave;nh m&aacute;y e đang d&ugrave;ng c&oacute; độ ph&acirc;n giải l&agrave; 1366x768 Em xin cảm ơn mọi người.</p>', '2022-02-18 03:59:19', 2, 1, 2, 0),
(28, 27, 'Ứng dụng auto click có hotkey chạy từng bước một.', '<p>Cho m&igrave;nh hỏi c&oacute; soft auto click n&agrave;o m&agrave; sau khi thiết lập tất cả c&aacute;c bước th&igrave; c&oacute; g&aacute;n hotkey để chỉ chạy từng bước một kh&ocirc;ng?<br />\r\nVd: bấm F4 1 lần sẽ chạy bước 1, F4 lần nữa sẽ bước 2, F4 lần tiếp sẽ bước 3,...<br />\r\nM&igrave;nh xin c&aacute;m ơn.</p>', '2022-02-18 04:00:14', 2, 1, 1, 0),
(29, 14, 'Phần mềm ghi hình cuộc họp zoom?', '<p>Em ch&agrave;o c&aacute;c b&aacute;c.<br />\r\n<br />\r\nEm hiện tại tham dự nhiều cuộc họp qua zoom với tư c&aacute;ch th&agrave;nh vi&ecirc;n v&agrave; em muốn ghi lại nội dung cuộc họp (video + audio) m&agrave; kh&ocirc;ng phải xin ph&eacute;p host. C&aacute;c b&aacute;c biết phần mềm n&agrave;o d&ugrave;ng đơn giản tư vấn gi&uacute;p em ạ.<br />\r\n<br />\r\nEm xin cảm ơn c&aacute;c b&aacute;c.</p>', '2022-02-18 04:03:08', 1, 1, 1, 0),
(30, 26, 'Thay thế google photo', '<p>Google photo bị t&iacute;nh dung lượng rồi giờ d&ugrave;ng ứng dụng n&agrave;o thay thế google photo dc nhỉ<br />\r\nHi&ecirc;n tại m&igrave;nh mới thử c&aacute;i yandex disk cũng thấy kha kh&aacute; ưng m&agrave; ko biết c&ograve;n thằng n&agrave;o free nữa kh&ocirc;ng nhỉ?</p>', '2022-02-18 04:04:51', 1, 1, 1, 0),
(31, 23, 'Lập danh sách, tên các thứ có trong 1 thư mục với 1 lệnh bat', '<p>Ng&agrave;y xa xưa , xưa ơi l&agrave; xưa ở tr&ecirc;n rum vnz n&agrave;y cũng c&oacute; 1 topic n&oacute;i về c&aacute;i n&agrave;y , topic đ&oacute; b&agrave;n t&aacute;n thảo luận rất l&agrave; nhiều post .<br />\r\nNhưng ng&agrave;y h&ocirc;m qua lục t&igrave;m ho&agrave;i ko thấy n&oacute; ở phương trời n&agrave;o do vậy n&ecirc;n ng&agrave;y h&ocirc;m nay t&ocirc;i l&agrave;m lại c&aacute;i b&agrave;i n&agrave;y lấy c&aacute;i file của 1 bạn khi xưa nay chia sẻ lại .<br />\r\nN&oacute;i theo từ hoa mỹ 1 ch&uacute;t l&agrave; mượn hoa để để d&acirc;ng phật , dưới l&agrave; c&aacute;i ảnh minh họa<br />\r\n&nbsp;</p>', '2022-02-18 04:06:37', 1, 1, 0, 0),
(32, 22, 'Hỏi/ Thắc mắc Đọc thẻ nhớ exfat', '<p>M&igrave;nh c&oacute; thẻ nhớ camera định dạng exfat đưa v&ocirc; win đọc kh&ocirc;ng được. D&ugrave;ng phần mềm partition chỉ phục hồi file video trong đ&oacute; dưới dạng swf. File n&agrave;y kh&ocirc;ng biết phần mềm n&agrave;o mở được. Cho m&igrave;nh hỏi c&aacute;ch n&agrave;o để ch&eacute;p file video trong thẻ đ&oacute; hoặc đọc được file swf đ&oacute; (file n&agrave;y kh&ocirc;ng phải flash nh&eacute;)</p>', '2022-02-18 04:11:40', 2, 1, 0, 0),
(33, 21, 'ExpressVPN bị \"Account suspended\", không cho nhập key khác', '<p>Hi mọi người,<br />\r\nEm nhập thử key trial 30 ng&agrave;y được share tr&ecirc;n diễn đ&agrave;n, th&igrave; nhập ph&aacute;t bị lock lu&ocirc;n như n&agrave;y. Em để đến h&ocirc;m nay l&agrave; ng&agrave;y thứ 3 m&agrave; vẫn thế.<br />\r\nVậy cho em hỏi:<br />\r\n- Nếu bị lock như n&agrave;y v&agrave; kh&ocirc;ng thể nhập key kh&aacute;c th&igrave; xử l&yacute; thế n&agrave;o? C&oacute; phải xo&aacute; đi c&agrave;i lại kh&ocirc;ng, hay edit regedit l&agrave; được?<br />\r\n- Một số lần em nhập thử key th&igrave; n&oacute; b&aacute;o hết hạn, hoặc qu&aacute; lượt active. Chứ nhập bị lock thế n&agrave;y th&igrave; v&igrave; sao?</p>', '2022-02-18 04:12:12', 2, 1, 0, 0),
(34, 14, 'Mình cần xin phần mềm dịch webgame?', '<p>Xin ch&agrave;o mọi người!<br />\r\nM&igrave;nh muốn t&igrave;m một phần mềm c&oacute; khả năng dịch được webgame v&iacute; dụ như Thần Kh&uacute;c, v&igrave; m&igrave;nh đang chơi webgame n&oacute; to&agrave;n tiếng Trung giản thể, m&igrave;nh nh&igrave;n chẳng hiểu g&igrave;, nếu ai biết phần mềm n&agrave;o c&oacute; thể l&agrave;m việc n&agrave;y hoặc tương tự xin cho m&igrave;nh biết th&ocirc;ng tin, mong nhận được sự trợ gi&uacute;p của mọi người xin ch&acirc;n th&agrave;nh cảm ơn.</p>', '2022-02-18 04:12:43', 2, 1, 2, 0),
(35, 29, 'Laptop lỗi bluetooth', '<p>Em mới ghost lại con laptop win10 pro 64b th&igrave; ko hiểu l&yacute; do g&igrave; bị lỗi ko c&oacute; bluetooth.<br />\r\nB&aacute;c cao nh&acirc;n n&agrave;o gi&uacute;p em fix lỗi n&agrave;y với.<br />\r\n&nbsp;</p>', '2022-02-18 04:14:06', 2, 1, 0, 0);
INSERT INTO `post` (`id`, `user_id`, `Name`, `Content`, `Date`, `topic_id`, `status`, `number_like`, `number_dislike`) VALUES
(36, 25, 'Hỏi không cài được Kaspersky/ Office trên máy ảo Windows Sandbox', '<p>Hi mọi người, m&igrave;nh muốn thử c&agrave;i 1 số soft tr&ecirc;n m&aacute;y ảo windows sandbox trước khi c&agrave;i ở m&aacute;y ch&iacute;nh.<br />\r\nC&oacute; c&aacute;i th&igrave; chạy ngon như Dropbox, nhưng Office v&agrave; Kaspersky th&igrave; m&igrave;nh c&agrave;i to&agrave;n b&aacute;o lỗi. Bộ nhớ trống ở m&aacute;y ảo l&agrave; 37GB, ram 4gb.<br />\r\nM&aacute;y ch&iacute;nh d&ugrave;ng win10pro 64.<br />\r\nẢnh dưới l&agrave; lỗi khi c&agrave;i kaspersky<br />\r\nCho m&igrave;nh hỏi fix như thế n&agrave;o? Hype V th&igrave; hơi kh&oacute; d&ugrave;ng với m&igrave;nh. C&aacute;m ơn.</p>', '2022-02-18 04:14:40', 2, 1, 1, 0),
(37, 16, 'HP hotkey UWP Service là gì? Nó chạy ngốn CPU RAM của em quá?', '<p>Hi c&aacute;c b&aacute;c.<br />\r\nEm mới c&agrave;i lại windows được 1 tuần.<br />\r\nMấy ng&agrave;y ko sao, h&ocirc;m nay mở m&aacute;y l&ecirc;n th&igrave; tầm 3-5 ph&uacute;t c&aacute;i app khỉ n&agrave;y n&oacute; chạy full như ảnh, xong rồi tự hết nhưng l&agrave;m edge đơ, phải end task mới d&ugrave;ng lại edge được.&nbsp;<br />\r\nCho em hỏi c&aacute;i HP n&agrave;y l&agrave; g&igrave; vậy?<br />\r\n&nbsp;</p>', '2022-02-18 04:15:55', 2, 1, 2, 0),
(38, 13, 'a', '<p>a</p>', '2022-02-18 06:41:12', 1, 1, 0, 0),
(39, 30, 'b', '<p>b</p>', '2022-02-18 06:41:44', 1, 0, 0, 0);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `post_user`
--

CREATE TABLE `post_user` (
  `post_id` int(10) NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `checklike` int(1) NOT NULL DEFAULT 0,
  `checkdislike` int(1) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `post_user`
--

INSERT INTO `post_user` (`post_id`, `user_id`, `checklike`, `checkdislike`) VALUES
(2, 27, 1, 0),
(13, 27, 1, 0),
(12, 27, 1, 0),
(8, 27, 1, 0),
(16, 22, 1, 0),
(20, 31, 1, 0),
(22, 16, 1, 0),
(23, 14, 1, 0),
(26, 16, 1, 0),
(27, 27, 1, 0),
(25, 14, 0, 1),
(27, 26, 1, 0),
(30, 13, 1, 0),
(29, 13, 1, 0),
(28, 22, 1, 0),
(34, 25, 1, 0),
(36, 16, 1, 0),
(37, 13, 1, 0),
(37, 15, 1, 0),
(9, 18, 1, 0),
(34, 18, 1, 0);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `role`
--

CREATE TABLE `role` (
  `id` int(10) NOT NULL,
  `RoleName` varchar(55) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `role`
--

INSERT INTO `role` (`id`, `RoleName`) VALUES
(1, 'User'),
(2, 'UserPrimary'),
(3, 'Admin'),
(4, 'SuperAdmin');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `sessions`
--

CREATE TABLE `sessions` (
  `id` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` bigint(20) UNSIGNED DEFAULT NULL,
  `ip_address` varchar(45) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `user_agent` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `payload` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `last_activity` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `sessions`
--

INSERT INTO `sessions` (`id`, `user_id`, `ip_address`, `user_agent`, `payload`, `last_activity`) VALUES
('dm7NhMLLq2LwnNpVozoNjzgxojsJf6dN6vcqfd9w', 8, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/96.0.4664.120 Safari/537.36', 'YTo1OntzOjY6Il90b2tlbiI7czo0MDoiNFk4Y25TVHVlWHdmZWFwbkYyUWJHM2o1TDVSZlpxWmphdGZSQWRycyI7czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MzU6Imh0dHA6Ly9sb2NhbGhvc3Q6ODAwMC9uZXdzZGV0YWlsLzEzIjt9czo1MDoibG9naW5fd2ViXzU5YmEzNmFkZGMyYjJmOTQwMTU4MGYwMTRjN2Y1OGVhNGUzMDk4OWQiO2k6ODtzOjE3OiJwYXNzd29yZF9oYXNoX3dlYiI7czo2MDoiJDJ5JDEwJDlRdno2SnJhWDBtOVN1TXhUSkluZy43bHFLS0hOcElVVDVNNGFTOVRnY09RM2VYWGJHTlBPIjt9', 1642402134);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `subcomment`
--

CREATE TABLE `subcomment` (
  `id` int(10) NOT NULL,
  `comment_id` int(10) NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `Date` datetime NOT NULL,
  `Content` text COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `subcomment`
--

INSERT INTO `subcomment` (`id`, `comment_id`, `user_id`, `Date`, `Content`) VALUES
(1, 3, 26, '2022-02-16 06:46:37', 'Tui thì lại thấy Malwarebytes không bằng Eset, Eset nó vẫn ổn đinh hơn Malwarebytes.'),
(2, 5, 25, '2022-02-16 06:49:57', 'picasa của gg bỏ rồi mà bạn\ncái gg photo bgio chính là picasa ngày xưa mà'),
(3, 16, 27, '2022-02-16 08:09:59', 'có gì khác so với win10 bác?'),
(4, 19, 19, '2022-02-16 08:18:45', 'Đồ dô duyên!'),
(5, 1, 18, '2022-02-16 08:21:18', 'Thanks Bác!'),
(6, 3, 18, '2022-02-16 08:22:28', 'Tại máy bạn cùi quá đó!'),
(7, 26, 26, '2022-02-17 10:24:54', 'Phần mềm này có khoi phục các file theo nguyên folder cũ ko bạn nhỉ'),
(8, 26, 22, '2022-02-17 10:26:11', 'Có bạn. File setup của nó lớn hơn các phần mềm khác và theo mình nhận xét nó cũng tốt nhất.'),
(9, 2, 18, '2022-02-18 04:21:50', 'xàm');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `topic`
--

CREATE TABLE `topic` (
  `id` int(10) NOT NULL,
  `Name` varchar(100) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `topic`
--

INSERT INTO `topic` (`id`, `Name`) VALUES
(1, 'Thảo luận'),
(2, 'Hỏi thắc mắc'),
(3, 'Chia sẻ');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `two_factor_secret` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `two_factor_recovery_codes` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `role_id` int(10) DEFAULT 1,
  `sex` varchar(10) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `phone` int(20) DEFAULT NULL,
  `country` varchar(30) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `birthday` date DEFAULT NULL,
  `avatar` text COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'logo.png'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `email_verified_at`, `password`, `two_factor_secret`, `two_factor_recovery_codes`, `remember_token`, `created_at`, `updated_at`, `role_id`, `sex`, `phone`, `country`, `birthday`, `avatar`) VALUES
(13, 'Lý Quốc Hùng', 'quochung@gmail.com', NULL, '$2y$10$/5fXjKj1EL9L0Eza8jI7NuWc7bA5Yn4HxVMcP7KkhbfGM9wRHILP.', NULL, NULL, NULL, NULL, NULL, 4, 'Nam', 933819642, 'VietNam', '2001-10-15', 'facebook-600 (1).png'),
(14, 'Nguyễn Thu Hằng', 'thuhang@gmail.com', NULL, '$2y$10$KGOA4qMpZwvjfhkihqQ.V.WLdsmg2D9Hyvxh4yKw9BlCNZLu7PyhS', NULL, NULL, 'Eczd3v90IiTn8Z9nLdSvpoDFkR9437vyxvWR2wSLJ9Zy2rAdcWgOIN2rFYIw', NULL, NULL, 4, NULL, NULL, NULL, NULL, 'logo.png'),
(15, 'Bùi Lê Diễm My', 'diemmy@gmail.com', NULL, '$2y$10$jY.T.w8r2mhzjmI76jkfB.G6k9/GtIjXBVqFTFmsTm4aMVYTyzITG', NULL, NULL, NULL, NULL, NULL, 4, NULL, NULL, NULL, NULL, 'BaoCong.jpg'),
(16, 'Trần Văn Bo', 'botran@gmail.com', NULL, '$2y$10$XSWAwTy5G8Pu7IYv.3bBXOc/S8mjGM5KiTqHCSBYTgWcoNwmbgity', NULL, NULL, NULL, NULL, NULL, 4, 'Nam', 336697454, 'VietNam', '2001-01-06', 'avatars-000208613553-qe3647-t240x240.jpg'),
(17, 'Lâm Gia Bảo', 'giabao@gmail.com', NULL, '$2y$10$OLRgfnDR8BpUDs9LSwACYO/rhUhNGKTCJcxDBc9y8cKQMXaTNthlq', NULL, NULL, NULL, NULL, NULL, 4, 'Nam', 123847464, 'VietNam', '2000-02-12', 'st,small,507x507-pad,600x600,f8f8f8.jpg'),
(18, 'Lê Văn Định', 'dinhle@gmail.com', NULL, '$2y$10$kAcZMrqdBZHcGsQvas.KD.14KdwlGiGPkT9QciHxnzGhb8DrW8MEG', NULL, NULL, NULL, NULL, NULL, 2, 'Nam', 88774456, 'VietNam', '1996-08-24', 'Cat_avatar.jpg'),
(19, 'Đậu Thị Thu Hằng', 'Hangne@gmail.com', NULL, '$2y$10$kOmGU06EaWfCFzEWUWJuSuJaCwx9N83tUs.QIWiMJ7Os4qgaV5E06', NULL, NULL, NULL, NULL, NULL, 3, 'Nữ', 336699887, 'VietNam', '2001-05-14', 'maxresdefault.jpg'),
(20, 'Nguyễn Thanh Tùng', 'Tungrinhrinh@gmail.com', NULL, '$2y$10$BINqvczgPBqlhptmRz7j7.OTimzi6zrq0A/2DZmWFkQr1li7Gnbcy', NULL, NULL, NULL, NULL, NULL, 2, 'Nam', 226658741, 'VietNam', '1995-01-31', 'Cat2.jpg'),
(21, 'Gia Cát Lượng', 'Tuonggia@gmail.com', NULL, '$2y$10$UFt.SXwrbnySj7d7L5FPO.Zr1jhFXTjASzSQLAPmc0vRE.SHMG9Li', NULL, NULL, NULL, NULL, NULL, 2, 'Nam', 335588744, 'China', '1997-02-01', 'images.jpg'),
(22, 'Lê Tường Vy', 'tuongvy@gmail.com', NULL, '$2y$10$mdSlNZex6gjzPJ8PU9IYqeFKk7.71BWJlHWDM24qYAHKpIQZphMly', NULL, NULL, NULL, NULL, NULL, 3, 'Nữ', 77854123, 'VietNam', '2001-12-30', 'rubber-duck-stock-t.jpg'),
(23, 'Đào Nhựt Nam', 'namdao@gmail.com', NULL, '$2y$10$aXjnD1qmvolOj8it6f9zZOHOO2NQSr.XMmkuodUhEcww7VR9JTcaO', NULL, NULL, NULL, NULL, NULL, 2, 'Nam', 378916544, 'VietNam', '2000-02-26', 'fat-hen-and-chick.jpg'),
(24, 'Trần Hữu Phúc', 'huuphuc@gmail.com', NULL, '$2y$10$45zAgB0LdE78l789GImg1OkljHjOPD.mIlyIC61Q.FN4ctWkZp9je', NULL, NULL, NULL, NULL, NULL, 2, 'Nam', 77896541, 'VietNam', '1998-08-08', 'images (1).jpg'),
(25, 'tigerbeer400', 'tigerbeer400@gmail.com', NULL, '$2y$10$pt4HuqiEQly.w86w7E9JP.rjYSdabHG3eStxbNoiu018wyRuj3cJi', NULL, NULL, NULL, NULL, NULL, 2, 'Nam', 332233213, 'VietNam', '1994-02-24', 'images (2).jpg'),
(26, 'GloryZVN', 'glory@gmail.com', NULL, '$2y$10$qpeIw/6Ykmc7HfYy59PLtOLEKusYq6ZG8IMkbN34kWjthqHWmfoFO', NULL, NULL, NULL, NULL, NULL, 2, 'Nữ', 44489542, 'France', '1999-03-08', 'images (3).jpg'),
(27, 'Khổng Minh', 'khongminh@gmail.com', NULL, '$2y$10$MKvJmwwOSpZ1oqKsSw0QiuY.nQumjvXP1n16hUc8LT6VwQzLpHqsy', NULL, NULL, NULL, NULL, NULL, 2, 'Nam', 4485247, 'China', '1999-03-12', 'khongMinh.jpg'),
(28, 'Bao Chuẩn', 'baochuan@gmail.com', NULL, '$2y$10$X3exlj/AtO6OnvAoaP1beOHT4qaeXoMXHmZ68VyYW46imPMxlCwHO', NULL, NULL, NULL, NULL, NULL, 2, 'Nam', 33697845, 'VietNam', '2008-03-12', 'BaoCong.jpg'),
(29, 'Ngộ Không', 'wukong@gmail.com', NULL, '$2y$10$7OnOw7rI2VyGf2kIlY8kLu6tSsnnqyo/NqJqZVbv6QkZZvrJ3oNMy', NULL, NULL, NULL, NULL, NULL, 2, 'Nam', 66415884, 'VietNam', '2007-03-31', 'Wukong.jpg'),
(30, 'Đường Tăng', 'duongtang@gmail.com', NULL, '$2y$10$HnWNckF7tfV4mBvU62oX7ODlpln5UTbfzI1LKH4B8VDsYu96ZAzAW', NULL, NULL, NULL, NULL, NULL, 2, 'Nam', 45987526, 'China', '1995-08-04', 'sufu.jpg'),
(31, 'Bát Giới', 'batgioi@gmail.com', NULL, '$2y$10$K4M7pju0SHrPFrmrUwqhEOcnYgPvttJTMQcBrxDGkfrsGtDJUTHt.', NULL, NULL, NULL, NULL, NULL, 2, 'Nam', 13688546, 'VietNam', '2008-02-14', 'Bát giới.jpg'),
(32, 'user', 'user@gmail.com', NULL, '$2y$10$nsLURcIV5Z4eyS0LcuF9r.6TV6K5wOzVP7vgDBc.kasV7SZzNpMOi', NULL, NULL, NULL, NULL, NULL, 1, NULL, NULL, NULL, NULL, 'logo.png');

--
-- Chỉ mục cho các bảng đã đổ
--

--
-- Chỉ mục cho bảng `comment`
--
ALTER TABLE `comment`
  ADD PRIMARY KEY (`id`),
  ADD KEY `fk_comment_post` (`post_id`),
  ADD KEY `fk_comment_user` (`user_id`);

--
-- Chỉ mục cho bảng `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`);

--
-- Chỉ mục cho bảng `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `news`
--
ALTER TABLE `news`
  ADD PRIMARY KEY (`id`),
  ADD KEY `fk_user_news` (`user_id`);

--
-- Chỉ mục cho bảng `notification`
--
ALTER TABLE `notification`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`);

--
-- Chỉ mục cho bảng `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `personal_access_tokens_token_unique` (`token`),
  ADD KEY `personal_access_tokens_tokenable_type_tokenable_id_index` (`tokenable_type`,`tokenable_id`);

--
-- Chỉ mục cho bảng `post`
--
ALTER TABLE `post`
  ADD PRIMARY KEY (`id`),
  ADD KEY `fk_topic_post` (`topic_id`),
  ADD KEY `fk_user_post` (`user_id`);

--
-- Chỉ mục cho bảng `post_user`
--
ALTER TABLE `post_user`
  ADD KEY `fk_postuser_post` (`post_id`),
  ADD KEY `fk_postuser_user` (`user_id`);

--
-- Chỉ mục cho bảng `role`
--
ALTER TABLE `role`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `sessions`
--
ALTER TABLE `sessions`
  ADD PRIMARY KEY (`id`),
  ADD KEY `sessions_user_id_index` (`user_id`),
  ADD KEY `sessions_last_activity_index` (`last_activity`);

--
-- Chỉ mục cho bảng `subcomment`
--
ALTER TABLE `subcomment`
  ADD PRIMARY KEY (`id`),
  ADD KEY `fk_comment_subcomment` (`comment_id`),
  ADD KEY `fk_user_subcomment` (`user_id`);

--
-- Chỉ mục cho bảng `topic`
--
ALTER TABLE `topic`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`),
  ADD KEY `fk_user_role` (`role_id`);

--
-- AUTO_INCREMENT cho các bảng đã đổ
--

--
-- AUTO_INCREMENT cho bảng `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT cho bảng `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT cho bảng `news`
--
ALTER TABLE `news`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=32;

--
-- AUTO_INCREMENT cho bảng `notification`
--
ALTER TABLE `notification`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=138;

--
-- AUTO_INCREMENT cho bảng `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT cho bảng `subcomment`
--
ALTER TABLE `subcomment`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=65;

--
-- AUTO_INCREMENT cho bảng `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=33;

--
-- Các ràng buộc cho các bảng đã đổ
--

--
-- Các ràng buộc cho bảng `comment`
--
ALTER TABLE `comment`
  ADD CONSTRAINT `fk_comment_post` FOREIGN KEY (`post_id`) REFERENCES `post` (`id`),
  ADD CONSTRAINT `fk_comment_user` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`);

--
-- Các ràng buộc cho bảng `news`
--
ALTER TABLE `news`
  ADD CONSTRAINT `fk_user_news` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`);

--
-- Các ràng buộc cho bảng `post`
--
ALTER TABLE `post`
  ADD CONSTRAINT `fk_topic_post` FOREIGN KEY (`topic_id`) REFERENCES `topic` (`id`),
  ADD CONSTRAINT `fk_user_post` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`);

--
-- Các ràng buộc cho bảng `post_user`
--
ALTER TABLE `post_user`
  ADD CONSTRAINT `fk_postuser_user` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`);

--
-- Các ràng buộc cho bảng `subcomment`
--
ALTER TABLE `subcomment`
  ADD CONSTRAINT `fk_comment_subcomment` FOREIGN KEY (`comment_id`) REFERENCES `comment` (`id`),
  ADD CONSTRAINT `fk_user_subcomment` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`);

--
-- Các ràng buộc cho bảng `users`
--
ALTER TABLE `users`
  ADD CONSTRAINT `fk_user_role` FOREIGN KEY (`role_id`) REFERENCES `role` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
