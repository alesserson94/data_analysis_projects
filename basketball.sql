CREATE TABLE users (
    id         INT AUTO_INCREMENT PRIMARY KEY,
    name       VARCHAR(100)  NOT NULL,
    email      VARCHAR(150)  NOT NULL UNIQUE,
    age        INT,
    created_at DATETIME      DEFAULT CURRENT_TIMESTAMP
);

select * from users;