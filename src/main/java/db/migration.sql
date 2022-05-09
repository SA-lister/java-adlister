DROP DATABASE IF EXISTS sa_lister_db;
CREATE DATABASE IF NOT EXISTS sa_lister_db;

USE sa_lister_db;

CREATE TABLE IF NOT EXISTS users (
    id INT UNSIGNED AUTO_INCREMENT NOT NULL,
    username  VARCHAR(50) NOT NULL,
    email VARCHAR(50) NOT NULL,
    password VARCHAR(255) NOT NULL,
    PRIMARY KEY (id)
);

CREATE TABLE IF NOT EXISTS categories (
                                          id INT UNSIGNED AUTO_INCREMENT NOT NULL,
                                          category VARCHAR(50) NOT NULL,
                                          PRIMARY KEY (id)
);



CREATE TABLE IF NOT EXISTS ads (
    id INT UNSIGNED AUTO_INCREMENT NOT NULL,
    user_id INT UNSIGNED NOT NULL,
    cat_id INT UNSIGNED NOT NULL,
    title VARCHAR(100) NOT NULL,
    description TEXT NOT NULL,
    location VARCHAR(100) NOT NULL,
    reputation INT,
    PRIMARY KEY (id),
    FOREIGN KEY (user_id) REFERENCES users(id),
    FOREIGN KEY (cat_id) REFERENCES categories(id)
);

