Library

CREATE TABLE IF NOT EXISTS publisher 
(
   id SERIAL PRIMARY KEY,
   name VARCHAR (255) NOT NULL,
   place VARCHAR (255) NOT NULL,
   FOREIGN KEY (book_id) REFERENCES books (id)
);

CREATE TABLE IF NOT EXISTS books
(
   id SERIAL PRIMARY KEY,
   title VARCHAR (255) NOT NULL,
   count INTEGER,
   pages_count INTEGER,
   price NUMERIC (10,2),
   publication_year INTEGER,
   FOREIGN KEY (publisher_id) REFERENCES publisher (id)
);

CREATE TABLE IF NOT EXISTS readers
(
    id SERIAL PRIMARY KEY,
    address VARCHAR (255) NOT NULL,
    phone_number VARCHAR (255),
);

CREATE TABLE IF NOT EXISTS orders
(
    FOREIGN KEY (reader_id) REFERENCES readers (id),
    FOREIGN KEY (book_id) REFERENCES books (id),
    book_count INTEGER
);

CREATE TABLE IF NOT EXISTS author
(
    id SERIAL PRIMARY KEY,
    name VARCHAR (255)
);

CREATE TABLE IF NOT EXISTS book_author
(
    FOREIGN KEY (author_id) REFERENCES author (id),
    FOREIGN KEY (book_id) REFERENCES books (id),
);
