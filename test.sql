-- phpMyAdmin SQL Dump
-- version 4.8.3
-- https://www.phpmyadmin.net/
--
-- Хост: 127.0.0.1:3306
-- Время создания: Окт 27 2018 г., 07:15
-- Версия сервера: 8.0.12
-- Версия PHP: 7.2.10

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- База данных: `test`
--

-- --------------------------------------------------------

--
-- Структура таблицы `customers`
--

CREATE TABLE `customers` (
  `id` int(10) UNSIGNED NOT NULL,
  `firstname` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `lastname` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `phone` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Дамп данных таблицы `customers`
--

INSERT INTO `customers` (`id`, `firstname`, `lastname`, `email`, `phone`, `created_at`, `updated_at`) VALUES
(1, 'Lloyd', 'Smith', 'azieme@runolfsson.com', '+1.887.276.7036', '2018-10-26 13:51:32', '2018-10-26 13:51:32'),
(2, 'Jefferey', 'Hoppe', 'eloisa.schmitt@lakin.com', '+1 (702) 359-6264', '2018-10-26 13:51:32', '2018-10-26 13:51:32'),
(3, 'Sydney', 'Beer', 'nziemann@gmail.com', '451-488-3515 x953', '2018-10-26 13:51:32', '2018-10-26 13:51:32'),
(4, 'Jarret', 'Sipes', 'emard.trevor@gmail.com', '(543) 369-4479 x837', '2018-10-26 13:51:32', '2018-10-26 13:51:32'),
(5, 'Lucile', 'Gerlach', 'smith.alanna@hotmail.com', '(730) 794-0311 x079', '2018-10-26 13:51:32', '2018-10-26 13:51:32'),
(6, 'Amie', 'Roberts', 'jgerhold@ryan.com', '873-312-7183 x31940', '2018-10-26 13:51:32', '2018-10-26 13:51:32'),
(7, 'Lillie', 'Klein', 'ubauch@gmail.com', '(728) 561-5041 x952', '2018-10-26 13:51:32', '2018-10-26 13:51:32'),
(8, 'Kailyn', 'Fadel', 'pascale.welch@gmail.com', '496-318-1685', '2018-10-26 13:51:32', '2018-10-26 13:51:32'),
(9, 'Herman', 'Bogan', 'barrows.pierce@funk.org', '882-445-4044', '2018-10-26 13:51:32', '2018-10-26 13:51:32'),
(10, 'Brandi', 'Botsford', 'bart.romaguera@yahoo.com', '(486) 826-3268', '2018-10-26 13:51:32', '2018-10-26 13:51:32'),
(11, 'Ima', 'Reichel', 'sandra81@gmail.com', '+15324131724', '2018-10-26 13:51:32', '2018-10-26 13:51:32'),
(12, 'Billy', 'Pfeffer', 'alisha.adams@lehner.com', '(446) 450-9595', '2018-10-26 13:51:32', '2018-10-26 13:51:32'),
(13, 'Nova', 'Larson', 'cruickshank.lincoln@yahoo.com', '1-492-996-9869 x285', '2018-10-26 13:51:32', '2018-10-26 13:51:32'),
(14, 'Gideon', 'Waters', 'braun.nicklaus@gmail.com', '1-814-432-3935', '2018-10-26 13:51:32', '2018-10-26 13:51:32'),
(15, 'Beatrice', 'Marks', 'pherman@bradtke.biz', '1-436-446-4327', '2018-10-26 13:51:32', '2018-10-26 13:51:32'),
(16, 'Jace', 'Rippin', 'bwelch@hotmail.com', '+12418959498', '2018-10-26 13:51:32', '2018-10-26 13:51:32'),
(17, 'Haven', 'Herman', 'jmante@schinner.com', '+1-291-730-7031', '2018-10-26 13:51:32', '2018-10-26 13:51:32'),
(18, 'Cordie', 'Murray', 'kuphal.brigitte@hotmail.com', '384-965-5414', '2018-10-26 13:51:32', '2018-10-26 13:51:32'),
(19, 'Nicklaus', 'Wunsch', 'christa.mertz@macejkovic.biz', '(881) 856-8135 x606', '2018-10-26 13:51:32', '2018-10-26 13:51:32'),
(20, 'Carson', 'Medhurst', 'rwatsica@gmail.com', '448-278-2946', '2018-10-26 13:51:32', '2018-10-26 13:51:32');

-- --------------------------------------------------------

--
-- Структура таблицы `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Дамп данных таблицы `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2014_10_12_000000_create_users_table', 1),
(2, '2014_10_12_100000_create_password_resets_table', 1),
(3, '2018_05_06_181639_create_customers_table', 1);

-- --------------------------------------------------------

--
-- Структура таблицы `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Структура таблицы `users`
--

CREATE TABLE `users` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Индексы сохранённых таблиц
--

--
-- Индексы таблицы `customers`
--
ALTER TABLE `customers`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`);

--
-- Индексы таблицы `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`);

--
-- AUTO_INCREMENT для сохранённых таблиц
--

--
-- AUTO_INCREMENT для таблицы `customers`
--
ALTER TABLE `customers`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- AUTO_INCREMENT для таблицы `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT для таблицы `users`
--
ALTER TABLE `users`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
