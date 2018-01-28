-- phpMyAdmin SQL Dump
-- version 4.5.1
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: Jan 27, 2018 at 02:28 PM
-- Server version: 10.1.13-MariaDB
-- PHP Version: 5.6.21

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `scdn`
--

-- --------------------------------------------------------

--
-- Table structure for table `announcements`
--

CREATE TABLE `announcements` (
  `id` int(10) UNSIGNED NOT NULL,
  `title` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `content` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `date` varchar(255) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `announcements`
--

INSERT INTO `announcements` (`id`, `title`, `content`, `created_at`, `updated_at`, `date`) VALUES
(1, 'Hackathon for ''13 batch', 'Hackathon will be conducted on 31 january at IICT Building', '2018-01-17 21:41:44', '2018-01-17 21:41:44', '01/31/2018'),
(2, 'Workshop for ''13 batch', 'Workshop on web development will be organized for ''13 batch', '2018-01-17 21:43:00', '2018-01-17 21:43:00', '01/15/2018');

-- --------------------------------------------------------

--
-- Table structure for table `attachments`
--

CREATE TABLE `attachments` (
  `id` int(10) UNSIGNED NOT NULL,
  `announcement_id` int(10) UNSIGNED NOT NULL,
  `dir` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `attachments`
--

INSERT INTO `attachments` (`id`, `announcement_id`, `dir`, `created_at`, `updated_at`) VALUES
(1, 2, 'attachment/1516246980.pdf', '2018-01-17 21:43:00', '2018-01-17 21:43:00'),
(3, 1, 'null', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `awards`
--

CREATE TABLE `awards` (
  `id` int(10) UNSIGNED NOT NULL,
  `dir` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `description` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `title` varchar(255) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `awards`
--

INSERT INTO `awards` (`id`, `dir`, `description`, `created_at`, `updated_at`, `title`) VALUES
(3, 'img/award/1516825772.jpg', 'SUST_DROID\r\n(Android)\r\n\r\nNishikanto Sarkar Shimul(2012)\r\nTanveer Preom(''12)\r\nMoshiur Siyam(''12)', '2018-01-24 14:29:32', '2018-01-24 14:29:32', 'Runner-up, SUST InterUniversity Software Contest 2015 '),
(4, 'img/award/1517035337.jpg', 'SUST_Hexacore  \r\nTanvir Nihal, Darpon Islam', '2018-01-27 00:42:17', '2018-01-27 00:42:17', '1st Runner up , DIU App Contest 2017'),
(5, 'img/award/1517036232.jpg', 'SUST_Hexacore , Tanvir Nihal(''13),Darpon Islam(''13), Raqibul Hasan(''13),Montaser Hamid(''13)', '2018-01-27 00:57:12', '2018-01-27 00:57:12', 'Runner-up, GigaTech Hackathon'),
(6, 'img/award/1517036859.jpg', 'SUST_Sunshine\r\n Nafisa Nowshin Piya, Zakia Ritu, Meem Ahmed', '2018-01-27 01:07:39', '2018-01-27 01:07:39', 'Runner-up, 1st National Hackathon for Women 2017');

-- --------------------------------------------------------

--
-- Table structure for table `blogs`
--

CREATE TABLE `blogs` (
  `id` int(10) UNSIGNED NOT NULL,
  `title` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `content` longtext COLLATE utf8_unicode_ci NOT NULL,
  `author` int(10) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `preview` varchar(255) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `blogs`
--

INSERT INTO `blogs` (`id`, `title`, `content`, `author`, `created_at`, `updated_at`, `preview`) VALUES
(3, 'Analyzing JavaScript', '<div>JavaScript is built on some very good ideas and a few very bad ones. The very good ideas include functions, loose typing, dynamic objects, and an expressive object literal notation. The bad ideas include a programming model based on global variables.</div><div><br></div><div>JavaScript’s functions are first class objects with (mostly) lexical scoping. JavaScript is the first lambda language to go mainstream. Deep down, JavaScript has more in common with Lisp and Scheme than with Java. It is Lisp in C’s clothing. This makes JavaScript a remarkably powerful language.</div><div><br></div><div>The fashion in most programming languages today demands strong typing. The theory is that strong typing allows a compiler to detect a large class of errors at compile</div><div>time. The sooner we can detect and repair errors, the less they cost us. JavaScript is a loosely typed language, so JavaScript compilers are unable to detect type errors. This can be alarming to people who are coming to JavaScript from strongly typed languages. But it turns out that strong typing does not eliminate the need for careful</div><div>testing. And I have found in my work that the sorts of errors that strong type checking finds are not the errors I worry about. On the other hand, I find loose typing to be liberating. I don’t need to form complex class hierarchies. And I never have to cast or wrestle with the type system to get the behavior that I want.</div><div><br></div><div>JavaScript has a very powerful object literal notation. Objects can be created simply by listing their components. This notation was the inspiration for JSON, the popular data interchange format. (There will be more about JSON in Appendix E.) A controversial feature in JavaScript is prototypal inheritance. JavaScript has a classfree object system in which objects inherit properties directly from other objects. This is really powerful, but it is unfamiliar to classically trained programmers. If you attempt to apply classical design patterns directly to JavaScript, you will be frustrated. But if you learn to work with JavaScript’s prototypal nature, your efforts will be rewarded. JavaScript is much maligned for its choice of key ideas. For the most part, though, those choices were good, if unusual. But there was one choice that was particularly bad: JavaScript depends on global variables for linkage. All of the top-level variables of all compilation units are tossed together in a common namespace called the global object. This is a bad thing because global variables are evil, and in JavaScript they are fundamental. Fortunately, as we will see, JavaScript also gives us the tools to mitigate this problem.</div><div><br></div><div>In a few cases, we can’t ignore the bad parts. There are some unavoidable awful parts, which will be called out as they occur. They will also be summarized in Appendix A. But we will succeed in avoiding most of the bad parts in this book, summarizing much of what was left out in Appendix B. If you want to learn more about the bad parts and how to use them badly, consult any other JavaScript book.</div> 						\r\n 					', 6, '2018-01-22 03:45:18', '2018-01-22 03:45:18', 'JavaScript is built on some very good ideas and a few very bad ones. The very good ideas include functions, loose typing, dynamic objects, and an expressive object literal notation. The bad ideas include a programming model based on global variables.'),
(4, 'Breadth-first search', '<p style="color: rgb(37, 44, 51); font-family: &quot;Open Sans&quot;, sans-serif; word-spacing: 1px;"><span style="font-weight: 600;">Graph traversals</span></p><p style="color: rgb(37, 44, 51); font-family: &quot;Open Sans&quot;, sans-serif; word-spacing: 1px;">Graph traversal means visiting every vertex and edge exactly once in a well-defined order. While using certain graph algorithms, you must ensure that each vertex of the graph is visited exactly once. The order in which the vertices are visited are important and may depend upon the algorithm or question that you are solving.</p><p style="color: rgb(37, 44, 51); font-family: &quot;Open Sans&quot;, sans-serif; word-spacing: 1px;">During a traversal, it is important that you track which vertices have been visited. The most common way of tracking vertices is to mark them.</p><p style="color: rgb(37, 44, 51); font-family: &quot;Open Sans&quot;, sans-serif; word-spacing: 1px;"><span style="font-weight: 600;">Breadth First Search (BFS)</span></p><p style="color: rgb(37, 44, 51); font-family: &quot;Open Sans&quot;, sans-serif; word-spacing: 1px;">There are many ways to traverse graphs. BFS is the most commonly used approach.</p><p style="color: rgb(37, 44, 51); font-family: &quot;Open Sans&quot;, sans-serif; word-spacing: 1px;">BFS is a traversing algorithm where you should start traversing from a selected node (source or starting node) and traverse the graph layerwise thus exploring the neighbour nodes (nodes which are directly connected to source node). You must then move towards the next-level neighbour nodes.</p><p style="color: rgb(37, 44, 51); font-family: &quot;Open Sans&quot;, sans-serif; word-spacing: 1px;">As the name BFS suggests, you are required to traverse the graph breadthwise as follows:</p><ol style="color: rgb(37, 44, 51); font-family: &quot;Open Sans&quot;, sans-serif; word-spacing: 1px;"><li>First move horizontally and visit all the nodes of the current layer</li><li>Move to the next layer</li></ol><p style="color: rgb(37, 44, 51); font-family: &quot;Open Sans&quot;, sans-serif; word-spacing: 1px;">Consider the following diagram.&nbsp;</p><p style="color: rgb(37, 44, 51); font-family: &quot;Open Sans&quot;, sans-serif; word-spacing: 1px;">&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;<img src="https://he-s3.s3.amazonaws.com/media/uploads/fdec3c2.jpg" style="width: 648px;"></p><p style="color: rgb(37, 44, 51); font-family: &quot;Open Sans&quot;, sans-serif; word-spacing: 1px;">The distance between the nodes in layer 1 is comparitively lesser than the distance between the nodes in layer 2. Therefore, in BFS, you must traverse all the nodes in layer 1 before you move to the nodes in layer 2.</p><p style="color: rgb(37, 44, 51); font-family: &quot;Open Sans&quot;, sans-serif; word-spacing: 1px;"><span style="font-weight: 600;"><em>Traversing child nodes</em></span></p><p style="color: rgb(37, 44, 51); font-family: &quot;Open Sans&quot;, sans-serif; word-spacing: 1px;">A graph can contain cycles, which may bring you to the same node again while traversing the graph. To avoid processing of same node again, use a boolean array which marks the node after it is processed. While visiting the nodes in the layer of a graph, store them in a manner such that you can traverse the corresponding child nodes in a similar order.</p><p style="color: rgb(37, 44, 51); font-family: &quot;Open Sans&quot;, sans-serif; word-spacing: 1px;">In the earlier diagram, start traversing from 0 and visit its child nodes 1, 2, and 3. Store them in the order in which they are visited. This will allow you to visit the child nodes of 1 first (i.e. 4 and 5), then of 2 (i.e. 6 and 7), and then of 3 (i.e. 7) etc.</p><p style="color: rgb(37, 44, 51); font-family: &quot;Open Sans&quot;, sans-serif; word-spacing: 1px;">To make this process easy, use a queue to store the node and mark it as ''visited'' until all its neighbours (vertices that are directly connected to it) are marked. The queue follows the First In First Out (FIFO) queuing method, and therefore, the neigbors of the node will be visited in the order in which they were inserted in the node i.e. the node that was inserted first will be visited first, and so on.</p><pre style="color: rgb(37, 44, 51); font-family: &quot;Open Sans&quot;, sans-serif; word-spacing: 1px;">&nbsp;BFS <span class="pun" style="background-color: transparent; font-family: Menlo, Monaco, Consolas, &quot;Courier New&quot;, monospace; font-size: inherit; white-space: pre-wrap; color: rgb(102, 102, 0);">(</span><span class="pln" style="background-color: transparent; color: inherit; font-family: Menlo, Monaco, Consolas, &quot;Courier New&quot;, monospace; font-size: inherit; white-space: pre-wrap;">G</span><span class="pun" style="background-color: transparent; font-family: Menlo, Monaco, Consolas, &quot;Courier New&quot;, monospace; font-size: inherit; white-space: pre-wrap; color: rgb(102, 102, 0);">,</span><span class="pln" style="background-color: transparent; color: inherit; font-family: Menlo, Monaco, Consolas, &quot;Courier New&quot;, monospace; font-size: inherit; white-space: pre-wrap;"> s</span><span class="pun" style="background-color: transparent; font-family: Menlo, Monaco, Consolas, &quot;Courier New&quot;, monospace; font-size: inherit; white-space: pre-wrap; color: rgb(102, 102, 0);">)</span><span class="pln" style="background-color: transparent; color: inherit; font-family: Menlo, Monaco, Consolas, &quot;Courier New&quot;, monospace; font-size: inherit; white-space: pre-wrap;">                   </span><span class="com" style="background-color: transparent; font-family: Menlo, Monaco, Consolas, &quot;Courier New&quot;, monospace; font-size: inherit; white-space: pre-wrap; color: rgb(136, 0, 0);">//Where G is the graph and s is the source node</span></pre><pre class="prettyprint prettyprinted" style="white-space: pre-wrap; padding: 10px; background-color: rgb(248, 248, 248); color: rgb(37, 44, 51); font-size: 14px; word-spacing: 1px;"><code><span class="pln">      </span><span class="kwd" style="color: rgb(0, 0, 136);">let</span><span class="pln"> Q be queue</span><span class="pun" style="color: rgb(102, 102, 0);">.</span><span class="pln">\r\n      Q</span><span class="pun" style="color: rgb(102, 102, 0);">.</span><span class="pln">enqueue</span><span class="pun" style="color: rgb(102, 102, 0);">(</span><span class="pln"> s </span><span class="pun" style="color: rgb(102, 102, 0);">)</span><span class="pln"> </span><span class="com" style="color: rgb(136, 0, 0);">//Inserting s in queue until all its neighbour vertices are marked.</span><span class="pln">\r\n\r\n      mark s </span><span class="kwd" style="color: rgb(0, 0, 136);">as</span><span class="pln"> visited</span><span class="pun" style="color: rgb(102, 102, 0);">.</span><span class="pln">\r\n      </span><span class="kwd" style="color: rgb(0, 0, 136);">while</span><span class="pln"> </span><span class="pun" style="color: rgb(102, 102, 0);">(</span><span class="pln"> Q </span><span class="kwd" style="color: rgb(0, 0, 136);">is</span><span class="pln"> </span><span class="kwd" style="color: rgb(0, 0, 136);">not</span><span class="pln"> empty</span><span class="pun" style="color: rgb(102, 102, 0);">)</span><span class="pln">\r\n           </span><span class="com" style="color: rgb(136, 0, 0);">//Removing that vertex from queue,whose neighbour will be visited now</span><span class="pln">\r\n           v  </span><span class="pun" style="color: rgb(102, 102, 0);">=</span><span class="pln">  Q</span><span class="pun" style="color: rgb(102, 102, 0);">.</span><span class="pln">dequeue</span><span class="pun" style="color: rgb(102, 102, 0);">(</span><span class="pln"> </span><span class="pun" style="color: rgb(102, 102, 0);">)</span><span class="pln">\r\n\r\n          </span><span class="com" style="color: rgb(136, 0, 0);">//processing all the neighbours of v  </span><span class="pln">\r\n          </span><span class="kwd" style="color: rgb(0, 0, 136);">for</span><span class="pln"> all neighbours w of v </span><span class="kwd" style="color: rgb(0, 0, 136);">in</span><span class="pln"> </span><span class="typ" style="color: rgb(102, 0, 102);">Graph</span><span class="pln"> G\r\n               </span><span class="kwd" style="color: rgb(0, 0, 136);">if</span><span class="pln"> w </span><span class="kwd" style="color: rgb(0, 0, 136);">is</span><span class="pln"> </span><span class="kwd" style="color: rgb(0, 0, 136);">not</span><span class="pln"> visited \r\n                        Q</span><span class="pun" style="color: rgb(102, 102, 0);">.</span><span class="pln">enqueue</span><span class="pun" style="color: rgb(102, 102, 0);">(</span><span class="pln"> w </span><span class="pun" style="color: rgb(102, 102, 0);">)</span><span class="pln">             </span><span class="com" style="color: rgb(136, 0, 0);">//Stores w in Q to further visit its neighbour</span><span class="pln">\r\n                        mark w </span><span class="kwd" style="color: rgb(0, 0, 136);">as</span><span class="pln"> visited</span><span class="pun" style="color: rgb(102, 102, 0);">.</span></code></pre><p style="color: rgb(37, 44, 51); font-family: &quot;Open Sans&quot;, sans-serif; word-spacing: 1px;"><br></p> 						\r\n 					', 6, '2018-01-24 11:29:27', '2018-01-24 11:29:27', 'Breadth-first search (BFS) is an algorithm for traversing or searching tree or graph data structures. It starts at the tree root (or some arbitrary node of a graph .');

-- --------------------------------------------------------

--
-- Table structure for table `developers`
--

CREATE TABLE `developers` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `specialty` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `website` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `facebook` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `twitter` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `github` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `linkedin` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `image` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT 'img/developer_list/default.jpg'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `developers`
--

INSERT INTO `developers` (`id`, `name`, `specialty`, `email`, `website`, `facebook`, `twitter`, `github`, `linkedin`, `created_at`, `updated_at`, `image`) VALUES
(1, 'Mahir Hasan', 'All rounder', 'mahirhasan36@yahoo.com', '#', 'http://facebook.com/mahirhasan36', '#', '#', '#', '2018-01-17 03:15:46', '2018-01-17 03:15:46', 'img/developer_list/1517055029.jpg'),
(2, 'Shoiab Alam', 'Web Developer', 'shoiab@gmail.com', 'www.gh.com', '#', '#', '#', '#', '2018-01-17 03:29:58', '2018-01-17 03:29:58', 'img/developer_list/1517056113.jpg'),
(3, 'Darpon Islam', 'Android Developer', 'darpon@gmail.com', '#', 'https://www.facebook.com/darpon055?lst=100008391305686%3A100001153511724%3A1517056318', '#', '#', '#', '2018-01-17 03:36:06', '2018-01-17 03:36:06', 'img/developer_list/1517056509.jpg'),
(4, 'Ashraf Uddin Tafadar', 'Web Developer', 'tafadar@gmail.com', '#', 'https://www.facebook.com/ashrafuddin.tafadar?lst=100008391305686%3A100002727274175%3A1517056616', '#', '#', '#', '2018-01-17 03:43:54', '2018-01-17 03:43:54', 'img/developer_list/1517056776.jpg'),
(5, 'Spectator Pioneer', 'Web Developer', 'spectatorpioneer@gmail.com', '#', 'http://facebook.com/spectatorpioneer', '#', '#', '#', '2018-01-17 03:44:20', '2018-01-17 03:44:20', 'img/developer_list/1517057097.jpg'),
(6, 'Alimur Razi Rana', 'Web Developer', 'alimurrazi570@gmail.com', '#', 'https://www.facebook.com/profile.php?id=100008391305686', '#', '#', '#', '2018-01-17 09:44:20', '2018-01-17 09:44:20', 'img/developer_list/1517057364.jpg');

-- --------------------------------------------------------

--
-- Table structure for table `developer_education`
--

CREATE TABLE `developer_education` (
  `id` int(10) UNSIGNED NOT NULL,
  `developer_id` int(10) UNSIGNED NOT NULL,
  `education` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `starting_year` int(11) NOT NULL,
  `ending_year` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `developer_experiences`
--

CREATE TABLE `developer_experiences` (
  `id` int(10) UNSIGNED NOT NULL,
  `developer_id` int(10) UNSIGNED NOT NULL,
  `experience` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `duration` varchar(255) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `developer_experiences`
--

INSERT INTO `developer_experiences` (`id`, `developer_id`, `experience`, `created_at`, `updated_at`, `duration`) VALUES
(13, 1, 'Participate in many contest', '2018-01-27 06:14:12', '2018-01-27 06:14:12', '2014-18'),
(16, 2, 'Internship at InfancyIt', '2018-01-27 06:28:33', '2018-01-27 06:28:33', '2016-17'),
(17, 2, 'National Hackathon', '2018-01-27 06:28:33', '2018-01-27 06:28:33', '2016'),
(18, 3, 'Participate in many contest', '2018-01-27 06:35:09', '2018-01-27 06:35:09', '2014-2018'),
(19, 3, 'Winner Backathon', '2018-01-27 06:35:09', '2018-01-27 06:35:09', '2017'),
(20, 4, 'national hackthon', '2018-01-27 06:39:36', '2018-01-27 06:39:36', '2014'),
(21, 4, 'sust carnival', '2018-01-27 06:39:36', '2018-01-27 06:39:36', '2015'),
(22, 5, 'national hackthon', '2018-01-27 06:44:57', '2018-01-27 06:44:57', '2015'),
(23, 5, 'sust carnival', '2018-01-27 06:44:57', '2018-01-27 06:44:57', '2017'),
(24, 6, 'Taking part in Free Code Camp', '2018-01-27 06:49:24', '2018-01-27 06:49:24', '2017-2018');

-- --------------------------------------------------------

--
-- Table structure for table `developer_skill`
--

CREATE TABLE `developer_skill` (
  `id` int(10) UNSIGNED NOT NULL,
  `developer_id` int(10) UNSIGNED NOT NULL,
  `skill` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `developer_skill`
--

INSERT INTO `developer_skill` (`id`, `developer_id`, `skill`, `created_at`, `updated_at`) VALUES
(12, 1, 'Java', '2018-01-27 06:14:13', '2018-01-27 06:14:13'),
(13, 1, 'Androiad', '2018-01-27 06:14:13', '2018-01-27 06:14:13'),
(14, 1, 'PHP', '2018-01-27 06:14:13', '2018-01-27 06:14:13'),
(15, 1, 'Laravel', '2018-01-27 06:14:13', '2018-01-27 06:14:13'),
(16, 1, 'JavaSpring', '2018-01-27 06:14:13', '2018-01-27 06:14:13'),
(20, 2, 'html', '2018-01-27 06:28:33', '2018-01-27 06:28:33'),
(21, 2, 'CSS', '2018-01-27 06:28:34', '2018-01-27 06:28:34'),
(22, 2, 'javascript', '2018-01-27 06:28:34', '2018-01-27 06:28:34'),
(23, 3, 'Java', '2018-01-27 06:35:09', '2018-01-27 06:35:09'),
(24, 3, 'Android', '2018-01-27 06:35:09', '2018-01-27 06:35:09'),
(25, 4, 'html', '2018-01-27 06:39:36', '2018-01-27 06:39:36'),
(26, 4, 'css', '2018-01-27 06:39:36', '2018-01-27 06:39:36'),
(27, 4, 'php', '2018-01-27 06:39:36', '2018-01-27 06:39:36'),
(28, 5, 'html', '2018-01-27 06:44:57', '2018-01-27 06:44:57'),
(29, 5, 'css', '2018-01-27 06:44:57', '2018-01-27 06:44:57'),
(30, 5, 'php', '2018-01-27 06:44:57', '2018-01-27 06:44:57'),
(31, 6, 'java', '2018-01-27 06:49:24', '2018-01-27 06:49:24'),
(32, 6, 'html', '2018-01-27 06:49:24', '2018-01-27 06:49:24'),
(33, 6, 'css', '2018-01-27 06:49:24', '2018-01-27 06:49:24'),
(34, 6, 'javascript', '2018-01-27 06:49:24', '2018-01-27 06:49:24'),
(35, 6, 'php', '2018-01-27 06:49:24', '2018-01-27 06:49:24'),
(36, 6, 'laravel', '2018-01-27 06:49:24', '2018-01-27 06:49:24');

-- --------------------------------------------------------

--
-- Table structure for table `images`
--

CREATE TABLE `images` (
  `id` int(10) UNSIGNED NOT NULL,
  `dir` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `description` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `images`
--

INSERT INTO `images` (`id`, `dir`, `description`, `created_at`, `updated_at`) VALUES
(2, 'img/gallery/1515818880.jpg', 'another hackathon', '2018-01-12 09:40:19', '2018-01-12 09:40:19'),
(3, 'img/gallery/1515813251.jpg', 'codathon', '2018-01-12 21:14:11', '2018-01-12 21:14:11'),
(5, 'img/gallery/1516418646.jpg', 'Introduction to game development', '2018-01-19 21:24:06', '2018-01-19 21:24:06'),
(6, 'img/gallery/1517033662.jpg', 'Hackathon is running', '2018-01-27 00:14:22', '2018-01-27 00:14:22'),
(7, 'img/gallery/1517033698.jpg', 'Workshop on Android ', '2018-01-27 00:14:58', '2018-01-27 00:14:58'),
(8, 'img/gallery/1517034214.jpg', 'Introduction to game development', '2018-01-27 00:23:34', '2018-01-27 00:23:34');

-- --------------------------------------------------------

--
-- Table structure for table `messages`
--

CREATE TABLE `messages` (
  `id` int(10) UNSIGNED NOT NULL,
  `email` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `content` longtext COLLATE utf8_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `messages`
--

INSERT INTO `messages` (`id`, `email`, `content`, `created_at`, `updated_at`) VALUES
(1, 'alimurrazi570@gmail.com', '                                Good , Well done!   \r\n                                ', '2018-01-27 04:04:15', '2018-01-27 04:04:15'),
(2, 'ranasust42@gmail.com', '                                    \r\n                                I wish your success. Please not only concern in SUST but also overall developer community in Bangladesh .', '2018-01-27 05:14:26', '2018-01-27 05:14:26');

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2014_10_12_000000_create_users_table', 1),
(2, '2014_10_12_100000_create_password_resets_table', 1),
(3, '2018_01_07_032250_create_images_table', 1),
(4, '2018_01_16_031738_create_developers_table', 2),
(5, '2018_01_16_033314_create_experience_table', 3),
(6, '2018_01_16_033947_create_education_table', 3),
(7, '2018_01_16_034602_create_skill_table', 3),
(8, '2018_01_16_110308_add_image_to_developers_table', 4),
(10, '2018_01_17_055036_edit_experience_table', 5),
(11, '2018_01_17_085217_announcementTable', 6),
(12, '2018_01_17_095230_attachment', 7),
(13, '2018_01_18_041012_edit_announcement_table', 8),
(14, '2018_01_19_041250_create_blogs_table', 9),
(15, '2018_01_22_040551_add_preview_to_blogs_table', 10),
(16, '2018_01_22_070938_create_tags_table', 11),
(17, '2018_01_22_084137_create_tag_relation_table', 12),
(18, '2018_01_22_085741_edit_author_to_blogs_table', 13),
(19, '2018_01_24_190750_create_awards_table', 14),
(20, '2018_01_24_200535_add_title_to_awards_table', 15),
(21, '2018_01_26_144509_create_projects_table', 16),
(22, '2018_01_27_094537_create_messages_table', 17);

-- --------------------------------------------------------

--
-- Table structure for table `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `projects`
--

CREATE TABLE `projects` (
  `id` int(10) UNSIGNED NOT NULL,
  `title` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `image` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `description` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `url` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `projects`
--

INSERT INTO `projects` (`id`, `title`, `image`, `description`, `url`, `created_at`, `updated_at`) VALUES
(1, 'SUST CSE Developer''s Network (SCDN)', 'img/project/1516979923.JPG', 'website for SCDN .Developed by Alimur Razi Rana & Ruman Islam', '/', '2018-01-26 09:18:43', '2018-01-26 09:18:43'),
(2, 'Balls!', 'img/project/1517044380.JPG', 'This puzzle type android app is developed by Gautam Chowdhury & Sayf Uddin Al Azad Sagor', 'https://play.google.com/store/apps/details?id=com.FluxStudio.Balls&hl=en', '2018-01-27 03:13:00', '2018-01-27 03:13:00'),
(3, 'TankMani', 'img/project/1517045028.JPG', 'A classic War game .Developed by Montaser Hamid & Jamil Ahmed', 'https://play.google.com/store/apps/details?id=com.jamil88.TankMania&hl=en', '2018-01-27 03:23:48', '2018-01-27 03:23:48'),
(4, 'DareIt?', 'img/project/1517045991.JPG', 'The game was developed by Maruf Ahmed Mridul and Arnab Sen Sharma', 'https://play.google.com/store/apps/details?id=com.Osprishyo.DareIt&hl=en', '2018-01-27 03:39:51', '2018-01-27 03:39:51');

-- --------------------------------------------------------

--
-- Table structure for table `tags`
--

CREATE TABLE `tags` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `content` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `tags`
--

INSERT INTO `tags` (`id`, `name`, `content`, `created_at`, `updated_at`) VALUES
(1, 'C', 'One of the oldest and most popular programming language', NULL, NULL),
(2, 'C#', 'C# is a multi-paradigm programming language encompassing strong typing, imperative, declarative, functional, generic, object-oriented, and component-oriented programming disciplines.', NULL, NULL),
(3, 'JavaScript', 'It''s not Java It is Javascript', NULL, NULL),
(4, 'PHP', 'PHP is a server-side scripting language designed for web development but also used as a general-purpose programming language. Originally created by Rasmus Lerdorf in 1994, the PHP reference implementation is now produced by The PHP Group.', '2018-01-25 03:06:58', '2018-01-25 03:06:58');

-- --------------------------------------------------------

--
-- Table structure for table `tag_relations`
--

CREATE TABLE `tag_relations` (
  `id` int(10) UNSIGNED NOT NULL,
  `blog_id` int(10) UNSIGNED NOT NULL,
  `tag_id` int(10) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `tag_relations`
--

INSERT INTO `tag_relations` (`id`, `blog_id`, `tag_id`, `created_at`, `updated_at`) VALUES
(1, 3, 3, '2018-01-22 03:45:18', '2018-01-22 03:45:18'),
(2, 4, 1, '2018-01-24 11:29:27', '2018-01-24 11:29:27');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `password` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `password`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 'Alimur Razi', 'alimurrazi570@gmail.com', '$2y$10$WjtJChFF5EvMoUf8wKQyhuH9fmi8.nAfdi9.HFlM7MPzNgD9pNs5O', 'HAjxNOwev6oAAuvwdtPoYrlpA5tzkaV1GDdNZCYIIIfK5jmqCbYHLMGO0jnw', '2018-01-11 23:51:20', '2018-01-26 23:10:20');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `announcements`
--
ALTER TABLE `announcements`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `attachments`
--
ALTER TABLE `attachments`
  ADD PRIMARY KEY (`id`),
  ADD KEY `attachments_announcement_id_foreign` (`announcement_id`);

--
-- Indexes for table `awards`
--
ALTER TABLE `awards`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `blogs`
--
ALTER TABLE `blogs`
  ADD PRIMARY KEY (`id`),
  ADD KEY `blogs_author_foreign` (`author`);

--
-- Indexes for table `developers`
--
ALTER TABLE `developers`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `developer_education`
--
ALTER TABLE `developer_education`
  ADD PRIMARY KEY (`id`),
  ADD KEY `developer_education_developer_id_foreign` (`developer_id`);

--
-- Indexes for table `developer_experiences`
--
ALTER TABLE `developer_experiences`
  ADD PRIMARY KEY (`id`),
  ADD KEY `developer_experiences_developer_id_foreign` (`developer_id`);

--
-- Indexes for table `developer_skill`
--
ALTER TABLE `developer_skill`
  ADD PRIMARY KEY (`id`),
  ADD KEY `developer_skill_developer_id_foreign` (`developer_id`);

--
-- Indexes for table `images`
--
ALTER TABLE `images`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `messages`
--
ALTER TABLE `messages`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`),
  ADD KEY `password_resets_token_index` (`token`);

--
-- Indexes for table `projects`
--
ALTER TABLE `projects`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tags`
--
ALTER TABLE `tags`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tag_relations`
--
ALTER TABLE `tag_relations`
  ADD PRIMARY KEY (`id`),
  ADD KEY `tag_relations_blog_id_foreign` (`blog_id`),
  ADD KEY `tag_relations_tag_id_foreign` (`tag_id`);

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
-- AUTO_INCREMENT for table `announcements`
--
ALTER TABLE `announcements`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT for table `attachments`
--
ALTER TABLE `attachments`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
--
-- AUTO_INCREMENT for table `awards`
--
ALTER TABLE `awards`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;
--
-- AUTO_INCREMENT for table `blogs`
--
ALTER TABLE `blogs`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
--
-- AUTO_INCREMENT for table `developers`
--
ALTER TABLE `developers`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;
--
-- AUTO_INCREMENT for table `developer_education`
--
ALTER TABLE `developer_education`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `developer_experiences`
--
ALTER TABLE `developer_experiences`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=25;
--
-- AUTO_INCREMENT for table `developer_skill`
--
ALTER TABLE `developer_skill`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=37;
--
-- AUTO_INCREMENT for table `images`
--
ALTER TABLE `images`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;
--
-- AUTO_INCREMENT for table `messages`
--
ALTER TABLE `messages`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=23;
--
-- AUTO_INCREMENT for table `projects`
--
ALTER TABLE `projects`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
--
-- AUTO_INCREMENT for table `tags`
--
ALTER TABLE `tags`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
--
-- AUTO_INCREMENT for table `tag_relations`
--
ALTER TABLE `tag_relations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- Constraints for dumped tables
--

--
-- Constraints for table `attachments`
--
ALTER TABLE `attachments`
  ADD CONSTRAINT `attachments_announcement_id_foreign` FOREIGN KEY (`announcement_id`) REFERENCES `announcements` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `blogs`
--
ALTER TABLE `blogs`
  ADD CONSTRAINT `blogs_author_foreign` FOREIGN KEY (`author`) REFERENCES `developers` (`id`);

--
-- Constraints for table `developer_education`
--
ALTER TABLE `developer_education`
  ADD CONSTRAINT `developer_education_developer_id_foreign` FOREIGN KEY (`developer_id`) REFERENCES `developers` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `developer_experiences`
--
ALTER TABLE `developer_experiences`
  ADD CONSTRAINT `developer_experiences_developer_id_foreign` FOREIGN KEY (`developer_id`) REFERENCES `developers` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `developer_skill`
--
ALTER TABLE `developer_skill`
  ADD CONSTRAINT `developer_skill_developer_id_foreign` FOREIGN KEY (`developer_id`) REFERENCES `developers` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `tag_relations`
--
ALTER TABLE `tag_relations`
  ADD CONSTRAINT `tag_relations_blog_id_foreign` FOREIGN KEY (`blog_id`) REFERENCES `blogs` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `tag_relations_tag_id_foreign` FOREIGN KEY (`tag_id`) REFERENCES `developers` (`id`) ON DELETE CASCADE;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
