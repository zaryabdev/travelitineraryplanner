-- phpMyAdmin SQL Dump
-- version 5.0.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jan 28, 2023 at 09:09 PM
-- Server version: 10.4.11-MariaDB
-- PHP Version: 7.4.3

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `bonpedia`
--

-- --------------------------------------------------------

--
-- Table structure for table `movies`
--

CREATE TABLE `movies` (
  `m_id` int(11) NOT NULL,
  `m_name` varchar(256) NOT NULL,
  `m_image` varchar(200) NOT NULL,
  `m_year` int(11) NOT NULL,
  `m_genre` varchar(256) NOT NULL,
  `other_genres` varchar(500) NOT NULL,
  `m_duration` varchar(30) NOT NULL,
  `m_size` varchar(30) NOT NULL,
  `m_download` varchar(1000) NOT NULL,
  `m_subs` varchar(1000) NOT NULL,
  `m_trailer` varchar(1000) NOT NULL,
  `how_old` varchar(11) NOT NULL,
  `top_rated` varchar(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `movies`
--

INSERT INTO `movies` (`m_id`, `m_name`, `m_image`, `m_year`, `m_genre`, `other_genres`, `m_duration`, `m_size`, `m_download`, `m_subs`, `m_trailer`, `how_old`, `top_rated`) VALUES
(1, 'Avatar', 'Avatar.jpg', 2009, 'Action', 'Action, Adventure, Fantasy', '2h 42min', '2.51 GB', 'https://drive.google.com/uc?id=1h1UPRa91BruJliaoQYT_x0BkiPQLWdk7&export=download', 'https://www.yifysubtitles.com/movie-imdb/tt0499549', 'https://www.youtube.com/embed/5PSNL1qE6VY', '#', '#'),
(2, 'Annabelle', 'Annabelle.jpg', 2014, 'Horror', 'Horror, Mystery, Thriller', '1h 39min', '758 MB', 'https://drive.google.com/uc?id=1nylXOGIWcpGLeqHvEdeH0ytSSnb8K2ah&export=download', 'https://www.yifysubtitles.com/movie-imdb/tt3322940', 'https://www.youtube.com/embed/paFgQNPGlsg', '#', '#'),
(3, 'It', 'It.jpg', 2017, 'Horror', 'Horror', '2h 15min', '997.65 MB', 'https://drive.google.com/uc?id=1ycFd4pFNrpt8dc2x6W-Ufo-N6R--KXp7&export=download', 'https://www.yifysubtitles.com/movie-imdb/tt1396484', 'https://www.youtube.com/embed/xKJmEC5ieOk', '#', '#'),
(4, 'Annabelle Creation', 'Annabelle Creation.jpg', 2017, 'Horror', 'Horror, Mystery, Thriller', '1h 49min', '801 MB', 'https://drive.google.com/uc?id=1yZyRriG9sFqyFh_aPYxr4JXJsYOwp6di&export=download', 'https://www.yifysubtitles.com/movie-imdb/tt5140878', 'https://www.youtube.com/embed/EjZkJa6Z-SY', '#', '#'),
(5, 'Annabelle Comes Home', 'Annabelle Comes Home.jpg', 2019, 'Horror', 'Horror, Mystery, Thriller', '1h 46min', '942 MB', 'https://drive.google.com/uc?id=1XuPzKLtS_Lk9TPTaGJVbWF1KnQay2ZRG&export=download', 'https://www.yifysubtitles.com/movie-imdb/tt8350360', 'https://www.youtube.com/embed/EMa-KFfatT0', '#', '#'),
(6, 'Angel Has Fallen', 'Angel Has Fallen.jpg', 2019, 'Action', 'Action, Thriller', '2h 1min', '1.88 GB', 'https://drive.google.com/uc?id=1DHSnHyDZ0bmblIL6XBfMO30Q9Tnb0jiv&export=download', 'https://www.opensubtitles.org/en/search/sublanguageid-all/idmovie-542653', 'https://www.youtube.com/embed/l4AQchYSxwc', '#', '#'),
(7, 'Once Upon a Time in Hollywood', 'Once Upon a Time in Hollywood.jpg', 2019, 'Comedy', 'Comedy, Drama', '2h 41min', '1.4 GB', 'https://drive.google.com/uc?id=1-0gFrRgvCFxhwaKNq3G8QRtGb5zMwTl0&export=download', 'https://www.yifysubtitles.com/movie-imdb/tt7131622', 'https://www.youtube.com/embed/ELeMaP8EPAA', '#', 'yes'),
(8, 'Toy Story 4', 'Toy Story 4.jpg', 2019, 'Animation', 'Animation, Adventure, Comedy', '1h 40min', '882 MB', 'https://drive.google.com/uc?id=1XuHgUWlrfkprfvtkRFfBfsX5o1T-PFLu&export=download', 'https://www.yifysubtitles.com/movie-imdb/tt1979376', 'https://www.youtube.com/embed/Pl9JS8-gnWQ', '#', '#'),
(9, 'Fast and farious, Presents Hobbs and Shaw', 'Fast and farious Hobbs and Shaw.jpg', 2019, 'Action', 'Action, Adventure', '2h 17min', '1.19 GB', 'https://drive.google.com/uc?id=1BhRw8jkpfYmOo8ygwN_2z0TE5tP5Zo8-&export=download', 'https://www.yifysubtitles.com/movie-imdb/tt6806448', 'https://www.youtube.com/embed/9SA7FaKxZVI', '#', '#'),
(10, 'Avengers: Endgame', 'Avengers Endgame.jpg', 2019, 'Action', 'Action, Adventure, Drama', '3h 1min', '1.43 GB', 'https://drive.google.com/uc?id=1kcLcfque13Zb6RDPF7_FxQlHBaXkDOYo&export=download', 'https://www.yifysubtitles.com/movie-imdb/tt4154796', 'https://www.youtube.com/embed/TcMBFSGVi1c', '#', 'yes'),
(11, 'Joker', 'Joker.jpg', 2019, 'Crime', 'Crime, Drama, Thriller', '2h 2min', '1.07 GB', 'https://drive.google.com/uc?id=1YuiQ9LaXUSdUEt41HbNP1HnHkm6XCMVz&export=download', 'https://www.yifysubtitles.com/movie-imdb/tt7286456', 'https://www.youtube.com/embed/zAGVQLHvwOY', '#', 'yes'),
(12, 'Rambo: Last Blood', 'Rombo Last Blood.jpg', 2019, 'Action', 'Action, Adventure, Thriller', '1h 29min', '1.57 GB', 'https://drive.google.com/uc?id=1c0AHHmD0cM8UqhuyNhPZVDGZ2grZr34r&export=download', 'https://www.opensubtitles.org/en/search/sublanguageid-all/idmovie-34867', 'https://www.youtube.com/embed/YPuhNtG47M0', '#', '#'),
(14, 'It Chapter Two', 'It Chapter Two.jpg', 2019, 'Drama', 'Drama, Fantasy, Horror', '2h 49min', '1.47 GB', 'https://drive.google.com/uc?id=1ZzgWoxngTf5AbvqfSl7CkH0t2vUM_TE8&export=download', 'https://www.yifysubtitles.com/movie-imdb/tt7349950', 'https://www.youtube.com/embed/xhJ5P7Up3jA', '#', '#'),
(15, 'Ad Astra', 'Ad Astra.jpg', 2019, 'Adventure', 'Adventure, Drama, Mystery', '2h 03min', '1.08 GB', 'https://drive.google.com/uc?id=1pTqSQHrivtunfQxSoRPzllRrekHivwNT&export=download', 'https://www.yifysubtitles.com/movie-imdb/tt2935510', 'https://www.youtube.com/embed/t6g0dsQzfqY', '#', '#'),
(16, 'Isn\'t It Romantic', 'Isnt It Romantic.jpg', 2019, 'Comedy', 'Comedy, Fantasy, Romance', '1h 29min', '749 MB', 'https://drive.google.com/uc?id=18kTIom_CiN9_15YY8-N8cYGH3Or98zHC&export=download', 'https://www.yifysubtitles.com/movie-imdb/tt2452244', 'https://www.youtube.com/embed/8ZwgoVmILQU', '#', '#'),
(17, 'Captain Marvel', 'Captain Marvel.jpg', 2019, 'Action', 'Action, Adventure, Sci-Fi', '2h 3min', '1.04 GB', 'https://drive.google.com/uc?id=1jKfX5jrvySWr6vUw56r3-YD12lyKiz1r&export=download', 'https://www.yifysubtitles.com/movie-imdb/tt4154664', 'https://www.youtube.com/embed/Z1BCujX3pw8', '#', '#'),
(18, 'Portrait of a Lady on Fire', 'Portrait of a Lady on Fire.jpg', 2019, 'Drama', 'Drama, Romance', '2h 1min', '1.09 GB', 'https://drive.google.com/uc?id=1Lf5estlzAw3C68ThLkvMLoov339WGZLz&export=download', 'https://www.opensubtitles.org/en/search/sublanguageid-all/idmovie-760063', 'https://www.youtube.com/embed/R-fQPTwma9o', '#', 'yes'),
(19, 'The Lion King', 'The Lion King.jpg', 2019, 'Animation', 'Animation, Adventure, Drama', '1h 58min', '1.04 GB', 'https://drive.google.com/uc?id=15ktAW4DuBcJv0TCOsFoYCX0NmGIP9a0P', 'https://www.yifysubtitles.com/movie-imdb/tt6105098', 'https://www.youtube.com/embed/7TavVZMewpY', '#', '#'),
(20, 'John Wick: Chapter 3 - Parabellum', 'John Wick Chap 3.jpg', 2019, 'Action', 'Action, Crime, Thriller', '2h 11min', '1.13 GB', 'https://drive.google.com/uc?id=1wzOk-yohuLpImIGxLkXNxBtQ5UsdrZx7&export=download', 'https://www.yifysubtitles.com/movie-imdb/tt6146586', 'https://www.youtube.com/embed/M7XM597XO94', '#', '#'),
(21, 'Spider-Man: Far from Home', 'Spiderman Far from home.jpg', 2019, 'Action', 'Action, Adventure, Sci-Fi', '2h 9min', '1.13 GB', 'https://drive.google.com/uc?id=1y4YtqrZQxu5GfnmVSasa8lCddTW94aQH&export=download', 'https://www.yifysubtitles.com/movie-imdb/tt6320628', 'https://www.youtube.com/embed/Nt9L1jCKGnE', '#', '#'),
(22, 'Pokémon Detective Pikachu', 'Pokemon Detective.jpg', 2019, 'Action', 'Action, Adventure, Comedy', '1h 44min', '1.71 GB', 'https://drive.google.com/uc?id=1-M3hukwPgYcvmJJt-vFoGo2BqQSadt4r&export=download', 'https://www.yifysubtitles.com/movie-imdb/tt5884052', 'https://www.youtube.com/embed/bILE5BEyhdo', '#', '#'),
(23, 'The Irishman', 'Irishman.jpg', 2019, 'Biography', 'Biography, Crime, Drama', '3h 29min', '1.79 GB', 'https://drive.google.com/uc?id=1MIWOQtI3b9-Opp2ljt41XJLy2Ae_uYwB&export=download', 'https://www.yifysubtitles.com/movie-imdb/tt1302006', 'https://www.youtube.com/embed/WHXxVmeGQUc', '#', '#'),
(24, 'Marriage Story', 'Marriage Story.jpg', 2019, 'Comedy', 'Comedy, Drama, Romance', '2h 17min', '1.18 GB', 'https://drive.google.com/uc?id=1SBn_I7juhK9Zw7A5ycIzkodEyMTsd0yg&export=download', 'https://www.yifysubtitles.com/movie-imdb/tt7653254', 'https://www.youtube.com/embed/BHi-a1n8t7M', '#', '#'),
(25, 'Parasite', 'Parasite.jpg', 2019, 'Comedy', 'Comedy, Drama, Thriller', '2h 12min', '1.15 GB', 'https://drive.google.com/uc?id=1Nk0GEvDWZ7FZRGq6z_4iJDycpA1dR-np&export=download', 'https://www.yifysubtitles.com/movie-imdb/tt6751668', 'https://www.youtube.com/embed/5xH0HfJHsaY', '#', '#'),
(26, 'Uncut Gems', 'Uncut Gems.jpg', 2019, 'Crime', 'Crime, Drama, Mystery', '2h 15min', '1.17 GB', 'https://drive.google.com/uc?id=1KSK9KfiiT4hQMxGH4IjI2mCDzREVwU9h&export=download', 'https://www.yifysubtitles.com/movie-imdb/tt5727208', 'https://www.youtube.com/embed/vTfJp2Ts9X8', '#', '#'),
(27, 'Terminator: Dark Fate', 'Terminator the dark.jpg', 2019, 'Action', 'Action, Adventure, Sci-Fi', '2h 8min', '1.12 GB', 'https://drive.google.com/uc?id=1rqs4HBwRRdaa1W9kMZF4ZH-uI6H4Ry7T&export=download', 'https://yts-subs.com/movie-imdb/tt6450804', 'https://www.youtube.com/embed/oxy8udgWRmo', '#', '#'),
(28, 'Zombieland: Double Tap', 'Zombie Land Doubletap.jpg', 2019, 'Action', 'Action, Comedy, Horror', '1h 39min', '880.8 MB', 'https://drive.google.com/uc?id=1MRbFa-WLc_virfMZMMbrVE3i-i7Ysmwh&export=download', 'https://yts-subs.com/movie-imdb/tt1560220', 'https://www.youtube.com/embed/ZlW9yhUKlkQ', '#', '#'),
(29, 'Us', 'Us.jpg', 2019, 'Horror', 'Horror, Mystery, Thriller', '1h 56min', '996.1 MB', 'https://drive.google.com/uc?id=1Q01fhOAd3r5HIPpvQvAfgv1YCLDQTzft&export=download', 'https://yts-subs.com/movie-imdb/tt6857112', 'https://www.youtube.com/embed/hNCmb-4oXJA', '#', '#'),
(30, 'Maleficent: Mistress of Evil', 'Maleficent Mistress of Evil.jpg', 2019, 'Adventure', 'Adventure, Family, Fantasy', '1h 59min', '1.04 GB', 'https://drive.google.com/uc?id=1UxbdmlbA4cnQYl0YpZL2h6lln9XILV2k&export=download', 'https://yts-subs.com/movie-imdb/tt4777008', 'https://www.youtube.com/embed/yL1f8yNxGBk', '#', '#'),
(31, 'Ford v Ferrari', 'Ford v Ferrari.jpg', 2019, 'Action', 'Action, Biography, Drama', '2h 32min', '1.37 GB', 'https://drive.google.com/uc?id=1BnbW5533U4bxJCGCLA18LcR-In-4xVDz&export=download', 'https://www.yifysubtitles.com/movie-imdb/tt1950186', 'https://www.youtube.com/embed/I3h9Z89U9ZA', '#', '#'),
(32, 'Frozen II', 'Frozen.jpg', 2019, 'Animation', 'Animation, Adventure, Comedy', '1h 43min', '947 MB', 'https://drive.google.com/uc?id=1RrZvm4LNrU3bW0jANEa4jqzU6tCEQD1w&export=download', 'http://www.yifysubtitles.com/movie-imdb/tt4520988', 'https://www.youtube.com/embed/bwzLiQZDw2I', '#', 'yes'),
(33, 'Booksmart', 'Booksmart.jpg', 2019, 'Comedy', 'Comedy', '1h 42min', '896 MB', 'https://drive.google.com/uc?id=1fxzF8eWd_hj0iwToSqqLIbAQ9i0rsCVs&export=download', 'https://yts-subs.com/movie-imdb/tt1489887', 'https://www.youtube.com/embed/tX2MvB0kyA0', '#', '#'),
(34, 'Pain and Glory', 'Pain and Glory.jpg', 2019, 'Drama', 'Drama', '1h 53min', '1009 MB', 'https://drive.google.com/uc?id=162pSnCCtf3Q8mg5ALUz6AnFHn4jyNhvd&export=download', 'https://yts-subs.com/movie-imdb/tt8291806', 'https://www.youtube.com/embed/slW5bh11JBc', '#', '#'),
(35, 'Jojo Rabbit', 'Jojo Rabbit.jpg', 2019, 'Comedy', 'Comedy, Drama, War', '1h 48min', '996 MB', 'https://drive.google.com/uc?id=1FoQj3r3XIwla0VabHFxkAMZBlSS5jafK&export=download', 'https://www.yifysubtitles.com/movie-imdb/tt2584384', 'https://www.youtube.com/embed/eDOEIUbaT-U', '#', '#'),
(36, 'Midsommar', 'Midsommar.jpg', 2019, 'Drama', 'Drama, Horror, Mystery', '2h 27min', '1.27 GB', 'https://drive.google.com/uc?id=1SL4HqJw2IF4RmarU-uneuGsOpmL5Tcva&export=download', 'https://yts-subs.com/movie-imdb/tt8772262', 'https://www.youtube.com/embed/1Vnghdsjmd0', '#', '#'),
(37, 'Bombshell', 'Bombshell.jpg', 2019, 'Biography', 'Biography, Drama', '1h 49min', '998 MB', 'https://drive.google.com/uc?id=1t_lx0LesyzJtoBV3dcQiXb7SR-Tb_X4o&export=download', 'http://www.yifysubtitles.com/movie-imdb/tt6394270', 'https://www.youtube.com/embed/0rBnkBIhoFE', '#', '#'),
(38, 'Midway', 'Midway.jpg', 2019, 'Action', 'Action, Drama, History', '2h 18min', '1.24GB', 'https://drive.google.com/uc?id=1uWSj6HwvGHGREIASJmCdt1mx2OJWrgQV&export=download', 'https://www.yifysubtitles.com/movie-imdb/tt6924650', 'https://www.youtube.com/embed/l9laReRAYFk', '#', '#'),
(39, 'Doctor Sleep', 'Doctor Sleep.jpg', 2019, 'Drama', 'Drama, Fantasy, Horror', '2h 32min', '1.37 GB', 'https://drive.google.com/uc?id=1PyzVdYgG6kG7p69Ny3C_6xZl-VEHww2y&export=download', 'https://yts-subs.com/movie-imdb/tt5606664', 'https://www.youtube.com/embed/BOzFZxB-8cw', '#', 'yes'),
(40, 'Aladdin', 'Aladdin.jpg', 2019, 'Adventure', 'Adventure, Family, Fantasy', '2h 8min', '1.11 GB', 'https://drive.google.com/uc?id=1sOLmh_e79DXrdYs7OTGx_NkWvmZJS1N6&export=download', 'https://yts-subs.com/movie-imdb/tt6139732', 'https://www.youtube.com/embed/foyufD52aog', '#', '#'),
(41, 'Harriet', 'Harriet.jpg', 2019, 'Action', 'Action, Biography, Drama', '2h 5min', '1.1 GB', 'https://drive.google.com/uc?id=1BF2qCCGAqA6f0p1XRJu3_mve5B4PhC_Q&export=download', 'https://yts-subs.com/movie-imdb/tt4648786', 'https://www.youtube.com/embed/osP9iJjvlAE', '#', '#'),
(42, 'Wrong Turn', 'Wrong Turn.jpg', 2003, 'Horror', 'Horror', '1h 24min', '648 MB', 'https://drive.google.com/uc?id=1gTt_8yMd6nbww9oKmeMqmWaGzRcQAd2X&export=download', 'https://yts-subs.com/movie-imdb/tt0295700', 'https://www.youtube.com/embed/naUUyD-_oPc', '#', '#'),
(43, 'Knives Out', 'Knives Out.jpg', 2019, 'Comedy', 'Comedy, Crime, Drama', '2h 11min', '1.17 GB', 'https://drive.google.com/uc?id=1sx6tBrySZut6ennMhBzC4VcwYKdlNRGo&export=download', 'https://www.yifysubtitles.com/subtitles/knives-out-english-yify-163053', 'https://www.youtube.com/embed/qGqiHJTsRkQ', '#', 'yes'),
(44, '1917', '1917.jpg', 2019, 'Drama', 'Drama, War', '1h 59min', '1.07 GB', 'https://drive.google.com/uc?id=1-l80ieplPQ9M34pi5LnAu31ThIySIS9t&export=download', 'https://www.yifysubtitles.com/movie-imdb/tt8579674', 'https://www.youtube.com/embed/YqNYrYUiMfg', '#', '#'),
(45, 'The Lighthouse', 'The Light House.jpg', 2019, 'Drama', 'Drama, Fantasy, Horror', '1h 49min', '972 MB', 'https://drive.google.com/uc?id=1Pu9RZDfc3j6RiyrkZrCchRzY4R6KP4wU&export=download', 'https://www.yifysubtitles.com/movie-imdb/tt7984734', 'https://www.youtube.com/embed/fKvcPzskauY', '#', 'yes'),
(46, 'Jumanji: The Next Level', 'Jumanji Next Level.jpg', 2019, 'Action', 'Action, Adventure, Comedy', '2h 3min', '1.1 GB', 'https://drive.google.com/uc?id=1LTDT9b_iIbdfoXojujjkZD8mlS6UdRuw&export=download', 'http://www.yifysubtitles.com/movie-imdb/tt7975244', 'https://www.youtube.com/embed/rBxcF-r9Ibs', '#', '#'),
(47, 'Hustlers', 'Hustlers.jpg', 2019, 'Comedy', 'Comedy, Crime, Drama', '1h 50min', '972 MB', 'https://drive.google.com/uc?id=14HRqtoAu0B1Y8pSWkXJ6xS68aBAOmn29&export=download', 'http://www.yifysubtitles.com/movie-imdb/tt5503686', 'https://www.youtube.com/embed/46XaikZ0FSw', '#', '#'),
(48, 'Dark Waters', 'Dark Waters.jpg', 2019, 'Biography', 'Biography, Drama, History', '2h 6min', '1.14 GB', 'https://drive.google.com/uc?id=1VcqMMDThk9pEYmmhmSStL9zTUlpWyy6f&export=download', 'http://www.yifysubtitles.com/movie-imdb/tt9071322', 'https://www.youtube.com/embed/RvAOuhyunhY', '#', 'yes'),
(49, 'Birds of Prey: And the Fantabulous Emancipation of One Harley Quinn', 'Birds of Prey.jpg', 2020, 'Action', 'Action, Adventure, Crime', '1h 49min', '999 MB', 'https://drive.google.com/uc?id=1h74bO8CN3KvTlcFnEzL3wuDsmexZhGjN&export=download', 'http://www.yifysubtitles.com/movie-imdb/tt7713068', 'https://www.youtube.com/embed/x3HbbzHK5Mc', '#', '#'),
(50, 'The Grudge', 'The Grudge.jpg', 2020, 'Horror', 'Horror, Mystery', '1h 34min', '860 MB', 'https://drive.google.com/uc?id=1d9-a5xjX-YguJiG7fdgjJm486mE3idlm&export=download', 'http://www.yifysubtitles.com/movie-imdb/tt3612126', 'https://www.youtube.com/embed/O2NKzO-fxwQ', '#', '#'),
(51, 'Star Wars: Episode IX - The Rise of Skywalker', 'Star Wars X.jpg', 2019, 'Action', 'Action, Adventure, Fantasy', '2h 22min', '1.27 GB', 'https://drive.google.com/uc?id=16hjRi3Z3zuO--zbAY7wY3dWEDmQBkX0h&export=download', 'https://www.yifysubtitles.com/movie-imdb/tt2527338', 'https://www.youtube.com/embed/8Qn_spdM5Zg', '#', '#'),
(52, 'Alita: Battle Angel', 'Alita Battle.jpg', 2019, 'Action', 'Action, Adventure, Sci-Fi', '2h 2min', '1.96 GB', 'https://drive.google.com/uc?id=1eFvlc0VV738xUaPahrkS7DckwQUcWCPR&export=download', 'http://www.yifysubtitles.com/movie-imdb/tt0437086', 'https://www.youtube.com/embed/cislZ9S0ocA', '#', '#'),
(53, 'Atlantics', 'Atlantics.jpg', 2019, 'Drama', 'Drama', '1h 46min', '837 MB', 'https://drive.google.com/uc?id=1ZjuRx5fTky778kahd-p7xrhlLqqyKejy&export=download', 'http://www.yifysubtitles.com/movie-imdb/tt10199586', 'https://www.youtube.com/embed/u6b4PgKq2dE', '#', '#'),
(54, 'Gemini Man', 'Gemini Man.jpg', 2019, 'Action', 'Action, Drama, Sci-Fi ', '1h 57min', '1.03 GB', 'https://drive.google.com/uc?id=1ll75Mh8nA3EUI1Q6sCa4GmZ-JiWr2fVI&export=download', 'http://www.yifysubtitles.com/movie-imdb/tt1025100', 'https://www.youtube.com/embed/6orc_lHvJKY', '#', '#'),
(55, 'Honey Boy', 'Honey Boy.jpg', 2019, 'Drama', 'Drama', '1h 34min', '864 MB', 'https://drive.google.com/uc?id=1w22ryq6cbJzI3xDD6NChoVhHb5dw-x6v&export=download', 'http://www.yifysubtitles.com/movie-imdb/tt8151874', 'https://www.youtube.com/embed/5RR8WTQzwSk', '#', '#'),
(56, 'Rocketman', 'Rocketman.jpg', 2019, 'Biography', 'Biography, Drama, Music', '2h 1min', '973 MB', 'https://drive.google.com/uc?id=1vs6Za8qEdjhVlqKUIY3t-Ylmvc7pc7Jg&export=download', 'https://www.opensubtitles.org/en/search/sublanguageid-eng/idmovie-167147', 'https://www.youtube.com/embed/S3vO8E2e6G0', '#', '#'),
(57, 'The Last Black Man in San Francisco', 'The Last Black.jpg', 2019, 'Drama', 'Drama', '2h 1min', '1.04 GB', 'https://drive.google.com/uc?id=1_4STh3vQIlH380lcmRNBiZyAptmLlpbU&export=download', 'https://www.opensubtitles.org/en/search/sublanguageid-eng/idmovie-733939', 'https://www.youtube.com/embed/C0FnJDhY9-0', '#', '#'),
(58, 'Little Women', 'Little Women.jpg', 2019, 'Drama', 'Drama, Romance', '2h 15min', '1.21 GB', 'https://drive.google.com/uc?id=1mfL_bDBaZFZigk39ezQBPN6BFWvmyXmu&export=download', 'http://www.yifysubtitles.com/movie-imdb/tt3281548', 'https://www.youtube.com/embed/AST2-4db4ic', '#', 'yes'),
(59, 'The Souvenir', 'Souvenir.jpg', 2019, 'Drama', 'Drama, Mystery, Romance', '2h', '955 MB', 'https://drive.google.com/uc?id=1ThrCiFsrPo03ji7BzCfYDhVhuQ3s2-ne&export=download', 'http://www.yifysubtitles.com/movie-imdb/tt6920356', 'https://www.youtube.com/embed/t9Al2nC0vzY', '#', '#'),
(60, 'Waves', 'Waves.jpg', 2019, 'Drama', 'Drama, Romance, Sport', '2h 15min', '1.22 GB', 'https://drive.google.com/uc?id=1TesVsXEZvhIpO9Er1UqRsT6Z794R01QE&export=download', 'http://www.yifysubtitles.com/movie-imdb/tt8652728', 'https://www.youtube.com/embed/V5z3cr8AB5g', '#', '#'),
(61, 'The Report', 'The Report.jpg', 2019, 'Biography ', 'Biography, Crime, Drama', '1h 59min', '1.03 GB', 'https://drive.google.com/uc?id=1yQHwjGWsGXR2PTmmX_6emUXA1TY-wnYC&export=download', 'http://www.yifysubtitles.com/movie-imdb/tt8236336', 'https://www.youtube.com/embed/ul5GFfMAvtg', '#', '#'),
(62, 'Sonic the Hedgehog', 'Sonic Hedgehog.jpg', 2020, 'Action', 'Action, Adventure, Comedy', '1h 39min', '911 MB', 'https://drive.google.com/uc?id=1JdS1VxyOmG93t1IDk8JBv_-m3oSBpRTb&export=download', 'http://www.yifysubtitles.com/movie-imdb/tt3794354', 'https://www.youtube.com/embed/szby7ZHLnkA', '#', '#'),
(63, 'Escape from Pretoria', 'Escape Pretoria.jpg', 2020, 'Thriller', 'Thriller', '1h 46min', '974 MB', 'https://drive.google.com/uc?id=1txDdY5F-npsfnwDfPxX7YDGD0yurz1xY&export=download', 'http://www.yifysubtitles.com/movie-imdb/tt5797184', 'https://www.youtube.com/embed/VfjoofUEcy0', '#', '#'),
(64, 'Escape Room', 'Escape Room.jpg', 2019, 'Action', 'Action, Adventure, Horror', '1h 39min', '854 MB', 'https://drive.google.com/uc?id=1f3mRg-m6q1SPboCFm6X_CmKfAwSOWlIp&export=download', 'http://www.yifysubtitles.com/movie-imdb/tt5886046', 'https://www.youtube.com/embed/6dSKUoV0SNI', '#', '#'),
(65, 'Godzilla: King of the Monsters', 'Godzilla.jpg', 2019, 'Action', 'Action, Adventure, Fantasy', '2h 12min', '2.08 GB', 'https://drive.google.com/uc?id=1QC-le23_hmKscPTKlSFAmU31u8E0Zae4&export=download', 'http://www.yifysubtitles.com/movie-imdb/tt3741700', 'https://www.youtube.com/embed/QFxN2oDKk0E', '#', '#'),
(66, 'X-Men: Dark Phoenix', 'X-Men Dark Phoenix.jpg', 2019, 'Action', 'Action, Adventure, Sci-Fi', '1h 53min', '1023 MB', 'https://drive.google.com/uc?id=1iKVK_sxCoU8yk3xBj2DZ7YmnIYWcet6A&export=download', 'http://www.yifysubtitles.com/movie-imdb/tt6565702', 'https://www.youtube.com/embed/azvR__GRQic', '#', '#'),
(67, 'Contagion', 'Contagion.jpg', 2011, 'Action', ' Action, Drama, Thriller', '1h 46min', '978 MB', 'https://drive.google.com/uc?id=1BNDG2x1sPztIzj35e04RhApbr3Gul2Im&export=download', 'http://www.yifysubtitles.com/movie-imdb/tt1598778', 'https://www.youtube.com/embed/4sYSyuuLk5g', '#', '#'),
(68, 'Wrong Turn 2: Dead End', 'Wrong Turn 2.jpg', 2007, 'Horror', 'Horror', '1h 33min', '699 MB', 'https://drive.google.com/uc?id=1243GKru-ZeHji0UHLnTWt6CyDDNZgR1c&export=download', 'http://www.yifysubtitles.com/movie-imdb/tt0804555', 'https://www.youtube.com/embed/VanCRj8eI9o', '#', '#'),
(69, 'Wrong Turn 3: Left for Dead', 'Wrong Turn 3.jpg', 2009, 'Horror', 'Horror', '1h 32min', '698 MB', 'https://drive.google.com/uc?id=19uzsZS2EZyHG7IhuHmo2hGXuRXXncFkq&export=download', 'http://www.yifysubtitles.com/movie-imdb/tt1261978', 'https://www.youtube.com/embed/yYAyDmOjZi0', '#', '#'),
(70, 'Wrong Turn 4: Bloody Beginnings', 'Wrong Turn 4.jpg', 2011, 'Horror', 'Horror', '1h 33min', '696 MB', 'https://drive.google.com/uc?id=123yUeJfW9AtDBl_dQsGhz30jUBPInFYO&export=download', 'http://www.yifysubtitles.com/movie-imdb/tt1865567', 'https://www.youtube.com/embed/fulKeIZM2-s', '#', '#'),
(71, 'Wrong Turn 5: Bloodlines', 'Wrong Turn 5.jpg', 2012, 'Horror', 'Horror', '1h 31min', '695 MB', 'https://drive.google.com/uc?id=1okIFmCiSy9e2q7ymdTPnTIlQyQnvxsMa&export=download', 'http://www.yifysubtitles.com/movie-imdb/tt2375779', 'https://www.youtube.com/embed/5yi0aIRi3eg', '#', '#'),
(72, 'Wrong Turn 6: Last Resort', 'Wrong Turn 6.jpg', 2014, 'Horror', 'Horror', '1h 31min', '1.33 GB', 'https://drive.google.com/uc?id=1QPmoJYkm8iDuuw22VKMMgBUaeslyB6hw&export=download', 'https://www.opensubtitles.org/en/search/sublanguageid-all/idmovie-182960', 'https://www.youtube.com/embed/c9TqCwh_RW4', '#', '#'),
(73, 'The Nun', 'The Nun.jpg', 2018, 'Horror', 'Horror, Mystery, Thriller', '1h 36min', '836 MB', 'https://drive.google.com/uc?id=1WFBiM4YA9VX345x1-hKGjF-qqMomkHyE&export=download', 'http://www.yifysubtitles.com/movie-imdb/tt5814060', 'https://www.youtube.com/embed/pzD9zGcUNrw', '#', '#'),
(74, 'The Call of the Wild', 'The Call Wild.jpg', 2020, 'Adventure', 'Adventure, Drama, Family', '1h 40min', '915 MB', 'https://drive.google.com/uc?id=102-6LB-ZG5e6dlDXfeuM7faFHmAk4eAK&export=download', 'http://www.yifysubtitles.com/movie-imdb/tt7504726', 'https://www.youtube.com/embed/5P8R2zAhEwg', '#', '#'),
(75, 'The Gentlemen', 'The Gentemen.jpg', 2019, 'Action', 'Action, Comedy, Crime', '1h 53min', '1.02 GB', 'https://drive.google.com/uc?id=199duFpFUi37PyL-6M5F8Ir_-lkb4d3Uh&export=download', 'http://www.yifysubtitles.com/movie-imdb/tt8367814', 'https://www.youtube.com/embed/Qkr7xwyIKbg', '#', '#'),
(76, 'Onward', 'Onward.jpg', 2020, 'Animation', 'Animation, Adventure, Comedy', '1h 42min', '939 MB', 'https://drive.google.com/uc?id=1CMpTVzmZe5rz6qmmggix_muxmnXDdiSS&export=download', 'http://www.yifysubtitles.com/movie-imdb/tt7146812', 'https://www.youtube.com/embed/HxKXiQvyG_o', '#', 'yes'),
(77, 'Bloodshot', 'Bloodshot.jpg', 2020, 'Action', 'Action, Drama, Sci-Fi', '1h 49min', '1005 MB', 'https://drive.google.com/uc?id=1rFf5RE_uYio1vLl8iJhPxy5es3O_Isbg&export=download', 'http://www.yifysubtitles.com/movie-imdb/tt1634106', 'https://www.youtube.com/embed/vOUVVDWdXbo', '#', '#'),
(78, 'Bad Boys for Life', 'Bad Boys 3.jpg', 2020, 'Action', 'Action, Comedy, Crime', '2h 4min', '1.11 GB', 'https://drive.google.com/uc?id=1TDoUqJYTnvgz02m38gMOaifB0W72GOUk&export=download', 'http://www.yifysubtitles.com/movie-imdb/tt1502397', 'https://www.youtube.com/embed/R228yPrwqTo', 'new', '#'),
(79, 'Underwater', 'Underwater.jpg', 2020, 'Action', 'Action, Drama, Horror', '1h 35min', '871 MB', 'https://drive.google.com/uc?id=14tdUqtxPFVN4rKZ1zJWlojMGqw_iATl4&export=download', 'https://www.opensubtitles.org/en/search/sublanguageid-all/idmovie-774920', 'https://www.youtube.com/embed/jCFWEzIVILc', 'new', '#'),
(80, 'Abominable', 'Abominable.jpg', 2019, 'Animation', 'Animation, Adventure, Comedy', '1h 37min', '864 MB', 'https://drive.google.com/uc?id=14glaj5W9Jm6UOEoqAfoD1GSP45oZ_7Rs&export=download', 'https://yts-subs.com/movie-imdb/tt6324278', 'https://www.youtube.com/embed/Ap0NRJD-2ts', '#', '#'),
(81, 'Justice League Dark: Apokolips War', 'Justice League 2020.jpg', 2020, 'Animation', 'Animation', '1h 30min', '877 MB', 'https://drive.google.com/uc?id=1_poI3qgCreABGDLqFAS6JC0zfy426keW&export=download', 'https://www.opensubtitles.org/en/search/sublanguageid-all/idmovie-911390', 'https://www.youtube.com/embed/tnCkn5xD2jg', 'new', 'yes'),
(82, 'Extraction', 'Extraction 2020.jpg', 2020, 'Action', ' Action, Thriller', '1h 56min', '1.05 GB', 'https://drive.google.com/uc?id=1ZBTQwEWZv1D1KnwhKe4JSfn7GSPZ7GS3&export=download', 'https://yifysubtitles.org/movie-imdb/tt8936646', 'https://www.youtube.com/embed/L6P3nI6VnlY', 'new', '#'),
(83, 'My Spy', 'My Spy 2020.jpg', 2020, 'Action', 'Action, Comedy, Family', '1h 39min', '911 MB', 'https://drive.google.com/uc?id=1Go5aIJtAWkzfB4Wi5yh_XSUtPtpMAgo_&export=download', 'https://yifysubtitles.org/movie-imdb/tt8242084', 'https://www.youtube.com/embed/pfAhQSz-j_o', 'new', '#'),
(84, 'Mortal Kombat Legends: Scorpion\'s Revenge', 'Mortal Kombat 2020.jpg', 2020, 'Animation', 'Animation, Action, Adventure', '1h 20min', '734 MB', 'https://drive.google.com/uc?id=1G5lAUSzWBjjvYSab1hfKrao-8RWJzp0P&export=download', 'https://www.opensubtitles.org/en/search/sublanguageid-all/idmovie-903018', 'https://www.youtube.com/embed/I1vccr3yWBU', 'new', '#'),
(85, 'The Lodge', 'The Lodge 2020.jpg', 2019, ' Drama', ' Drama, Horror, Thriller', '1h 48min', '994 MB', 'https://drive.google.com/uc?id=13GfD9CVUIHW2g1sS7U3kk1cAnpSd6RDp&export=download', 'https://www.opensubtitles.org/en/search/sublanguageid-all/idmovie-714787', 'https://www.youtube.com/embed/dCLOqdzAP9E', 'new', '#'),
(86, 'The Assistant', 'The Assistant 2019.jpg', 2019, 'Drama', 'Drama', '1h 27min', '806 MB', 'https://drive.google.com/uc?id=118bn0HIlkzqixJB23PJ10X_PWfCI8DZI&export=download', 'https://www.opensubtitles.org/en/search/sublanguageid-all/idmovie-895270', 'https://www.youtube.com/embed/6cLf0i-kYio', 'new', '#'),
(87, 'The Turning', 'The turnig 2020.jpg', 2020, 'Drama', 'Drama, Horror, Mystery', '1h 34min', '867 MB', 'https://drive.google.com/uc?id=1eBTgDxWfHoivY-ylZkO1LrnfXJ9UnXoR&export=download', 'https://www.opensubtitles.org/en/search/sublanguageid-all/idmovie-776857', 'https://www.youtube.com/embed/rl33gU2APIs', '#', '#'),
(88, 'Fantasy Island', 'Fantasy Island 2020.jpg', 2020, 'Adventure', 'Adventure, Fantasy, Horror', '1h 49min', '1004 MB', 'https://drive.google.com/uc?id=1EF-UP53eKf1gOElln7yCtfoZT04PMDIN&export=download', 'https://yifysubtitles.org/movie-imdb/tt0983946', 'https://www.youtube.com/embed/AuDROG1g6bM', '#', '#'),
(89, 'Brahms: The Boy II', 'The Boy 2020.jpg', 2020, 'Drama', 'Drama, Horror, Mystery', '1h 26min', '794 MB', 'https://drive.google.com/uc?id=17ujOwJ3iD0Y5WX7SVxjrmD1Bof3LbwZa&export=download', 'https://yifysubtitles.org/movie-imdb/tt9173418', 'https://www.youtube.com/embed/ytxEldPKnyA', '#', '#');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `movies`
--
ALTER TABLE `movies`
  ADD PRIMARY KEY (`m_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `movies`
--
ALTER TABLE `movies`
  MODIFY `m_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=90;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
