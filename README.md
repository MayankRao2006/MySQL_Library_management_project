# Library Management System (SQL Project) 📚

A beginner-friendly SQL project simulating a **library management system**, where users can manage books, members, and borrowings. The project covers **database creation, table design, data insertion, and basic SQL queries**.

---

# Project Overview

This project demonstrates how to design and work with relational databases using MySQL. The system consists of three main tables:

1. **Books** – Stores details about books in the library.  
2. **Members** – Stores information about library members.  
3. **Borrowings** – Tracks which member borrowed which book and when.

---

## Database Structure

# Tables

#### `books`
| Column           | Type        | Description                      |
|-----------------|------------|----------------------------------|
| book_id         | INT        | Primary key, auto-incremented    |
| title           | VARCHAR(100)| Book title                        |
| author          | VARCHAR(100)| Author of the book                |
| genre           | VARCHAR(100)| Genre of the book                 |
| year_published  | YEAR       | Year of publication               |
| copies_available| INT        | Number of copies available       |

#### `members`
| Column   | Type        | Description                    |
|----------|------------|--------------------------------|
| member_id| INT        | Primary key, auto-incremented  |
| name     | VARCHAR(100)| Member's name                  |
| email    | VARCHAR(100)| Unique email address           |
| phone    | VARCHAR(15) | Phone number                   |
| join_date| DATE       | Date when member joined        |

#### `borrowings`
| Column     | Type | Description                                       |
|------------|------|---------------------------------------------------|
| borrow_id  | INT  | Primary key, auto-incremented                     |
| book_id    | INT  | Foreign key referencing `books(book_id)`         |
| member_id  | INT  | Foreign key referencing `members(member_id)`     |
| borrow_date| DATE | Date when the book was borrowed                  |
| return_date| DATE | Date when the book was returned (NULL if not returned) |

---

## Sample Queries

1. **List all books**  
```sql
SELECT * FROM books;
