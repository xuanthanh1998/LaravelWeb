-- phpMyAdmin SQL Dump
-- version 5.1.0
-- https://www.phpmyadmin.net/
--
-- Máy chủ: 127.0.0.1
-- Thời gian đã tạo: Th6 06, 2022 lúc 05:41 AM
-- Phiên bản máy phục vụ: 10.4.19-MariaDB
-- Phiên bản PHP: 8.0.6

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Cơ sở dữ liệu: `db_qlweb`
--

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
-- Cấu trúc bảng cho bảng `jobs`
--

CREATE TABLE `jobs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `queue` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `attempts` tinyint(3) UNSIGNED NOT NULL,
  `reserved_at` int(10) UNSIGNED DEFAULT NULL,
  `available_at` int(10) UNSIGNED NOT NULL,
  `created_at` int(10) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `loai_tin_models`
--

CREATE TABLE `loai_tin_models` (
  `id` int(10) UNSIGNED NOT NULL,
  `idTheLoai` int(10) UNSIGNED NOT NULL,
  `Ten` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `TenKhongDau` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `loai_tin_models`
--

INSERT INTO `loai_tin_models` (`id`, `idTheLoai`, `Ten`, `TenKhongDau`, `created_at`, `updated_at`) VALUES
(1, 1, 'Giáo Dục', 'Giao-Duc', NULL, NULL),
(2, 1, 'Nhịp Điệu Trẻ', 'Nhip-Dieu-Tre', NULL, NULL),
(3, 1, 'Du Lịch', 'Du-Lich', NULL, NULL),
(4, 1, 'Du Học', 'Du-Hoc', NULL, NULL),
(5, 2, 'Cuộc Sống Đó Đây', 'Cuoc-Song-Do-Day', NULL, NULL),
(6, 2, 'Ảnh', 'Anh', NULL, NULL),
(7, 2, 'Người Việt 5 Châu', 'Nguoi-Viet-5-Chau', NULL, NULL),
(8, 2, 'Phân Tích', 'Phan-Tich', NULL, NULL),
(15, 4, 'Hoa Hậu', 'Hoa-Hau', NULL, NULL),
(20, 4, 'Mỹ Thuật', 'My-Thuat', NULL, NULL),
(21, 5, 'Bóng Đá', 'Bong-Da', NULL, NULL),
(22, 5, 'Tennis', 'Tennis', NULL, NULL),
(23, 5, 'Chân Dung', 'Chan-Dung', NULL, NULL),
(24, 5, 'Ảnh', 'Anh-TT', NULL, NULL),
(25, 6, 'Hình Sự', 'Hinh-Su', NULL, NULL),
(26, 1, 'Giáo Dục', 'Giao-Duc', NULL, NULL),
(27, 1, 'Nhịp Điệu Trẻ', 'Nhip-Dieu-Tre', NULL, NULL),
(28, 1, 'Du Lịch', 'Du-Lich', NULL, NULL),
(29, 1, 'Du Học', 'Du-Hoc', NULL, NULL),
(30, 2, 'Cuộc Sống Đó Đây', 'Cuoc-Song-Do-Day', NULL, NULL),
(31, 2, 'Ảnh', 'Anh', NULL, NULL),
(32, 2, 'Người Việt 5 Châu', 'Nguoi-Viet-5-Chau', NULL, NULL),
(33, 2, 'Phân Tích', 'Phan-Tich', NULL, NULL),
(34, 3, 'Chứng Khoán', 'Chung-Khoan', NULL, NULL),
(35, 3, 'Bất Động Sản', 'Bat-Dong-San', NULL, NULL),
(36, 3, 'Doanh Nhân', 'Doanh-Nhan', NULL, NULL),
(37, 3, 'Quốc Tế', 'Quoc-Te', NULL, NULL),
(38, 3, 'Mua Sắm', 'Mua-Sam', NULL, NULL),
(39, 3, 'Doanh Nghiệp Viết', 'Doanh-Nghiep-Viet', NULL, NULL),
(40, 4, 'Hoa Hậu', 'Hoa-Hau', NULL, NULL),
(41, 4, 'Nghệ Sỹ', 'Nghe-Sy', NULL, NULL),
(42, 4, 'Âm Nhạc', 'Am-Nhac', NULL, NULL),
(43, 4, 'Thời Trang', 'Thoi-Trang', NULL, NULL),
(44, 4, 'Điện Ảnh', 'Dien-Anh', NULL, NULL),
(45, 4, 'Mỹ Thuật', 'My-Thuat', NULL, NULL),
(46, 5, 'Bóng Đá', 'Bong-Da', NULL, NULL),
(47, 5, 'Tennis', 'Tennis', NULL, NULL),
(48, 5, 'Chân Dung', 'Chan-Dung', NULL, NULL),
(49, 5, 'Ảnh', 'Anh-TT', NULL, NULL),
(50, 6, 'Hình Sự', 'Hinh-Su', NULL, NULL),
(51, 1, 'Giáo Dục', 'Giao-Duc', NULL, NULL),
(52, 1, 'Nhịp Điệu Trẻ', 'Nhip-Dieu-Tre', NULL, NULL),
(53, 1, 'Du Lịch', 'Du-Lich', NULL, NULL),
(54, 1, 'Du Học', 'Du-Hoc', NULL, NULL),
(55, 2, 'Cuộc Sống Đó Đây', 'Cuoc-Song-Do-Day', NULL, NULL),
(56, 2, 'Ảnh', 'Anh', NULL, NULL),
(57, 2, 'Người Việt 5 Châu', 'Nguoi-Viet-5-Chau', NULL, NULL),
(58, 2, 'Phân Tích', 'Phan-Tich', NULL, NULL),
(59, 3, 'Chứng Khoán', 'Chung-Khoan', NULL, NULL),
(60, 3, 'Bất Động Sản', 'Bat-Dong-San', NULL, NULL),
(61, 3, 'Doanh Nhân', 'Doanh-Nhan', NULL, NULL),
(62, 3, 'Quốc Tế', 'Quoc-Te', NULL, NULL),
(63, 3, 'Mua Sắm', 'Mua-Sam', NULL, NULL),
(64, 3, 'Doanh Nghiệp Viết', 'Doanh-Nghiep-Viet', NULL, NULL),
(65, 4, 'Hoa Hậu', 'Hoa-Hau', NULL, NULL),
(66, 4, 'Nghệ Sỹ', 'Nghe-Sy', NULL, NULL),
(67, 4, 'Âm Nhạc', 'Am-Nhac', NULL, NULL),
(68, 4, 'Thời Trang', 'Thoi-Trang', NULL, NULL),
(69, 4, 'Điện Ảnh', 'Dien-Anh', NULL, NULL),
(70, 4, 'Mỹ Thuật', 'My-Thuat', NULL, NULL),
(71, 5, 'Bóng Đá', 'Bong-Da', NULL, NULL),
(72, 5, 'Tennis', 'Tennis', NULL, NULL),
(73, 5, 'Chân Dung', 'Chan-Dung', NULL, NULL),
(74, 5, 'Ảnh', 'Anh-TT', NULL, NULL),
(75, 6, 'Hình Sự', 'Hinh-Su', NULL, NULL);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `login_history`
--

CREATE TABLE `login_history` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
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

--
-- Đang đổ dữ liệu cho bảng `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2014_10_12_000000_create_users_table', 1),
(2, '2014_10_12_100000_create_password_resets_table', 1),
(3, '2016_06_01_000001_create_oauth_auth_codes_table', 1),
(4, '2016_06_01_000002_create_oauth_access_tokens_table', 1),
(5, '2016_06_01_000003_create_oauth_refresh_tokens_table', 1),
(6, '2016_06_01_000004_create_oauth_clients_table', 1),
(7, '2016_06_01_000005_create_oauth_personal_access_clients_table', 1),
(8, '2019_08_19_000000_create_failed_jobs_table', 1),
(9, '2019_12_14_000001_create_personal_access_tokens_table', 1),
(10, '2022_05_13_094322_create_the_loai_models_table', 1),
(11, '2022_05_13_094343_create_loai_tin_models_table', 1),
(12, '2022_05_24_073635_create_jobs_table', 1),
(13, '2022_05_27_065625_create_login_history_table', 1),
(14, '2022_05_28_031021_create_roles_table', 1),
(15, '2022_05_28_031134_create_permissions_table', 1),
(16, '2022_05_28_031203_create_role_user_table', 1),
(17, '2022_05_28_031239_create_permission_role_table', 1),
(18, '2022_05_28_031344_create_posts_table', 1),
(19, '2022_05_31_043002_add_social_login_field', 1),
(20, '2014_10_12_200000_add_two_factor_columns_to_users_table', 2);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `oauth_access_tokens`
--

CREATE TABLE `oauth_access_tokens` (
  `id` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` bigint(20) UNSIGNED DEFAULT NULL,
  `client_id` char(36) COLLATE utf8mb4_unicode_ci NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `scopes` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `revoked` tinyint(1) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `expires_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `oauth_auth_codes`
--

CREATE TABLE `oauth_auth_codes` (
  `id` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `client_id` char(36) COLLATE utf8mb4_unicode_ci NOT NULL,
  `scopes` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `revoked` tinyint(1) NOT NULL,
  `expires_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `oauth_clients`
--

CREATE TABLE `oauth_clients` (
  `id` char(36) COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` bigint(20) UNSIGNED DEFAULT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `secret` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `provider` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `redirect` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `personal_access_client` tinyint(1) NOT NULL,
  `password_client` tinyint(1) NOT NULL,
  `revoked` tinyint(1) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `oauth_personal_access_clients`
--

CREATE TABLE `oauth_personal_access_clients` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `client_id` char(36) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `oauth_refresh_tokens`
--

CREATE TABLE `oauth_refresh_tokens` (
  `id` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `access_token_id` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `revoked` tinyint(1) NOT NULL,
  `expires_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `password_resets`
--

INSERT INTO `password_resets` (`email`, `token`, `created_at`) VALUES
('phamxuanthanh9897@gmail.com', '$2y$10$07zpMIFE8tA1rMF/Sn2OAOe6Bjx3eNIuzX5kx1iTmzbU48z.7b9Hy', '2022-06-02 19:36:44');

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
-- Cấu trúc bảng cho bảng `posts`
--

CREATE TABLE `posts` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` int(10) UNSIGNED NOT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `content` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `roles`
--

CREATE TABLE `roles` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `role_user`
--

CREATE TABLE `role_user` (
  `user_id` int(10) UNSIGNED NOT NULL,
  `role_id` int(10) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `the_loai_models`
--

CREATE TABLE `the_loai_models` (
  `id` int(10) UNSIGNED NOT NULL,
  `Ten` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `TenKhongDau` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `the_loai_models`
--

INSERT INTO `the_loai_models` (`id`, `Ten`, `TenKhongDau`, `created_at`, `updated_at`) VALUES
(1, 'Xã Hội', 'Xa-Hoi', NULL, NULL),
(2, 'Thế Giới', 'The-Gioi', NULL, NULL),
(3, 'Kinh Doanh', 'Kinh-Doanh', NULL, NULL),
(4, 'Văn Hoá', 'Van-Hoa', NULL, NULL),
(5, 'Thể Thao', 'The-Thao', NULL, NULL),
(6, 'Pháp Luật', 'Phap-Luat', NULL, NULL),
(7, 'Đời Sống', 'Doi-Song', NULL, NULL),
(8, 'Khoa Học', 'Khoa-Hoc', NULL, NULL),
(9, 'Vi Tính', 'Vi-Tinh', NULL, NULL);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `tin_tuc_models`
--

CREATE TABLE `tin_tuc_models` (
  `id` int(10) UNSIGNED NOT NULL,
  `TieuDe` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `TieuDeKhongDau` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `TomTat` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `NoiDung` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `Hinh` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `NoiBat` int(11) NOT NULL DEFAULT 0,
  `SoLuotXem` int(11) NOT NULL DEFAULT 0,
  `idLoaiTin` int(10) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `tin_tuc_models`
--

INSERT INTO `tin_tuc_models` (`id`, `TieuDe`, `TieuDeKhongDau`, `TomTat`, `NoiDung`, `Hinh`, `NoiBat`, `SoLuotXem`, `idLoaiTin`, `created_at`, `updated_at`) VALUES
(1, 'Lần đầu ĐH FPT cấp học bổng tiến sĩ ', 'Lan-Dau-Dh-Fpt-Cap-Hoc-Bong-Tien-Si', 'Bên cạnh 400 suất học bổng Nguyễn Văn Đạo, ĐH FPT lần đầu tiên chọn ra 30 học sinh xuất sắc nhất để cấp học bổng toàn phần đào tạo từ cử nhân lên thẳng tiến sĩ, với tổng giá trị quỹ lên tới 5 triệu USD.', '\n    	1\n    	', 'FPT-2.jpg', 1, 0, 1, NULL, NULL),
(2, '300 tỷ đồng phát triển giáo dục mầm non ', '300-Ty-Dong-Phat-Trien-Giao-Duc-Mam-Non', 'Bộ Giáo dục và Đào tạo đang xây dựng chương trình, mục tiêu quốc gia về giáo dục giai đoạn 2011-2015, trong đó dự kiến chi 300 tỷ đồng để phát triển giáo dục mầm non năm 2011. ', '\n    	1\n    	', 'tre_em_set_sub.jpg', 1, 0, 1, NULL, NULL),
(3, 'Nợ giáo viên tiền tỷ chi phí phổ cập giáo dục ', 'No-Giao-Vien-Tien-Ty-Chi-Phi-Pho-Cap-Giao-Duc', 'Ba năm qua, nhiều giáo viên ở Khánh Hòa bỏ công sức, kể cả tiền bạc để thực hiện phổ cập giáo dục cho học sinh trên địa bàn tỉnh, song đến nay vẫn chưa nhận được tiền chính quyền chi trả. ', '\n    	1\n    	', 'pho-cap-giao-duc-nho-2.jpg', 1, 0, 1, NULL, NULL),
(4, 'Đón và chăm sóc trẻ sau giờ tan trường qua dịch vụ ', 'Don-Va-Cham-Soc-Tre-Sau-Gio-Tan-Truong-Qua-Dich-Vu', 'Các bé sẽ được chăm sóc bữa ăn, tắm rửa sạch sẽ, vui chơi và học tập cùng cô giáo theo các nội dung trong sổ báo bài, mở rộng hoặc đào sâu kiến thức theo yêu cầu của phụ huynh. ', '\n    	1\n    	', 'be-2.jpg', 1, 0, 1, NULL, NULL),
(5, '7 học sinh rơi từ tầng hai xuống đất vì gãy lan can ', '7-Hoc-Sinh-Roi-Tu-Tang-Hai-Xuong-Dat-Vi-Gay-Lan-Can', 'Đang giờ ra chơi, bất ngờ toàn bộ lan can tầng hai của Trường THCS thị trấn Chợ Rã (Bắc Kạn) gãy đổ ra ngoài, kéo theo 7 học sinh lớp 6A rơi xuống đất. ', '\n    	1\n    	', 'tai_nan_set_top.gif', 1, 0, 1, NULL, NULL),
(6, 'Giáo viên TP HCM được thưởng tết tối thiểu 700.000 đồng ', 'Giao-Vien-Tp-Hcm-Duoc-Thuong-Tet-Toi-Thieu-700.000-Dong', 'Sở GD&ĐT TP HCM vừa có thông báo về việc UBND thành phố chấp thuận đề nghị hỗ trợ mức quà tết cho cán bộ công chức trong ngành tối thiểu là 700.000 đồng. Mức thưởng này cao hơn năm ngoái 100.000 đồng. ', '\n    	1\n    	', 'thuong-tet-3.jpg', 1, 0, 1, NULL, NULL),
(7, 'Mức sinh hoạt phí tối đa cho lưu học sinh là 1.200 USD ', 'Muc-Sinh-Hoat-Phi-Toi-Da-Cho-Luu-Hoc-Sinh-La-1.200-Usd', 'Đối với lưu học sinh tại Ba Lan, Bungary, Nga..., mức sinh hoạt phí sẽ tăng từ 400 USD lên 480 USD; tại Australia, New Zealand tăng từ 860 USD lên 1.032 USD và tại Mỹ, Canada, Anh, Nhật Bản tăng từ 1.000 lên 1.200 USD một người một tháng... ', '\n    	1\n    	', 'du_hoc_sinh_set_sub.jpg', 1, 0, 1, NULL, NULL),
(8, 'Học sinh Hà Nội được nghỉ 11 ngày Tết ', 'Hoc-Sinh-Ha-Noi-Duoc-Nghi-11-Ngay-Tet', 'UBND thành phố Hà Nội vừa đồng ý với đề xuất của Sở Giáo dục và Đào tạo về việc cho học sinh nghỉ tết Tết Nguyên đán Tân Mão 11 ngày. ', '\n    	1\n    	', 't2.jpg', 1, 0, 1, NULL, NULL),
(9, 'Hàng trăm nghìn học sinh nghỉ học vì giá rét ', 'Hang-Tram-Nghin-Hoc-Sinh-Nghi-Hoc-Vi-Gia-Ret', 'Sớm nay, các trường tiểu học ở Hà Nội đều trưng biển thông báo nghỉ học do nhiệt độ ở mức 8 độ C. Một vài phụ huynh không theo dõi dự báo thời tiết vẫn đưa con đến trường và ngậm ngùi quay xe ra về. ', '\n    	1\n    	', 'phu_huynh_xem_lich_nghi_hoc_set_sub.jpg', 1, 0, 1, NULL, NULL),
(10, 'Phương pháp Mathnasium giúp trẻ yêu thích môn toán ', 'Phuong-Phap-Mathnasium-Giup-Tre-Yeu-Thich-Mon-Toan', 'Phương pháp dạy toán Mathnasium với 5 kỹ thuật giảng dạy bổ sung nhau, giúp trẻ em tiếp thu kiến thức toán hiệu quả, không cảm thấy áp lực và nhàm chán. ', '\n    	1\n    	', 'hinh_250x195[1]_JPG_thumb210x0_ns.jpg', 1, 0, 1, NULL, NULL),
(11, 'Những nụ hôn ngọt ngào trong đêm tình nhân ', 'Nhung-Nu-Hon-Ngot-Ngao-Trong-Dem-Tinh-Nhan', 'Tối 13/2, hàng nghìn bạn trẻ có mặt tại cầu Ánh Sao (quận 7, TP HCM) chứng kiến những lời tỏ tình cùng những nụ hôn ngọt ngào của 100 cặp tình nhân trong \"Đêm Valentine thế kỷ\". ', '\n    	1\n    	', '250h_jpg_thumb210x0_ns.jpg', 1, 0, 2, NULL, NULL),
(12, 'Hot girl tâm sự về ngày Valentine ', 'Hot-Girl-Tam-Su-Ve-Ngay-Valentine', 'Một bông hồng trắng bằng khăn giấy, chiếc xe đạp gắn đầy hoa, hay bài thơ của chàng \"thi sĩ\" vô danh gửi tặng… là những món quà đầy ấn tượng mà hot girl Midu từng nhận được trong các mùa Valentine. ', '\n    	1\n    	', 'hot-girl-valentine-2.jpg', 1, 0, 2, NULL, NULL),
(13, 'Nên duyên chồng vợ từ mạng mai mối ', 'Nen-Duyen-Chong-Vo-Tu-Mang-Mai-Moi', 'Quen nhau qua trang web kết bạn, để chiếm được tình cảm của cô nàng cao tới 1,71 m, chàng trai cao 1,58 m kiên trì tỏ tình tới 10 lần và hạnh phúc đã mỉm cười với họ. ', '\n    	1\n    	', 'cap_doi_hoan_hao_set_sub.jpg', 1, 0, 2, NULL, NULL),
(14, 'Những món quà Valentine làm từ tình yêu ', 'Nhung-Mon-Qua-Valentine-Lam-Tu-Tinh-Yeu', 'Cặm cụi cả tuần để thêu móc chìa khóa bằng len tặng người yêu, làm tranh bằng chính những hạt đỗ \"kỷ niệm ngày quen nhau\" của hai đứa là cách mà giới trẻ đang làm để tặng người yêu dịp lễ Valentine. ', '\n    	1\n    	', 'socola_set_sub.jpg', 1, 0, 2, NULL, NULL),
(15, '100 cặp tình nhân hôn nhau trên khinh khí cầu ', '100-Cap-Tinh-Nhan-Hon-Nhau-Tren-Khinh-Khi-Cau', '100 cặp tình nhân sẽ trao nhau nụ hôn trên khinh khí cầu và được tặng một bó hoa với 999 nụ hồng xanh, nhận \"lời cầu hôn của thần Cupid\"... trong lễ hội Valentine sẽ được tổ chức tại cầu Ánh Sao (quận 7, TP HCM) tối 13/2. ', '\n    	1\n    	', 'valentine22.jpg', 1, 0, 2, NULL, NULL),
(16, 'Nhà thám hiểm 9 tuổi đặt chân tới Nam Cực ', 'Nha-Tham-Hiem-9-Tuoi-Dat-Chan-Toi-Nam-Cuc', 'Vượt qua hành trình dài nhiều ngày, Phạm Vũ Thiều Quang, cậu bé 9 tuổi đã cùng bố đặt chân tới Nam Cực vào chiều mùng 1 Tết. Cậu bé đã trở thành người châu Á trẻ tuổi nhất đặt chân tới vùng đất này. ', '\n    	1\n    	', 'top-2.jpg', 1, 0, 2, NULL, NULL),
(17, 'Giới trẻ nô nức xin chữ đầu năm ', 'Gioi-Tre-No-Nuc-Xin-Chu-Dau-Nam', '9h sáng mùng 4 Tết dòng người kéo đến Văn miếu Quốc Tử Giám đông nghẹt. Nhiều bạn trẻ đứng chen chân hàng tiếng đồng hồ để xin được chữ: Trạng nguyên, Đỗ đạt, Trí, Nhân... khi xuân về. ', '\n    	1\n    	', 'tre-1.jpg', 1, 0, 2, NULL, NULL),
(18, 'Mong ước đầu năm của giới trẻ ', 'Mong-Uoc-Dau-Nam-Cua-Gioi-Tre', 'Trong năm mới, chàng thủ khoa ĐH Ngoại thương Tăng Văn Bình quyết tâm trau dồi ngoại ngữ để thực hiện ước mơ du học, còn Miss Teen Diễm Trang sẽ dành nhiều thời gian hơn cho hoạt động xã hội, giao lưu quốc tế. ', '\n    	1\n    	', 'diem-trang-2.jpg', 1, 0, 2, NULL, NULL),
(19, 'Giám đốc tuổi mèo và thành tích đáng nể ', 'Giam-Doc-Tuoi-Meo-Va-Thanh-Tich-Dang-Ne', 'Học hết lớp 9, Nguyễn Hữu Năm phải nghỉ học vì nhà nghèo lại đông con, nhưng chàng trai đất Chương Mỹ (Hà Nội) đã xuất sắc giành nhiều giải thưởng sáng tạo trẻ và hiện là chủ công ty chuyên về chế tạo máy. ', '\n    	1\n    	', 'Nguyen_Huu_Nam_set_sub.jpg', 1, 0, 2, NULL, NULL),
(20, 'Học sinh vùng cao nghỉ Tết kéo dài vì giá rét', 'Hoc-Sinh-Vung-Cao-Nghi-Tet-Keo-Dai-Vi-Gia-Ret', 'Học sinh Hà Giang có thể nghỉ Tết Tân Mão gần 20 ngày còn học sinh Lào Cai được nghỉ Tết hơn các vùng khác 3 ngày để tránh giá rét. ', '\n    	1\n    	', 'sapa9.jpg', 1, 0, 1, NULL, NULL),
(21, 'Không để thí sinh đăng ký đại học như chơi xổ số', 'Khong-De-Thi-Sinh', '\"Chúng ta không thể để học sinh đăng ký nguyện vọng như chơi sổ xố, đến cuối cùng mới biết kết quả. Hãy để các em thấy rõ cơ hội của mình\", Bộ trưởng GD&ĐT Phạm Vũ Luận phát biểu tại Hội nghị tuyển sinh sáng 18/2. ', '\n    	1\n    	', 'Pham_Vu_Luan.jpg', 1, 0, 1, NULL, NULL),
(22, 'Chụp ảnh cưới tại Flamingo Đại Lải Resort ', 'Chup-Anh-Cuoi-Tai-Flamingo-Dai-Lai-Resort', 'Với hệ sinh thái độc đáo gồm đảo với đàn chim hàng nghìn con cùng nhiều hồ, suối, bán đảo… Flamingo Đại Lải Resort là điểm đến cho các đôi uyên ương muốn tìm nơi lưu giữ khoảnh khắc trăm năm và nghỉ dưỡng cuối tuần. ', '\n    	1\n    	', 'New_Imagesp2.jpg', 1, 0, 1, NULL, NULL),
(23, 'Hỗ trợ gần 3.000 vé xe tết cho sinh viên', 'Ho-Tro-Gan-3.000-Ve-Xe-Tet-Cho-Sinh-Vien', 'Mỗi khi máy bay sắp hạ cánh xuống sân bay Suvarnabhumi, tôi đều có cảm giác mình sắp được trở về nhà, về quê hương thân thương thứ hai của mình. Bạn Đặng Quốc Chí chia sẻ.Khoảng 2.700 sinh viên ngoại tỉnh có hoàn cảnh khó khăn, đang học tập tại TP HCM sẽ được tặng vé xe miễn phí về quê trong dịp tết Tân Mão.', '\n    	1\n    	', 'sinhvien[1]_1.jpg', 1, 0, 1, NULL, NULL),
(24, 'Một mình ở Thái Lan ', 'Mot-Minh-O-Thai-Lan', 'Không quá ồn ã tấp nập như Hong Kong, hay quá yên bình như Hội An, Bangkok khiến cho tôi cảm thấy vô cùng phấn khích, tựa hồ như vừa thức giấc sau một cơn ngủ say. Bạn Nguyễn Anh Ngọc viết. ', '\n    	1\n    	', 'top1.jpg', 1, 0, 3, NULL, NULL),
(25, 'Trai Hà thành trổ tài vật cầu đầu xuân', 'Trai-Ha-Thanh-Tro-Tai-Vat-Cau-Dau-Xuan', 'Những pha tranh cướp quyết liệt cùng những tiếng cười vui là hình ảnh về lễ hội vật cầu đầu xuân của các thanh niên làng Thúy Lĩnh, quận Hoàng Mai (Hà Nội), diễn ra chiều 8/2 (6 Tết). ', '\n    	1\n    	', '130.jpg', 1, 0, 3, NULL, NULL),
(26, 'Các bãi biển Đà Nẵng đồng loạt thả chim bồ câu ', 'Cac-Bai-Bien-Da-Nang-Dong-Loat-Tha-Chim-Bo-Cau', 'Sáng nay, Ban quản lý bán đảo Sơn Trà và các bãi biển du lịch thành phố Đà Nẵng đã tổ chức thả chim bồ câu, phát động xây dựng vườn chim hòa bình tại công viên biển Đông. ', '\n    	1\n    	', 'thachim2.jpg', 1, 0, 3, NULL, NULL),
(27, 'Đi tìm cây đa đại thụ hơn nghìn năm tuổi ', 'Di-Tim-Cay-Da-Dai-Thu-Hon-Nghin-Nam-Tuoi', 'Chúng tôi thẳng tiến về Bán đảo Sơn Trà (Đà Nẵng) nơi được mạnh danh là “Mắt thần Đông Dương”. Mục tiêu của chúng tôi là khám phá cây đa cổ thụ hơn nghìn năm tuổi. Đường dốc và ngoằn nghèo khiến du khách có cảm giác như bay lên thiên giới. Bạn Triệu Hòa chia sẻ. ', '\n    	1\n    	', 'cayda2.jpg', 1, 0, 3, NULL, NULL),
(28, 'Rêu nảy lộc xuân trên phố cổ Hội An', 'Reu-Nay-Loc-Xuan-Tren-Pho-Co-Hoi-An', 'Trong màn sương lãng đãng, phố cổ Hội An hiện ra như bức tranh bình dị mà sâu lắng. Rêu nảy lộc trên từng ngõ phố, bật mầm trên từng mái ngói cũ xưa gieo nhớ thương, neo lòng du khách trong khoảnh khắc mùa xuân đang về. ', '\n    	1\n    	', 'a-top-2-reu-xuan-HA.jpg', 1, 0, 3, NULL, NULL),
(29, '50.000 du khách đến Huế ăn Tết ', '50.000-Du-Khach-Den-Hue-An-Tet', 'Lượng khách du lịch đến tỉnh Thừa Thiên - Huế ăn Tết năm nay tăng mạnh. Dự kiến sẽ có khoảng 50.000 du khách trong và ngoài nước đến cố đô, tăng khoảng 20.000 khách so với Tết năm trước ', '\n    	1\n    	', 'set.jpg', 1, 0, 3, NULL, NULL),
(30, '4 độc giả viết về du lịch Thái Lan được tặng quà', '4-Doc-Gia-Viet-Ve-Du-Lich-Thai-Lan-Duoc-Tang-Qua', 'Trong số nhiều độc giả gửi bài tham dự cuộc thi viết \"Trải nghiệm kỳ thú khi du lịch Thái Lan\", Ban biên tập đã lựa chọn 4 bài viết để trao quà tặng cho tháng 1. ', '\n    	1\n    	', 'a3.jpg', 1, 0, 3, NULL, NULL),
(31, 'Lễ hội thổ dân nơi tận cùng thế giới ', 'Le-Hoi-Tho-Dan-Noi-Tan-Cung-The-Gioi', 'Lễ hội thổ dân ở thung lũng Baliem, trên hòn đảo West Papua New Guinea thuộc Indonesia là một điểm nhấn văn hóa mang đậm hơi thở của những bộ tộc hoang dã nhất hành tinh. Bạn Trần Thu Thủy chia sẻ.', '\n    	1\n    	', '7.jpg', 1, 0, 3, NULL, NULL),
(32, 'Người Hà Nội du xuân phương Nam tránh rét', 'Nguoi-Ha-Noi-Du-Xuan-Phuong-Nam-Tranh-Ret', 'Lo ngại giá lạnh trong ngày Tết, nhiều gia đình ở Hà Nội đã lên kế hoạch du xuân phương Nam. Một số công ty du lịch cũng tung ra chương trình tour đáp ứng nhu cầu du khách, đặc biệt là người lớn tuổi.', '\n    	1\n    	', 'thanh-pho1.jpg', 1, 0, 3, NULL, NULL),
(33, 'Tôi đi trốn rét ở Thái Lan', 'Toi-Di-Tron-Ret-O-Thai-Lan', 'Với tour tự do đi trốn rét này, được bạn người Thái hướng dẫn, chúng tôi thăm thú mấy đô thị nhỏ lân cận Pattaya, đều trong tỉnh Chonburi, Đông Nam nước Thái. Bạn An Bình chia sẻ.', '\n    	1\n    	', 'thai1.jpg', 1, 0, 3, NULL, NULL),
(34, '3 tiêu đề và biểu tượng du lịch Việt Nam đoạt giải cao', '3-Tieu-De-Va-Bieu-Tuong-Du-Lich-Viet-Nam-Doat-Giai-Cao', 'Tối 26/1, Tổng cục Du lịch đã công bố và trao giải cuộc thi \"Tiêu đề - Biểu tượng\" cho chương trình xúc tiến du lịch Việt Nam giai đoạn 2011 - 2015.', '\n    	1\n    	', 'logo6.jpg', 1, 0, 3, NULL, NULL),
(35, 'Bangkok và Pattaya, gió và những đêm không ngủ', 'Bangkok-Va-Pattaya,-Gio-Va-Nhung-Dem-Khong-Ngu', '\"Ngày ở Pattaya, tôi được thử cảm giác đi xe nghịch hướng. Ngồi sau xe máy, làn gió làm bay tóc, những ánh đèn pha ngược chiều, ngược cả hướng làm tôi hơi lo sợ, tôi thấy bờ vai che chở lúc này thật là... hữu dụng\", bạn Thuc Nga chia sẻ.', '\n    	1\n    	', 'Cho-Noi-Pattaya1.jpg', 1, 0, 3, NULL, NULL),
(36, 'Ngôi đền cổ Phimai', 'Ngoi-Den-Co-Phimai', 'Phimai xưa kia từng được xem là một trong những thành phố quan trọng của người Khmer. Kiến trúc và điêu khắc của đền được xem là cùng thời kỳ với kiến trúc của Bayon, Baphuon và Angkor Wat.', '\n    	1\n    	', 'den4.jpg', 1, 0, 3, NULL, NULL),
(37, 'Tour Tết Tân Mão giá ưu đãi', 'Tour-Tet-Tan-Mao-Gia-Uu-Dai', 'Công ty cổ phần Truyền thông Du Lịch Việt đưa ra những chùm tour \"Tết Tân Mão\" ưu đãi như Singapore - Malaysia 7 ngày 6 đêm giá từ 699 USD, miền Trung 5 ngày 4 đêm giá đặc biệt từ 4,9 triệu đồng...', '\n    	1\n    	', 'hinh_1_400x300.JPG', 1, 0, 3, NULL, NULL),
(38, 'Làng đào Hà Nội nín thở vì giá rét', '', 'Những người trồng hoa Nhật Tân, Tứ Liên (Hà Nội) như ngồi trên đống lửa vì lo giá rét có nguy cơ kéo dài. Một tháng trước Tết nhưng đào vẫn chưa có dấu hiệu gì đón xuân.', '\n    	1\n    	', 'HHH_9967.jpg', 1, 0, 3, NULL, NULL),
(39, 'Gift Voucher ưu đãi tại Vinpearl Nha Trang', '', 'Vinpearl Nha Trang giới thiệu chương trình “Gift Voucher” - thẻ quà tặng dành cho khách. Theo đó, bạn sẽ được hưởng trực tiếp ưu đãi tại Vinpearl Nha Trang Resort & Spa từ 18% đến 40%, tùy từng thời điểm đặt phòng.', '\n    	1\n    	', '', 1, 0, 3, NULL, NULL),
(40, 'Mai Châu mờ sương ngày đầu năm', 'Mai-Chau-Mo-Suong-Ngay-Dau-Nam', 'Trong ngày đầu của năm mới 2011, khung cảnh ở bản Hang Kia, Mai Châu (Hòa Bình) hiện lên huyền ảo trong làn sương mịt mù. Sương mù kèm theo thời tiết giá lạnh 13 độ C tại Mai Châu sáng mùng 1 Tết Dương lịch. Một trong những ngôi nhà tại bản Hang Kia chìm trong sương. Xe máy đi lại khó khăn. Thời điểm giáp xuân, những cây hoa mận đã nở nhưng khó có thể nhận ra trong làn sương mờ ảo. Một người phụ nữ Mông cho gia cầm ăn. Những đứa trẻ cùng nhau chơi quay. Một em bé thiếu quần mặc trong giá rét. Hai mẹ con người dân tộc Mông sưởi ấm trong căn nhà gỗ. Những người đàn ông đang quây quần trong bữa cơm chào năm mới. Một người đàn ông trở về nhà cùng chiếc khèn.', '\n    	1\n    	', 'maichau1.jpg', 1, 0, 3, NULL, NULL),
(41, 'Thi viết về những trải nghiệm kỳ thú ở Thái Lan', 'Thi-Viet-Ve-Nhung-Trai-Nghiem-Ky-Thu-O-Thai-Lan', 'Mỗi tháng VnExpress.net sẽ tặng một cặp vé máy bay khứ hồi cho độc giả gửi bài viết hay nhất về du lịch trên đất nước Thái Lan. ', '\n    	1\n    	', 'chua-1.jpg', 1, 0, 3, NULL, NULL),
(42, 'Trải nghiệm cảm giác sống chậm tại Côn Đảo', 'Trai-Nghiem-Cam-Giac-Song-Cham-Tai-Con-Dao', 'Sự vắng vẻ, phong cảnh tự nhiên cùng sự ra đời của khu nghỉ dưỡng cao cấp giúp Côn Đảo trở thành địa điểm lý tưởng cho người muốn trải nghiệm cảm giác sống chậm.', '\n    	1\n    	', 'New_Image1.JPG', 1, 0, 3, NULL, NULL),
(43, 'Du lịch kết hợp mua sắm Tết tại Trung Quốc', 'Du-Lich-Ket-Hop-Mua-Sam-Tet-Tai-Trung-Quoc', 'Hai tour du lịch kết hợp mua sắm Tết tại Trung Quốc là Nam Ninh - Quảng Châu và Thượng Hải - Hàng Châu - Tô Châu phục vụ du khách có nhu cầu mua sắm trong mùa siêu giảm giá trước Tết Nguyên đán.', '\n    	1\n    	', 'Hang-Chau--Trung-Quoc.jpg', 1, 0, 3, NULL, NULL),
(44, 'Ngăn chặn hiện tượng tiêu cực mùa lễ hội', 'Ngan-Chan-Hien-Tuong-Tieu-Cuc-Mua-Le-Hoi', 'Bộ Văn hóa Thể thao và Du lịch vừa chỉ đạo các khách sạn, cơ sở lưu trú du lịch đảm bảo an toàn vệ sinh thực phẩm, không tăng giá, ép giá đối với du khách dịp tết Tân Mão.', '\n    	1\n    	', 'a4.jpg', 1, 0, 3, NULL, NULL),
(45, '14 ngày trải nghiệm tại 3 quốc gia châu Âu', '14-Ngay-Trai-Nghiem-Tai-3-Quoc-Gia-Chau-Au', 'Với chuyến đi 14 ngày, bạn sẽ được tới thăm 3 quốc gia châu Âu gồm kinh đô ánh sáng - Pháp, ngã tư của các nền văn minh châu Âu - Thụy Sĩ và cái nôi của nền nghệ thuật thế giới - Italy.', '\n    	1\n    	', 'chau-au.jpg', 1, 0, 3, NULL, NULL);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `users`
--

CREATE TABLE `users` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `is_admin` tinyint(1) DEFAULT NULL,
  `provider_id` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `avatar` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `two_factor_secret` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `two_factor_recovery_codes` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `two_factor_confirmed_at` timestamp NULL DEFAULT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `is_admin`, `provider_id`, `avatar`, `email_verified_at`, `password`, `two_factor_secret`, `two_factor_recovery_codes`, `two_factor_confirmed_at`, `remember_token`, `created_at`, `updated_at`) VALUES
(4, 'thành', 'admin@gmail.com', 1, NULL, NULL, NULL, '$2y$10$cCnKOrRqA3dZFMvOuQYwT.UhAtNgeViEgOFw6TLPCu9zZlk/32MgK', NULL, NULL, NULL, NULL, '2022-06-01 00:45:43', '2022-06-01 00:45:43'),
(8, 'user', 'user@gmail.com', 2, NULL, NULL, NULL, '$2y$10$N19TmT67eBIMvPQIPiN1JObqwt8rzHBlGhdz.JZ9KJ6IRkw1Lq46i', NULL, NULL, NULL, NULL, '2022-06-01 00:52:01', '2022-06-01 00:52:01'),
(11, 'Thành Phạm', 'phamxuanthanh9897@gmail.com', NULL, '116898403267766180272', 'https://lh3.googleusercontent.com/a/AATXAJzOWkQKietPi-haqOB74Qfq9mI2PFhvdAK0iMTn=s96-c', NULL, NULL, NULL, NULL, NULL, NULL, '2022-06-01 02:51:57', '2022-06-01 02:51:57'),
(12, 'Thành Phạm Xuân', 'xuanthanh12tin@gmail.com', NULL, '114240818682378047969', 'https://lh3.googleusercontent.com/a-/AOh14GjTIA3M_PLdfvm_IPiJT0iwz4piuIrbyPtJqumlmQ=s96-c', NULL, '$2y$10$iiWD9sdxVnLMenv27u72u.foQ7fJH.EBKbmVIRQsqTSds8JqBrkSy', NULL, NULL, NULL, '7VkwQa6yAljgjOy1gSuKYTnpWDavfcynqpFq7igOAJ728Wj4a35PQhi8950f', '2022-06-01 02:52:50', '2022-06-02 20:42:43');

--
-- Chỉ mục cho các bảng đã đổ
--

--
-- Chỉ mục cho bảng `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`);

--
-- Chỉ mục cho bảng `jobs`
--
ALTER TABLE `jobs`
  ADD PRIMARY KEY (`id`),
  ADD KEY `jobs_queue_index` (`queue`);

--
-- Chỉ mục cho bảng `loai_tin_models`
--
ALTER TABLE `loai_tin_models`
  ADD PRIMARY KEY (`id`),
  ADD KEY `loai_tin_models_idtheloai_foreign` (`idTheLoai`);

--
-- Chỉ mục cho bảng `login_history`
--
ALTER TABLE `login_history`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `oauth_access_tokens`
--
ALTER TABLE `oauth_access_tokens`
  ADD PRIMARY KEY (`id`),
  ADD KEY `oauth_access_tokens_user_id_index` (`user_id`);

--
-- Chỉ mục cho bảng `oauth_auth_codes`
--
ALTER TABLE `oauth_auth_codes`
  ADD PRIMARY KEY (`id`),
  ADD KEY `oauth_auth_codes_user_id_index` (`user_id`);

--
-- Chỉ mục cho bảng `oauth_clients`
--
ALTER TABLE `oauth_clients`
  ADD PRIMARY KEY (`id`),
  ADD KEY `oauth_clients_user_id_index` (`user_id`);

--
-- Chỉ mục cho bảng `oauth_personal_access_clients`
--
ALTER TABLE `oauth_personal_access_clients`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `oauth_refresh_tokens`
--
ALTER TABLE `oauth_refresh_tokens`
  ADD PRIMARY KEY (`id`),
  ADD KEY `oauth_refresh_tokens_access_token_id_index` (`access_token_id`);

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
-- Chỉ mục cho bảng `posts`
--
ALTER TABLE `posts`
  ADD PRIMARY KEY (`id`),
  ADD KEY `posts_user_id_foreign` (`user_id`);

--
-- Chỉ mục cho bảng `roles`
--
ALTER TABLE `roles`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `role_user`
--
ALTER TABLE `role_user`
  ADD KEY `role_user_user_id_foreign` (`user_id`),
  ADD KEY `role_user_role_id_foreign` (`role_id`);

--
-- Chỉ mục cho bảng `the_loai_models`
--
ALTER TABLE `the_loai_models`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `tin_tuc_models`
--
ALTER TABLE `tin_tuc_models`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`);

--
-- AUTO_INCREMENT cho các bảng đã đổ
--

--
-- AUTO_INCREMENT cho bảng `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT cho bảng `jobs`
--
ALTER TABLE `jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT cho bảng `loai_tin_models`
--
ALTER TABLE `loai_tin_models`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=76;

--
-- AUTO_INCREMENT cho bảng `login_history`
--
ALTER TABLE `login_history`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT cho bảng `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- AUTO_INCREMENT cho bảng `oauth_personal_access_clients`
--
ALTER TABLE `oauth_personal_access_clients`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT cho bảng `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT cho bảng `posts`
--
ALTER TABLE `posts`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT cho bảng `roles`
--
ALTER TABLE `roles`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT cho bảng `the_loai_models`
--
ALTER TABLE `the_loai_models`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=29;

--
-- AUTO_INCREMENT cho bảng `tin_tuc_models`
--
ALTER TABLE `tin_tuc_models`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=46;

--
-- AUTO_INCREMENT cho bảng `users`
--
ALTER TABLE `users`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- Các ràng buộc cho các bảng đã đổ
--

--
-- Các ràng buộc cho bảng `loai_tin_models`
--
ALTER TABLE `loai_tin_models`
  ADD CONSTRAINT `loai_tin_models_idtheloai_foreign` FOREIGN KEY (`idTheLoai`) REFERENCES `the_loai_models` (`id`);

--
-- Các ràng buộc cho bảng `posts`
--
ALTER TABLE `posts`
  ADD CONSTRAINT `posts_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;

--
-- Các ràng buộc cho bảng `role_user`
--
ALTER TABLE `role_user`
  ADD CONSTRAINT `role_user_role_id_foreign` FOREIGN KEY (`role_id`) REFERENCES `roles` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `role_user_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
