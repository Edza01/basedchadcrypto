-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: localhost
-- Generation Time: Jan 01, 2023 at 04:26 PM
-- Server version: 10.4.27-MariaDB
-- PHP Version: 8.1.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `cryptonews`
--

-- --------------------------------------------------------

--
-- Table structure for table `comments`
--

CREATE TABLE `comments` (
  `postid` int(11) NOT NULL,
  `post_comment` text NOT NULL,
  `date` datetime DEFAULT current_timestamp(),
  `username` varchar(128) NOT NULL,
  `page_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `comments`
--

INSERT INTO `comments` (`postid`, `post_comment`, `date`, `username`, `page_id`) VALUES
(24, 'D', '2022-12-29 23:25:01', 'easda1212', 1),
(25, 'Ad', '2022-12-29 23:25:03', 'easda1212', 1),
(26, '1', '2022-12-30 00:30:08', 'easda1212', 1),
(27, '11', '2022-12-30 00:42:06', 'easda1212', 1),
(28, '111', '2022-12-30 17:55:03', 'easda1212', 1),
(29, '1', '2022-12-30 23:27:56', 'easda1212', 1),
(30, '11111', '2022-12-31 02:28:39', 'easda1212', 1),
(31, 'Sdqsddsadsadsa', '2022-12-31 13:00:35', 'easda1212', 1),
(32, 'Sd', '2022-12-31 16:58:52', 'easda1212', 2),
(33, '1', '2022-12-31 20:35:21', 'easda1212', 5),
(34, '1', '2023-01-01 01:22:03', 'easda1212', 9),
(35, '2', '2023-01-01 01:22:38', 'easda1212', 9),
(36, '11', '2023-01-01 01:34:36', 'easda1212', 8),
(37, '11', '2023-01-01 01:36:20', 'easda1212', 9),
(38, '1', '2023-01-01 01:44:27', 'easda1212', 9),
(39, '11', '2023-01-01 01:52:58', 'easda1212', 9),
(40, '1', '2023-01-01 11:56:17', 'easda1212', 9),
(41, '1', '2023-01-01 12:08:35', 'easda1212', 9),
(42, '1', '2023-01-01 12:10:54', 'easda1212', 4),
(43, '1', '2023-01-01 12:18:53', 'easda1212', 9),
(44, 'D', '2023-01-01 12:18:56', 'easda1212', 9),
(45, '1', '2023-01-01 13:45:07', 'easda1212', 9),
(46, '1', '2023-01-01 16:17:00', 'easda1212', 9);

-- --------------------------------------------------------

--
-- Table structure for table `learn`
--

CREATE TABLE `learn` (
  `url` char(255) DEFAULT NULL,
  `class` char(255) DEFAULT NULL,
  `h3` char(255) DEFAULT NULL,
  `p` char(255) DEFAULT NULL,
  `id` int(11) NOT NULL,
  `related_posts` char(255) DEFAULT NULL,
  `html` text DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `learn`
--

INSERT INTO `learn` (`url`, `class`, `h3`, `p`, `id`, `related_posts`, `html`) VALUES
('/pages/cryptowallets', 'fa-wallet', 'Crypto wallets & Crypto Exchanges', 'Learn about differences of crypto wallets.', 1, NULL, NULL),
('/pages/bestprivacycoin', 'fa-medal', 'Best Privacy Coin', 'Privacy coins are undervalued in the cryptocurrency space.', 2, NULL, NULL),
('/pages/whoacceptscrypto', 'fa-person-circle-question', 'Who Accepts Crypto as Payment?', 'Businesses and organizations that accept cryptocurrency as payment.', 3, NULL, NULL),
('/pages/cryptoscams', 'fa-triangle-exclamation', 'Common Crypto Scams', 'Scams often involve financial gain, and this is also true in the world of cryptocurrency.', 4, NULL, NULL),
('/pages/blockchain', 'fa-question', 'What is the blockchain?', 'Blockchain - a tool with many purposes.', 5, NULL, NULL),
('/pages/blockhainvsbanks', 'fa-landmark', 'Blockchain vs Banks', 'Blockchain eliminates the need for middlemen.', 6, NULL, NULL),
('/pages/whatisnft', 'fa-question', 'What is an NFT?', 'NFTs gained popularity in 2020 and have continued to grow in popularity since then.', 7, NULL, NULL),
('/pages/cryptojacking', 'fa-book-skull', 'Cryptojacking or Cryptomining malware', 'Malicious websites could be using your CPU to mine cryptocurrencies.', 8, NULL, NULL),
('/pages/nextcryptocurrencytoexplode', 'fa-question', 'What is Ethereum', 'Ethereum has gained significant popularity as a cryptocurrency', 9, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `posts`
--

CREATE TABLE `posts` (
  `id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `image_name` varchar(255) NOT NULL,
  `created_at` datetime NOT NULL DEFAULT current_timestamp(),
  `post_header` char(255) DEFAULT NULL,
  `tag` char(15) DEFAULT NULL,
  `related_posts` char(255) DEFAULT NULL,
  `html` text DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `posts`
--

INSERT INTO `posts` (`id`, `user_id`, `image_name`, `created_at`, `post_header`, `tag`, `related_posts`, `html`) VALUES
(1, 1, '1.webp', '2022-12-27 01:22:13', 'Regulation of cryptocurrencies\r\n', 'Cryptocurrency', 'politics', '<h1>Regulation of cryptocurrencies will hinder innovation and decentralization. Cryptocurrencies should be allowed to evolve freely.</h1>\r\n\r\n<br>\r\n<p>\r\n    Following the largest loss of user funds in the history of cryptocurrencies, there will likely be an increase in calls for stricter regulation of the cryptocurrency industry. Those who advocate for minimal regulation may be quickly dismissed or ignored.\r\n</p>\r\n\r\n<p>\r\n    Critics argue that it is hard to defend a lack of regulation in the cryptocurrency industry due to the prevalence of scams and hacks. Those who argue against regulation may be perceived as criminals or libertarians. However, the issue is more nuanced and requires consideration of all perspectives.\r\n</p>\r\n\r\n<p>\r\n    The solution to this issue depends on the nature of the regulation and the actions of the government in enforcing it. It depends on whether you believe the government is a fair mediator of market interests or acts in its own self-interest. \r\n</p>\r\n\r\n<p>\r\n    It can be argued that every instance of government regulation in the cryptocurrency space has been a way for insiders to take advantage of and monitor everyday users, while claiming to be motivated by \"consumer protection.\"\r\n</p>\r\n\r\n<p>\r\n    The collapse of FTX may be one of the most blatant examples of government regulation being used to benefit insiders while claiming to protect consumers. I am opposed to cryptocurrency regulation because the government has not shown that it has the best interests of the market as a whole in mind. Their actions have been inconsistent and opaque, with retroactive enforcement and lack of clarity. \r\n</p>\r\n\r\n<p>\r\n    It is hard to see how more government intervention could be the solution to the current issues facing the cryptocurrency industry. In order to be seen as trustworthy in regulating cryptocurrencies, the government would need to demonstrate transparency and accountability through decisive action and consistency.\r\n</p>\r\n\r\n<p>\r\n    If people are seeking regulated financial products, there are already a wide range of options such as stocks, bonds, money markets, securities, and futures available from traditional banks that are subject to regulation, taxation, and surveillance.\r\n</p>\r\n\r\n<p>\r\n    Regulation and decentralization are incompatible concepts. The introduction of regulation effectively removes the element of decentralization.\r\n</p>'),
(2, 1, '2.webp', '2022-12-31 16:39:27', 'What price could we see Bitcoin at in 5 years?', 'Cryptocurrency', 'noob', '<h1>What price could we see Bitcoin at in 5 years?</h1>\r\n<br>\r\n\r\n<p>It is not possible for anyone to accurately predict the future price of a cryptocurrency. Investing in cryptocurrencies should not be based on the expectation of reaching a specific price. Instead, it is important to carefully consider whether or not you believe in the potential of the cryptocurrency to increase in value and to make investment decisions based on that belief.</p>\r\n\r\n<p>Cryptocurrency market is highly volatile, which makes it challenging to accurately predict future price movements. While some organizations or websites may provide price forecasts, it is important to remember that these predictions should not be taken as financial advice. Instead, it is always a good idea to do your own research.</p>\r\n\r\n<p>With that said, it is possible that cryptocurrency could gain wider adoption in the coming years, which could potentially impact its price. However, it is impossible to know for certain what the future will hold. Some projections estimate that the maximum price of bitcoin in 2030 could be around $200,000 in the event of a bull run.</p>\r\n\r\n<p>Cryptocurrency has the potential to increase in value, It is important to approach any investment with caution, as the market can be highly volatile and there is no guarantee that the value of your investment will increase. </p>\r\n\r\n<br>\r\n\r\n<strong>You only realize a loss on your cryptocurrency investment when you sell it for less than you paid for it. Until you sell, the value of your investment may fluctuate, and it is possible that it could increase in value.</strong>\r\n\r\n<br>\r\n<br>'),
(3, 1, '3.webp', '2022-12-31 17:42:34', 'Ukraine has reportedly received nearly $100 million in cryptocurrency donations.', 'Cryptocurrency', 'politics', '<h1>Ukraine has reportedly received nearly $100 million in cryptocurrency donations.</h1>\r\n<br>\r\n<p>Donations were from both individuals and organizations. It\'s not uncommon for people to donate in cryptocurrency, as it can be a convenient and secure way to transfer funds. While it\'s not clear exactly how these donations will be used or what impact they may have on the country and its economy, probably, they won\'t be put to good use.</p>\r\n\r\n<p>It is certainly interesting to see the use of cryptocurrency in real-world situations, including charitable donations. Cryptocurrency can be a convenient and secure way to transfer funds, and it may be particularly useful in situations where traditional financial systems are less accessible or reliable. it is also encouraging to see the potential for cryptocurrency to be used for potentialy positive purposes, such as supporting charitable causes and initiatives.</p>\r\n\r\n<p>It is unfortunately common for scammers to try to solicit donations or take advantage of people\'s generosity. It is important to be cautious when considering making a donation, and to take steps to protect yourself from scammers. This can include verifying the legitimacy of the organization or campaign before donating, being wary of unexpected or unsolicited requests for donations, and not sharing personal or financial information with unknown parties.</p>\r\n\r\n\r\n<br>\r\n<h2>There are several steps you can take to research an organization or campaign before making a donation:</h2>\r\n<br>\r\n\r\n<li>Check the organization\'s website and social media accounts to learn more about their mission, programs, and impact.</li>\r\n<br>\r\n<li>Look for independent reviews or ratings of the organization, such as those provided by charity watchdog groups or consumer protection organizations.</li>\r\n<br>\r\n<li>Contact the organization directly to ask questions or clarify any concerns you may have.</li>\r\n<br>\r\n<li>Consider the transparency of the organization\'s financial records and the percentage of donations that go towards program expenses versus administrative or fundraising costs.</li>\r\n\r\n<br>\r\n<p>By taking these steps, you can feel more confident that your donation is being used effectively and making a positive difference.</p>\r\n<br>'),
(4, 1, '4.webp', '2022-12-31 18:36:51', 'Not every new cryptocurrency is a \"shitcoin\".', 'Cryptocurrency', 'noob', '<h1>Not every new cryptocurrency is a \"shitcoin\".</h1>\r\n<br>\r\n\r\n<p>It is true that not every new cryptocurrency is a \"shitcoin\" (a term used to describe a cryptocurrency that has little or no value). In the rapidly growing and evolving cryptocurrency market, it can be challenging to identify which coins have real potential and which are simply hype or scams. Here are some tips for spotting the \"gems\" among the sea of shitcoins:</p>\r\n<br>\r\n\r\n<li>Research the team behind the coin: A strong and experienced team with a clear vision and plan for the coin\'s development can be a good sign.</li>\r\n<br>\r\n<li>Look for a solid use case:  Cryptocurrencies that utilize cutting-edge technology, such as blockchain or other distributed ledger systems, may have an advantage in the market and a higher likelihood of success due to their innovative approach. Or coin that has a specific real-world use case and solves a specific problem is more likely to have value and potential for growth.</li>\r\n<br>\r\n<li>Beware of red flags: When evaluating potential cryptocurrency investments, it is important to be cautious of those that make grandiose or unrealistic promises, lack transparency, or have a track record of poor performance or questionable practices. These may be red flags that the coin is not a sound investment.</li>\r\n<br>\r\n<li>Check the coin\'s market performance: While past performance is no guarantee of future success, a coin with a history of steady growth and a strong market presence may be more likely to have staying power.</li>\r\n<br>\r\n<li>Liquidity Pool: Liquidity is an important factor to consider when evaluating a cryptocurrency investment. A liquidity pool refers to the amount of a cryptocurrency that is available for buying and selling on the market. A larger liquidity pool can make it easier to buy and sell the coin, as there are more available funds to meet demand. It is generally considered a good sign if a coin has a liquidity pool of at least $50,000 or more, as this suggests that there is a healthy level of activity and interest in the coin. </li>\r\n<br>\r\n<li>It is generally considered a good sign if the team behind a cryptocurrency publicly identifies themselves and is transparent about their involvement. This can increase trust and confidence in the coin and its potential for success. In some cases, the public identification of team members may also reduce the risk of scams, as the team members\' faces and identities are known and they could potentially be held accountable for any fraudulent activity. </li>\r\n<br>\r\n<li>Check the coin\'s adoption and usage: Coins that are being actively used and adopted by a large number of people or organizations may have a higher likelihood of success.</li>\r\n<br>\r\n<li>Research the coin\'s community:  A strong and active community of users and developers can be a good sign of the coin\'s long-term potential.</li>\r\n<br>\r\n<br>\r\n<p>It is important to carefully evaluate the potential value and success of a cryptocurrency by considering various factors, including the coin\'s technology, adoption, partnerships, regulatory environment, community, and transparency. However, it is crucial to remember that investing in cryptocurrency carries inherent risks and can be volatile. It is essential to do thorough research and make well-informed decisions before investing in any cryptocurrency.</p>\r\n<br>'),
(5, 1, '5.webp', '2022-12-31 20:34:30', 'EU Prohibits Cross-Border Payments from Russian Crypto Accounts', 'Cryptocurrency', 'politics', '<h1>EU Prohibits Cross-Border Payments from Russian Crypto Accounts</h1>\r\n<br>\r\n\r\n\r\n<p>The European Union recently introduced a series of sanctions against Russia due to the ongoing conflict in Ukraine. One aspect of these sanctions is a prohibition on cross-border cryptocurrency transactions between Russia and EU member states. This ban applies to all cryptocurrency wallets, accounts, and custody services, regardless of the amount of cryptocurrency held in them.</p>\r\n<br>\r\n<h2>A pointless and unenforceable ban.</h2>\r\n<br>\r\n\r\n<p> The person or group responsible for crafting these sanctions may be aware that it is difficult to verify the ownership of a large number of cryptocurrency wallets, and that individuals with known wallets may be able to create additional, unidentifiable wallets. As a result, the ban on cross-border cryptocurrency transactions between Russia and EU member states may be difficult to enforce. It is unclear how effective this measure will be in achieving its intended goals.</p>\r\n<p>This ban may have negative consequences for individuals who are not familiar with the technology or the ways in which it is used.</p>\r\n\r\n<p>It is a tragedy that many Russian citizens are innocent of the actions of their government, but they still suffer the consequences. It is truly unfortunate</p>'),
(6, 1, '6.webp', '2022-12-31 20:56:28', 'Google Partners with Crypto to Accept Bitcoin, Ethereum, and Dogecoin', 'Cryptocurrency', 'politics', '<h1>Google Partners with Crypto to Accept Bitcoin, Ethereum, and Dogecoin</h1>\r\n<br>\r\n\r\n<p>Google is collaborating with Coinbase Commerce to enable a select group of its customers to pay for cloud services using Bitcoin, Ethereum, and other cryptocurrency assets.</p>\r\n\r\n<p>Google has partnered with Coinbase to accept cryptocurrency payments for its cloud services from select customers. The collaboration with Coinbase Commerce was announced at Google\'s Cloud Next event and is expected to drive the migration of data-related apps from Amazon Web Services\' cloud to Google\'s cloud.</p>\r\n\r\n<p>It is unclear if Google will use Coinbase Commerce or PayPal\'s new crypto-integrated business service to process cryptocurrency payments, though Coinbase is currently the only option available to Google.</p>\r\n\r\n<p>There is evidence of Google\'s interest in cryptocurrency and Web3.0. Alphabet, Google\'s parent company, has invested $1.5 billion in various blockchain companies, such as Dapper Labs and Alchemy. This suggests that Google is exploring the potential uses and applications of these technologies.</p>\r\n\r\n<p>Tech giants are showing a growing curiosity in blockchain and Web3.0. In order to understand the potential of the metaverse, Facebook rebranded as Meta and launched an NFT feature. Microsoft also invested $20 million in a decentralized data warehouse to aid the development of Web3.0. As these innovative technologies become more common, it is likely that more companies will join the trend.</p>\r\n\r\n<br>\r\n<strong>Nice! But how i can use this information?</strong>\r\n<br>\r\n<p>There are several ways you can potentially earn from blockchain and Web 3.0 technologies. Some potential opportunities include:</p>\r\n<br>\r\n\r\n<li>Investing in cryptocurrency or blockchain-related companies: Some people may choose to invest in cryptocurrency or in companies that are developing or utilizing blockchain technology. This can potentially generate returns if the value of the investment increases over time.</li>\r\n<br>\r\n<li>Developing and selling blockchain-based products or services: Companies or individuals with expertise in blockchain technology may be able to create and sell products or services that utilize this technology, such as smart contracts or decentralized applications (DApps).</li>\r\n<br>\r\n<li>Participating in cryptocurrency mining: Some people may choose to participate in cryptocurrency mining, which involves using specialized computer hardware to validate transactions on a blockchain and earn rewards in the form of cryptocurrency.</li>\r\n<br>\r\n<li>Earning cryptocurrency through various online activities: Some platforms and websites offer users the opportunity to earn small amounts of cryptocurrency by completing tasks or participating in online activities, such as answering surveys or watching videos.</li>\r\n\r\n<br>'),
(7, 1, '7.webp', '2022-12-31 22:03:33', 'German Cryptocurrency Growth May Surpass American Growth', 'Cryptocurrency', 'politics', '<h1>German Cryptocurrency Growth May Surpass American Growth</h1>\r\n<br>\r\n<p>Germany\'s federal finance ministry has made the sale of cryptocurrencies like Bitcoin and Ethereum tax-free for individuals after a year of ownership. The change also applies to virtual assets used for lending and staking. Previously, these types of cryptocurrencies may have had to be held for up to 10 years to qualify for income tax exemptions.</p>\r\n\r\n<p>This new guidance means that individuals in Germany who own cryptocurrencies like Bitcoin and Ethereum will no longer have to pay taxes on the sale of these assets if they have held them for at least one year. This also applies to virtual assets used for lending and staking. Prior to this change, these types of cryptocurrencies may have had to be held for up to 10 years to be eligible for income tax exemptions. This change could potentially make it more attractive for individuals in Germany to invest in and hold onto cryptocurrency assets for longer periods of time. It is always a good idea to consult with a financial advisor or tax professional to understand the tax implications of any investment or financial decision.</p>\r\n\r\n'),
(8, 1, '8.webp', '2022-12-31 22:29:47', 'During the year 2022, 83 billion SHIB were burned', 'Cryptocurrency', 'cryptonews', '<h1>During the year 2022, 83 billion SHIB were burned</h1>\r\n<br>\r\n\r\n<p>In 2022, 83 billion Shiba Inu (SHIB) tokens were burned, worth approximately $1.74 million at an average annual price of $0.000021 per token. This represents 0.014% of the total token supply at the start of the year.</p>\r\n<br>\r\n<h2>An incredible 0.0014% was burned.</h2>\r\n<br>\r\n<p>May was the month with the highest number of SHIB burned, with over 31 billion tokens being sent to a \"dead address.\" Coincidentally, May also saw the biggest drop in SHIB prices for the year, with a 41.82% decrease in one month. Before this period, the number of SHIB sent to be burned had been steadily increasing, but then began to decrease each month, with only slightly more than 500 million tokens being burned in December.</p>\r\n\r\n<br>\r\n\r\n<h2>SHIB Burning in 2023</h2>\r\n<br>\r\n<p>The future of Shiba Inu (SHIB) in the coming year is uncertain due to several factors, including its unusual burn rate that increases as its value increases, and the potential impact of new products being released within the Shiba Inu ecosystem. These factors, along with macroeconomic conditions and global market trends, will all play a role in determining the value and burn rate of SHIB in the coming year.</p>\r\n<br>'),
(9, 1, '9.webp', '2022-12-31 22:55:52', 'Cardano: 1921 Days of Reliability with Zero Outages and 500x More Affordable Fees Than Ethereum', 'Cryptocurrency', 'cryptonews', '<h1>Cardano: 1921 Days of Reliability with Zero Outages and 500x More Affordable Fees Than Ethereum</h1>\r\n<br>\r\n\r\n<p>Cardano is a Proof-of-Stake (PoS) network, which means it has low energy usage compared to other networks.</p>\r\n\r\n<p>One unique aspect of Cardano\'s PoS system is that staked coins are not locked and do not require slashing, making it a low-risk and profitable investment. Additionally, Cardano has a hard cap on the maximum number of coins, making it non-inflationary and not requiring coin burning.</p>\r\n\r\n<p>Cardano\'s code is written in the functional language Haskell, which allows for formal mathematical verification to ensure the correctness of the code. This adds an extra level of security to the network.\"</p>\r\n<br>\r\n<br>\r\n\r\n<h2>Several reasons why Cardano (ADA) could be considered a great investment:</h2>\r\n\r\n<li>Community: Cardano Has a Highly Active Github Developer Community</li>\r\n<br>\r\n<li>Active development: It Regularly Has More Code Development Commits Than Many Other Projects</li>\r\n<br>\r\n<li>Proof-of-stake consensus: Cardano uses a proof-of-stake (PoS) consensus algorithm, which means that it is more energy-efficient than proof-of-work (PoW) networks like Bitcoin. This can make it a more sustainable and environmentally-friendly investment.</li>\r\n<br>\r\n<li>Formal verification: Cardano\'s code is written in the functional language Haskell, which allows for formal mathematical verification to ensure the correctness of the code. This can help to reduce the risk of security vulnerabilities and bugs.</li>\r\n<br>\r\n<li>Low fees: Cardano has relatively low transaction fees compared to other cryptocurrencies, which can make it a more cost-effective investment for those who plan to use it for frequent transactions.</li>\r\n<br>\r\n<li>Strong partnerships: Cardano has formed partnerships with various organizations, including the government of Ethiopia and the University of Edinburgh, which could help to increase its adoption and value in the future.</li>\r\n<br>\r\n\r\n<br>\r\n<strong>\"Cardano\'s Strong Development, Energy-Efficient Consensus Algorithm, Formal Verification, Low Fees, and Partnerships Make it a Potential Good Investment for Those Seeking Long-Term Growth Potential\"</strong>\r\n<br>\r\n<br>');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `username` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  `created_at` datetime NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `username`, `password`, `created_at`) VALUES
(20, 'asdasd1212', 'asdasd1212', '$2y$10$lqQaXoaPbF5UFQ8S9.R1/ecRk7wAexQpckgClNtp76ZK2mH8BcqV2', '2022-12-27 20:47:57'),
(21, 'easda1212', 'easda1212', '$2y$10$r6v/NjTD.p.9CMYs956ZE.Jz5MVhQ3w8899Eo8MMJu3t1kuFeJyIC', '2022-12-27 20:49:23'),
(22, 'asdasdads12121', 'asdasdads12121', '$2y$10$acY37b6F9hpR.YsmF.Bx8uAYJFsZ/6aw8doCcQr5QYcwGSKdKfE0.', '2022-12-27 21:11:41');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `comments`
--
ALTER TABLE `comments`
  ADD PRIMARY KEY (`postid`);

--
-- Indexes for table `learn`
--
ALTER TABLE `learn`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `posts`
--
ALTER TABLE `posts`
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
-- AUTO_INCREMENT for table `comments`
--
ALTER TABLE `comments`
  MODIFY `postid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=47;

--
-- AUTO_INCREMENT for table `learn`
--
ALTER TABLE `learn`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `posts`
--
ALTER TABLE `posts`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=953;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=23;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
