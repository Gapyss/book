CREATE TABLE authors (
    id BIGINT AUTO_INCREMENT PRIMARY KEY,
    name VARCHAR(255) NOT NULL,
    bio VARCHAR(255)
);

CREATE TABLE books (
    id BIGINT AUTO_INCREMENT PRIMARY KEY,
    title VARCHAR(255) NOT NULL,
    isbn VARCHAR(255) NOT NULL,
    price FLOAT NOT NULL,
    stock INT NOT NULL
);
 
CREATE TABLE book_authors (
    book_id BIGINT,
    author_id BIGINT,
    FOREIGN KEY (author_id) REFERENCES authors(id),
    FOREIGN KEY (book_id) REFERENCES books(id),
    PRIMARY KEY (book_id, author_id)
);