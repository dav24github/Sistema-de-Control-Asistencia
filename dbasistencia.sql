-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 29-08-2020 a las 08:01:15
-- Versión del servidor: 10.4.14-MariaDB
-- Versión de PHP: 7.4.9

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `dbasistencia`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `asistencias`
--

CREATE TABLE `asistencias` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `practicante_id` bigint(20) NOT NULL,
  `horario_details_id` bigint(20) NOT NULL,
  `h_entrada` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `h_salida` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `retraso` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `asist_fecha` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `estado` int(11) NOT NULL DEFAULT 1,
  `asist_mes` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `asist_anio` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `asistencias`
--

INSERT INTO `asistencias` (`id`, `practicante_id`, `horario_details_id`, `h_entrada`, `h_salida`, `retraso`, `asist_fecha`, `estado`, `asist_mes`, `asist_anio`, `created_at`, `updated_at`) VALUES
(2, 1, 2, '08:12:00', '12:08:00', '', '2020-08-17', 1, 'August', '2020', '2020-08-27 22:29:25', '2020-08-27 22:29:25'),
(3, 2, 2, '08:25:00', '12:19:00', '00:10:00', '2020-08-17', 1, 'August', '2020', '2020-08-27 22:30:14', '2020-08-27 22:30:14'),
(4, 1, 3, '14:34:00', '18:20:00', '00:19:00', '2020-08-17', 1, 'August', '2020', '2020-08-27 22:32:20', '2020-08-27 22:32:20'),
(7, 2, 3, '14:18:00', '18:25:00', '00:03:00', '2020-08-17', 1, 'August', '2020', '2020-08-27 22:39:42', '2020-08-27 22:39:42'),
(9, 1, 2, '08:10:00', '12:45:00', '', '2020-08-18', 1, 'August', '2020', '2020-08-27 22:44:47', '2020-08-27 22:44:47'),
(10, 2, 2, '08:19:00', '', '', '2020-08-18', 0, 'August', '2020', '2020-08-27 22:45:13', '2020-08-27 22:45:13'),
(11, 1, 3, '14:18:00', '18:25:00', '00:03:00', '2020-08-18', 1, 'August', '2020', '2020-08-27 22:47:18', '2020-08-27 22:47:18'),
(12, 2, 3, '14:07:00', '18:15:00', '', '2020-08-18', 1, 'August', '2020', '2020-08-27 22:47:59', '2020-08-27 22:47:59'),
(13, 1, 2, '08:07:00', '12:15:00', '', '2020-08-19', 1, 'August', '2020', '2020-08-27 22:48:53', '2020-08-27 22:48:53'),
(17, 1, 2, '', '', '', '2020-08-25', 3, 'August', '2020', '2020-08-27 23:06:00', '2020-08-27 23:06:00'),
(18, 2, 2, '', '', '', '2020-08-26', 3, 'August', '2020', '2020-08-27 23:06:01', '2020-08-27 23:06:01'),
(19, 2, 3, '', '', '', '2020-08-26', 3, 'August', '2020', '2020-08-27 23:06:01', '2020-08-27 23:06:01');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `check_faltas`
--

CREATE TABLE `check_faltas` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `chk_fecha` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `check_faltas`
--

INSERT INTO `check_faltas` (`id`, `chk_fecha`, `created_at`, `updated_at`) VALUES
(3, '2020-08-26', '2020-08-27 23:09:20', '2020-08-27 23:09:20');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `faltas`
--

CREATE TABLE `faltas` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `practicante_id` bigint(20) NOT NULL,
  `horario_details_id` bigint(20) NOT NULL,
  `hr_entrada` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `falta_fecha` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `falta_mes` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `falta_anio` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `faltas`
--

INSERT INTO `faltas` (`id`, `practicante_id`, `horario_details_id`, `hr_entrada`, `falta_fecha`, `falta_mes`, `falta_anio`, `created_at`, `updated_at`) VALUES
(30, 1, 3, '', '2020-08-19', 'August', '2020', '2020-08-27 23:09:20', '2020-08-27 23:09:20'),
(31, 1, 2, '', '2020-08-24', 'August', '2020', '2020-08-27 23:09:20', '2020-08-27 23:09:20'),
(32, 1, 3, '', '2020-08-24', 'August', '2020', '2020-08-27 23:09:20', '2020-08-27 23:09:20'),
(33, 1, 3, '', '2020-08-25', 'August', '2020', '2020-08-27 23:09:20', '2020-08-27 23:09:20'),
(34, 1, 2, '', '2020-08-26', 'August', '2020', '2020-08-27 23:09:20', '2020-08-27 23:09:20'),
(35, 1, 3, '', '2020-08-26', 'August', '2020', '2020-08-27 23:09:20', '2020-08-27 23:09:20'),
(36, 2, 2, '08:19:00', '2020-08-18', 'August', '2020', '2020-08-27 23:09:20', '2020-08-27 23:09:20'),
(37, 2, 2, '', '2020-08-19', 'August', '2020', '2020-08-27 23:09:20', '2020-08-27 23:09:20'),
(38, 2, 3, '', '2020-08-19', 'August', '2020', '2020-08-27 23:09:20', '2020-08-27 23:09:20'),
(39, 2, 2, '', '2020-08-24', 'August', '2020', '2020-08-27 23:09:20', '2020-08-27 23:09:20'),
(40, 2, 3, '', '2020-08-24', 'August', '2020', '2020-08-27 23:09:20', '2020-08-27 23:09:20'),
(41, 2, 2, '', '2020-08-25', 'August', '2020', '2020-08-27 23:09:20', '2020-08-27 23:09:20'),
(42, 2, 3, '', '2020-08-25', 'August', '2020', '2020-08-27 23:09:20', '2020-08-27 23:09:20');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `horarios`
--

CREATE TABLE `horarios` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `h_nombre` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `tolerancia` bigint(20) NOT NULL DEFAULT 0,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `horarios`
--

INSERT INTO `horarios` (`id`, `h_nombre`, `tolerancia`, `created_at`, `updated_at`) VALUES
(1, 'Mañana', 15, '2020-08-27 21:54:14', '2020-08-27 21:55:19'),
(2, 'Completo', 15, '2020-08-27 21:56:46', '2020-08-27 21:56:46'),
(3, 'Continuo', 30, '2020-08-27 21:57:08', '2020-08-27 21:57:26');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `horario_details`
--

CREATE TABLE `horario_details` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `horario_id` bigint(20) NOT NULL,
  `hd_nombre` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `horario_e` time NOT NULL,
  `horario_s` time NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `horario_details`
--

INSERT INTO `horario_details` (`id`, `horario_id`, `hd_nombre`, `horario_e`, `horario_s`, `created_at`, `updated_at`) VALUES
(1, 1, NULL, '08:00:00', '12:00:00', '2020-08-27 21:54:15', '2020-08-27 21:55:19'),
(2, 2, 'Mañana', '08:00:00', '12:00:00', '2020-08-27 21:56:46', '2020-08-27 21:56:46'),
(3, 2, 'Tarde', '14:00:00', '18:00:00', '2020-08-27 21:56:46', '2020-08-27 22:11:09'),
(4, 3, NULL, '08:00:00', '15:00:00', '2020-08-27 21:57:08', '2020-08-27 21:57:08');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `inactividades`
--

CREATE TABLE `inactividades` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `justificante` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `fecha_inicio` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `fecha_final` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `inactividades`
--

INSERT INTO `inactividades` (`id`, `justificante`, `fecha_inicio`, `fecha_final`, `created_at`, `updated_at`) VALUES
(1, 'Aniversario de Bolivia', '2020-08-06', '', NULL, NULL),
(2, 'Cierre de la Facultad', '2020-08-20', '2020-08-21', NULL, NULL);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `inactividad_details`
--

CREATE TABLE `inactividad_details` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `inactividad_id` bigint(20) NOT NULL,
  `inact_fecha` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `inact_mes` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `inact_anio` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `inactividad_details`
--

INSERT INTO `inactividad_details` (`id`, `inactividad_id`, `inact_fecha`, `inact_mes`, `inact_anio`, `created_at`, `updated_at`) VALUES
(1, 1, '2020-08-06', 'August', '2020', NULL, NULL),
(2, 2, '2020-08-20', 'August', '2020', NULL, NULL),
(3, 2, '2020-08-21', 'August', '2020', NULL, NULL);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `marcajes`
--

CREATE TABLE `marcajes` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `practicante_id` bigint(20) NOT NULL,
  `marcaje` int(11) NOT NULL,
  `turno` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2014_10_12_000000_create_users_table', 1),
(2, '2014_10_12_100000_create_password_resets_table', 1),
(3, '2020_08_14_040017_practicantes', 1),
(4, '2020_08_14_040037_asistencias', 1),
(5, '2020_08_14_040246_horarios', 1),
(6, '2020_08_14_040301_permisos', 1),
(7, '2020_08_14_040335_inactividades', 1),
(8, '2020_08_14_040500_permiso_details', 1),
(9, '2020_08_14_040628_inactividad_details', 1),
(10, '2020_08_17_223613_horario_details', 1),
(11, '2020_08_18_184944_check_faltas', 1),
(12, '2020_08_18_184944_faltas', 1),
(13, '2020_08_24_202822_marcajes', 1);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `permisos`
--

CREATE TABLE `permisos` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `practicante_id` bigint(20) NOT NULL,
  `justificante` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `fecha_inicio` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `fecha_final` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `permisos`
--

INSERT INTO `permisos` (`id`, `practicante_id`, `justificante`, `fecha_inicio`, `fecha_final`, `created_at`, `updated_at`) VALUES
(1, 1, 'Visita Médica', '2020-08-25', '', NULL, NULL),
(2, 2, 'Regularización de tramites', '2020-08-26', '', NULL, NULL),
(3, 2, 'Regularización de tramites', '2020-08-26', '', NULL, NULL);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `permiso_details`
--

CREATE TABLE `permiso_details` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `permiso_id` bigint(20) NOT NULL,
  `horario_details_id` bigint(20) NOT NULL,
  `perm_fecha` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `perm_mes` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `perm_anio` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `permiso_details`
--

INSERT INTO `permiso_details` (`id`, `permiso_id`, `horario_details_id`, `perm_fecha`, `perm_mes`, `perm_anio`, `created_at`, `updated_at`) VALUES
(1, 1, 2, '2020-08-25', 'August', '2020', NULL, NULL),
(2, 2, 2, '2020-08-26', 'August', '2020', NULL, NULL),
(3, 3, 3, '2020-08-26', 'August', '2020', NULL, NULL);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `practicantes`
--

CREATE TABLE `practicantes` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `nombre` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `horario_id` bigint(20) NOT NULL,
  `ci` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `cu` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `carrera` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `email` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `telefono` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `direccion` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `estado` int(11) NOT NULL DEFAULT 1,
  `f_ingreso` date DEFAULT NULL,
  `foto` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `practicantes`
--

INSERT INTO `practicantes` (`id`, `nombre`, `horario_id`, `ci`, `cu`, `carrera`, `email`, `telefono`, `direccion`, `estado`, `f_ingreso`, `foto`, `created_at`, `updated_at`) VALUES
(1, 'David Escalante', 2, '128186461', '156-151', 'Ing. en Ciencias de la Computación', 'David@gmail.com', '78516518', 'Calle asd #123', 1, '2020-08-17', 'backEnd/assets/img/default/user-alt.png', '2020-08-27 22:14:20', '2020-08-27 22:14:47'),
(2, 'José Kanchi', 2, '21651519', '112-211', 'Ing. en Ciencias de la Computación', 'Jose@gmail.com', '5199191', 'Av. dsa #132', 1, '2020-08-17', 'backEnd/assets/img/default/user-alt.png', '2020-08-27 22:16:32', '2020-08-27 22:16:32'),
(3, 'Juan Peres', 3, '5119198', '198198119', 'Ing. de Sistemas', 'Juan@gmial.com', '651984198', 'Calle qwe #345', 2, '2020-08-10', 'backEnd/assets/img/default/user-alt.png', '2020-08-27 22:18:06', '2020-08-27 22:31:46');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `email_verified_at`, `password`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 'David Escalante', 'Davidthbsossa@gmail.com', NULL, '$2y$10$jc1mRGeu19OpPKeT4qQf3eRgsK3GzmF97wRexkcsOkzMwrb9MQVga', NULL, '2020-08-27 21:41:44', '2020-08-27 21:41:44');

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `asistencias`
--
ALTER TABLE `asistencias`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `check_faltas`
--
ALTER TABLE `check_faltas`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `faltas`
--
ALTER TABLE `faltas`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `horarios`
--
ALTER TABLE `horarios`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `horario_details`
--
ALTER TABLE `horario_details`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `inactividades`
--
ALTER TABLE `inactividades`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `inactividad_details`
--
ALTER TABLE `inactividad_details`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `marcajes`
--
ALTER TABLE `marcajes`
  ADD PRIMARY KEY (`id`);

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
-- Indices de la tabla `permisos`
--
ALTER TABLE `permisos`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `permiso_details`
--
ALTER TABLE `permiso_details`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `practicantes`
--
ALTER TABLE `practicantes`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `asistencias`
--
ALTER TABLE `asistencias`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=20;

--
-- AUTO_INCREMENT de la tabla `check_faltas`
--
ALTER TABLE `check_faltas`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT de la tabla `faltas`
--
ALTER TABLE `faltas`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=43;

--
-- AUTO_INCREMENT de la tabla `horarios`
--
ALTER TABLE `horarios`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT de la tabla `horario_details`
--
ALTER TABLE `horario_details`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT de la tabla `inactividades`
--
ALTER TABLE `inactividades`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT de la tabla `inactividad_details`
--
ALTER TABLE `inactividad_details`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT de la tabla `marcajes`
--
ALTER TABLE `marcajes`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT de la tabla `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT de la tabla `permisos`
--
ALTER TABLE `permisos`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT de la tabla `permiso_details`
--
ALTER TABLE `permiso_details`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT de la tabla `practicantes`
--
ALTER TABLE `practicantes`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT de la tabla `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
