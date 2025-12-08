-- Crear tabla users
CREATE TABLE IF NOT EXISTS users (
    id INT AUTO_INCREMENT PRIMARY KEY,
    username VARCHAR(50) NOT NULL,
    password VARCHAR(255) NOT NULL,
    email VARCHAR(100) NOT NULL
);

-- Datos 
INSERT INTO users (username, password, email) VALUES
('admin', 'ad123', 'admin@test.com'),
('rosario', 'ro456', 'rosario@test.com'),
('aznar', 'az789', 'aznar@test.com'),
('dev', 'dev10', 'dev@test.com');

