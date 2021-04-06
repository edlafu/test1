SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `pellicules`
--

-- --------------------------------------------------------

--
-- Table structure for table `generes`
--

CREATE TABLE `generes` (
  `id` int(45) UNSIGNED NOT NULL,
  `genre_name` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `generes`
--

INSERT INTO `generes` (`id`, `genre_name`) VALUES
(0, 'Not defined'),
(1, 'Action'),
(2, 'Adventure'),
(3, 'Animation'),
(4, 'Biography'),
(5, 'Comedy'),
(6, 'Crime'),
(7, 'Documentary'),
(8, 'Drama'),
(9, 'Family'),
(10, 'Fantasy'),
(11, 'Film-Noir'),
(12, 'History'),
(13, 'Horror'),
(14, 'Music'),
(15, 'Musical'),
(16, 'Mystery'),
(17, 'Romance'),
(18, 'Sci-Fi'),
(19, 'Sport'),
(20, 'Thriller'),
(21, 'War'),
(22, 'Western');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `generes`
--
ALTER TABLE `generes`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `generes`
--
ALTER TABLE `generes`
  MODIFY `id` int(45) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=23;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
