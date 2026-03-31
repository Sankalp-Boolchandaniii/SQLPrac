CREATE DATABASE db_inner_join;
USE db_inner_join;

CREATE TABLE authors (
    author_id INT PRIMARY KEY,
    first_name VARCHAR(50),
    last_name VARCHAR(50),
    birth_year INT
);

CREATE TABLE books (
    book_id INT PRIMARY KEY,
    title VARCHAR(100),
    author_id INT,
    publication_year INT,
    price DECIMAL(6,2)
);

-- Insert data into authors table
INSERT INTO authors (author_id, first_name, last_name, birth_year)
VALUES 
    (1, 'Jane', 'Austen', 1775),
    (2, 'George', 'Orwell', 1903),
    (3, 'Ernest', 'Hemingway', 1899),
    (4, 'Agatha', 'Christie', 1890),
    (5, 'J.K.', 'Rowling', 1965);

-- Insert data into books table
INSERT INTO books (book_id, title, author_id, publication_year, price)
VALUES 
    (101, 'Pride and Prejudice', 1, 1813, 12.99),
    (102, '1984', 2, 1949, 14.50),
    (103, 'Animal Farm', 2, 1945, 11.75),
    (104, 'The Old Man and the Sea', 3, 1952, 10.99),
    (105, 'Murder on the Orient Express', 4, 1934, 13.25),
    (106, 'Death on the Nile', 4, 1937, 12.50),
    (107, 'Emma', 1, 1815, 11.99),
    (108, 'For Whom the Bell Tolls', 3, 1940, 15.75);
    
    
select * from authors;
select * from books;

select b.book_id, b.title, a.first_name, a.last_name
from books as b join authors as a
on b.author_id=a.author_id
order by b.book_id desc;

select a.first_name, count(*) from 
authors as a join books as b 
on a.author_id=b.author_id
group by a.author_id;


CREATE TABLE categories (
    category_id INT PRIMARY KEY,
    category_name VARCHAR(50)
);

INSERT INTO categories (category_id, category_name)
VALUES 
    (1, 'Fiction'),
    (2, 'Classic'),
    (3, 'Romance'),
    (4, 'Political'),
    (5, 'Mystery'),
    (6, 'Adventure');


CREATE TABLE book_categories (
    book_id INT,
    category_id INT,
    PRIMARY KEY (book_id, category_id)
);

INSERT INTO book_categories (book_id, category_id)
VALUES 
    (101, 1), (101, 2), (101, 3), -- Pride and Prejudice: Fiction, Classic, Romance
    (102, 1), (102, 2), (102, 4), -- 1984: Fiction, Classic, Political
    (103, 1), (103, 2), (103, 4), -- Animal Farm: Fiction, Classic, Political
    (104, 1), (104, 2), (104, 6), -- The Old Man and the Sea: Fiction, Classic, Adventure
    (105, 1), (105, 5), -- Murder on the Orient Express: Fiction, Mystery
    (106, 1), (106, 5), -- Death on the Nile: Fiction, Mystery
    (107, 1), (107, 2), (107, 3), -- Emma: Fiction, Classic, Romance
    (108, 1), (108, 2), (108, 6); -- For Whom the Bell Tolls: Fiction, Classic, Adventure


select b.title, a.first_name, a.last_name, group_concat(c.category_name) 
from authors a 
join books b on a.author_id=b.author_id
join book_categories bc on b.book_id=bc.book_id
join categories c on c.category_id=bc.category_id
group by b.book_id;

select * 
from books b 
join authors a on a.author_id=b.author_id
where b.publication_year<1950 and a.birth_year<1900;

select b.title, a.first_name, b.publication_year from 
books b join authors a
on b.author_id=a.author_id
where year(curdate())-b.publication_year>70;

INSERT INTO books (book_id, title, author_id, publication_year, price)
VALUES 
    (109, 'Harry Potter', 5, 1813, 12.99);

select a.first_name, count(*) as totalBooks, group_concat(b.book_id) 
from authors a join books b on a.author_id=b.author_id
group by a.author_id having count(*)>1;




/* 

INNER JOIN excludes rows with null values in the join column. 
If you want to include with NULL values, you would use left or right join

*/


