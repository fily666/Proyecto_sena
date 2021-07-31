-- phpMyAdmin SQL Dump
-- version 4.7.9
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1:3306
-- Tiempo de generación: 21-02-2021 a las 15:00:22
-- Versión del servidor: 5.7.21
-- Versión de PHP: 7.2.4

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `agending_system`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `empresas`
--

DROP TABLE IF EXISTS `empresas`;
CREATE TABLE IF NOT EXISTS `empresas` (
  `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'Razon social de la empresa',
  `detail` text COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'Detalles de la empresa',
  `created_at` timestamp NULL DEFAULT NULL COMMENT 'Fecha de creación de la empresa',
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `eventos`
--

DROP TABLE IF EXISTS `eventos`;
CREATE TABLE IF NOT EXISTS `eventos` (
  `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'Nombre del evento',
  `logo` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '9Imagen del evento (dirección donde se almacena la imagen guardada',
  `fechainicial` date NOT NULL COMMENT 'Fecha en la que inicia el evento',
  `fechafinal` date NOT NULL COMMENT 'Fecha en la que finaliza el evento',
  `horainicial` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'Hora en la que inicia el evento',
  `horafinal` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'Hora en la que Finaliza el evento',
  `duracion` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'Tiempo estimado que puede durar una cita ',
  `detail` text COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'Detalles del evento ',
  `created_at` timestamp NULL DEFAULT NULL COMMENT 'Fecha de creación del evento',
  `updated_at` timestamp NULL DEFAULT NULL COMMENT 'Fecha de la ultima nidificación del evento del evento',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `eventos`
--

INSERT INTO `eventos` (`id`, `name`, `logo`, `fechainicial`, `fechafinal`, `horainicial`, `horafinal`, `duracion`, `detail`, `created_at`, `updated_at`) VALUES
(1, 'Rueda de negocios FISE', '/storage/img/c2BFiGtzMEzKjidOTz9fz8g9ay6RuZCnJ9TDLwPy.jpeg', '2021-02-15', '2021-02-17', '01:32', '02:47', '60', 'El principal objetivo de la Feria FISE es promover espacios que favorezcan los negocios entre los expositores y sus clientes actuales o potenciales, como también obtener nuevos contactos comerciales y establecer alianzas. Es por esto por lo que además de la muestra comercial, FISE te ofrece alternativas adicionales destinadas a favorecer encuentros entre los expositores de la Feria y compradores potenciales en ambientes más propicios para tal fin y destinados para intercambiar con estos sus ofertas de productos y servicios de manera más tranquila y dedicada.', '2021-02-12 07:54:50', '2021-02-20 18:32:24');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `failed_jobs`
--

DROP TABLE IF EXISTS `failed_jobs`;
CREATE TABLE IF NOT EXISTS `failed_jobs` (
  `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT,
  `connection` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `queue` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `exception` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `migrations`
--

DROP TABLE IF EXISTS `migrations`;
CREATE TABLE IF NOT EXISTS `migrations` (
  `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `migration` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2014_10_12_000000_create_users_table', 1),
(2, '2014_10_12_100000_create_password_resets_table', 1),
(3, '2019_08_19_000000_create_failed_jobs_table', 1),
(4, '2020_11_18_001140_create_eventos_table', 1),
(5, '2021_02_01_002220_create_empresas_table', 1);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `password_resets`
--

DROP TABLE IF EXISTS `password_resets`;
CREATE TABLE IF NOT EXISTS `password_resets` (
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  KEY `password_resets_email_index` (`email`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `users`
--

DROP TABLE IF EXISTS `users`;
CREATE TABLE IF NOT EXISTS `users` (
  `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT,
  `name` varchar(250) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'Nombre completo del usuario',
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'Email del personal o Email Corporativo',
  `email_verified_at` timestamp NULL DEFAULT NULL COMMENT 'Campo de validación de Email  ',
  `password` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'Clave encriptada ',
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT 'Token  de validación de datos generado por el frameword',
  `created_at` timestamp NULL DEFAULT NULL COMMENT 'Fecha de creación del usuario',
  `updated_at` timestamp NULL DEFAULT NULL COMMENT 'Fecha ultima modificación del usuario',
  PRIMARY KEY (`id`),
  UNIQUE KEY `users_email_unique` (`email`)
) ENGINE=MyISAM AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `email_verified_at`, `password`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 'Callie Monroe', 'hitekihez@mailinator.com', NULL, '$2y$10$VyYphI.jwbPGR7C4MkxVdOTR2rSkEBpV8Lg21T.ob231KT4EXuUJO', NULL, '2021-02-12 07:51:24', '2021-02-12 07:51:24'),
(2, 'Alexis Nguyen', 'fahe@mailinator.com', NULL, '$2y$10$8ZDoekiZEvrjrCKcSBqF.O4eNknVOO2J7leQreSA8fOlQPYFsV8Ca', NULL, '2021-02-13 02:31:06', '2021-02-13 02:31:06'),
(3, 'Tyler Gallagher', 'luso@mailinator.com', NULL, '$2y$10$ljrtJKBsXIrtno6cvC/3C.BxZyp.WZDAGuF4Y6oukqXfIq4AC9zPi', NULL, '2021-02-13 19:05:29', '2021-02-13 19:05:29'),
(4, 'Alec Blevins', 'dajyfam@mailinator.com', NULL, '$2y$10$huaUU4Qe/.wdQ6IPvhleSuxcWUV0EEF9FE2w9KDKti0ZwV0L8o2tC', NULL, '2021-02-14 03:10:54', '2021-02-14 03:10:54'),
(5, 'Fitzgerald Ashley', 'pumysum@mailinator.com', NULL, '$2y$10$vSqjkvQgxSVePoT5WNmYMO9Sv/P5/8XrnKQ0moxJHelH2sSOcwe7y', NULL, '2021-02-20 18:30:43', '2021-02-20 18:30:43'),
(6, 'Autumn Sexton', 'lokoquqi@mailinator.com', NULL, '$2y$10$ACqNkcNkuLuLJ3jkG9k45OpvSXYpYGQMctEF62ZK9uCyH0rSyXgJ6', NULL, '2021-02-20 18:50:07', '2021-02-20 18:50:07'),
(7, 'admin wilmar', 'adminwr@gmail.com', NULL, 'admin', NULL, '2021-02-20 19:06:31', '2021-02-20 19:34:34'),
(8, 'Cole Frederick', 'jobyrujusy@mailinator.com', NULL, '$2y$10$7u3M6sjeJyYotoFPYey.L.tehg.fIxgqNCJz.9a/Ggm1KnlVibsTy', NULL, '2021-02-20 19:07:07', '2021-02-20 19:07:07'),
(10, 'Jeanette Norman', 'xuruju@mailinator.com', NULL, '87654321', NULL, '2021-02-20 21:36:29', '2021-02-20 21:37:11');
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
