CREATE TABLE IF NOT EXISTS users (
    id INT AUTO_INCREMENT PRIMARY KEY,
    username VARCHAR(50),
    password VARCHAR(255),
    email VARCHAR(100)
);

INSERT INTO users (username, password, email) VALUES 
('admin', '123456', 'admin@test.com'),
('jonathan', 'pass123', 'jonathan@test.com'),
('alba', 'pass123', 'alba@test.com');