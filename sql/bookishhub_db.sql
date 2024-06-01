-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jul 11, 2023 at 03:53 PM
-- Server version: 10.4.25-MariaDB
-- PHP Version: 8.1.10

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `bookishhub_db`
--

-- --------------------------------------------------------

--
-- Table structure for table `tbl_address`
--

CREATE TABLE `tbl_address` (
  `address_id` int(5) NOT NULL,
  `user_id` int(5) NOT NULL,
  `address1` varchar(100) NOT NULL,
  `address2` varchar(100) NOT NULL,
  `address3` varchar(100) NOT NULL,
  `city` varchar(30) NOT NULL,
  `state` varchar(30) NOT NULL,
  `country` varchar(30) NOT NULL,
  `postalcode` int(5) NOT NULL,
  `label` varchar(5) NOT NULL,
  `address_name` varchar(55) NOT NULL,
  `address_phone` varchar(11) NOT NULL,
  `default` varchar(3) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `tbl_bestbooks`
--

CREATE TABLE `tbl_bestbooks` (
  `book_id` int(5) NOT NULL,
  `book_title` varchar(200) NOT NULL,
  `book_author` varchar(200) NOT NULL,
  `book_isbn` varchar(15) NOT NULL,
  `book_price` float NOT NULL,
  `book_description` varchar(500) NOT NULL,
  `book_pub` varchar(100) NOT NULL,
  `book_lang` varchar(100) NOT NULL,
  `book_qty` int(5) NOT NULL,
  `book_date` datetime(6) NOT NULL DEFAULT current_timestamp(6)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_bestbooks`
--

INSERT INTO `tbl_bestbooks` (`book_id`, `book_title`, `book_author`, `book_isbn`, `book_price`, `book_description`, `book_pub`, `book_lang`, `book_qty`, `book_date`) VALUES
(1, 'Harry Potter and the Sorcerer\'s Stone', 'J.K. Rowling', '9780590353427', 39.9, 'The first installment of the beloved fantasy series about a young wizard named Harry Potter and his journey at Hogwarts School of Witchcraft and Wizardry.', 'Scholastic', 'English', 10, '2023-07-01 08:10:17.323911'),
(3, 'The Great Gatsby', 'F. Scott Fitzgerald', '9780743273565', 28.9, 'A literary masterpiece set in the Jazz Age, exploring themes of wealth, love, and the American Dream through the enigmatic Jay Gatsby and his pursuit of the unattainable Daisy Buchanan.', 'Scribner', 'English', 11, '2023-07-01 08:10:17.323911'),
(8, 'The Hobbit', 'J.R.R. Tolkien', '9780345534835', 27.9, 'A fantasy adventure prequel to The Lord of the Rings, recounting the journey of Bilbo Baggins and a company of dwarves to reclaim the Lonely Mountain from the dragon Smaug.', 'Del Rey', 'English', 11, '2023-07-01 10:16:38.816112'),
(9, 'The Chronicles of Narnia', 'C.S. Lewis', '9780064405371', 38.9, 'A series of fantasy novels that transport readers to the magical world of Narnia, where they join the Pevensie siblings in their battles against the forces of evil.', 'HarperCollins', 'English', 12, '2023-07-01 10:16:38.816112'),
(10, 'The Hunger Games', 'Suzanne Collins', '9780439023481', 38.9, 'The first book in a gripping dystopian trilogy where teenagers from oppressed districts are forced to participate in a televised fight to the death.', 'Scholastic', 'English', 12, '2023-07-01 10:16:38.816112'),
(12, 'The Girl on the Train', 'Paula Hawkins', '9781594634024', 33.9, 'A psychological thriller that follows Rachel Watson, an alcoholic commuter who becomes entangled in a missing person investigation and discovers dark secrets.', 'Riverhead Books', 'English', 10, '2023-07-01 10:17:53.338421'),
(15, 'The Maze Runner', 'James Dashner', '9780385737951', 32.9, 'A thrilling young adult novel set in a post-apocalyptic world where a group of teenagers must navigate a deadly maze and uncover the secrets of their existence.', 'Delacorte Press', 'English', 10, '2023-07-01 10:17:53.338421'),
(16, 'The Book Thief', 'Markus Zusak', '9780375842207', 31.9, 'Narrated by Death, the novel follows Liesel Meminger, a young girl in Nazi Germany, as she steals books and discovers the power of words.', 'Knopf Books for Young Readers', 'English', 10, '2023-07-01 10:18:32.264391'),
(18, 'The Shining', 'Stephen King', '9780307743657', 29.9, 'A psychological horror novel that follows the Torrance family as they spend a winter at the isolated Overlook Hotel, where supernatural forces drive the father to madness.', 'Anchor Books', 'English', 13, '2023-07-01 10:18:32.264391'),
(20, 'The Girl with the Dragon Tattoo', 'Stieg Larsson', '9780307454546', 39.9, 'A gripping crime novel that follows journalist Mikael Blomkvist and hacker Lisbeth Salander as they uncover a dark and twisted conspiracy.', 'Vintage Crime/Black Lizard', 'English', 0, '2023-07-01 10:26:12.337884');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_books`
--

CREATE TABLE `tbl_books` (
  `book_id` int(5) NOT NULL,
  `book_title` varchar(200) NOT NULL,
  `book_author` varchar(200) NOT NULL,
  `book_isbn` varchar(15) NOT NULL,
  `book_price` float NOT NULL,
  `book_description` varchar(500) NOT NULL,
  `book_pub` varchar(100) NOT NULL,
  `book_lang` varchar(100) NOT NULL,
  `book_qty` int(5) NOT NULL,
  `book_date` datetime(6) NOT NULL DEFAULT current_timestamp(6)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_books`
--

INSERT INTO `tbl_books` (`book_id`, `book_title`, `book_author`, `book_isbn`, `book_price`, `book_description`, `book_pub`, `book_lang`, `book_qty`, `book_date`) VALUES
(1, 'Harry Potter and the Sorcerer\'s Stone', 'J.K. Rowling', '9780590353427', 39.9, 'The first installment of the beloved fantasy series about a young wizard named Harry Potter and his journey at Hogwarts School of Witchcraft and Wizardry.', 'Scholastic', 'English', 10, '2023-07-01 08:10:17.323911'),
(2, 'To Kill a Mockingbird', 'Harper Lee', '9780446310789', 31.9, 'A classic novel set in the racially divided Southern United States during the Great Depression, addressing themes of racism, injustice, and the loss of innocence.', 'Grand Central Publishing', 'English', 12, '2023-07-01 08:10:17.323911'),
(3, 'The Great Gatsby', 'F. Scott Fitzgerald', '9780743273565', 28.9, 'A literary masterpiece set in the Jazz Age, exploring themes of wealth, love, and the American Dream through the enigmatic Jay Gatsby and his pursuit of the unattainable Daisy Buchanan.', 'Scribner', 'English', 11, '2023-07-01 08:10:17.323911'),
(4, 'The Lord of the Rings', 'J.R.R. Tolkien', '9780618640157', 42.9, 'An epic fantasy trilogy that follows Frodo Baggins and his companions as they embark on a perilous quest to destroy the One Ring and save Middle-earth from the dark lord Sauron.', 'Mariner Books', 'English', 10, '2023-07-01 08:10:17.323911'),
(5, 'Pride and Prejudice', 'Jane Austen', '9780141439518', 32.9, 'A beloved novel following the spirited Elizabeth Bennet as she navigates love, societal expectations, and the pride and prejudice that shape her world.', 'Penguin Classics', 'English', 11, '2023-07-01 08:10:17.323911'),
(6, '1984', 'George Orwell', '9780451524935', 36.9, 'A dystopian novel set in a totalitarian society where Big Brother watches over its citizens and individuality is suppressed.', 'Signet Classics', 'English', 10, '2023-07-01 10:16:38.816112'),
(7, 'The Catcher in the Rye', 'J.D. Salinger', '9780316769488', 29.9, 'A coming-of-age novel that follows Holden Caulfield, a disenchanted teenager navigating the challenges of adolescence, identity, and societal conformity.', 'Little, Brown and Company', 'English', 12, '2023-07-01 10:16:38.816112'),
(8, 'The Hobbit', 'J.R.R. Tolkien', '9780345534835', 27.9, 'A fantasy adventure prequel to The Lord of the Rings, recounting the journey of Bilbo Baggins and a company of dwarves to reclaim the Lonely Mountain from the dragon Smaug.', 'Del Rey', 'English', 11, '2023-07-01 10:16:38.816112'),
(9, 'The Chronicles of Narnia', 'C.S. Lewis', '9780064405371', 38.9, 'A series of fantasy novels that transport readers to the magical world of Narnia, where they join the Pevensie siblings in their battles against the forces of evil.', 'HarperCollins', 'English', 12, '2023-07-01 10:16:38.816112'),
(10, 'The Hunger Games', 'Suzanne Collins', '9780439023481', 38.9, 'The first book in a gripping dystopian trilogy where teenagers from oppressed districts are forced to participate in a televised fight to the death.', 'Scholastic', 'English', 12, '2023-07-01 10:16:38.816112'),
(11, 'The Da Vinci Code', 'Dan Brown', '9780307474278', 35.9, 'A thrilling mystery that combines art, history, and religion, as symbologist Robert Langdon races to decipher a series of clues that could reveal an ancient secret.', 'Anchor Books', 'English', 9, '2023-07-01 10:17:53.338421'),
(12, 'The Girl on the Train', 'Paula Hawkins', '9781594634024', 33.9, 'A psychological thriller that follows Rachel Watson, an alcoholic commuter who becomes entangled in a missing person investigation and discovers dark secrets.', 'Riverhead Books', 'English', 10, '2023-07-01 10:17:53.338421'),
(13, 'Gone Girl', 'Gillian Flynn', '9780307588371', 31.9, 'A gripping mystery thriller that explores the complexities of marriage and deception, as Nick Dunne becomes the prime suspect in the disappearance of his wife, Amy.', 'Broadway Books', 'English', 11, '2023-07-01 10:17:53.338421'),
(14, 'The Fault in Our Stars', 'John Green', '9780525478812', 34.9, 'A heartrending young adult novel that tells the story of Hazel and Gus, two teenagers who meet and fall in love at a cancer support group.', 'Dutton Books', 'English', 11, '2023-07-01 10:17:53.338421'),
(15, 'The Maze Runner', 'James Dashner', '9780385737951', 32.9, 'A thrilling young adult novel set in a post-apocalyptic world where a group of teenagers must navigate a deadly maze and uncover the secrets of their existence.', 'Delacorte Press', 'English', 10, '2023-07-01 10:17:53.338421'),
(16, 'The Book Thief', 'Markus Zusak', '9780375842207', 31.9, 'Narrated by Death, the novel follows Liesel Meminger, a young girl in Nazi Germany, as she steals books and discovers the power of words.', 'Knopf Books for Young Readers', 'English', 10, '2023-07-01 10:18:32.264391'),
(17, 'The Alchemist', 'Paulo Coelho', '9780062315007', 27.9, 'A philosophical and allegorical novel about a young Andalusian shepherd named Santiago and his journey to find his personal legend.', 'HarperOne', 'English', 12, '2023-07-01 10:18:32.264391'),
(18, 'The Shining', 'Stephen King', '9780307743657', 29.9, 'A psychological horror novel that follows the Torrance family as they spend a winter at the isolated Overlook Hotel, where supernatural forces drive the father to madness.', 'Anchor Books', 'English', 13, '2023-07-01 10:18:32.264391'),
(19, 'Dune', 'Frank Herbert', '9780441172719', 37.9, 'A science fiction epic set in a distant future where interstellar travel, political intrigue, and ecological disaster intertwine on the desert planet of Arrakis.', 'Ace Books', 'English', 9, '2023-07-01 10:26:12.337884'),
(20, 'The Girl with the Dragon Tattoo', 'Stieg Larsson', '9780307454546', 39.9, 'A gripping crime novel that follows journalist Mikael Blomkvist and hacker Lisbeth Salander as they uncover a dark and twisted conspiracy.', 'Vintage Crime/Black Lizard', 'English', 0, '2023-07-01 10:26:12.337884'),
(21, 'The Kite Runner', 'Khaled Hosseini', '9781594631931', 33.9, 'A poignant novel set in Afghanistan, depicting the friendship between Amir and Hassan against the backdrop of a changing society and the devastating impact of betrayal.', 'Riverhead Books', 'English', 12, '2023-07-01 10:26:12.337884'),
(22, 'The Help', 'Kathryn Stockett', '9780425232200', 30.9, 'Set in 1960s Mississippi, the novel explores the complex relationships between African American maids and their white employers, shedding light on racism and social injustice.', 'Berkley Books', 'English', 9, '2023-07-01 10:26:12.337884'),
(23, 'The Secret Life of Bees', 'Sue Monk Kidd', '9780142001745', 29.9, 'A coming-of-age story that follows young Lily Owens as she escapes her troubled home life and finds solace and strength in the company of beekeeping sisters.', 'Penguin Books', 'English', 11, '2023-07-01 10:26:12.337884'),
(24, 'Educated', 'Tara Westover', '9780399590504', 34.9, 'A memoir detailing the author\'s journey from growing up in a strict and abusive household in rural Idaho to earning a PhD from Cambridge University.', 'Random House', 'English', 9, '2023-07-01 10:26:12.337884'),
(25, 'Milk and Honey', 'Rupi Kaur', '9781449474256', 27.9, 'A collection of poetry and prose that explores themes of love, loss, trauma, healing, and femininity.', 'Andrews McMeel Publishing', 'English', 11, '2023-07-01 10:26:12.337884'),
(26, 'Becoming', 'Michelle Obama', '9781524763138', 35.9, 'A memoir by former First Lady Michelle Obama, reflecting on her personal and professional journey, from her childhood on the South Side of Chicago to her time in the White House.', 'Crown Publishing Group', 'English', 11, '2023-07-01 10:26:12.337884'),
(27, 'Sapiens: A Brief History of Humankind', 'Yuval Noah Harari', '9780062316097', 30.9, 'A thought-provoking exploration of the history and impact of Homo sapiens, covering topics from the Cognitive Revolution to the present day.', 'Harper Perennial', 'English', 13, '2023-07-01 10:26:12.337884'),
(28, 'The Subtle Art of Not Giving a F*ck', 'Mark Manson', '9780062457714', 26.9, 'A self-help book that challenges conventional wisdom and offers practical advice on how to embrace a more meaningful and fulfilling life.', 'HarperOne', 'English', 15, '2023-07-01 10:26:12.337884'),
(29, 'Eleanor Oliphant Is Completely Fine', 'Gail Honeyman', '9780735220706', 31.9, 'The story of socially awkward Eleanor Oliphant and her journey towards self-discovery and human connection.', 'Pamela Dorman Books', 'English', 11, '2023-07-01 10:26:12.337884'),
(30, 'The Diary of a Young Girl', 'Anne Frank', '9780553296983', 26.9, 'The diary of Anne Frank, a Jewish girl hiding from the Nazis in Amsterdam during World War II, offering a unique and intimate perspective on the Holocaust.', 'Bantam Books', 'English', 15, '2023-07-01 10:26:12.337884');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_carts`
--

CREATE TABLE `tbl_carts` (
  `user_email` varchar(50) NOT NULL,
  `book_id` varchar(10) NOT NULL,
  `cart_qty` int(5) NOT NULL,
  `cart_id` int(5) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `tbl_newbooks`
--

CREATE TABLE `tbl_newbooks` (
  `book_id` int(5) NOT NULL,
  `book_title` varchar(200) NOT NULL,
  `book_author` varchar(200) NOT NULL,
  `book_isbn` varchar(15) NOT NULL,
  `book_price` float NOT NULL,
  `book_description` varchar(500) NOT NULL,
  `book_pub` varchar(100) NOT NULL,
  `book_lang` varchar(100) NOT NULL,
  `book_qty` int(5) NOT NULL,
  `book_date` datetime(6) NOT NULL DEFAULT current_timestamp(6)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_newbooks`
--

INSERT INTO `tbl_newbooks` (`book_id`, `book_title`, `book_author`, `book_isbn`, `book_price`, `book_description`, `book_pub`, `book_lang`, `book_qty`, `book_date`) VALUES
(19, 'Dune', 'Frank Herbert', '9780441172719', 37.9, 'A science fiction epic set in a distant future where interstellar travel, political intrigue, and ecological disaster intertwine on the desert planet of Arrakis.', 'Ace Books', 'English', 9, '2023-07-01 10:26:12.337884'),
(20, 'The Girl with the Dragon Tattoo', 'Stieg Larsson', '9780307454546', 39.9, 'A gripping crime novel that follows journalist Mikael Blomkvist and hacker Lisbeth Salander as they uncover a dark and twisted conspiracy.', 'Vintage Crime/Black Lizard', 'English', 0, '2023-07-01 10:26:12.337884'),
(21, 'The Kite Runner', 'Khaled Hosseini', '9781594631931', 33.9, 'A poignant novel set in Afghanistan, depicting the friendship between Amir and Hassan against the backdrop of a changing society and the devastating impact of betrayal.', 'Riverhead Books', 'English', 12, '2023-07-01 10:26:12.337884'),
(22, 'The Help', 'Kathryn Stockett', '9780425232200', 30.9, 'Set in 1960s Mississippi, the novel explores the complex relationships between African American maids and their white employers, shedding light on racism and social injustice.', 'Berkley Books', 'English', 9, '2023-07-01 10:26:12.337884'),
(23, 'The Secret Life of Bees', 'Sue Monk Kidd', '9780142001745', 29.9, 'A coming-of-age story that follows young Lily Owens as she escapes her troubled home life and finds solace and strength in the company of beekeeping sisters.', 'Penguin Books', 'English', 11, '2023-07-01 10:26:12.337884'),
(24, 'Educated', 'Tara Westover', '9780399590504', 34.9, 'A memoir detailing the author\'s journey from growing up in a strict and abusive household in rural Idaho to earning a PhD from Cambridge University.', 'Random House', 'English', 9, '2023-07-01 10:26:12.337884'),
(25, 'Milk and Honey', 'Rupi Kaur', '9781449474256', 27.9, 'A collection of poetry and prose that explores themes of love, loss, trauma, healing, and femininity.', 'Andrews McMeel Publishing', 'English', 11, '2023-07-01 10:26:12.337884'),
(26, 'Becoming', 'Michelle Obama', '9781524763138', 35.9, 'A memoir by former First Lady Michelle Obama, reflecting on her personal and professional journey, from her childhood on the South Side of Chicago to her time in the White House.', 'Crown Publishing Group', 'English', 11, '2023-07-01 10:26:12.337884'),
(27, 'Sapiens: A Brief History of Humankind', 'Yuval Noah Harari', '9780062316097', 30.9, 'A thought-provoking exploration of the history and impact of Homo sapiens, covering topics from the Cognitive Revolution to the present day.', 'Harper Perennial', 'English', 13, '2023-07-01 10:26:12.337884'),
(28, 'The Subtle Art of Not Giving a F*ck', 'Mark Manson', '9780062457714', 26.9, 'A self-help book that challenges conventional wisdom and offers practical advice on how to embrace a more meaningful and fulfilling life.', 'HarperOne', 'English', 15, '2023-07-01 10:26:12.337884');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_orders`
--

CREATE TABLE `tbl_orders` (
  `order_receiptid` varchar(10) NOT NULL,
  `order_bookid` varchar(5) NOT NULL,
  `order_qty` varchar(5) NOT NULL,
  `order_custid` varchar(50) NOT NULL,
  `order_paid` varchar(10) NOT NULL,
  `order_status` varchar(20) NOT NULL,
  `order_date` datetime(6) NOT NULL DEFAULT current_timestamp(6)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `tbl_payments`
--

CREATE TABLE `tbl_payments` (
  `payment_id` int(11) NOT NULL,
  `payment_email` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `payment_fullname` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `payment_billing_address` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `payment_delivery_address` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `payment_city` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `payment_state` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `payment_zip_code` varchar(10) COLLATE utf8mb4_unicode_ci NOT NULL,
  `payment_phone_number` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL,
  `payment_remark` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL,
  `payment_receipt` blob NOT NULL,
  `payment_date` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `tbl_users`
--

CREATE TABLE `tbl_users` (
  `user_id` int(5) NOT NULL,
  `user_phone` varchar(15) NOT NULL,
  `user_name` varchar(30) NOT NULL,
  `user_email` varchar(50) NOT NULL,
  `user_password` varchar(40) NOT NULL,
  `user_regdate` datetime(6) NOT NULL DEFAULT current_timestamp(6),
  `user_otp` varchar(5) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `tbl_wishlist`
--

CREATE TABLE `tbl_wishlist` (
  `user_email` varchar(50) NOT NULL,
  `wishlist_id` int(5) NOT NULL,
  `book_id` int(5) NOT NULL,
  `book_qty` int(5) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `tbl_address`
--
ALTER TABLE `tbl_address`
  ADD PRIMARY KEY (`address_id`);

--
-- Indexes for table `tbl_books`
--
ALTER TABLE `tbl_books`
  ADD PRIMARY KEY (`book_id`);

--
-- Indexes for table `tbl_carts`
--
ALTER TABLE `tbl_carts`
  ADD PRIMARY KEY (`cart_id`);

--
-- Indexes for table `tbl_payments`
--
ALTER TABLE `tbl_payments`
  ADD PRIMARY KEY (`payment_id`);

--
-- Indexes for table `tbl_users`
--
ALTER TABLE `tbl_users`
  ADD PRIMARY KEY (`user_id`),
  ADD UNIQUE KEY `user_email` (`user_email`);

--
-- Indexes for table `tbl_wishlist`
--
ALTER TABLE `tbl_wishlist`
  ADD PRIMARY KEY (`wishlist_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `tbl_address`
--
ALTER TABLE `tbl_address`
  MODIFY `address_id` int(5) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `tbl_books`
--
ALTER TABLE `tbl_books`
  MODIFY `book_id` int(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=31;

--
-- AUTO_INCREMENT for table `tbl_carts`
--
ALTER TABLE `tbl_carts`
  MODIFY `cart_id` int(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `tbl_payments`
--
ALTER TABLE `tbl_payments`
  MODIFY `payment_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `tbl_users`
--
ALTER TABLE `tbl_users`
  MODIFY `user_id` int(5) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `tbl_wishlist`
--
ALTER TABLE `tbl_wishlist`
  MODIFY `wishlist_id` int(5) NOT NULL AUTO_INCREMENT;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
