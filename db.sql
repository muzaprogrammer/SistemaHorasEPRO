-- phpMyAdmin SQL Dump
-- version 4.9.0.1
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 23-03-2020 a las 00:20:54
-- Versión del servidor: 10.4.6-MariaDB
-- Versión de PHP: 7.2.22

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `epro`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `aranceles`
--

CREATE TABLE `aranceles` (
  `id` int(10) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `descripcion` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `monto` decimal(10,0) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `aulas`
--

CREATE TABLE `aulas` (
  `id` int(10) UNSIGNED NOT NULL,
  `codigoaula` varchar(10) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `edificio` varchar(10) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `numero` int(11) DEFAULT NULL,
  `estado` varchar(20) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `ciclos`
--

CREATE TABLE `ciclos` (
  `id` int(10) UNSIGNED NOT NULL,
  `codigociclo` varchar(15) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `fechainicio` date DEFAULT NULL,
  `fechafin` date DEFAULT NULL,
  `estado` varchar(20) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `data_rows`
--

CREATE TABLE `data_rows` (
  `id` int(10) UNSIGNED NOT NULL,
  `data_type_id` int(10) UNSIGNED NOT NULL,
  `field` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `display_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `required` tinyint(1) NOT NULL DEFAULT 0,
  `browse` tinyint(1) NOT NULL DEFAULT 1,
  `read` tinyint(1) NOT NULL DEFAULT 1,
  `edit` tinyint(1) NOT NULL DEFAULT 1,
  `add` tinyint(1) NOT NULL DEFAULT 1,
  `delete` tinyint(1) NOT NULL DEFAULT 1,
  `details` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `order` int(11) NOT NULL DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `data_rows`
--

INSERT INTO `data_rows` (`id`, `data_type_id`, `field`, `type`, `display_name`, `required`, `browse`, `read`, `edit`, `add`, `delete`, `details`, `order`) VALUES
(1, 1, 'id', 'number', 'ID', 1, 0, 0, 0, 0, 0, NULL, 1),
(2, 1, 'name', 'text', 'Name', 1, 1, 1, 1, 1, 1, NULL, 2),
(3, 1, 'email', 'text', 'Email', 1, 1, 1, 1, 1, 1, NULL, 3),
(4, 1, 'password', 'password', 'Password', 1, 0, 0, 1, 1, 0, NULL, 4),
(5, 1, 'remember_token', 'text', 'Remember Token', 0, 0, 0, 0, 0, 0, NULL, 5),
(6, 1, 'created_at', 'timestamp', 'Created At', 0, 1, 1, 0, 0, 0, NULL, 6),
(7, 1, 'updated_at', 'timestamp', 'Updated At', 0, 0, 0, 0, 0, 0, NULL, 7),
(8, 1, 'avatar', 'image', 'Avatar', 0, 1, 1, 1, 1, 1, NULL, 8),
(9, 1, 'user_belongsto_role_relationship', 'relationship', 'Role', 0, 1, 1, 1, 1, 0, '{\"model\":\"TCG\\\\Voyager\\\\Models\\\\Role\",\"table\":\"roles\",\"type\":\"belongsTo\",\"column\":\"role_id\",\"key\":\"id\",\"label\":\"display_name\",\"pivot_table\":\"roles\",\"pivot\":0}', 10),
(10, 1, 'user_belongstomany_role_relationship', 'relationship', 'Roles', 0, 1, 1, 1, 1, 0, '{\"model\":\"TCG\\\\Voyager\\\\Models\\\\Role\",\"table\":\"roles\",\"type\":\"belongsToMany\",\"column\":\"id\",\"key\":\"id\",\"label\":\"display_name\",\"pivot_table\":\"user_roles\",\"pivot\":\"1\",\"taggable\":\"0\"}', 11),
(11, 1, 'settings', 'hidden', 'Settings', 0, 0, 0, 0, 0, 0, NULL, 12),
(12, 2, 'id', 'number', 'ID', 1, 0, 0, 0, 0, 0, NULL, 1),
(13, 2, 'name', 'text', 'Name', 1, 1, 1, 1, 1, 1, NULL, 2),
(14, 2, 'created_at', 'timestamp', 'Created At', 0, 0, 0, 0, 0, 0, NULL, 3),
(15, 2, 'updated_at', 'timestamp', 'Updated At', 0, 0, 0, 0, 0, 0, NULL, 4),
(16, 3, 'id', 'number', 'ID', 1, 0, 0, 0, 0, 0, NULL, 1),
(17, 3, 'name', 'text', 'Name', 1, 1, 1, 1, 1, 1, NULL, 2),
(18, 3, 'created_at', 'timestamp', 'Created At', 0, 0, 0, 0, 0, 0, NULL, 3),
(19, 3, 'updated_at', 'timestamp', 'Updated At', 0, 0, 0, 0, 0, 0, NULL, 4),
(20, 3, 'display_name', 'text', 'Display Name', 1, 1, 1, 1, 1, 1, NULL, 5),
(21, 1, 'role_id', 'text', 'Role', 1, 1, 1, 1, 1, 1, NULL, 9),
(22, 4, 'id', 'number', 'ID', 1, 0, 0, 0, 0, 0, NULL, 1),
(23, 4, 'parent_id', 'select_dropdown', 'Parent', 0, 0, 1, 1, 1, 1, '{\"default\":\"\",\"null\":\"\",\"options\":{\"\":\"-- None --\"},\"relationship\":{\"key\":\"id\",\"label\":\"name\"}}', 2),
(24, 4, 'order', 'text', 'Order', 1, 1, 1, 1, 1, 1, '{\"default\":1}', 3),
(25, 4, 'name', 'text', 'Name', 1, 1, 1, 1, 1, 1, NULL, 4),
(26, 4, 'slug', 'text', 'Slug', 1, 1, 1, 1, 1, 1, '{\"slugify\":{\"origin\":\"name\"}}', 5),
(27, 4, 'created_at', 'timestamp', 'Created At', 0, 0, 1, 0, 0, 0, NULL, 6),
(28, 4, 'updated_at', 'timestamp', 'Updated At', 0, 0, 0, 0, 0, 0, NULL, 7),
(29, 5, 'id', 'number', 'ID', 1, 0, 0, 0, 0, 0, NULL, 1),
(30, 5, 'author_id', 'text', 'Author', 1, 0, 1, 1, 0, 1, NULL, 2),
(31, 5, 'category_id', 'text', 'Category', 1, 0, 1, 1, 1, 0, NULL, 3),
(32, 5, 'title', 'text', 'Title', 1, 1, 1, 1, 1, 1, NULL, 4),
(33, 5, 'excerpt', 'text_area', 'Excerpt', 1, 0, 1, 1, 1, 1, NULL, 5),
(34, 5, 'body', 'rich_text_box', 'Body', 1, 0, 1, 1, 1, 1, NULL, 6),
(35, 5, 'image', 'image', 'Post Image', 0, 1, 1, 1, 1, 1, '{\"resize\":{\"width\":\"1000\",\"height\":\"null\"},\"quality\":\"70%\",\"upsize\":true,\"thumbnails\":[{\"name\":\"medium\",\"scale\":\"50%\"},{\"name\":\"small\",\"scale\":\"25%\"},{\"name\":\"cropped\",\"crop\":{\"width\":\"300\",\"height\":\"250\"}}]}', 7),
(36, 5, 'slug', 'text', 'Slug', 1, 0, 1, 1, 1, 1, '{\"slugify\":{\"origin\":\"title\",\"forceUpdate\":true},\"validation\":{\"rule\":\"unique:posts,slug\"}}', 8),
(37, 5, 'meta_description', 'text_area', 'Meta Description', 1, 0, 1, 1, 1, 1, NULL, 9),
(38, 5, 'meta_keywords', 'text_area', 'Meta Keywords', 1, 0, 1, 1, 1, 1, NULL, 10),
(39, 5, 'status', 'select_dropdown', 'Status', 1, 1, 1, 1, 1, 1, '{\"default\":\"DRAFT\",\"options\":{\"PUBLISHED\":\"published\",\"DRAFT\":\"draft\",\"PENDING\":\"pending\"}}', 11),
(40, 5, 'created_at', 'timestamp', 'Created At', 0, 1, 1, 0, 0, 0, NULL, 12),
(41, 5, 'updated_at', 'timestamp', 'Updated At', 0, 0, 0, 0, 0, 0, NULL, 13),
(42, 5, 'seo_title', 'text', 'SEO Title', 0, 1, 1, 1, 1, 1, NULL, 14),
(43, 5, 'featured', 'checkbox', 'Featured', 1, 1, 1, 1, 1, 1, NULL, 15),
(44, 6, 'id', 'number', 'ID', 1, 0, 0, 0, 0, 0, NULL, 1),
(45, 6, 'author_id', 'text', 'Author', 1, 0, 0, 0, 0, 0, NULL, 2),
(46, 6, 'title', 'text', 'Title', 1, 1, 1, 1, 1, 1, NULL, 3),
(47, 6, 'excerpt', 'text_area', 'Excerpt', 1, 0, 1, 1, 1, 1, NULL, 4),
(48, 6, 'body', 'rich_text_box', 'Body', 1, 0, 1, 1, 1, 1, NULL, 5),
(49, 6, 'slug', 'text', 'Slug', 1, 0, 1, 1, 1, 1, '{\"slugify\":{\"origin\":\"title\"},\"validation\":{\"rule\":\"unique:pages,slug\"}}', 6),
(50, 6, 'meta_description', 'text', 'Meta Description', 1, 0, 1, 1, 1, 1, NULL, 7),
(51, 6, 'meta_keywords', 'text', 'Meta Keywords', 1, 0, 1, 1, 1, 1, NULL, 8),
(52, 6, 'status', 'select_dropdown', 'Status', 1, 1, 1, 1, 1, 1, '{\"default\":\"INACTIVE\",\"options\":{\"INACTIVE\":\"INACTIVE\",\"ACTIVE\":\"ACTIVE\"}}', 9),
(53, 6, 'created_at', 'timestamp', 'Created At', 1, 1, 1, 0, 0, 0, NULL, 10),
(54, 6, 'updated_at', 'timestamp', 'Updated At', 1, 0, 0, 0, 0, 0, NULL, 11),
(55, 6, 'image', 'image', 'Page Image', 0, 1, 1, 1, 1, 1, NULL, 12),
(56, 7, 'id', 'hidden', 'Id', 1, 0, 0, 0, 0, 0, '{}', 1),
(57, 7, 'created_at', 'timestamp', 'Created At', 0, 1, 1, 1, 0, 1, '{}', 5),
(58, 7, 'updated_at', 'timestamp', 'Updated At', 0, 0, 0, 0, 0, 0, '{}', 6),
(60, 7, 'descripcion', 'text', 'Descripcion', 0, 1, 1, 1, 1, 1, '{}', 2),
(61, 7, 'monto', 'text', 'Monto', 0, 1, 1, 1, 1, 1, '{}', 3),
(62, 7, 'user_id', 'number', 'User Id', 0, 1, 1, 1, 1, 1, '{}', 4),
(64, 8, 'id', 'text', 'Id', 1, 0, 0, 0, 0, 0, '{}', 1),
(65, 8, 'codigoaula', 'text', 'Codigoaula', 0, 1, 1, 1, 1, 1, '{}', 2),
(66, 8, 'edificio', 'text', 'Edificio', 0, 1, 1, 1, 1, 1, '{}', 3),
(67, 8, 'numero', 'number', 'Numero', 0, 1, 1, 1, 1, 1, '{}', 4),
(68, 8, 'estado', 'text', 'Estado', 0, 1, 1, 1, 1, 1, '{}', 5),
(69, 8, 'created_at', 'timestamp', 'Created At', 0, 1, 1, 1, 0, 1, '{}', 6),
(70, 8, 'updated_at', 'timestamp', 'Updated At', 0, 0, 0, 0, 0, 0, '{}', 7),
(71, 9, 'id', 'text', 'Id', 1, 0, 0, 0, 0, 0, '{}', 1),
(72, 9, 'codigociclo', 'text', 'Codigociclo', 0, 1, 1, 1, 1, 1, '{}', 2),
(73, 9, 'fechainicio', 'date', 'Fechainicio', 0, 1, 1, 1, 1, 1, '{}', 3),
(74, 9, 'fechafin', 'date', 'Fechafin', 0, 1, 1, 1, 1, 1, '{}', 4),
(75, 9, 'estado', 'text', 'Estado', 0, 1, 1, 1, 1, 1, '{}', 5),
(76, 9, 'created_at', 'timestamp', 'Created At', 0, 1, 1, 1, 0, 1, '{}', 6),
(77, 9, 'updated_at', 'timestamp', 'Updated At', 0, 0, 0, 0, 0, 0, '{}', 7),
(78, 10, 'id', 'text', 'Id', 1, 0, 0, 0, 0, 0, '{}', 1),
(79, 10, 'dia', 'number', 'Dia', 0, 1, 1, 1, 1, 1, '{}', 2),
(80, 10, 'created_at', 'timestamp', 'Created At', 0, 1, 1, 1, 0, 1, '{}', 3),
(81, 10, 'updated_at', 'timestamp', 'Updated At', 0, 0, 0, 0, 0, 0, '{}', 4),
(82, 11, 'id', 'text', 'Id', 1, 0, 0, 0, 0, 0, '{}', 1),
(83, 11, 'codigodocente', 'text', 'Codigodocente', 0, 1, 1, 1, 1, 1, '{}', 2),
(84, 11, 'idarancel', 'number', 'Idarancel', 0, 1, 1, 1, 1, 1, '{}', 3),
(85, 11, 'nombres', 'text', 'Nombres', 0, 1, 1, 1, 1, 1, '{}', 4),
(86, 11, 'apellidos', 'text', 'Apellidos', 0, 1, 1, 1, 1, 1, '{}', 5),
(87, 11, 'estado', 'text', 'Estado', 0, 1, 1, 1, 1, 1, '{}', 6),
(88, 11, 'created_at', 'timestamp', 'Created At', 0, 1, 1, 1, 0, 1, '{}', 7),
(89, 11, 'updated_at', 'timestamp', 'Updated At', 0, 0, 0, 0, 0, 0, '{}', 8),
(90, 11, 'docente_belongsto_arancele_relationship', 'relationship', 'aranceles', 0, 1, 1, 1, 1, 1, '{\"model\":\"App\\\\Arancele\",\"table\":\"aranceles\",\"type\":\"belongsTo\",\"column\":\"idarancel\",\"key\":\"id\",\"label\":\"monto\",\"pivot_table\":\"aranceles\",\"pivot\":\"0\",\"taggable\":\"0\"}', 9),
(91, 12, 'id', 'text', 'Id', 1, 0, 0, 0, 0, 0, '{}', 1),
(92, 12, 'idfacultad', 'number', 'Idfacultad', 0, 1, 1, 1, 1, 1, '{}', 2),
(93, 12, 'descripcion', 'text', 'Descripcion', 0, 1, 1, 1, 1, 1, '{}', 3),
(94, 12, 'estado', 'text', 'Estado', 0, 1, 1, 1, 1, 1, '{}', 4),
(95, 12, 'created_at', 'timestamp', 'Created At', 0, 1, 1, 1, 0, 1, '{}', 5),
(96, 12, 'updated_at', 'timestamp', 'Updated At', 0, 0, 0, 0, 0, 0, '{}', 6),
(97, 13, 'id', 'text', 'Id', 1, 0, 0, 0, 0, 0, '{}', 1),
(98, 13, 'idciclo', 'number', 'Idciclo', 0, 1, 1, 1, 1, 1, '{}', 2),
(99, 13, 'idmotivo', 'number', 'Idmotivo', 0, 1, 1, 1, 1, 1, '{}', 3),
(100, 13, 'comentario', 'text', 'Comentario', 0, 1, 1, 1, 1, 1, '{}', 4),
(101, 13, 'fecha', 'date', 'Fecha', 0, 1, 1, 1, 1, 1, '{}', 5),
(102, 13, 'horainicio', 'time', 'Horainicio', 0, 1, 1, 1, 1, 1, '{}', 6),
(103, 13, 'horafin', 'time', 'Horafin', 0, 1, 1, 1, 1, 1, '{}', 7),
(104, 13, 'created_at', 'timestamp', 'Created At', 0, 1, 1, 1, 0, 1, '{}', 8),
(105, 13, 'updated_at', 'timestamp', 'Updated At', 0, 0, 0, 0, 0, 0, '{}', 9),
(106, 14, 'id', 'hidden', 'Id', 1, 0, 0, 0, 0, 0, '{}', 1),
(107, 14, 'descripcion', 'text', 'Descripcion', 0, 1, 1, 1, 1, 1, '{}', 2),
(108, 14, 'estado', 'text', 'Estado', 0, 1, 1, 1, 1, 1, '{}', 3),
(109, 14, 'created_at', 'timestamp', 'Created At', 0, 1, 1, 1, 0, 1, '{}', 4),
(110, 14, 'updated_at', 'timestamp', 'Updated At', 0, 0, 0, 0, 0, 0, '{}', 5),
(111, 15, 'id', 'hidden', 'Id', 1, 0, 0, 0, 0, 0, '{}', 1),
(112, 15, 'idescuela', 'number', 'Idescuela', 0, 1, 1, 1, 1, 1, '{}', 2),
(113, 15, 'descripcion', 'text', 'Descripcion', 0, 1, 1, 1, 1, 1, '{}', 3),
(114, 15, 'estado', 'text', 'Estado', 0, 1, 1, 1, 1, 1, '{}', 4),
(115, 15, 'created_at', 'timestamp', 'Created At', 0, 1, 1, 1, 0, 1, '{}', 5),
(116, 15, 'updated_at', 'timestamp', 'Updated At', 0, 0, 0, 0, 0, 0, '{}', 6);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `data_types`
--

CREATE TABLE `data_types` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `display_name_singular` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `display_name_plural` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `icon` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `model_name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `policy_name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `controller` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `generate_permissions` tinyint(1) NOT NULL DEFAULT 0,
  `server_side` tinyint(4) NOT NULL DEFAULT 0,
  `details` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `data_types`
--

INSERT INTO `data_types` (`id`, `name`, `slug`, `display_name_singular`, `display_name_plural`, `icon`, `model_name`, `policy_name`, `controller`, `description`, `generate_permissions`, `server_side`, `details`, `created_at`, `updated_at`) VALUES
(1, 'users', 'users', 'User', 'Users', 'voyager-person', 'TCG\\Voyager\\Models\\User', 'TCG\\Voyager\\Policies\\UserPolicy', 'TCG\\Voyager\\Http\\Controllers\\VoyagerUserController', '', 1, 0, NULL, '2020-03-22 08:32:04', '2020-03-22 08:32:04'),
(2, 'menus', 'menus', 'Menu', 'Menus', 'voyager-list', 'TCG\\Voyager\\Models\\Menu', NULL, '', '', 1, 0, NULL, '2020-03-22 08:32:04', '2020-03-22 08:32:04'),
(3, 'roles', 'roles', 'Role', 'Roles', 'voyager-lock', 'TCG\\Voyager\\Models\\Role', NULL, 'TCG\\Voyager\\Http\\Controllers\\VoyagerRoleController', '', 1, 0, NULL, '2020-03-22 08:32:05', '2020-03-22 08:32:05'),
(4, 'categories', 'categories', 'Category', 'Categories', 'voyager-categories', 'TCG\\Voyager\\Models\\Category', NULL, '', '', 1, 0, NULL, '2020-03-22 08:32:05', '2020-03-22 08:32:05'),
(5, 'posts', 'posts', 'Post', 'Posts', 'voyager-news', 'TCG\\Voyager\\Models\\Post', 'TCG\\Voyager\\Policies\\PostPolicy', '', '', 1, 0, NULL, '2020-03-22 08:32:05', '2020-03-22 08:32:05'),
(6, 'pages', 'pages', 'Page', 'Pages', 'voyager-file-text', 'TCG\\Voyager\\Models\\Page', NULL, '', '', 1, 0, NULL, '2020-03-22 08:32:05', '2020-03-22 08:32:05'),
(7, 'aranceles', 'aranceles', 'Arancele', 'Aranceles', NULL, 'App\\Arancele', NULL, NULL, NULL, 1, 0, '{\"order_column\":null,\"order_display_column\":null,\"order_direction\":\"asc\",\"default_search_key\":null,\"scope\":null}', '2020-03-22 09:46:27', '2020-03-22 23:35:23'),
(8, 'aulas', 'aulas', 'Aula', 'Aulas', NULL, 'App\\Aula', NULL, NULL, NULL, 1, 0, '{\"order_column\":null,\"order_display_column\":null,\"order_direction\":\"asc\",\"default_search_key\":null}', '2020-03-22 21:36:43', '2020-03-22 21:36:43'),
(9, 'ciclos', 'ciclos', 'Ciclo', 'Ciclos', NULL, 'App\\Ciclo', NULL, NULL, NULL, 1, 0, '{\"order_column\":null,\"order_display_column\":null,\"order_direction\":\"asc\",\"default_search_key\":null}', '2020-03-22 21:41:17', '2020-03-22 21:41:17'),
(10, 'dias', 'dias', 'Dia', 'Dias', NULL, 'App\\Dia', NULL, NULL, NULL, 1, 0, '{\"order_column\":null,\"order_display_column\":null,\"order_direction\":\"asc\",\"default_search_key\":null}', '2020-03-22 23:20:49', '2020-03-22 23:20:49'),
(11, 'docentes', 'docentes', 'Docente', 'Docentes', NULL, 'App\\Docente', NULL, NULL, NULL, 1, 0, '{\"order_column\":null,\"order_display_column\":null,\"order_direction\":\"asc\",\"default_search_key\":null,\"scope\":null}', '2020-03-22 23:35:03', '2020-03-22 23:37:01'),
(12, 'escuelas', 'escuelas', 'Escuela', 'Escuelas', NULL, 'App\\Escuela', NULL, NULL, NULL, 1, 0, '{\"order_column\":null,\"order_display_column\":null,\"order_direction\":\"asc\",\"default_search_key\":null}', '2020-03-22 23:42:56', '2020-03-22 23:42:56'),
(13, 'excepciones', 'excepciones', 'Excepcione', 'Excepciones', NULL, 'App\\Excepcione', NULL, NULL, NULL, 1, 0, '{\"order_column\":null,\"order_display_column\":null,\"order_direction\":\"asc\",\"default_search_key\":null}', '2020-03-23 00:05:10', '2020-03-23 00:05:10'),
(14, 'facultades', 'facultades', 'Facultade', 'Facultades', NULL, 'App\\Facultade', NULL, NULL, NULL, 1, 0, '{\"order_column\":null,\"order_display_column\":null,\"order_direction\":\"asc\",\"default_search_key\":null}', '2020-03-23 02:51:14', '2020-03-23 02:51:14'),
(15, 'grupos_materias', 'grupos-materias', 'Grupos Materia', 'Grupos Materias', NULL, 'App\\GruposMateria', NULL, NULL, NULL, 1, 0, '{\"order_column\":null,\"order_display_column\":null,\"order_direction\":\"asc\",\"default_search_key\":null}', '2020-03-23 02:59:25', '2020-03-23 02:59:25');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `dias`
--

CREATE TABLE `dias` (
  `id` int(10) UNSIGNED NOT NULL,
  `dia` int(11) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `docentes`
--

CREATE TABLE `docentes` (
  `id` int(10) UNSIGNED NOT NULL,
  `codigodocente` varchar(10) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `idarancel` int(11) DEFAULT NULL,
  `nombres` varchar(80) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `apellidos` varchar(80) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `estado` varchar(20) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `escuelas`
--

CREATE TABLE `escuelas` (
  `id` int(10) UNSIGNED NOT NULL,
  `idfacultad` int(11) DEFAULT NULL,
  `descripcion` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `estado` varchar(20) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `excepciones`
--

CREATE TABLE `excepciones` (
  `id` int(10) UNSIGNED NOT NULL,
  `idciclo` int(11) DEFAULT NULL,
  `idmotivo` int(11) DEFAULT NULL,
  `comentario` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `fecha` date DEFAULT NULL,
  `horainicio` time DEFAULT NULL,
  `horafin` time DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `facultades`
--

CREATE TABLE `facultades` (
  `id` int(10) UNSIGNED NOT NULL,
  `descripcion` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `estado` varchar(20) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `failed_jobs`
--

CREATE TABLE `failed_jobs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `connection` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `queue` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `exception` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `grupos_materias`
--

CREATE TABLE `grupos_materias` (
  `id` int(10) UNSIGNED NOT NULL,
  `idescuela` int(11) DEFAULT NULL,
  `descripcion` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `estado` varchar(20) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `menus`
--

CREATE TABLE `menus` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `menus`
--

INSERT INTO `menus` (`id`, `name`, `created_at`, `updated_at`) VALUES
(1, 'admin', '2020-03-22 08:32:05', '2020-03-22 08:32:05');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `menu_items`
--

CREATE TABLE `menu_items` (
  `id` int(10) UNSIGNED NOT NULL,
  `menu_id` int(10) UNSIGNED DEFAULT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `url` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `target` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '_self',
  `icon_class` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `color` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `parent_id` int(11) DEFAULT NULL,
  `order` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `route` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `parameters` text COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `menu_items`
--

INSERT INTO `menu_items` (`id`, `menu_id`, `title`, `url`, `target`, `icon_class`, `color`, `parent_id`, `order`, `created_at`, `updated_at`, `route`, `parameters`) VALUES
(1, 1, 'Dashboard', '', '_self', 'voyager-boat', NULL, NULL, 1, '2020-03-22 08:32:05', '2020-03-22 08:32:05', 'voyager.dashboard', NULL),
(2, 1, 'Media', '', '_self', 'voyager-images', NULL, NULL, 4, '2020-03-22 08:32:05', '2020-03-22 23:51:53', 'voyager.media.index', NULL),
(3, 1, 'Users', '', '_self', 'voyager-person', NULL, NULL, 3, '2020-03-22 08:32:05', '2020-03-22 08:32:05', 'voyager.users.index', NULL),
(4, 1, 'Roles', '', '_self', 'voyager-lock', NULL, NULL, 2, '2020-03-22 08:32:05', '2020-03-22 08:32:05', 'voyager.roles.index', NULL),
(5, 1, 'Tools', '', '_self', 'voyager-tools', NULL, NULL, 6, '2020-03-22 08:32:05', '2020-03-22 23:53:12', NULL, NULL),
(6, 1, 'Menu Builder', '', '_self', 'voyager-list', NULL, 5, 1, '2020-03-22 08:32:05', '2020-03-22 23:51:53', 'voyager.menus.index', NULL),
(7, 1, 'Database', '', '_self', 'voyager-data', NULL, 5, 2, '2020-03-22 08:32:05', '2020-03-22 23:52:38', 'voyager.database.index', NULL),
(8, 1, 'Compass', '', '_self', 'voyager-compass', NULL, 5, 3, '2020-03-22 08:32:05', '2020-03-22 23:52:38', 'voyager.compass.index', NULL),
(9, 1, 'BREAD', '', '_self', 'voyager-bread', NULL, 5, 4, '2020-03-22 08:32:05', '2020-03-22 23:52:38', 'voyager.bread.index', NULL),
(10, 1, 'Settings', '', '_self', 'voyager-settings', NULL, NULL, 7, '2020-03-22 08:32:05', '2020-03-22 23:53:12', 'voyager.settings.index', NULL),
(14, 1, 'Hooks', '', '_self', 'voyager-hook', NULL, 5, 5, '2020-03-22 08:32:05', '2020-03-22 23:52:38', 'voyager.hooks', NULL),
(15, 1, 'Aranceles', '', '_self', 'voyager-credit-card', '#000000', 21, 1, '2020-03-22 09:46:27', '2020-03-22 23:53:12', 'voyager.aranceles.index', 'null'),
(16, 1, 'Aulas', '', '_self', 'voyager-study', '#000000', 21, 2, '2020-03-22 21:36:43', '2020-03-22 23:53:23', 'voyager.aulas.index', 'null'),
(17, 1, 'Ciclos', '', '_self', 'voyager-calendar', '#000000', 21, 3, '2020-03-22 21:41:17', '2020-03-22 23:53:49', 'voyager.ciclos.index', 'null'),
(18, 1, 'Dias', '', '_self', 'voyager-window-list', '#000000', 21, 4, '2020-03-22 23:20:49', '2020-03-22 23:53:49', 'voyager.dias.index', 'null'),
(19, 1, 'Docentes', '', '_self', 'voyager-group', '#000000', 21, 5, '2020-03-22 23:35:03', '2020-03-22 23:53:49', 'voyager.docentes.index', 'null'),
(20, 1, 'Escuelas', '', '_self', 'voyager-company', '#000000', 21, 6, '2020-03-22 23:42:56', '2020-03-22 23:53:57', 'voyager.escuelas.index', 'null'),
(21, 1, 'UTEC', '', '_self', 'voyager-home', '#000000', NULL, 5, '2020-03-22 23:51:32', '2020-03-22 23:56:16', NULL, ''),
(22, 1, 'Excepciones', '', '_self', NULL, NULL, NULL, 8, '2020-03-23 00:05:10', '2020-03-23 00:05:10', 'voyager.excepciones.index', NULL),
(23, 1, 'Facultades', '', '_self', NULL, NULL, NULL, 9, '2020-03-23 02:51:14', '2020-03-23 02:51:14', 'voyager.facultades.index', NULL),
(24, 1, 'Grupos Materias', '', '_self', NULL, NULL, NULL, 10, '2020-03-23 02:59:25', '2020-03-23 02:59:25', 'voyager.grupos-materias.index', NULL);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2014_10_12_000000_create_users_table', 1),
(2, '2014_10_12_100000_create_password_resets_table', 1),
(3, '2016_01_01_000000_add_voyager_user_fields', 1),
(4, '2016_01_01_000000_create_data_types_table', 1),
(5, '2016_05_19_173453_create_menu_table', 1),
(6, '2016_10_21_190000_create_roles_table', 1),
(7, '2016_10_21_190000_create_settings_table', 1),
(8, '2016_11_30_135954_create_permission_table', 1),
(9, '2016_11_30_141208_create_permission_role_table', 1),
(10, '2016_12_26_201236_data_types__add__server_side', 1),
(11, '2017_01_13_000000_add_route_to_menu_items_table', 1),
(12, '2017_01_14_005015_create_translations_table', 1),
(13, '2017_01_15_000000_make_table_name_nullable_in_permissions_table', 1),
(14, '2017_03_06_000000_add_controller_to_data_types_table', 1),
(15, '2017_04_21_000000_add_order_to_data_rows_table', 1),
(16, '2017_07_05_210000_add_policyname_to_data_types_table', 1),
(17, '2017_08_05_000000_add_group_to_settings_table', 1),
(18, '2017_11_26_013050_add_user_role_relationship', 1),
(19, '2017_11_26_015000_create_user_roles_table', 1),
(20, '2018_03_11_000000_add_user_settings', 1),
(21, '2018_03_14_000000_add_details_to_data_types_table', 1),
(22, '2018_03_16_000000_make_settings_value_nullable', 1),
(23, '2019_08_19_000000_create_failed_jobs_table', 1),
(24, '2020_03_18_022637_create_budgets_table', 1);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `permissions`
--

CREATE TABLE `permissions` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `key` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `table_name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `permissions`
--

INSERT INTO `permissions` (`id`, `key`, `table_name`, `created_at`, `updated_at`) VALUES
(1, 'browse_admin', NULL, '2020-03-22 08:32:05', '2020-03-22 08:32:05'),
(2, 'browse_bread', NULL, '2020-03-22 08:32:05', '2020-03-22 08:32:05'),
(3, 'browse_database', NULL, '2020-03-22 08:32:05', '2020-03-22 08:32:05'),
(4, 'browse_media', NULL, '2020-03-22 08:32:05', '2020-03-22 08:32:05'),
(5, 'browse_compass', NULL, '2020-03-22 08:32:05', '2020-03-22 08:32:05'),
(6, 'browse_menus', 'menus', '2020-03-22 08:32:05', '2020-03-22 08:32:05'),
(7, 'read_menus', 'menus', '2020-03-22 08:32:05', '2020-03-22 08:32:05'),
(8, 'edit_menus', 'menus', '2020-03-22 08:32:05', '2020-03-22 08:32:05'),
(9, 'add_menus', 'menus', '2020-03-22 08:32:05', '2020-03-22 08:32:05'),
(10, 'delete_menus', 'menus', '2020-03-22 08:32:05', '2020-03-22 08:32:05'),
(11, 'browse_roles', 'roles', '2020-03-22 08:32:05', '2020-03-22 08:32:05'),
(12, 'read_roles', 'roles', '2020-03-22 08:32:05', '2020-03-22 08:32:05'),
(13, 'edit_roles', 'roles', '2020-03-22 08:32:05', '2020-03-22 08:32:05'),
(14, 'add_roles', 'roles', '2020-03-22 08:32:05', '2020-03-22 08:32:05'),
(15, 'delete_roles', 'roles', '2020-03-22 08:32:05', '2020-03-22 08:32:05'),
(16, 'browse_users', 'users', '2020-03-22 08:32:05', '2020-03-22 08:32:05'),
(17, 'read_users', 'users', '2020-03-22 08:32:05', '2020-03-22 08:32:05'),
(18, 'edit_users', 'users', '2020-03-22 08:32:05', '2020-03-22 08:32:05'),
(19, 'add_users', 'users', '2020-03-22 08:32:05', '2020-03-22 08:32:05'),
(20, 'delete_users', 'users', '2020-03-22 08:32:05', '2020-03-22 08:32:05'),
(21, 'browse_settings', 'settings', '2020-03-22 08:32:05', '2020-03-22 08:32:05'),
(22, 'read_settings', 'settings', '2020-03-22 08:32:05', '2020-03-22 08:32:05'),
(23, 'edit_settings', 'settings', '2020-03-22 08:32:05', '2020-03-22 08:32:05'),
(24, 'add_settings', 'settings', '2020-03-22 08:32:05', '2020-03-22 08:32:05'),
(25, 'delete_settings', 'settings', '2020-03-22 08:32:05', '2020-03-22 08:32:05'),
(26, 'browse_categories', 'categories', '2020-03-22 08:32:05', '2020-03-22 08:32:05'),
(27, 'read_categories', 'categories', '2020-03-22 08:32:05', '2020-03-22 08:32:05'),
(28, 'edit_categories', 'categories', '2020-03-22 08:32:05', '2020-03-22 08:32:05'),
(29, 'add_categories', 'categories', '2020-03-22 08:32:05', '2020-03-22 08:32:05'),
(30, 'delete_categories', 'categories', '2020-03-22 08:32:05', '2020-03-22 08:32:05'),
(31, 'browse_posts', 'posts', '2020-03-22 08:32:05', '2020-03-22 08:32:05'),
(32, 'read_posts', 'posts', '2020-03-22 08:32:05', '2020-03-22 08:32:05'),
(33, 'edit_posts', 'posts', '2020-03-22 08:32:05', '2020-03-22 08:32:05'),
(34, 'add_posts', 'posts', '2020-03-22 08:32:05', '2020-03-22 08:32:05'),
(35, 'delete_posts', 'posts', '2020-03-22 08:32:05', '2020-03-22 08:32:05'),
(36, 'browse_pages', 'pages', '2020-03-22 08:32:05', '2020-03-22 08:32:05'),
(37, 'read_pages', 'pages', '2020-03-22 08:32:05', '2020-03-22 08:32:05'),
(38, 'edit_pages', 'pages', '2020-03-22 08:32:05', '2020-03-22 08:32:05'),
(39, 'add_pages', 'pages', '2020-03-22 08:32:05', '2020-03-22 08:32:05'),
(40, 'delete_pages', 'pages', '2020-03-22 08:32:05', '2020-03-22 08:32:05'),
(41, 'browse_hooks', NULL, '2020-03-22 08:32:05', '2020-03-22 08:32:05'),
(42, 'browse_aranceles', 'aranceles', '2020-03-22 09:46:27', '2020-03-22 09:46:27'),
(43, 'read_aranceles', 'aranceles', '2020-03-22 09:46:27', '2020-03-22 09:46:27'),
(44, 'edit_aranceles', 'aranceles', '2020-03-22 09:46:27', '2020-03-22 09:46:27'),
(45, 'add_aranceles', 'aranceles', '2020-03-22 09:46:27', '2020-03-22 09:46:27'),
(46, 'delete_aranceles', 'aranceles', '2020-03-22 09:46:27', '2020-03-22 09:46:27'),
(47, 'browse_aulas', 'aulas', '2020-03-22 21:36:43', '2020-03-22 21:36:43'),
(48, 'read_aulas', 'aulas', '2020-03-22 21:36:43', '2020-03-22 21:36:43'),
(49, 'edit_aulas', 'aulas', '2020-03-22 21:36:43', '2020-03-22 21:36:43'),
(50, 'add_aulas', 'aulas', '2020-03-22 21:36:43', '2020-03-22 21:36:43'),
(51, 'delete_aulas', 'aulas', '2020-03-22 21:36:43', '2020-03-22 21:36:43'),
(52, 'browse_ciclos', 'ciclos', '2020-03-22 21:41:17', '2020-03-22 21:41:17'),
(53, 'read_ciclos', 'ciclos', '2020-03-22 21:41:17', '2020-03-22 21:41:17'),
(54, 'edit_ciclos', 'ciclos', '2020-03-22 21:41:17', '2020-03-22 21:41:17'),
(55, 'add_ciclos', 'ciclos', '2020-03-22 21:41:17', '2020-03-22 21:41:17'),
(56, 'delete_ciclos', 'ciclos', '2020-03-22 21:41:17', '2020-03-22 21:41:17'),
(57, 'browse_dias', 'dias', '2020-03-22 23:20:49', '2020-03-22 23:20:49'),
(58, 'read_dias', 'dias', '2020-03-22 23:20:49', '2020-03-22 23:20:49'),
(59, 'edit_dias', 'dias', '2020-03-22 23:20:49', '2020-03-22 23:20:49'),
(60, 'add_dias', 'dias', '2020-03-22 23:20:49', '2020-03-22 23:20:49'),
(61, 'delete_dias', 'dias', '2020-03-22 23:20:49', '2020-03-22 23:20:49'),
(62, 'browse_docentes', 'docentes', '2020-03-22 23:35:03', '2020-03-22 23:35:03'),
(63, 'read_docentes', 'docentes', '2020-03-22 23:35:03', '2020-03-22 23:35:03'),
(64, 'edit_docentes', 'docentes', '2020-03-22 23:35:03', '2020-03-22 23:35:03'),
(65, 'add_docentes', 'docentes', '2020-03-22 23:35:03', '2020-03-22 23:35:03'),
(66, 'delete_docentes', 'docentes', '2020-03-22 23:35:03', '2020-03-22 23:35:03'),
(67, 'browse_escuelas', 'escuelas', '2020-03-22 23:42:56', '2020-03-22 23:42:56'),
(68, 'read_escuelas', 'escuelas', '2020-03-22 23:42:56', '2020-03-22 23:42:56'),
(69, 'edit_escuelas', 'escuelas', '2020-03-22 23:42:56', '2020-03-22 23:42:56'),
(70, 'add_escuelas', 'escuelas', '2020-03-22 23:42:56', '2020-03-22 23:42:56'),
(71, 'delete_escuelas', 'escuelas', '2020-03-22 23:42:56', '2020-03-22 23:42:56'),
(72, 'browse_excepciones', 'excepciones', '2020-03-23 00:05:10', '2020-03-23 00:05:10'),
(73, 'read_excepciones', 'excepciones', '2020-03-23 00:05:10', '2020-03-23 00:05:10'),
(74, 'edit_excepciones', 'excepciones', '2020-03-23 00:05:10', '2020-03-23 00:05:10'),
(75, 'add_excepciones', 'excepciones', '2020-03-23 00:05:10', '2020-03-23 00:05:10'),
(76, 'delete_excepciones', 'excepciones', '2020-03-23 00:05:10', '2020-03-23 00:05:10'),
(77, 'browse_facultades', 'facultades', '2020-03-23 02:51:14', '2020-03-23 02:51:14'),
(78, 'read_facultades', 'facultades', '2020-03-23 02:51:14', '2020-03-23 02:51:14'),
(79, 'edit_facultades', 'facultades', '2020-03-23 02:51:14', '2020-03-23 02:51:14'),
(80, 'add_facultades', 'facultades', '2020-03-23 02:51:14', '2020-03-23 02:51:14'),
(81, 'delete_facultades', 'facultades', '2020-03-23 02:51:14', '2020-03-23 02:51:14'),
(82, 'browse_grupos_materias', 'grupos_materias', '2020-03-23 02:59:25', '2020-03-23 02:59:25'),
(83, 'read_grupos_materias', 'grupos_materias', '2020-03-23 02:59:25', '2020-03-23 02:59:25'),
(84, 'edit_grupos_materias', 'grupos_materias', '2020-03-23 02:59:25', '2020-03-23 02:59:25'),
(85, 'add_grupos_materias', 'grupos_materias', '2020-03-23 02:59:25', '2020-03-23 02:59:25'),
(86, 'delete_grupos_materias', 'grupos_materias', '2020-03-23 02:59:25', '2020-03-23 02:59:25');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `permission_role`
--

CREATE TABLE `permission_role` (
  `permission_id` bigint(20) UNSIGNED NOT NULL,
  `role_id` bigint(20) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `permission_role`
--

INSERT INTO `permission_role` (`permission_id`, `role_id`) VALUES
(1, 1),
(2, 1),
(3, 1),
(4, 1),
(5, 1),
(6, 1),
(7, 1),
(8, 1),
(9, 1),
(10, 1),
(11, 1),
(12, 1),
(13, 1),
(14, 1),
(15, 1),
(16, 1),
(17, 1),
(18, 1),
(19, 1),
(20, 1),
(21, 1),
(22, 1),
(23, 1),
(24, 1),
(25, 1),
(26, 1),
(27, 1),
(28, 1),
(29, 1),
(30, 1),
(31, 1),
(32, 1),
(33, 1),
(34, 1),
(35, 1),
(36, 1),
(37, 1),
(38, 1),
(39, 1),
(40, 1),
(41, 1),
(42, 1),
(43, 1),
(44, 1),
(45, 1),
(46, 1),
(47, 1),
(48, 1),
(49, 1),
(50, 1),
(51, 1),
(52, 1),
(53, 1),
(54, 1),
(55, 1),
(56, 1),
(57, 1),
(58, 1),
(59, 1),
(60, 1),
(61, 1),
(62, 1),
(63, 1),
(64, 1),
(65, 1),
(66, 1),
(67, 1),
(68, 1),
(69, 1),
(70, 1),
(71, 1),
(72, 1),
(73, 1),
(74, 1),
(75, 1),
(76, 1),
(77, 1),
(78, 1),
(79, 1),
(80, 1),
(81, 1),
(82, 1),
(83, 1),
(84, 1),
(85, 1),
(86, 1);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `roles`
--

CREATE TABLE `roles` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `display_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `roles`
--

INSERT INTO `roles` (`id`, `name`, `display_name`, `created_at`, `updated_at`) VALUES
(1, 'admin', 'Administrator', '2020-03-22 09:10:53', '2020-03-22 09:10:53'),
(2, 'user', 'Normal User', '2020-03-22 08:32:05', '2020-03-22 08:32:05');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `settings`
--

CREATE TABLE `settings` (
  `id` int(10) UNSIGNED NOT NULL,
  `key` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `display_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `value` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `details` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `order` int(11) NOT NULL DEFAULT 1,
  `group` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `settings`
--

INSERT INTO `settings` (`id`, `key`, `display_name`, `value`, `details`, `type`, `order`, `group`) VALUES
(1, 'site.title', 'Site Title', 'Site Title', '', 'text', 1, 'Site'),
(2, 'site.description', 'Site Description', 'Site Description', '', 'text', 2, 'Site'),
(3, 'site.logo', 'Site Logo', '', '', 'image', 3, 'Site'),
(4, 'site.google_analytics_tracking_id', 'Google Analytics Tracking ID', '', '', 'text', 4, 'Site'),
(5, 'admin.bg_image', 'Admin Background Image', '', '', 'image', 5, 'Admin'),
(6, 'admin.title', 'Admin Title', 'Voyager', '', 'text', 1, 'Admin'),
(7, 'admin.description', 'Admin Description', 'Welcome to Voyager. The Missing Admin for Laravel', '', 'text', 2, 'Admin'),
(8, 'admin.loader', 'Admin Loader', '', '', 'image', 3, 'Admin'),
(9, 'admin.icon_image', 'Admin Icon Image', '', '', 'image', 4, 'Admin'),
(10, 'admin.google_analytics_client_id', 'Google Analytics Client ID (used for admin dashboard)', '', '', 'text', 1, 'Admin');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `translations`
--

CREATE TABLE `translations` (
  `id` int(10) UNSIGNED NOT NULL,
  `table_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `column_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `foreign_key` int(10) UNSIGNED NOT NULL,
  `locale` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `value` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `role_id` bigint(20) UNSIGNED DEFAULT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `avatar` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT 'users/default.png',
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `settings` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `users`
--

INSERT INTO `users` (`id`, `role_id`, `name`, `email`, `avatar`, `email_verified_at`, `password`, `remember_token`, `settings`, `created_at`, `updated_at`) VALUES
(1, 1, 'Rene', 'rene@gmail.com', 'users/default.png', NULL, '$2y$10$bks1xa7NfNpEPq.jOtdg4.ngx.vAd7qqQGu3lrCFHAAMKtWH5eHA.', NULL, NULL, '2020-03-22 09:10:53', '2020-03-22 09:10:53');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `user_roles`
--

CREATE TABLE `user_roles` (
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `role_id` bigint(20) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `aranceles`
--
ALTER TABLE `aranceles`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `aulas`
--
ALTER TABLE `aulas`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `ciclos`
--
ALTER TABLE `ciclos`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `data_rows`
--
ALTER TABLE `data_rows`
  ADD PRIMARY KEY (`id`),
  ADD KEY `data_rows_data_type_id_foreign` (`data_type_id`);

--
-- Indices de la tabla `data_types`
--
ALTER TABLE `data_types`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `data_types_name_unique` (`name`),
  ADD UNIQUE KEY `data_types_slug_unique` (`slug`);

--
-- Indices de la tabla `dias`
--
ALTER TABLE `dias`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `docentes`
--
ALTER TABLE `docentes`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `escuelas`
--
ALTER TABLE `escuelas`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `excepciones`
--
ALTER TABLE `excepciones`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `facultades`
--
ALTER TABLE `facultades`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `grupos_materias`
--
ALTER TABLE `grupos_materias`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `menus`
--
ALTER TABLE `menus`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `menus_name_unique` (`name`);

--
-- Indices de la tabla `menu_items`
--
ALTER TABLE `menu_items`
  ADD PRIMARY KEY (`id`),
  ADD KEY `menu_items_menu_id_foreign` (`menu_id`);

--
-- Indices de la tabla `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`);

--
-- Indices de la tabla `permissions`
--
ALTER TABLE `permissions`
  ADD PRIMARY KEY (`id`),
  ADD KEY `permissions_key_index` (`key`);

--
-- Indices de la tabla `permission_role`
--
ALTER TABLE `permission_role`
  ADD PRIMARY KEY (`permission_id`,`role_id`),
  ADD KEY `permission_role_permission_id_index` (`permission_id`),
  ADD KEY `permission_role_role_id_index` (`role_id`);

--
-- Indices de la tabla `roles`
--
ALTER TABLE `roles`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `roles_name_unique` (`name`);

--
-- Indices de la tabla `settings`
--
ALTER TABLE `settings`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `settings_key_unique` (`key`);

--
-- Indices de la tabla `translations`
--
ALTER TABLE `translations`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `translations_table_name_column_name_foreign_key_locale_unique` (`table_name`,`column_name`,`foreign_key`,`locale`);

--
-- Indices de la tabla `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`),
  ADD KEY `users_role_id_foreign` (`role_id`);

--
-- Indices de la tabla `user_roles`
--
ALTER TABLE `user_roles`
  ADD PRIMARY KEY (`user_id`,`role_id`),
  ADD KEY `user_roles_user_id_index` (`user_id`),
  ADD KEY `user_roles_role_id_index` (`role_id`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `aranceles`
--
ALTER TABLE `aranceles`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT de la tabla `aulas`
--
ALTER TABLE `aulas`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `ciclos`
--
ALTER TABLE `ciclos`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `data_rows`
--
ALTER TABLE `data_rows`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=117;

--
-- AUTO_INCREMENT de la tabla `data_types`
--
ALTER TABLE `data_types`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT de la tabla `dias`
--
ALTER TABLE `dias`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT de la tabla `docentes`
--
ALTER TABLE `docentes`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `escuelas`
--
ALTER TABLE `escuelas`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `excepciones`
--
ALTER TABLE `excepciones`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `facultades`
--
ALTER TABLE `facultades`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `grupos_materias`
--
ALTER TABLE `grupos_materias`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `menus`
--
ALTER TABLE `menus`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT de la tabla `menu_items`
--
ALTER TABLE `menu_items`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=25;

--
-- AUTO_INCREMENT de la tabla `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=25;

--
-- AUTO_INCREMENT de la tabla `permissions`
--
ALTER TABLE `permissions`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=87;

--
-- AUTO_INCREMENT de la tabla `roles`
--
ALTER TABLE `roles`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT de la tabla `settings`
--
ALTER TABLE `settings`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT de la tabla `translations`
--
ALTER TABLE `translations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- Restricciones para tablas volcadas
--

--
-- Filtros para la tabla `data_rows`
--
ALTER TABLE `data_rows`
  ADD CONSTRAINT `data_rows_data_type_id_foreign` FOREIGN KEY (`data_type_id`) REFERENCES `data_types` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Filtros para la tabla `menu_items`
--
ALTER TABLE `menu_items`
  ADD CONSTRAINT `menu_items_menu_id_foreign` FOREIGN KEY (`menu_id`) REFERENCES `menus` (`id`) ON DELETE CASCADE;

--
-- Filtros para la tabla `permission_role`
--
ALTER TABLE `permission_role`
  ADD CONSTRAINT `permission_role_permission_id_foreign` FOREIGN KEY (`permission_id`) REFERENCES `permissions` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `permission_role_role_id_foreign` FOREIGN KEY (`role_id`) REFERENCES `roles` (`id`) ON DELETE CASCADE;

--
-- Filtros para la tabla `users`
--
ALTER TABLE `users`
  ADD CONSTRAINT `users_role_id_foreign` FOREIGN KEY (`role_id`) REFERENCES `roles` (`id`);

--
-- Filtros para la tabla `user_roles`
--
ALTER TABLE `user_roles`
  ADD CONSTRAINT `user_roles_role_id_foreign` FOREIGN KEY (`role_id`) REFERENCES `roles` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `user_roles_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;

