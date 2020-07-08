-- phpMyAdmin SQL Dump
-- version 4.9.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Apr 24, 2020 at 06:59 PM
-- Server version: 10.4.8-MariaDB
-- PHP Version: 7.1.32

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `ecom`
--

-- --------------------------------------------------------

--
-- Table structure for table `admin_users`
--

CREATE TABLE `admin_users` (
  `id` int(11) NOT NULL,
  `username` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `admin_users`
--

INSERT INTO `admin_users` (`id`, `username`, `password`) VALUES
(0, 'admin', 'admin'),
(1, 'marauders', 'prongs'),
(2, 'trio', 'padfoot');

-- --------------------------------------------------------

--
-- Table structure for table `categories`
--

CREATE TABLE `categories` (
  `id` int(11) NOT NULL,
  `categories` varchar(255) NOT NULL,
  `status` tinyint(4) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `categories`
--

INSERT INTO `categories` (`id`, `categories`, `status`) VALUES
(1, 'Mystry', 1),
(2, 'Thriller', 1),
(3, 'Adventure', 0),
(4, 'Romance', 1),
(5, 'Comic', 0),
(6, 'Horror', 1),
(7, 'Children\'s', 0),
(8, 'Fiction', 1),
(9, 'Autobiographies', 0),
(10, 'Self Help', 0);

-- --------------------------------------------------------

--
-- Table structure for table `contact_us`
--

CREATE TABLE `contact_us` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `email` varchar(75) NOT NULL,
  `mobile` int(15) NOT NULL,
  `comment` text NOT NULL,
  `add_on` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `contact_us`
--

INSERT INTO `contact_us` (`id`, `name`, `email`, `mobile`, `comment`, `add_on`) VALUES
(3, 'Aniket Shetty', 'aniket123@gmail.com', 14579623, 'I want to exchange my buy with its new version. Please help!', '2020-02-12 03:24:16'),
(2, 'Manasi Sharma', 'manasi@gmail.com', 24517965, 'I really need the deathly hallow series. Please bring it back in stock.', '2020-04-08 06:12:28'),
(4, 'Namrata Vast', 'namrata@gmail.com', 123654789, 'Amazing collection of books.', '2020-04-24 18:30:40'),
(1, 'Chirag Alva', 'chirag.alva@gmaiil.com', 1542369870, 'The product I am looking for is unavailable.', '2020-04-02 13:16:38');

-- --------------------------------------------------------

--
-- Table structure for table `order`
--

CREATE TABLE `order` (
  `id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `address` varchar(300) NOT NULL,
  `city` varchar(100) NOT NULL,
  `pincode` int(11) NOT NULL,
  `payment_type` varchar(20) NOT NULL,
  `total_price` float NOT NULL,
  `payment_status` varchar(20) NOT NULL,
  `order_status` int(11) NOT NULL,
  `txnid` varchar(30) NOT NULL,
  `mihpayid` varchar(30) NOT NULL,
  `payu_status` varchar(30) NOT NULL,
  `added_on` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `order`
--

INSERT INTO `order` (`id`, `user_id`, `address`, `city`, `pincode`, `payment_type`, `total_price`, `payment_status`, `order_status`, `txnid`, `mihpayid`, `payu_status`, `added_on`) VALUES
(0, 2, '338/5 Kumar Sadan, New Hall road, near karthika high school, kurla west, kurla, mumbai400070', 'Mumbai Suburban', 400070, 'COD', 620, 'pending', 1, '7a4527afe63ea3c034e2', '', '', '2020-04-24 04:06:37');

-- --------------------------------------------------------

--
-- Table structure for table `order_detail`
--

CREATE TABLE `order_detail` (
  `id` int(11) NOT NULL,
  `order_id` int(11) NOT NULL,
  `product_id` int(11) NOT NULL,
  `qty` int(11) NOT NULL,
  `price` float NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `order_detail`
--

INSERT INTO `order_detail` (`id`, `order_id`, `product_id`, `qty`, `price`) VALUES
(1, 0, 3217, 1, 620),
(2, 0, 5547, 1, 600),
(3, 0, 5548, 2, 475),
(4, 0, 9647, 1, 650),
(5, 0, 9647, 2, 650),
(6, 0, 2417, 1, 800),
(7, 0, 2417, 1, 800),
(8, 0, 2417, 1, 800);

-- --------------------------------------------------------

--
-- Table structure for table `order_status`
--

CREATE TABLE `order_status` (
  `id` int(11) NOT NULL,
  `name` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `product`
--

CREATE TABLE `product` (
  `id` int(11) NOT NULL,
  `categories_id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `mrp` float NOT NULL,
  `price` float NOT NULL,
  `qty` int(11) NOT NULL,
  `image` varchar(255) NOT NULL,
  `short_desc` varchar(2000) NOT NULL,
  `descrption` text NOT NULL,
  `meta_title` text NOT NULL,
  `meta_desc` varchar(2000) NOT NULL,
  `meta_keyword` varchar(2000) NOT NULL,
  `status` tinyint(4) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `product`
--

INSERT INTO `product` (`id`, `categories_id`, `name`, `mrp`, `price`, `qty`, `image`, `short_desc`, `descrption`, `meta_title`, `meta_desc`, `meta_keyword`, `status`) VALUES
(1223, 1, 'Dead until Dark', 420, 400, 23, '1.jpg', 'A girl who finds out the world of other creatures.', 'If you watched True Blood then you’re probably already familiar with the protagonist of this series. Sookie Stackhouse is just a small-time cocktail waitress who stumbles into a world bigger than herself (vampires, werewolves, and mysteries, oh my!). I confess that I picked up this novel when I needed a break from the heavier fair, and it served me well.\r\n\r\n', 'spooky', 'spooky and thrilling ', 'thrilling', 1),
(1224, 1, 'The girl with the dragon tattoo', 385, 370, 27, '14.jpg', 'Story of a girl to solve the mystry of a family who disappeared 40 years ago', 'This story was so successful that it inspired two movie franchises. Set in Sweden, the first of the series introduces us to Lisbeth Salander, a tattooed punk prodigy with an intriguing past who is tapped to help a journalist look into a family disappearance that occurred 40 years ago. From there, the tale spirals and unfolds into a familial drama and murder mystery. If you haven’t delved into this story yet then find a cozy spot outdoors and knock it out. But remember to apply sunscreen as you get lost in this thriller', 'mystry', 'patience', 'scary', 1),
(2547, 3, 'Treasure Island', 527, 520, 32, '', 'just like the Old Buccaneer comes to Jim Hawkins, setting the boy on a path to (what else?) adventure.', 'Every kid (and everyone who has ever been a kid) should read Treasure Island at least once, just as every kid should spend at least one summer pretending to be a pirate hunting for secret treasure. At some point in every life, people dream of adventure finding them and forcing them into the world—just like the Old Buccaneer comes to Jim Hawkins, setting the boy on a path to (what else?) adventure.', 'just like the Old Buccaneer comes to Jim Hawkins, setting the boy on a path to (what else?) adventure.', 'just like the Old Buccaneer comes to Jim Hawkins, setting the boy on a path to (what else?) adventure.', 'mustread', 1),
(2548, 3, 'The three musketeers', 548, 530, 29, '', 'to duel each of them in turn; when the illegal duel is interrupted by arresting soldiers, the four fight together and win the day—and that’s just the introductory chapter.', 'You can’t really discuss adventure stories without bringing Dumas into the conversation. His novels are still the gold standard when it comes to stories centered on a sense of esprit de corps and the origin of the idea people with a particular set of skills should not be mistreated. The story begins with aspiring Musketeer d’Artagnan offending legendary Musketeers Porthos, Athos, and Aramis and preparing—to their astonishment—to duel each of them in turn; when the illegal duel is interrupted by arresting soldiers, the four fight together and win the day—and that’s just the introductory chapter.', 'to duel each of them in turn; when the illegal duel is interrupted by arresting soldiers, the four fight together and win the day—and that’s just the introductory chapter.', 'to duel each of them in turn; when the illegal duel is interrupted by arresting soldiers, the four fight together and win the day—and that’s just the introductory chapter.', 'bestread', 1),
(5547, 4, 'It ends with us', 620, 600, 53, '32.jpg', 'everything she has with Ryle is suddenly thrown into question.', 'New to Boston, small-town girl Lily manages to get gorgeous neurosurgeon Ryle Kincaid to break his \"no dating\" rule. But his stubborn ways  make her wonder where that aversion came from. And when an old flame resurfaces, everything she has with Ryle is suddenly thrown into question.', 'everything she has with Ryle is suddenly thrown into question.', 'everything she has with Ryle is suddenly thrown into question.', 'cute', 1),
(5548, 4, 'Vision In White\r\n', 486, 475, 59, '31.jpg', 'their casual fling might lead to her own happy ending.', 'The prolific Nora Roberts has penned more than 200 romance novels, but this one earned top marks from her fans as the first installment in The Bride Quartet. Wedding photographer Mackensie \"Mac\" Elliot operates a wedding planning company with three friends. When a day on the job introduces her to sweet and stable English teacher Carter Maguire, their casual fling might lead to her own happy ending.', 'their casual fling might lead to her own happy ending.', 'their casual fling might lead to her own happy ending.', 'cute ', 1),
(7685, 5, 'Born Standing Up', 456, 450, 35, '', 'He’s so honest with himself and the reader that when he explains why it is he quit comedy to pursue acting, art, and writing, the reader understands.', 'Including all entertainment memoirs, not just comedy people, is Steve Martin’s, and not just because of Martin’s unsurprisingly beautiful prose. Unlike most memoirs, it seems to convey a clear-eyed honesty, as Martin seeks to de-mythologize his own life, one that the rest of us have so mythologized, specifically his days in the 1970s when he was a stadium-filling stand-up comedian. (He even calls it a biography, and not an autobiography, because he’s “writing about someone I used to know.”) He’s so honest with himself and the reader that when he explains why it is he quit comedy to pursue acting, art, and writing, the reader understands.', 'He’s so honest with himself and the reader that when he explains why it is he quit comedy to pursue acting, art, and writing, the reader understands.', 'He’s so honest with himself and the reader that when he explains why it is he quit comedy to pursue acting, art, and writing, the reader understands.', 'best', 1),
(4686, 5, 'I Feel Bad About My Neck', 567, 550, 52, '', 'In I Feel Bad About My Neck, one her last before her death in 2012, is about her own (but universal) experiences with aging, menopause, and empty nest syndrome, along with her favored topics of food and New York.', 'Ephron was never not candid, never held back anything—any tragedy, indignity, embarrassment, or personal triumph was fodder for her many books, because “everything is copy,” as she reportedly said and clearly did. In addition to wonderful comedy scripts like When Harry Met Sally, My Blue Heaven, and Sleepless in Seattle, Ephron mined her private life for her books. In I Feel Bad About My Neck, one her last before her death in 2012, is about her own (but universal) experiences with aging, menopause, and empty nest syndrome, along with her favored topics of food and New York.', 'In I Feel Bad About My Neck, one her last before her death in 2012, is about her own (but universal) experiences with aging, menopause, and empty nest syndrome, along with her favored topics of food and New York.', 'In I Feel Bad About My Neck, one her last before her death in 2012, is about her own (but universal) experiences with aging, menopause, and empty nest syndrome, along with her favored topics of food and New York.', 'comedy', 1),
(9647, 6, 'House of leaves', 675, 650, 45, '18.jpg', 'which, considering the dark madness at its core, isn’t necessarily a pleasant experience.', 'Put simply, House of Leaves is one of the most frightening books ever written. From a fairly standard horror premise (a house is revealed to be slightly larger on the inside than is strictly possible) Danielewski spins out a dizzying tale involving multiple unreliable narrators, typographic mysteries, and looping footnotes that manage to drag the reader into the story and then make them doubt their own perception of that story. It’s a trick no one else has managed to such dramatic effect, making this novel more of a participatory experience than any other work of literature—which, considering the dark madness at its core, isn’t necessarily a pleasant experience.', 'which, considering the dark madness at its core, isn’t necessarily a pleasant experience.', 'which, considering the dark madness at its core, isn’t necessarily a pleasant experience.', 'terrifying', 1),
(9648, 6, 'Rosemary\'s baby', 359, 350, 73, '17.jpg', 'any mother has for their child, all expertly knotted into a story that will keep you awake at night.', 'The film adaptation has supplanted the novel in pop culture, but the novel was a huge hit for Levin—and the film actually sticks to the plot and dialog so closely you really do get a feel for the novel from watching it. The story of a young woman who becomes pregnant after a nightmare gets its terror not from the well-known twist of the baby’s parentage (hint: not her husband), but from the increasing isolation Rosemary experiences as her suspicions about everyone around her grow. So many threads tie into the terror, from the emotional and economic uncertainty of a struggling young couple to the simple fear any mother has for their child, all expertly knotted into a story that will keep you awake at night.', 'any mother has for their child, all expertly knotted into a story that will keep you awake at night.', 'any mother has for their child, all expertly knotted into a story that will keep you awake at night.', 'heartwrenching', 1),
(5874, 7, 'The cat in the hat', 537, 500, 71, '', 'kid-tested titles. (We\'ve included a few rated best for 12 and up for the precocious readers out there!)', 'From picture books to graphic novels, fantasy to family fun, these must-read books have the power to hook both boys and girls. Some are cultural touchstones that belong in every kid\'s library. Others open kids\' minds to cultures beyond their own. And some are modern releases that have the timeless quality of classics -- the kinds that get handed down to siblings and passed around classrooms. Whether you have a reluctant reader or a budding bookworm, check out these surefire, kid-tested titles. (We\'ve included a few rated best for 12 and up for the precocious readers out there!)', 'kid-tested titles. (We\'ve included a few rated best for 12 and up for the precocious readers out there!)', 'kid-tested titles. (We\'ve included a few rated best for 12 and up for the precocious readers out there!)', 'childrens', 1),
(5875, 7, 'Goodnight moon', 561, 550, 12, '', 'these surefire, kid-tested titles. (We\'ve included a few rated best for 12 and up for the precocious readers out there!)', 'From picture books to graphic novels, fantasy to family fun, these must-read books have the power to hook both boys and girls. Some are cultural touchstones that belong in every kid\'s library. Others open kids\' minds to cultures beyond their own. And some are modern releases that have the timeless quality of classics -- the kinds that get handed down to siblings and passed around classrooms. Whether you have a reluctant reader or a budding bookworm, check out these surefire, kid-tested titles. (We\'ve included a few rated best for 12 and up for the precocious readers out there!)', 'these surefire, kid-tested titles. (We\'ve included a few rated best for 12 and up for the precocious readers out there!)', 'these surefire, kid-tested titles. (We\'ve included a few rated best for 12 and up for the precocious readers out there!)', 'inspiring', 1),
(2374, 8, 'The kite runner', 675, 650, 32, '16.jpg', 'It’s a story about the long shadows that family secrets cast across decades, the enduring love of friendship, and the transformative power of forgiveness.', 'Told against the backdrop of the changing political landscape of Afghanistan from the 1970s to the period following 9/11, The Kite Runner is the story of the unlikely and complicated friendship between Amir, the son of a wealthy merchant, and Hassan, the son of his father’s servant until cultural and class differences and the turmoil of war tear them asunder. Hosseini brings his homeland to life for us in a way that post 9/11 media coverage never could, showing us a world of ordinary people who live, die, eat, pray, dream, and love. It’s a story about the long shadows that family secrets cast across decades, the enduring love of friendship, and the transformative power of forgiveness.', 'It’s a story about the long shadows that family secrets cast across decades, the enduring love of friendship, and the transformative power of forgiveness.', 'It’s a story about the long shadows that family secrets cast across decades, the enduring love of friendship, and the transformative power of forgiveness.', 'sacriifice', 1),
(2376, 8, 'A single man', 630, 600, 32, '15.jpg', 't every moment counts. His clear, direct prose will grab hold of you, snap your head around, and challenge you to stare your mortality in the face.', 'While this is far from a light read, it’s one of the first novels I suggest whenever someone asks me for a book recommendation because it really packs a punch. Right to the solar plexus. The novel looks at a single day in the life of George Falconer, a middle-aged English professor grieving the loss of his partner, Jim. As George struggles against the grip of his depression and wonders what the point of life is any more, he gradually learns, through a dinner with his best friend and a heart-to-heart with a student, the gift of being alive with all its trials and its triumphs. Through the snapshot of a single day in a man’s life, Isherwood reminds us that every moment counts. His clear, direct prose will grab hold of you, snap your head around, and challenge you to stare your mortality in the face.', 't every moment counts. His clear, direct prose will grab hold of you, snap your head around, and challenge you to stare your mortality in the face.', 't every moment counts. His clear, direct prose will grab hold of you, snap your head around, and challenge you to stare your mortality in the face.', 'engaging', 1),
(1234, 9, 'Long walk to freedom', 739, 700, 43, '', 'It also contains in depth analysis of Mandela’s perception of the anti-apartheid struggle of the South Africans. In simple words, this book is Mandela’s long walk to freedom!', 'Nelson Mandela’s autobiography contains every elements of knowledge you want to know about this legendary leader. Starting from his childhood, growing up in to a freedom fighter, to his twenty seven years in prison, and his significant role in molding up a new, democratic South Africa, this book has it all.\r\n\r\nIt also contains in depth analysis of Mandela’s perception of the anti-apartheid struggle of the South Africans. In simple words, this book is Mandela’s long walk to freedom!', 'It also contains in depth analysis of Mandela’s perception of the anti-apartheid struggle of the South Africans. In simple words, this book is Mandela’s long walk to freedom!', 'It also contains in depth analysis of Mandela’s perception of the anti-apartheid struggle of the South Africans. In simple words, this book is Mandela’s long walk to freedom!', 'inspiring', 1),
(2345, 9, 'The Autobiography of Benjamin Franklin', 650, 620, 41, '', 'Another reason why this is a classic is due to the historical factors. It reveals how life was in the 18th Century, the idealism, the intellectualism and optimistic beliefs are very well expressed. This autobiography contains four parts and is totally worth a read!', 'Written from 1771 to 1790, this book contains the life history of one of America’s founding fathers. Benjamin Franklin’s autobiography will tell you how a lower-middle classed youth raised up into one of the most admired men in the world.\r\n\r\nIt will also tell you how Mr. Franklin believed in the American Dream, and indicated the possibilities of life in the New World. He proved to the world that hard works paid off, and that undistinguished persons could become of great importance in America.\r\n\r\nAnother reason why this is a classic is due to the historical factors. It reveals how life was in the 18th Century, the idealism, the intellectualism and optimistic beliefs are very well expressed. This autobiography contains four parts and is totally worth a read!', 'Another reason why this is a classic is due to the historical factors. It reveals how life was in the 18th Century, the idealism, the intellectualism and optimistic beliefs are very well expressed. This autobiography contains four parts and is totally worth a read!', 'Another reason why this is a classic is due to the historical factors. It reveals how life was in the 18th Century, the idealism, the intellectualism and optimistic beliefs are very well expressed. This autobiography contains four parts and is totally worth a read!', 'inspiring', 0),
(3547, 10, 'Whatcha Gonna Do with That Duck', 642, 590, 23, '', 'This book is a masterpiece, and unlike most self-improvement books, this one targets an infinite array of areas in which you can, and ultimately must, improve.', 'This book is a masterpiece, and unlike most self-improvement books, this one targets an infinite array of areas in which you can, and ultimately must, improve.\r\n\r\nWith its ruthless honesty and genuine inspiration, Godin makes you ponder the difficult questions you wouldn’t ever dare to ask yourself. The result is a completely new perspective of the world- a fresher, more vibrant perspective, packed with new and bold possibilities.\r\n\r\nIf you need a friend who understands you, a boss that forces you to venture deep in your non-comfort zone, a wise guru that tells you what needs to be left behind and a sage that proclaims the coming of a new age, then look no further; you will find these shrewd voices all tied together in this magnificent book. Make sure to get this one.', 'This book is a masterpiece, and unlike most self-improvement books, this one targets an infinite array of areas in which you can, and ultimately must, improve.', 'This book is a masterpiece, and unlike most self-improvement books, this one targets an infinite array of areas in which you can, and ultimately must, improve.', 'selfevolving', 1),
(5621, 10, 'Fooled', 570, 550, 32, '', 'Perhaps it is the fact that randomness played such a significant role in my years as a poker player that I find this book utterly important.\r\n\r\n', 'Perhaps it is the fact that randomness played such a significant role in my years as a poker player that I find this book utterly important.\r\n\r\nWe often attribute skill where there is only luck; we confuse correlation with causation and we underestimate the incredible effect small changes can have.\r\n\r\nThis book gave me a perspective that I unfortunately rarely encounter in others: you can do everything right and still lose, or do everything wrong and still win. It is thus not about the outcome; it is about your actions that have lead you there.\r\n\r\nThis important message is central to many of my decisions I make in my life. This book by Taleb helps you develop such a perspective so you will be able to live in a world one cannot fully understand, where the results are not always clear markers of performance and where chance seems to play games with our fates. Stop being fooled by randomness!\r\n\r\n', 'Perhaps it is the fact that randomness played such a significant role in my years as a poker player that I find this book utterly important.\r\n\r\n', 'Perhaps it is the fact that randomness played such a significant role in my years as a poker player that I find this book utterly important.\r\n\r\n', 'selflove', 1),
(2415, 8, 'The end of the affair', 750, 700, 30, '13.jpg', 'sometimes perilous journey and that while love doesn’t always last forever, the lessons we learn from it do.', 'This is another one of those books filled with nuggets of truth that you might cut your teeth on, but that we all need to learn to swallow. The End of the Affair tells the story of the brief but life-altering adulterous relationship between Maurice Bendrix and Sarah Miles. Set in part against the turmoil of World War II, the personal battles of love, hate, guilt, and the search for truth and redemption are all the more poignant. The story of Maurice and Sarah reminds us that the things we do for love can trigger an inexorable pull of fate that carries our lives on a passionate and sometimes perilous journey and that while love doesn’t always last forever, the lessons we learn from it do.', 'sometimes perilous journey and that while love doesn’t always last forever, the lessons we learn from it do.', 'sometimes perilous journey and that while love doesn’t always last forever, the lessons we learn from it do.', 'forver', 1),
(2416, 8, 'To Kill a Mockingbird\r\n', 560, 500, 13, '12.jpg', 'Alternately humorous and brutally honest, the novel looks critically at social issues of class, race, and sex politics and the sometimes ironic injustice of the American legal system.', 'This one’s gotten a lot of attention with the recent announcement that Lee will be releasing a prequel this summer, so even if you’ve read it before, now might be a good time to revisit it. Told through the point of view of the 6 year-old Scout Finch, the story recounts a crisis that rocks her Alabama hometown when the African American Thom Robinson is accused of raping a young white woman. Scout’s father, Atticus Finch, is the lawyer appointed to represent Robinson. Alternately humorous and brutally honest, the novel looks critically at social issues of class, race, and sex politics and the sometimes ironic injustice of the American legal system.', 'Alternately humorous and brutally honest, the novel looks critically at social issues of class, race, and sex politics and the sometimes ironic injustice of the American legal system.', 'Alternately humorous and brutally honest, the novel looks critically at social issues of class, race, and sex politics and the sometimes ironic injustice of the American legal system.', 'system', 1),
(2417, 8, 'Harry Potter and the Sorcerer’s Stone\r\n', 860, 800, 10, '11.jpg', 'the reality that sometimes the fiercest battles we fight are within ourselves.', 'K, who am I kidding? Read all of them, but you have to begin at the beginning, right? The Wizarding world of Harry Potter has captivated children and adults alike. The story of the Boy Who Lived, a downtrodden, emotionally neglected orphan who discovers he’s a wizard, ticks all the big boxes on must-read lists. It deals with the enduring love of friendship, the pain of loss, the triumph of good over evil, and the reality that sometimes the fiercest battles we fight are within ourselves.', 'the reality that sometimes the fiercest battles we fight are within ourselves.', 'the reality that sometimes the fiercest battles we fight are within ourselves.', 'addicting', 1),
(2419, 8, 'The Lion, the Witch, and the Wardrobe', 650, 600, 12, '10.jpg', 'r II England, the land of Narnia represents the timeless hope in a better, brighter future.', 'When Peter, Susan, Edmund, and Lucy slip into the magical land of Narnia, befriending talking animals and battling the White Witch, they discover the bonds of family and the value of bravery. This is more than a story about an entire world tucked away in an old piece of furniture. It’s a novel about the boundlessness of the human imagination. Set against the backdrop of World War II England, the land of Narnia represents the timeless hope in a better, brighter future.', 'r II England, the land of Narnia represents the timeless hope in a better, brighter future.', 'r II England, the land of Narnia represents the timeless hope in a better, brighter future.', 'smart', 1),
(2420, 8, 'The Girl Who Fell From The Sky', 890, 850, 43, '9.jpg', 'black-and-white world. Duro offers a masterful novel that interrogates the cultural construction of race in America and challenges us to confront our own prejudices.', 'This novel tells the story of Rachel, the daughter of a Danish mother and black father. When Rachel, her mother, and her younger brother fall nine stories from an apartment building, Rachel is the only survivor, and she’s taken in by her black grandmother in a predominantly white Portland neighborhood. With her brown skin and blue eyes (a white girl’s eyes in a Black girl’s face) Rachel faces the challenge of learning what it means to be biracial in a black-and-white world. Duro offers a masterful novel that interrogates the cultural construction of race in America and challenges us to confront our own prejudices.', 'black-and-white world. Duro offers a masterful novel that interrogates the cultural construction of race in America and challenges us to confront our own prejudices.', 'black-and-white world. Duro offers a masterful novel that interrogates the cultural construction of race in America and challenges us to confront our own prejudices.', 'black', 1),
(2421, 8, 'Alice’s Adventures in Wonderland', 800, 780, 23, '8.jpg', 'he boundaries between real and make-believe and the all-too real sensation of trying to find our way around a world we can’t make sense of.', 'A classic work of Victorian Children’s Fiction, this is a whimsical tale of magic and nonsense in which Alice finds herself in an imaginary world after chasing a white rabbit she sees while sitting quietly on the riverbank. Opening this novel invites you to fall down the proverbial rabbit hole and into a world of talking animals and magic mushrooms that cause Alice to grow or shrink depending on which side she eats. This novel has delighted children and adults alike with its blurring of the boundaries between real and make-believe and the all-too real sensation of trying to find our way around a world we can’t make sense of.', 'he boundaries between real and make-believe and the all-too real sensation of trying to find our way around a world we can’t make sense of.', 'he boundaries between real and make-believe and the all-too real sensation of trying to find our way around a world we can’t make sense of.', 'brave', 1),
(7895, 6, 'Lord Of the flies', 760, 720, 31, '20.jpg', 'The great sage Pat Benatar once sang that hell is for children. Golding’s account of children stranded on an island without supplies or adult supervision is absolutely terrifying for one simple reason: there’s nothing supernatural going on. ', 'The great sage Pat Benatar once sang that hell is for children. Golding’s account of children stranded on an island without supplies or adult supervision is absolutely terrifying for one simple reason: there’s nothing supernatural going on. It’s a story about insufficiently socialized humans descending into savagery because that’s our fundamental nature. You look into the abyss at the center of this novel and the abyss looks back.', 'The great sage Pat Benatar once sang that hell is for children. Golding’s account of children stranded on an island without supplies or adult supervision is absolutely terrifying for one simple reason: there’s nothing supernatural going on. ', 'The great sage Pat Benatar once sang that hell is for children. Golding’s account of children stranded on an island without supplies or adult supervision is absolutely terrifying for one simple reason: there’s nothing supernatural going on. ', 'The great sage Pat Benatar once sang that hell is for children. Golding’s account of children stranded on an island without supplies or adult supervision is absolutely terrifying for one simple reason: there’s nothing supernatural going on. ', 1),
(7896, 6, 'We need to talk about Kevin', 930, 800, 12, '19.jpg', 'Another story centered on the terror of children, the horror inherent in this story comes from the fact that the human beings we create eventually become their own people—and possibly strangers to us. ', 'Another story centered on the terror of children, the horror inherent in this story comes from the fact that the human beings we create eventually become their own people—and possibly strangers to us. Not everyone has a close and loving relationship with their parents, and while the idea that your own kids might grow up to be criminals isn’t pleasant, most people assume they will at least recognize themselves in their kids. But what if you don’t? What if your child—your child—is a blank monster?', 'Another story centered on the terror of children, the horror inherent in this story comes from the fact that the human beings we create eventually become their own people—and possibly strangers to us. ', 'Another story centered on the terror of children, the horror inherent in this story comes from the fact that the human beings we create eventually become their own people—and possibly strangers to us. ', 'Another story centered on the terror of children, the horror inherent in this story comes from the fact that the human beings we create eventually become their own people—and possibly strangers to us. ', 1),
(5463, 4, 'Beautiful disaster', 560, 520, 13, '38.jpg', 'Abby Abernathy swears she\'s going to leave her dark past behind her when she goes to college, becoming the consummate good girl.', 'Abby Abernathy swears she\'s going to leave her dark past behind her when she goes to college, becoming the consummate good girl. But all of her best intentions are challenged by tattooed campus bad boy Travis Maddox, who tricks Abby into a month-long bet. The stakes turn out to be higher than either of them realize.', 'Abby Abernathy swears she\'s going to leave her dark past behind her when she goes to college, becoming the consummate good girl.', 'Abby Abernathy swears she\'s going to leave her dark past behind her when she goes to college, becoming the consummate good girl.', 'Abby Abernathy swears she\'s going to leave her dark past behind her when she goes to college, becoming the consummate good girl.', 1),
(5466, 4, 'Outlanders', 670, 650, 31, '33.jpg', 'Before it became an epic costume drama on Starz, this time-traveling romance novel introduced the world to Claire Randall, a former British combat nurse, and her Scottish warrior love interest ... who\'s living in 1743. ', 'Before it became an epic costume drama on Starz, this time-traveling romance novel introduced the world to Claire Randall, a former British combat nurse, and her Scottish warrior love interest ... who\'s living in 1743. This one\'s got it all: time travel, danger, intrigue, and of course, plenty of passionate love.', 'Before it became an epic costume drama on Starz, this time-traveling romance novel introduced the world to Claire Randall, a former British combat nurse, and her Scottish warrior love interest ... who\'s living in 1743. ', 'Before it became an epic costume drama on Starz, this time-traveling romance novel introduced the world to Claire Randall, a former British combat nurse, and her Scottish warrior love interest ... who\'s living in 1743. ', 'Before it became an epic costume drama on Starz, this time-traveling romance novel introduced the world to Claire Randall, a former British combat nurse, and her Scottish warrior love interest ... who\'s living in 1743. ', 1),
(5465, 4, 'Call me by your name', 950, 920, 10, '34.jpg', 'You may have already seen the film starring Timothee Chalamet, but this steamy love story between two young men in the Italian Riviera is worth a read either way.', 'You may have already seen the film starring Timothee Chalamet, but this steamy love story between two young men in the Italian Riviera is worth a read either way. Pro tip: Grab a juicy peach before you crack the spine. Just trust us. ', 'You may have already seen the film starring Timothee Chalamet, but this steamy love story between two young men in the Italian Riviera is worth a read either way.', 'You may have already seen the film starring Timothee Chalamet, but this steamy love story between two young men in the Italian Riviera is worth a read either way.', 'You may have already seen the film starring Timothee Chalamet, but this steamy love story between two young men in the Italian Riviera is worth a read either way.', 1),
(5464, 4, 'Bared to you', 900, 800, 10, '37.jpg', 'If you like your romance in multiple installments, try the Crossfire series. Big city newbie Eva Tramell literally falls at the feet of billionaire tycoon Gideon Cross, kickstarting a steamy romance that reveals secrets from both their dark pasts. ', 'If you like your romance in multiple installments, try the Crossfire series. Big city newbie Eva Tramell literally falls at the feet of billionaire tycoon Gideon Cross, kickstarting a steamy romance that reveals secrets from both their dark pasts. Sound familiar? There\'s a reason one Amazon reviewer called it the \"soap opera version of Fifty Shades of Grey.\"', 'If you like your romance in multiple installments, try the Crossfire series. Big city newbie Eva Tramell literally falls at the feet of billionaire tycoon Gideon Cross, kickstarting a steamy romance that reveals secrets from both their dark pasts. ', 'If you like your romance in multiple installments, try the Crossfire series. Big city newbie Eva Tramell literally falls at the feet of billionaire tycoon Gideon Cross, kickstarting a steamy romance that reveals secrets from both their dark pasts. ', 'If you like your romance in multiple installments, try the Crossfire series. Big city newbie Eva Tramell literally falls at the feet of billionaire tycoon Gideon Cross, kickstarting a steamy romance that reveals secrets from both their dark pasts. ', 1),
(9543, 2, 'The silent patient', 940, 920, 2, '40.jpg', '2019\'s standout thriller follows Alicia Berenson, a celebrated painter married to a famed fashion photographer.', '2019\'s standout thriller follows Alicia Berenson, a celebrated painter married to a famed fashion photographer. But one day, she shoots her husband in the face...five times...and never speaks again. \r\n\r\n', '2019\'s standout thriller follows Alicia Berenson, a celebrated painter married to a famed fashion photographer.', '2019\'s standout thriller follows Alicia Berenson, a celebrated painter married to a famed fashion photographer.', '2019\'s standout thriller follows Alicia Berenson, a celebrated painter married to a famed fashion photographer.', 1),
(9544, 2, 'Behind closed doors', 520, 480, 10, '39.jpg', 'Picture-perfect newlyweds Jack and Grace are the couple you love to hate.', 'Picture-perfect newlyweds Jack and Grace are the couple you love to hate. He has the money and perfect job, and she is a beautiful homemaker. But when you look closer, they\'re almost too flawless, and Grace is nearly unreachable and impossible to get to know—eerily so.\r\n\r\n', 'Picture-perfect newlyweds Jack and Grace are the couple you love to hate.', 'Picture-perfect newlyweds Jack and Grace are the couple you love to hate.', 'Picture-perfect newlyweds Jack and Grace are the couple you love to hate.', 1),
(9548, 2, 'Hidden bodies', 760, 700, 10, '25.jpg', 'This is the second book in Kepnes\' series, adapted for Netflix as the series You. (Catch the first book here). The follow-up to the novel follows the same storyline as the series\' second season', 'This is the second book in Kepnes\' series, adapted for Netflix as the series You. (Catch the first book here). The follow-up to the novel follows the same storyline as the series\' second season, seeing protagonist Joe Goldberg leave behind his murdering ways in NYC for sunny L.A. But he soon finds a new object of obsession—as he fights to keep his violent, stalking instincts at bay.  ', 'This is the second book in Kepnes\' series, adapted for Netflix as the series You. (Catch the first book here). The follow-up to the novel follows the same storyline as the series\' second season', 'This is the second book in Kepnes\' series, adapted for Netflix as the series You. (Catch the first book here). The follow-up to the novel follows the same storyline as the series\' second season', 'This is the second book in Kepnes\' series, adapted for Netflix as the series You. (Catch the first book here). The follow-up to the novel follows the same storyline as the series\' second season', 1),
(9546, 2, 'An anonymous girl', 950, 400, 25, '26.jpg', 'This hypnotic novel packs an unexpected twist as it follows a woman named Jessica Farris who enters into a psychological study to earn extra money.', 'This hypnotic novel packs an unexpected twist as it follows a woman named Jessica Farris who enters into a psychological study to earn extra money. The experiments are led by Dr. Shields, who soon takes the study beyond the lab, infiltrating Jessica\'s real life.', 'This hypnotic novel packs an unexpected twist as it follows a woman named Jessica Farris who enters into a psychological study to earn extra money.', 'This hypnotic novel packs an unexpected twist as it follows a woman named Jessica Farris who enters into a psychological study to earn extra money.', 'This hypnotic novel packs an unexpected twist as it follows a woman named Jessica Farris who enters into a psychological study to earn extra money.', 1),
(3214, 1, 'The unquite dead', 254, 210, 10, '3.jpg', 'The honeymoon period quickly wears off as her new husband’s late wife and unexposed secrets threaten their marriage and her sanity.', 'I could have added another Agatha Christie to this list, and it 100 % would have been warranted, but this high rated gothic piece was a nice contrast. Rebecca uses all of the elements of a gothic novel—a house, a hidden history, a haunting of some kind. Our naive heroine is swept off her feet by a dashing widower who promises her the world, but of course has a dastardly secret. The honeymoon period quickly wears off as her new husband’s late wife and unexposed secrets threaten their marriage and her sanity.', 'The honeymoon period quickly wears off as her new husband’s late wife and unexposed secrets threaten their marriage and her sanity.', 'The honeymoon period quickly wears off as her new husband’s late wife and unexposed secrets threaten their marriage and her sanity.', 'The honeymoon period quickly wears off as her new husband’s late wife and unexposed secrets threaten their marriage and her sanity.', 1),
(3215, 1, 'Rebecca', 650, 620, 12, '4.jpg', '', '', '', '', '', 1),
(3216, 1, 'Front page affair', 850, 800, 10, '5.jpg', 'This story set in the early 1900s introduces readers to budding journalist Kitty Weeks. Desperate to prove her merit as a writer, she jumps at the chance to leave her fashion and gossip column behind when a man is murdered at a high society party she’s covering. What unfolds is a mystery that’s bigger than she could have imagined.', 'This story set in the early 1900s introduces readers to budding journalist Kitty Weeks. Desperate to prove her merit as a writer, she jumps at the chance to leave her fashion and gossip column behind when a man is murdered at a high society party she’s covering. What unfolds is a mystery that’s bigger than she could have imagined.', 'This story set in the early 1900s introduces readers to budding journalist Kitty Weeks. Desperate to prove her merit as a writer, she jumps at the chance to leave her fashion and gossip column behind when a man is murdered at a high society party she’s covering. What unfolds is a mystery that’s bigger than she could have imagined.', 'This story set in the early 1900s introduces readers to budding journalist Kitty Weeks. Desperate to prove her merit as a writer, she jumps at the chance to leave her fashion and gossip column behind when a man is murdered at a high society party she’s covering. What unfolds is a mystery that’s bigger than she could have imagined.', 'vThis story set in the early 1900s introduces readers to budding journalist Kitty Weeks. Desperate to prove her merit as a writer, she jumps at the chance to leave her fashion and gossip column behind when a man is murdered at a high society party she’s covering. What unfolds is a mystery that’s bigger than she could have imagined.', 1),
(3217, 1, 'The alienist', 650, 620, 20, '6.jpg', 'The Alienist is considered a modern classic of historical suspense fiction. A reporter and a psychologist or “alienist” band together to solve a horrific crime in 19th century New York. It’s gritty, it’s suspenseful, and it’s an undeniable page-turner.', 'The Alienist is considered a modern classic of historical suspense fiction. A reporter and a psychologist or “alienist” band together to solve a horrific crime in 19th century New York. It’s gritty, it’s suspenseful, and it’s an undeniable page-turner.Described as a “love letter to reading,” this tale unfolds as famed fictional author Vida Winter is near the end of her life and she decides to commission a young biographer to finally tell the truth of her incredible and haunting life. Part gothic novel and part mystery, The Thirteenth Tale spans decades as it unfolds the story of Vida Winter’s past.', 'The Alienist is considered a modern classic of historical suspense fiction. A reporter and a psychologist or “alienist” band together to solve a horrific crime in 19th century New York. It’s gritty, it’s suspenseful, and it’s an undeniable page-turner.', 'The Alienist is considered a modern classic of historical suspense fiction. A reporter and a psychologist or “alienist” band together to solve a horrific crime in 19th century New York. It’s gritty, it’s suspenseful, and it’s an undeniable page-turner.', 'The Alienist is considered a modern classic of historical suspense fiction. A reporter and a psychologist or “alienist” band together to solve a horrific crime in 19th century New York. It’s gritty, it’s suspenseful, and it’s an undeniable page-turner.', 1),
(3219, 1, 'The shadow of the wind', 800, 700, 20, '7.jpg', 'Translated from its original Spanish publication, The Shadow of the Wind mixes intrigue, historical tragedy, and mystery masterfully. Set in Barcelona, a boy discovers a cursed book that changes his life and sets him down a path, weaving his life with the very book’s author.\r\n\r\nA RISING MAN BY ABIR MUKHERJEE', 'Translated from its original Spanish publication, The Shadow of the Wind mixes intrigue, historical tragedy, and mystery masterfully. Set in Barcelona, a boy discovers a cursed book that changes his life and sets him down a path, weaving his life with the very book’s author.\r\n\r\nA RISING MAN BY ABIR MUKHERJEE', 'Translated from its original Spanish publication, The Shadow of the Wind mixes intrigue, historical tragedy, and mystery masterfully. Set in Barcelona, a boy discovers a cursed book that changes his life and sets him down a path, weaving his life with the very book’s author.\r\n\r\nA RISING MAN BY ABIR MUKHERJEE The Manson murders have fascinated generations, the recent success of Once Upon A Time in Hollywood is a testament to that fact. This book prods at the questions on everyone’s mind, what motivated Manson and his selection of victims? How did he influence four young women to commit heinous crimes in his name? This first-hand account by prosecutor Vincent Bugliosi explores those questions.\r\n\r\n', 'Translated from its original Spanish publication, The Shadow of the Wind mixes intrigue, historical tragedy, and mystery masterfully. Set in Barcelona, a boy discovers a cursed book that changes his life and sets him down a path, weaving his life with the very book’s author.\r\n\r\nA RISING MAN BY ABIR MUKHERJEE', 'Translated from its original Spanish publication, The Shadow of the Wind mixes intrigue, historical tragedy, and mystery masterfully. Set in Barcelona, a boy discovers a cursed book that changes his life and sets him down a path, weaving his life with the very book’s author.\r\n\r\nA RISING MAN BY ABIR MUKHERJEE', 1),
(3213, 1, 'A rising man', 960, 520, 20, '2.jpg', 'I’ve always been fascinated by the time period where the British ruled India, known as the “British Raj.” In this crime thriller by Abir Mukherjee, he introduces readers to former Scotland Yard detective Sam Wyndham, who migrates to Calcutta.', 'I’ve always been fascinated by the time period where the British ruled India, known as the “British Raj.” In this crime thriller by Abir Mukherjee, he introduces readers to former Scotland Yard detective Sam Wyndham, who migrates to Calcutta. He’s been recruited to join the police force and quickly finds that the situation between the British and Indians is fraught with tension and unease. Of course, there’s a murder and mysterious note and corruption, what makes this thriller stand out is his masterful job at tackling the political situation of the time.\r\n\r\n', 'I’ve always been fascinated by the time period where the British ruled India, known as the “British Raj.” In this crime thriller by Abir Mukherjee, he introduces readers to former Scotland Yard detective Sam Wyndham, who migrates to Calcutta.', 'I’ve always been fascinated by the time period where the British ruled India, known as the “British Raj.” In this crime thriller by Abir Mukherjee, he introduces readers to former Scotland Yard detective Sam Wyndham, who migrates to Calcutta.', 'I’ve always been fascinated by the time period where the British ruled India, known as the “British Raj.” In this crime thriller by Abir Mukherjee, he introduces readers to former Scotland Yard detective Sam Wyndham, who migrates to Calcutta.', 1);

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `password` varchar(50) NOT NULL,
  `email` varchar(250) NOT NULL,
  `mobile` int(15) NOT NULL,
  `add_on` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `password`, `email`, `mobile`, `add_on`) VALUES
(1, 'Chirag Alva', 'chirag123', 'chirag.alva@gmail.com', 542255776, '2020-04-10'),
(2, 'Manasi Sharma', 'manasi123', 'manasi@gmail.com', 254117633, '2020-04-01');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `contact_us`
--
ALTER TABLE `contact_us`
  ADD PRIMARY KEY (`mobile`);

--
-- Indexes for table `order`
--
ALTER TABLE `order`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `order_detail`
--
ALTER TABLE `order_detail`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `categories`
--
ALTER TABLE `categories`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2003;

--
-- AUTO_INCREMENT for table `contact_us`
--
ALTER TABLE `contact_us`
  MODIFY `mobile` int(15) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=1542369871;

--
-- AUTO_INCREMENT for table `order_detail`
--
ALTER TABLE `order_detail`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
