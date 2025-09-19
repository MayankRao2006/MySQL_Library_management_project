CREATE DATABASE library_db;
USE library_db;

CREATE TABLE books(
	book_id INT AUTO_INCREMENT PRIMARY KEY,
    title VARCHAR(100) NOT NULL,
    author VARCHAR(100) NOT NULL,
    genre VARCHAR(100),
    year_published YEAR,
    copies_available INT DEFAULT 1
);

CREATE TABLE members(
	member_id INT AUTO_INCREMENT PRIMARY KEY,
    name VARCHAR(100) NOT NULL,
    email VARCHAR(100) UNIQUE,
    phone VARCHAR(15),
    join_date DATE
);

CREATE TABLE borrowings(
	borrow_id INT AUTO_INCREMENT PRIMARY KEY,
    book_id INT,
    member_id INT,
    borrow_date DATE,
    return_date DATE,
    FOREIGN KEY (book_id) REFERENCES books(book_id)
		ON UPDATE CASCADE
        ON DELETE SET NULL,
    FOREIGN KEY (member_id) REFERENCES members(member_id)
		ON UPDATE CASCADE
        ON DELETE SET NULL
);

INSERT INTO books (title, author, genre, year_published, copies_available) VALUES
('Book Title 1','Author 1','Fiction',1991,2),
('Book Title 2','Author 2','Science',1992,3),
('Book Title 3','Author 3','History',1993,4),
('Book Title 4','Author 4','Technology',1994,5),
('Book Title 5','Author 5','Biography',1995,1),
('Book Title 6','Author 6','Fiction',1996,2),
('Book Title 7','Author 7','Science',1997,3),
('Book Title 8','Author 8','History',1998,4),
('Book Title 9','Author 9','Technology',1999,5),
('Book Title 10','Author 10','Biography',2000,1),
('Book Title 11','Author 11','Fiction',2001,2),
('Book Title 12','Author 12','Science',2002,3),
('Book Title 13','Author 13','History',2003,4),
('Book Title 14','Author 14','Technology',2004,5),
('Book Title 15','Author 15','Biography',2005,1),
('Book Title 16','Author 16','Fiction',2006,2),
('Book Title 17','Author 17','Science',2007,3),
('Book Title 18','Author 18','History',2008,4),
('Book Title 19','Author 19','Technology',2009,5),
('Book Title 20','Author 20','Biography',2010,1),
('Book Title 21','Author 21','Fiction',2011,2),
('Book Title 22','Author 22','Science',2012,3),
('Book Title 23','Author 23','History',2013,4),
('Book Title 24','Author 24','Technology',2014,5),
('Book Title 25','Author 25','Biography',2015,1),
('Book Title 26','Author 26','Fiction',2016,2),
('Book Title 27','Author 27','Science',2017,3),
('Book Title 28','Author 28','History',2018,4),
('Book Title 29','Author 29','Technology',2019,5),
('Book Title 30','Author 30','Biography',2020,1),
('Book Title 31','Author 31','Fiction',1991,2),
('Book Title 32','Author 32','Science',1992,3),
('Book Title 33','Author 33','History',1993,4),
('Book Title 34','Author 34','Technology',1994,5),
('Book Title 35','Author 35','Biography',1995,1),
('Book Title 36','Author 36','Fiction',1996,2),
('Book Title 37','Author 37','Science',1997,3),
('Book Title 38','Author 38','History',1998,4),
('Book Title 39','Author 39','Technology',1999,5),
('Book Title 40','Author 40','Biography',2000,1),
('Book Title 41','Author 41','Fiction',2001,2),
('Book Title 42','Author 42','Science',2002,3),
('Book Title 43','Author 43','History',2003,4),
('Book Title 44','Author 44','Technology',2004,5),
('Book Title 45','Author 45','Biography',2005,1),
('Book Title 46','Author 46','Fiction',2006,2),
('Book Title 47','Author 47','Science',2007,3),
('Book Title 48','Author 48','History',2008,4),
('Book Title 49','Author 49','Technology',2009,5),
('Book Title 50','Author 50','Biography',2010,1);

INSERT INTO members (name, email, phone, join_date) VALUES
('Member 1','member1@example.com','900000001','2020-01-15'),
('Member 2','member2@example.com','900000002','2020-02-20'),
('Member 3','member3@example.com','900000003','2020-03-25'),
('Member 4','member4@example.com','900000004','2020-04-10'),
('Member 5','member5@example.com','900000005','2020-05-05'),
('Member 6','member6@example.com','900000006','2020-06-15'),
('Member 7','member7@example.com','900000007','2020-07-20'),
('Member 8','member8@example.com','900000008','2020-08-25'),
('Member 9','member9@example.com','900000009','2020-09-10'),
('Member 10','member10@example.com','900000010','2020-10-05'),
('Member 11','member11@example.com','900000011','2021-01-12'),
('Member 12','member12@example.com','900000012','2021-02-18'),
('Member 13','member13@example.com','900000013','2021-03-24'),
('Member 14','member14@example.com','900000014','2021-04-09'),
('Member 15','member15@example.com','900000015','2021-05-04'),
('Member 16','member16@example.com','900000016','2021-06-14'),
('Member 17','member17@example.com','900000017','2021-07-19'),
('Member 18','member18@example.com','900000018','2021-08-24'),
('Member 19','member19@example.com','900000019','2021-09-09'),
('Member 20','member20@example.com','900000020','2021-10-04'),
('Member 21','member21@example.com','900000021','2022-01-11'),
('Member 22','member22@example.com','900000022','2022-02-17'),
('Member 23','member23@example.com','900000023','2022-03-23'),
('Member 24','member24@example.com','900000024','2022-04-08'),
('Member 25','member25@example.com','900000025','2022-05-03'),
('Member 26','member26@example.com','900000026','2022-06-13'),
('Member 27','member27@example.com','900000027','2022-07-18'),
('Member 28','member28@example.com','900000028','2022-08-23'),
('Member 29','member29@example.com','900000029','2022-09-08'),
('Member 30','member30@example.com','900000030','2022-10-03'),
('Member 31','member31@example.com','900000031','2023-01-10'),
('Member 32','member32@example.com','900000032','2023-02-16'),
('Member 33','member33@example.com','900000033','2023-03-22'),
('Member 34','member34@example.com','900000034','2023-04-07'),
('Member 35','member35@example.com','900000035','2023-05-02'),
('Member 36','member36@example.com','900000036','2023-06-12'),
('Member 37','member37@example.com','900000037','2023-07-17'),
('Member 38','member38@example.com','900000038','2023-08-22'),
('Member 39','member39@example.com','900000039','2023-09-07'),
('Member 40','member40@example.com','900000040','2023-10-02'),
('Member 41','member41@example.com','900000041','2024-01-09'),
('Member 42','member42@example.com','900000042','2024-02-15'),
('Member 43','member43@example.com','900000043','2024-03-21'),
('Member 44','member44@example.com','900000044','2024-04-06'),
('Member 45','member45@example.com','900000045','2024-05-01'),
('Member 46','member46@example.com','900000046','2024-06-11'),
('Member 47','member47@example.com','900000047','2024-07-16'),
('Member 48','member48@example.com','900000048','2024-08-21'),
('Member 49','member49@example.com','900000049','2024-09-06'),
('Member 50','member50@example.com','900000050','2024-10-01');

INSERT INTO borrowings (book_id, member_id, borrow_date, return_date) VALUES
(3 ,  7 , '2024-01-05', '2024-01-20'),
(12,  1 , '2024-01-15', '2024-02-01'),
(25, 14 , '2024-02-10', '2024-02-28'),
(8 , 19 , '2024-02-14', '2024-03-01'),
(41,  4 , '2024-02-20', '2024-03-07'),
(17, 11 , '2024-03-01', '2024-03-18'),
(5 , 21 , '2024-03-05', '2024-03-21'),
(33,  9 , '2024-03-10', '2024-03-25'),
(29, 23 , '2024-03-15', '2024-04-01'),
(46,  6 , '2024-03-20', '2024-04-04'),
(2 , 17 , '2024-03-25', NULL),
(15,  2 , '2024-03-28', NULL),
(38, 30 , '2024-04-02', '2024-04-20'),
(19, 12 , '2024-04-05', NULL),
(7 , 27 , '2024-04-08', '2024-04-25'),
(50,  8 , '2024-04-10', NULL),
(4 , 34 , '2024-04-12', '2024-04-28'),
(22, 15 , '2024-04-15', '2024-05-02'),
(10, 31 , '2024-04-18', NULL),
(36, 20 , '2024-04-20', '2024-05-05'),
(1 , 42 , '2024-04-23', NULL),
(13, 25 , '2024-04-25', '2024-05-10'),
(28, 40 , '2024-04-28', NULL),
(45, 18 , '2024-05-01', '2024-05-18'),
(9 , 50 , '2024-05-03', NULL);

-- Query 1
-- Listing all the books from the library
SELECT * FROM books; 

-- Query 2
-- Showing all members who joined after 2024.
SELECT * FROM members WHERE join_date LIKE '2024-__-__';

-- Query 3
-- Finding all books by a specific author
SELECT * FROM books WHERE author = 'author 6';  

-- Query 4
-- Show all books currently borrowed (return_date IS NULL)
SELECT * FROM borrowings WHERE return_date IS NULL;  

-- Query 5
-- Counting how many books are borrowed by each member
SELECT * FROM borrowings ORDER BY member_id ASC; 

-- Query 6
-- Finding members who have never borrowed a book 
SELECT members.name, members.phone, borrowings.borrow_date, borrowings.return_date
FROM members LEFT JOIN borrowings ON
members.member_id = borrowings.member_id WHERE borrowings.borrow_date IS NULL;

-- Query 7
-- Creating a Query to display all active borrowings with member names.  
SELECT 
books.title, members.name , borrowings.borrow_date, borrowings.return_date 
FROM borrowings 
INNER JOIN books 
	ON borrowings.book_id = books.book_id
INNER JOIN members
	ON borrowings.member_id = members.member_id;

