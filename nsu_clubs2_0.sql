-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Sep 07, 2021 at 09:42 PM
-- Server version: 10.4.13-MariaDB
-- PHP Version: 7.4.7

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `nsu_clubs2.0`
--

-- --------------------------------------------------------

--
-- Table structure for table `clubs`
--

CREATE TABLE `clubs` (
  `id` int(10) UNSIGNED NOT NULL,
  `club_initial` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `club_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `Description` longtext COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `logo` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `cover_photo` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `clubs`
--

INSERT INTO `clubs` (`id`, `club_initial`, `club_name`, `Description`, `logo`, `cover_photo`) VALUES
(1, 'ACM', 'Association for Computing Machinery', 'The NSU ACM Chapter primarily serve the wide scope of ACM to advance computing as a science and profession by supporting and training NSU students.', '1630263817-Association for Computing Machinery.png', '1630263817-Association for Computing Machinery.png'),
(2, 'APC', 'Art & Photography Club', 'NSUPC - The Art Force of NSU! As its motto says, is a major outlet of creativity for the students in NSU. Our goal is to develop quality photographers and to establish a network between established and amateur photographers.', 'nsu_apc_logo.jpg', '1629825281-Art & Photography Club.jpg'),
(3, 'SS', 'Shangskritik Shangathan', 'North-south University Shangskritik Shangathan (NSUSS), started in 1992 along with two other clubs collectively as the Green Club. The organization then decided to separate its roots and in 1993, NSUSS was established as a distinct club whose main aim was to bring out the cultural aspects of Bangladesh and portray them in innovative ways. NSUSS initially structured two main events, Rabindro Joyonti and Nazrul Joyonti. In 1994, NSUSS successfully orchestrated the first Annual Cultural Evening (also known as ACE) of North South University which took place in the Osmany Auditorium.\r\nAs the University set foot to its new campus (Bashundhara), NSUSS made NAC 1046 and NAC 1047 (located on the 10th floor) their new home. With new beginnings, the NSUSS brought out new possibilities. In 2012 NSUSS started celebrating events such as Boshonto and Boishakh, on a massive scale where the members took the ingenuity to decorate the entire campus with handmade adornments (especially for these occasions). Alongside, NSUSS orga', 'nsu_ss_logo.jpg', '1630412642-Shangskritik Shangathan.jpg'),
(4, 'CEC', 'Computer & Engineering Club', 'North South University Computer and Engineering Club (NSU CEC) is the one and only Engineering club in ECE department of North South University, established in Fall 2015, affiliated from three of the most reputed clubs of NSU, which are NSU Computer Club (NSUCC), NSU Wireless Forum (NSU WF) and NSU Society of Science, Engineering and Technology (NSU SSET). NSUCEC has devoted itself towards one large goal, ‘Creating Tech Leaders of Tomorrow’, with all the active members of CC, WF, and SSET. The main objective of NSUCEC is to promote the ECE department of NSU to offer an extensive study of the IT and Telecom industries of Bangladesh through seminars, workshops, publications and study tours. It is also the mission of NSUCEC to create a relationship between industries and the academy.', '1631033826-Computer & Engineering Club.jpg', '1631033826-Computer & Engineering Club.jpg'),
(5, 'AC', 'Athletics Club', 'Born in 1995, North South University Athletics Club or popularly known as NSUAC is the 1st and ONLY club as well as organization that Promotes, Organizes and Controls ALL THE SPORTING ACTIVITIES of North South University.', 'nsu_nusac_logo.png', NULL),
(6, 'CDC', 'Cine and Drama Club', 'NSU Cine & Drama Club (NSUCDC) can be described as a club that aims to promote the appreciation of the art of cinema and theatre. The tag line of the club is \"Explore Yourself.\"', 'nsu_cdc_logo.jpg', NULL),
(7, 'SSC', 'Social Services Club', 'Established in the spring of 1994, North South University Social Services Club (NSUSSC) is one of the oldest clubs of North South University and also the only club whose main objective is to offer assistance to the underprivileged and the unfortunate in the society.\r\n\r\nWith most of the people living below the poverty line, and the country facing an endless barrage of natural calamities, there is almost no end to the societal problems, which are mostly due to the lack of education, money and the lack of facilities and support provided by the government to the poor. Inadequate funds have left cancer and AIDS patients, acid victims, orphans, drug addicts with little or no hope; the situation is simply heartrending. Natural calamities such as floods and cyclones have left many on the breadline – this is the common scenario in Bangladesh. NSUSSC believes that it is a moral duty as citizens of Bangladesh, more importantly as human beings, to help out the people in need. NSUSSC tries its best to contribute and offer', 'nsu_ssc_logo.jpg', NULL),
(8, 'IEEE', 'Institute of Electrical and Electronics Engineers\r\n', 'IEEE NSU Student Branch (INSB) is a technical subunit of IEEE societies which associates with valuable resources available from IEEE.\r\nINSB is basically here to fulfill the needs of members and the mission of IEEE.\r\nIt provides an opportunity for student members to begin networking in their areas of interest, and future profession as well as enjoy all the benefits and facilities of being an IEEE member.', 'nsu_ieee_logo.jpg', NULL),
(9, 'DC', 'Debate Club', 'NSU Debate Club is one of the most popular and most successful clubs in North South University. Established in 1993, the first student activity club of NSU.', 'nsu_dc_logo.png', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `club_managers`
--

CREATE TABLE `club_managers` (
  `man_id` int(10) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `club_id` int(10) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `club_managers`
--

INSERT INTO `club_managers` (`man_id`, `user_id`, `club_id`) VALUES
(1, 9, 1),
(2, 10, 4),
(3, 12, 3),
(4, 8, 4);

-- --------------------------------------------------------

--
-- Table structure for table `departments`
--

CREATE TABLE `departments` (
  `dept_id` int(11) NOT NULL,
  `dept_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `departments`
--

INSERT INTO `departments` (`dept_id`, `dept_name`) VALUES
(1, 'Accounting & Finance'),
(2, 'Marketing & International Business'),
(3, 'Management'),
(4, 'Economics'),
(5, 'Electrical and Computer Engineering'),
(6, 'Architecture'),
(7, 'Civil and Environmental Engineering'),
(8, 'Mathematics & Physics'),
(9, 'English & Modern Languages'),
(10, 'Political Science & Sociology'),
(11, 'History & Philosophy'),
(12, 'Law'),
(13, 'Biochemistry and Microbiology'),
(14, 'Public Health'),
(15, 'Pharmaceutical Sciences'),
(16, 'Environmental Science and Management');

-- --------------------------------------------------------

--
-- Table structure for table `events`
--

CREATE TABLE `events` (
  `event_id` int(10) UNSIGNED NOT NULL,
  `club_id` int(10) UNSIGNED NOT NULL,
  `event_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `event_description` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `event_date` date NOT NULL,
  `cover_photo` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `start_at` time NOT NULL,
  `end_at` time NOT NULL,
  `about_image` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `events`
--

INSERT INTO `events` (`event_id`, `club_id`, `event_name`, `event_description`, `event_date`, `cover_photo`, `created_at`, `updated_at`, `start_at`, `end_at`, `about_image`) VALUES
(35, 4, 'Cyber Mania', 'NSU Computer & Engineering Club successfully organized \"Cyber Mania\" in association with BD Cosplayers and Dhaka Geek Convention for the very first time with huge responses from the students all over Bangladesh where K-POP performance and competitions like AMV, Cosplay & Art made the hearts beat fast and the toes tap faster with the DJ beats.BD cosplayers also joined the event which made the event more glorious. Participants portrayed their favorite fictional characters, Anime characters like Maleficant, Wonder Woman, Nagumo Hajime, Joker, Barbie, Ada wong and so on. Besides, the K-POP performance and DJ show attracted all the spectators.\r\n\r\nThe famous online shop \'knock\' was also there with their amazing posters, key rings, bags, hoodies and all other amazing products.\r\n\r\nWe express our heart felt gratitude to the Cosplay Judges, participants and all Club bodies for turning this event into a huge success.', '2021-09-10', '1630414971-Cyber Mania.jpg', '2021-08-31 06:41:19', '2021-08-31 07:02:51', '10:00:00', '18:00:00', '1630413734-Cyber Mania.jpg'),
(36, 4, 'Samsung eSports Championship', 'Samsung eSports Championship 2019\r\n\r\nGame: Dota 2\r\nFree Registration\r\n\r\nBooth Location: SAC side , Plaza Area\r\n\r\nRegistration process-\r\n• Players must be current students of NSU (undergraduate & postgraduate both)\r\n• Players must come to the booth in teams, and respective club moderator will register the required info in database\r\n• After successful registration, a team code and respective player codes will be given to the team\r\n• Players must bring and submit their University ID card photocopy\r\n• Team Captain + 1 must be present for registration\r\n\r\n\r\nSamsung Bangladesh is launching the phase 1 of prestigious \"Samsung eSports Championship 2019\", where you can make winning plays for your University to become the first ever Inter-University Grand Champion team!\r\nCan you #rulethegame?\r\nCan you make the #winningplay?\r\nNo registration fee for participation\r\n6 Universities\r\n48 Teams (8 from each university)\r\n6 Finalists (1 from each university qualifier round)\r\n1 Grand Champion\r\nTotal Prize pool- BDT 500,000 equivalent gifts from Samsung\r\nGame - Dota 2\r\nUniversities- IUB, BRAC, AIUB, EWU, ULAB, and 1 more\r\nLook out for the registration booth in your campus.\r\nRegistration process-\r\n• Players must be current students of the university (undergraduate & postgraduate both)\r\n• Players must come to the booth in teams, and respective club moderator will register the required info in database\r\n• After successful registration, a team code and respective player codes will be given to the team\r\n• Players must bring and submit their University ID card photocopy\r\n• Team Captain + 1 must be present for registration', '2021-10-20', '1630434346-Samsung eSports Championship.jpg', '2021-08-31 06:51:48', '2021-09-01 01:46:17', '11:00:00', '20:00:00', '1630414444-Samsung eSports Championship.jpg'),
(37, 4, 'Seminar on Graduate Study Opportunity at GWU', 'Seminar on \"Engineering & Computer Science Graduate Study Opportunities at The George Washington University and in collaboration with NSU\" by Britanny Wright,the Director of Graduate Admissions & Enrollment Management at the School of Engineering & Applied Science (SEAS) GWU', '2021-09-30', '1630415761-Seminar on Graduate Study Opportunity at GWU.jpg', '2021-08-31 07:16:01', '2021-08-31 07:17:48', '18:00:00', '20:00:00', '1630415868-Seminar on Graduate Study Opportunity at GWU.jpg'),
(38, 1, 'Technovation', 'The signature event of NSU ACM SC, national tech fest is back with a grand platform for showcase tech talents.', '2021-09-26', '1630480787-Technovation.jpg', '2021-09-01 01:19:47', '2021-09-01 01:21:21', '11:00:00', '17:00:00', '1630480881-Technovation.jpg');

-- --------------------------------------------------------

--
-- Table structure for table `event_photos`
--

CREATE TABLE `event_photos` (
  `p_id` int(10) UNSIGNED NOT NULL,
  `path` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `event_id` int(10) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `event_photos`
--

INSERT INTO `event_photos` (`p_id`, `path`, `event_id`, `created_at`, `updated_at`) VALUES
(23, '1630413734-BrdSH0Tj-Cyber Mania.jpg', 35, '2021-08-31 06:42:14', '2021-08-31 06:42:14'),
(24, '1630413734-N01718kS-Cyber Mania.jpg', 35, '2021-08-31 06:42:14', '2021-08-31 06:42:14'),
(25, '1630413734-ZlCYiaNi-Cyber Mania.jpg', 35, '2021-08-31 06:42:14', '2021-08-31 06:42:14'),
(26, '1630413734-9B6XlHAm-Cyber Mania.jpg', 35, '2021-08-31 06:42:14', '2021-08-31 06:42:14'),
(28, '1630414444-BpNBrSXT-Samsung eSports Championship.jpg', 36, '2021-08-31 06:54:04', '2021-08-31 06:54:04'),
(29, '1630414444-9Dq8Y9Rd-Samsung eSports Championship.jpg', 36, '2021-08-31 06:54:04', '2021-08-31 06:54:04'),
(31, '1630414590-Q4owFlgp-Samsung eSports Championship.jpg', 36, '2021-08-31 06:56:30', '2021-08-31 06:56:30'),
(32, '1630414945-TmStIEHL-Cyber Mania.jpg', 35, '2021-08-31 07:02:25', '2021-08-31 07:02:25'),
(33, '1630415463-VMBlkyhU-Cyber Mania.jpg', 35, '2021-08-31 07:11:03', '2021-08-31 07:11:03'),
(34, '1630415868-712zsZLl-Seminar on Graduate Study Opportunity at GWU.jpg', 37, '2021-08-31 07:17:48', '2021-08-31 07:17:48'),
(35, '1630415868-1cAAWQFv-Seminar on Graduate Study Opportunity at GWU.jpg', 37, '2021-08-31 07:17:48', '2021-08-31 07:17:48'),
(36, '1630415868-Zt4O4JHB-Seminar on Graduate Study Opportunity at GWU.jpg', 37, '2021-08-31 07:17:48', '2021-08-31 07:17:48'),
(39, '1630415869-C4o1CbmR-Seminar on Graduate Study Opportunity at GWU.jpg', 37, '2021-08-31 07:17:49', '2021-08-31 07:17:49'),
(40, '1630415869-kBIorHGv-Seminar on Graduate Study Opportunity at GWU.jpg', 37, '2021-08-31 07:17:49', '2021-08-31 07:17:49'),
(42, '1630428428-tme2CR1J-Seminar on Graduate Study Opportunity at GWU.jpg', 37, '2021-08-31 10:47:08', '2021-08-31 10:47:08'),
(44, '1630480881-ki5uMq4G-Technovation.jpg', 38, '2021-09-01 01:21:21', '2021-09-01 01:21:21'),
(45, '1630480881-QuG6r9Il-Technovation.jpg', 38, '2021-09-01 01:21:21', '2021-09-01 01:21:21'),
(46, '1630480881-DFHM8WzD-Technovation.jpg', 38, '2021-09-01 01:21:21', '2021-09-01 01:21:21'),
(47, '1630480881-A13APap1-Technovation.jpg', 38, '2021-09-01 01:21:21', '2021-09-01 01:21:21'),
(48, '1630480882-H2liTsbF-Technovation.jpg', 38, '2021-09-01 01:21:22', '2021-09-01 01:21:22'),
(49, '1630480882-mN0vOI1G-Technovation.jpg', 38, '2021-09-01 01:21:22', '2021-09-01 01:21:22'),
(50, '1630482326-UMX6LFG1-Samsung eSports Championship.jpg', 36, '2021-09-01 01:45:26', '2021-09-01 01:45:26'),
(51, '1630482376-hy6Ufr2b-Samsung eSports Championship.jpg', 36, '2021-09-01 01:46:16', '2021-09-01 01:46:16');

-- --------------------------------------------------------

--
-- Table structure for table `executive__members`
--

CREATE TABLE `executive__members` (
  `m_id` int(10) UNSIGNED NOT NULL,
  `photo` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `executive__members`
--

INSERT INTO `executive__members` (`m_id`, `photo`) VALUES
(1029, '1629221684-Person 1.png'),
(1030, '1629221735-Person 2.png'),
(1031, '1629221845-Person 3.jpg'),
(1033, '1631034820-Carl Porter.jpg'),
(1034, '1631034699-Wilfred Ferguson.jpg'),
(1035, '1631034812-Wayne Green.jpg');

-- --------------------------------------------------------

--
-- Table structure for table `failed_jobs`
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

--
-- Dumping data for table `failed_jobs`
--

INSERT INTO `failed_jobs` (`id`, `uuid`, `connection`, `queue`, `payload`, `exception`, `failed_at`) VALUES
(1, '85ce080c-82d4-4c77-b51a-4407814d918a', 'database', 'default', '{\"uuid\":\"85ce080c-82d4-4c77-b51a-4407814d918a\",\"displayName\":\"App\\\\Mail\\\\newNoticeMail\",\"job\":\"Illuminate\\\\Queue\\\\CallQueuedHandler@call\",\"maxTries\":null,\"maxExceptions\":null,\"failOnTimeout\":false,\"backoff\":\"\",\"timeout\":null,\"retryUntil\":null,\"data\":{\"commandName\":\"Illuminate\\\\Mail\\\\SendQueuedMailable\",\"command\":\"O:34:\\\"Illuminate\\\\Mail\\\\SendQueuedMailable\\\":13:{s:8:\\\"mailable\\\";O:22:\\\"App\\\\Mail\\\\newNoticeMail\\\":29:{s:7:\\\"\\u0000*\\u0000club\\\";O:45:\\\"Illuminate\\\\Contracts\\\\Database\\\\ModelIdentifier\\\":4:{s:5:\\\"class\\\";s:16:\\\"App\\\\Models\\\\Clubs\\\";s:2:\\\"id\\\";i:4;s:9:\\\"relations\\\";a:0:{}s:10:\\\"connection\\\";s:5:\\\"mysql\\\";}s:6:\\\"locale\\\";N;s:4:\\\"from\\\";a:0:{}s:2:\\\"to\\\";a:1:{i:0;a:2:{s:4:\\\"name\\\";N;s:7:\\\"address\\\";s:21:\\\"adnansadi52@gmail.com\\\";}}s:2:\\\"cc\\\";a:0:{}s:3:\\\"bcc\\\";a:0:{}s:7:\\\"replyTo\\\";a:0:{}s:7:\\\"subject\\\";N;s:11:\\\"\\u0000*\\u0000markdown\\\";N;s:7:\\\"\\u0000*\\u0000html\\\";N;s:4:\\\"view\\\";N;s:8:\\\"textView\\\";N;s:8:\\\"viewData\\\";a:0:{}s:11:\\\"attachments\\\";a:0:{}s:14:\\\"rawAttachments\\\";a:0:{}s:15:\\\"diskAttachments\\\";a:0:{}s:9:\\\"callbacks\\\";a:0:{}s:5:\\\"theme\\\";N;s:6:\\\"mailer\\\";s:4:\\\"smtp\\\";s:29:\\\"\\u0000*\\u0000assertionableRenderStrings\\\";N;s:10:\\\"connection\\\";N;s:5:\\\"queue\\\";N;s:15:\\\"chainConnection\\\";N;s:10:\\\"chainQueue\\\";N;s:19:\\\"chainCatchCallbacks\\\";N;s:5:\\\"delay\\\";N;s:11:\\\"afterCommit\\\";N;s:10:\\\"middleware\\\";a:0:{}s:7:\\\"chained\\\";a:0:{}}s:5:\\\"tries\\\";N;s:7:\\\"timeout\\\";N;s:17:\\\"shouldBeEncrypted\\\";b:0;s:10:\\\"connection\\\";N;s:5:\\\"queue\\\";N;s:15:\\\"chainConnection\\\";N;s:10:\\\"chainQueue\\\";N;s:19:\\\"chainCatchCallbacks\\\";N;s:5:\\\"delay\\\";N;s:11:\\\"afterCommit\\\";N;s:10:\\\"middleware\\\";a:0:{}s:7:\\\"chained\\\";a:0:{}}\"}}', 'Swift_TransportException: Connection could not be established with host smtp.gmail.com :stream_socket_client(): php_network_getaddresses: getaddrinfo failed: No such host is known.  in H:\\Git Repos\\CSE299-Project\\nsu_clubs\\vendor\\swiftmailer\\swiftmailer\\lib\\classes\\Swift\\Transport\\StreamBuffer.php:261\nStack trace:\n#0 [internal function]: Swift_Transport_StreamBuffer->{closure}(2, \'stream_socket_c...\', \'H:\\\\Git Repos\\\\CS...\', 264, Array)\n#1 H:\\Git Repos\\CSE299-Project\\nsu_clubs\\vendor\\swiftmailer\\swiftmailer\\lib\\classes\\Swift\\Transport\\StreamBuffer.php(264): stream_socket_client(\'ssl://smtp.gmai...\', 0, \'php_network_get...\', 30, 4, Resource id #953)\n#2 H:\\Git Repos\\CSE299-Project\\nsu_clubs\\vendor\\swiftmailer\\swiftmailer\\lib\\classes\\Swift\\Transport\\StreamBuffer.php(58): Swift_Transport_StreamBuffer->establishSocketConnection()\n#3 H:\\Git Repos\\CSE299-Project\\nsu_clubs\\vendor\\swiftmailer\\swiftmailer\\lib\\classes\\Swift\\Transport\\AbstractSmtpTransport.php(143): Swift_Transport_StreamBuffer->initialize(Array)\n#4 H:\\Git Repos\\CSE299-Project\\nsu_clubs\\vendor\\swiftmailer\\swiftmailer\\lib\\classes\\Swift\\Mailer.php(65): Swift_Transport_AbstractSmtpTransport->start()\n#5 H:\\Git Repos\\CSE299-Project\\nsu_clubs\\vendor\\laravel\\framework\\src\\Illuminate\\Mail\\Mailer.php(521): Swift_Mailer->send(Object(Swift_Message), Array)\n#6 H:\\Git Repos\\CSE299-Project\\nsu_clubs\\vendor\\laravel\\framework\\src\\Illuminate\\Mail\\Mailer.php(288): Illuminate\\Mail\\Mailer->sendSwiftMessage(Object(Swift_Message))\n#7 H:\\Git Repos\\CSE299-Project\\nsu_clubs\\vendor\\laravel\\framework\\src\\Illuminate\\Mail\\Mailable.php(187): Illuminate\\Mail\\Mailer->send(Object(Illuminate\\Support\\HtmlString), Array, Object(Closure))\n#8 H:\\Git Repos\\CSE299-Project\\nsu_clubs\\vendor\\laravel\\framework\\src\\Illuminate\\Support\\Traits\\Localizable.php(19): Illuminate\\Mail\\Mailable->Illuminate\\Mail\\{closure}()\n#9 H:\\Git Repos\\CSE299-Project\\nsu_clubs\\vendor\\laravel\\framework\\src\\Illuminate\\Mail\\Mailable.php(188): Illuminate\\Mail\\Mailable->withLocale(NULL, Object(Closure))\n#10 H:\\Git Repos\\CSE299-Project\\nsu_clubs\\vendor\\laravel\\framework\\src\\Illuminate\\Mail\\SendQueuedMailable.php(65): Illuminate\\Mail\\Mailable->send(Object(Illuminate\\Mail\\MailManager))\n#11 H:\\Git Repos\\CSE299-Project\\nsu_clubs\\vendor\\laravel\\framework\\src\\Illuminate\\Container\\BoundMethod.php(36): Illuminate\\Mail\\SendQueuedMailable->handle(Object(Illuminate\\Mail\\MailManager))\n#12 H:\\Git Repos\\CSE299-Project\\nsu_clubs\\vendor\\laravel\\framework\\src\\Illuminate\\Container\\Util.php(40): Illuminate\\Container\\BoundMethod::Illuminate\\Container\\{closure}()\n#13 H:\\Git Repos\\CSE299-Project\\nsu_clubs\\vendor\\laravel\\framework\\src\\Illuminate\\Container\\BoundMethod.php(93): Illuminate\\Container\\Util::unwrapIfClosure(Object(Closure))\n#14 H:\\Git Repos\\CSE299-Project\\nsu_clubs\\vendor\\laravel\\framework\\src\\Illuminate\\Container\\BoundMethod.php(37): Illuminate\\Container\\BoundMethod::callBoundMethod(Object(Illuminate\\Foundation\\Application), Array, Object(Closure))\n#15 H:\\Git Repos\\CSE299-Project\\nsu_clubs\\vendor\\laravel\\framework\\src\\Illuminate\\Container\\Container.php(651): Illuminate\\Container\\BoundMethod::call(Object(Illuminate\\Foundation\\Application), Array, Array, NULL)\n#16 H:\\Git Repos\\CSE299-Project\\nsu_clubs\\vendor\\laravel\\framework\\src\\Illuminate\\Bus\\Dispatcher.php(128): Illuminate\\Container\\Container->call(Array)\n#17 H:\\Git Repos\\CSE299-Project\\nsu_clubs\\vendor\\laravel\\framework\\src\\Illuminate\\Pipeline\\Pipeline.php(128): Illuminate\\Bus\\Dispatcher->Illuminate\\Bus\\{closure}(Object(Illuminate\\Mail\\SendQueuedMailable))\n#18 H:\\Git Repos\\CSE299-Project\\nsu_clubs\\vendor\\laravel\\framework\\src\\Illuminate\\Pipeline\\Pipeline.php(103): Illuminate\\Pipeline\\Pipeline->Illuminate\\Pipeline\\{closure}(Object(Illuminate\\Mail\\SendQueuedMailable))\n#19 H:\\Git Repos\\CSE299-Project\\nsu_clubs\\vendor\\laravel\\framework\\src\\Illuminate\\Bus\\Dispatcher.php(132): Illuminate\\Pipeline\\Pipeline->then(Object(Closure))\n#20 H:\\Git Repos\\CSE299-Project\\nsu_clubs\\vendor\\laravel\\framework\\src\\Illuminate\\Queue\\CallQueuedHandler.php(120): Illuminate\\Bus\\Dispatcher->dispatchNow(Object(Illuminate\\Mail\\SendQueuedMailable), false)\n#21 H:\\Git Repos\\CSE299-Project\\nsu_clubs\\vendor\\laravel\\framework\\src\\Illuminate\\Pipeline\\Pipeline.php(128): Illuminate\\Queue\\CallQueuedHandler->Illuminate\\Queue\\{closure}(Object(Illuminate\\Mail\\SendQueuedMailable))\n#22 H:\\Git Repos\\CSE299-Project\\nsu_clubs\\vendor\\laravel\\framework\\src\\Illuminate\\Pipeline\\Pipeline.php(103): Illuminate\\Pipeline\\Pipeline->Illuminate\\Pipeline\\{closure}(Object(Illuminate\\Mail\\SendQueuedMailable))\n#23 H:\\Git Repos\\CSE299-Project\\nsu_clubs\\vendor\\laravel\\framework\\src\\Illuminate\\Queue\\CallQueuedHandler.php(122): Illuminate\\Pipeline\\Pipeline->then(Object(Closure))\n#24 H:\\Git Repos\\CSE299-Project\\nsu_clubs\\vendor\\laravel\\framework\\src\\Illuminate\\Queue\\CallQueuedHandler.php(70): Illuminate\\Queue\\CallQueuedHandler->dispatchThroughMiddleware(Object(Illuminate\\Queue\\Jobs\\DatabaseJob), Object(Illuminate\\Mail\\SendQueuedMailable))\n#25 H:\\Git Repos\\CSE299-Project\\nsu_clubs\\vendor\\laravel\\framework\\src\\Illuminate\\Queue\\Jobs\\Job.php(98): Illuminate\\Queue\\CallQueuedHandler->call(Object(Illuminate\\Queue\\Jobs\\DatabaseJob), Array)\n#26 H:\\Git Repos\\CSE299-Project\\nsu_clubs\\vendor\\laravel\\framework\\src\\Illuminate\\Queue\\Worker.php(428): Illuminate\\Queue\\Jobs\\Job->fire()\n#27 H:\\Git Repos\\CSE299-Project\\nsu_clubs\\vendor\\laravel\\framework\\src\\Illuminate\\Queue\\Worker.php(378): Illuminate\\Queue\\Worker->process(\'database\', Object(Illuminate\\Queue\\Jobs\\DatabaseJob), Object(Illuminate\\Queue\\WorkerOptions))\n#28 H:\\Git Repos\\CSE299-Project\\nsu_clubs\\vendor\\laravel\\framework\\src\\Illuminate\\Queue\\Worker.php(172): Illuminate\\Queue\\Worker->runJob(Object(Illuminate\\Queue\\Jobs\\DatabaseJob), \'database\', Object(Illuminate\\Queue\\WorkerOptions))\n#29 H:\\Git Repos\\CSE299-Project\\nsu_clubs\\vendor\\laravel\\framework\\src\\Illuminate\\Queue\\Console\\WorkCommand.php(117): Illuminate\\Queue\\Worker->daemon(\'database\', \'default\', Object(Illuminate\\Queue\\WorkerOptions))\n#30 H:\\Git Repos\\CSE299-Project\\nsu_clubs\\vendor\\laravel\\framework\\src\\Illuminate\\Queue\\Console\\WorkCommand.php(101): Illuminate\\Queue\\Console\\WorkCommand->runWorker(\'database\', \'default\')\n#31 H:\\Git Repos\\CSE299-Project\\nsu_clubs\\vendor\\laravel\\framework\\src\\Illuminate\\Container\\BoundMethod.php(36): Illuminate\\Queue\\Console\\WorkCommand->handle()\n#32 H:\\Git Repos\\CSE299-Project\\nsu_clubs\\vendor\\laravel\\framework\\src\\Illuminate\\Container\\Util.php(40): Illuminate\\Container\\BoundMethod::Illuminate\\Container\\{closure}()\n#33 H:\\Git Repos\\CSE299-Project\\nsu_clubs\\vendor\\laravel\\framework\\src\\Illuminate\\Container\\BoundMethod.php(93): Illuminate\\Container\\Util::unwrapIfClosure(Object(Closure))\n#34 H:\\Git Repos\\CSE299-Project\\nsu_clubs\\vendor\\laravel\\framework\\src\\Illuminate\\Container\\BoundMethod.php(37): Illuminate\\Container\\BoundMethod::callBoundMethod(Object(Illuminate\\Foundation\\Application), Array, Object(Closure))\n#35 H:\\Git Repos\\CSE299-Project\\nsu_clubs\\vendor\\laravel\\framework\\src\\Illuminate\\Container\\Container.php(651): Illuminate\\Container\\BoundMethod::call(Object(Illuminate\\Foundation\\Application), Array, Array, NULL)\n#36 H:\\Git Repos\\CSE299-Project\\nsu_clubs\\vendor\\laravel\\framework\\src\\Illuminate\\Console\\Command.php(136): Illuminate\\Container\\Container->call(Array)\n#37 H:\\Git Repos\\CSE299-Project\\nsu_clubs\\vendor\\symfony\\console\\Command\\Command.php(299): Illuminate\\Console\\Command->execute(Object(Symfony\\Component\\Console\\Input\\ArgvInput), Object(Illuminate\\Console\\OutputStyle))\n#38 H:\\Git Repos\\CSE299-Project\\nsu_clubs\\vendor\\laravel\\framework\\src\\Illuminate\\Console\\Command.php(121): Symfony\\Component\\Console\\Command\\Command->run(Object(Symfony\\Component\\Console\\Input\\ArgvInput), Object(Illuminate\\Console\\OutputStyle))\n#39 H:\\Git Repos\\CSE299-Project\\nsu_clubs\\vendor\\symfony\\console\\Application.php(978): Illuminate\\Console\\Command->run(Object(Symfony\\Component\\Console\\Input\\ArgvInput), Object(Symfony\\Component\\Console\\Output\\ConsoleOutput))\n#40 H:\\Git Repos\\CSE299-Project\\nsu_clubs\\vendor\\symfony\\console\\Application.php(295): Symfony\\Component\\Console\\Application->doRunCommand(Object(Illuminate\\Queue\\Console\\WorkCommand), Object(Symfony\\Component\\Console\\Input\\ArgvInput), Object(Symfony\\Component\\Console\\Output\\ConsoleOutput))\n#41 H:\\Git Repos\\CSE299-Project\\nsu_clubs\\vendor\\symfony\\console\\Application.php(167): Symfony\\Component\\Console\\Application->doRun(Object(Symfony\\Component\\Console\\Input\\ArgvInput), Object(Symfony\\Component\\Console\\Output\\ConsoleOutput))\n#42 H:\\Git Repos\\CSE299-Project\\nsu_clubs\\vendor\\laravel\\framework\\src\\Illuminate\\Console\\Application.php(92): Symfony\\Component\\Console\\Application->run(Object(Symfony\\Component\\Console\\Input\\ArgvInput), Object(Symfony\\Component\\Console\\Output\\ConsoleOutput))\n#43 H:\\Git Repos\\CSE299-Project\\nsu_clubs\\vendor\\laravel\\framework\\src\\Illuminate\\Foundation\\Console\\Kernel.php(129): Illuminate\\Console\\Application->run(Object(Symfony\\Component\\Console\\Input\\ArgvInput), Object(Symfony\\Component\\Console\\Output\\ConsoleOutput))\n#44 H:\\Git Repos\\CSE299-Project\\nsu_clubs\\artisan(37): Illuminate\\Foundation\\Console\\Kernel->handle(Object(Symfony\\Component\\Console\\Input\\ArgvInput), Object(Symfony\\Component\\Console\\Output\\ConsoleOutput))\n#45 {main}', '2021-08-27 08:16:56'),
(2, '214a7166-9086-4d9e-af4c-67ea016f704b', 'database', 'default', '{\"uuid\":\"214a7166-9086-4d9e-af4c-67ea016f704b\",\"displayName\":\"App\\\\Mail\\\\newNoticeMail\",\"job\":\"Illuminate\\\\Queue\\\\CallQueuedHandler@call\",\"maxTries\":null,\"maxExceptions\":null,\"failOnTimeout\":false,\"backoff\":\"\",\"timeout\":null,\"retryUntil\":null,\"data\":{\"commandName\":\"Illuminate\\\\Mail\\\\SendQueuedMailable\",\"command\":\"O:34:\\\"Illuminate\\\\Mail\\\\SendQueuedMailable\\\":13:{s:8:\\\"mailable\\\";O:22:\\\"App\\\\Mail\\\\newNoticeMail\\\":30:{s:7:\\\"\\u0000*\\u0000club\\\";O:45:\\\"Illuminate\\\\Contracts\\\\Database\\\\ModelIdentifier\\\":4:{s:5:\\\"class\\\";s:16:\\\"App\\\\Models\\\\Clubs\\\";s:2:\\\"id\\\";i:4;s:9:\\\"relations\\\";a:0:{}s:10:\\\"connection\\\";s:5:\\\"mysql\\\";}s:9:\\\"\\u0000*\\u0000notice\\\";O:45:\\\"Illuminate\\\\Contracts\\\\Database\\\\ModelIdentifier\\\":4:{s:5:\\\"class\\\";s:18:\\\"App\\\\Models\\\\Notices\\\";s:2:\\\"id\\\";i:24;s:9:\\\"relations\\\";a:0:{}s:10:\\\"connection\\\";s:5:\\\"mysql\\\";}s:6:\\\"locale\\\";N;s:4:\\\"from\\\";a:0:{}s:2:\\\"to\\\";a:1:{i:0;a:2:{s:4:\\\"name\\\";N;s:7:\\\"address\\\";s:20:\\\"aadnansadi@gmail.com\\\";}}s:2:\\\"cc\\\";a:0:{}s:3:\\\"bcc\\\";a:0:{}s:7:\\\"replyTo\\\";a:0:{}s:7:\\\"subject\\\";N;s:11:\\\"\\u0000*\\u0000markdown\\\";N;s:7:\\\"\\u0000*\\u0000html\\\";N;s:4:\\\"view\\\";N;s:8:\\\"textView\\\";N;s:8:\\\"viewData\\\";a:0:{}s:11:\\\"attachments\\\";a:0:{}s:14:\\\"rawAttachments\\\";a:0:{}s:15:\\\"diskAttachments\\\";a:0:{}s:9:\\\"callbacks\\\";a:0:{}s:5:\\\"theme\\\";N;s:6:\\\"mailer\\\";s:4:\\\"smtp\\\";s:29:\\\"\\u0000*\\u0000assertionableRenderStrings\\\";N;s:10:\\\"connection\\\";N;s:5:\\\"queue\\\";N;s:15:\\\"chainConnection\\\";N;s:10:\\\"chainQueue\\\";N;s:19:\\\"chainCatchCallbacks\\\";N;s:5:\\\"delay\\\";N;s:11:\\\"afterCommit\\\";N;s:10:\\\"middleware\\\";a:0:{}s:7:\\\"chained\\\";a:0:{}}s:5:\\\"tries\\\";N;s:7:\\\"timeout\\\";N;s:17:\\\"shouldBeEncrypted\\\";b:0;s:10:\\\"connection\\\";N;s:5:\\\"queue\\\";N;s:15:\\\"chainConnection\\\";N;s:10:\\\"chainQueue\\\";N;s:19:\\\"chainCatchCallbacks\\\";N;s:5:\\\"delay\\\";N;s:11:\\\"afterCommit\\\";N;s:10:\\\"middleware\\\";a:0:{}s:7:\\\"chained\\\";a:0:{}}\"}}', 'Illuminate\\Database\\Eloquent\\ModelNotFoundException: No query results for model [App\\Models\\Notices]. in H:\\Git Repos\\CSE299-Project\\nsu_clubs\\vendor\\laravel\\framework\\src\\Illuminate\\Database\\Eloquent\\Builder.php:519\nStack trace:\n#0 H:\\Git Repos\\CSE299-Project\\nsu_clubs\\vendor\\laravel\\framework\\src\\Illuminate\\Queue\\SerializesAndRestoresModelIdentifiers.php(102): Illuminate\\Database\\Eloquent\\Builder->firstOrFail()\n#1 H:\\Git Repos\\CSE299-Project\\nsu_clubs\\vendor\\laravel\\framework\\src\\Illuminate\\Queue\\SerializesAndRestoresModelIdentifiers.php(57): App\\Mail\\newNoticeMail->restoreModel(Object(Illuminate\\Contracts\\Database\\ModelIdentifier))\n#2 H:\\Git Repos\\CSE299-Project\\nsu_clubs\\vendor\\laravel\\framework\\src\\Illuminate\\Queue\\SerializesModels.php(122): App\\Mail\\newNoticeMail->getRestoredPropertyValue(Object(Illuminate\\Contracts\\Database\\ModelIdentifier))\n#3 [internal function]: App\\Mail\\newNoticeMail->__unserialize(Array)\n#4 H:\\Git Repos\\CSE299-Project\\nsu_clubs\\vendor\\laravel\\framework\\src\\Illuminate\\Queue\\CallQueuedHandler.php(97): unserialize(\'O:34:\"Illuminat...\')\n#5 H:\\Git Repos\\CSE299-Project\\nsu_clubs\\vendor\\laravel\\framework\\src\\Illuminate\\Queue\\CallQueuedHandler.php(60): Illuminate\\Queue\\CallQueuedHandler->getCommand(Array)\n#6 H:\\Git Repos\\CSE299-Project\\nsu_clubs\\vendor\\laravel\\framework\\src\\Illuminate\\Queue\\Jobs\\Job.php(98): Illuminate\\Queue\\CallQueuedHandler->call(Object(Illuminate\\Queue\\Jobs\\DatabaseJob), Array)\n#7 H:\\Git Repos\\CSE299-Project\\nsu_clubs\\vendor\\laravel\\framework\\src\\Illuminate\\Queue\\Worker.php(428): Illuminate\\Queue\\Jobs\\Job->fire()\n#8 H:\\Git Repos\\CSE299-Project\\nsu_clubs\\vendor\\laravel\\framework\\src\\Illuminate\\Queue\\Worker.php(378): Illuminate\\Queue\\Worker->process(\'database\', Object(Illuminate\\Queue\\Jobs\\DatabaseJob), Object(Illuminate\\Queue\\WorkerOptions))\n#9 H:\\Git Repos\\CSE299-Project\\nsu_clubs\\vendor\\laravel\\framework\\src\\Illuminate\\Queue\\Worker.php(172): Illuminate\\Queue\\Worker->runJob(Object(Illuminate\\Queue\\Jobs\\DatabaseJob), \'database\', Object(Illuminate\\Queue\\WorkerOptions))\n#10 H:\\Git Repos\\CSE299-Project\\nsu_clubs\\vendor\\laravel\\framework\\src\\Illuminate\\Queue\\Console\\WorkCommand.php(117): Illuminate\\Queue\\Worker->daemon(\'database\', \'default\', Object(Illuminate\\Queue\\WorkerOptions))\n#11 H:\\Git Repos\\CSE299-Project\\nsu_clubs\\vendor\\laravel\\framework\\src\\Illuminate\\Queue\\Console\\WorkCommand.php(101): Illuminate\\Queue\\Console\\WorkCommand->runWorker(\'database\', \'default\')\n#12 H:\\Git Repos\\CSE299-Project\\nsu_clubs\\vendor\\laravel\\framework\\src\\Illuminate\\Container\\BoundMethod.php(36): Illuminate\\Queue\\Console\\WorkCommand->handle()\n#13 H:\\Git Repos\\CSE299-Project\\nsu_clubs\\vendor\\laravel\\framework\\src\\Illuminate\\Container\\Util.php(40): Illuminate\\Container\\BoundMethod::Illuminate\\Container\\{closure}()\n#14 H:\\Git Repos\\CSE299-Project\\nsu_clubs\\vendor\\laravel\\framework\\src\\Illuminate\\Container\\BoundMethod.php(93): Illuminate\\Container\\Util::unwrapIfClosure(Object(Closure))\n#15 H:\\Git Repos\\CSE299-Project\\nsu_clubs\\vendor\\laravel\\framework\\src\\Illuminate\\Container\\BoundMethod.php(37): Illuminate\\Container\\BoundMethod::callBoundMethod(Object(Illuminate\\Foundation\\Application), Array, Object(Closure))\n#16 H:\\Git Repos\\CSE299-Project\\nsu_clubs\\vendor\\laravel\\framework\\src\\Illuminate\\Container\\Container.php(651): Illuminate\\Container\\BoundMethod::call(Object(Illuminate\\Foundation\\Application), Array, Array, NULL)\n#17 H:\\Git Repos\\CSE299-Project\\nsu_clubs\\vendor\\laravel\\framework\\src\\Illuminate\\Console\\Command.php(136): Illuminate\\Container\\Container->call(Array)\n#18 H:\\Git Repos\\CSE299-Project\\nsu_clubs\\vendor\\symfony\\console\\Command\\Command.php(299): Illuminate\\Console\\Command->execute(Object(Symfony\\Component\\Console\\Input\\ArgvInput), Object(Illuminate\\Console\\OutputStyle))\n#19 H:\\Git Repos\\CSE299-Project\\nsu_clubs\\vendor\\laravel\\framework\\src\\Illuminate\\Console\\Command.php(121): Symfony\\Component\\Console\\Command\\Command->run(Object(Symfony\\Component\\Console\\Input\\ArgvInput), Object(Illuminate\\Console\\OutputStyle))\n#20 H:\\Git Repos\\CSE299-Project\\nsu_clubs\\vendor\\symfony\\console\\Application.php(978): Illuminate\\Console\\Command->run(Object(Symfony\\Component\\Console\\Input\\ArgvInput), Object(Symfony\\Component\\Console\\Output\\ConsoleOutput))\n#21 H:\\Git Repos\\CSE299-Project\\nsu_clubs\\vendor\\symfony\\console\\Application.php(295): Symfony\\Component\\Console\\Application->doRunCommand(Object(Illuminate\\Queue\\Console\\WorkCommand), Object(Symfony\\Component\\Console\\Input\\ArgvInput), Object(Symfony\\Component\\Console\\Output\\ConsoleOutput))\n#22 H:\\Git Repos\\CSE299-Project\\nsu_clubs\\vendor\\symfony\\console\\Application.php(167): Symfony\\Component\\Console\\Application->doRun(Object(Symfony\\Component\\Console\\Input\\ArgvInput), Object(Symfony\\Component\\Console\\Output\\ConsoleOutput))\n#23 H:\\Git Repos\\CSE299-Project\\nsu_clubs\\vendor\\laravel\\framework\\src\\Illuminate\\Console\\Application.php(92): Symfony\\Component\\Console\\Application->run(Object(Symfony\\Component\\Console\\Input\\ArgvInput), Object(Symfony\\Component\\Console\\Output\\ConsoleOutput))\n#24 H:\\Git Repos\\CSE299-Project\\nsu_clubs\\vendor\\laravel\\framework\\src\\Illuminate\\Foundation\\Console\\Kernel.php(129): Illuminate\\Console\\Application->run(Object(Symfony\\Component\\Console\\Input\\ArgvInput), Object(Symfony\\Component\\Console\\Output\\ConsoleOutput))\n#25 H:\\Git Repos\\CSE299-Project\\nsu_clubs\\artisan(37): Illuminate\\Foundation\\Console\\Kernel->handle(Object(Symfony\\Component\\Console\\Input\\ArgvInput), Object(Symfony\\Component\\Console\\Output\\ConsoleOutput))\n#26 {main}', '2021-09-07 10:34:30'),
(3, '36f19ccb-375c-4767-b23c-b0ff2a3afa2f', 'database', 'default', '{\"uuid\":\"36f19ccb-375c-4767-b23c-b0ff2a3afa2f\",\"displayName\":\"App\\\\Mail\\\\newNoticeMail\",\"job\":\"Illuminate\\\\Queue\\\\CallQueuedHandler@call\",\"maxTries\":null,\"maxExceptions\":null,\"failOnTimeout\":false,\"backoff\":\"\",\"timeout\":null,\"retryUntil\":null,\"data\":{\"commandName\":\"Illuminate\\\\Mail\\\\SendQueuedMailable\",\"command\":\"O:34:\\\"Illuminate\\\\Mail\\\\SendQueuedMailable\\\":13:{s:8:\\\"mailable\\\";O:22:\\\"App\\\\Mail\\\\newNoticeMail\\\":30:{s:7:\\\"\\u0000*\\u0000club\\\";O:45:\\\"Illuminate\\\\Contracts\\\\Database\\\\ModelIdentifier\\\":4:{s:5:\\\"class\\\";s:16:\\\"App\\\\Models\\\\Clubs\\\";s:2:\\\"id\\\";i:4;s:9:\\\"relations\\\";a:0:{}s:10:\\\"connection\\\";s:5:\\\"mysql\\\";}s:9:\\\"\\u0000*\\u0000notice\\\";O:45:\\\"Illuminate\\\\Contracts\\\\Database\\\\ModelIdentifier\\\":4:{s:5:\\\"class\\\";s:18:\\\"App\\\\Models\\\\Notices\\\";s:2:\\\"id\\\";i:24;s:9:\\\"relations\\\";a:0:{}s:10:\\\"connection\\\";s:5:\\\"mysql\\\";}s:6:\\\"locale\\\";N;s:4:\\\"from\\\";a:0:{}s:2:\\\"to\\\";a:1:{i:0;a:2:{s:4:\\\"name\\\";N;s:7:\\\"address\\\";s:22:\\\"tazinmorshed@gmail.com\\\";}}s:2:\\\"cc\\\";a:0:{}s:3:\\\"bcc\\\";a:0:{}s:7:\\\"replyTo\\\";a:0:{}s:7:\\\"subject\\\";N;s:11:\\\"\\u0000*\\u0000markdown\\\";N;s:7:\\\"\\u0000*\\u0000html\\\";N;s:4:\\\"view\\\";N;s:8:\\\"textView\\\";N;s:8:\\\"viewData\\\";a:0:{}s:11:\\\"attachments\\\";a:0:{}s:14:\\\"rawAttachments\\\";a:0:{}s:15:\\\"diskAttachments\\\";a:0:{}s:9:\\\"callbacks\\\";a:0:{}s:5:\\\"theme\\\";N;s:6:\\\"mailer\\\";s:4:\\\"smtp\\\";s:29:\\\"\\u0000*\\u0000assertionableRenderStrings\\\";N;s:10:\\\"connection\\\";N;s:5:\\\"queue\\\";N;s:15:\\\"chainConnection\\\";N;s:10:\\\"chainQueue\\\";N;s:19:\\\"chainCatchCallbacks\\\";N;s:5:\\\"delay\\\";N;s:11:\\\"afterCommit\\\";N;s:10:\\\"middleware\\\";a:0:{}s:7:\\\"chained\\\";a:0:{}}s:5:\\\"tries\\\";N;s:7:\\\"timeout\\\";N;s:17:\\\"shouldBeEncrypted\\\";b:0;s:10:\\\"connection\\\";N;s:5:\\\"queue\\\";N;s:15:\\\"chainConnection\\\";N;s:10:\\\"chainQueue\\\";N;s:19:\\\"chainCatchCallbacks\\\";N;s:5:\\\"delay\\\";N;s:11:\\\"afterCommit\\\";N;s:10:\\\"middleware\\\";a:0:{}s:7:\\\"chained\\\";a:0:{}}\"}}', 'Illuminate\\Database\\Eloquent\\ModelNotFoundException: No query results for model [App\\Models\\Notices]. in H:\\Git Repos\\CSE299-Project\\nsu_clubs\\vendor\\laravel\\framework\\src\\Illuminate\\Database\\Eloquent\\Builder.php:519\nStack trace:\n#0 H:\\Git Repos\\CSE299-Project\\nsu_clubs\\vendor\\laravel\\framework\\src\\Illuminate\\Queue\\SerializesAndRestoresModelIdentifiers.php(102): Illuminate\\Database\\Eloquent\\Builder->firstOrFail()\n#1 H:\\Git Repos\\CSE299-Project\\nsu_clubs\\vendor\\laravel\\framework\\src\\Illuminate\\Queue\\SerializesAndRestoresModelIdentifiers.php(57): App\\Mail\\newNoticeMail->restoreModel(Object(Illuminate\\Contracts\\Database\\ModelIdentifier))\n#2 H:\\Git Repos\\CSE299-Project\\nsu_clubs\\vendor\\laravel\\framework\\src\\Illuminate\\Queue\\SerializesModels.php(122): App\\Mail\\newNoticeMail->getRestoredPropertyValue(Object(Illuminate\\Contracts\\Database\\ModelIdentifier))\n#3 [internal function]: App\\Mail\\newNoticeMail->__unserialize(Array)\n#4 H:\\Git Repos\\CSE299-Project\\nsu_clubs\\vendor\\laravel\\framework\\src\\Illuminate\\Queue\\CallQueuedHandler.php(97): unserialize(\'O:34:\"Illuminat...\')\n#5 H:\\Git Repos\\CSE299-Project\\nsu_clubs\\vendor\\laravel\\framework\\src\\Illuminate\\Queue\\CallQueuedHandler.php(60): Illuminate\\Queue\\CallQueuedHandler->getCommand(Array)\n#6 H:\\Git Repos\\CSE299-Project\\nsu_clubs\\vendor\\laravel\\framework\\src\\Illuminate\\Queue\\Jobs\\Job.php(98): Illuminate\\Queue\\CallQueuedHandler->call(Object(Illuminate\\Queue\\Jobs\\DatabaseJob), Array)\n#7 H:\\Git Repos\\CSE299-Project\\nsu_clubs\\vendor\\laravel\\framework\\src\\Illuminate\\Queue\\Worker.php(428): Illuminate\\Queue\\Jobs\\Job->fire()\n#8 H:\\Git Repos\\CSE299-Project\\nsu_clubs\\vendor\\laravel\\framework\\src\\Illuminate\\Queue\\Worker.php(378): Illuminate\\Queue\\Worker->process(\'database\', Object(Illuminate\\Queue\\Jobs\\DatabaseJob), Object(Illuminate\\Queue\\WorkerOptions))\n#9 H:\\Git Repos\\CSE299-Project\\nsu_clubs\\vendor\\laravel\\framework\\src\\Illuminate\\Queue\\Worker.php(172): Illuminate\\Queue\\Worker->runJob(Object(Illuminate\\Queue\\Jobs\\DatabaseJob), \'database\', Object(Illuminate\\Queue\\WorkerOptions))\n#10 H:\\Git Repos\\CSE299-Project\\nsu_clubs\\vendor\\laravel\\framework\\src\\Illuminate\\Queue\\Console\\WorkCommand.php(117): Illuminate\\Queue\\Worker->daemon(\'database\', \'default\', Object(Illuminate\\Queue\\WorkerOptions))\n#11 H:\\Git Repos\\CSE299-Project\\nsu_clubs\\vendor\\laravel\\framework\\src\\Illuminate\\Queue\\Console\\WorkCommand.php(101): Illuminate\\Queue\\Console\\WorkCommand->runWorker(\'database\', \'default\')\n#12 H:\\Git Repos\\CSE299-Project\\nsu_clubs\\vendor\\laravel\\framework\\src\\Illuminate\\Container\\BoundMethod.php(36): Illuminate\\Queue\\Console\\WorkCommand->handle()\n#13 H:\\Git Repos\\CSE299-Project\\nsu_clubs\\vendor\\laravel\\framework\\src\\Illuminate\\Container\\Util.php(40): Illuminate\\Container\\BoundMethod::Illuminate\\Container\\{closure}()\n#14 H:\\Git Repos\\CSE299-Project\\nsu_clubs\\vendor\\laravel\\framework\\src\\Illuminate\\Container\\BoundMethod.php(93): Illuminate\\Container\\Util::unwrapIfClosure(Object(Closure))\n#15 H:\\Git Repos\\CSE299-Project\\nsu_clubs\\vendor\\laravel\\framework\\src\\Illuminate\\Container\\BoundMethod.php(37): Illuminate\\Container\\BoundMethod::callBoundMethod(Object(Illuminate\\Foundation\\Application), Array, Object(Closure))\n#16 H:\\Git Repos\\CSE299-Project\\nsu_clubs\\vendor\\laravel\\framework\\src\\Illuminate\\Container\\Container.php(651): Illuminate\\Container\\BoundMethod::call(Object(Illuminate\\Foundation\\Application), Array, Array, NULL)\n#17 H:\\Git Repos\\CSE299-Project\\nsu_clubs\\vendor\\laravel\\framework\\src\\Illuminate\\Console\\Command.php(136): Illuminate\\Container\\Container->call(Array)\n#18 H:\\Git Repos\\CSE299-Project\\nsu_clubs\\vendor\\symfony\\console\\Command\\Command.php(299): Illuminate\\Console\\Command->execute(Object(Symfony\\Component\\Console\\Input\\ArgvInput), Object(Illuminate\\Console\\OutputStyle))\n#19 H:\\Git Repos\\CSE299-Project\\nsu_clubs\\vendor\\laravel\\framework\\src\\Illuminate\\Console\\Command.php(121): Symfony\\Component\\Console\\Command\\Command->run(Object(Symfony\\Component\\Console\\Input\\ArgvInput), Object(Illuminate\\Console\\OutputStyle))\n#20 H:\\Git Repos\\CSE299-Project\\nsu_clubs\\vendor\\symfony\\console\\Application.php(978): Illuminate\\Console\\Command->run(Object(Symfony\\Component\\Console\\Input\\ArgvInput), Object(Symfony\\Component\\Console\\Output\\ConsoleOutput))\n#21 H:\\Git Repos\\CSE299-Project\\nsu_clubs\\vendor\\symfony\\console\\Application.php(295): Symfony\\Component\\Console\\Application->doRunCommand(Object(Illuminate\\Queue\\Console\\WorkCommand), Object(Symfony\\Component\\Console\\Input\\ArgvInput), Object(Symfony\\Component\\Console\\Output\\ConsoleOutput))\n#22 H:\\Git Repos\\CSE299-Project\\nsu_clubs\\vendor\\symfony\\console\\Application.php(167): Symfony\\Component\\Console\\Application->doRun(Object(Symfony\\Component\\Console\\Input\\ArgvInput), Object(Symfony\\Component\\Console\\Output\\ConsoleOutput))\n#23 H:\\Git Repos\\CSE299-Project\\nsu_clubs\\vendor\\laravel\\framework\\src\\Illuminate\\Console\\Application.php(92): Symfony\\Component\\Console\\Application->run(Object(Symfony\\Component\\Console\\Input\\ArgvInput), Object(Symfony\\Component\\Console\\Output\\ConsoleOutput))\n#24 H:\\Git Repos\\CSE299-Project\\nsu_clubs\\vendor\\laravel\\framework\\src\\Illuminate\\Foundation\\Console\\Kernel.php(129): Illuminate\\Console\\Application->run(Object(Symfony\\Component\\Console\\Input\\ArgvInput), Object(Symfony\\Component\\Console\\Output\\ConsoleOutput))\n#25 H:\\Git Repos\\CSE299-Project\\nsu_clubs\\artisan(37): Illuminate\\Foundation\\Console\\Kernel->handle(Object(Symfony\\Component\\Console\\Input\\ArgvInput), Object(Symfony\\Component\\Console\\Output\\ConsoleOutput))\n#26 {main}', '2021-09-07 10:34:30'),
(4, '9570d845-f6e6-44b0-b14c-9a7d0b708254', 'database', 'default', '{\"uuid\":\"9570d845-f6e6-44b0-b14c-9a7d0b708254\",\"displayName\":\"App\\\\Mail\\\\newNoticeMail\",\"job\":\"Illuminate\\\\Queue\\\\CallQueuedHandler@call\",\"maxTries\":null,\"maxExceptions\":null,\"failOnTimeout\":false,\"backoff\":\"\",\"timeout\":null,\"retryUntil\":null,\"data\":{\"commandName\":\"Illuminate\\\\Mail\\\\SendQueuedMailable\",\"command\":\"O:34:\\\"Illuminate\\\\Mail\\\\SendQueuedMailable\\\":13:{s:8:\\\"mailable\\\";O:22:\\\"App\\\\Mail\\\\newNoticeMail\\\":30:{s:7:\\\"\\u0000*\\u0000club\\\";O:45:\\\"Illuminate\\\\Contracts\\\\Database\\\\ModelIdentifier\\\":4:{s:5:\\\"class\\\";s:16:\\\"App\\\\Models\\\\Clubs\\\";s:2:\\\"id\\\";i:4;s:9:\\\"relations\\\";a:0:{}s:10:\\\"connection\\\";s:5:\\\"mysql\\\";}s:9:\\\"\\u0000*\\u0000notice\\\";O:45:\\\"Illuminate\\\\Contracts\\\\Database\\\\ModelIdentifier\\\":4:{s:5:\\\"class\\\";s:18:\\\"App\\\\Models\\\\Notices\\\";s:2:\\\"id\\\";i:24;s:9:\\\"relations\\\";a:0:{}s:10:\\\"connection\\\";s:5:\\\"mysql\\\";}s:6:\\\"locale\\\";N;s:4:\\\"from\\\";a:0:{}s:2:\\\"to\\\";a:1:{i:0;a:2:{s:4:\\\"name\\\";N;s:7:\\\"address\\\";s:21:\\\"adnansadi52@gmail.com\\\";}}s:2:\\\"cc\\\";a:0:{}s:3:\\\"bcc\\\";a:0:{}s:7:\\\"replyTo\\\";a:0:{}s:7:\\\"subject\\\";N;s:11:\\\"\\u0000*\\u0000markdown\\\";N;s:7:\\\"\\u0000*\\u0000html\\\";N;s:4:\\\"view\\\";N;s:8:\\\"textView\\\";N;s:8:\\\"viewData\\\";a:0:{}s:11:\\\"attachments\\\";a:0:{}s:14:\\\"rawAttachments\\\";a:0:{}s:15:\\\"diskAttachments\\\";a:0:{}s:9:\\\"callbacks\\\";a:0:{}s:5:\\\"theme\\\";N;s:6:\\\"mailer\\\";s:4:\\\"smtp\\\";s:29:\\\"\\u0000*\\u0000assertionableRenderStrings\\\";N;s:10:\\\"connection\\\";N;s:5:\\\"queue\\\";N;s:15:\\\"chainConnection\\\";N;s:10:\\\"chainQueue\\\";N;s:19:\\\"chainCatchCallbacks\\\";N;s:5:\\\"delay\\\";N;s:11:\\\"afterCommit\\\";N;s:10:\\\"middleware\\\";a:0:{}s:7:\\\"chained\\\";a:0:{}}s:5:\\\"tries\\\";N;s:7:\\\"timeout\\\";N;s:17:\\\"shouldBeEncrypted\\\";b:0;s:10:\\\"connection\\\";N;s:5:\\\"queue\\\";N;s:15:\\\"chainConnection\\\";N;s:10:\\\"chainQueue\\\";N;s:19:\\\"chainCatchCallbacks\\\";N;s:5:\\\"delay\\\";N;s:11:\\\"afterCommit\\\";N;s:10:\\\"middleware\\\";a:0:{}s:7:\\\"chained\\\";a:0:{}}\"}}', 'Illuminate\\Database\\Eloquent\\ModelNotFoundException: No query results for model [App\\Models\\Notices]. in H:\\Git Repos\\CSE299-Project\\nsu_clubs\\vendor\\laravel\\framework\\src\\Illuminate\\Database\\Eloquent\\Builder.php:519\nStack trace:\n#0 H:\\Git Repos\\CSE299-Project\\nsu_clubs\\vendor\\laravel\\framework\\src\\Illuminate\\Queue\\SerializesAndRestoresModelIdentifiers.php(102): Illuminate\\Database\\Eloquent\\Builder->firstOrFail()\n#1 H:\\Git Repos\\CSE299-Project\\nsu_clubs\\vendor\\laravel\\framework\\src\\Illuminate\\Queue\\SerializesAndRestoresModelIdentifiers.php(57): App\\Mail\\newNoticeMail->restoreModel(Object(Illuminate\\Contracts\\Database\\ModelIdentifier))\n#2 H:\\Git Repos\\CSE299-Project\\nsu_clubs\\vendor\\laravel\\framework\\src\\Illuminate\\Queue\\SerializesModels.php(122): App\\Mail\\newNoticeMail->getRestoredPropertyValue(Object(Illuminate\\Contracts\\Database\\ModelIdentifier))\n#3 [internal function]: App\\Mail\\newNoticeMail->__unserialize(Array)\n#4 H:\\Git Repos\\CSE299-Project\\nsu_clubs\\vendor\\laravel\\framework\\src\\Illuminate\\Queue\\CallQueuedHandler.php(97): unserialize(\'O:34:\"Illuminat...\')\n#5 H:\\Git Repos\\CSE299-Project\\nsu_clubs\\vendor\\laravel\\framework\\src\\Illuminate\\Queue\\CallQueuedHandler.php(60): Illuminate\\Queue\\CallQueuedHandler->getCommand(Array)\n#6 H:\\Git Repos\\CSE299-Project\\nsu_clubs\\vendor\\laravel\\framework\\src\\Illuminate\\Queue\\Jobs\\Job.php(98): Illuminate\\Queue\\CallQueuedHandler->call(Object(Illuminate\\Queue\\Jobs\\DatabaseJob), Array)\n#7 H:\\Git Repos\\CSE299-Project\\nsu_clubs\\vendor\\laravel\\framework\\src\\Illuminate\\Queue\\Worker.php(428): Illuminate\\Queue\\Jobs\\Job->fire()\n#8 H:\\Git Repos\\CSE299-Project\\nsu_clubs\\vendor\\laravel\\framework\\src\\Illuminate\\Queue\\Worker.php(378): Illuminate\\Queue\\Worker->process(\'database\', Object(Illuminate\\Queue\\Jobs\\DatabaseJob), Object(Illuminate\\Queue\\WorkerOptions))\n#9 H:\\Git Repos\\CSE299-Project\\nsu_clubs\\vendor\\laravel\\framework\\src\\Illuminate\\Queue\\Worker.php(172): Illuminate\\Queue\\Worker->runJob(Object(Illuminate\\Queue\\Jobs\\DatabaseJob), \'database\', Object(Illuminate\\Queue\\WorkerOptions))\n#10 H:\\Git Repos\\CSE299-Project\\nsu_clubs\\vendor\\laravel\\framework\\src\\Illuminate\\Queue\\Console\\WorkCommand.php(117): Illuminate\\Queue\\Worker->daemon(\'database\', \'default\', Object(Illuminate\\Queue\\WorkerOptions))\n#11 H:\\Git Repos\\CSE299-Project\\nsu_clubs\\vendor\\laravel\\framework\\src\\Illuminate\\Queue\\Console\\WorkCommand.php(101): Illuminate\\Queue\\Console\\WorkCommand->runWorker(\'database\', \'default\')\n#12 H:\\Git Repos\\CSE299-Project\\nsu_clubs\\vendor\\laravel\\framework\\src\\Illuminate\\Container\\BoundMethod.php(36): Illuminate\\Queue\\Console\\WorkCommand->handle()\n#13 H:\\Git Repos\\CSE299-Project\\nsu_clubs\\vendor\\laravel\\framework\\src\\Illuminate\\Container\\Util.php(40): Illuminate\\Container\\BoundMethod::Illuminate\\Container\\{closure}()\n#14 H:\\Git Repos\\CSE299-Project\\nsu_clubs\\vendor\\laravel\\framework\\src\\Illuminate\\Container\\BoundMethod.php(93): Illuminate\\Container\\Util::unwrapIfClosure(Object(Closure))\n#15 H:\\Git Repos\\CSE299-Project\\nsu_clubs\\vendor\\laravel\\framework\\src\\Illuminate\\Container\\BoundMethod.php(37): Illuminate\\Container\\BoundMethod::callBoundMethod(Object(Illuminate\\Foundation\\Application), Array, Object(Closure))\n#16 H:\\Git Repos\\CSE299-Project\\nsu_clubs\\vendor\\laravel\\framework\\src\\Illuminate\\Container\\Container.php(651): Illuminate\\Container\\BoundMethod::call(Object(Illuminate\\Foundation\\Application), Array, Array, NULL)\n#17 H:\\Git Repos\\CSE299-Project\\nsu_clubs\\vendor\\laravel\\framework\\src\\Illuminate\\Console\\Command.php(136): Illuminate\\Container\\Container->call(Array)\n#18 H:\\Git Repos\\CSE299-Project\\nsu_clubs\\vendor\\symfony\\console\\Command\\Command.php(299): Illuminate\\Console\\Command->execute(Object(Symfony\\Component\\Console\\Input\\ArgvInput), Object(Illuminate\\Console\\OutputStyle))\n#19 H:\\Git Repos\\CSE299-Project\\nsu_clubs\\vendor\\laravel\\framework\\src\\Illuminate\\Console\\Command.php(121): Symfony\\Component\\Console\\Command\\Command->run(Object(Symfony\\Component\\Console\\Input\\ArgvInput), Object(Illuminate\\Console\\OutputStyle))\n#20 H:\\Git Repos\\CSE299-Project\\nsu_clubs\\vendor\\symfony\\console\\Application.php(978): Illuminate\\Console\\Command->run(Object(Symfony\\Component\\Console\\Input\\ArgvInput), Object(Symfony\\Component\\Console\\Output\\ConsoleOutput))\n#21 H:\\Git Repos\\CSE299-Project\\nsu_clubs\\vendor\\symfony\\console\\Application.php(295): Symfony\\Component\\Console\\Application->doRunCommand(Object(Illuminate\\Queue\\Console\\WorkCommand), Object(Symfony\\Component\\Console\\Input\\ArgvInput), Object(Symfony\\Component\\Console\\Output\\ConsoleOutput))\n#22 H:\\Git Repos\\CSE299-Project\\nsu_clubs\\vendor\\symfony\\console\\Application.php(167): Symfony\\Component\\Console\\Application->doRun(Object(Symfony\\Component\\Console\\Input\\ArgvInput), Object(Symfony\\Component\\Console\\Output\\ConsoleOutput))\n#23 H:\\Git Repos\\CSE299-Project\\nsu_clubs\\vendor\\laravel\\framework\\src\\Illuminate\\Console\\Application.php(92): Symfony\\Component\\Console\\Application->run(Object(Symfony\\Component\\Console\\Input\\ArgvInput), Object(Symfony\\Component\\Console\\Output\\ConsoleOutput))\n#24 H:\\Git Repos\\CSE299-Project\\nsu_clubs\\vendor\\laravel\\framework\\src\\Illuminate\\Foundation\\Console\\Kernel.php(129): Illuminate\\Console\\Application->run(Object(Symfony\\Component\\Console\\Input\\ArgvInput), Object(Symfony\\Component\\Console\\Output\\ConsoleOutput))\n#25 H:\\Git Repos\\CSE299-Project\\nsu_clubs\\artisan(37): Illuminate\\Foundation\\Console\\Kernel->handle(Object(Symfony\\Component\\Console\\Input\\ArgvInput), Object(Symfony\\Component\\Console\\Output\\ConsoleOutput))\n#26 {main}', '2021-09-07 10:34:30'),
(5, '923e8629-97b6-4b42-b622-36184b709ef0', 'database', 'default', '{\"uuid\":\"923e8629-97b6-4b42-b622-36184b709ef0\",\"displayName\":\"App\\\\Mail\\\\newNoticeMail\",\"job\":\"Illuminate\\\\Queue\\\\CallQueuedHandler@call\",\"maxTries\":null,\"maxExceptions\":null,\"failOnTimeout\":false,\"backoff\":\"\",\"timeout\":null,\"retryUntil\":null,\"data\":{\"commandName\":\"Illuminate\\\\Mail\\\\SendQueuedMailable\",\"command\":\"O:34:\\\"Illuminate\\\\Mail\\\\SendQueuedMailable\\\":13:{s:8:\\\"mailable\\\";O:22:\\\"App\\\\Mail\\\\newNoticeMail\\\":30:{s:7:\\\"\\u0000*\\u0000club\\\";O:45:\\\"Illuminate\\\\Contracts\\\\Database\\\\ModelIdentifier\\\":4:{s:5:\\\"class\\\";s:16:\\\"App\\\\Models\\\\Clubs\\\";s:2:\\\"id\\\";i:4;s:9:\\\"relations\\\";a:0:{}s:10:\\\"connection\\\";s:5:\\\"mysql\\\";}s:9:\\\"\\u0000*\\u0000notice\\\";O:45:\\\"Illuminate\\\\Contracts\\\\Database\\\\ModelIdentifier\\\":4:{s:5:\\\"class\\\";s:18:\\\"App\\\\Models\\\\Notices\\\";s:2:\\\"id\\\";i:24;s:9:\\\"relations\\\";a:0:{}s:10:\\\"connection\\\";s:5:\\\"mysql\\\";}s:6:\\\"locale\\\";N;s:4:\\\"from\\\";a:0:{}s:2:\\\"to\\\";a:1:{i:0;a:2:{s:4:\\\"name\\\";N;s:7:\\\"address\\\";s:22:\\\"sayeemfifa64@gmail.com\\\";}}s:2:\\\"cc\\\";a:0:{}s:3:\\\"bcc\\\";a:0:{}s:7:\\\"replyTo\\\";a:0:{}s:7:\\\"subject\\\";N;s:11:\\\"\\u0000*\\u0000markdown\\\";N;s:7:\\\"\\u0000*\\u0000html\\\";N;s:4:\\\"view\\\";N;s:8:\\\"textView\\\";N;s:8:\\\"viewData\\\";a:0:{}s:11:\\\"attachments\\\";a:0:{}s:14:\\\"rawAttachments\\\";a:0:{}s:15:\\\"diskAttachments\\\";a:0:{}s:9:\\\"callbacks\\\";a:0:{}s:5:\\\"theme\\\";N;s:6:\\\"mailer\\\";s:4:\\\"smtp\\\";s:29:\\\"\\u0000*\\u0000assertionableRenderStrings\\\";N;s:10:\\\"connection\\\";N;s:5:\\\"queue\\\";N;s:15:\\\"chainConnection\\\";N;s:10:\\\"chainQueue\\\";N;s:19:\\\"chainCatchCallbacks\\\";N;s:5:\\\"delay\\\";N;s:11:\\\"afterCommit\\\";N;s:10:\\\"middleware\\\";a:0:{}s:7:\\\"chained\\\";a:0:{}}s:5:\\\"tries\\\";N;s:7:\\\"timeout\\\";N;s:17:\\\"shouldBeEncrypted\\\";b:0;s:10:\\\"connection\\\";N;s:5:\\\"queue\\\";N;s:15:\\\"chainConnection\\\";N;s:10:\\\"chainQueue\\\";N;s:19:\\\"chainCatchCallbacks\\\";N;s:5:\\\"delay\\\";N;s:11:\\\"afterCommit\\\";N;s:10:\\\"middleware\\\";a:0:{}s:7:\\\"chained\\\";a:0:{}}\"}}', 'Illuminate\\Database\\Eloquent\\ModelNotFoundException: No query results for model [App\\Models\\Notices]. in H:\\Git Repos\\CSE299-Project\\nsu_clubs\\vendor\\laravel\\framework\\src\\Illuminate\\Database\\Eloquent\\Builder.php:519\nStack trace:\n#0 H:\\Git Repos\\CSE299-Project\\nsu_clubs\\vendor\\laravel\\framework\\src\\Illuminate\\Queue\\SerializesAndRestoresModelIdentifiers.php(102): Illuminate\\Database\\Eloquent\\Builder->firstOrFail()\n#1 H:\\Git Repos\\CSE299-Project\\nsu_clubs\\vendor\\laravel\\framework\\src\\Illuminate\\Queue\\SerializesAndRestoresModelIdentifiers.php(57): App\\Mail\\newNoticeMail->restoreModel(Object(Illuminate\\Contracts\\Database\\ModelIdentifier))\n#2 H:\\Git Repos\\CSE299-Project\\nsu_clubs\\vendor\\laravel\\framework\\src\\Illuminate\\Queue\\SerializesModels.php(122): App\\Mail\\newNoticeMail->getRestoredPropertyValue(Object(Illuminate\\Contracts\\Database\\ModelIdentifier))\n#3 [internal function]: App\\Mail\\newNoticeMail->__unserialize(Array)\n#4 H:\\Git Repos\\CSE299-Project\\nsu_clubs\\vendor\\laravel\\framework\\src\\Illuminate\\Queue\\CallQueuedHandler.php(97): unserialize(\'O:34:\"Illuminat...\')\n#5 H:\\Git Repos\\CSE299-Project\\nsu_clubs\\vendor\\laravel\\framework\\src\\Illuminate\\Queue\\CallQueuedHandler.php(60): Illuminate\\Queue\\CallQueuedHandler->getCommand(Array)\n#6 H:\\Git Repos\\CSE299-Project\\nsu_clubs\\vendor\\laravel\\framework\\src\\Illuminate\\Queue\\Jobs\\Job.php(98): Illuminate\\Queue\\CallQueuedHandler->call(Object(Illuminate\\Queue\\Jobs\\DatabaseJob), Array)\n#7 H:\\Git Repos\\CSE299-Project\\nsu_clubs\\vendor\\laravel\\framework\\src\\Illuminate\\Queue\\Worker.php(428): Illuminate\\Queue\\Jobs\\Job->fire()\n#8 H:\\Git Repos\\CSE299-Project\\nsu_clubs\\vendor\\laravel\\framework\\src\\Illuminate\\Queue\\Worker.php(378): Illuminate\\Queue\\Worker->process(\'database\', Object(Illuminate\\Queue\\Jobs\\DatabaseJob), Object(Illuminate\\Queue\\WorkerOptions))\n#9 H:\\Git Repos\\CSE299-Project\\nsu_clubs\\vendor\\laravel\\framework\\src\\Illuminate\\Queue\\Worker.php(172): Illuminate\\Queue\\Worker->runJob(Object(Illuminate\\Queue\\Jobs\\DatabaseJob), \'database\', Object(Illuminate\\Queue\\WorkerOptions))\n#10 H:\\Git Repos\\CSE299-Project\\nsu_clubs\\vendor\\laravel\\framework\\src\\Illuminate\\Queue\\Console\\WorkCommand.php(117): Illuminate\\Queue\\Worker->daemon(\'database\', \'default\', Object(Illuminate\\Queue\\WorkerOptions))\n#11 H:\\Git Repos\\CSE299-Project\\nsu_clubs\\vendor\\laravel\\framework\\src\\Illuminate\\Queue\\Console\\WorkCommand.php(101): Illuminate\\Queue\\Console\\WorkCommand->runWorker(\'database\', \'default\')\n#12 H:\\Git Repos\\CSE299-Project\\nsu_clubs\\vendor\\laravel\\framework\\src\\Illuminate\\Container\\BoundMethod.php(36): Illuminate\\Queue\\Console\\WorkCommand->handle()\n#13 H:\\Git Repos\\CSE299-Project\\nsu_clubs\\vendor\\laravel\\framework\\src\\Illuminate\\Container\\Util.php(40): Illuminate\\Container\\BoundMethod::Illuminate\\Container\\{closure}()\n#14 H:\\Git Repos\\CSE299-Project\\nsu_clubs\\vendor\\laravel\\framework\\src\\Illuminate\\Container\\BoundMethod.php(93): Illuminate\\Container\\Util::unwrapIfClosure(Object(Closure))\n#15 H:\\Git Repos\\CSE299-Project\\nsu_clubs\\vendor\\laravel\\framework\\src\\Illuminate\\Container\\BoundMethod.php(37): Illuminate\\Container\\BoundMethod::callBoundMethod(Object(Illuminate\\Foundation\\Application), Array, Object(Closure))\n#16 H:\\Git Repos\\CSE299-Project\\nsu_clubs\\vendor\\laravel\\framework\\src\\Illuminate\\Container\\Container.php(651): Illuminate\\Container\\BoundMethod::call(Object(Illuminate\\Foundation\\Application), Array, Array, NULL)\n#17 H:\\Git Repos\\CSE299-Project\\nsu_clubs\\vendor\\laravel\\framework\\src\\Illuminate\\Console\\Command.php(136): Illuminate\\Container\\Container->call(Array)\n#18 H:\\Git Repos\\CSE299-Project\\nsu_clubs\\vendor\\symfony\\console\\Command\\Command.php(299): Illuminate\\Console\\Command->execute(Object(Symfony\\Component\\Console\\Input\\ArgvInput), Object(Illuminate\\Console\\OutputStyle))\n#19 H:\\Git Repos\\CSE299-Project\\nsu_clubs\\vendor\\laravel\\framework\\src\\Illuminate\\Console\\Command.php(121): Symfony\\Component\\Console\\Command\\Command->run(Object(Symfony\\Component\\Console\\Input\\ArgvInput), Object(Illuminate\\Console\\OutputStyle))\n#20 H:\\Git Repos\\CSE299-Project\\nsu_clubs\\vendor\\symfony\\console\\Application.php(978): Illuminate\\Console\\Command->run(Object(Symfony\\Component\\Console\\Input\\ArgvInput), Object(Symfony\\Component\\Console\\Output\\ConsoleOutput))\n#21 H:\\Git Repos\\CSE299-Project\\nsu_clubs\\vendor\\symfony\\console\\Application.php(295): Symfony\\Component\\Console\\Application->doRunCommand(Object(Illuminate\\Queue\\Console\\WorkCommand), Object(Symfony\\Component\\Console\\Input\\ArgvInput), Object(Symfony\\Component\\Console\\Output\\ConsoleOutput))\n#22 H:\\Git Repos\\CSE299-Project\\nsu_clubs\\vendor\\symfony\\console\\Application.php(167): Symfony\\Component\\Console\\Application->doRun(Object(Symfony\\Component\\Console\\Input\\ArgvInput), Object(Symfony\\Component\\Console\\Output\\ConsoleOutput))\n#23 H:\\Git Repos\\CSE299-Project\\nsu_clubs\\vendor\\laravel\\framework\\src\\Illuminate\\Console\\Application.php(92): Symfony\\Component\\Console\\Application->run(Object(Symfony\\Component\\Console\\Input\\ArgvInput), Object(Symfony\\Component\\Console\\Output\\ConsoleOutput))\n#24 H:\\Git Repos\\CSE299-Project\\nsu_clubs\\vendor\\laravel\\framework\\src\\Illuminate\\Foundation\\Console\\Kernel.php(129): Illuminate\\Console\\Application->run(Object(Symfony\\Component\\Console\\Input\\ArgvInput), Object(Symfony\\Component\\Console\\Output\\ConsoleOutput))\n#25 H:\\Git Repos\\CSE299-Project\\nsu_clubs\\artisan(37): Illuminate\\Foundation\\Console\\Kernel->handle(Object(Symfony\\Component\\Console\\Input\\ArgvInput), Object(Symfony\\Component\\Console\\Output\\ConsoleOutput))\n#26 {main}', '2021-09-07 10:34:30');
INSERT INTO `failed_jobs` (`id`, `uuid`, `connection`, `queue`, `payload`, `exception`, `failed_at`) VALUES
(6, 'b8b2cc9b-4d63-436a-922e-34a9af4ceb28', 'database', 'default', '{\"uuid\":\"b8b2cc9b-4d63-436a-922e-34a9af4ceb28\",\"displayName\":\"App\\\\Mail\\\\newNoticeMail\",\"job\":\"Illuminate\\\\Queue\\\\CallQueuedHandler@call\",\"maxTries\":null,\"maxExceptions\":null,\"failOnTimeout\":false,\"backoff\":\"\",\"timeout\":null,\"retryUntil\":null,\"data\":{\"commandName\":\"Illuminate\\\\Mail\\\\SendQueuedMailable\",\"command\":\"O:34:\\\"Illuminate\\\\Mail\\\\SendQueuedMailable\\\":13:{s:8:\\\"mailable\\\";O:22:\\\"App\\\\Mail\\\\newNoticeMail\\\":30:{s:7:\\\"\\u0000*\\u0000club\\\";O:45:\\\"Illuminate\\\\Contracts\\\\Database\\\\ModelIdentifier\\\":4:{s:5:\\\"class\\\";s:16:\\\"App\\\\Models\\\\Clubs\\\";s:2:\\\"id\\\";i:4;s:9:\\\"relations\\\";a:0:{}s:10:\\\"connection\\\";s:5:\\\"mysql\\\";}s:9:\\\"\\u0000*\\u0000notice\\\";O:45:\\\"Illuminate\\\\Contracts\\\\Database\\\\ModelIdentifier\\\":4:{s:5:\\\"class\\\";s:18:\\\"App\\\\Models\\\\Notices\\\";s:2:\\\"id\\\";i:25;s:9:\\\"relations\\\";a:0:{}s:10:\\\"connection\\\";s:5:\\\"mysql\\\";}s:6:\\\"locale\\\";N;s:4:\\\"from\\\";a:0:{}s:2:\\\"to\\\";a:1:{i:0;a:2:{s:4:\\\"name\\\";N;s:7:\\\"address\\\";s:21:\\\"adnansadi52@gmail.com\\\";}}s:2:\\\"cc\\\";a:0:{}s:3:\\\"bcc\\\";a:0:{}s:7:\\\"replyTo\\\";a:0:{}s:7:\\\"subject\\\";N;s:11:\\\"\\u0000*\\u0000markdown\\\";N;s:7:\\\"\\u0000*\\u0000html\\\";N;s:4:\\\"view\\\";N;s:8:\\\"textView\\\";N;s:8:\\\"viewData\\\";a:0:{}s:11:\\\"attachments\\\";a:0:{}s:14:\\\"rawAttachments\\\";a:0:{}s:15:\\\"diskAttachments\\\";a:0:{}s:9:\\\"callbacks\\\";a:0:{}s:5:\\\"theme\\\";N;s:6:\\\"mailer\\\";s:4:\\\"smtp\\\";s:29:\\\"\\u0000*\\u0000assertionableRenderStrings\\\";N;s:10:\\\"connection\\\";N;s:5:\\\"queue\\\";N;s:15:\\\"chainConnection\\\";N;s:10:\\\"chainQueue\\\";N;s:19:\\\"chainCatchCallbacks\\\";N;s:5:\\\"delay\\\";N;s:11:\\\"afterCommit\\\";N;s:10:\\\"middleware\\\";a:0:{}s:7:\\\"chained\\\";a:0:{}}s:5:\\\"tries\\\";N;s:7:\\\"timeout\\\";N;s:17:\\\"shouldBeEncrypted\\\";b:0;s:10:\\\"connection\\\";N;s:5:\\\"queue\\\";N;s:15:\\\"chainConnection\\\";N;s:10:\\\"chainQueue\\\";N;s:19:\\\"chainCatchCallbacks\\\";N;s:5:\\\"delay\\\";N;s:11:\\\"afterCommit\\\";N;s:10:\\\"middleware\\\";a:0:{}s:7:\\\"chained\\\";a:0:{}}\"}}', 'Illuminate\\Database\\Eloquent\\ModelNotFoundException: No query results for model [App\\Models\\Notices]. in H:\\Git Repos\\CSE299-Project\\nsu_clubs\\vendor\\laravel\\framework\\src\\Illuminate\\Database\\Eloquent\\Builder.php:519\nStack trace:\n#0 H:\\Git Repos\\CSE299-Project\\nsu_clubs\\vendor\\laravel\\framework\\src\\Illuminate\\Queue\\SerializesAndRestoresModelIdentifiers.php(102): Illuminate\\Database\\Eloquent\\Builder->firstOrFail()\n#1 H:\\Git Repos\\CSE299-Project\\nsu_clubs\\vendor\\laravel\\framework\\src\\Illuminate\\Queue\\SerializesAndRestoresModelIdentifiers.php(57): App\\Mail\\newNoticeMail->restoreModel(Object(Illuminate\\Contracts\\Database\\ModelIdentifier))\n#2 H:\\Git Repos\\CSE299-Project\\nsu_clubs\\vendor\\laravel\\framework\\src\\Illuminate\\Queue\\SerializesModels.php(122): App\\Mail\\newNoticeMail->getRestoredPropertyValue(Object(Illuminate\\Contracts\\Database\\ModelIdentifier))\n#3 [internal function]: App\\Mail\\newNoticeMail->__unserialize(Array)\n#4 H:\\Git Repos\\CSE299-Project\\nsu_clubs\\vendor\\laravel\\framework\\src\\Illuminate\\Queue\\CallQueuedHandler.php(97): unserialize(\'O:34:\"Illuminat...\')\n#5 H:\\Git Repos\\CSE299-Project\\nsu_clubs\\vendor\\laravel\\framework\\src\\Illuminate\\Queue\\CallQueuedHandler.php(60): Illuminate\\Queue\\CallQueuedHandler->getCommand(Array)\n#6 H:\\Git Repos\\CSE299-Project\\nsu_clubs\\vendor\\laravel\\framework\\src\\Illuminate\\Queue\\Jobs\\Job.php(98): Illuminate\\Queue\\CallQueuedHandler->call(Object(Illuminate\\Queue\\Jobs\\DatabaseJob), Array)\n#7 H:\\Git Repos\\CSE299-Project\\nsu_clubs\\vendor\\laravel\\framework\\src\\Illuminate\\Queue\\Worker.php(428): Illuminate\\Queue\\Jobs\\Job->fire()\n#8 H:\\Git Repos\\CSE299-Project\\nsu_clubs\\vendor\\laravel\\framework\\src\\Illuminate\\Queue\\Worker.php(378): Illuminate\\Queue\\Worker->process(\'database\', Object(Illuminate\\Queue\\Jobs\\DatabaseJob), Object(Illuminate\\Queue\\WorkerOptions))\n#9 H:\\Git Repos\\CSE299-Project\\nsu_clubs\\vendor\\laravel\\framework\\src\\Illuminate\\Queue\\Worker.php(172): Illuminate\\Queue\\Worker->runJob(Object(Illuminate\\Queue\\Jobs\\DatabaseJob), \'database\', Object(Illuminate\\Queue\\WorkerOptions))\n#10 H:\\Git Repos\\CSE299-Project\\nsu_clubs\\vendor\\laravel\\framework\\src\\Illuminate\\Queue\\Console\\WorkCommand.php(117): Illuminate\\Queue\\Worker->daemon(\'database\', \'default\', Object(Illuminate\\Queue\\WorkerOptions))\n#11 H:\\Git Repos\\CSE299-Project\\nsu_clubs\\vendor\\laravel\\framework\\src\\Illuminate\\Queue\\Console\\WorkCommand.php(101): Illuminate\\Queue\\Console\\WorkCommand->runWorker(\'database\', \'default\')\n#12 H:\\Git Repos\\CSE299-Project\\nsu_clubs\\vendor\\laravel\\framework\\src\\Illuminate\\Container\\BoundMethod.php(36): Illuminate\\Queue\\Console\\WorkCommand->handle()\n#13 H:\\Git Repos\\CSE299-Project\\nsu_clubs\\vendor\\laravel\\framework\\src\\Illuminate\\Container\\Util.php(40): Illuminate\\Container\\BoundMethod::Illuminate\\Container\\{closure}()\n#14 H:\\Git Repos\\CSE299-Project\\nsu_clubs\\vendor\\laravel\\framework\\src\\Illuminate\\Container\\BoundMethod.php(93): Illuminate\\Container\\Util::unwrapIfClosure(Object(Closure))\n#15 H:\\Git Repos\\CSE299-Project\\nsu_clubs\\vendor\\laravel\\framework\\src\\Illuminate\\Container\\BoundMethod.php(37): Illuminate\\Container\\BoundMethod::callBoundMethod(Object(Illuminate\\Foundation\\Application), Array, Object(Closure))\n#16 H:\\Git Repos\\CSE299-Project\\nsu_clubs\\vendor\\laravel\\framework\\src\\Illuminate\\Container\\Container.php(651): Illuminate\\Container\\BoundMethod::call(Object(Illuminate\\Foundation\\Application), Array, Array, NULL)\n#17 H:\\Git Repos\\CSE299-Project\\nsu_clubs\\vendor\\laravel\\framework\\src\\Illuminate\\Console\\Command.php(136): Illuminate\\Container\\Container->call(Array)\n#18 H:\\Git Repos\\CSE299-Project\\nsu_clubs\\vendor\\symfony\\console\\Command\\Command.php(299): Illuminate\\Console\\Command->execute(Object(Symfony\\Component\\Console\\Input\\ArgvInput), Object(Illuminate\\Console\\OutputStyle))\n#19 H:\\Git Repos\\CSE299-Project\\nsu_clubs\\vendor\\laravel\\framework\\src\\Illuminate\\Console\\Command.php(121): Symfony\\Component\\Console\\Command\\Command->run(Object(Symfony\\Component\\Console\\Input\\ArgvInput), Object(Illuminate\\Console\\OutputStyle))\n#20 H:\\Git Repos\\CSE299-Project\\nsu_clubs\\vendor\\symfony\\console\\Application.php(978): Illuminate\\Console\\Command->run(Object(Symfony\\Component\\Console\\Input\\ArgvInput), Object(Symfony\\Component\\Console\\Output\\ConsoleOutput))\n#21 H:\\Git Repos\\CSE299-Project\\nsu_clubs\\vendor\\symfony\\console\\Application.php(295): Symfony\\Component\\Console\\Application->doRunCommand(Object(Illuminate\\Queue\\Console\\WorkCommand), Object(Symfony\\Component\\Console\\Input\\ArgvInput), Object(Symfony\\Component\\Console\\Output\\ConsoleOutput))\n#22 H:\\Git Repos\\CSE299-Project\\nsu_clubs\\vendor\\symfony\\console\\Application.php(167): Symfony\\Component\\Console\\Application->doRun(Object(Symfony\\Component\\Console\\Input\\ArgvInput), Object(Symfony\\Component\\Console\\Output\\ConsoleOutput))\n#23 H:\\Git Repos\\CSE299-Project\\nsu_clubs\\vendor\\laravel\\framework\\src\\Illuminate\\Console\\Application.php(92): Symfony\\Component\\Console\\Application->run(Object(Symfony\\Component\\Console\\Input\\ArgvInput), Object(Symfony\\Component\\Console\\Output\\ConsoleOutput))\n#24 H:\\Git Repos\\CSE299-Project\\nsu_clubs\\vendor\\laravel\\framework\\src\\Illuminate\\Foundation\\Console\\Kernel.php(129): Illuminate\\Console\\Application->run(Object(Symfony\\Component\\Console\\Input\\ArgvInput), Object(Symfony\\Component\\Console\\Output\\ConsoleOutput))\n#25 H:\\Git Repos\\CSE299-Project\\nsu_clubs\\artisan(37): Illuminate\\Foundation\\Console\\Kernel->handle(Object(Symfony\\Component\\Console\\Input\\ArgvInput), Object(Symfony\\Component\\Console\\Output\\ConsoleOutput))\n#26 {main}', '2021-09-07 10:40:55'),
(7, '7092c7fc-67ea-443d-8b19-db6026b9b5ed', 'database', 'default', '{\"uuid\":\"7092c7fc-67ea-443d-8b19-db6026b9b5ed\",\"displayName\":\"App\\\\Mail\\\\newEventMail\",\"job\":\"Illuminate\\\\Queue\\\\CallQueuedHandler@call\",\"maxTries\":null,\"maxExceptions\":null,\"failOnTimeout\":false,\"backoff\":\"\",\"timeout\":null,\"retryUntil\":null,\"data\":{\"commandName\":\"Illuminate\\\\Mail\\\\SendQueuedMailable\",\"command\":\"O:34:\\\"Illuminate\\\\Mail\\\\SendQueuedMailable\\\":13:{s:8:\\\"mailable\\\";O:21:\\\"App\\\\Mail\\\\newEventMail\\\":30:{s:7:\\\"\\u0000*\\u0000club\\\";O:45:\\\"Illuminate\\\\Contracts\\\\Database\\\\ModelIdentifier\\\":4:{s:5:\\\"class\\\";s:16:\\\"App\\\\Models\\\\Clubs\\\";s:2:\\\"id\\\";i:4;s:9:\\\"relations\\\";a:0:{}s:10:\\\"connection\\\";s:5:\\\"mysql\\\";}s:8:\\\"\\u0000*\\u0000event\\\";O:45:\\\"Illuminate\\\\Contracts\\\\Database\\\\ModelIdentifier\\\":4:{s:5:\\\"class\\\";s:17:\\\"App\\\\Models\\\\Events\\\";s:2:\\\"id\\\";i:40;s:9:\\\"relations\\\";a:0:{}s:10:\\\"connection\\\";s:5:\\\"mysql\\\";}s:6:\\\"locale\\\";N;s:4:\\\"from\\\";a:0:{}s:2:\\\"to\\\";a:1:{i:0;a:2:{s:4:\\\"name\\\";N;s:7:\\\"address\\\";s:20:\\\"aadnansadi@gmail.com\\\";}}s:2:\\\"cc\\\";a:0:{}s:3:\\\"bcc\\\";a:0:{}s:7:\\\"replyTo\\\";a:0:{}s:7:\\\"subject\\\";N;s:11:\\\"\\u0000*\\u0000markdown\\\";N;s:7:\\\"\\u0000*\\u0000html\\\";N;s:4:\\\"view\\\";N;s:8:\\\"textView\\\";N;s:8:\\\"viewData\\\";a:0:{}s:11:\\\"attachments\\\";a:0:{}s:14:\\\"rawAttachments\\\";a:0:{}s:15:\\\"diskAttachments\\\";a:0:{}s:9:\\\"callbacks\\\";a:0:{}s:5:\\\"theme\\\";N;s:6:\\\"mailer\\\";s:4:\\\"smtp\\\";s:29:\\\"\\u0000*\\u0000assertionableRenderStrings\\\";N;s:10:\\\"connection\\\";N;s:5:\\\"queue\\\";N;s:15:\\\"chainConnection\\\";N;s:10:\\\"chainQueue\\\";N;s:19:\\\"chainCatchCallbacks\\\";N;s:5:\\\"delay\\\";N;s:11:\\\"afterCommit\\\";N;s:10:\\\"middleware\\\";a:0:{}s:7:\\\"chained\\\";a:0:{}}s:5:\\\"tries\\\";N;s:7:\\\"timeout\\\";N;s:17:\\\"shouldBeEncrypted\\\";b:0;s:10:\\\"connection\\\";N;s:5:\\\"queue\\\";N;s:15:\\\"chainConnection\\\";N;s:10:\\\"chainQueue\\\";N;s:19:\\\"chainCatchCallbacks\\\";N;s:5:\\\"delay\\\";N;s:11:\\\"afterCommit\\\";N;s:10:\\\"middleware\\\";a:0:{}s:7:\\\"chained\\\";a:0:{}}\"}}', 'Swift_TransportException: Connection could not be established with host smtp.gmail.com :stream_socket_client(): php_network_getaddresses: getaddrinfo failed: No such host is known.  in H:\\Git Repos\\CSE299-Project\\nsu_clubs\\vendor\\swiftmailer\\swiftmailer\\lib\\classes\\Swift\\Transport\\StreamBuffer.php:261\nStack trace:\n#0 [internal function]: Swift_Transport_StreamBuffer->{closure}(2, \'stream_socket_c...\', \'H:\\\\Git Repos\\\\CS...\', 264, Array)\n#1 H:\\Git Repos\\CSE299-Project\\nsu_clubs\\vendor\\swiftmailer\\swiftmailer\\lib\\classes\\Swift\\Transport\\StreamBuffer.php(264): stream_socket_client(\'ssl://smtp.gmai...\', 0, \'php_network_get...\', 30, 4, Resource id #971)\n#2 H:\\Git Repos\\CSE299-Project\\nsu_clubs\\vendor\\swiftmailer\\swiftmailer\\lib\\classes\\Swift\\Transport\\StreamBuffer.php(58): Swift_Transport_StreamBuffer->establishSocketConnection()\n#3 H:\\Git Repos\\CSE299-Project\\nsu_clubs\\vendor\\swiftmailer\\swiftmailer\\lib\\classes\\Swift\\Transport\\AbstractSmtpTransport.php(143): Swift_Transport_StreamBuffer->initialize(Array)\n#4 H:\\Git Repos\\CSE299-Project\\nsu_clubs\\vendor\\swiftmailer\\swiftmailer\\lib\\classes\\Swift\\Mailer.php(65): Swift_Transport_AbstractSmtpTransport->start()\n#5 H:\\Git Repos\\CSE299-Project\\nsu_clubs\\vendor\\laravel\\framework\\src\\Illuminate\\Mail\\Mailer.php(521): Swift_Mailer->send(Object(Swift_Message), Array)\n#6 H:\\Git Repos\\CSE299-Project\\nsu_clubs\\vendor\\laravel\\framework\\src\\Illuminate\\Mail\\Mailer.php(288): Illuminate\\Mail\\Mailer->sendSwiftMessage(Object(Swift_Message))\n#7 H:\\Git Repos\\CSE299-Project\\nsu_clubs\\vendor\\laravel\\framework\\src\\Illuminate\\Mail\\Mailable.php(187): Illuminate\\Mail\\Mailer->send(Object(Illuminate\\Support\\HtmlString), Array, Object(Closure))\n#8 H:\\Git Repos\\CSE299-Project\\nsu_clubs\\vendor\\laravel\\framework\\src\\Illuminate\\Support\\Traits\\Localizable.php(19): Illuminate\\Mail\\Mailable->Illuminate\\Mail\\{closure}()\n#9 H:\\Git Repos\\CSE299-Project\\nsu_clubs\\vendor\\laravel\\framework\\src\\Illuminate\\Mail\\Mailable.php(188): Illuminate\\Mail\\Mailable->withLocale(NULL, Object(Closure))\n#10 H:\\Git Repos\\CSE299-Project\\nsu_clubs\\vendor\\laravel\\framework\\src\\Illuminate\\Mail\\SendQueuedMailable.php(65): Illuminate\\Mail\\Mailable->send(Object(Illuminate\\Mail\\MailManager))\n#11 H:\\Git Repos\\CSE299-Project\\nsu_clubs\\vendor\\laravel\\framework\\src\\Illuminate\\Container\\BoundMethod.php(36): Illuminate\\Mail\\SendQueuedMailable->handle(Object(Illuminate\\Mail\\MailManager))\n#12 H:\\Git Repos\\CSE299-Project\\nsu_clubs\\vendor\\laravel\\framework\\src\\Illuminate\\Container\\Util.php(40): Illuminate\\Container\\BoundMethod::Illuminate\\Container\\{closure}()\n#13 H:\\Git Repos\\CSE299-Project\\nsu_clubs\\vendor\\laravel\\framework\\src\\Illuminate\\Container\\BoundMethod.php(93): Illuminate\\Container\\Util::unwrapIfClosure(Object(Closure))\n#14 H:\\Git Repos\\CSE299-Project\\nsu_clubs\\vendor\\laravel\\framework\\src\\Illuminate\\Container\\BoundMethod.php(37): Illuminate\\Container\\BoundMethod::callBoundMethod(Object(Illuminate\\Foundation\\Application), Array, Object(Closure))\n#15 H:\\Git Repos\\CSE299-Project\\nsu_clubs\\vendor\\laravel\\framework\\src\\Illuminate\\Container\\Container.php(651): Illuminate\\Container\\BoundMethod::call(Object(Illuminate\\Foundation\\Application), Array, Array, NULL)\n#16 H:\\Git Repos\\CSE299-Project\\nsu_clubs\\vendor\\laravel\\framework\\src\\Illuminate\\Bus\\Dispatcher.php(128): Illuminate\\Container\\Container->call(Array)\n#17 H:\\Git Repos\\CSE299-Project\\nsu_clubs\\vendor\\laravel\\framework\\src\\Illuminate\\Pipeline\\Pipeline.php(128): Illuminate\\Bus\\Dispatcher->Illuminate\\Bus\\{closure}(Object(Illuminate\\Mail\\SendQueuedMailable))\n#18 H:\\Git Repos\\CSE299-Project\\nsu_clubs\\vendor\\laravel\\framework\\src\\Illuminate\\Pipeline\\Pipeline.php(103): Illuminate\\Pipeline\\Pipeline->Illuminate\\Pipeline\\{closure}(Object(Illuminate\\Mail\\SendQueuedMailable))\n#19 H:\\Git Repos\\CSE299-Project\\nsu_clubs\\vendor\\laravel\\framework\\src\\Illuminate\\Bus\\Dispatcher.php(132): Illuminate\\Pipeline\\Pipeline->then(Object(Closure))\n#20 H:\\Git Repos\\CSE299-Project\\nsu_clubs\\vendor\\laravel\\framework\\src\\Illuminate\\Queue\\CallQueuedHandler.php(120): Illuminate\\Bus\\Dispatcher->dispatchNow(Object(Illuminate\\Mail\\SendQueuedMailable), false)\n#21 H:\\Git Repos\\CSE299-Project\\nsu_clubs\\vendor\\laravel\\framework\\src\\Illuminate\\Pipeline\\Pipeline.php(128): Illuminate\\Queue\\CallQueuedHandler->Illuminate\\Queue\\{closure}(Object(Illuminate\\Mail\\SendQueuedMailable))\n#22 H:\\Git Repos\\CSE299-Project\\nsu_clubs\\vendor\\laravel\\framework\\src\\Illuminate\\Pipeline\\Pipeline.php(103): Illuminate\\Pipeline\\Pipeline->Illuminate\\Pipeline\\{closure}(Object(Illuminate\\Mail\\SendQueuedMailable))\n#23 H:\\Git Repos\\CSE299-Project\\nsu_clubs\\vendor\\laravel\\framework\\src\\Illuminate\\Queue\\CallQueuedHandler.php(122): Illuminate\\Pipeline\\Pipeline->then(Object(Closure))\n#24 H:\\Git Repos\\CSE299-Project\\nsu_clubs\\vendor\\laravel\\framework\\src\\Illuminate\\Queue\\CallQueuedHandler.php(70): Illuminate\\Queue\\CallQueuedHandler->dispatchThroughMiddleware(Object(Illuminate\\Queue\\Jobs\\DatabaseJob), Object(Illuminate\\Mail\\SendQueuedMailable))\n#25 H:\\Git Repos\\CSE299-Project\\nsu_clubs\\vendor\\laravel\\framework\\src\\Illuminate\\Queue\\Jobs\\Job.php(98): Illuminate\\Queue\\CallQueuedHandler->call(Object(Illuminate\\Queue\\Jobs\\DatabaseJob), Array)\n#26 H:\\Git Repos\\CSE299-Project\\nsu_clubs\\vendor\\laravel\\framework\\src\\Illuminate\\Queue\\Worker.php(428): Illuminate\\Queue\\Jobs\\Job->fire()\n#27 H:\\Git Repos\\CSE299-Project\\nsu_clubs\\vendor\\laravel\\framework\\src\\Illuminate\\Queue\\Worker.php(378): Illuminate\\Queue\\Worker->process(\'database\', Object(Illuminate\\Queue\\Jobs\\DatabaseJob), Object(Illuminate\\Queue\\WorkerOptions))\n#28 H:\\Git Repos\\CSE299-Project\\nsu_clubs\\vendor\\laravel\\framework\\src\\Illuminate\\Queue\\Worker.php(172): Illuminate\\Queue\\Worker->runJob(Object(Illuminate\\Queue\\Jobs\\DatabaseJob), \'database\', Object(Illuminate\\Queue\\WorkerOptions))\n#29 H:\\Git Repos\\CSE299-Project\\nsu_clubs\\vendor\\laravel\\framework\\src\\Illuminate\\Queue\\Console\\WorkCommand.php(117): Illuminate\\Queue\\Worker->daemon(\'database\', \'default\', Object(Illuminate\\Queue\\WorkerOptions))\n#30 H:\\Git Repos\\CSE299-Project\\nsu_clubs\\vendor\\laravel\\framework\\src\\Illuminate\\Queue\\Console\\WorkCommand.php(101): Illuminate\\Queue\\Console\\WorkCommand->runWorker(\'database\', \'default\')\n#31 H:\\Git Repos\\CSE299-Project\\nsu_clubs\\vendor\\laravel\\framework\\src\\Illuminate\\Container\\BoundMethod.php(36): Illuminate\\Queue\\Console\\WorkCommand->handle()\n#32 H:\\Git Repos\\CSE299-Project\\nsu_clubs\\vendor\\laravel\\framework\\src\\Illuminate\\Container\\Util.php(40): Illuminate\\Container\\BoundMethod::Illuminate\\Container\\{closure}()\n#33 H:\\Git Repos\\CSE299-Project\\nsu_clubs\\vendor\\laravel\\framework\\src\\Illuminate\\Container\\BoundMethod.php(93): Illuminate\\Container\\Util::unwrapIfClosure(Object(Closure))\n#34 H:\\Git Repos\\CSE299-Project\\nsu_clubs\\vendor\\laravel\\framework\\src\\Illuminate\\Container\\BoundMethod.php(37): Illuminate\\Container\\BoundMethod::callBoundMethod(Object(Illuminate\\Foundation\\Application), Array, Object(Closure))\n#35 H:\\Git Repos\\CSE299-Project\\nsu_clubs\\vendor\\laravel\\framework\\src\\Illuminate\\Container\\Container.php(651): Illuminate\\Container\\BoundMethod::call(Object(Illuminate\\Foundation\\Application), Array, Array, NULL)\n#36 H:\\Git Repos\\CSE299-Project\\nsu_clubs\\vendor\\laravel\\framework\\src\\Illuminate\\Console\\Command.php(136): Illuminate\\Container\\Container->call(Array)\n#37 H:\\Git Repos\\CSE299-Project\\nsu_clubs\\vendor\\symfony\\console\\Command\\Command.php(299): Illuminate\\Console\\Command->execute(Object(Symfony\\Component\\Console\\Input\\ArgvInput), Object(Illuminate\\Console\\OutputStyle))\n#38 H:\\Git Repos\\CSE299-Project\\nsu_clubs\\vendor\\laravel\\framework\\src\\Illuminate\\Console\\Command.php(121): Symfony\\Component\\Console\\Command\\Command->run(Object(Symfony\\Component\\Console\\Input\\ArgvInput), Object(Illuminate\\Console\\OutputStyle))\n#39 H:\\Git Repos\\CSE299-Project\\nsu_clubs\\vendor\\symfony\\console\\Application.php(978): Illuminate\\Console\\Command->run(Object(Symfony\\Component\\Console\\Input\\ArgvInput), Object(Symfony\\Component\\Console\\Output\\ConsoleOutput))\n#40 H:\\Git Repos\\CSE299-Project\\nsu_clubs\\vendor\\symfony\\console\\Application.php(295): Symfony\\Component\\Console\\Application->doRunCommand(Object(Illuminate\\Queue\\Console\\WorkCommand), Object(Symfony\\Component\\Console\\Input\\ArgvInput), Object(Symfony\\Component\\Console\\Output\\ConsoleOutput))\n#41 H:\\Git Repos\\CSE299-Project\\nsu_clubs\\vendor\\symfony\\console\\Application.php(167): Symfony\\Component\\Console\\Application->doRun(Object(Symfony\\Component\\Console\\Input\\ArgvInput), Object(Symfony\\Component\\Console\\Output\\ConsoleOutput))\n#42 H:\\Git Repos\\CSE299-Project\\nsu_clubs\\vendor\\laravel\\framework\\src\\Illuminate\\Console\\Application.php(92): Symfony\\Component\\Console\\Application->run(Object(Symfony\\Component\\Console\\Input\\ArgvInput), Object(Symfony\\Component\\Console\\Output\\ConsoleOutput))\n#43 H:\\Git Repos\\CSE299-Project\\nsu_clubs\\vendor\\laravel\\framework\\src\\Illuminate\\Foundation\\Console\\Kernel.php(129): Illuminate\\Console\\Application->run(Object(Symfony\\Component\\Console\\Input\\ArgvInput), Object(Symfony\\Component\\Console\\Output\\ConsoleOutput))\n#44 H:\\Git Repos\\CSE299-Project\\nsu_clubs\\artisan(37): Illuminate\\Foundation\\Console\\Kernel->handle(Object(Symfony\\Component\\Console\\Input\\ArgvInput), Object(Symfony\\Component\\Console\\Output\\ConsoleOutput))\n#45 {main}', '2021-09-07 10:41:07');

-- --------------------------------------------------------

--
-- Table structure for table `follow_clubs`
--

CREATE TABLE `follow_clubs` (
  `follower_id` int(10) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `club_id` int(10) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `follow_clubs`
--

INSERT INTO `follow_clubs` (`follower_id`, `user_id`, `club_id`) VALUES
(9, 8, 5),
(10, 8, 7),
(12, 2, 4),
(13, 11, 1),
(14, 11, 4),
(15, 11, 2),
(17, 13, 4),
(20, 8, 4);

-- --------------------------------------------------------

--
-- Table structure for table `follow_events`
--

CREATE TABLE `follow_events` (
  `follower_id` int(10) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `event_id` int(10) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `follow_events`
--

INSERT INTO `follow_events` (`follower_id`, `user_id`, `event_id`) VALUES
(32, 8, 35),
(33, 8, 37),
(36, 10, 36),
(39, 8, 36);

-- --------------------------------------------------------

--
-- Table structure for table `jobs`
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
-- Table structure for table `members`
--

CREATE TABLE `members` (
  `m_id` int(10) UNSIGNED NOT NULL,
  `club_id` int(10) UNSIGNED NOT NULL,
  `dept_id` int(11) NOT NULL,
  `name` varchar(64) COLLATE utf8mb4_unicode_ci NOT NULL,
  `nsu_id` int(11) NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `phone_num` varchar(15) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `position` varchar(30) COLLATE utf8mb4_unicode_ci NOT NULL,
  `join_date` date DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `members`
--

INSERT INTO `members` (`m_id`, `club_id`, `dept_id`, `name`, `nsu_id`, `email`, `phone_num`, `position`, `join_date`, `created_at`, `updated_at`) VALUES
(7, 1, 4, 'Dwight Hermann', 1542113331, 'bridget.connelly@hagenes.biz', '+17376621351', 'General Member', '2009-06-09', '2021-08-04 11:55:43', '2021-08-04 11:55:43'),
(9, 3, 12, 'Dr. Kole Littel', 1552989166, 'wiza.keagan@dietrich.net', '+17570618605', 'General Member', '2003-10-14', '2021-08-04 11:55:43', '2021-08-04 11:55:43'),
(11, 4, 15, 'Kaya Roberts', 1542820141, 'gmcclure@hotmail.com', '+16282465335', 'General Member', '2003-01-07', '2021-08-04 11:55:43', '2021-08-04 11:55:43'),
(14, 2, 9, 'Dr. Kaley Robel', 2089269133, 'willard.osinski@gmail.com', '+17191612758', 'General Member', '2012-12-21', '2021-08-04 11:55:43', '2021-08-04 11:55:43'),
(15, 4, 9, 'Daryl Turner', 1873602544, 'yhessel@gmail.com', '+16202555270', 'Senior Member', '2018-03-01', '2021-08-04 11:55:43', '2021-08-04 11:55:43'),
(20, 1, 10, 'Violette McLaughlin DDS', 1669138195, 'zora75@gmail.com', '+16511810296', 'Probationary Member', '1983-07-11', '2021-08-04 11:55:43', '2021-08-04 11:55:43'),
(22, 2, 7, 'Cameron Morissette', 1569975385, 'yherzog@windler.net', '+14788561675', 'Probationary Member', '1976-05-27', '2021-08-04 11:55:43', '2021-08-04 11:55:43'),
(23, 2, 9, 'Frederique Turner', 1738352829, 'tristin.schoen@gmail.com', '+13861101831', 'General Member', '1981-04-13', '2021-08-04 11:55:43', '2021-08-04 11:55:43'),
(26, 7, 13, 'Dr. Brenna West', 1773064211, 'pdouglas@yahoo.com', '+19079022633', 'Probationary Member', '1993-03-02', '2021-08-04 11:55:43', '2021-08-04 11:55:43'),
(27, 1, 5, 'Sylvia Ullrich', 1929395228, 'tdibbert@yahoo.com', '+16281159382', 'Probationary Member', '2015-03-24', '2021-08-04 11:55:43', '2021-08-04 11:55:43'),
(29, 1, 13, 'Prof. Anna Durgan', 1907176826, 'kendrick.gutmann@yahoo.com', '+19067365277', 'General Member', '2008-10-28', '2021-08-04 11:55:44', '2021-08-04 11:55:44'),
(30, 2, 16, 'Amalia Lesch', 1910589974, 'egrant@hilpert.net', '+13367924037', 'Probationary Member', '1987-02-22', '2021-08-04 11:55:44', '2021-08-04 11:55:44'),
(32, 1, 9, 'Letha O\'Reilly', 1822816488, 'weissnat.kiley@rodriguez.net', '+16503917949', 'Probationary Member', '1970-12-26', '2021-08-04 11:55:44', '2021-08-04 11:55:44'),
(36, 2, 1, 'Winifred Graham', 1566806839, 'adrian93@graham.info', '+18454299648', 'General Member', '1978-01-09', '2021-08-04 11:55:44', '2021-08-04 11:55:44'),
(37, 2, 8, 'Rex Greenfelder', 2088543105, 'xcrona@thiel.info', '+16507540566', 'Probationary Member', '1999-07-13', '2021-08-04 11:55:44', '2021-08-04 11:55:44'),
(39, 5, 5, 'Erika King', 2093518844, 'verner67@hotmail.com', '+13217622832', 'Senior Member', '1992-05-03', '2021-08-04 11:55:44', '2021-08-04 11:55:44'),
(41, 5, 6, 'Claud Cruickshank', 1813702539, 'zbergstrom@gmail.com', '+19721842618', 'Senior Member', '1984-07-09', '2021-08-04 11:55:44', '2021-08-04 11:55:44'),
(43, 2, 5, 'Hans Schulist', 1759982725, 'snicolas@becker.biz', '+19854276540', 'Probationary Member', '2016-05-22', '2021-08-04 11:55:44', '2021-08-04 11:55:44'),
(44, 9, 10, 'Billy Lind', 2096118684, 'ohermiston@pfannerstill.com', '+14582475314', 'Probationary Member', '1980-10-21', '2021-08-04 11:55:44', '2021-08-04 11:55:44'),
(45, 7, 5, 'Nyah Ferry', 1675645044, 'esteban.bogan@orn.com', '+19406743817', 'Senior Member', '1994-12-09', '2021-08-04 11:55:44', '2021-08-04 11:55:44'),
(47, 4, 10, 'Alexys Crist IV', 2081831217, 'erika29@herman.com', '+13215375077', 'Probationary Member', '1985-02-02', '2021-08-04 11:55:44', '2021-08-04 11:55:44'),
(48, 9, 1, 'Larissa Schmidt', 1940806436, 'elmira39@hotmail.com', '+13077370776', 'Probationary Member', '1998-04-19', '2021-08-04 11:55:44', '2021-08-04 11:55:44'),
(50, 7, 1, 'Donna Blanda Jr.', 1982296289, 'maymie.baumbach@breitenberg.net', '+14421046194', 'General Member', '2011-01-19', '2021-08-04 11:55:44', '2021-08-04 11:55:44'),
(52, 2, 8, 'Bridgette D\'Amore', 2020352303, 'klocko.dudley@anderson.com', '+19372535945', 'General Member', '2017-10-06', '2021-08-04 11:55:44', '2021-08-04 11:55:44'),
(54, 6, 15, 'Mrs. Thea Altenwerth IV', 1683879109, 'rowena.nicolas@gmail.com', '+13862364917', 'Senior Member', '1993-08-03', '2021-08-04 11:55:44', '2021-08-04 11:55:44'),
(57, 3, 2, 'Vilma Smith', 1697839410, 'nelson.wilderman@gmail.com', '+13393615769', 'Probationary Member', '1986-10-04', '2021-08-04 11:55:44', '2021-08-04 11:55:44'),
(58, 5, 9, 'Rickie Bradtke', 2091034347, 'jast.melissa@yahoo.com', '+15313850252', 'Senior Member', '1992-04-30', '2021-08-04 11:55:45', '2021-08-04 11:55:45'),
(61, 4, 2, 'Rosamond Heidenreich', 1995588198, 'prince51@hoppe.org', '+15345634046', 'Senior Member', '2007-03-11', '2021-08-04 11:55:45', '2021-08-04 11:55:45'),
(62, 8, 9, 'Vincenzo Howell', 1532760229, 'rosemarie89@hotmail.com', '+17814790378', 'Senior Member', '1982-08-10', '2021-08-04 11:55:45', '2021-08-04 11:55:45'),
(64, 9, 2, 'Edmund Stark III', 1594884119, 'schuyler76@yahoo.com', '+13803827960', 'Probationary Member', '1976-11-29', '2021-08-04 11:55:45', '2021-08-04 11:55:45'),
(66, 4, 8, 'Ms. Victoria Conn', 1530700180, 'ricardo80@labadie.biz', '+13201690112', 'Senior Member', '1990-09-01', '2021-08-04 11:55:45', '2021-08-04 11:55:45'),
(70, 8, 4, 'Sarai Harber', 1634646148, 'annette74@vandervort.info', '+16570328414', 'General Member', '1988-11-22', '2021-08-04 11:55:45', '2021-08-04 11:55:45'),
(73, 7, 8, 'Prof. Karelle Brakus I', 2005179436, 'hardy.sauer@daugherty.com', '+16141482377', 'Probationary Member', '2006-12-25', '2021-08-04 11:55:45', '2021-08-04 11:55:45'),
(74, 9, 12, 'Mrs. Taya Langosh', 1642451290, 'monte06@hotmail.com', '+19034820353', 'General Member', '2015-10-04', '2021-08-04 11:55:45', '2021-08-04 11:55:45'),
(77, 3, 4, 'Ellsworth Williamson V', 2021068379, 'luther04@gmail.com', '+15011050614', 'Probationary Member', '1999-07-17', '2021-08-04 11:55:45', '2021-08-04 11:55:45'),
(78, 9, 10, 'Jayme Mueller', 1886453565, 'klynch@gusikowski.com', '+14584837583', 'General Member', '2006-07-25', '2021-08-04 11:55:45', '2021-08-04 11:55:45'),
(79, 6, 3, 'Lavon Kulas', 1602543565, 'una57@corkery.biz', '+16780186072', 'Senior Member', '1993-12-29', '2021-08-04 11:55:45', '2021-08-04 11:55:45'),
(80, 5, 9, 'Prof. Adelia Conroy', 1615295804, 'urutherford@hotmail.com', '+18582550024', 'General Member', '1979-11-16', '2021-08-04 11:55:45', '2021-08-04 11:55:45'),
(83, 3, 16, 'Alexandra Effertz', 1661355245, 'nschmeler@gmail.com', '+13857372399', 'Probationary Member', '2005-06-30', '2021-08-04 11:55:45', '2021-08-04 11:55:45'),
(85, 7, 1, 'Dr. Korey Jacobson', 1934908676, 'lenny75@hotmail.com', '+12708948688', 'Probationary Member', '2015-03-11', '2021-08-04 11:55:45', '2021-08-04 11:55:45'),
(87, 2, 12, 'Virgie Cruickshank', 1571858304, 'martin.schroeder@emard.com', '+17433487514', 'Senior Member', '2011-02-03', '2021-08-04 11:55:45', '2021-08-04 11:55:45'),
(89, 4, 11, 'Prof. Louie Zboncak MD', 1988415545, 'trevor79@orn.com', '+13257179122', 'Senior Member', '1978-04-30', '2021-08-04 11:55:45', '2021-08-04 11:55:45'),
(93, 7, 2, 'Gerson Kertzmann', 1564332689, 'jayme94@gmail.com', '+16891893756', 'Senior Member', '1999-05-12', '2021-08-04 11:55:46', '2021-08-04 11:55:46'),
(94, 2, 15, 'Giovani McKenzie', 1911385726, 'ryan.enoch@yahoo.com', '+17654893316', 'General Member', '1974-09-02', '2021-08-04 11:55:46', '2021-08-04 11:55:46'),
(95, 5, 7, 'Miss Christine Weimann', 1510317055, 'claudine.glover@oberbrunner.com', '+15413676799', 'General Member', '2017-05-05', '2021-08-04 11:55:46', '2021-08-04 11:55:46'),
(96, 5, 7, 'Deanna Kovacek', 1864778185, 'rhane@ullrich.com', '+12520864953', 'General Member', '1987-06-01', '2021-08-04 11:55:46', '2021-08-04 11:55:46'),
(100, 8, 11, 'Daniella Stoltenberg', 1547510506, 'nbechtelar@gmail.com', '+12020014585', 'General Member', '2003-10-14', '2021-08-04 11:55:46', '2021-08-04 11:55:46'),
(101, 7, 9, 'Josiane Spencer', 1866978793, 'epowlowski@hotmail.com', '+15511107112', 'Probationary Member', '2010-01-02', '2021-08-04 11:55:46', '2021-08-04 11:55:46'),
(107, 9, 16, 'Mr. Floy Howell', 1917732596, 'connelly.marco@hotmail.com', '+16058215672', 'General Member', '1979-09-15', '2021-08-04 11:55:46', '2021-08-04 11:55:46'),
(117, 8, 15, 'John Pagac', 2083010899, 'adonis95@skiles.net', '+19077367071', 'Senior Member', '1975-02-05', '2021-08-04 11:55:46', '2021-08-04 11:55:46'),
(118, 1, 2, 'Miss Zella Gutmann MD', 1532223352, 'aglae16@yahoo.com', '+19314058209', 'Senior Member', '1999-04-21', '2021-08-04 11:55:46', '2021-08-04 11:55:46'),
(120, 2, 11, 'Alene Strosin', 1606955820, 'cyundt@yahoo.com', '+12564976096', 'Probationary Member', '2009-02-10', '2021-08-04 11:55:47', '2021-08-04 11:55:47'),
(125, 2, 6, 'Mrs. Drew Raynor Sr.', 1978243256, 'mckenzie.leann@gmail.com', '+16461951604', 'Senior Member', '1994-11-19', '2021-08-04 11:55:47', '2021-08-04 11:55:47'),
(126, 5, 7, 'Ima Medhurst IV', 1919935368, 'vita.cummerata@gmail.com', '+14587417145', 'Probationary Member', '1996-02-07', '2021-08-04 11:55:47', '2021-08-04 11:55:47'),
(129, 6, 2, 'Karli Kuhlman', 1890393637, 'ykilback@hotmail.com', '+13233526299', 'Probationary Member', '1994-06-29', '2021-08-04 11:55:47', '2021-08-04 11:55:47'),
(130, 9, 3, 'Kiarra Brown', 1694873424, 'desmond.hayes@gmail.com', '+14588640496', 'General Member', '2002-05-24', '2021-08-04 11:55:47', '2021-08-04 11:55:47'),
(131, 8, 15, 'Dr. Javon Halvorson', 2054428674, 'muller.justus@gmail.com', '+13868546971', 'General Member', '1989-12-14', '2021-08-04 11:55:47', '2021-08-04 11:55:47'),
(132, 2, 9, 'Mrs. Felicita Marvin II', 1607446208, 'lisette.champlin@yahoo.com', '+17273719537', 'Senior Member', '1979-09-12', '2021-08-04 11:55:47', '2021-08-04 11:55:47'),
(133, 1, 4, 'Miss Odessa Connelly', 1647760932, 'qreilly@gmail.com', '+16183063087', 'Senior Member', '1975-07-21', '2021-08-04 11:55:47', '2021-08-04 11:55:47'),
(135, 1, 2, 'Prof. Nestor Bosco III', 1586021465, 'gus93@aufderhar.com', '+13108119476', 'Probationary Member', '2010-02-01', '2021-08-04 11:55:47', '2021-08-04 11:55:47'),
(138, 6, 15, 'Dedrick Kertzmann', 1720635292, 'eriberto.bosco@hane.com', '+18585953867', 'General Member', '2019-05-10', '2021-08-04 11:55:48', '2021-08-04 11:55:48'),
(140, 8, 14, 'Mr. Geoffrey O\'Keefe', 1574617426, 'kessler.mara@gmail.com', '+12341188906', 'Senior Member', '2013-04-11', '2021-08-04 11:55:48', '2021-08-04 11:55:48'),
(144, 7, 1, 'Miss Aniya Kub II', 1733313901, 'reece.flatley@renner.net', '+16805424345', 'Senior Member', '1977-02-08', '2021-08-04 11:55:48', '2021-08-04 11:55:48'),
(146, 3, 5, 'Verna Torp', 1567047479, 'oberge@harber.com', '+18127059224', 'Senior Member', '2013-07-30', '2021-08-04 11:55:48', '2021-08-04 11:55:48'),
(147, 4, 16, 'Mr. Liam Effertz', 1818155161, 'dickinson.marcella@aufderhar.com', '+13513679547', 'Senior Member', '2008-03-30', '2021-08-04 11:55:48', '2021-08-04 11:55:48'),
(148, 4, 9, 'Shakira Mertz', 1668488928, 'pouros.kole@leuschke.info', '+12628398404', 'Probationary Member', '1986-05-30', '2021-08-04 11:55:48', '2021-08-04 11:55:48'),
(151, 9, 3, 'Rebeka Bode', 1707292741, 'delmer.huels@bednar.com', '+17572549461', 'Senior Member', '1978-10-28', '2021-08-04 11:55:48', '2021-08-04 11:55:48'),
(152, 7, 1, 'Mrs. Ernestine Johns', 1630783097, 'jbeatty@haag.com', '+17435873999', 'General Member', '1999-07-12', '2021-08-04 11:55:48', '2021-08-04 11:55:48'),
(153, 8, 10, 'Tyreek Crooks', 1599222058, 'allison64@harris.com', '+19791501493', 'General Member', '1986-06-16', '2021-08-04 11:55:48', '2021-08-04 11:55:48'),
(154, 3, 13, 'Verner Spinka', 1900235352, 'turner.elisa@beier.com', '+13109566711', 'Senior Member', '2008-11-01', '2021-08-04 11:55:48', '2021-08-04 11:55:48'),
(156, 9, 1, 'Dr. Rylee Raynor V', 1621842176, 'beier.austin@lakin.com', '+14358676874', 'General Member', '2014-10-06', '2021-08-04 11:55:48', '2021-08-04 11:55:48'),
(162, 3, 4, 'Prof. Gilda Zemlak', 1567825123, 'deanna.okeefe@yahoo.com', '+17035434500', 'General Member', '1995-03-09', '2021-08-04 11:55:49', '2021-08-04 11:55:49'),
(164, 7, 15, 'Eddie Mueller', 1659477770, 'carolina.rowe@borer.com', '+15107262472', 'Probationary Member', '1990-11-22', '2021-08-04 11:55:49', '2021-08-04 11:55:49'),
(165, 8, 12, 'Mabelle Walker', 1893750486, 'wlowe@hilpert.com', '+18322728746', 'Probationary Member', '2006-12-21', '2021-08-04 11:55:49', '2021-08-04 11:55:49'),
(167, 1, 15, 'Luis O\'Reilly', 1782644503, 'george42@kuhlman.com', '+18167988298', 'Probationary Member', '2018-01-08', '2021-08-04 11:55:49', '2021-08-04 11:55:49'),
(169, 6, 6, 'Leta Schneider I', 1832459689, 'gcremin@baumbach.net', '+19715491437', 'General Member', '2001-06-17', '2021-08-04 11:55:49', '2021-08-04 11:55:49'),
(173, 7, 2, 'Julian Harris', 2049281694, 'akeeling@gmail.com', '+18593928499', 'General Member', '1994-02-25', '2021-08-04 11:55:49', '2021-08-04 11:55:49'),
(175, 6, 12, 'Mattie Hodkiewicz', 1767125273, 'natasha.lowe@turcotte.com', '+16231558432', 'Probationary Member', '2011-10-30', '2021-08-04 11:55:49', '2021-08-04 11:55:49'),
(176, 2, 4, 'Marina Bartoletti', 1782584391, 'ostroman@gmail.com', '+19529906146', 'Probationary Member', '2010-01-27', '2021-08-04 11:55:49', '2021-08-04 11:55:49'),
(177, 2, 13, 'Rebeka Boyer', 1777343923, 'shanie.dickens@schuppe.com', '+12196264771', 'Probationary Member', '2019-12-10', '2021-08-04 11:55:49', '2021-08-04 11:55:49'),
(178, 8, 7, 'Alexa Hartmann DVM', 1880438166, 'moriah90@gmail.com', '+12139137458', 'General Member', '2011-12-05', '2021-08-04 11:55:49', '2021-08-04 11:55:49'),
(183, 1, 3, 'Dr. Ima Fadel', 1572418854, 'murray.jadon@heathcote.net', '+15710473290', 'Senior Member', '2015-08-24', '2021-08-04 11:55:49', '2021-08-04 11:55:49'),
(186, 3, 15, 'Bridie Kozey Jr.', 1516565370, 'cydney.jast@gorczany.info', '+15169995421', 'General Member', '1999-11-27', '2021-08-04 11:55:49', '2021-08-04 11:55:49'),
(189, 2, 13, 'Prof. Adah Cormier PhD', 1816968972, 'dariana70@dooley.com', '+17574517476', 'General Member', '1974-12-12', '2021-08-04 11:55:50', '2021-08-04 11:55:50'),
(190, 6, 11, 'Brant McDermott', 1927922717, 'ken00@yahoo.com', '+12527140102', 'General Member', '1981-12-17', '2021-08-04 11:55:50', '2021-08-04 11:55:50'),
(191, 1, 12, 'Myrtle Lind', 1753804864, 'hauck.lina@deckow.com', '+16077681208', 'General Member', '1994-11-16', '2021-08-04 11:55:50', '2021-08-04 11:55:50'),
(192, 8, 13, 'Miss Dolores Rath I', 1869116044, 'harber.wilfredo@schiller.com', '+12243879310', 'Probationary Member', '1971-08-18', '2021-08-04 11:55:50', '2021-08-04 11:55:50'),
(194, 7, 16, 'Lelia Kilback Jr.', 1517071493, 'dpacocha@gmail.com', '+14638257020', 'General Member', '1978-06-02', '2021-08-04 11:55:50', '2021-08-04 11:55:50'),
(195, 1, 12, 'Paula Davis', 1515254006, 'kihn.sylvan@gmail.com', '+19044502804', 'Senior Member', '1975-09-17', '2021-08-04 11:55:50', '2021-08-04 11:55:50'),
(197, 9, 15, 'Bethel Schaden', 1801400564, 'jon.kilback@crona.info', '+13252127279', 'Senior Member', '2021-03-18', '2021-08-04 11:55:50', '2021-08-04 11:55:50'),
(204, 4, 9, 'Devonte Weber', 1662344841, 'rhoppe@dach.com', '+18027178891', 'Senior Member', '2012-08-27', '2021-08-04 11:55:50', '2021-08-04 11:55:50'),
(205, 9, 4, 'Prof. Urban Watsica', 1878529368, 'zruecker@beatty.com', '+13529149201', 'Probationary Member', '2018-06-08', '2021-08-04 11:55:50', '2021-08-04 11:55:50'),
(208, 9, 12, 'Ms. Arlie Watsica', 1964015058, 'janelle.berge@yahoo.com', '+17433085579', 'Probationary Member', '1993-06-16', '2021-08-04 11:55:50', '2021-08-04 11:55:50'),
(209, 1, 8, 'Trace Dicki', 1685817433, 'srunte@yahoo.com', '+15415288363', 'Probationary Member', '1997-02-22', '2021-08-04 11:55:50', '2021-08-04 11:55:50'),
(210, 8, 9, 'Orion Ankunding', 1924051752, 'robbie24@green.com', '+16783737436', 'General Member', '2007-12-12', '2021-08-04 11:55:50', '2021-08-04 11:55:50'),
(212, 2, 1, 'Armando McDermott', 1505144566, 'melba.labadie@crooks.net', '+15622576563', 'Probationary Member', '2012-09-20', '2021-08-04 11:55:50', '2021-08-04 11:55:50'),
(214, 7, 1, 'Heber Crist', 1721759599, 'nreynolds@kub.org', '+14588532103', 'Senior Member', '2021-06-22', '2021-08-04 11:55:50', '2021-08-04 11:55:50'),
(217, 9, 6, 'Miss Nadia Gusikowski', 1979631395, 'walsh.charles@lemke.com', '+16239982389', 'Probationary Member', '1991-05-24', '2021-08-04 11:55:51', '2021-08-04 11:55:51'),
(222, 1, 9, 'Hollie Mayer I', 1720498631, 'buster16@gmail.com', '+17811078261', 'Senior Member', '1978-03-01', '2021-08-04 11:55:51', '2021-08-04 11:55:51'),
(224, 5, 7, 'Dr. Dane Steuber DDS', 1864757436, 'qbarton@simonis.com', '+15646155609', 'Senior Member', '1972-04-06', '2021-08-04 11:55:51', '2021-08-04 11:55:51'),
(226, 2, 6, 'Ahmed Heller IV', 2049270384, 'eric.mitchell@mueller.com', '+18028687187', 'Senior Member', '1972-11-27', '2021-08-04 11:55:51', '2021-08-04 11:55:51'),
(229, 5, 9, 'Alfred Weber', 1752379861, 'hamill.adolf@wyman.biz', '+15170400449', 'Senior Member', '2013-04-23', '2021-08-04 11:55:51', '2021-08-04 11:55:51'),
(230, 6, 7, 'Ms. Lenna Pollich DDS', 1675218997, 'verda.hermiston@waelchi.biz', '+14063201797', 'General Member', '2011-04-17', '2021-08-04 11:55:51', '2021-08-04 11:55:51'),
(231, 4, 11, 'Noemy Gutkowski V', 1748433742, 'rowena.johns@hotmail.com', '+15205139952', 'General Member', '2002-03-10', '2021-08-04 11:55:51', '2021-08-04 11:55:51'),
(233, 6, 9, 'Stewart Kub', 1624190341, 'lesch.mckayla@hotmail.com', '+18430484966', 'Senior Member', '1990-02-07', '2021-08-04 11:55:51', '2021-08-04 11:55:51'),
(234, 2, 4, 'Miss Verona Hansen', 1991322734, 'ned.emmerich@okuneva.com', '+18561127687', 'General Member', '1979-01-12', '2021-08-04 11:55:51', '2021-08-04 11:55:51'),
(236, 5, 11, 'Regan Bahringer', 1634453236, 'leannon.callie@lemke.com', '+18720207515', 'Senior Member', '2014-02-13', '2021-08-04 11:55:51', '2021-08-04 11:55:51'),
(238, 3, 14, 'Fatima Fritsch V', 2075534675, 'raul70@robel.com', '+14064192658', 'Senior Member', '1973-07-27', '2021-08-04 11:55:51', '2021-08-04 11:55:51'),
(241, 1, 6, 'Julien Hegmann', 1781103767, 'dedric.padberg@okeefe.biz', '+16679832283', 'General Member', '2015-04-02', '2021-08-04 11:55:51', '2021-08-04 11:55:51'),
(242, 8, 4, 'Prof. Elsa Goyette DDS', 1510443186, 'cleora.damore@mayert.org', '+15703194981', 'General Member', '2004-04-15', '2021-08-04 11:55:51', '2021-08-04 11:55:51'),
(245, 7, 1, 'Nellie Keebler II', 1552512046, 'uhammes@yahoo.com', '+13084437341', 'Senior Member', '2005-10-16', '2021-08-04 11:55:52', '2021-08-04 11:55:52'),
(248, 3, 10, 'Manuela Zulauf', 1881179640, 'ngoyette@schoen.com', '+12203781192', 'Senior Member', '2017-06-03', '2021-08-04 11:55:52', '2021-08-04 11:55:52'),
(252, 3, 16, 'Baron Breitenberg MD', 1699712304, 'florian86@yahoo.com', '+16801128876', 'Probationary Member', '2004-12-09', '2021-08-04 11:55:52', '2021-08-04 11:55:52'),
(253, 8, 1, 'Alia Batz', 2029247370, 'zula76@legros.com', '+19516446484', 'Senior Member', '1987-08-15', '2021-08-04 11:55:52', '2021-08-04 11:55:52'),
(254, 4, 16, 'Dr. Jordi Batz', 1651717970, 'skiles.daron@robel.com', '+16783543998', 'Probationary Member', '2012-03-11', '2021-08-04 11:55:52', '2021-08-04 11:55:52'),
(256, 5, 14, 'Drake Harvey', 1710242556, 'triston46@welch.com', '+17175353465', 'Senior Member', '2007-04-27', '2021-08-04 11:55:52', '2021-08-04 11:55:52'),
(262, 7, 2, 'Dr. Milton McLaughlin V', 1609575798, 'mccullough.keara@paucek.org', '+17014131850', 'Senior Member', '2013-05-12', '2021-08-04 11:55:52', '2021-08-04 11:55:52'),
(263, 4, 6, 'Mrs. Willa Howell', 1846616833, 'bud00@yahoo.com', '+18136962423', 'General Member', '1988-01-07', '2021-08-04 11:55:52', '2021-08-04 11:55:52'),
(265, 2, 13, 'Lisa Mills', 1706659916, 'nya.wuckert@herman.info', '+19109480044', 'Senior Member', '2009-10-20', '2021-08-04 11:55:52', '2021-08-04 11:55:52'),
(266, 5, 7, 'Prof. Jacky Jerde V', 1723559187, 'xemmerich@gmail.com', '+15203647514', 'General Member', '1993-09-30', '2021-08-04 11:55:52', '2021-08-04 11:55:52'),
(268, 6, 11, 'Miss Chloe Douglas MD', 1806946429, 'chaim.lakin@donnelly.com', '+14436192206', 'General Member', '1996-10-26', '2021-08-04 11:55:52', '2021-08-04 11:55:52'),
(269, 6, 14, 'Miss Eugenia VonRueden MD', 1639905139, 'moberbrunner@gmail.com', '+15592232524', 'Senior Member', '1973-05-22', '2021-08-04 11:55:52', '2021-08-04 11:55:52'),
(272, 8, 9, 'Granville Kshlerin', 1976448492, 'tom95@hickle.com', '+16805141719', 'General Member', '1974-08-26', '2021-08-04 11:55:53', '2021-08-04 11:55:53'),
(273, 9, 14, 'Wyatt Gottlieb', 1997686382, 'zmarvin@gmail.com', '+12016623806', 'Senior Member', '1981-04-10', '2021-08-04 11:55:53', '2021-08-04 11:55:53'),
(274, 9, 16, 'Kevin Rau', 2034864243, 'alison.rau@oconner.com', '+14584738191', 'Probationary Member', '1977-02-01', '2021-08-04 11:55:53', '2021-08-04 11:55:53'),
(275, 1, 6, 'Ms. Cindy Homenick I', 1740813694, 'alaina.ritchie@gmail.com', '+13343235361', 'Senior Member', '2020-12-04', '2021-08-04 11:55:53', '2021-08-04 11:55:53'),
(279, 7, 10, 'Kody Rohan', 1910814262, 'graciela.sipes@gmail.com', '+17089370438', 'General Member', '1970-10-03', '2021-08-04 11:55:53', '2021-08-04 11:55:53'),
(282, 6, 2, 'Madonna Macejkovic', 1713990428, 'fconnelly@gmail.com', '+13461160055', 'Probationary Member', '2017-04-12', '2021-08-04 11:55:53', '2021-08-04 11:55:53'),
(284, 6, 2, 'Ms. Meghan Kilback', 1522523406, 'timmothy77@yahoo.com', '+16092985512', 'Probationary Member', '1985-11-17', '2021-08-04 11:55:53', '2021-08-04 11:55:53'),
(287, 6, 9, 'Ms. Sophia Lehner', 1822812289, 'ollie.towne@yahoo.com', '+16469695279', 'Probationary Member', '2002-06-18', '2021-08-04 11:55:53', '2021-08-04 11:55:53'),
(289, 9, 15, 'Cassidy Feil', 1666505398, 'tking@schiller.com', '+14584329346', 'Probationary Member', '1991-06-22', '2021-08-04 11:55:53', '2021-08-04 11:55:53'),
(291, 8, 11, 'Jade Senger PhD', 2096071258, 'smitham.aurelie@gmail.com', '+18782976711', 'Senior Member', '1994-04-14', '2021-08-04 11:55:54', '2021-08-04 11:55:54'),
(297, 4, 14, 'Orville Krajcik', 1663065296, 'karli74@senger.com', '+12704036346', 'Probationary Member', '1983-12-01', '2021-08-04 11:55:54', '2021-08-04 11:55:54'),
(298, 7, 7, 'Jonathon Quigley', 2040065511, 'madie.monahan@barton.net', '+16788736910', 'Senior Member', '2002-04-18', '2021-08-04 11:55:54', '2021-08-04 11:55:54'),
(300, 7, 12, 'Carole Lind', 1941753378, 'prince.bauch@yahoo.com', '+15046030988', 'General Member', '1985-11-22', '2021-08-04 11:55:54', '2021-08-04 11:55:54'),
(302, 1, 11, 'Dr. Adelia Aufderhar', 1957209743, 'bailee.green@roob.info', '+13204850011', 'General Member', '2003-08-10', '2021-08-04 11:55:54', '2021-08-04 11:55:54'),
(304, 3, 11, 'Nicola Hammes', 1805726313, 'mclaughlin.jalyn@gmail.com', '+14692078832', 'Probationary Member', '1977-12-22', '2021-08-04 11:55:54', '2021-08-04 11:55:54'),
(306, 1, 13, 'Mrs. Sandrine Stokes', 1897300665, 'mhickle@kihn.net', '+12137911082', 'General Member', '2014-01-08', '2021-08-04 11:55:54', '2021-08-04 11:55:54'),
(308, 7, 9, 'Maida Sanford', 1565377571, 'pablo29@gmail.com', '+15304537580', 'Probationary Member', '1980-09-19', '2021-08-04 11:55:54', '2021-08-04 11:55:54'),
(309, 8, 12, 'Prof. Annie O\'Conner II', 1920291491, 'lhickle@gmail.com', '+15867554657', 'General Member', '1978-06-11', '2021-08-04 11:55:54', '2021-08-04 11:55:54'),
(311, 2, 6, 'Mr. Joan Hahn', 2059288429, 'gulgowski.jaunita@goyette.com', '+17045020307', 'Probationary Member', '2019-05-03', '2021-08-04 11:55:54', '2021-08-04 11:55:54'),
(313, 6, 4, 'Orion Ziemann', 1740575592, 'colton22@hotmail.com', '+17243942800', 'Probationary Member', '2005-06-01', '2021-08-04 11:55:54', '2021-08-04 11:55:54'),
(314, 8, 16, 'Maegan Sporer Jr.', 2012099864, 'bauch.manuel@gulgowski.com', '+12064649524', 'General Member', '2006-02-24', '2021-08-04 11:55:55', '2021-08-04 11:55:55'),
(316, 7, 9, 'Brionna Abernathy II', 1819604480, 'lempi.hand@hotmail.com', '+13107760907', 'General Member', '2013-08-07', '2021-08-04 11:55:55', '2021-08-04 11:55:55'),
(317, 6, 11, 'Dr. Sarai Flatley', 2032410606, 'rmertz@murphy.info', '+19287148388', 'General Member', '1986-07-09', '2021-08-04 11:55:55', '2021-08-04 11:55:55'),
(319, 2, 8, 'Rosalee Quitzon', 1871389686, 'jstehr@gmail.com', '+13647137442', 'Senior Member', '1970-05-03', '2021-08-04 11:55:55', '2021-08-04 11:55:55'),
(321, 5, 6, 'Brown Heaney', 1716485630, 'bradly.crona@yahoo.com', '+12287471018', 'Senior Member', '2015-03-26', '2021-08-04 11:55:55', '2021-08-04 11:55:55'),
(325, 6, 12, 'Mrs. Maegan Bartell', 1761219654, 'aglae90@runolfsson.biz', '+13413733812', 'Senior Member', '2020-03-14', '2021-08-04 11:55:55', '2021-08-04 11:55:55'),
(327, 3, 7, 'Norma Raynor', 1906675652, 'ifritsch@abshire.net', '+13070745543', 'Senior Member', '1997-06-09', '2021-08-04 11:55:55', '2021-08-04 11:55:55'),
(329, 1, 11, 'Dawson Zemlak', 2085665927, 'sylvan17@yahoo.com', '+12486966808', 'Senior Member', '1979-10-15', '2021-08-04 11:55:55', '2021-08-04 11:55:55'),
(330, 2, 9, 'Milo Gleichner I', 1616389973, 'vgrimes@hotmail.com', '+18022808551', 'Probationary Member', '1975-09-01', '2021-08-04 11:55:55', '2021-08-04 11:55:55'),
(331, 1, 3, 'Elvis Heaney', 1809702883, 'parmstrong@marks.biz', '+19295254541', 'Probationary Member', '2007-09-12', '2021-08-04 11:55:55', '2021-08-04 11:55:55'),
(332, 1, 16, 'Spencer Gottlieb', 1657224927, 'nathan55@gmail.com', '+12390914360', 'Senior Member', '1991-01-01', '2021-08-04 11:55:55', '2021-08-04 11:55:55'),
(333, 2, 5, 'Duncan Bashirian I', 1753379868, 'emanuel.goldner@pagac.com', '+19527807983', 'Probationary Member', '2016-10-01', '2021-08-04 11:55:55', '2021-08-04 11:55:55'),
(334, 7, 13, 'Miss Ellie Schmeler I', 1765383541, 'destiny.kilback@hotmail.com', '+18505653500', 'General Member', '1994-05-17', '2021-08-04 11:55:55', '2021-08-04 11:55:55'),
(337, 1, 15, 'Mrs. Era Jacobson I', 2036706709, 'pbeier@mante.com', '+15627802668', 'Probationary Member', '1992-05-11', '2021-08-04 11:55:55', '2021-08-04 11:55:55'),
(338, 5, 7, 'Ms. Lora McClure', 2026286322, 'rosalind.lesch@connelly.net', '+19711131819', 'Senior Member', '2014-06-08', '2021-08-04 11:55:55', '2021-08-04 11:55:55'),
(339, 3, 4, 'Gus Braun', 1852895678, 'fcorkery@schneider.com', '+16803849507', 'General Member', '1983-04-24', '2021-08-04 11:55:55', '2021-08-04 11:55:55'),
(340, 5, 13, 'Ike Walsh', 2078139044, 'pbode@hotmail.com', '+12819448323', 'General Member', '1977-05-06', '2021-08-04 11:55:55', '2021-08-04 11:55:55'),
(342, 9, 7, 'Mrs. Mckayla Koch Sr.', 1611123607, 'odie.oconner@hotmail.com', '+14584940715', 'Probationary Member', '1970-07-18', '2021-08-04 11:55:56', '2021-08-04 11:55:56'),
(343, 1, 11, 'Owen Williamson', 1756917261, 'annabell25@gislason.com', '+17127640109', 'Senior Member', '2005-04-27', '2021-08-04 11:55:56', '2021-08-04 11:55:56'),
(345, 3, 8, 'Dr. Holden Fadel MD', 1672442081, 'torrey12@yahoo.com', '+19896636449', 'Probationary Member', '2018-02-23', '2021-08-04 11:55:56', '2021-08-04 11:55:56'),
(347, 6, 6, 'Kenyatta Yundt Jr.', 1522499507, 'janae41@hotmail.com', '+19737376762', 'General Member', '1991-06-01', '2021-08-04 11:55:56', '2021-08-04 11:55:56'),
(348, 1, 10, 'Elva Moore IV', 1629639645, 'valentina02@gmail.com', '+19371719295', 'General Member', '1991-03-31', '2021-08-04 11:55:56', '2021-08-04 11:55:56'),
(350, 1, 1, 'Hershel Dietrich DVM', 1566034376, 'cmclaughlin@bauch.org', '+18485232908', 'General Member', '2012-08-09', '2021-08-04 11:55:56', '2021-08-04 11:55:56'),
(352, 8, 7, 'Elenor Rosenbaum', 1766457973, 'psimonis@hotmail.com', '+19102926077', 'General Member', '1993-05-10', '2021-08-04 11:55:56', '2021-08-04 11:55:56'),
(353, 9, 5, 'Favian Brown', 2069879266, 'awillms@quitzon.com', '+19298594784', 'Probationary Member', '1978-06-22', '2021-08-04 11:55:56', '2021-08-04 11:55:56'),
(354, 3, 14, 'Grover Lebsack', 1900628892, 'torrey.gleichner@hotmail.com', '+16038023370', 'General Member', '2015-09-25', '2021-08-04 11:55:56', '2021-08-04 11:55:56'),
(355, 4, 2, 'Caitlyn Bergstrom', 1741114095, 'julian67@ernser.com', '+12318866793', 'Probationary Member', '1990-07-21', '2021-08-04 11:55:56', '2021-08-04 11:55:56'),
(357, 7, 9, 'Nicholaus Homenick DVM', 1651815605, 'zkessler@gmail.com', '+19086026541', 'Probationary Member', '1984-11-30', '2021-08-04 11:55:56', '2021-08-04 11:55:56'),
(358, 8, 12, 'Prof. Hettie Lubowitz', 1569116749, 'eblick@hotmail.com', '+12392543019', 'General Member', '2008-05-13', '2021-08-04 11:55:56', '2021-08-04 11:55:56'),
(361, 1, 14, 'Cynthia Crona Sr.', 1662514821, 'jody.schroeder@balistreri.net', '+18586256587', 'Senior Member', '2000-09-17', '2021-08-04 11:55:56', '2021-08-04 11:55:56'),
(366, 2, 9, 'Stanley Harber', 1777558087, 'brando12@gmail.com', '+19843397739', 'Probationary Member', '1971-12-05', '2021-08-04 11:55:57', '2021-08-04 11:55:57'),
(367, 3, 13, 'Norbert Mraz', 2084858810, 'abernathy.catherine@gmail.com', '+15596792839', 'General Member', '2017-01-13', '2021-08-04 11:55:57', '2021-08-04 11:55:57'),
(368, 6, 9, 'Kariane Cassin', 2036387726, 'amiya90@simonis.com', '+19074950504', 'General Member', '2012-08-20', '2021-08-04 11:55:57', '2021-08-04 11:55:57'),
(369, 5, 4, 'Mertie Paucek', 1632701798, 'robbie36@auer.com', '+18383393758', 'Senior Member', '1970-07-19', '2021-08-04 11:55:57', '2021-08-04 11:55:57'),
(370, 2, 8, 'Adaline Fadel', 1650029850, 'clemens61@gorczany.com', '+16015983911', 'Senior Member', '1980-01-15', '2021-08-04 11:55:57', '2021-08-04 11:55:57'),
(372, 4, 5, 'Ignatius Streich', 1919226629, 'ubaldo71@yahoo.com', '+16788531647', 'General Member', '1995-02-17', '2021-08-04 11:55:57', '2021-08-04 11:55:57'),
(374, 6, 9, 'Prof. Prudence Nienow', 1539651304, 'oren.stroman@yahoo.com', '+18326028903', 'Senior Member', '1992-06-20', '2021-08-04 11:55:57', '2021-08-04 11:55:57'),
(376, 5, 15, 'Kevon Ortiz', 1949703226, 'lsmith@braun.info', '+12238372726', 'Probationary Member', '2002-02-07', '2021-08-04 11:55:57', '2021-08-04 11:55:57'),
(377, 1, 15, 'Miss Samanta Crooks Jr.', 1579652930, 'aflatley@vandervort.com', '+19785973713', 'General Member', '2007-10-14', '2021-08-04 11:55:57', '2021-08-04 11:55:57'),
(378, 5, 6, 'Isidro Mills', 1648505834, 'kendrick42@gmail.com', '+19735746060', 'Probationary Member', '2009-12-16', '2021-08-04 11:55:57', '2021-08-04 11:55:57'),
(380, 2, 15, 'Ashly Wolff DVM', 2050959618, 'harrison86@gmail.com', '+15859195028', 'Probationary Member', '1993-06-11', '2021-08-04 11:55:57', '2021-08-04 11:55:57'),
(386, 5, 16, 'Durward Lakin', 2058618204, 'joseph.pfeffer@donnelly.info', '+18311174354', 'Probationary Member', '1990-12-03', '2021-08-04 11:55:58', '2021-08-04 11:55:58'),
(389, 1, 8, 'Garry Denesik', 1937748349, 'dayana26@yahoo.com', '+18286665470', 'Probationary Member', '2008-11-25', '2021-08-04 11:55:58', '2021-08-04 11:55:58'),
(390, 3, 6, 'Aubree Hansen Jr.', 2000929260, 'kshlerin.torrey@yahoo.com', '+13366774721', 'Probationary Member', '1975-12-25', '2021-08-04 11:55:58', '2021-08-04 11:55:58'),
(392, 3, 8, 'Kaleb Muller', 1685263529, 'willms.carol@brekke.com', '+13805135975', 'Probationary Member', '2014-01-01', '2021-08-04 11:55:58', '2021-08-04 11:55:58'),
(393, 2, 10, 'Jeromy Volkman', 1869822970, 'tianna79@hotmail.com', '+14173271688', 'General Member', '1987-02-06', '2021-08-04 11:55:58', '2021-08-04 11:55:58'),
(394, 7, 2, 'Camila Dietrich', 1505307414, 'eichmann.keyon@harvey.com', '+13461168861', 'Senior Member', '1971-03-12', '2021-08-04 11:55:58', '2021-08-04 11:55:58'),
(395, 3, 4, 'Dr. Elroy Baumbach MD', 1888537554, 'austyn.kuhic@kiehn.com', '+12812064497', 'General Member', '2014-06-22', '2021-08-04 11:55:58', '2021-08-04 11:55:58'),
(396, 2, 11, 'Willy Carter', 1535785626, 'cyrus48@dickens.com', '+15752111232', 'General Member', '1974-03-26', '2021-08-04 11:55:58', '2021-08-04 11:55:58'),
(400, 8, 1, 'Chesley Moore', 1698205707, 'adrianna.rice@ward.com', '+15318594603', 'Probationary Member', '2013-08-15', '2021-08-04 11:55:58', '2021-08-04 11:55:58'),
(402, 6, 2, 'Theron Mertz', 1537016694, 'kautzer.mason@osinski.net', '+16813149242', 'Senior Member', '1987-03-21', '2021-08-04 11:55:58', '2021-08-04 11:55:58'),
(403, 5, 10, 'Prof. Hilton Nolan', 1640207083, 'emarks@yahoo.com', '+12204124267', 'General Member', '2002-12-08', '2021-08-04 11:55:58', '2021-08-04 11:55:58'),
(405, 3, 1, 'Damien Schaden', 2026754767, 'samir13@hotmail.com', '+17819105702', 'Probationary Member', '1979-04-08', '2021-08-04 11:55:59', '2021-08-04 11:55:59'),
(406, 8, 5, 'Dr. Raheem Mann III', 1584314264, 'lula.christiansen@deckow.com', '+17144766720', 'General Member', '1974-03-30', '2021-08-04 11:55:59', '2021-08-04 11:55:59'),
(407, 5, 6, 'Dr. Enola Paucek', 1505589192, 'schumm.maximo@mccullough.org', '+15714617612', 'Probationary Member', '1972-07-12', '2021-08-04 11:55:59', '2021-08-04 11:55:59'),
(408, 5, 7, 'Euna Daniel', 1874028228, 'nikolaus.joanny@gmail.com', '+15086987326', 'Probationary Member', '2000-07-16', '2021-08-04 11:55:59', '2021-08-04 11:55:59'),
(409, 8, 13, 'Jeffry Dicki', 2062021918, 'benton.monahan@yahoo.com', '+14233363380', 'Senior Member', '2006-04-07', '2021-08-04 11:55:59', '2021-08-04 11:55:59'),
(410, 8, 2, 'Liliane Cummerata DVM', 1751074164, 'mitchell.swift@yahoo.com', '+17144515089', 'Senior Member', '1975-04-20', '2021-08-04 11:55:59', '2021-08-04 11:55:59'),
(411, 9, 8, 'Taylor Reinger', 1719469755, 'darby.king@moen.com', '+13462106367', 'General Member', '2019-12-05', '2021-08-04 11:55:59', '2021-08-04 11:55:59'),
(412, 6, 10, 'Marjorie Kshlerin', 1872981581, 'russel.keebler@rau.com', '+14132527860', 'Probationary Member', '1989-01-27', '2021-08-04 11:55:59', '2021-08-04 11:55:59'),
(413, 2, 5, 'Darlene Rippin MD', 1505837805, 'ruecker.hanna@gmail.com', '+16264923386', 'General Member', '1993-05-01', '2021-08-04 11:55:59', '2021-08-04 11:55:59'),
(414, 7, 10, 'Ana Runolfsdottir', 1709131795, 'umorissette@lindgren.net', '+14582676941', 'Senior Member', '2000-06-09', '2021-08-04 11:55:59', '2021-08-04 11:55:59'),
(416, 8, 2, 'Jamar McKenzie DDS', 1561260882, 'ymarquardt@bergnaum.info', '+15202909114', 'Probationary Member', '2021-05-31', '2021-08-04 11:55:59', '2021-08-04 11:55:59'),
(417, 2, 2, 'Ronny Simonis DDS', 1847352890, 'laura.ratke@gmail.com', '+12344130840', 'Senior Member', '2017-07-31', '2021-08-04 11:55:59', '2021-08-04 11:55:59'),
(418, 5, 9, 'Jeanette Shields', 2036060385, 'mdeckow@hotmail.com', '+19418566810', 'General Member', '2005-10-05', '2021-08-04 11:55:59', '2021-08-04 11:55:59'),
(419, 7, 4, 'Hadley Welch', 1719338041, 'gschmitt@kertzmann.com', '+13600948659', 'Probationary Member', '2006-11-11', '2021-08-04 11:55:59', '2021-08-04 11:55:59'),
(420, 6, 5, 'Bud Halvorson', 2087662147, 'augustus.renner@toy.com', '+15866030065', 'Probationary Member', '2003-10-27', '2021-08-04 11:55:59', '2021-08-04 11:55:59'),
(422, 7, 16, 'Allen Steuber', 1732167480, 'rsawayn@greenfelder.net', '+13306964420', 'General Member', '1990-12-15', '2021-08-04 11:55:59', '2021-08-04 11:55:59'),
(425, 6, 11, 'Mike Kshlerin', 1716573048, 'patience08@rogahn.com', '+19015669288', 'Senior Member', '2001-11-15', '2021-08-04 11:55:59', '2021-08-04 11:55:59'),
(426, 4, 1, 'Brenna Weimann', 1612420616, 'fahey.amalia@gmail.com', '+17406979590', 'General Member', '1985-10-16', '2021-08-04 11:55:59', '2021-08-04 11:55:59'),
(427, 8, 2, 'Mrs. Emmy Dibbert', 1699048163, 'cronin.nash@hagenes.info', '+14194008830', 'Senior Member', '2016-12-28', '2021-08-04 11:55:59', '2021-08-04 11:55:59'),
(430, 9, 5, 'Ned Kuphal', 1723831922, 'aliyah82@lindgren.com', '+14451372894', 'General Member', '2011-03-09', '2021-08-04 11:56:00', '2021-08-04 11:56:00'),
(435, 3, 13, 'Dr. Elisha McClure', 1954341469, 'zadams@gmail.com', '+18781818021', 'Senior Member', '1976-03-12', '2021-08-04 11:56:00', '2021-08-04 11:56:00'),
(436, 3, 7, 'Krystel Ankunding II', 2073814528, 'oheller@ondricka.info', '+14248285958', 'General Member', '2002-06-26', '2021-08-04 11:56:00', '2021-08-04 11:56:00'),
(439, 3, 16, 'Romaine Schuppe PhD', 1750306331, 'clinton95@hotmail.com', '+14140354060', 'Senior Member', '1979-12-19', '2021-08-04 11:56:00', '2021-08-04 11:56:00'),
(443, 5, 7, 'Jamie Cronin', 2014869070, 'salvatore.nienow@gmail.com', '+14589564081', 'Probationary Member', '1972-05-17', '2021-08-04 11:56:00', '2021-08-04 11:56:00'),
(444, 8, 7, 'Kurtis Stiedemann', 1958897858, 'wmitchell@towne.com', '+16570697884', 'General Member', '1999-03-27', '2021-08-04 11:56:00', '2021-08-04 11:56:00'),
(445, 1, 4, 'Ms. Vada Bergnaum', 1732944111, 'rollin.bahringer@barton.com', '+12052212127', 'Senior Member', '2001-02-17', '2021-08-04 11:56:00', '2021-08-04 11:56:00'),
(447, 7, 5, 'Mrs. Carmella Jacobi', 1557350781, 'ursula.abernathy@hegmann.com', '+14245124700', 'General Member', '2004-07-24', '2021-08-04 11:56:00', '2021-08-04 11:56:00'),
(449, 9, 7, 'Adriana Botsford', 1772551154, 'znolan@boyer.com', '+19362639183', 'General Member', '1979-11-23', '2021-08-04 11:56:00', '2021-08-04 11:56:00'),
(451, 6, 10, 'Izabella Friesen', 1703775259, 'cole40@hudson.info', '+12810878853', 'Senior Member', '1980-12-09', '2021-08-04 11:56:00', '2021-08-04 11:56:00'),
(452, 4, 15, 'Dr. Cary Harvey', 1705520934, 'tnader@beer.net', '+13126784981', 'General Member', '2014-11-22', '2021-08-04 11:56:01', '2021-08-04 11:56:01'),
(455, 8, 11, 'Paris Terry', 2043099942, 'xarmstrong@hotmail.com', '+19840612172', 'General Member', '1973-03-17', '2021-08-04 11:56:01', '2021-08-04 11:56:01'),
(460, 2, 12, 'Dr. Mustafa Skiles IV', 1517629194, 'zbahringer@wolf.org', '+12011438610', 'Probationary Member', '1984-12-22', '2021-08-04 11:56:01', '2021-08-04 11:56:01'),
(461, 7, 15, 'Mr. Cicero Bins', 1870977666, 'becker.vladimir@gmail.com', '+16404203575', 'Senior Member', '2021-05-22', '2021-08-04 11:56:01', '2021-08-04 11:56:01'),
(462, 8, 4, 'Antonia Hoppe', 2067974806, 'klocko.chaz@hotmail.com', '+13854534445', 'General Member', '1977-10-17', '2021-08-04 11:56:01', '2021-08-04 11:56:01'),
(464, 8, 1, 'Mr. Rafael Sawayn MD', 2095766498, 'judd.predovic@yahoo.com', '+19165009670', 'General Member', '1995-04-12', '2021-08-04 11:56:01', '2021-08-04 11:56:01'),
(466, 5, 12, 'Hector Casper', 1769988293, 'znitzsche@beatty.com', '+14241945831', 'Senior Member', '1986-12-13', '2021-08-04 11:56:01', '2021-08-04 11:56:01'),
(470, 9, 12, 'Faustino Schmidt', 1712926845, 'leuschke.jaren@kreiger.com', '+18089100450', 'Probationary Member', '1985-11-11', '2021-08-04 11:56:01', '2021-08-04 11:56:01'),
(472, 9, 5, 'Mr. Adam Botsford', 1956174336, 'eunice45@wehner.com', '+17435153572', 'Senior Member', '1985-08-13', '2021-08-04 11:56:01', '2021-08-04 11:56:01'),
(473, 8, 11, 'Jamar Harris V', 1743957479, 'parker.paxton@price.com', '+19344156785', 'Senior Member', '2012-07-24', '2021-08-04 11:56:01', '2021-08-04 11:56:01'),
(475, 8, 8, 'Miss Kathleen Hermann', 1552105882, 'ymante@hotmail.com', '+16781857659', 'Probationary Member', '2003-03-30', '2021-08-04 11:56:01', '2021-08-04 11:56:01'),
(478, 5, 12, 'Mrs. Kayli Boyer Jr.', 1556204409, 'balistreri.daphney@gmail.com', '+15202434580', 'Senior Member', '2013-12-15', '2021-08-04 11:56:01', '2021-08-04 11:56:01'),
(480, 5, 2, 'Shana Kerluke', 1947913592, 'auer.rebeca@hotmail.com', '+13058311052', 'General Member', '2002-05-11', '2021-08-04 11:56:01', '2021-08-04 11:56:01'),
(481, 7, 15, 'Mr. Elwin Brekke DVM', 2081673608, 'greenfelder.doris@predovic.com', '+18721745892', 'General Member', '2009-11-20', '2021-08-04 11:56:02', '2021-08-04 11:56:02'),
(482, 4, 9, 'Montana Vandervort', 1550955289, 'swift.amber@yahoo.com', '+15095043585', 'Senior Member', '2012-10-19', '2021-08-04 11:56:02', '2021-08-04 11:56:02'),
(483, 8, 5, 'Idell Mohr', 1884604595, 'mohr.landen@kuvalis.info', '+15209350948', 'Senior Member', '1977-01-05', '2021-08-04 11:56:02', '2021-08-04 11:56:02'),
(484, 2, 10, 'Dr. Anastacio Strosin Jr.', 1746528709, 'dannie95@bruen.org', '+13232213281', 'Probationary Member', '1971-11-17', '2021-08-04 11:56:02', '2021-08-04 11:56:02'),
(485, 9, 16, 'Mr. Jesse Kulas', 1544822388, 'moen.nyasia@dibbert.info', '+19033845747', 'Senior Member', '1980-07-24', '2021-08-04 11:56:02', '2021-08-04 11:56:02'),
(487, 1, 2, 'Trey Rempel', 1970433153, 'ebrekke@yahoo.com', '+14013136514', 'General Member', '1976-10-08', '2021-08-04 11:56:02', '2021-08-04 11:56:02'),
(492, 5, 4, 'Ms. Sylvia Mohr MD', 1692499235, 'quitzon.terrill@yahoo.com', '+16076260846', 'General Member', '1982-01-03', '2021-08-04 11:56:02', '2021-08-04 11:56:02'),
(494, 4, 5, 'Miss America Homenick IV', 1502673000, 'lmoore@ryan.info', '+16283343495', 'General Member', '1993-02-26', '2021-08-04 11:56:02', '2021-08-04 11:56:02'),
(500, 7, 7, 'Merle Gerhold', 2043094193, 'alexandro.shanahan@gmail.com', '+18455738941', 'Probationary Member', '2008-06-10', '2021-08-04 11:56:02', '2021-08-04 11:56:02'),
(502, 7, 8, 'Brandon Tillman', 2082251538, 'gerlach.shaylee@gleason.info', '+15175217161', 'Senior Member', '1987-09-30', '2021-08-04 11:56:02', '2021-08-04 11:56:02'),
(529, 5, 1, 'Magdalena Mosciski', 1708600103, 'okey04@schowalter.info', '+12313350133', 'Probationary Member', '2018-12-07', '2021-08-17 09:50:25', '2021-08-17 09:50:25'),
(530, 2, 14, 'Prof. Tatum Gerlach', 1520084420, 'hand.phoebe@gmail.com', '+14805698252', 'General Member', '2004-07-31', '2021-08-17 09:50:25', '2021-08-17 09:50:25'),
(531, 4, 10, 'Francis Lebsack III', 1931957514, 'icartwright@kozey.net', '+16300330405', 'General Member', '1973-05-21', '2021-08-17 09:50:25', '2021-08-17 09:50:25'),
(532, 2, 8, 'Janiya Shields', 1594509630, 'thane@gmail.com', '+16672140926', 'Senior Member', '1992-08-14', '2021-08-17 09:50:25', '2021-08-17 09:50:25'),
(533, 7, 8, 'Mr. Rodger Effertz IV', 2013469326, 'miller.tracey@ullrich.com', '+12144625622', 'Senior Member', '2006-07-04', '2021-08-17 09:50:25', '2021-08-17 09:50:25'),
(534, 1, 3, 'Quinten Turcotte', 1750676381, 'sheldon.schimmel@yahoo.com', '+19863865006', 'General Member', '1975-11-14', '2021-08-17 09:50:25', '2021-08-17 09:50:25'),
(535, 6, 4, 'Marcus Hessel', 1561803142, 'breitenberg.seamus@boyer.com', '+18500633840', 'General Member', '2008-12-21', '2021-08-17 09:50:26', '2021-08-17 09:50:26'),
(536, 5, 10, 'Deion Walsh', 1556579545, 'chandler.fadel@kautzer.info', '+13197880334', 'Junior Member', '2009-02-01', '2021-08-17 09:50:26', '2021-08-17 09:50:26'),
(537, 5, 9, 'Dax Gerhold', 1511485321, 'johan.dicki@gmail.com', '+15138895506', 'Junior Member', '1971-11-12', '2021-08-17 09:50:26', '2021-08-17 09:50:26'),
(538, 9, 2, 'Victor Johnson', 1622686185, 'aolson@gmail.com', '+18153962716', 'Junior Member', '1995-05-30', '2021-08-17 09:50:26', '2021-08-17 09:50:26'),
(539, 4, 1, 'Bert Bogan', 1951831695, 'dicki.letitia@kiehn.biz', '+19089892366', 'Senior Member', '1970-07-01', '2021-08-17 09:50:26', '2021-08-17 09:50:26'),
(540, 6, 16, 'Hyman Bergnaum DVM', 1662095132, 'israel.zieme@wyman.info', '+12058842794', 'Junior Member', '1975-01-02', '2021-08-17 09:50:26', '2021-08-17 09:50:26'),
(541, 3, 1, 'Tre Powlowski', 1753903647, 'eudora76@hotmail.com', '+14406323224', 'Senior Member', '1970-02-25', '2021-08-17 09:50:26', '2021-08-17 09:50:26'),
(542, 4, 6, 'Delores Altenwerth Sr.', 1806981263, 'franecki.sylvester@hotmail.com', '+14320191550', 'Junior Member', '1971-12-09', '2021-08-17 09:50:26', '2021-08-17 09:50:26'),
(543, 7, 14, 'Darrell Jones', 1800892628, 'ohoeger@gmail.com', '+13133535805', 'General Member', '1984-01-05', '2021-08-17 09:50:26', '2021-08-17 09:50:26'),
(544, 5, 8, 'Merl Fay', 1746675673, 'west.jamir@nienow.com', '+12205663195', 'General Member', '1993-05-31', '2021-08-17 09:50:26', '2021-08-17 09:50:26'),
(545, 4, 10, 'Yasmeen Ankunding', 1966126891, 'goyette.lenna@yahoo.com', '+17543279045', 'Senior Member', '2000-06-19', '2021-08-17 09:50:26', '2021-08-17 09:50:26'),
(546, 7, 14, 'Mrs. Aileen McDermott III', 1517900523, 'nkihn@harber.biz', '+16625466005', 'Probationary Member', '2011-12-01', '2021-08-17 09:50:26', '2021-08-17 09:50:26'),
(547, 6, 10, 'Dr. Unique Torp', 1566035044, 'acarter@oconnell.com', '+15805167213', 'Junior Member', '1987-06-26', '2021-08-17 09:50:26', '2021-08-17 09:50:26'),
(548, 3, 2, 'Eliane Halvorson', 2017040702, 'parisian.ava@yahoo.com', '+15860989456', 'General Member', '1977-03-06', '2021-08-17 09:50:26', '2021-08-17 09:50:26'),
(549, 9, 7, 'Mrs. Adela McDermott DVM', 1593625142, 'palma26@gmail.com', '+14320117065', 'Senior Member', '1997-03-25', '2021-08-17 09:50:26', '2021-08-17 09:50:26'),
(550, 6, 3, 'Ariane Hintz MD', 1686584719, 'murray.eusebio@lind.com', '+18069228482', 'Senior Member', '2002-03-03', '2021-08-17 09:50:26', '2021-08-17 09:50:26'),
(551, 9, 16, 'Adam Hansen', 2072811657, 'caleigh.glover@vonrueden.biz', '+19188769531', 'Senior Member', '1997-05-26', '2021-08-17 09:50:26', '2021-08-17 09:50:26'),
(552, 7, 3, 'Michale Haag', 1949312392, 'jermain.swift@ledner.com', '+16506250767', 'General Member', '1975-11-11', '2021-08-17 09:50:26', '2021-08-17 09:50:26'),
(553, 7, 11, 'Hanna Stroman', 1808879316, 'irving.smitham@reynolds.org', '+16123390107', 'General Member', '2021-07-25', '2021-08-17 09:50:26', '2021-08-17 09:50:26'),
(554, 7, 16, 'Dr. Maudie Smith', 1631629436, 'wintheiser.kennedi@yahoo.com', '+18389092205', 'Senior Member', '2020-11-07', '2021-08-17 09:50:26', '2021-08-17 09:50:26'),
(555, 2, 5, 'Maddison Wolff', 1817575265, 'sally63@thompson.com', '+13030818090', 'Senior Member', '1986-02-16', '2021-08-17 09:50:26', '2021-08-17 09:50:26'),
(556, 6, 7, 'Sydnee Marvin', 1737787895, 'blaze.yost@herzog.biz', '+16238666289', 'Probationary Member', '1972-11-21', '2021-08-17 09:50:26', '2021-08-17 09:50:26'),
(557, 3, 11, 'Prof. Deontae Altenwerth I', 1947212706, 'drogahn@yahoo.com', '+19866719563', 'Probationary Member', '1975-02-19', '2021-08-17 09:50:26', '2021-08-17 09:50:26'),
(558, 2, 11, 'Ms. Retta O\'Reilly', 1660545676, 'flavio.hegmann@yahoo.com', '+13393741420', 'General Member', '2016-05-20', '2021-08-17 09:50:26', '2021-08-17 09:50:26'),
(559, 1, 2, 'Dr. Rick Farrell II', 1779669295, 'qpfannerstill@wuckert.com', '+13856769772', 'Junior Member', '2011-09-22', '2021-08-17 09:50:26', '2021-08-17 09:50:26'),
(560, 5, 3, 'Edythe Tillman DDS', 1834071227, 'henry33@gmail.com', '+16147799972', 'Senior Member', '1998-06-06', '2021-08-17 09:50:26', '2021-08-17 09:50:26'),
(561, 4, 3, 'Saige Fritsch', 2060138136, 'bbalistreri@emmerich.com', '+12032004423', 'General Member', '2015-06-09', '2021-08-17 09:50:26', '2021-08-17 09:50:26'),
(562, 7, 4, 'Mrs. Lexi Kuhn', 1513591043, 'fritsch.krystel@gmail.com', '+19374465628', 'General Member', '1999-09-20', '2021-08-17 09:50:26', '2021-08-17 09:50:26'),
(563, 5, 4, 'Mireille Fadel', 1858246728, 'fkassulke@hotmail.com', '+18575801479', 'Senior Member', '1972-04-16', '2021-08-17 09:50:26', '2021-08-17 09:50:26'),
(564, 6, 11, 'Miss Ariane Mills I', 1685411117, 'bartoletti.summer@schimmel.com', '+13521368948', 'Junior Member', '2010-12-02', '2021-08-17 09:50:26', '2021-08-17 09:50:26'),
(565, 5, 16, 'Bobbie Stamm PhD', 1601534727, 'laurel.strosin@block.org', '+14145360863', 'Junior Member', '2006-07-26', '2021-08-17 09:50:26', '2021-08-17 09:50:26'),
(566, 9, 1, 'Emily Kuhn', 1635244061, 'imelda.kirlin@hotmail.com', '+17573004955', 'General Member', '1980-05-04', '2021-08-17 09:50:27', '2021-08-17 09:50:27'),
(567, 1, 7, 'Elmo Rempel', 1976813136, 'jreynolds@hotmail.com', '+19781231586', 'Probationary Member', '1975-07-23', '2021-08-17 09:50:27', '2021-08-17 09:50:27'),
(568, 3, 9, 'Felicia Quigley', 1904217593, 'norbert30@hamill.net', '+15737517722', 'Probationary Member', '2016-08-05', '2021-08-17 09:50:27', '2021-08-17 09:50:27'),
(569, 5, 11, 'Jefferey Powlowski', 2039512424, 'icole@gmail.com', '+14158877316', 'Probationary Member', '1997-12-22', '2021-08-17 09:50:27', '2021-08-17 09:50:27'),
(570, 3, 10, 'Kiarra Gibson', 1843958158, 'nona66@bernier.com', '+18041465708', 'General Member', '2001-08-12', '2021-08-17 09:50:27', '2021-08-17 09:50:27'),
(571, 4, 11, 'Jasper Dietrich', 2000912151, 'marcos32@simonis.info', '+12028913493', 'Probationary Member', '1973-06-24', '2021-08-17 09:50:27', '2021-08-17 09:50:27'),
(572, 2, 5, 'Ms. Serenity Rice III', 1667566826, 'harrison.bergnaum@gmail.com', '+15731798435', 'Junior Member', '1994-05-28', '2021-08-17 09:50:27', '2021-08-17 09:50:27'),
(573, 5, 11, 'Grover White', 1945033891, 'wilfrid50@hotmail.com', '+19806565354', 'Probationary Member', '1998-09-12', '2021-08-17 09:50:27', '2021-08-17 09:50:27'),
(574, 5, 1, 'Prof. Sebastian Spinka III', 2046509342, 'kschmitt@gmail.com', '+16096256166', 'Senior Member', '2002-08-21', '2021-08-17 09:50:27', '2021-08-17 09:50:27'),
(575, 2, 8, 'Marlee O\'Conner', 1569697417, 'kunde.ellsworth@frami.org', '+17545857516', 'Probationary Member', '2015-09-05', '2021-08-17 09:50:27', '2021-08-17 09:50:27'),
(576, 8, 12, 'Erik Kuphal', 1895314590, 'amya.sporer@steuber.com', '+18152701104', 'Senior Member', '1982-04-12', '2021-08-17 09:50:27', '2021-08-17 09:50:27'),
(577, 9, 10, 'Prof. Oral Halvorson DVM', 1607738568, 'igorczany@schimmel.com', '+15595712283', 'General Member', '1970-12-11', '2021-08-17 09:50:27', '2021-08-17 09:50:27'),
(578, 6, 6, 'Fernando Frami', 2079706471, 'aubrey.simonis@cartwright.net', '+12315214409', 'Probationary Member', '1991-10-17', '2021-08-17 09:50:27', '2021-08-17 09:50:27'),
(579, 4, 8, 'Ms. Annie Reinger', 1975980293, 'florencio18@gmail.com', '+16414981166', 'Junior Member', '1997-04-09', '2021-08-17 09:50:27', '2021-08-17 09:50:27'),
(580, 9, 1, 'Ava Gaylord', 1753689319, 'alverta.littel@yahoo.com', '+15180962549', 'General Member', '1995-07-04', '2021-08-17 09:50:27', '2021-08-17 09:50:27'),
(581, 1, 3, 'Prof. Linnie Kuhic', 1618819602, 'corbin17@rippin.com', '+18121491334', 'Probationary Member', '2017-01-04', '2021-08-17 09:50:27', '2021-08-17 09:50:27'),
(582, 2, 6, 'Arlie Hammes', 1929140798, 'marks.branson@yahoo.com', '+13468818766', 'Senior Member', '2019-10-22', '2021-08-17 09:50:27', '2021-08-17 09:50:27'),
(583, 4, 14, 'Nia Roberts', 1775087294, 'kiara23@gmail.com', '+19102137907', 'General Member', '1986-12-24', '2021-08-17 09:50:27', '2021-08-17 09:50:27'),
(584, 5, 7, 'Miss Abbigail O\'Connell PhD', 2008476609, 'colt85@huels.com', '+15644769996', 'Probationary Member', '2015-03-24', '2021-08-17 09:50:27', '2021-08-17 09:50:27'),
(585, 2, 12, 'Javier Quitzon', 2025658508, 'turner92@gmail.com', '+14014769525', 'Junior Member', '1998-05-04', '2021-08-17 09:50:27', '2021-08-17 09:50:27'),
(586, 7, 7, 'Trisha Ziemann', 1526869819, 'avis68@yahoo.com', '+19082264017', 'Junior Member', '1978-03-23', '2021-08-17 09:50:27', '2021-08-17 09:50:27');
INSERT INTO `members` (`m_id`, `club_id`, `dept_id`, `name`, `nsu_id`, `email`, `phone_num`, `position`, `join_date`, `created_at`, `updated_at`) VALUES
(587, 9, 15, 'Donny Mertz', 1931301536, 'stewart56@gmail.com', '+14099012960', 'Senior Member', '2020-08-31', '2021-08-17 09:50:27', '2021-08-17 09:50:27'),
(588, 2, 12, 'Mr. Torrance Schoen V', 1776388360, 'joana96@gmail.com', '+16104134887', 'Junior Member', '1973-02-15', '2021-08-17 09:50:27', '2021-08-17 09:50:27'),
(589, 3, 5, 'Ole Langosh', 1560364800, 'hickle.hobart@hotmail.com', '+15718105046', 'General Member', '1977-08-25', '2021-08-17 09:50:27', '2021-08-17 09:50:27'),
(590, 7, 3, 'Catharine Kshlerin', 1986017870, 'lfriesen@hotmail.com', '+19847413709', 'Junior Member', '1978-09-30', '2021-08-17 09:50:27', '2021-08-17 09:50:27'),
(591, 7, 2, 'Holden Powlowski', 1502760124, 'hartmann.meredith@gmail.com', '+16304863598', 'Senior Member', '2011-05-21', '2021-08-17 09:50:27', '2021-08-17 09:50:27'),
(592, 1, 6, 'Maxime Wiza Jr.', 1902327350, 'hoeger.madilyn@yahoo.com', '+13128929742', 'General Member', '1975-12-02', '2021-08-17 09:50:27', '2021-08-17 09:50:27'),
(593, 4, 4, 'Santino Stehr', 1934232226, 'quigley.bud@hotmail.com', '+19295184282', 'General Member', '2013-11-03', '2021-08-17 09:50:27', '2021-08-17 09:50:27'),
(594, 4, 13, 'Nova Grady', 2078046157, 'kylee75@ondricka.com', '+13868092733', 'Probationary Member', '1988-02-06', '2021-08-17 09:50:27', '2021-08-17 09:50:27'),
(595, 4, 16, 'Izabella Blick', 2033840382, 'jessica83@eichmann.net', '+13071610346', 'Junior Member', '2006-10-20', '2021-08-17 09:50:27', '2021-08-17 09:50:27'),
(596, 6, 5, 'Neha Torp', 1997336956, 'desmond.mills@kautzer.org', '+19471862355', 'Probationary Member', '1990-02-08', '2021-08-17 09:50:27', '2021-08-17 09:50:27'),
(597, 6, 2, 'Nikolas Ernser', 1928982304, 'schmeler.josiah@wunsch.org', '+14587084052', 'General Member', '1971-11-06', '2021-08-17 09:50:27', '2021-08-17 09:50:27'),
(598, 2, 10, 'Mr. Elliott Ruecker MD', 2017547344, 'tsporer@adams.org', '+13479398197', 'Senior Member', '1999-06-23', '2021-08-17 09:50:27', '2021-08-17 09:50:27'),
(599, 1, 14, 'Harmony Tillman', 1935947233, 'wehner.leo@yahoo.com', '+15709190025', 'Probationary Member', '2010-03-25', '2021-08-17 09:50:27', '2021-08-17 09:50:27'),
(600, 3, 14, 'Deshawn Fay PhD', 1921087334, 'wolf.maddison@murphy.com', '+17375408832', 'General Member', '1972-05-24', '2021-08-17 09:50:28', '2021-08-17 09:50:28'),
(601, 5, 4, 'Marcia White', 1946171665, 'fahey.skylar@kertzmann.org', '+13602528324', 'General Member', '1991-12-24', '2021-08-17 09:50:28', '2021-08-17 09:50:28'),
(602, 4, 16, 'Austen Quigley', 1738275101, 'edmond92@gmail.com', '+17572186121', 'Senior Member', '1980-04-05', '2021-08-17 09:50:28', '2021-08-17 09:50:28'),
(603, 9, 16, 'Tyra Smitham II', 1987472728, 'elebsack@bruen.com', '+19510289239', 'General Member', '1979-07-06', '2021-08-17 09:50:28', '2021-08-17 09:50:28'),
(604, 7, 15, 'Mr. Hobart Carter I', 1715233120, 'maurice.gibson@hotmail.com', '+18384411960', 'Senior Member', '2004-12-01', '2021-08-17 09:50:28', '2021-08-17 09:50:28'),
(605, 7, 14, 'Prof. Gay Wolff IV', 1603062532, 'merlin89@gmail.com', '+17868354763', 'Junior Member', '1990-06-10', '2021-08-17 09:50:28', '2021-08-17 09:50:28'),
(606, 3, 13, 'Alysa Leuschke', 2064001223, 'rolfson.francesca@yahoo.com', '+18302842669', 'Senior Member', '2021-05-15', '2021-08-17 09:50:28', '2021-08-17 09:50:28'),
(607, 5, 5, 'Wilfred Schumm', 1553043895, 'gsatterfield@hoppe.info', '+17400144521', 'Junior Member', '1987-01-17', '2021-08-17 09:50:28', '2021-08-17 09:50:28'),
(608, 3, 15, 'Miss Rosemary Ernser', 1683782329, 'bartoletti.immanuel@hyatt.com', '+14012304753', 'Junior Member', '1976-03-07', '2021-08-17 09:50:28', '2021-08-17 09:50:28'),
(609, 8, 8, 'Erna Baumbach IV', 2055466920, 'qglover@harris.info', '+16670672689', 'Probationary Member', '2005-12-26', '2021-08-17 09:50:28', '2021-08-17 09:50:28'),
(610, 7, 3, 'Landen Murazik', 1948279545, 'rodriguez.rosamond@hotmail.com', '+12697173400', 'Senior Member', '2007-01-14', '2021-08-17 09:50:28', '2021-08-17 09:50:28'),
(611, 4, 8, 'Prof. Ellis Frami I', 1884233607, 'sidney.waelchi@rogahn.com', '+14788879119', 'Junior Member', '1982-02-11', '2021-08-17 09:50:28', '2021-08-17 09:50:28'),
(612, 4, 14, 'Emelie Kutch V', 1746132430, 'cwalker@gmail.com', '+17578080527', 'Senior Member', '1982-08-20', '2021-08-17 09:50:28', '2021-08-17 09:50:28'),
(613, 2, 9, 'Claudie Osinski', 1912495434, 'mckenna.dubuque@gibson.com', '+14082490981', 'Senior Member', '1974-12-31', '2021-08-17 09:50:28', '2021-08-17 09:50:28'),
(614, 4, 14, 'Roderick Stark', 1837959285, 'ukihn@yahoo.com', '+18166974820', 'Probationary Member', '2007-02-13', '2021-08-17 09:50:28', '2021-08-17 09:50:28'),
(615, 9, 4, 'Grover Koch', 2062334901, 'rzboncak@gmail.com', '+16691860974', 'General Member', '1974-11-03', '2021-08-17 09:50:28', '2021-08-17 09:50:28'),
(616, 1, 11, 'Bryce Zboncak Jr.', 1850860752, 'krobel@paucek.com', '+12839156300', 'General Member', '1996-10-26', '2021-08-17 09:50:28', '2021-08-17 09:50:28'),
(617, 6, 13, 'Prof. Vinnie Friesen III', 1674070584, 'jerad04@marquardt.com', '+14407518311', 'Probationary Member', '1976-12-19', '2021-08-17 09:50:28', '2021-08-17 09:50:28'),
(618, 5, 16, 'Prof. Jasen Schimmel IV', 1702586621, 'howe.esperanza@gmail.com', '+16087248783', 'Probationary Member', '1982-12-11', '2021-08-17 09:50:28', '2021-08-17 09:50:28'),
(619, 5, 15, 'Kathleen O\'Conner', 2095142668, 'efren.hammes@gmail.com', '+14805744673', 'General Member', '2010-10-25', '2021-08-17 09:50:28', '2021-08-17 09:50:28'),
(620, 5, 15, 'Dr. Maxime Nader Jr.', 1581514661, 'leuschke.wilfred@gmail.com', '+19414303433', 'General Member', '1981-08-11', '2021-08-17 09:50:28', '2021-08-17 09:50:28'),
(621, 8, 12, 'Noah Hudson', 1836931607, 'dubuque.abelardo@yahoo.com', '+19592284850', 'General Member', '1971-06-07', '2021-08-17 09:50:28', '2021-08-17 09:50:28'),
(622, 3, 5, 'Mrs. Brisa Ward IV', 1651064678, 'bechtelar.colten@gmail.com', '+15121293286', 'Probationary Member', '2012-03-03', '2021-08-17 09:50:28', '2021-08-17 09:50:28'),
(623, 7, 11, 'Johanna Flatley', 1969818500, 'elijah.batz@gmail.com', '+18327637126', 'Junior Member', '1981-07-07', '2021-08-17 09:50:28', '2021-08-17 09:50:28'),
(624, 8, 6, 'Alexandra Marvin', 1637053480, 'senger.orlo@hotmail.com', '+18721661246', 'Junior Member', '1973-06-05', '2021-08-17 09:50:28', '2021-08-17 09:50:28'),
(625, 8, 7, 'Mrs. Kathryn Berge V', 1770053870, 'hkemmer@gmail.com', '+19169256719', 'General Member', '2020-02-20', '2021-08-17 09:50:28', '2021-08-17 09:50:28'),
(626, 1, 12, 'Luz Tromp', 1906413915, 'cartwright.audreanne@yahoo.com', '+19894720469', 'Junior Member', '1989-12-22', '2021-08-17 09:50:28', '2021-08-17 09:50:28'),
(627, 7, 8, 'Buster Vandervort', 1610506825, 'raymond31@hotmail.com', '+16109847233', 'General Member', '1991-06-04', '2021-08-17 09:50:28', '2021-08-17 09:50:28'),
(628, 4, 7, 'Dr. Lucinda Lehner', 1599430332, 'maegan.kreiger@gmail.com', '+17634388756', 'General Member', '2011-05-23', '2021-08-17 09:50:29', '2021-08-17 09:50:29'),
(629, 8, 12, 'Virgie Koepp', 1974622714, 'ehoeger@wisoky.com', '+13516034958', 'Junior Member', '2002-03-30', '2021-08-17 09:50:29', '2021-08-17 09:50:29'),
(630, 9, 4, 'Madalyn Haley', 1608992163, 'macey.langosh@herzog.com', '+13147222107', 'Junior Member', '1982-08-08', '2021-08-17 09:50:29', '2021-08-17 09:50:29'),
(631, 4, 9, 'Mollie Skiles', 1605432769, 'johnston.josephine@emmerich.net', '+18542449568', 'Junior Member', '1982-08-14', '2021-08-17 09:50:29', '2021-08-17 09:50:29'),
(632, 7, 3, 'Cassandre Huel DVM', 2028841122, 'winston38@hotmail.com', '+13861791004', 'Junior Member', '2021-06-30', '2021-08-17 09:50:29', '2021-08-17 09:50:29'),
(633, 3, 15, 'Garnet Pacocha Jr.', 1529965811, 'flarson@hotmail.com', '+16785133017', 'General Member', '1973-04-29', '2021-08-17 09:50:29', '2021-08-17 09:50:29'),
(634, 3, 7, 'Angie Altenwerth', 1603248251, 'cullen44@huel.com', '+13851021145', 'General Member', '1973-01-20', '2021-08-17 09:50:29', '2021-08-17 09:50:29'),
(635, 1, 10, 'Adelle Nitzsche DVM', 1677767333, 'tracey.koepp@gmail.com', '+17853614849', 'General Member', '2004-09-15', '2021-08-17 09:50:29', '2021-08-17 09:50:29'),
(636, 1, 9, 'Hayden Jenkins', 1690847523, 'alexandro.zemlak@gmail.com', '+18303794416', 'Senior Member', '2005-04-05', '2021-08-17 09:50:29', '2021-08-17 09:50:29'),
(637, 8, 1, 'Danika Bartell', 2099298419, 'judd.hudson@cormier.com', '+19739466411', 'Senior Member', '1997-02-18', '2021-08-17 09:50:29', '2021-08-17 09:50:29'),
(638, 4, 13, 'Virgie Carter', 1588854790, 'jovany28@yahoo.com', '+19803448319', 'Probationary Member', '1976-10-04', '2021-08-17 09:50:29', '2021-08-17 09:50:29'),
(639, 4, 9, 'Dr. Brayan Schumm', 2060582112, 'coy40@gorczany.com', '+15204740233', 'Probationary Member', '1982-11-02', '2021-08-17 09:50:29', '2021-08-17 09:50:29'),
(640, 9, 4, 'Geovanny Harris II', 2049626771, 'kianna.turner@rippin.com', '+16234576929', 'Senior Member', '1973-02-13', '2021-08-17 09:50:29', '2021-08-17 09:50:29'),
(641, 4, 14, 'Ms. Celia Rogahn Sr.', 1877435454, 'will.minerva@treutel.info', '+16021742055', 'Junior Member', '2010-02-18', '2021-08-17 09:50:29', '2021-08-17 09:50:29'),
(642, 9, 9, 'Frances Waelchi', 1641832014, 'ddonnelly@yahoo.com', '+17738504910', 'Probationary Member', '2003-11-22', '2021-08-17 09:50:29', '2021-08-17 09:50:29'),
(643, 4, 3, 'Faye Wintheiser V', 1762914514, 'brock.reichel@bosco.com', '+12192000601', 'General Member', '1976-06-14', '2021-08-17 09:50:29', '2021-08-17 09:50:29'),
(644, 7, 11, 'Lorenzo Johnston', 1584651532, 'kelsie.bednar@gmail.com', '+12140865449', 'Probationary Member', '1988-07-14', '2021-08-17 09:50:29', '2021-08-17 09:50:29'),
(645, 4, 7, 'Katrine Stroman DVM', 1942283655, 'jewell.kuhic@hotmail.com', '+16281950183', 'Probationary Member', '2002-08-18', '2021-08-17 09:50:29', '2021-08-17 09:50:29'),
(646, 2, 8, 'Ethelyn Wintheiser', 1611613706, 'dane.frami@powlowski.com', '+16305312054', 'Probationary Member', '1971-07-14', '2021-08-17 09:50:29', '2021-08-17 09:50:29'),
(647, 3, 10, 'Mr. Clint Grady', 1635773634, 'tbartoletti@yahoo.com', '+16780565284', 'Probationary Member', '1993-04-24', '2021-08-17 09:50:29', '2021-08-17 09:50:29'),
(648, 6, 12, 'Barton Bergstrom', 1599681210, 'carole.hayes@murphy.net', '+19788516643', 'Probationary Member', '2000-10-05', '2021-08-17 09:50:30', '2021-08-17 09:50:30'),
(649, 2, 16, 'Sydney Jakubowski', 1633705325, 'reed.fisher@yahoo.com', '+13327932859', 'Senior Member', '2014-11-22', '2021-08-17 09:50:30', '2021-08-17 09:50:30'),
(650, 1, 9, 'Angus Batz', 1614904221, 'seth.nader@gmail.com', '+14340941288', 'Junior Member', '2017-03-04', '2021-08-17 09:50:30', '2021-08-17 09:50:30'),
(651, 7, 10, 'Mr. Jovani Keebler', 1542799061, 'hshields@stiedemann.info', '+15854002739', 'General Member', '1982-10-14', '2021-08-17 09:50:30', '2021-08-17 09:50:30'),
(652, 8, 10, 'Mr. Ladarius Deckow III', 1583295817, 'connor02@yahoo.com', '+19596663282', 'Junior Member', '1978-10-31', '2021-08-17 09:50:30', '2021-08-17 09:50:30'),
(653, 2, 2, 'Jerrell Moen II', 1557457120, 'franz92@schaefer.com', '+17818640661', 'General Member', '1975-06-21', '2021-08-17 09:50:30', '2021-08-17 09:50:30'),
(654, 2, 15, 'Kayli Casper', 1645296516, 'bernita.goyette@dare.com', '+12562560244', 'Senior Member', '1975-03-26', '2021-08-17 09:50:30', '2021-08-17 09:50:30'),
(655, 5, 11, 'Martin Ryan', 1531588201, 'fkoss@lueilwitz.info', '+12299330587', 'Junior Member', '2016-03-05', '2021-08-17 09:50:30', '2021-08-17 09:50:30'),
(656, 9, 15, 'Prof. Cristobal Crooks', 2010780480, 'bkertzmann@leuschke.com', '+17734741871', 'Junior Member', '2000-10-11', '2021-08-17 09:50:30', '2021-08-17 09:50:30'),
(657, 7, 11, 'Tressa Kuhlman', 2066946806, 'swift.elza@runte.net', '+17730475968', 'Senior Member', '1990-07-06', '2021-08-17 09:50:30', '2021-08-17 09:50:30'),
(658, 6, 16, 'Dr. Hellen Schaefer', 1825949154, 'kathryne52@rosenbaum.com', '+19371071137', 'General Member', '1988-06-29', '2021-08-17 09:50:30', '2021-08-17 09:50:30'),
(659, 7, 14, 'Prof. Ali Fay Sr.', 1683287388, 'cruickshank.kurt@davis.com', '+12296882697', 'Senior Member', '2000-04-18', '2021-08-17 09:50:30', '2021-08-17 09:50:30'),
(660, 7, 8, 'Johnathan Kertzmann', 1930078402, 'adah.gulgowski@gmail.com', '+15021362493', 'Probationary Member', '1997-03-24', '2021-08-17 09:50:30', '2021-08-17 09:50:30'),
(661, 4, 7, 'Lori Rohan', 1836140162, 'emilia.yundt@rogahn.com', '+12698967569', 'Junior Member', '1979-04-15', '2021-08-17 09:50:30', '2021-08-17 09:50:30'),
(662, 9, 4, 'Aron Graham', 1842736516, 'johnson.estelle@kilback.com', '+17433684678', 'Junior Member', '1997-10-23', '2021-08-17 09:50:30', '2021-08-17 09:50:30'),
(663, 7, 14, 'Everardo Leffler', 1994580788, 'bashirian.rashawn@grant.com', '+18579078207', 'General Member', '1979-06-11', '2021-08-17 09:50:30', '2021-08-17 09:50:30'),
(664, 4, 6, 'Arely Wintheiser', 1586723706, 'alejandra01@yahoo.com', '+16613098186', 'Senior Member', '1990-04-20', '2021-08-17 09:50:30', '2021-08-17 09:50:30'),
(665, 7, 13, 'Monty Morar', 2033302541, 'elta43@runolfsdottir.org', '+15802286409', 'General Member', '2007-10-09', '2021-08-17 09:50:30', '2021-08-17 09:50:30'),
(666, 2, 14, 'Daphne Osinski MD', 1572812564, 'cali13@yahoo.com', '+14064365969', 'Junior Member', '1995-06-21', '2021-08-17 09:50:30', '2021-08-17 09:50:30'),
(667, 2, 14, 'Candace Carroll DVM', 1787477358, 'hauck.lester@hotmail.com', '+14581022195', 'Junior Member', '2006-12-09', '2021-08-17 09:50:30', '2021-08-17 09:50:30'),
(668, 8, 8, 'Miss Lupe Howe DVM', 1686681228, 'sschmidt@harvey.com', '+17736660496', 'General Member', '1995-01-17', '2021-08-17 09:50:30', '2021-08-17 09:50:30'),
(669, 8, 4, 'Kristin Koepp', 2029163679, 'cormier.eva@yahoo.com', '+14251214097', 'Junior Member', '1980-12-21', '2021-08-17 09:50:30', '2021-08-17 09:50:30'),
(670, 1, 1, 'Gregg Hermiston', 1997008912, 'amalia.metz@jast.biz', '+15408664653', 'General Member', '1984-12-31', '2021-08-17 09:50:30', '2021-08-17 09:50:30'),
(671, 1, 12, 'Dr. Germaine Feil I', 1933742393, 'hoppe.justen@stoltenberg.com', '+12094455469', 'General Member', '2009-12-19', '2021-08-17 09:50:30', '2021-08-17 09:50:30'),
(672, 1, 14, 'Prof. Maegan Douglas IV', 1686532009, 'spencer54@yahoo.com', '+13170507268', 'General Member', '1978-09-14', '2021-08-17 09:50:30', '2021-08-17 09:50:30'),
(673, 5, 1, 'Ms. Evie Maggio', 2055794038, 'laury.larkin@yahoo.com', '+13152042191', 'Probationary Member', '1981-09-24', '2021-08-17 09:50:31', '2021-08-17 09:50:31'),
(674, 7, 9, 'Allene Collier', 1758330044, 'vmetz@kling.com', '+15853586535', 'Junior Member', '2017-03-11', '2021-08-17 09:50:31', '2021-08-17 09:50:31'),
(675, 8, 10, 'Jazmyne Mertz', 1630031030, 'zgusikowski@hotmail.com', '+18202265705', 'Probationary Member', '2016-07-03', '2021-08-17 09:50:31', '2021-08-17 09:50:31'),
(676, 4, 15, 'Elian Hickle DDS', 1844237173, 'harmon.swaniawski@hotmail.com', '+15342361959', 'Senior Member', '2015-05-27', '2021-08-17 09:50:31', '2021-08-17 09:50:31'),
(677, 2, 2, 'Amya Brown IV', 2056636094, 'zachariah40@cremin.com', '+19155222160', 'Probationary Member', '2003-06-17', '2021-08-17 09:50:31', '2021-08-17 09:50:31'),
(678, 3, 1, 'Prof. Deshawn Toy DDS', 1981169203, 'uthiel@roberts.info', '+18283628826', 'General Member', '1983-09-04', '2021-08-17 09:50:31', '2021-08-17 09:50:31'),
(679, 8, 13, 'Mr. Camron Okuneva II', 1678172800, 'hettinger.clark@hotmail.com', '+14355486721', 'Senior Member', '1996-05-16', '2021-08-17 09:50:31', '2021-08-17 09:50:31'),
(680, 7, 9, 'Florencio Waters', 1869211776, 'robyn31@yahoo.com', '+13858233107', 'Probationary Member', '2012-07-04', '2021-08-17 09:50:31', '2021-08-17 09:50:31'),
(681, 1, 6, 'Mrs. Pamela Langworth', 2058939197, 'vlubowitz@dach.com', '+14752886200', 'Junior Member', '2005-03-16', '2021-08-17 09:50:31', '2021-08-17 09:50:31'),
(682, 2, 9, 'Mckayla Conn', 1646158777, 'nmedhurst@gmail.com', '+13801886907', 'Probationary Member', '1976-07-05', '2021-08-17 09:50:31', '2021-08-17 09:50:31'),
(683, 5, 10, 'Ollie Treutel', 1934014230, 'whitney39@larkin.org', '+16191064701', 'General Member', '1985-01-30', '2021-08-17 09:50:31', '2021-08-17 09:50:31'),
(684, 5, 10, 'Makenzie Hodkiewicz', 1530718362, 'winston.dietrich@yahoo.com', '+16782684763', 'Junior Member', '2016-03-30', '2021-08-17 09:50:31', '2021-08-17 09:50:31'),
(685, 2, 14, 'Laurie Dicki', 1531789802, 'florine70@gmail.com', '+17704392011', 'Senior Member', '1971-11-03', '2021-08-17 09:50:31', '2021-08-17 09:50:31'),
(686, 7, 11, 'Mr. Monserrat Tremblay', 1831956544, 'ashtyn42@bailey.info', '+17438230285', 'General Member', '1981-01-05', '2021-08-17 09:50:31', '2021-08-17 09:50:31'),
(687, 8, 16, 'Lauren Dicki', 2054061827, 'newton.abshire@jaskolski.com', '+14632455875', 'Junior Member', '2018-12-15', '2021-08-17 09:50:31', '2021-08-17 09:50:31'),
(688, 6, 16, 'Joseph Beer', 1542629229, 'hills.kelley@kuvalis.org', '+14245852641', 'General Member', '2010-03-16', '2021-08-17 09:50:31', '2021-08-17 09:50:31'),
(689, 5, 9, 'Stuart Smith II', 2052381946, 'bkirlin@marvin.com', '+17542893977', 'Junior Member', '2014-02-04', '2021-08-17 09:50:31', '2021-08-17 09:50:31'),
(690, 4, 2, 'Delpha Hodkiewicz', 1859226692, 'becker.ofelia@collins.com', '+17544687908', 'General Member', '1972-02-08', '2021-08-17 09:50:31', '2021-08-17 09:50:31'),
(691, 9, 4, 'Mr. Evert Ankunding DDS', 1803881043, 'emmalee.crooks@stroman.org', '+18482897975', 'Junior Member', '2020-03-12', '2021-08-17 09:50:31', '2021-08-17 09:50:31'),
(692, 4, 4, 'Isabel Monahan', 1630761268, 'traynor@hotmail.com', '+16783464123', 'Junior Member', '1990-03-30', '2021-08-17 09:50:31', '2021-08-17 09:50:31'),
(693, 8, 11, 'Ms. Carolyn Macejkovic', 1521698828, 'roxanne.wolff@yahoo.com', '+16503582206', 'General Member', '1974-05-15', '2021-08-17 09:50:31', '2021-08-17 09:50:31'),
(694, 2, 16, 'Ms. Kianna Kreiger', 1768403352, 'west.vena@deckow.org', '+15014698296', 'General Member', '2015-09-27', '2021-08-17 09:50:31', '2021-08-17 09:50:31'),
(695, 7, 4, 'Josephine Klein', 1641696958, 'gulgowski.augustine@terry.com', '+16814902043', 'Junior Member', '1991-03-10', '2021-08-17 09:50:31', '2021-08-17 09:50:31'),
(696, 9, 13, 'Stephany Mraz', 2032269245, 'zboncak.maye@smith.net', '+14798746355', 'Senior Member', '1994-01-23', '2021-08-17 09:50:31', '2021-08-17 09:50:31'),
(697, 8, 6, 'Holly Schuster', 1735670773, 'willard.schamberger@hickle.net', '+14404148069', 'Probationary Member', '1995-06-02', '2021-08-17 09:50:31', '2021-08-17 09:50:31'),
(698, 6, 9, 'Prof. Emelie Wunsch II', 2099810827, 'stoltenberg.magali@johns.biz', '+17602890893', 'Probationary Member', '2009-07-21', '2021-08-17 09:50:31', '2021-08-17 09:50:31'),
(699, 2, 14, 'Cleo Kris', 1940490189, 'gutkowski.wallace@schroeder.info', '+16035321660', 'Junior Member', '1989-12-28', '2021-08-17 09:50:31', '2021-08-17 09:50:31'),
(700, 5, 3, 'Lauretta Morissette', 1533977536, 'gratke@barrows.com', '+16290793762', 'Junior Member', '1985-01-10', '2021-08-17 09:50:31', '2021-08-17 09:50:31'),
(701, 8, 9, 'Dr. Kole Shanahan III', 1906906076, 'mozelle32@wehner.com', '+17147961028', 'General Member', '1990-07-20', '2021-08-17 09:50:32', '2021-08-17 09:50:32'),
(702, 4, 12, 'Clotilde Upton', 1905918965, 'spinka.anabelle@gmail.com', '+17570601937', 'Junior Member', '1993-05-02', '2021-08-17 09:50:32', '2021-08-17 09:50:32'),
(703, 1, 8, 'Prof. Forest Crona', 1646459696, 'heaven08@hintz.org', '+12811724816', 'Junior Member', '2005-12-09', '2021-08-17 09:50:32', '2021-08-17 09:50:32'),
(704, 2, 15, 'Alysson Strosin', 1682370177, 'darlene05@cassin.com', '+14066233624', 'Probationary Member', '1985-06-09', '2021-08-17 09:50:32', '2021-08-17 09:50:32'),
(705, 3, 16, 'Dangelo Hand', 1756283610, 'bode.kasey@cole.com', '+19719876254', 'Junior Member', '2006-03-18', '2021-08-17 09:50:32', '2021-08-17 09:50:32'),
(706, 3, 5, 'Miss Ruth Brakus', 1807393584, 'nash95@hotmail.com', '+12562435616', 'Senior Member', '1984-12-26', '2021-08-17 09:50:32', '2021-08-17 09:50:32'),
(707, 7, 10, 'Clifton Hoeger MD', 1584980677, 'xkuhlman@yahoo.com', '+13511977527', 'Probationary Member', '1982-08-10', '2021-08-17 09:50:32', '2021-08-17 09:50:32'),
(708, 7, 16, 'Erich Christiansen', 1908931006, 'runolfsson.torrance@gutkowski.info', '+19787902065', 'General Member', '1984-12-09', '2021-08-17 09:50:32', '2021-08-17 09:50:32'),
(709, 4, 13, 'Ashton Rowe', 1670056851, 'athompson@gmail.com', '+16827849416', 'Junior Member', '1990-01-02', '2021-08-17 09:50:32', '2021-08-17 09:50:32'),
(710, 4, 4, 'Delbert Kuphal Sr.', 1963250837, 'lkonopelski@yahoo.com', '+17575863641', 'Probationary Member', '1993-04-18', '2021-08-17 09:50:32', '2021-08-17 09:50:32'),
(711, 6, 8, 'Kip Emmerich', 2016316443, 'tromp.laura@hotmail.com', '+18287655116', 'General Member', '2005-06-25', '2021-08-17 09:50:32', '2021-08-17 09:50:32'),
(712, 2, 16, 'Jamarcus Bahringer', 1665141695, 'earmstrong@yahoo.com', '+14344166694', 'Junior Member', '2004-10-20', '2021-08-17 09:50:32', '2021-08-17 09:50:32'),
(713, 7, 3, 'Clinton Ruecker', 2030559691, 'ollie.oconner@lindgren.biz', '+16232474312', 'Junior Member', '1993-11-19', '2021-08-17 09:50:32', '2021-08-17 09:50:32'),
(714, 7, 8, 'Michelle Marvin', 2064943437, 'mcglynn.rory@cremin.net', '+14304108945', 'General Member', '2017-05-22', '2021-08-17 09:50:32', '2021-08-17 09:50:32'),
(715, 9, 7, 'Marguerite Bahringer', 1969802350, 'hammes.florine@gmail.com', '+15863952352', 'General Member', '1981-09-03', '2021-08-17 09:50:32', '2021-08-17 09:50:32'),
(716, 8, 14, 'Prof. Dylan Prohaska', 1702369300, 'aswift@hotmail.com', '+15056767312', 'Junior Member', '1999-03-14', '2021-08-17 09:50:32', '2021-08-17 09:50:32'),
(717, 2, 9, 'Zander Nader', 1910820730, 'onie86@gmail.com', '+18588841283', 'General Member', '1989-08-25', '2021-08-17 09:50:32', '2021-08-17 09:50:32'),
(718, 6, 13, 'Vickie Corkery', 1970786090, 'ronny65@dickinson.org', '+18476775396', 'Senior Member', '2012-12-13', '2021-08-17 09:50:32', '2021-08-17 09:50:32'),
(719, 3, 15, 'Miss Magali Cremin', 1976797828, 'ewilkinson@gmail.com', '+12288307795', 'Junior Member', '2008-04-22', '2021-08-17 09:50:32', '2021-08-17 09:50:32'),
(720, 3, 3, 'Dr. Agustina Schroeder', 1578963735, 'whitney38@mcglynn.com', '+16208386473', 'Junior Member', '2008-03-21', '2021-08-17 09:50:32', '2021-08-17 09:50:32'),
(721, 8, 2, 'Jenifer Terry', 1890053776, 'littel.sylvester@gutkowski.com', '+19200716792', 'Junior Member', '1974-06-25', '2021-08-17 09:50:32', '2021-08-17 09:50:32'),
(722, 9, 13, 'Mrs. Carlee Mueller PhD', 1575788209, 'mack.turner@yahoo.com', '+17626469914', 'General Member', '1979-10-07', '2021-08-17 09:50:32', '2021-08-17 09:50:32'),
(723, 2, 7, 'Hattie Abernathy', 1799020963, 'cole.vicenta@bode.biz', '+14232499306', 'Senior Member', '1985-09-13', '2021-08-17 09:50:32', '2021-08-17 09:50:32'),
(724, 1, 13, 'Laverna Senger', 1609729004, 'garth98@connelly.biz', '+14323528209', 'Senior Member', '2004-11-22', '2021-08-17 09:50:32', '2021-08-17 09:50:32'),
(725, 6, 3, 'Prof. Lora Connelly', 1994964563, 'amedhurst@cartwright.com', '+15126069752', 'Senior Member', '2009-02-05', '2021-08-17 09:50:33', '2021-08-17 09:50:33'),
(726, 8, 7, 'Prof. Freeda Marks MD', 1832125197, 'gregory.macejkovic@greenholt.net', '+15105018300', 'Senior Member', '2010-03-30', '2021-08-17 09:50:33', '2021-08-17 09:50:33'),
(727, 6, 15, 'Margot Block', 1874145863, 'wmraz@yahoo.com', '+15513694436', 'Probationary Member', '2013-12-27', '2021-08-17 09:50:33', '2021-08-17 09:50:33'),
(728, 2, 1, 'Kendra Stamm', 1778992349, 'satterfield.stacy@smitham.info', '+17069386528', 'Senior Member', '2013-09-13', '2021-08-17 09:50:33', '2021-08-17 09:50:33'),
(729, 3, 16, 'Vada Gibson', 1893399729, 'tomasa.tremblay@hotmail.com', '+19518274896', 'Probationary Member', '1993-05-20', '2021-08-17 09:50:33', '2021-08-17 09:50:33'),
(730, 9, 5, 'Ryleigh Abernathy', 1919034916, 'jones.rolando@gmail.com', '+13614935190', 'Senior Member', '2018-12-20', '2021-08-17 09:50:33', '2021-08-17 09:50:33'),
(731, 7, 1, 'Karen Kirlin', 1501168279, 'nschaefer@kemmer.com', '+13038698094', 'Senior Member', '1987-05-11', '2021-08-17 09:50:33', '2021-08-17 09:50:33'),
(732, 2, 7, 'Kaden King I', 1722202759, 'ylynch@hotmail.com', '+13416275956', 'Probationary Member', '1987-08-08', '2021-08-17 09:50:33', '2021-08-17 09:50:33'),
(733, 9, 14, 'Johnnie Harvey', 1586494091, 'tevin92@yahoo.com', '+18599483917', 'Senior Member', '2016-10-12', '2021-08-17 09:50:33', '2021-08-17 09:50:33'),
(734, 5, 6, 'Solon Haag', 1557258131, 'alberto.quitzon@yahoo.com', '+19257735823', 'Junior Member', '2016-11-26', '2021-08-17 09:50:33', '2021-08-17 09:50:33'),
(735, 9, 5, 'Dr. Lamont Hill III', 1685599130, 'braxton09@jaskolski.com', '+16614008540', 'General Member', '1974-10-30', '2021-08-17 09:50:33', '2021-08-17 09:50:33'),
(736, 1, 16, 'Mrs. Mara Harber IV', 1784799182, 'tamara21@yahoo.com', '+19852473390', 'Probationary Member', '1976-08-07', '2021-08-17 09:50:33', '2021-08-17 09:50:33'),
(737, 9, 10, 'Kaleb Cummerata', 2037541475, 'kemmer.ofelia@yahoo.com', '+12831903465', 'General Member', '1996-11-19', '2021-08-17 09:50:33', '2021-08-17 09:50:33'),
(738, 3, 13, 'Jaunita Ullrich', 2044566576, 'vconnelly@wunsch.com', '+12034958848', 'Senior Member', '2001-07-02', '2021-08-17 09:50:33', '2021-08-17 09:50:33'),
(739, 5, 14, 'Pierce Lesch', 1711861314, 'emmie22@ondricka.net', '+15407805475', 'Senior Member', '1987-09-18', '2021-08-17 09:50:33', '2021-08-17 09:50:33'),
(740, 2, 14, 'Prof. Mckenzie Anderson Sr.', 1516575671, 'jackie67@hotmail.com', '+14154618148', 'Senior Member', '1994-02-12', '2021-08-17 09:50:33', '2021-08-17 09:50:33'),
(741, 9, 11, 'Christop Medhurst', 1826887332, 'celine.grimes@reichel.com', '+16178953982', 'Junior Member', '1971-11-01', '2021-08-17 09:50:33', '2021-08-17 09:50:33'),
(742, 3, 1, 'Celestine Quigley', 2009128371, 'myriam20@abernathy.com', '+16232175823', 'Junior Member', '2021-04-27', '2021-08-17 09:50:33', '2021-08-17 09:50:33'),
(743, 5, 4, 'Alda Watsica', 1927008975, 'gay40@hotmail.com', '+13419267141', 'Probationary Member', '2004-03-28', '2021-08-17 09:50:33', '2021-08-17 09:50:33'),
(744, 5, 3, 'Leslie Waters', 1981762665, 'coby.luettgen@yahoo.com', '+16121087853', 'General Member', '1978-08-30', '2021-08-17 09:50:33', '2021-08-17 09:50:33'),
(745, 9, 5, 'Savion Hartmann', 1677869438, 'jules.hodkiewicz@gmail.com', '+19033775713', 'Senior Member', '2008-03-21', '2021-08-17 09:50:33', '2021-08-17 09:50:33'),
(746, 5, 8, 'Afton O\'Connell V', 1787711651, 'genesis71@yahoo.com', '+14690407770', 'Probationary Member', '1986-01-24', '2021-08-17 09:50:33', '2021-08-17 09:50:33'),
(747, 3, 16, 'Ronny Friesen', 1726683088, 'sophia41@kunde.com', '+14023657654', 'General Member', '1983-03-28', '2021-08-17 09:50:33', '2021-08-17 09:50:33'),
(748, 1, 11, 'Madaline Runte', 1959297742, 'frankie.mayer@bosco.com', '+17633243053', 'Junior Member', '1988-04-09', '2021-08-17 09:50:33', '2021-08-17 09:50:33'),
(749, 8, 5, 'Stephon Jaskolski', 1556167364, 'kristopher04@veum.org', '+16129970662', 'Probationary Member', '1974-06-26', '2021-08-17 09:50:33', '2021-08-17 09:50:33'),
(750, 8, 14, 'Mr. Max Kiehn', 2096090276, 'volkman.savion@dibbert.com', '+14306250789', 'Senior Member', '1988-09-14', '2021-08-17 09:50:33', '2021-08-17 09:50:33'),
(751, 4, 8, 'Sandy Bayer', 1644701516, 'qwilderman@roob.org', '+14125291118', 'General Member', '1980-10-23', '2021-08-17 09:50:33', '2021-08-17 09:50:33'),
(752, 6, 14, 'Rollin Gerhold', 2033072104, 'spinka.patricia@hotmail.com', '+18380452482', 'General Member', '1990-08-31', '2021-08-17 09:50:33', '2021-08-17 09:50:33'),
(753, 2, 9, 'Cecile O\'Reilly', 1806298414, 'mark30@yahoo.com', '+12071174771', 'Senior Member', '2006-04-24', '2021-08-17 09:50:34', '2021-08-17 09:50:34'),
(754, 6, 3, 'Jayda Ziemann', 1958000727, 'dhuels@cummerata.com', '+12296517228', 'Probationary Member', '1974-03-13', '2021-08-17 09:50:34', '2021-08-17 09:50:34'),
(755, 4, 5, 'Theo Mueller', 1566422854, 'bret.collier@zemlak.com', '+13646406924', 'Senior Member', '1980-09-18', '2021-08-17 09:50:34', '2021-08-17 09:50:34'),
(756, 6, 12, 'Alphonso Beer', 1638766638, 'fharris@hettinger.org', '+15341854098', 'Senior Member', '1993-01-03', '2021-08-17 09:50:34', '2021-08-17 09:50:34'),
(757, 5, 8, 'Violet Hermiston', 2070366399, 'lora.reynolds@walter.com', '+16091075891', 'General Member', '2013-10-28', '2021-08-17 09:50:34', '2021-08-17 09:50:34'),
(758, 5, 10, 'Violet Bailey', 2015257879, 'kris.jarred@yahoo.com', '+13164928799', 'General Member', '2003-06-27', '2021-08-17 09:50:34', '2021-08-17 09:50:34'),
(759, 8, 8, 'Prof. Demond Howe IV', 1917258876, 'wkuphal@yahoo.com', '+19043197711', 'Senior Member', '1981-11-25', '2021-08-17 09:50:34', '2021-08-17 09:50:34'),
(760, 1, 4, 'Ms. Kailee Kshlerin V', 1651647504, 'dillan.marks@witting.info', '+19315429163', 'General Member', '1986-09-24', '2021-08-17 09:50:34', '2021-08-17 09:50:34'),
(761, 5, 16, 'Myrl Mitchell', 1927988157, 'malvina40@yahoo.com', '+15098254613', 'Probationary Member', '1998-07-26', '2021-08-17 09:50:34', '2021-08-17 09:50:34'),
(762, 8, 16, 'Ms. Annabelle Thompson III', 1579178482, 'ekozey@nicolas.com', '+12837703165', 'General Member', '1999-09-22', '2021-08-17 09:50:34', '2021-08-17 09:50:34'),
(763, 3, 6, 'Jerrod Wiegand', 1968932656, 'anahi.hane@hotmail.com', '+16059013060', 'General Member', '1993-05-25', '2021-08-17 09:50:34', '2021-08-17 09:50:34'),
(764, 5, 5, 'Gabriella Pollich', 1847249253, 'coralie.trantow@gmail.com', '+17329096363', 'Probationary Member', '2008-06-08', '2021-08-17 09:50:34', '2021-08-17 09:50:34'),
(765, 1, 9, 'Kasandra Nienow', 1844011027, 'stamm.alyce@bernhard.info', '+12814381115', 'Junior Member', '2014-10-04', '2021-08-17 09:50:34', '2021-08-17 09:50:34'),
(766, 4, 16, 'Cleveland Greenfelder', 1687646262, 'sven.trantow@leannon.com', '+16263477056', 'Senior Member', '1992-05-19', '2021-08-17 09:50:34', '2021-08-17 09:50:34'),
(767, 4, 12, 'Immanuel Rosenbaum', 1694752074, 'hermann.chris@harvey.com', '+19290995417', 'General Member', '1971-09-04', '2021-08-17 09:50:35', '2021-08-17 09:50:35'),
(768, 2, 9, 'Heloise Hermiston', 1869930011, 'kweber@dietrich.com', '+15413446745', 'Senior Member', '2016-02-25', '2021-08-17 09:50:35', '2021-08-17 09:50:35'),
(769, 9, 3, 'Prof. Kaylee Kshlerin', 1708942442, 'kassulke.isabelle@muller.com', '+14066312952', 'Junior Member', '1987-11-10', '2021-08-17 09:50:35', '2021-08-17 09:50:35'),
(770, 1, 10, 'Dr. Daisha Hodkiewicz', 1904645407, 'rahul23@gmail.com', '+14757851979', 'Senior Member', '1984-12-02', '2021-08-17 09:50:35', '2021-08-17 09:50:35'),
(771, 4, 14, 'Ms. Magdalen Fisher Jr.', 2023229469, 'bryon66@satterfield.com', '+13319254064', 'Senior Member', '1980-07-12', '2021-08-17 09:50:35', '2021-08-17 09:50:35'),
(772, 4, 7, 'Terence Halvorson', 1815743791, 'lonny.lang@homenick.org', '+15808389173', 'Probationary Member', '1998-01-30', '2021-08-17 09:50:35', '2021-08-17 09:50:35'),
(773, 3, 11, 'Kenya Cormier', 1838763851, 'borer.brad@gmail.com', '+13369334683', 'Junior Member', '1984-10-24', '2021-08-17 09:50:35', '2021-08-17 09:50:35'),
(774, 5, 8, 'Kathleen Renner PhD', 1991807880, 'derrick.brekke@bayer.biz', '+18324924638', 'Probationary Member', '2005-12-09', '2021-08-17 09:50:35', '2021-08-17 09:50:35'),
(775, 3, 14, 'Miss Lilla Conroy', 2051139518, 'fswift@blanda.info', '+16517020415', 'General Member', '1978-10-15', '2021-08-17 09:50:35', '2021-08-17 09:50:35'),
(776, 7, 5, 'Haskell Windler MD', 1896707136, 'jerde.rae@langworth.biz', '+14800508698', 'Senior Member', '2002-02-14', '2021-08-17 09:50:35', '2021-08-17 09:50:35'),
(777, 9, 3, 'Daniella Halvorson', 1928953892, 'abernathy.sally@luettgen.info', '+14300771649', 'Junior Member', '2020-06-15', '2021-08-17 09:50:35', '2021-08-17 09:50:35'),
(778, 2, 4, 'Pasquale O\'Connell', 1898106068, 'pondricka@gmail.com', '+12315990634', 'Junior Member', '1985-11-14', '2021-08-17 09:50:35', '2021-08-17 09:50:35'),
(779, 7, 12, 'Edmund Davis', 1580187054, 'odessa.olson@gmail.com', '+15036213812', 'General Member', '1987-05-01', '2021-08-17 09:50:35', '2021-08-17 09:50:35'),
(780, 1, 4, 'Dr. Mitchell Ortiz DVM', 1759658773, 'delilah27@hotmail.com', '+17035609401', 'Junior Member', '2007-03-05', '2021-08-17 09:50:35', '2021-08-17 09:50:35'),
(781, 9, 15, 'Robin Rohan PhD', 2079781364, 'beverly41@paucek.net', '+14802647064', 'Senior Member', '2007-04-01', '2021-08-17 09:50:35', '2021-08-17 09:50:35'),
(782, 9, 3, 'Ms. Lexi McClure Sr.', 1989595294, 'jaskolski.stephanie@glover.com', '+13865360415', 'Junior Member', '1986-09-21', '2021-08-17 09:50:35', '2021-08-17 09:50:35'),
(783, 4, 10, 'Dr. Viviane Kemmer', 1878140743, 'kemmer.sean@lubowitz.info', '+14757047603', 'Senior Member', '1987-09-04', '2021-08-17 09:50:35', '2021-08-17 09:50:35'),
(784, 5, 10, 'Mr. Nathaniel Swaniawski', 1674501156, 'cassandra.feeney@yahoo.com', '+14587056637', 'General Member', '2019-09-27', '2021-08-17 09:50:35', '2021-08-17 09:50:35'),
(785, 7, 3, 'Emery Bailey', 1794349023, 'mariana.glover@kshlerin.com', '+13079831215', 'Junior Member', '2008-10-09', '2021-08-17 09:50:35', '2021-08-17 09:50:35'),
(786, 8, 9, 'Prof. Edmund Dare', 1914717337, 'morissette.shayna@hotmail.com', '+16026665758', 'Senior Member', '1983-11-28', '2021-08-17 09:50:35', '2021-08-17 09:50:35'),
(787, 9, 5, 'Mr. Colin Weissnat III', 1761956995, 'pparisian@hotmail.com', '+12790271375', 'Probationary Member', '1985-10-03', '2021-08-17 09:50:36', '2021-08-17 09:50:36'),
(788, 4, 8, 'Miss Leola Lakin DVM', 1600169975, 'mann.gina@quigley.biz', '+17815404457', 'Junior Member', '1987-05-03', '2021-08-17 09:50:36', '2021-08-17 09:50:36'),
(789, 7, 8, 'Vickie Roob', 1536082303, 'schimmel.josianne@yahoo.com', '+14071337827', 'Senior Member', '2020-07-22', '2021-08-17 09:50:36', '2021-08-17 09:50:36'),
(790, 5, 12, 'William Funk MD', 1990529286, 'schowalter.lura@nienow.info', '+15808574621', 'General Member', '1989-11-05', '2021-08-17 09:50:36', '2021-08-17 09:50:36'),
(791, 9, 13, 'Dr. Roxane Nikolaus I', 1563351403, 'hessel.dewayne@hotmail.com', '+19067601262', 'Probationary Member', '2006-09-04', '2021-08-17 09:50:36', '2021-08-17 09:50:36'),
(792, 1, 11, 'Winston Nicolas', 1599228500, 'makenzie06@stoltenberg.com', '+19287653239', 'Junior Member', '2012-12-09', '2021-08-17 09:50:36', '2021-08-17 09:50:36'),
(793, 7, 16, 'Doyle Murazik', 1501245841, 'cleve48@yahoo.com', '+13863478070', 'Junior Member', '2006-05-07', '2021-08-17 09:50:36', '2021-08-17 09:50:36'),
(794, 1, 8, 'Franco Davis', 1652449309, 'dhansen@yahoo.com', '+17200405279', 'Senior Member', '2020-10-14', '2021-08-17 09:50:36', '2021-08-17 09:50:36'),
(795, 5, 5, 'Rebekah Kiehn', 1826830993, 'maryam57@abshire.com', '+16306959061', 'General Member', '2011-01-11', '2021-08-17 09:50:36', '2021-08-17 09:50:36'),
(796, 6, 6, 'Ruthe Gulgowski Jr.', 1793981171, 'brown.antwon@hotmail.com', '+13513677016', 'Probationary Member', '2000-11-30', '2021-08-17 09:50:36', '2021-08-17 09:50:36'),
(797, 2, 13, 'Prof. Jaleel Bailey', 1742574348, 'torphy.katlynn@gmail.com', '+19285158488', 'Senior Member', '2006-05-01', '2021-08-17 09:50:36', '2021-08-17 09:50:36'),
(798, 9, 4, 'Carleton Veum', 1951253991, 'lorena.boehm@yahoo.com', '+15410891574', 'General Member', '1988-05-20', '2021-08-17 09:50:36', '2021-08-17 09:50:36'),
(799, 7, 16, 'Mr. Monserrate Lang DVM', 1557111475, 'elva97@gmail.com', '+12349941131', 'Junior Member', '2008-12-25', '2021-08-17 09:50:36', '2021-08-17 09:50:36'),
(800, 7, 3, 'Mackenzie Senger', 1732686209, 'sylvia00@hotmail.com', '+12768770595', 'Junior Member', '1982-08-29', '2021-08-17 09:50:36', '2021-08-17 09:50:36'),
(801, 1, 11, 'Dr. Krystel Jaskolski II', 1905132770, 'zemard@yahoo.com', '+15594877514', 'General Member', '1976-02-07', '2021-08-17 09:50:36', '2021-08-17 09:50:36'),
(802, 7, 6, 'Rey Turcotte I', 1527495512, 'langworth.dean@hotmail.com', '+19255054504', 'General Member', '2006-12-17', '2021-08-17 09:50:36', '2021-08-17 09:50:36'),
(803, 9, 12, 'Dr. Oran Sporer MD', 1513385641, 'jalyn02@wiegand.net', '+18786238354', 'Junior Member', '2014-09-29', '2021-08-17 09:50:36', '2021-08-17 09:50:36'),
(804, 1, 9, 'Katrine Ritchie', 1963635310, 'madalyn10@gmail.com', '+18574651790', 'Probationary Member', '2016-05-11', '2021-08-17 09:50:36', '2021-08-17 09:50:36'),
(805, 6, 4, 'Lauretta Franecki', 1599299010, 'jada23@bosco.com', '+19412430652', 'Junior Member', '2009-02-21', '2021-08-17 09:50:36', '2021-08-17 09:50:36'),
(806, 1, 1, 'Miss Leda Stamm', 2080325574, 'myron.mcclure@yahoo.com', '+17752470040', 'Probationary Member', '1979-01-09', '2021-08-17 09:50:36', '2021-08-17 09:50:36'),
(807, 7, 4, 'Heloise Jenkins V', 1838517980, 'ortiz.jayde@hotmail.com', '+17631761115', 'Junior Member', '2005-05-12', '2021-08-17 09:50:36', '2021-08-17 09:50:36'),
(808, 3, 4, 'Laverne Brown MD', 1615717189, 'gaylord.chadrick@yahoo.com', '+17579573390', 'General Member', '1989-04-02', '2021-08-17 09:50:36', '2021-08-17 09:50:36'),
(809, 6, 11, 'Jazmyn Yost', 1816267159, 'ressie.ferry@gmail.com', '+13021256545', 'Senior Member', '1979-05-27', '2021-08-17 09:50:36', '2021-08-17 09:50:36'),
(810, 6, 16, 'Lizzie Haley', 2026922575, 'gpagac@yahoo.com', '+12055563533', 'General Member', '1985-02-26', '2021-08-17 09:50:36', '2021-08-17 09:50:36'),
(811, 7, 7, 'Mazie Brown', 2061901218, 'wmetz@hotmail.com', '+14426726124', 'Senior Member', '1992-11-30', '2021-08-17 09:50:36', '2021-08-17 09:50:36'),
(812, 5, 7, 'Kenton Kerluke PhD', 1796568640, 'tgreen@gmail.com', '+18289796383', 'General Member', '1997-09-29', '2021-08-17 09:50:36', '2021-08-17 09:50:36'),
(813, 5, 15, 'Rosie Haley', 2086100065, 'mazie23@lockman.org', '+14789692654', 'Senior Member', '2010-08-23', '2021-08-17 09:50:36', '2021-08-17 09:50:36'),
(814, 6, 14, 'Leone Kessler', 2072235799, 'padberg.javonte@gmail.com', '+16783190640', 'Senior Member', '2001-09-16', '2021-08-17 09:50:36', '2021-08-17 09:50:36'),
(815, 2, 10, 'Zora Hansen', 1846119210, 'mosciski.dorcas@jakubowski.net', '+18507277850', 'Senior Member', '1998-10-13', '2021-08-17 09:50:36', '2021-08-17 09:50:36'),
(816, 4, 4, 'Kole Bahringer', 1613549599, 'jacobs.danny@rippin.net', '+15074979369', 'Senior Member', '2019-03-17', '2021-08-17 09:50:36', '2021-08-17 09:50:36'),
(817, 5, 1, 'Chadd Flatley', 1977242467, 'ghermann@ryan.info', '+19207962891', 'General Member', '1977-10-01', '2021-08-17 09:50:36', '2021-08-17 09:50:36'),
(818, 6, 2, 'Mrs. Carlee Carroll V', 1782474807, 'tabitha.stamm@mckenzie.com', '+17658701808', 'Senior Member', '1984-09-12', '2021-08-17 09:50:37', '2021-08-17 09:50:37'),
(819, 8, 13, 'Royal Altenwerth', 1999616456, 'wlangosh@grimes.biz', '+15511698527', 'Junior Member', '2006-02-07', '2021-08-17 09:50:37', '2021-08-17 09:50:37'),
(820, 6, 1, 'Jordan Ruecker', 1562364970, 'schimmel.abdul@goldner.com', '+19347029939', 'Junior Member', '1973-07-13', '2021-08-17 09:50:37', '2021-08-17 09:50:37'),
(821, 1, 8, 'Cedrick Beier', 2015232861, 'hoeger.rodolfo@hotmail.com', '+13190590897', 'Probationary Member', '1982-06-18', '2021-08-17 09:50:37', '2021-08-17 09:50:37'),
(822, 9, 4, 'Travon Emmerich', 2073905636, 'chanelle89@hotmail.com', '+12026367600', 'Probationary Member', '1982-01-09', '2021-08-17 09:50:37', '2021-08-17 09:50:37'),
(823, 6, 6, 'Dr. Kole Lakin MD', 1995398120, 'audreanne.blick@hotmail.com', '+17867347327', 'General Member', '2021-01-02', '2021-08-17 09:50:37', '2021-08-17 09:50:37'),
(824, 8, 4, 'Franz Kozey', 2094395313, 'maci66@streich.info', '+15713345867', 'Senior Member', '2007-01-16', '2021-08-17 09:50:37', '2021-08-17 09:50:37'),
(825, 8, 4, 'Dr. Nelson Kling', 1568640450, 'toy.juana@hotmail.com', '+19805446746', 'Junior Member', '1987-01-17', '2021-08-17 09:50:37', '2021-08-17 09:50:37'),
(826, 2, 15, 'Antonina Windler', 1516918392, 'marty.mcdermott@hickle.biz', '+17747089888', 'Senior Member', '1973-08-20', '2021-08-17 09:50:37', '2021-08-17 09:50:37'),
(827, 3, 10, 'Maurice Lakin Sr.', 2077511892, 'breitenberg.noe@hyatt.net', '+18629097710', 'Senior Member', '2004-05-13', '2021-08-17 09:50:37', '2021-08-17 09:50:37'),
(828, 4, 8, 'Destiney Kunze Sr.', 2020137918, 'devan.sipes@gottlieb.com', '+16506084253', 'Junior Member', '1984-09-07', '2021-08-17 09:50:37', '2021-08-17 09:50:37'),
(829, 5, 5, 'Julia Zemlak', 1597564522, 'rhea.eichmann@yost.info', '+12837570163', 'Senior Member', '1981-07-02', '2021-08-17 09:50:37', '2021-08-17 09:50:37'),
(830, 9, 5, 'Fred Huel', 1688774356, 'wyman.tristian@ortiz.com', '+12480650425', 'General Member', '2011-09-15', '2021-08-17 09:50:37', '2021-08-17 09:50:37'),
(831, 7, 12, 'Mr. Chase Swift', 1509681012, 'ruecker.brennan@yahoo.com', '+14849459111', 'Junior Member', '1984-05-25', '2021-08-17 09:50:37', '2021-08-17 09:50:37'),
(832, 7, 10, 'Mrs. Asia Kling', 1909618444, 'parisian.angelita@yahoo.com', '+14787463144', 'Junior Member', '2014-05-18', '2021-08-17 09:50:37', '2021-08-17 09:50:37'),
(833, 5, 4, 'Estevan Zemlak', 1573560423, 'gislason.jarret@yahoo.com', '+19478541698', 'Probationary Member', '2009-08-19', '2021-08-17 09:50:37', '2021-08-17 09:50:37'),
(834, 9, 8, 'Harvey Conroy III', 2059077541, 'ismith@kulas.com', '+19706310796', 'General Member', '2011-03-04', '2021-08-17 09:50:37', '2021-08-17 09:50:37'),
(835, 9, 13, 'Trystan Bernhard', 2022948636, 'donavon43@hotmail.com', '+19349981896', 'Probationary Member', '1979-02-16', '2021-08-17 09:50:37', '2021-08-17 09:50:37'),
(836, 2, 10, 'Prof. Billie Barrows III', 2017275065, 'kkunze@hotmail.com', '+17439972881', 'Senior Member', '2005-09-29', '2021-08-17 09:50:37', '2021-08-17 09:50:37'),
(837, 3, 8, 'Boris McLaughlin', 1879232207, 'ottis.jast@purdy.com', '+16827249257', 'Junior Member', '1977-02-10', '2021-08-17 09:50:37', '2021-08-17 09:50:37'),
(838, 2, 3, 'Mr. Miguel Pfannerstill', 1631179564, 'hobart21@yahoo.com', '+12318539120', 'Probationary Member', '2013-07-20', '2021-08-17 09:50:37', '2021-08-17 09:50:37'),
(839, 4, 14, 'Lucas Collins IV', 1532238289, 'ullrich.tod@yahoo.com', '+16785765212', 'Junior Member', '1983-09-16', '2021-08-17 09:50:38', '2021-08-17 09:50:38'),
(840, 5, 4, 'Mya Erdman', 1699801884, 'ibradtke@gmail.com', '+13169526997', 'Junior Member', '1979-07-11', '2021-08-17 09:50:38', '2021-08-17 09:50:38'),
(841, 9, 12, 'Prof. Kaitlin Kohler Jr.', 1979673226, 'sammie55@torp.biz', '+12535227075', 'Junior Member', '2001-05-17', '2021-08-17 09:50:38', '2021-08-17 09:50:38'),
(842, 6, 3, 'Magnolia Considine', 1592330452, 'pasquale52@champlin.info', '+18726966964', 'Junior Member', '1978-10-25', '2021-08-17 09:50:38', '2021-08-17 09:50:38'),
(843, 7, 3, 'Mrs. Valerie Sawayn PhD', 1932306787, 'schroeder.louie@dicki.org', '+12812324296', 'Probationary Member', '1978-01-20', '2021-08-17 09:50:38', '2021-08-17 09:50:38'),
(844, 5, 12, 'Patsy Volkman', 1695249845, 'abernier@hotmail.com', '+12724835346', 'Probationary Member', '2015-01-13', '2021-08-17 09:50:38', '2021-08-17 09:50:38'),
(845, 6, 5, 'Chelsie Shanahan', 1846120297, 'krystina73@gmail.com', '+18284567467', 'General Member', '2001-09-26', '2021-08-17 09:50:38', '2021-08-17 09:50:38'),
(846, 3, 7, 'Alanis Nolan', 1884623429, 'labbott@hartmann.com', '+18287750201', 'Senior Member', '1974-07-09', '2021-08-17 09:50:38', '2021-08-17 09:50:38'),
(847, 7, 3, 'Alex Frami', 2022074263, 'weissnat.dexter@howe.com', '+14580023598', 'Probationary Member', '2021-07-05', '2021-08-17 09:50:38', '2021-08-17 09:50:38'),
(848, 4, 13, 'Prof. Aubree Ebert Jr.', 2001474025, 'friesen.evalyn@oconnell.com', '+16369605875', 'Junior Member', '2021-07-15', '2021-08-17 09:50:38', '2021-08-17 09:50:38'),
(849, 3, 10, 'Brock Moore V', 1528416123, 'mckenzie.schroeder@gmail.com', '+18580538152', 'General Member', '1995-05-07', '2021-08-17 09:50:38', '2021-08-17 09:50:38'),
(850, 5, 16, 'Tatyana Daugherty', 1777928480, 'martine74@gorczany.com', '+16780787814', 'Probationary Member', '2006-10-14', '2021-08-17 09:50:38', '2021-08-17 09:50:38'),
(851, 5, 15, 'Mr. Toy Pfeffer', 1748526747, 'alberto.quitzon@gmail.com', '+16622561127', 'Probationary Member', '2017-11-25', '2021-08-17 09:50:38', '2021-08-17 09:50:38'),
(852, 4, 9, 'Modesto Schinner', 1821575544, 'martina86@kassulke.com', '+14342765889', 'General Member', '2016-04-26', '2021-08-17 09:50:38', '2021-08-17 09:50:38'),
(853, 7, 7, 'Zackary Orn', 1947468920, 'brennan.glover@gmail.com', '+15070028383', 'Junior Member', '1992-11-16', '2021-08-17 09:50:38', '2021-08-17 09:50:38'),
(854, 4, 16, 'Jaime Rippin', 2048984051, 'jlesch@wilkinson.org', '+12255639632', 'Probationary Member', '1994-04-11', '2021-08-17 09:50:38', '2021-08-17 09:50:38'),
(855, 4, 9, 'Ms. Gwendolyn Kreiger DDS', 1632430725, 'lesly36@rice.org', '+16460595438', 'General Member', '1971-04-10', '2021-08-17 09:50:38', '2021-08-17 09:50:38'),
(856, 4, 4, 'Breanna Block', 2045772592, 'christiansen.alycia@yahoo.com', '+13869778944', 'Senior Member', '2007-04-09', '2021-08-17 09:50:38', '2021-08-17 09:50:38'),
(857, 7, 11, 'Mrs. Verdie Langworth', 1726666841, 'kutch.kristopher@gmail.com', '+12815402656', 'General Member', '1987-05-03', '2021-08-17 09:50:38', '2021-08-17 09:50:38'),
(858, 4, 11, 'Elijah Swift DVM', 1805905949, 'volkman.chandler@yahoo.com', '+19564185081', 'Probationary Member', '1970-09-24', '2021-08-17 09:50:38', '2021-08-17 09:50:38'),
(859, 4, 10, 'Grover Terry', 1802948121, 'schuster.emmanuel@runolfsson.info', '+12128451301', 'Senior Member', '1974-07-22', '2021-08-17 09:50:38', '2021-08-17 09:50:38'),
(860, 1, 16, 'Ms. Kelly Baumbach', 1761386811, 'aparker@zboncak.com', '+19149068196', 'General Member', '1977-10-10', '2021-08-17 09:50:38', '2021-08-17 09:50:38'),
(861, 8, 12, 'Mrs. Blanche VonRueden', 2078488682, 'tracy.nolan@gibson.biz', '+17248521533', 'Probationary Member', '1971-03-01', '2021-08-17 09:50:38', '2021-08-17 09:50:38'),
(862, 3, 10, 'Mrs. Antoinette Walter I', 1526165871, 'kkuhic@gmail.com', '+17852316253', 'Junior Member', '1997-09-01', '2021-08-17 09:50:38', '2021-08-17 09:50:38'),
(863, 5, 2, 'Dr. Caleb Leffler', 1788968459, 'tara.marvin@schmeler.com', '+16784643578', 'Probationary Member', '2000-05-31', '2021-08-17 09:50:38', '2021-08-17 09:50:38'),
(864, 2, 10, 'Vincenza Leannon', 1836798313, 'arlo11@schneider.com', '+19840228602', 'General Member', '2002-01-09', '2021-08-17 09:50:39', '2021-08-17 09:50:39'),
(865, 7, 4, 'Dr. Sterling Bruen III', 1643270526, 'colleen.raynor@wunsch.com', '+12056256162', 'Junior Member', '1974-12-01', '2021-08-17 09:50:39', '2021-08-17 09:50:39'),
(866, 2, 9, 'Pamela Bernhard', 2093537022, 'rodriguez.leanne@gmail.com', '+19163002189', 'General Member', '1988-01-13', '2021-08-17 09:50:39', '2021-08-17 09:50:39'),
(867, 3, 12, 'Trent Kessler', 1972308562, 'itzel16@yahoo.com', '+12254732823', 'Junior Member', '2020-07-03', '2021-08-17 09:50:39', '2021-08-17 09:50:39'),
(868, 7, 7, 'Ellen Collins DVM', 1802979267, 'abeer@hotmail.com', '+14704139881', 'Probationary Member', '1982-06-26', '2021-08-17 09:50:39', '2021-08-17 09:50:39'),
(869, 7, 15, 'Mr. Julio Marks IV', 1905870405, 'daniel.dejah@cummings.net', '+13867442928', 'Senior Member', '1994-02-20', '2021-08-17 09:50:39', '2021-08-17 09:50:39'),
(870, 7, 10, 'Dr. Kristoffer Hahn', 1602753657, 'rosalee64@hotmail.com', '+17540621838', 'Junior Member', '1996-10-23', '2021-08-17 09:50:39', '2021-08-17 09:50:39'),
(871, 6, 6, 'Maud Toy', 1564973366, 'homenick.gregoria@jacobs.com', '+13368502181', 'Junior Member', '1989-11-01', '2021-08-17 09:50:39', '2021-08-17 09:50:39'),
(872, 9, 12, 'Roderick Monahan', 2095370613, 'lisette55@gmail.com', '+19365205662', 'Senior Member', '2012-06-12', '2021-08-17 09:50:39', '2021-08-17 09:50:39'),
(873, 4, 11, 'Cora Emard', 1873623500, 'ned.gislason@klocko.com', '+14582605212', 'Senior Member', '2016-03-31', '2021-08-17 09:50:39', '2021-08-17 09:50:39'),
(874, 2, 7, 'Juvenal Lakin', 1610451310, 'qgoyette@yahoo.com', '+19868587777', 'Probationary Member', '1987-02-01', '2021-08-17 09:50:39', '2021-08-17 09:50:39'),
(875, 1, 14, 'Ismael Hudson', 1966761426, 'crawford.steuber@hotmail.com', '+19891161489', 'Senior Member', '1971-02-20', '2021-08-17 09:50:39', '2021-08-17 09:50:39'),
(876, 2, 1, 'Eloise Veum', 1668707876, 'zakary.johns@yahoo.com', '+16260023421', 'Probationary Member', '2001-09-10', '2021-08-17 09:50:39', '2021-08-17 09:50:39'),
(877, 8, 15, 'Ruben Hauck', 1796281239, 'wcorkery@heller.com', '+12608349106', 'Senior Member', '1994-05-20', '2021-08-17 09:50:39', '2021-08-17 09:50:39'),
(878, 9, 15, 'Lisa King', 1929550758, 'jeramy71@howe.net', '+12032174194', 'Probationary Member', '2000-08-22', '2021-08-17 09:50:39', '2021-08-17 09:50:39'),
(879, 1, 5, 'Celestine Greenholt', 2002905997, 'devan65@yahoo.com', '+12726064498', 'Probationary Member', '1987-01-22', '2021-08-17 09:50:39', '2021-08-17 09:50:39'),
(880, 9, 5, 'Sydni Jakubowski', 1852855845, 'kelley.simonis@steuber.com', '+17431769158', 'Junior Member', '1981-02-16', '2021-08-17 09:50:39', '2021-08-17 09:50:39'),
(881, 9, 6, 'Ottilie Casper', 2013161849, 'charles.lehner@stiedemann.com', '+16579395704', 'Probationary Member', '2010-05-09', '2021-08-17 09:50:39', '2021-08-17 09:50:39'),
(882, 1, 8, 'Dr. Melvina Watsica', 2001322229, 'annamae.mertz@gmail.com', '+13605115830', 'Probationary Member', '1986-01-02', '2021-08-17 09:50:39', '2021-08-17 09:50:39'),
(883, 2, 3, 'Osborne Shields', 1543960999, 'johnpaul.oberbrunner@tillman.com', '+14252570676', 'Probationary Member', '1981-01-10', '2021-08-17 09:50:39', '2021-08-17 09:50:39'),
(884, 3, 4, 'Monte Sauer', 1519263649, 'baby.zieme@gmail.com', '+16507683065', 'General Member', '1992-04-14', '2021-08-17 09:50:39', '2021-08-17 09:50:39'),
(885, 6, 7, 'Adalberto Klocko V', 1839326136, 'raynor.rigoberto@gmail.com', '+14321768877', 'Senior Member', '1985-01-06', '2021-08-17 09:50:39', '2021-08-17 09:50:39'),
(886, 6, 7, 'Tyshawn Parisian I', 1981507294, 'deron.wintheiser@gmail.com', '+14692193037', 'Junior Member', '2004-03-10', '2021-08-17 09:50:39', '2021-08-17 09:50:39'),
(887, 9, 4, 'Prof. Alexis Satterfield', 1852371756, 'benny.hettinger@yahoo.com', '+15596749074', 'General Member', '2004-07-10', '2021-08-17 09:50:39', '2021-08-17 09:50:39'),
(888, 5, 13, 'Mara Farrell', 1929978139, 'holly15@robel.com', '+18186783914', 'Junior Member', '1997-01-17', '2021-08-17 09:50:39', '2021-08-17 09:50:39'),
(889, 4, 12, 'Jodie Pfeffer IV', 1619096582, 'pagac.ted@parisian.com', '+14801962152', 'General Member', '1973-08-05', '2021-08-17 09:50:39', '2021-08-17 09:50:39');
INSERT INTO `members` (`m_id`, `club_id`, `dept_id`, `name`, `nsu_id`, `email`, `phone_num`, `position`, `join_date`, `created_at`, `updated_at`) VALUES
(890, 7, 3, 'Mr. Dedrick Kuhn II', 1641443804, 'madaline.parisian@hegmann.info', '+19475980394', 'Senior Member', '1972-06-27', '2021-08-17 09:50:39', '2021-08-17 09:50:39'),
(891, 5, 12, 'Dr. Chelsie Jerde IV', 1774063431, 'stacy.treutel@denesik.com', '+19312822901', 'General Member', '1988-11-07', '2021-08-17 09:50:39', '2021-08-17 09:50:39'),
(892, 7, 11, 'Andy Brown II', 1644799181, 'bins.jamison@mcclure.com', '+13415007971', 'General Member', '2014-08-13', '2021-08-17 09:50:39', '2021-08-17 09:50:39'),
(893, 7, 12, 'Scottie Gottlieb', 1517450070, 'edwina82@yahoo.com', '+19062530772', 'General Member', '1991-04-30', '2021-08-17 09:50:39', '2021-08-17 09:50:39'),
(894, 5, 14, 'Freda Howell I', 1972733650, 'enrique93@hermann.com', '+17573769368', 'Senior Member', '1984-10-24', '2021-08-17 09:50:39', '2021-08-17 09:50:39'),
(895, 8, 10, 'Mr. Vernon Krajcik I', 1637632317, 'omcdermott@mann.org', '+17140378865', 'Probationary Member', '1980-02-29', '2021-08-17 09:50:39', '2021-08-17 09:50:39'),
(896, 8, 14, 'Dr. Helen Russel', 1943175993, 'hmarks@hansen.com', '+14849361654', 'Junior Member', '1991-02-10', '2021-08-17 09:50:40', '2021-08-17 09:50:40'),
(897, 6, 13, 'Dr. Gregory Konopelski Sr.', 1990729818, 'iweimann@durgan.biz', '+19713545314', 'General Member', '1974-05-23', '2021-08-17 09:50:40', '2021-08-17 09:50:40'),
(898, 8, 14, 'Forest Kuphal Jr.', 1956863990, 'jacynthe82@hotmail.com', '+13374450803', 'Probationary Member', '2002-08-06', '2021-08-17 09:50:40', '2021-08-17 09:50:40'),
(900, 2, 3, 'Royal Schulist', 1687342103, 'jamarcus.gleason@marquardt.com', '+12158512921', 'Junior Member', '1973-07-20', '2021-08-17 09:50:40', '2021-08-17 09:50:40'),
(901, 2, 6, 'Gilbert Graham', 1516796475, 'beryl.oreilly@konopelski.com', '+13257762313', 'Junior Member', '2001-10-11', '2021-08-17 09:50:40', '2021-08-17 09:50:40'),
(902, 8, 11, 'Alyce Green', 1645834232, 'maxine72@gmail.com', '+17471053974', 'General Member', '1991-10-29', '2021-08-17 09:50:40', '2021-08-17 09:50:40'),
(903, 9, 5, 'Jennifer Crona', 1562575023, 'raymundo.bergstrom@barton.com', '+16612788371', 'Senior Member', '1982-09-07', '2021-08-17 09:50:40', '2021-08-17 09:50:40'),
(904, 6, 5, 'Turner O\'Keefe', 2033728418, 'mgerlach@gmail.com', '+14802083564', 'Probationary Member', '2012-04-11', '2021-08-17 09:50:40', '2021-08-17 09:50:40'),
(905, 8, 7, 'Miss Makenzie Crist', 1844570927, 'quigley.cheyanne@gmail.com', '+15052544303', 'Junior Member', '1988-05-31', '2021-08-17 09:50:40', '2021-08-17 09:50:40'),
(906, 6, 13, 'Rubye Nitzsche', 1966837259, 'marcus.renner@yahoo.com', '+18544219111', 'Junior Member', '1975-06-13', '2021-08-17 09:50:40', '2021-08-17 09:50:40'),
(907, 8, 5, 'Dr. Landen Shields', 1984816585, 'koelpin.jefferey@gmail.com', '+16185685613', 'Junior Member', '2016-05-18', '2021-08-17 09:50:40', '2021-08-17 09:50:40'),
(908, 1, 15, 'Minnie Swaniawski', 1537748000, 'rahul53@hotmail.com', '+12569178705', 'Probationary Member', '1983-04-05', '2021-08-17 09:50:40', '2021-08-17 09:50:40'),
(909, 1, 13, 'Sophia Satterfield', 2006142082, 'stamm.kennedi@gerhold.info', '+15206155772', 'Probationary Member', '1973-01-01', '2021-08-17 09:50:40', '2021-08-17 09:50:40'),
(910, 6, 16, 'Nathaniel Beahan', 1728331085, 'towne.vito@hotmail.com', '+12522443614', 'Probationary Member', '2002-04-29', '2021-08-17 09:50:40', '2021-08-17 09:50:40'),
(911, 6, 7, 'Dr. Jarrett Upton', 1857906939, 'fay.richmond@yahoo.com', '+16465926755', 'Junior Member', '1974-10-10', '2021-08-17 09:50:40', '2021-08-17 09:50:40'),
(912, 1, 7, 'Adonis McCullough', 1942429498, 'yherman@hotmail.com', '+18322417467', 'General Member', '1990-07-27', '2021-08-17 09:50:40', '2021-08-17 09:50:40'),
(913, 6, 10, 'Theodora Smitham', 1739503452, 'bins.janis@oberbrunner.com', '+17376939217', 'General Member', '1973-09-15', '2021-08-17 09:50:40', '2021-08-17 09:50:40'),
(914, 1, 5, 'Mr. Demario Stanton', 1565154363, 'mhuel@hotmail.com', '+15635159043', 'Junior Member', '1987-04-01', '2021-08-17 09:50:40', '2021-08-17 09:50:40'),
(915, 9, 5, 'Ms. Rosina Hammes II', 2047816613, 'barbara56@yahoo.com', '+15414158701', 'Probationary Member', '1976-08-14', '2021-08-17 09:50:40', '2021-08-17 09:50:40'),
(916, 2, 11, 'Toni Abbott', 2072484069, 'ykiehn@gmail.com', '+13464070835', 'General Member', '1986-04-04', '2021-08-17 09:50:40', '2021-08-17 09:50:40'),
(917, 7, 2, 'Amir Farrell', 2050452018, 'patience91@gmail.com', '+14842784181', 'Junior Member', '2016-12-25', '2021-08-17 09:50:40', '2021-08-17 09:50:40'),
(918, 3, 4, 'Dr. Braden O\'Hara II', 1699290244, 'albina.glover@gmail.com', '+18148754676', 'Junior Member', '2015-10-15', '2021-08-17 09:50:40', '2021-08-17 09:50:40'),
(919, 7, 16, 'Antonette Larson', 1628542574, 'blangosh@gmail.com', '+15861021400', 'Senior Member', '2004-05-02', '2021-08-17 09:50:41', '2021-08-17 09:50:41'),
(920, 8, 9, 'Roscoe Haley', 1886849914, 'nreichert@torp.com', '+17578852907', 'General Member', '1971-10-23', '2021-08-17 09:50:41', '2021-08-17 09:50:41'),
(921, 6, 3, 'Josianne Sanford PhD', 1731944590, 'jeff01@schneider.info', '+19407645060', 'Junior Member', '1972-07-30', '2021-08-17 09:50:41', '2021-08-17 09:50:41'),
(922, 1, 13, 'Miss Adelle Becker', 1734337713, 'frederic.erdman@gerhold.com', '+15024144562', 'Senior Member', '1992-02-03', '2021-08-17 09:50:41', '2021-08-17 09:50:41'),
(923, 8, 3, 'Jacky Veum', 1563535346, 'thartmann@blick.net', '+16829235273', 'Probationary Member', '2009-06-13', '2021-08-17 09:50:41', '2021-08-17 09:50:41'),
(924, 1, 9, 'Miracle Hartmann', 1531892708, 'schamberger.carolyne@fadel.com', '+15649881870', 'Senior Member', '2019-11-15', '2021-08-17 09:50:41', '2021-08-17 09:50:41'),
(925, 9, 6, 'Dr. Helmer Kemmer IV', 1952563947, 'rwaters@mcclure.com', '+18326412961', 'Probationary Member', '2016-05-08', '2021-08-17 09:50:41', '2021-08-17 09:50:41'),
(926, 2, 15, 'Janelle Kuhn DDS', 1653694723, 'carley31@yahoo.com', '+19858311808', 'Junior Member', '1972-04-03', '2021-08-17 09:50:41', '2021-08-17 09:50:41'),
(927, 8, 6, 'Mariana Wisoky', 1756413334, 'kory.wehner@schneider.com', '+18565141369', 'Probationary Member', '1994-09-06', '2021-08-17 09:50:41', '2021-08-17 09:50:41'),
(928, 6, 2, 'Teresa Kshlerin DDS', 1886965127, 'buddy59@hotmail.com', '+15673510337', 'General Member', '1977-02-03', '2021-08-17 09:50:41', '2021-08-17 09:50:41'),
(929, 1, 1, 'Dr. Efren Lebsack', 1956254640, 'ddurgan@hotmail.com', '+18042858892', 'Probationary Member', '1983-07-12', '2021-08-17 09:50:41', '2021-08-17 09:50:41'),
(930, 7, 13, 'Prof. Garrison Grant II', 1601521942, 'schamberger.jasmin@mcdermott.com', '+19298826537', 'Senior Member', '2011-10-08', '2021-08-17 09:50:41', '2021-08-17 09:50:41'),
(931, 4, 13, 'Belle Roob', 1950687936, 'cormier.ida@feeney.org', '+13517736842', 'Senior Member', '2020-11-23', '2021-08-17 09:50:41', '2021-08-17 09:50:41'),
(932, 6, 9, 'Mallie Pagac', 1946814519, 'anahi16@murphy.biz', '+16696610293', 'Senior Member', '2009-03-31', '2021-08-17 09:50:41', '2021-08-17 09:50:41'),
(933, 9, 14, 'Ms. Augustine McDermott', 1520416894, 'bmccullough@pollich.com', '+12064560856', 'General Member', '2020-03-20', '2021-08-17 09:50:41', '2021-08-17 09:50:41'),
(934, 5, 3, 'Jasper Nitzsche', 1731172649, 'treutel.jarrod@king.org', '+17401763160', 'Probationary Member', '1992-01-29', '2021-08-17 09:50:41', '2021-08-17 09:50:41'),
(935, 6, 13, 'Rashad Roob Jr.', 1849741010, 'jamel.dickinson@hotmail.com', '+19528163155', 'Senior Member', '2000-07-30', '2021-08-17 09:50:41', '2021-08-17 09:50:41'),
(936, 5, 16, 'Hillary Stehr DVM', 1997494419, 'zprice@yahoo.com', '+19093331223', 'Probationary Member', '1979-06-06', '2021-08-17 09:50:41', '2021-08-17 09:50:41'),
(937, 4, 1, 'Adolph Adams Sr.', 1527780113, 'nina00@langosh.com', '+17470451831', 'Senior Member', '1999-11-19', '2021-08-17 09:50:41', '2021-08-17 09:50:41'),
(938, 4, 7, 'Prof. Rashawn Stark Sr.', 1897679077, 'reinger.broderick@yahoo.com', '+12816067344', 'General Member', '1988-09-02', '2021-08-17 09:50:41', '2021-08-17 09:50:41'),
(939, 7, 13, 'Margot Feil', 1856051071, 'fern.thiel@haley.com', '+18130032412', 'Junior Member', '1996-08-15', '2021-08-17 09:50:41', '2021-08-17 09:50:41'),
(940, 4, 14, 'Myrl Bruen', 1965659461, 'raegan38@yahoo.com', '+14351185083', 'General Member', '1992-04-13', '2021-08-17 09:50:41', '2021-08-17 09:50:41'),
(941, 6, 4, 'Denis Greenfelder', 1945910779, 'icarter@gmail.com', '+13616064899', 'General Member', '1986-11-02', '2021-08-17 09:50:41', '2021-08-17 09:50:41'),
(942, 3, 9, 'Kameron Fadel', 1740491706, 'jules.walsh@williamson.net', '+14794874358', 'Senior Member', '1987-10-18', '2021-08-17 09:50:41', '2021-08-17 09:50:41'),
(943, 2, 10, 'Claud Stanton', 2050879122, 'burley58@gibson.biz', '+13607179102', 'Senior Member', '1972-12-18', '2021-08-17 09:50:41', '2021-08-17 09:50:41'),
(944, 8, 5, 'Dr. Lupe Sporer', 1617054652, 'concepcion.weissnat@macejkovic.com', '+13522262367', 'Senior Member', '2020-03-17', '2021-08-17 09:50:41', '2021-08-17 09:50:41'),
(945, 4, 16, 'Dr. Leonora Leannon V', 1995584364, 'toney79@yahoo.com', '+16622163593', 'Probationary Member', '2010-04-15', '2021-08-17 09:50:41', '2021-08-17 09:50:41'),
(946, 2, 1, 'Golden Haley', 1910568810, 'boyer.ethan@keebler.info', '+15396343102', 'General Member', '2015-07-21', '2021-08-17 09:50:41', '2021-08-17 09:50:41'),
(947, 3, 11, 'Uriah Goodwin', 2037927194, 'weimann.maddison@hotmail.com', '+17174075303', 'Probationary Member', '2015-01-19', '2021-08-17 09:50:41', '2021-08-17 09:50:41'),
(948, 9, 15, 'Arno McClure II', 1587299880, 'muller.kaycee@yahoo.com', '+19208987380', 'Probationary Member', '2000-08-26', '2021-08-17 09:50:42', '2021-08-17 09:50:42'),
(949, 4, 9, 'Tierra Schinner', 1770763449, 'adalberto13@strosin.com', '+18578434074', 'Senior Member', '2015-07-11', '2021-08-17 09:50:42', '2021-08-17 09:50:42'),
(950, 5, 9, 'Miss Etha Crist III', 1858805500, 'broderick20@kemmer.net', '+12832136727', 'General Member', '1980-04-10', '2021-08-17 09:50:42', '2021-08-17 09:50:42'),
(951, 1, 9, 'Mr. Verner Mosciski DVM', 1708876673, 'richard41@gmail.com', '+12698752693', 'Senior Member', '2014-10-04', '2021-08-17 09:50:42', '2021-08-17 09:50:42'),
(952, 9, 13, 'Prof. Norwood Fadel IV', 2056179038, 'gwendolyn34@zemlak.com', '+19347434291', 'General Member', '1975-07-27', '2021-08-17 09:50:42', '2021-08-17 09:50:42'),
(953, 2, 3, 'Robb Rath DVM', 1891525938, 'jackson.hackett@gmail.com', '+12562409748', 'General Member', '1990-04-03', '2021-08-17 09:50:42', '2021-08-17 09:50:42'),
(954, 3, 16, 'Joel Ondricka', 1955306946, 'nhahn@hotmail.com', '+14692428221', 'Senior Member', '1974-04-08', '2021-08-17 09:50:42', '2021-08-17 09:50:42'),
(955, 7, 11, 'Isabelle Koelpin', 2023518717, 'tmurazik@yahoo.com', '+19106646936', 'Senior Member', '1979-09-20', '2021-08-17 09:50:42', '2021-08-17 09:50:42'),
(956, 5, 6, 'Prof. Justyn Ankunding Sr.', 1965170479, 'jmoen@boehm.info', '+19106064211', 'Probationary Member', '2010-04-12', '2021-08-17 09:50:42', '2021-08-17 09:50:42'),
(957, 1, 10, 'Prof. Esperanza Zboncak', 1673867590, 'bmosciski@rau.biz', '+14405474959', 'General Member', '2020-12-06', '2021-08-17 09:50:42', '2021-08-17 09:50:42'),
(958, 8, 1, 'Katrina Streich DVM', 2098620190, 'reina69@keebler.org', '+15094643221', 'Probationary Member', '2008-11-01', '2021-08-17 09:50:42', '2021-08-17 09:50:42'),
(959, 6, 11, 'Dorcas Rohan', 1548035257, 'brock24@deckow.com', '+18450176927', 'Junior Member', '1978-01-26', '2021-08-17 09:50:42', '2021-08-17 09:50:42'),
(960, 6, 2, 'Monroe Connelly', 1726704654, 'ignatius99@predovic.com', '+17749828840', 'General Member', '1982-07-10', '2021-08-17 09:50:42', '2021-08-17 09:50:42'),
(961, 6, 4, 'Dr. Nat Williamson II', 1916838498, 'kobe63@schmidt.info', '+16148754599', 'General Member', '1971-05-01', '2021-08-17 09:50:42', '2021-08-17 09:50:42'),
(962, 3, 14, 'Norris Moore', 1562362078, 'lempi38@gmail.com', '+18700814086', 'Junior Member', '1970-09-18', '2021-08-17 09:50:42', '2021-08-17 09:50:42'),
(963, 4, 7, 'Meghan Harris Sr.', 1596762093, 'shaniya87@yahoo.com', '+14349822019', 'Junior Member', '1990-12-14', '2021-08-17 09:50:42', '2021-08-17 09:50:42'),
(964, 7, 3, 'Roman Lebsack', 1844631613, 'franecki.vicente@hotmail.com', '+12838696356', 'Probationary Member', '1978-12-09', '2021-08-17 09:50:42', '2021-08-17 09:50:42'),
(965, 9, 16, 'General Schmeler', 1859171519, 'hailey77@yahoo.com', '+14808267888', 'Junior Member', '1988-01-24', '2021-08-17 09:50:42', '2021-08-17 09:50:42'),
(966, 8, 4, 'Prof. Eve Hill DDS', 1654300624, 'izabella.reichel@hotmail.com', '+13134198873', 'Senior Member', '1986-02-15', '2021-08-17 09:50:42', '2021-08-17 09:50:42'),
(967, 8, 15, 'Vincent Jakubowski', 1999541968, 'laurine.simonis@hermann.com', '+16628219622', 'Junior Member', '2020-05-03', '2021-08-17 09:50:42', '2021-08-17 09:50:42'),
(968, 5, 16, 'Julien Reichel IV', 1606958000, 'arnulfo.mckenzie@wisoky.org', '+16317877623', 'General Member', '2021-08-14', '2021-08-17 09:50:42', '2021-08-17 09:50:42'),
(969, 8, 15, 'Naomie Jacobs', 1604352843, 'pink.mayert@yahoo.com', '+16023345839', 'Junior Member', '1989-10-10', '2021-08-17 09:50:42', '2021-08-17 09:50:42'),
(970, 2, 12, 'Halle Turner', 1527900749, 'malvina.lehner@gmail.com', '+18725357060', 'Probationary Member', '1979-12-28', '2021-08-17 09:50:42', '2021-08-17 09:50:42'),
(971, 6, 1, 'Ubaldo Dickinson IV', 2048420937, 'broderick.kuphal@gmail.com', '+17073777626', 'Senior Member', '1993-01-11', '2021-08-17 09:50:42', '2021-08-17 09:50:42'),
(972, 5, 14, 'Jaeden Stroman II', 2026902528, 'judson.okon@collier.com', '+14782854005', 'Junior Member', '1980-06-03', '2021-08-17 09:50:42', '2021-08-17 09:50:42'),
(973, 1, 7, 'Vernice Kuhic IV', 1758373282, 'katlyn.langworth@gmail.com', '+18309972250', 'General Member', '1989-09-07', '2021-08-17 09:50:42', '2021-08-17 09:50:42'),
(974, 8, 7, 'Adah O\'Reilly', 1842809477, 'iliana.mills@hotmail.com', '+18015885658', 'General Member', '1974-03-18', '2021-08-17 09:50:42', '2021-08-17 09:50:42'),
(975, 1, 3, 'Alayna Heathcote', 2055403583, 'cody64@hessel.org', '+19122831723', 'Senior Member', '2015-05-17', '2021-08-17 09:50:42', '2021-08-17 09:50:42'),
(976, 5, 11, 'Cecil McCullough DVM', 1912968819, 'meda11@gmail.com', '+16283256962', 'Senior Member', '1978-02-28', '2021-08-17 09:50:42', '2021-08-17 09:50:42'),
(977, 8, 11, 'Hailie Jerde', 1648455070, 'helga.mayer@dach.com', '+12603086427', 'Junior Member', '1995-11-14', '2021-08-17 09:50:42', '2021-08-17 09:50:42'),
(978, 3, 1, 'Josianne Herman Sr.', 1935371558, 'schultz.lavada@brekke.com', '+17401825545', 'Junior Member', '1973-08-03', '2021-08-17 09:50:43', '2021-08-17 09:50:43'),
(979, 6, 5, 'Zoie Schultz', 1510438974, 'ambrose.damore@gmail.com', '+14151181509', 'Junior Member', '1992-01-11', '2021-08-17 09:50:43', '2021-08-17 09:50:43'),
(980, 7, 4, 'Cameron Boehm', 1930572611, 'monserrat.breitenberg@stamm.com', '+16419124338', 'General Member', '2010-07-08', '2021-08-17 09:50:43', '2021-08-17 09:50:43'),
(981, 6, 15, 'Darrell Grady', 1839037107, 'tkunze@hotmail.com', '+16015907770', 'Junior Member', '1970-08-17', '2021-08-17 09:50:43', '2021-08-17 09:50:43'),
(982, 5, 16, 'Ms. Claire Gorczany', 1861302178, 'ikrajcik@weissnat.com', '+16519914978', 'Probationary Member', '1995-08-19', '2021-08-17 09:50:43', '2021-08-17 09:50:43'),
(983, 8, 12, 'Laverna Frami', 1692395302, 'macejkovic.kavon@schiller.com', '+13160817170', 'Senior Member', '2014-10-13', '2021-08-17 09:50:43', '2021-08-17 09:50:43'),
(984, 1, 16, 'Mrs. Audreanne Ziemann MD', 1561997954, 'quitzon.rudolph@wuckert.com', '+15744955414', 'Junior Member', '2018-05-24', '2021-08-17 09:50:43', '2021-08-17 09:50:43'),
(985, 3, 5, 'Demario Dickens', 2061248356, 'zieme.stella@homenick.net', '+16235508319', 'General Member', '1971-05-18', '2021-08-17 09:50:43', '2021-08-17 09:50:43'),
(986, 2, 3, 'Catalina Schamberger', 1789097186, 'dooley.rebekah@gmail.com', '+14253625952', 'Junior Member', '1981-09-23', '2021-08-17 09:50:43', '2021-08-17 09:50:43'),
(987, 5, 5, 'Hayley Hettinger', 1895096189, 'shanelle30@abshire.com', '+17818094965', 'Junior Member', '1996-04-16', '2021-08-17 09:50:43', '2021-08-17 09:50:43'),
(988, 2, 16, 'Erick Langosh', 1983192343, 'maximillia23@haley.biz', '+19529664725', 'Junior Member', '2021-07-20', '2021-08-17 09:50:43', '2021-08-17 09:50:43'),
(989, 6, 13, 'Brandon Marks', 2087884000, 'rogahn.amina@hotmail.com', '+18171388236', 'Senior Member', '1975-03-08', '2021-08-17 09:50:43', '2021-08-17 09:50:43'),
(990, 2, 10, 'Dr. Sylvester Emmerich Sr.', 1727204250, 'griffin.conn@mohr.biz', '+17192805954', 'Probationary Member', '2000-06-22', '2021-08-17 09:50:43', '2021-08-17 09:50:43'),
(991, 4, 7, 'Dr. Janae Hill', 1974519750, 'emanuel.grimes@hotmail.com', '+16123046346', 'Probationary Member', '1981-11-01', '2021-08-17 09:50:43', '2021-08-17 09:50:43'),
(992, 4, 14, 'Maryse Fritsch', 1923183027, 'langworth.molly@hotmail.com', '+18729017337', 'General Member', '1984-09-18', '2021-08-17 09:50:43', '2021-08-17 09:50:43'),
(993, 1, 4, 'Imelda Lindgren', 1549229181, 'velva.reinger@flatley.com', '+16698376206', 'General Member', '1982-08-30', '2021-08-17 09:50:43', '2021-08-17 09:50:43'),
(994, 1, 9, 'Vidal Nicolas', 1678579225, 'candice.leannon@hettinger.net', '+13259705698', 'Probationary Member', '1991-06-06', '2021-08-17 09:50:43', '2021-08-17 09:50:43'),
(995, 5, 8, 'Bradly Willms', 1710086340, 'lwisoky@hotmail.com', '+19787020234', 'Probationary Member', '2014-10-07', '2021-08-17 09:50:43', '2021-08-17 09:50:43'),
(996, 5, 9, 'Cara Kertzmann', 1998223408, 'francisco27@moore.com', '+18787903364', 'Probationary Member', '1973-01-30', '2021-08-17 09:50:43', '2021-08-17 09:50:43'),
(997, 4, 12, 'Emmie Crooks IV', 2054131768, 'danielle33@gmail.com', '+18157054045', 'Probationary Member', '1977-08-02', '2021-08-17 09:50:43', '2021-08-17 09:50:43'),
(998, 8, 2, 'Easton Nikolaus MD', 1912693025, 'grady77@marvin.org', '+14247256912', 'Senior Member', '1997-01-10', '2021-08-17 09:50:43', '2021-08-17 09:50:43'),
(999, 7, 14, 'Devonte Denesik V', 1796352305, 'emarquardt@yahoo.com', '+15808960692', 'Junior Member', '1980-05-23', '2021-08-17 09:50:43', '2021-08-17 09:50:43'),
(1000, 6, 9, 'Bradley Kuvalis', 1765924003, 'ocummings@hotmail.com', '+18631697785', 'Probationary Member', '1988-12-28', '2021-08-17 09:50:43', '2021-08-17 09:50:43'),
(1001, 3, 9, 'Dr. Therese Jast', 1576807153, 'ratke.devon@yahoo.com', '+16617427058', 'Junior Member', '1981-11-01', '2021-08-17 09:50:43', '2021-08-17 09:50:43'),
(1002, 2, 12, 'Jaclyn Mohr', 1746312680, 'xwelch@hotmail.com', '+18703035658', 'Senior Member', '1990-10-26', '2021-08-17 09:50:43', '2021-08-17 09:50:43'),
(1003, 9, 2, 'Piper McLaughlin', 1860015289, 'kbartoletti@lang.com', '+16074969493', 'Senior Member', '2015-08-20', '2021-08-17 09:50:43', '2021-08-17 09:50:43'),
(1004, 4, 11, 'Dante Zboncak PhD', 1575338460, 'glangosh@marquardt.org', '+17324979516', 'Probationary Member', '2018-08-26', '2021-08-17 09:50:43', '2021-08-17 09:50:43'),
(1005, 7, 4, 'Dr. Janis Schulist DDS', 1634124722, 'beatty.natalia@hotmail.com', '+15130113750', 'Senior Member', '1997-11-21', '2021-08-17 09:50:43', '2021-08-17 09:50:43'),
(1006, 3, 2, 'Marlee Hammes', 1880472217, 'craig.walker@hotmail.com', '+19412839120', 'General Member', '1999-11-11', '2021-08-17 09:50:43', '2021-08-17 09:50:43'),
(1007, 5, 16, 'Dr. Kenyon Toy Sr.', 1656161594, 'terrence66@daniel.com', '+17473462354', 'Junior Member', '1984-10-19', '2021-08-17 09:50:43', '2021-08-17 09:50:43'),
(1008, 9, 1, 'Milan Erdman', 1886986931, 'rohan.santina@hotmail.com', '+12810455669', 'Junior Member', '1997-06-07', '2021-08-17 09:50:43', '2021-08-17 09:50:43'),
(1009, 5, 12, 'Soledad Daugherty', 1777361060, 'elyse88@hotmail.com', '+14107717372', 'Junior Member', '1982-04-07', '2021-08-17 09:50:43', '2021-08-17 09:50:43'),
(1010, 8, 12, 'Lisette Kassulke', 2065036609, 'keon93@yahoo.com', '+13475273772', 'Junior Member', '1993-01-05', '2021-08-17 09:50:43', '2021-08-17 09:50:43'),
(1011, 3, 14, 'Jannie Hirthe', 1972256103, 'stephanie.mckenzie@yahoo.com', '+15033911480', 'Junior Member', '2014-07-31', '2021-08-17 09:50:43', '2021-08-17 09:50:43'),
(1012, 9, 8, 'Jammie Yundt', 1755673939, 'mertz.mckenna@mohr.info', '+18430953357', 'Probationary Member', '1977-02-19', '2021-08-17 09:50:43', '2021-08-17 09:50:43'),
(1013, 1, 7, 'Prof. Mervin Little MD', 1698702938, 'zreilly@wilderman.org', '+17372146747', 'Probationary Member', '2009-09-13', '2021-08-17 09:50:43', '2021-08-17 09:50:43'),
(1014, 7, 2, 'Glenda Eichmann', 1514055248, 'iwaelchi@yahoo.com', '+12542925733', 'General Member', '1984-08-23', '2021-08-17 09:50:44', '2021-08-17 09:50:44'),
(1015, 8, 12, 'Magali Morissette III', 1840760292, 'ubeier@sporer.biz', '+19413277479', 'Junior Member', '2008-11-14', '2021-08-17 09:50:44', '2021-08-17 09:50:44'),
(1016, 3, 8, 'Evans Feest', 1545631598, 'gilda.franecki@yahoo.com', '+12706003035', 'General Member', '1994-12-18', '2021-08-17 09:50:44', '2021-08-17 09:50:44'),
(1017, 5, 9, 'Albin Torp', 1949069349, 'rortiz@hotmail.com', '+14248261586', 'Senior Member', '2015-02-23', '2021-08-17 09:50:44', '2021-08-17 09:50:44'),
(1018, 2, 14, 'Amparo Lang', 1586852542, 'reynold.larson@hotmail.com', '+18047365980', 'General Member', '2001-05-05', '2021-08-17 09:50:44', '2021-08-17 09:50:44'),
(1019, 2, 14, 'Brooke Considine', 2003649363, 'champlin.colt@green.com', '+12096246356', 'General Member', '1991-10-09', '2021-08-17 09:50:44', '2021-08-17 09:50:44'),
(1020, 5, 4, 'Vida Kirlin', 1676719549, 'cblanda@powlowski.com', '+14583585891', 'General Member', '1993-06-25', '2021-08-17 09:50:44', '2021-08-17 09:50:44'),
(1021, 3, 8, 'Nina Huels DDS', 1731072715, 'linnie99@gmail.com', '+15344218590', 'Senior Member', '2007-10-18', '2021-08-17 09:50:44', '2021-08-17 09:50:44'),
(1022, 6, 6, 'Miss Jayda Halvorson', 1591825944, 'leon95@gmail.com', '+14138876502', 'Senior Member', '2019-11-28', '2021-08-17 09:50:44', '2021-08-17 09:50:44'),
(1023, 5, 15, 'Columbus Klocko', 1622128380, 'ppouros@yahoo.com', '+15732317693', 'Junior Member', '1990-05-19', '2021-08-17 09:50:44', '2021-08-17 09:50:44'),
(1024, 4, 6, 'Peter Homenick', 1898974424, 'ceasar94@willms.com', '+13472897565', 'General Member', '1970-10-02', '2021-08-17 09:50:44', '2021-08-17 09:50:44'),
(1025, 2, 1, 'Adrien Stark', 2006353516, 'bradtke.myrtice@gmail.com', '+17543371065', 'Junior Member', '1983-01-09', '2021-08-17 09:50:44', '2021-08-17 09:50:44'),
(1026, 1, 2, 'Natalie Kemmer MD', 1834105506, 'brakus.dayton@gmail.com', '+12404179480', 'Junior Member', '2001-06-25', '2021-08-17 09:50:44', '2021-08-17 09:50:44'),
(1027, 7, 1, 'Evans Feest', 1591421140, 'ankunding.aurelio@labadie.com', '+14803474661', 'General Member', '2000-10-06', '2021-08-17 09:50:44', '2021-08-17 09:50:44'),
(1028, 1, 1, 'Ms. Joelle Koch', 1982301951, 'daija25@barton.info', '+17376121893', 'General Member', '2006-09-23', '2021-08-17 09:50:44', '2021-08-17 09:50:44'),
(1029, 1, 5, 'Hayden Jenkins', 1293042142, 'Asadi@gmail.com', '0353456872', 'Chair', '2019-01-17', '2021-08-17 11:34:45', '2021-08-17 13:24:18'),
(1030, 1, 1, 'Franco Davis', 29343258, 'abx@gmail.com', '0353456872', 'Vice Chair', '2020-02-17', '2021-08-17 11:35:35', '2021-08-17 13:20:34'),
(1031, 1, 8, 'Katrine Ritchie', 92734253, 'aavx@email.com', '3247562345', 'Web Designer', '2019-03-17', '2021-08-17 11:37:25', '2021-08-17 13:21:23'),
(1032, 4, 7, 'Tazin', 1231246324, 'tazinmorshed@gmail.com', '+12066673818', 'General Member', '2020-06-30', '2021-08-30 14:20:21', '2021-08-30 14:20:21'),
(1033, 4, 6, 'Carl Porter', 129432158, 'porter@email.com', '0244124723', 'President', '2019-01-01', '2021-08-31 13:26:29', '2021-09-07 11:13:40'),
(1034, 4, 5, 'Heather Cox', 195437842, 'Wilfred@gmail.com', '0235723412', 'Vice President', '2017-06-20', '2021-08-31 13:27:30', '2021-09-07 11:13:16'),
(1035, 4, 5, 'Wayne Green', 893217412, 'Wayne@email.com', '241242123', 'Web Designer', '2020-06-16', '2021-08-31 13:29:15', '2021-09-07 11:13:32'),
(1036, 4, 5, 'Adnan Sadi', 1912186042, 'adnansadi52@gmail.com', '01621216025', 'Senior Member', '2021-01-15', '2021-08-31 13:53:13', '2021-09-02 14:03:45');

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2014_10_12_000000_create_users_table', 1),
(2, '2014_10_12_100000_create_password_resets_table', 1),
(3, '2019_08_19_000000_create_failed_jobs_table', 1),
(5, '2021_07_08_130619_create_clubs_table', 2),
(6, '2021_07_08_170844_create_departments_table', 2),
(7, '2021_07_15_160435_add_image_to_users_table', 3),
(8, '2021_07_15_172902_add_nsu_id_to_users_table', 4),
(9, '2021_07_18_070111_create_events_table', 5),
(10, '2021_08_04_154626_create_members_table', 6),
(11, '2021_08_06_170511_create_follow__events_table', 7),
(12, '2021_08_11_174925_create_club_managers_table', 8),
(13, '2021_08_13_213705_create_executive__members_table', 9),
(14, '2021_08_15_144753_add_about_image_to_events_table', 10),
(15, '2021_08_15_161826_create_event__photos_table', 11),
(18, '2021_08_16_135136_create_follow__clubs_table', 12),
(19, '2021_08_19_170236_create_notices_table', 13),
(20, '2021_08_23_143621_create_jobs_table', 14);

-- --------------------------------------------------------

--
-- Table structure for table `notices`
--

CREATE TABLE `notices` (
  `notice_id` int(10) UNSIGNED NOT NULL,
  `club_id` int(10) UNSIGNED NOT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` varchar(1024) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `notices`
--

INSERT INTO `notices` (`notice_id`, `club_id`, `title`, `description`, `created_at`, `updated_at`) VALUES
(1, 1, 'New Notice', 'Test description', '2021-08-19 11:33:24', '2021-08-19 11:33:24'),
(2, 1, 'Notice 2', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nullam vitae enim pulvinar, rhoncus ante id, blandit nisi. Fusce eu urna auctor, faucibus arcu ultricies, bibendum ipsum. Nulla facilisi. Mauris porttitor non elit a commodo. Pellentesque porttitor fringilla ultricies. Nunc scelerisque ipsum ac velit dignissim, at tempor elit iaculis. Phasellus congue orci sed felis ultricies ultrices ac quis diam.', '2021-08-19 11:36:27', '2021-08-19 11:36:27'),
(3, 1, 'Notice 3', 'Donec venenatis, risus a posuere blandit, massa lacus dignissim massa, scelerisque laoreet ex magna ac sapien. Cras eu tellus tincidunt, vehicula nibh et, euismod nisi. Morbi auctor id orci sit amet venenatis. Vestibulum et enim a neque interdum sodales non sed lorem. Duis ante quam, aliquet id neque bibendum, fermentum lacinia nisl. Mauris sagittis libero fermentum mollis gravida. Nullam maximus ipsum ut diam viverra, vitae gravida arcu laoreet. Nunc molestie nisi venenatis urna fringilla, egestas sagittis erat mattis. Praesent id magna elit. Orci varius natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus. Donec et cursus eros.', '2021-08-19 11:36:53', '2021-08-19 11:36:53'),
(5, 1, 'Notice 5', 'Maecenas aliquet ipsum ut dui ultricies, id vulputate tortor gravida. Sed vel eros a tortor molestie faucibus vitae ut lectus. Donec aliquam felis luctus velit feugiat, sit amet viverra orci rhoncus. Aenean facilisis, eros non iaculis vulputate, nunc tellus dapibus enim, id ullamcorper felis odio eu metus. Donec accumsan finibus arcu, vel interdum velit tempus et.', '2021-08-19 11:37:28', '2021-08-19 11:37:28'),
(6, 1, 'Notice 6', 'Cras non lacinia libero, ac maximus est. Vivamus bibendum nisi vitae ex consectetur pellentesque. Mauris lacinia ante sapien. Nunc lacinia et lectus ut pretium.', '2021-08-19 11:37:51', '2021-08-19 11:37:51'),
(7, 1, 'Notice 7', 'Aenean rutrum risus eu erat mattis ultricies. Pellentesque habitant morbi tristique senectus et netus et malesuada fames ac turpis egestas. Integer nec vehicula lectus, sed maximus sem. Nulla venenatis leo quis dignissim facilisis.', '2021-08-19 11:38:08', '2021-08-19 11:38:08'),
(8, 1, 'Notice 8', 'Donec venenatis, risus a posuere blandit, massa lacus dignissim massa, scelerisque laoreet ex magna ac sapien. Cras eu tellus tincidunt, vehicula nibh et, euismod nisi. Morbi auctor id orci sit amet venenatis. Vestibulum et enim a neque interdum sodales non sed lorem. Duis ante quam, aliquet id neque bibendum, fermentum lacinia nisl. Maur', '2021-08-19 12:16:00', '2021-08-19 12:16:00'),
(20, 4, 'Event X', 'We are planning to organize Event X on this coming Monday. All club members are requested to share the news on all social platforms.', '2021-08-29 10:12:00', '2021-08-29 10:12:00'),
(21, 4, 'Event Y', 'We are planning to organize Event Y on this coming Monday. All club members are requested to share the news on all social platforms', '2021-08-29 10:12:30', '2021-08-29 10:12:30'),
(22, 4, 'Event Z', 'We are planning to organize Event Z on this coming Monday. All club members are requested to share the news on all social platforms', '2021-08-29 10:12:42', '2021-08-29 10:12:42');

-- --------------------------------------------------------

--
-- Table structure for table `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `password_resets`
--

INSERT INTO `password_resets` (`email`, `token`, `created_at`) VALUES
('adnansadi52@gmail.com', '$2y$10$2ZPk9Y4zD897xj7ftZp9.eYNqQ7QQ0pB0J11gJmxYEW5xXtJVUKOS', '2021-07-14 04:30:23');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `prof_image` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `phone_num` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `nsu_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `email_verified_at`, `password`, `remember_token`, `created_at`, `updated_at`, `prof_image`, `phone_num`, `nsu_id`) VALUES
(1, 'Adnan', 'Sadi@gmail', NULL, '$2y$10$8WweiUdV7y8ATKFreeDrGOOUOiDmLvhsww0zE3uOAUUcm7rtlXufi', NULL, '2021-07-10 01:10:55', '2021-07-10 01:10:55', '', '', 12314),
(2, 'Abu Adnan Sadi', 'aadnansadi@gmail.com', NULL, '$2y$10$0xMgvIxDPKQ/qlS/LGBoH.njGwTNGqTD8QDKbtrJoQ/I0P2lx1edq', 'F0Vigs3toTWhBEvZwVcNPRuaIMkR8rIfoJG8lQPkAoftqCjheIBPyhe2Exrq', '2021-07-10 01:21:57', '2021-09-07 10:28:47', '1631027276-2.png', '01621216257', 1912186042),
(8, 'Abu Adnan Sadi', 'adnansadi52@gmail.com', NULL, '$2y$10$wuzQQiGdGKwq8VtWXMS8OOHm8ybXBUlWOWCJLMkBeCgn8bkFCMkbK', 'tGiwXl0WeoIpmrpjYGP2hdAIG6685QgxpPa8FloRcUd24pl0c7pZgGxDNUPb', '2021-08-07 11:11:49', '2021-09-07 10:31:39', '1631032261-8.png', '01621216241', 1912186042),
(9, 'acmAdmin', 'acm@gmail.com', NULL, '$2y$10$DsOxbckH4uHRtnFLExHi5eZwevpsz2s4FtNG6gf0cfnGK7JbMNZsG', 'pKcNpaMYWhtE3T9DfFU34qpg6hcI34iLlFk5JdVZ2L0kpicm230QZ0e0omVO', '2021-08-11 11:52:44', '2021-09-01 01:17:58', '1630480678-9.png', NULL, 12414346),
(10, 'cecAdmin', 'cec@gmail.com', NULL, '$2y$10$MlsDMqPeeCF.JR5YpSxxBezjOLZwv8pduM34b07PA3AZfK.KBmUy6', 'gWlujcoMiFsJ5qHAY1LcSor4URWwFpFGi47EyHlqgKPRsuOz0F7p15rv02Tn', '2021-08-16 09:13:41', '2021-09-01 01:31:14', '1630481474-10.jpg', NULL, 1513356770),
(11, 'Tazin', 'tazinmorshed@gmail.com', NULL, '$2y$10$Lx.JoGnhBhe75NTqo.sJk.MBCdm/VpIGSiTmmFH/xDTW.p6QdzeGC', NULL, '2021-08-23 10:07:43', '2021-08-23 10:08:56', '1629734936-11.jpg', NULL, NULL),
(12, 'ss', 'ss@gmail.com', NULL, '$2y$10$Qnyz/MV3bHBa8z8jMyOMduIsSaa3bApaoBC50DwfmzrUS9pXL/6Uy', NULL, '2021-08-31 06:22:26', '2021-08-31 06:22:26', NULL, NULL, NULL),
(13, 'Ashfaq', 'sayeemfifa64@gmail.com', NULL, '$2y$10$GXZtuzV3EH07BhAQOp0C9.a/iGYNegt.Aq3kraQwNl6diH6N.21vG', NULL, '2021-09-01 01:37:16', '2021-09-01 01:37:16', NULL, NULL, NULL);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `clubs`
--
ALTER TABLE `clubs`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `club_managers`
--
ALTER TABLE `club_managers`
  ADD PRIMARY KEY (`man_id`),
  ADD KEY `club_managers_user_id_foreign` (`user_id`),
  ADD KEY `club_managers_club_id_foreign` (`club_id`);

--
-- Indexes for table `departments`
--
ALTER TABLE `departments`
  ADD PRIMARY KEY (`dept_id`);

--
-- Indexes for table `events`
--
ALTER TABLE `events`
  ADD PRIMARY KEY (`event_id`),
  ADD KEY `events_club_id_foreign` (`club_id`);

--
-- Indexes for table `event_photos`
--
ALTER TABLE `event_photos`
  ADD PRIMARY KEY (`p_id`),
  ADD KEY `event_photos_event_id_foreign` (`event_id`);

--
-- Indexes for table `executive__members`
--
ALTER TABLE `executive__members`
  ADD KEY `executive__members_m_id_foreign` (`m_id`);

--
-- Indexes for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`);

--
-- Indexes for table `follow_clubs`
--
ALTER TABLE `follow_clubs`
  ADD PRIMARY KEY (`follower_id`),
  ADD KEY `follow_clubs_user_id_foreign` (`user_id`),
  ADD KEY `follow_clubs_club_id_foreign` (`club_id`);

--
-- Indexes for table `follow_events`
--
ALTER TABLE `follow_events`
  ADD PRIMARY KEY (`follower_id`),
  ADD KEY `follow_events_user_id_foreign` (`user_id`),
  ADD KEY `follow_events_event_id_foreign` (`event_id`);

--
-- Indexes for table `jobs`
--
ALTER TABLE `jobs`
  ADD PRIMARY KEY (`id`),
  ADD KEY `jobs_queue_index` (`queue`);

--
-- Indexes for table `members`
--
ALTER TABLE `members`
  ADD PRIMARY KEY (`m_id`),
  ADD KEY `members_club_id_foreign` (`club_id`),
  ADD KEY `members_dept_id_foreign` (`dept_id`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `notices`
--
ALTER TABLE `notices`
  ADD PRIMARY KEY (`notice_id`),
  ADD KEY `notices_club_id_foreign` (`club_id`);

--
-- Indexes for table `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `clubs`
--
ALTER TABLE `clubs`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT for table `club_managers`
--
ALTER TABLE `club_managers`
  MODIFY `man_id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `events`
--
ALTER TABLE `events`
  MODIFY `event_id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=41;

--
-- AUTO_INCREMENT for table `event_photos`
--
ALTER TABLE `event_photos`
  MODIFY `p_id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=59;

--
-- AUTO_INCREMENT for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `follow_clubs`
--
ALTER TABLE `follow_clubs`
  MODIFY `follower_id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- AUTO_INCREMENT for table `follow_events`
--
ALTER TABLE `follow_events`
  MODIFY `follower_id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=40;

--
-- AUTO_INCREMENT for table `jobs`
--
ALTER TABLE `jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=64;

--
-- AUTO_INCREMENT for table `members`
--
ALTER TABLE `members`
  MODIFY `m_id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=1040;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- AUTO_INCREMENT for table `notices`
--
ALTER TABLE `notices`
  MODIFY `notice_id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=27;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `club_managers`
--
ALTER TABLE `club_managers`
  ADD CONSTRAINT `club_managers_club_id_foreign` FOREIGN KEY (`club_id`) REFERENCES `clubs` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `club_managers_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `events`
--
ALTER TABLE `events`
  ADD CONSTRAINT `events_club_id_foreign` FOREIGN KEY (`club_id`) REFERENCES `clubs` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `event_photos`
--
ALTER TABLE `event_photos`
  ADD CONSTRAINT `event_photos_event_id_foreign` FOREIGN KEY (`event_id`) REFERENCES `events` (`event_id`) ON DELETE CASCADE;

--
-- Constraints for table `executive__members`
--
ALTER TABLE `executive__members`
  ADD CONSTRAINT `executive__members_m_id_foreign` FOREIGN KEY (`m_id`) REFERENCES `members` (`m_id`) ON DELETE CASCADE;

--
-- Constraints for table `follow_clubs`
--
ALTER TABLE `follow_clubs`
  ADD CONSTRAINT `follow_clubs_club_id_foreign` FOREIGN KEY (`club_id`) REFERENCES `clubs` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `follow_clubs_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `follow_events`
--
ALTER TABLE `follow_events`
  ADD CONSTRAINT `follow_events_event_id_foreign` FOREIGN KEY (`event_id`) REFERENCES `events` (`event_id`) ON DELETE CASCADE,
  ADD CONSTRAINT `follow_events_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `members`
--
ALTER TABLE `members`
  ADD CONSTRAINT `members_club_id_foreign` FOREIGN KEY (`club_id`) REFERENCES `clubs` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `members_dept_id_foreign` FOREIGN KEY (`dept_id`) REFERENCES `departments` (`dept_id`) ON DELETE CASCADE;

--
-- Constraints for table `notices`
--
ALTER TABLE `notices`
  ADD CONSTRAINT `notices_club_id_foreign` FOREIGN KEY (`club_id`) REFERENCES `clubs` (`id`) ON DELETE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
