-- phpMyAdmin SQL Dump
-- version 4.9.0.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1:3306
-- Generation Time: Mar 27, 2020 at 08:54 PM
-- Server version: 5.7.25-log
-- PHP Version: 7.3.9

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `loft_5_7`
--

-- --------------------------------------------------------

--
-- Table structure for table `categories`
--

CREATE TABLE `categories` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `categories`
--

INSERT INTO `categories` (`id`, `name`, `description`, `created_at`, `updated_at`) VALUES
(21, 'Sports', 'Duck and a fan! Quick, now!\' And Alice was very fond of beheading people here; the great wonder is, that there\'s any one left alive!\' She was a most extraordinary noise going on rather better now,\'.', '2020-03-26 14:54:00', '2020-03-26 14:54:00'),
(22, 'Clothing & Garden', 'Queen will hear you! You see, she came upon a low voice. \'Not at first, the two sides of it; so, after hunting all about it!\' and he says it\'s so useful, it\'s worth a hundred pounds! He says it.', '2020-03-26 14:54:00', '2020-03-26 14:54:00'),
(23, 'Automotive', 'CHAPTER V. Advice from a Caterpillar The Caterpillar was the White Rabbit with pink eyes ran close by it, and found herself in a great letter, nearly as she left her, leaning her head was so small.', '2020-03-26 14:54:00', '2020-03-26 14:54:00'),
(24, 'Sports, Beauty & Jewelry', 'Alice thought to herself, \'it would have this cat removed!\' The Queen smiled and passed on. \'Who ARE you talking to?\' said one of them were animals, and some \'unimportant.\' Alice could not make out.', '2020-03-26 14:54:00', '2020-03-26 14:54:00'),
(25, 'Kids & Movies', 'I can\'t take LESS,\' said the March Hare and his buttons, and turns out his toes.\' [later editions continued as follows The Panther took pie-crust, and gravy, and meat, While the Panther received.', '2020-03-26 14:54:00', '2020-03-26 14:54:00');

-- --------------------------------------------------------

--
-- Table structure for table `failed_jobs`
--

CREATE TABLE `failed_jobs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `connection` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `queue` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `exception` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

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
(3, '2019_08_19_000000_create_failed_jobs_table', 1);

-- --------------------------------------------------------

--
-- Table structure for table `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `products`
--

CREATE TABLE `products` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `category_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(1000) COLLATE utf8mb4_unicode_ci NOT NULL,
  `price` tinyint(4) NOT NULL,
  `photo` text COLLATE utf8mb4_unicode_ci,
  `description` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `products`
--

INSERT INTO `products` (`id`, `category_id`, `name`, `price`, `photo`, `description`, `created_at`, `updated_at`) VALUES
(31, 25, 'Practical Concrete Table', 23, NULL, 'Alice. \'Reeling and Writhing, of course, I meant,\' the King triumphantly, pointing to the table to measure herself by it, and then the puppy began a series of short charges at the stick, and made.', '2020-03-26 14:54:01', '2020-03-26 14:54:01'),
(32, 24, 'Small Plastic Chair', 93, NULL, 'At last the Gryphon answered, very nearly in the back. At last the Dodo solemnly presented the thimble, looking as solemn as she was to find herself talking familiarly with them, as if he were.', '2020-03-26 14:54:01', '2020-03-26 14:54:01'),
(33, 24, 'Mediocre Leather Table', 29, NULL, 'March Hare. \'Exactly so,\' said the Hatter grumbled: \'you shouldn\'t have put it in the sea, some children digging in the sea. But they HAVE their tails in their mouths; and the March Hare said to.', '2020-03-26 14:54:01', '2020-03-26 14:54:01'),
(34, 25, 'Mediocre Silk Wallet', 3, NULL, 'Alice had got its head impatiently, and walked a little animal (she couldn\'t guess of what sort it was) scratching and scrambling about in the middle of one! There ought to have it explained,\' said.', '2020-03-26 14:54:01', '2020-03-26 14:54:01'),
(35, 23, 'Gorgeous Concrete Chair', 53, NULL, 'English!\' said the Gryphon, \'she wants for to know when the White Rabbit. She was looking at Alice as he came, \'Oh! the Duchess, it had VERY long claws and a long way back, and see how he can.', '2020-03-26 14:54:01', '2020-03-26 14:54:01'),
(36, 25, 'Fantastic Copper Knife', 64, NULL, 'There ought to be Involved in this way! Stop this moment, I tell you!\' said Alice. \'Come on, then,\' said the Dormouse; \'--well in.\' This answer so confused poor Alice, and she very seldom followed.', '2020-03-26 14:54:01', '2020-03-26 14:54:01'),
(37, 21, 'Incredible Concrete Shirt', 68, NULL, 'The Cat seemed to Alice a little way forwards each time and a scroll of parchment in the beautiful garden, among the branches, and every now and then, and holding it to make out who was passing at.', '2020-03-26 14:54:01', '2020-03-26 14:54:01'),
(38, 24, 'Durable Bronze Watch', 79, NULL, 'YOU?\' Which brought them back again to the jury. They were indeed a queer-looking party that assembled on the twelfth?\' Alice went timidly up to her chin upon Alice\'s shoulder, and it sat down and.', '2020-03-26 14:54:01', '2020-03-26 14:54:01'),
(39, 24, 'Lightweight Linen Computer', 60, NULL, 'Duchess, \'chop off her knowledge, as there was nothing so VERY tired of this. I vote the young lady to see the Mock Turtle, who looked at it, and behind it was neither more nor less than a pig, my.', '2020-03-26 14:54:01', '2020-03-26 14:54:01'),
(40, 21, 'Heavy Duty Wooden Knife', 26, NULL, 'Hatter said, tossing his head sadly. \'Do I look like one, but the tops of the bottle was a very truthful child; \'but little girls of her own children. \'How should I know?\' said Alice, \'and if it had.', '2020-03-26 14:54:01', '2020-03-26 14:54:01'),
(41, 21, 'Heavy Duty Plastic Car', 68, NULL, 'Bill! catch hold of this pool? I am so VERY wide, but she felt certain it must be the use of a muchness?\' \'Really, now you ask me,\' said Alice, a good deal frightened at the jury-box, and saw that.', '2020-03-26 14:54:01', '2020-03-26 14:54:01'),
(42, 22, 'Awesome Wool Lamp', 7, NULL, 'Dormouse, and repeated her question. \'Why did you manage to do so. \'Shall we try another figure of the soldiers had to sing \"Twinkle, twinkle, little bat! How I wonder who will put on your shoes and.', '2020-03-26 14:54:01', '2020-03-26 14:54:01'),
(43, 25, 'Fantastic Leather Bottle', 38, NULL, 'There was a good deal to come once a week: HE taught us Drawling, Stretching, and Fainting in Coils.\' \'What was that?\' inquired Alice. \'Reeling and Writhing, of course, to begin with; and being.', '2020-03-26 14:54:01', '2020-03-26 14:54:01'),
(44, 22, 'Practical Wooden Bottle', 10, NULL, 'I\'d hardly finished the guinea-pigs!\' thought Alice. One of the door between us. For instance, suppose it doesn\'t understand English,\' thought Alice; but she knew the name again!\' \'I won\'t interrupt.', '2020-03-26 14:54:01', '2020-03-26 14:54:01'),
(45, 23, 'Heavy Duty Wooden Shirt', 84, NULL, 'Alice, thinking it was done. They had a vague sort of chance of this, so that they couldn\'t see it?\' So she went to work shaking him and punching him in the world she was not a moment like a frog.', '2020-03-26 14:54:01', '2020-03-26 14:54:01'),
(46, 23, 'Aerodynamic Granite Wallet', 91, NULL, 'There was nothing else to say \'creatures,\' you see, Miss, we\'re doing our best, afore she comes, to--\' At this the White Rabbit interrupted: \'UNimportant, your Majesty means, of course,\' the Gryphon.', '2020-03-26 14:54:01', '2020-03-26 14:54:01'),
(47, 21, 'Durable Wool Knife', 95, NULL, 'The Cat\'s head began fading away the time. Alice had learnt several things of this was his first remark, \'It was the Duchess\'s cook. She carried the pepper-box in her own ears for having cheated.', '2020-03-26 14:54:01', '2020-03-26 14:54:01'),
(48, 25, 'Ergonomic Silk Shoes', 51, NULL, 'Alice. One of the table. \'Nothing can be clearer than THAT. Then again--\"BEFORE SHE HAD THIS FIT--\" you never even introduced to a snail. \"There\'s a porpoise close behind us, and he\'s treading on my.', '2020-03-26 14:54:01', '2020-03-26 14:54:01'),
(49, 21, 'Practical Aluminum Lamp', 72, NULL, 'Gryphon, lying fast asleep in the distance. \'Come on!\' cried the Mouse, in a melancholy way, being quite unable to move. She soon got it out to sea. So they had a head could be no sort of chance of.', '2020-03-26 14:54:01', '2020-03-26 14:54:01'),
(50, 23, 'Synergistic Marble Shoes', 46, NULL, 'At this the whole thing very absurd, but they all quarrel so dreadfully one can\'t hear oneself speak--and they don\'t seem to have finished,\' said the Mock Turtle repeated thoughtfully. \'I should.', '2020-03-26 14:54:01', '2020-03-26 14:54:01'),
(51, 22, 'Ergonomic Wooden Lamp', 58, NULL, 'There was not otherwise than what you had been running half an hour or so there were no arches left, and all that,\' said the Caterpillar. Alice said very politely, feeling quite pleased to find her.', '2020-03-26 14:54:01', '2020-03-26 14:54:01'),
(52, 25, 'Mediocre Steel Gloves', 38, NULL, 'They all sat down at her feet, they seemed to rise like a snout than a real nose; also its eyes by this very sudden change, but she had plenty of time as she could, \'If you can\'t help it,\' said the.', '2020-03-26 14:54:01', '2020-03-26 14:54:01'),
(53, 23, 'Heavy Duty Leather Wallet', 54, NULL, 'The Queen turned crimson with fury, and, after folding his arms and frowning at the Duchess said after a pause: \'the reason is, that there\'s any one of the ground.\' So she called softly after it.', '2020-03-26 14:54:01', '2020-03-26 14:54:01'),
(54, 22, 'Heavy Duty Linen Computer', 96, NULL, 'Alice, who felt ready to sink into the air. \'--as far out to sea as you liked.\' \'Is that the pebbles were all in bed!\' On various pretexts they all crowded round it, panting, and asking, \'But who.', '2020-03-26 14:54:01', '2020-03-26 14:54:01'),
(55, 24, 'Incredible Cotton Car', 43, NULL, 'Gryphon never learnt it.\' \'Hadn\'t time,\' said the Pigeon in a large mushroom growing near her, she began, in a great hurry to change the subject,\' the March Hare said to Alice, and she went on so.', '2020-03-26 14:54:01', '2020-03-26 14:54:01'),
(56, 24, 'Gorgeous Linen Lamp', 10, NULL, 'Knave of Hearts, carrying the King\'s crown on a little bit, and said nothing. \'This here young lady,\' said the King. \'Then it doesn\'t mind.\' The table was a dead silence instantly, and Alice was too.', '2020-03-26 14:54:01', '2020-03-26 14:54:01'),
(57, 25, 'Heavy Duty Granite Wallet', 14, NULL, 'Alice started to her great disappointment it was labelled \'ORANGE MARMALADE\', but to her chin in salt water. Her first idea was that she knew that were of the March Hare went \'Sh! sh!\' and the cool.', '2020-03-26 14:54:01', '2020-03-26 14:54:01'),
(58, 21, 'Awesome Concrete Shoes', 48, NULL, 'Miss, this here ought to have the experiment tried. \'Very true,\' said the Mock Turtle repeated thoughtfully. \'I should have croqueted the Queen\'s shrill cries to the other, trying every door, she.', '2020-03-26 14:54:01', '2020-03-26 14:54:01'),
(59, 21, 'Sleek Wool Table', 26, NULL, 'ME\' were beautifully marked in currants. \'Well, I\'ll eat it,\' said Five, in a hurry. \'No, I\'ll look first,\' she said, \'and see whether it\'s marked \"poison\" or not\'; for she felt that she did it so.', '2020-03-26 14:54:01', '2020-03-26 14:54:01'),
(60, 22, 'Awesome Bronze Bottle', 44, NULL, 'I needn\'t be afraid of them!\' \'And who is Dinah, if I shall remember it in her haste, she had nibbled some more of it at all; and I\'m sure _I_ shan\'t be able! I shall never get to the jury, in a.', '2020-03-26 14:54:01', '2020-03-26 14:54:01');

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
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `email_verified_at`, `password`, `remember_token`, `created_at`, `updated_at`) VALUES
(2, 'a', 'a@a.ru', NULL, '$2y$10$ixF7TjjmAr4oe6OYyKchOOY2Gww9ikZZqKfIUs7Qjz.ZtoJenLDoG', 'RYLQBkoDVggN19GWA7msV1UOEIEPs94xSpIClUIovSclTpMjMPFRCU4JajoX', '2020-03-26 16:38:16', '2020-03-26 16:38:16');

-- --------------------------------------------------------

--
-- Indexes for dumped tables
--

--
-- Indexes for table `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `categories_name_unique` (`name`);

--
-- Indexes for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
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
  ADD KEY `password_resets_email_index` (`email`);

--
-- Indexes for table `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`id`),
  ADD KEY `products_category_id_foreign` (`category_id`);

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
-- AUTO_INCREMENT for table `categories`
--
ALTER TABLE `categories`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=27;

--
-- AUTO_INCREMENT for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;


--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `products`
--
ALTER TABLE `products`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=64;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- Constraints for dumped tables
--


--
-- Constraints for table `products`
--
ALTER TABLE `products`
  ADD CONSTRAINT `products_category_id_foreign` FOREIGN KEY (`category_id`) REFERENCES `categories` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
