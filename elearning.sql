-- phpMyAdmin SQL Dump
-- version 5.1.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Sep 25, 2021 at 05:38 AM
-- Server version: 10.4.18-MariaDB
-- PHP Version: 8.0.3

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `elearning`
--

-- --------------------------------------------------------

--
-- Table structure for table `category`
--

CREATE TABLE `category` (
  `id` int(4) NOT NULL,
  `cat_name` varchar(40) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `category`
--

INSERT INTO `category` (`id`, `cat_name`) VALUES
(2, 'html'),
(3, 'css'),
(4, 'javascript'),
(5, 'nodejs'),
(6, 'bootstrap'),
(7, 'expressjs'),
(9, 'reactjs'),
(10, 'angularjs'),
(11, 'mongodb');

-- --------------------------------------------------------

--
-- Table structure for table `questions`
--

CREATE TABLE `questions` (
  `id` int(11) NOT NULL,
  `question` varchar(255) NOT NULL,
  `ans1` varchar(80) NOT NULL,
  `ans2` varchar(80) NOT NULL,
  `ans3` varchar(80) NOT NULL,
  `ans4` varchar(80) NOT NULL,
  `ans` int(4) NOT NULL,
  `cat_id` int(4) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `questions`
--

INSERT INTO `questions` (`id`, `question`, `ans1`, `ans2`, `ans3`, `ans4`, `ans`, `cat_id`) VALUES
(9, 'Which of the following selector matches all elements of a type?', 'The Type Selector\r\n', 'The Universal Selector\r\n', 'The Descendant Selector', 'The Class Selector', 0, 3),
(10, 'Which of the following defines measurement as a percentage relative to another value, typically an e', '%', 'cm\r\n', 'em', 'vh\r\n', 1, 3),
(11, 'Which of the following defines 1% of viewport height?', 'px', 'vh', 'vw\r\n', 'vmin\r\n', 1, 3),
(12, 'Which of the following property is used to control the repetition of an image in the background?', 'background-color', 'background-image', 'background-repeat', 'background-position', 2, 3),
(13, 'Which of the following property is used to increase or decrease how bold or light a font appears?', 'font-family', 'font-style', 'font-variant', 'font-weight', 3, 3),
(14, 'Which of the following property is used to capitalize text or convert text to uppercase or lowercase', 'text-indent', 'text-align\r\n\r\n', 'text-decoration', 'text-transform', 3, 3),
(15, 'Which of the following property of a table element specifies whether the border should be shown if a cell is empty?', 'border-collapse', 'border-spacing', 'empty-cells', 'caption-side', 2, 3),
(16, 'Which of the following property changes the width of the bottom border?', 'border-bottom-width', 'border-top-width\r\n\r\n\r\n\r\n', 'border-left-width', 'border-right-width', 0, 3),
(17, 'Which of the following property specifies the top margin of an element?', 'margin', 'margin-bottom', 'margin-top', 'margin-left', 2, 3),
(18, 'Which of the following value of cursor shows it as crosshair or plus sign?', 'crosshair', 'default', 'pointer', 'move\r\n\r\n', 0, 3),
(19, 'All elements are identified by their __________ and are marked up using either start tags and end tags or self-closing tags', 'attribute name', 'tag name', 'class name', 'none of the mentioned', 1, 2),
(20, 'The __________ element represents a span of text that is isolated from its surroundings for the purposes of bidirectional text formatting.', 'b', 'bdi', 'bdo', 'base', 1, 2),
(21, 'The interactive element audio with the attribute controls must not appear as a descendant of which element?', 'a', 'button', 'audio', 'both a and button', 3, 2),
(22, 'A ____________ element must have a start tag but must not have an end tag.', 'details', 'command', 'code', 'both details and command', 1, 2),
(24, 'Which of the following type attributes of input element defines control for entering a telephone number?', 'mob', 'tel', 'mob', 'telephone', 1, 2),
(25, ' Why code written in Node.JS is pretty fast although being written in JavaScript?', 'Node.JS internally converts JavaScript code to Java based code and then execute ', 'Node.JS internally converts JavaScript code to C based code and then execute the', 'Being built on Google Chrome\'s V8 JavaScript Engine.', 'None of the above.', 2, 5),
(26, ' What is Callback?', 'Callback is an asynchronous equivalent for a function.', 'Callback is a technique in which a method call back the caller method.', 'Both of the above.', 'None of the above.\r\n', 0, 5),
(27, 'Which of the following is true about writable stream?', 'writable stream is used for write operation.', 'Output of readable stream can be input to a writable stream.', 'Both of the above.', 'None of the above.', 2, 5),
(28, ' Which method of fs module is used to close a file?', 'fs.close(fd, callback)', 'fs.closeFile(fd, callback)', 'fs.closePath(fd, callback)', 'None of the above.', 0, 5),
(29, 'Which of the following is true about __filename global object?', 'The __filename represents the filename of the code being executed.', 'The __filename represents the resolved absolute path of code file.', 'Both of the above.', 'None of the above.', 2, 5),
(30, 'Which of the following code print the endianness of operating system?', 'console.log(\'endianness : \' + os.endianness);', 'console.log(\'endianness : \' + os.endianness());', 'console.log(\'endianness : \' + os.getEndianness());', 'None of the above.', 1, 5),
(31, 'Which of the following is the correct way to get an absolute path?', ' os.resolve(\'main.js\')', 'path.resolve(\'main.js\')', 'fs.resolve(\'main.js\')', 'None of the above.', 1, 5),
(32, ' Which of the following module is required for DNS specific operations?', 'dns module', 'web module', 'net module', 'none', 0, 5),
(33, 'Which of the following is true about exec methd of child_process module.', 'The exec() method runs a command in a shell and buffers the output. ', 'The exec() method returns a buffer with a max size.', 'The exec() method waits for the process to end and tries to return all the buffe', 'All of the above.', 3, 5),
(34, 'What does the REPL stand for? ', 'REPL stands for \"Read Eval Print Loop.\"', 'REPL stands for \"Research Eval Program Learn.\"', 'REPL stands for \"Read Earn Point Learn.\"', 'REPL stands for \"Read Eval Point Loop.\"', 0, 5),
(35, 'What are core features of Express framework? ', 'Allows to set up middlewares to respond to HTTP Requests', 'Defines a routing table which can works as per HTTP Method and URL', 'Dynamically render HTML Pages', 'All of the above', 3, 7),
(36, 'How to store local variables that can be access within the application?', 'Using app.locals', 'Using app.storage', 'Using database', 'Config file', 0, 7),
(37, 'Route paths, in combination with a request method, define the endpoints at which requests can be made. Which of following are valid form of route path? ', 'strings', 'string patterns', 'regular expressions', 'All of above', 3, 7),
(38, 'What function arguments are available to Express.js Route handlers? ', 'req - the request object', 'res - the response object', 'next', 'All of the above', 3, 7),
(39, 'How can we create chainable route handlers for a route path in ExpressJS app? ', 'Using app.route()', 'Using app.router()', 'Using app.routing()', ' All of these', 0, 7),
(40, 'What are the commands are used to enable debugging in Express App? ', 'Linux', 'Windows', 'Both A and B', 'None', 2, 7),
(41, 'In ExpressJS, the method app.all(path, callback [, callback ...]) can accept all HTTP methods ', 'true', 'false', ' Insufficient data', 'None', 0, 7),
(42, 'Which of the following is the correct name of React.js?', 'React', 'React.js', 'ReactJS', 'All of the above', 3, 9),
(43, 'Which of the following are the advantages of React.js?', 'React.js can increase the application\'s performance with Virtual DOM.', 'React.js is easy to integrate with other frameworks such as Angular, BackboneJS ', 'React.js can render both on client and server side.', 'All of the above', 3, 9),
(44, 'Which of the following is not a disadvantage of React.js? ', 'React.js has only a view layer. We have put your code for Ajax requests, events ', 'The library of React.js is pretty large.', 'The JSX in React.js makes code easy to read and write.', 'The learning curve can be steep in React.js.', 2, 9),
(45, 'Which of the following command is used to install create-react-app?', 'npm install -g create-react-app', 'npm install create-react-app', 'npm install -f create-react-app', 'install -g create-react-app', 0, 9),
(46, 'What of the following is used in React.js to increase performance?', 'Original DOM', 'Virtual DOM', 'Both A and B.', 'None of the above.', 1, 9),
(47, 'A class is a type of function, but instead of using the keyword function to initiate it, which keyword do we use?', 'Constructor', 'Class', 'Object', 'DataObject', 1, 9),
(48, 'Which of the following acts as the input of a class-based component?', 'Class', 'Factory', 'Render', 'Props', 3, 9),
(49, 'Which of the following keyword is used to create a class inheritance?', 'Create', 'Inherits', 'Extends', 'This', 2, 9),
(50, 'What is the default port where webpack-server runs? ', '3000', '8080', '3030', '6060', 1, 9),
(51, 'How many numbers of elements a valid react component can return?', '1', '2', '3', '5', 0, 9);

-- --------------------------------------------------------

--
-- Table structure for table `tbluser`
--

CREATE TABLE `tbluser` (
  `ID` int(11) NOT NULL,
  `FullName` varchar(250) NOT NULL,
  `MobileNumber` int(10) NOT NULL,
  `Email` varchar(30) NOT NULL,
  `Password` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `tbluser`
--

INSERT INTO `tbluser` (`ID`, `FullName`, `MobileNumber`, `Email`, `Password`) VALUES
(4, 'Chirag Khatri', 0, 'chiragkhatri2001@gmail.com', 'e2fc714c4727ee9395f324cd2e7f331f'),
(5, 'uts', 0, 'uts@gmail.com', '695d878bda76c75ee101da0497b7ad93');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `category`
--
ALTER TABLE `category`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `questions`
--
ALTER TABLE `questions`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbluser`
--
ALTER TABLE `tbluser`
  ADD PRIMARY KEY (`ID`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `category`
--
ALTER TABLE `category`
  MODIFY `id` int(4) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `questions`
--
ALTER TABLE `questions`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=52;

--
-- AUTO_INCREMENT for table `tbluser`
--
ALTER TABLE `tbluser`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
