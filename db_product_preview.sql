--
-- Database: `db_product_preview`
--

-- --------------------------------------------------------

--
-- Table structure for table `tbl_products`
--

CREATE TABLE `tbl_products` (
  `id` int(8) NOT NULL,
  `name` varchar(255) NOT NULL,
  `price` double(10,2) NOT NULL,
  `category` varchar(255) NOT NULL,
  `average_rating` float(3,1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_products`
--

INSERT INTO `tbl_products` (`id`, `name`, `price`, `category`, `average_rating`) VALUES
(1, 'Tiny Handbags', 100.00, 'Fashion', 5.0),
(2, 'Locket watch', 300.00, 'Generic', 4.0),
(3, 'Trendy Watch', 550.00, 'Generic', 4.0),
(4, 'Travel Bag', 820.00, 'Travel', 5.0),
(5, 'Plastic Ducklings', 200.00, 'Toys', 4.0),
(6, 'Wooden Dolls', 290.00, 'Toys', 5.0),
(7, 'Advanced Camera', 600.00, 'Gadget', 4.0),
(8, 'Jewel Box', 180.00, 'Fashion', 5.0),
(9, 'Perl Jewellery', 940.00, 'Fashion', 5.0);

-- --------------------------------------------------------

--
-- Table structure for table `tbl_product_image`
--

CREATE TABLE `tbl_product_image` (
  `id` int(11) NOT NULL,
  `product_id` int(11) NOT NULL,
  `preview_source` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_product_image`
--

INSERT INTO `tbl_product_image` (`id`, `product_id`, `preview_source`) VALUES
(1, 2, 'gallery/preview1.jpeg'),
(2, 2, 'gallery/preview2.jpeg'),
(3, 2, 'gallery/preview3.jpeg');

--
-- Indexes for table `tbl_products`
--
ALTER TABLE `tbl_products`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_product_image`
--
ALTER TABLE `tbl_product_image`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `tbl_products`
--
ALTER TABLE `tbl_products`
  MODIFY `id` int(8) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `tbl_product_image`
--
ALTER TABLE `tbl_product_image`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
COMMIT;