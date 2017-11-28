-- phpMyAdmin SQL Dump
-- version 4.7.2
-- https://www.phpmyadmin.net/
--
-- Host: localhost:8889
-- Generation Time: Oct 09, 2017 at 11:40 AM
-- Server version: 5.6.35
-- PHP Version: 7.1.6

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";

--
-- Database: `book_store`
--

-- --------------------------------------------------------

--
-- Table structure for table `book`
--

CREATE TABLE `book` (
  `b_id` int(4) NOT NULL,
  `b_nm` varchar(60) NOT NULL,
  `b_subcat` varchar(25) NOT NULL,
  `b_desc` longtext NOT NULL,
  `b_publisher` varchar(40) NOT NULL,
  `b_edition` varchar(20) NOT NULL,
  `b_isbn` varchar(10) NOT NULL,
  `b_page` int(5) NOT NULL,
  `b_price` int(5) NOT NULL,
  `b_img` longtext NOT NULL,
  `b_pdf` longtext NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `book`
--

INSERT INTO `book` (`b_id`, `b_nm`, `b_subcat`, `b_desc`, `b_publisher`, `b_edition`, `b_isbn`, `b_page`, `b_price`, `b_img`, `b_pdf`) VALUES
(69, 'The God Delusion', '6', 'Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged.', 'Richard Darkins', '456', '232', 34, 12, 'upload_image/rl3.jpg', ''),
(70, 'Life after Faith', '6', 'Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged.', 'Philip Kithcher', '3443', '543', 33, 45, 'upload_image/rl5.jpg', ''),
(66, 'Jumping at Chance', '2', 'Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged.', 'Gil Griffin', '354', '63443', 54, 67, 'upload_image/sp6.jpg', ''),
(67, 'Heart of Religion', '6', 'Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged.', 'Mathew T. Lee', '64647', '46377', 55, 34, 'upload_image/rl1.png', ''),
(68, 'Universal Laws', '6', 'Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged.', 'Jannifer O\'Neil', '5647', '3564', 32, 45, 'upload_image/rl2.jpg', ''),
(73, 'Girl\'s still got it', '5', 'Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged.', 'Liz Curtis', '2003', 'yg56', 77, 46, 'upload_image/yg2.jpg', ''),
(52, 'Tourism Management', '4', '\"Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.\"', 'David Weaver', '5th Edition', 'DC123', 26, 32, 'upload_image/tr1.jpg', 'upload_ebook/t2.doc'),
(58, 'From Science to Business', '9', 'Lorem Ipsum', 'National Academy', '2000', '556', 67, 45, 'upload_image/sc1.jpg', ''),
(60, 'SQL Server 2012', '1', 'Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged.', 'William R. Stanek', '56755', '567', 67, 34, 'upload_image/cm2.jpg', ''),
(51, 'Yoga Life', '5', 'Meditaion relaxation and healthy body', 'Arther Hall', '2006', 'yg1234', 30, 40, 'upload_image/yg1.jpg', ''),
(8, 'Java & Xml', '17', '\'Complete Reference\'', 'TATA Mcgerw Hill', '2010', 'JJ123', 1800, 500, 'upload_image/comp9.jpg', 'upload_ebook/java.pdf'),
(9, 'Microsoft Windows Powershell Step By Step', '29', '\'Learn Microsoft Windows PowerShell step by step with hands-on instruction from a leading Microsoft scripting trainer. This guide features self-paced labs, timesaving tips, and dozens of sample scripts', 'Wilson', '2006', '9788120332', 755, 295, 'upload_image/comp6.jpg', 'upload_ebook/wave.doc'),
(10, 'C# Programming', '17', '\'C# is platform independent,includes namespace,garbage collection,automatic memory management', 'Pearson', '1999', 'c#abd', 450, 300, 'upload_image/1861004877.jpg', 'upload_ebook/intro_C#.pdf'),
(11, 'Java Server Programming', '17', '\'jsp uses  html tags and run on java platform\'', 'BPB Prakashan', '2000', 'jsp123', 1800, 560, 'upload_image/1861004656.jpg', 'upload_ebook/Java_2_5th-www.netbks.com.pdf'),
(12, 'Programming with Perl', '17', 'Perl is programming langauge which is not comfortable to handle.', 'Wrox', '1995', 'perl123', 560, 450, 'upload_image/0596000278.jpg', 'upload_ebook/perl.docx'),
(13, 'HTML for world wide web', '19', 'html uses tags,it\'\'s  not case sensitive,work with own html tagswhich must be enclosed.', 'Elizabeth', '2005', 'htmlabc12', 560, 400, 'upload_image/0201354934.jpg', 'upload_ebook/html.pdf'),
(14, 'ASP Server Pages 3.0', '17', 'Active server pages uses xml files ,it run on internet explorer or other browser..', 'Microsoft', '1995', 'asp123', 1150, 950, 'upload_image/1861003382.jpg', 'upload_ebook/asp.doc'),
(15, 'Perl and CGI', '17', 'CGI for graphics purpose', 'Pearson', '1999', 'pc2343', 450, 300, 'upload_image/020135358X.gif', 'upload_ebook/perl1.pdf'),
(16, 'A Biological Survey for the Nation', '27', 'The National Biological Survey will produce the map we need to avoid the\\r\\neconomic and environmental \"train wrecks\" we see scattered across the country.\\r\\nNBS will provide the scientific knowledge America needs to balance the\\r\\ncompatible goals of ecosystem protection and economic progress', 'National Research Council', '1994', '0-309-5860', 224, 450, 'upload_image/biology.gif', 'upload_ebook/g.pdf'),
(17, 'Book of Tea', '23', 'The Philosophy of Tea is not mere aestheticism in the ordinary acceptance of the term, for it expresses conjointly with ethics and religion our whole point of view about man and nature. It is hygiene, for it enforces cleanliness.It represents the true spirit of Eastern democracy by making all its votaries aristocrats in taste. (from \"The Book of Tea\")', 'Kakuzo Okakura', '2008', 'tea1', 80, 100, 'upload_image/bookoftea.jpg', 'upload_ebook/tea.docx'),
(18, 'Coffee : Scrumptious Drinks', '23', 'Every day, millions search for The Perfect Cup of Coffee in caf s, diners, and kitchens around the world. Here, coffee guru Betty Rosbottom offers easy-to-follow recipes guaranteed to please \\r\\nanyone who takes delight in sampling, sipping, and serving exquisite coffee concoctions.', 'Chronicle Books', '2007', 'cofee1', 96, 100, 'upload_image/cofee.jpg', 'upload_ebook/cofee.docx'),
(19, 'Stone Soup', '24', 'A hungry traveler tricks a little old lady into cooking him soup starting with a stone.', 'Marcia Brown', '1970', 'soup45', 120, 350, 'upload_image/stonesoup.jpg', 'upload_ebook/soup.docx'),
(20, 'Pasta Perfection', '22', 'This new series will help you get back into the kitchen and experience the fun of creating sensationalmouth-watering meals thought he simplicity of easy-to-read, step-by-step ...', 'Belina Jeffer', '2004', 'p12', 80, 100, 'upload_image/pasta1.jpg', 'upload_ebook/pasta1.docx'),
(22, 'Descriptious du Cafeier', '23', 'millions search for The Perfect Cup of Coffee in caf s, diners, and kitchens around the world. Here, coffee guru Betty Rosbottom offers easy-to-follow recipes guaranteed to please anyone who takes delight in sampling, sipping, and serving exquisite coffee concoctions.', 'International resource institute', '1996', 'caffee2', 96, 100, 'upload_image/cofee2.jpg', 'upload_ebook/Coffee1.docx'),
(24, 'The Forest Feast', '8', 'Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged.', 'Erin Gleson', '2009', 'ck-121', 1024, 120, 'upload_image/coo1.jpg', ''),
(25, 'French Market', '8', 'Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged.   * New deductions, tax breaks, and planning tips', 'Clotilde Dusolier', '2002', 'ck-122', 22, 300, 'upload_image/coo2.jpg', ''),
(26, 'Mile End', '8', 'Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged.', 'Noah and Rae Bernamoff', '2001', 'ck-11', 24, 30, 'upload_image/coo4.jpg', ''),
(27, 'The Cooking Book', '8', 'Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged.', 'Steven Hawkins', '2002', 'ck-22', 29, 30, 'upload_image/coo6.jpg', ''),
(28, 'Debugging Microsoft .NET 2.0 Applications', '17', 'Get hands-on instruction for using the tools in Microsoft Visual Studio? 2005 to debug, tune, and test applications. This guide features practical advice and code samples for developers at all levels from a leading authority on improving code. Traditionally, tools for performance tuning, testing applications, and debugging code have been expensive, hard to learn, and difficult to use. While previous versions of Microsoft Visual Studio? have included debuggers and other code-improvement tools, Visual Studio 2005 presents developers with robust and useful tools and processes to help ensure top-quality code. In this guide, an expert on improving code, John Robbins, steps back from the expert-level information that characterized his previous debugging books to present hands-on, practical advice for working developers on how to use the debugging, testing, and tuning features in Visual Studio 2005', 'John Robbins (Wintellect)', '2006', 'net-1', 464, 699, 'upload_image/comp2.jpg', 'upload_ebook/net2005.docx'),
(29, 'Accessible Melbourne', '4', 'Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged.', 'lonely Planet', '2005', '0143101846', 96, 125, 'upload_image/ts2.jpg', ''),
(71, 'Sound of Sleeping Planets', '9', 'Lorem Ipsum', 'Kimberly Rodriguez', '4563', '463', 45, 43, 'upload_image/sc3.jpg', ''),
(30, 'Tourism Operation and Management', '4', 'Are you one of those who just knows India will win the match the moment the game starts? Do you drown yourself in cricket and cricket-related trivia every four years and dream of seeing India win the World Cup? If the answer is ?yes? to any of the above, here is the team that will bring home the Cup for you. ', 'Sunetra Rodey', '2007', '014333015', 147, 200, 'upload_image/ts3.jpg', ''),
(31, 'HOW TO PREPARE FOR QUANTITATIVE APTITUDE FOR CAT', '33', 'More than 3000 questions categorised into three levels of difficulty - LOD1, LOD2 and LOD3 * Notes emphasising relative importance of topics in the CAT, at appropriate places in the book * Short-cut methods to aid faster solutions to problems * Five practice CAT tests (actual CAT questions based on memory)', 'Arun Sharma', '2006', '0070483493', 310, 325, 'upload_image/COMPETITIVE8.jpg', 'upload_ebook/cat1.docx'),
(32, 'Physics', '26', 'Get all you need to know with Super Reviews! Each Super Review is packed with in-depth, student-friendly topic reviews that fully explain everything about the subject.', 'Unknown', '1995', '08', 1000, 495, 'upload_image/p2.jpg', 'upload_ebook/pysics1.pptx'),
(33, 'Thermal Physics', '26', 'The book presents a lucid and systematic exposition of the fundamental principles of Thermal Physics.', 'S.C.Garg', '2001', '0074601342', 412, 163, 'upload_image/p6.jpg', 'upload_ebook/thermal.pptx'),
(78, 'The Snow Queen', '7', 'Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged.', 'Joan D.Vinge', '2004', '5786', 44, 47, 'upload_image/fc4.jpg', ''),
(36, 'Computer Networks, 4th Ed', '20', '(38, \'Computer Networks, 4th Ed\', \'46\', \'updated, this classic bestseller, now in its fourth edition, reflects the newest and most important networking technologies with a special emphasis on wireless networking. The material on wireless networks includes detailed coverage of 802.11, wireless local loops, 2G and 3G cellular networks, BluetoothTM, WAP, i-mode, and others. It prepares students to work with wireless technologies in networks of all sizes-both local and wide area networks. There is also lots of new material on applications, including the Web, Internet radio, voice over IP, and video on demand. Finally, an entirely new chapter is devoted exclusively to security to help students deal with one of the most crucial topics in networking today. Despite a large amount of material added on wireless networks, fixed networks have not been ignored-topics covered include ADLS, Internet over cable, gigabit Ethernet, peer-to-peer networks, NAT, and MPLS. Each chapter follows a consistent approach. The author first presents the key principles-underlying hardware at the physical layer up through the top-level application layer-and then illustrates them utilizing real-world examples drawn from the Internet and wireless networks, all in Tanenbaum\'\'s classic entertaining style.', 'ANDREW S.TANENBAUM', '2007', '8120321758', 912, 325, 'upload_image/comp7.jpg', 'upload_ebook/SLIP and PPP.docx'),
(72, 'Art at Science', '9', 'Lorem Ipsum caps', 'Springer Wien', '768', '6599', 55, 20, 'upload_image/sc4.jpeg', ''),
(74, 'Yoga and eating disorders', '5', 'Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged.', 'Joe Kelly', '2003', 'yg5677', 56, 26, 'upload_image/yg5.jpg', ''),
(75, 'Healing Path of Yoga', '5', 'Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged.', 'Nishala Joy', '2009', 'yg5456', 77, 45, 'upload_image/yg3.jpg', ''),
(79, 'Travel and Tourism', '4', 'Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged.', 'John D. Smith', '2009', '656', 54, 67, 'upload_image/ts5.jpg', ''),
(40, 'HOW TO PREPARE FOR THE CAT, 2/E ', '33', 'More than 3000 questions categorised into three levels of difficulty - LOD1, LOD2 and LOD3 * Notes emphasising relative importance of topics in the CAT, at appropriate places in the book * Short-cut methods to aid faster solutions to problems * Five practice CAT tests (actual CAT questions based on memory)', 'MUNEER, MUHAMED', '2006', '0070528462', 380, 499, 'upload_image/CAT.jpg', 'upload_ebook/cat2.docx'),
(41, 'Safe and Simple Steps to Fruitful Meditation', '10', 'Meditation has been widely accepted as a tested method to reduce mental tensions and achieve inner peace and tranquillity, leading to spiritual growth. In this book, various techniques are presented in an easy step-by-step manner, starting with simple techniques that can be practised for just a few minutes', 'Dr. N. K. Srinivasan', '2003', '8122308910', 150, 80, 'upload_image/yoga1.jpg', 'upload_ebook/yoga1.docx'),
(42, 'Something Nasty in Woods', '7', 'Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged.', 'Charlie Mortdecal', '2007', '904182', 212, 372, 'upload_image/fc1.jpg', ''),
(76, 'Left Hand of Darkness', '7', 'Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged.', 'Ursula K. LeGuin', '2003', '6576', 33, 21, 'upload_image/fc2.jpg', ''),
(77, 'The Blaze World', '7', 'Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged.', 'Siri Hustvedt', '2003', '6765', 65, 23, 'upload_image/fc3.jpg', ''),
(43, 'Himalayan Vignettes : The Garhwal and Sikkim Treks', '14', 'In the 1950s Himalayan trekking was not as popular as it is now. The network of roads deep into the Himalayas did not exist and the hills were more pristine and undeveloped.', 'Kekoo Naoroji ', '2004', '8188204234', 300, 2000, 'upload_image/1445.jpg', 'upload_ebook/track1.txt'),
(44, 'The Common Sense of Science', '9', 'Lorem Ipsum', 'J. Bronowski', '0887', '08872', 300, 93, 'upload_image/sc2.jpg', ''),
(59, 'Computer Basics', '1', 'Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged.', 'Michael Price', '653765', '6365', 35, 56, 'upload_image/cm1.jpg', ''),
(45, 'SPIDER MAN', '16', 'second 100 issues as May Mayday Parker learns that she can\'t escape her great responsibilities! Featuring the original Hobgoblin, the Black Tarantula and more! Plus: the saga of Spider-Girl! Collects Amazing Spider-Girl #0-6. ', 'Marvel Comics ', '2001', '0785123415', 160, 606, 'upload_image/comic1.jpg', 'upload_ebook/spider.doc'),
(46, 'The Missing ', '15', 'The woman missing for five years. The Crime Scene Investigator who finds her. And the serial killer who wants them both dead? When Boston CSI Darby McCormick finds a raving and emaciated woman hiding at the scene of a violent kidnap, she runs a DNA search to identify the Jane Doe. The result confirms that the woman was abducted five years earlier and has somehow managed to escape from the dungeon in which she?s been caged. With a teenage couple also missing and the Jane Doe seriously ill, the clock is ticking for Darby as she hunts for the dungeon before anyone else disappears or dies. And when the FBI takes over the investigation, it becomes clear that a sadistic serial killer has been on the prowl for decades ? and is poised to strike again at any moment. A killer with links to horrors that Darby has desperately tried to bury in her past?\r\n\r\n', 'Chris Mooning ', '2006', '0141030852', 416, 240, 'upload_image/fic1.jpg', 'upload_ebook/fiction1.docx'),
(53, 'Simple Numbers', '3', '\"Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.\"', 'Greg Crabtree', 'E2000', 'bs12', 45, 60, 'upload_image/bs1.jpg', ''),
(54, 'Everybody\'s business', '3', '\"Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.\"', 'John Miller', 'E2000', 'bs1', 12, 26, 'upload_image/bs2.jpg', ''),
(55, 'Contrarian\'s Choice', '3', '\"Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.\"', 'Steven B. Sample', 'E2000', '5656', 45, 56, 'upload_image/bs3.jpg', ''),
(56, 'Win More Clients', '3', '\"Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.\"', 'Jacob Fisher', 'E2000', '47637', 23, 45, 'upload_image/bs4.jpg', ''),
(57, 'Smart Business', '3', '\"Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.\"', 'Michael Brito', 'E2011', '6676', 41, 43, 'upload_image/bs5.jpg', ''),
(61, 'Javascript Programming Language', '1', 'Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged.', 'Ray Toal', '54567', '655', 65, 45, 'upload_image/cm3.jpg', ''),
(62, 'Computer Graphics', '1', 'Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged.', 'Sumanta Pattanaik', '659', '7367', 67, 34, 'upload_image/cm4.jpg', ''),
(63, 'Unstoppable', '2', 'Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged.', 'Tim Green', '4873', '6564', 54, 56, 'upload_image/sp1.jpg', ''),
(64, 'Force Quit', '2', 'Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged.', 'Tim Green', '6546', '66747', 76, 64, 'upload_image/sp2.jpg', ''),
(65, 'Football Genius', '2', 'Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged.', 'Tim Green', '647', '647', 32, 14, 'upload_image/sp4.jpg', '');

-- --------------------------------------------------------

--
-- Table structure for table `category`
--

CREATE TABLE `category` (
  `cat_id` int(4) NOT NULL,
  `cat_nm` varchar(30) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `category`
--

INSERT INTO `category` (`cat_id`, `cat_nm`) VALUES
(2, 'Sports'),
(3, 'Business'),
(4, 'Tourism'),
(5, 'Yoga'),
(6, 'Religion'),
(7, 'Fiction'),
(1, 'Computer'),
(8, 'Cooking'),
(9, 'Science');

-- --------------------------------------------------------

--
-- Table structure for table `contact`
--

CREATE TABLE `contact` (
  `con_id` int(4) NOT NULL,
  `con_nm` varchar(25) NOT NULL,
  `con_email` varchar(35) NOT NULL,
  `con_query` longtext NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `contact`
--

INSERT INTO `contact` (`con_id`, `con_nm`, `con_email`, `con_query`) VALUES
(1, 'Hiren', 'hiru@gmail.com', 'English Novels...'),
(2, 'Shital', 'shital@yahoo.com', 'Are you send me medical books?'),
(3, 'Manali', 'manali@yahoo.com', 'Java Complete Reference is available?'),
(4, 'Rina', 'rina@gmail.com', 'Artificial Intelligence'),
(5, 'ddeva', 'deva@gmail.com', 'hihihihihi');

-- --------------------------------------------------------

--
-- Table structure for table `payments`
--

CREATE TABLE `payments` (
  `id` int(11) NOT NULL,
  `name` varchar(50) DEFAULT NULL,
  `address` varchar(100) DEFAULT NULL,
  `pc` varchar(10) DEFAULT NULL,
  `city` varchar(50) DEFAULT NULL,
  `state` varchar(50) DEFAULT NULL,
  `phone` varchar(20) DEFAULT NULL,
  `product` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `shipping_details`
--

CREATE TABLE `shipping_details` (
  `id` int(11) NOT NULL,
  `name` char(50) NOT NULL,
  `address` text NOT NULL,
  `postal_code` bigint(20) NOT NULL,
  `city` varchar(50) NOT NULL,
  `state` varchar(50) NOT NULL,
  `phone` bigint(20) NOT NULL,
  `f_id` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `shipping_details`
--

INSERT INTO `shipping_details` (`id`, `name`, `address`, `postal_code`, `city`, `state`, `phone`, `f_id`) VALUES
(1, 'sanjeev kumar', ' 141 delhi', 110009, 'delhi', 'delhi', 9015501897, 'sanjeev'),
(2, 'sanjeev kumar', ' 141 delhi', 110009, 'delhi', 'delhi', 9015501897, 'sanjeev'),
(3, 'test test', ' ', 2578162, 'sydney', 'sydney', 2923962973, '123'),
(4, 'deva', ' ghjgghj', 656755, 'nz', 'nsw', 57657, '123'),
(7, 'test test', ' teat', 123, 'nsw', 'nsw', 2233444, '123'),
(8, 'test test', ' teat', 123, 'nsw', 'nsw', 2233444, '123'),
(9, 'deva', ' ewsddc', 32123, 'edfe', 'csed', 232222332, '123'),
(10, 'Kaur', ' ', 2212, 'padstow', 'NSW', 546777654, '123'),
(11, 'test test', ' terstevh', 53452, 'Sydney', 'NSW', 565367562, '1234');

-- --------------------------------------------------------

--
-- Table structure for table `subcat`
--

CREATE TABLE `subcat` (
  `subcat_id` int(4) NOT NULL,
  `parent_id` int(4) NOT NULL,
  `subcat_nm` varchar(35) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `subcat`
--

INSERT INTO `subcat` (`subcat_id`, `parent_id`, `subcat_nm`) VALUES
(1, 1, 'Computer'),
(2, 2, 'Sports'),
(3, 3, 'Business'),
(4, 4, 'Tourism'),
(5, 5, 'Yoga'),
(6, 6, 'Religion'),
(7, 7, 'Fiction'),
(9, 9, 'Science'),
(8, 8, 'Cooking');

-- --------------------------------------------------------

--
-- Table structure for table `user`
--

CREATE TABLE `user` (
  `u_id` int(4) NOT NULL,
  `u_type` varchar(20) DEFAULT 'user',
  `u_fnm` varchar(35) NOT NULL,
  `u_unm` varchar(25) NOT NULL,
  `u_pwd` varchar(20) NOT NULL,
  `u_gender` varchar(7) NOT NULL,
  `u_email` varchar(35) NOT NULL,
  `u_contact` varchar(12) NOT NULL,
  `u_city` varchar(20) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `user`
--

INSERT INTO `user` (`u_id`, `u_type`, `u_fnm`, `u_unm`, `u_pwd`, `u_gender`, `u_email`, `u_contact`, `u_city`) VALUES
(1, 'user', 'john smith', 'john', 'smith', 'Male', 'smithjohn@gmail.com', '74737377', 'Derby'),
(2, 'user', 'rian', 'potter', 'potter', 'Male', 'shital@yahoo.com', '9985689856', 'penrith'),
(3, 'user', 'Lina', 'Lina123', '123', 'Female', 'lina123@gmail.com', '6784676', 'Sydney'),
(4, 'admin', 'admin', 'admin', 'admin123', 'Female', 'admin@gmail.com', '88373887', 'Sydney'),
(5, 'staff', 'vina', 'Darcy', '123', 'Female', 'darcy@gmail.com', '9016388880', 'liverpool'),
(10, 'user', 'Aseece', 'Aseece', '1234', 'Female', 'aseece@gmail.com', '1234567', 'Sydney'),
(8, 'user', 'Mona', 'mona', 'mona123', 'Female', 'mona@mona.com', '7913792376', 'Revesby'),
(9, 'user', 'harteg', 'harteg', '123', 'Female', 'har@teg.com', '79369279237', 'Sydney');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `book`
--
ALTER TABLE `book`
  ADD PRIMARY KEY (`b_id`);

--
-- Indexes for table `category`
--
ALTER TABLE `category`
  ADD PRIMARY KEY (`cat_id`);

--
-- Indexes for table `contact`
--
ALTER TABLE `contact`
  ADD PRIMARY KEY (`con_id`);

--
-- Indexes for table `shipping_details`
--
ALTER TABLE `shipping_details`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `subcat`
--
ALTER TABLE `subcat`
  ADD PRIMARY KEY (`subcat_id`);

--
-- Indexes for table `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`u_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `book`
--
ALTER TABLE `book`
  MODIFY `b_id` int(4) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=80;
--
-- AUTO_INCREMENT for table `category`
--
ALTER TABLE `category`
  MODIFY `cat_id` int(4) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=22;
--
-- AUTO_INCREMENT for table `contact`
--
ALTER TABLE `contact`
  MODIFY `con_id` int(4) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;
--
-- AUTO_INCREMENT for table `shipping_details`
--
ALTER TABLE `shipping_details`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;
--
-- AUTO_INCREMENT for table `subcat`
--
ALTER TABLE `subcat`
  MODIFY `subcat_id` int(4) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=39;
--
-- AUTO_INCREMENT for table `user`
--
ALTER TABLE `user`
  MODIFY `u_id` int(4) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;