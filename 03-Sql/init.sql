-- Make sure we are using the correct database
USE reactdb;

-- Create the table
CREATE TABLE IF NOT EXISTS tutorials (
    id INT AUTO_INCREMENT PRIMARY KEY,
    title VARCHAR(255) NOT NULL,
    description VARCHAR(255) NOT NULL,
    published TINYINT(1) DEFAULT 0,
    createdAt DATETIME NOT NULL,
    updatedAt DATETIME NOT NULL
);

-- Insert the three entries
INSERT INTO tutorials (id, title, description, published, createdAt, updatedAt) VALUES
(1, 'React.js', 'Web dev 101', 0, '2025-10-25 16:18:32', '2025-10-25 16:18:32'),
(2, 'Node.js', 'Api dev 201', 0, '2025-10-25 16:18:49', '2025-10-25 16:18:49'),
(3, 'Azure 900', 'Azure cloud Basics', 0, '2025-10-25 16:19:27', '2025-10-25 16:19:27');

-- SAMPLE OLD COMMANDS. NOT NEEDED ANYMORE. JUST FOR REFERENCE.
-- Create database if it doesn't exist
-- CREATE DATABASE IF NOT EXISTS `${MYSQL_DATABASE}`;

-- Create application user if it doesn't exist
-- CREATE USER IF NOT EXISTS '${MYSQL_USER}'@'%' IDENTIFIED BY '${MYSQL_PASSWORD}';

-- Grant all privileges to the application user on the database
-- GRANT ALL PRIVILEGES ON `${MYSQL_DATABASE}`.* TO '${MYSQL_USER}'@'%';

-- Set root password and restrict root access to localhost
-- ALTER USER 'root'@'localhost' IDENTIFIED BY '${MYSQL_ROOT_PASSWORD}';

-- Allow root access from localhost and '%' (for any IP)
-- GRANT ALL PRIVILEGES ON *.* TO 'root'@'localhost' IDENTIFIED BY '${MYSQL_ROOT_PASSWORD}' WITH GRANT OPTION;
-- GRANT ALL PRIVILEGES ON *.* TO 'root'@'%' IDENTIFIED BY '${MYSQL_ROOT_PASSWORD}' WITH GRANT OPTION;

-- Flush privileges to apply changes
-- FLUSH PRIVILEGES;