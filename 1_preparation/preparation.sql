CREATE SCHEMA learn_sql;

USE learn_sql;

CREATE TABLE users (
  id INT AUTO_INCREMENT PRIMARY KEY,
  username VARCHAR(50) NOT NULL UNIQUE,
  password VARCHAR(255) NOT NULL,
  email VARCHAR(100) NOT NULL UNIQUE,
  first_name VARCHAR(50),
  last_name VARCHAR(50),
  date_of_birth DATE,
  gender ENUM('male', 'female', 'other') NOT NULL,
  phone_number VARCHAR(15),
  address VARCHAR(255),
  city VARCHAR(50),
  state VARCHAR(50),
  country VARCHAR(50),
  postal_code VARCHAR(10),
  login_count INT DEFAULT 0,
  total_purchase DECIMAL(10,2) DEFAULT 0.00,
  created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
  updated_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
);

INSERT INTO users (username, password, email, first_name, last_name, date_of_birth, gender, phone_number, address, city, state, country, postal_code, login_count, total_purchase) VALUES
('johndoe', 'hashed_password', 'johndoe@example.com', 'John', 'Doe', '1985-02-15', 'male', '555-1234', '1234 Elm Street', 'Anytown', 'Anystate', 'USA', '12345', 10, 200.00),
('janedoe', 'hashed_password', 'janedoe@example.com', 'Jane', 'Doe', '1990-07-22', 'female', '555-5678', '5678 Oak Avenue', 'Anytown', 'Anystate', 'USA', '23456', 5, 150.50),
('bobsmith', 'hashed_password', 'bobsmith@example.com', 'Bob', 'Smith', '1978-08-30', 'male', '555-8765', '8765 Pine Road', 'Anytown', 'Anystate', 'USA', '34567', 20, 350.75),
('alicejones', 'hashed_password', 'alicejones@example.com', 'Alice', 'Jones', '1992-11-12', 'female', '555-1357', '1357 Maple Street', 'Anytown', 'Anystate', 'USA', '45678', 8, 275.20),
('tomwhite', 'hashed_password', 'tomwhite@example.com', 'Tom', 'White', '1980-03-27', 'male', '555-2468', '2468 Birch Avenue', 'Anytown', 'Anystate', 'USA', '56789', 12, 120.00),
('sarahbrown', 'hashed_password', 'sarahbrown@example.com', 'Sarah', 'Brown', '1986-12-05', 'female', '555-3579', '3579 Cedar Blvd', 'Anytown', 'Anystate', 'USA', '67890', 22, 400.00),
('kevinmiller', 'hashed_password', 'kevinmiller@example.com', 'Kevin', 'Miller', '1995-05-16', 'male', '555-4680', '4680 Spruce Knoll', 'Anytown', 'Anystate', 'USA', '78901', 2, 50.00),
('emilywilson', 'hashed_password', 'emilywilson@example.com', 'Emily', 'Wilson', '1988-09-09', 'female', '555-5791', '5791 Cedar Point Drive', 'Anytown', 'Anystate', 'USA', '89012', 18, 550.00),
('garyhall', 'hashed_password', 'garyhall@example.com', 'Gary', 'Hall', '1975-01-30', 'male', '555-6802', '6802 Willow Way', 'Anytown', 'Anystate', 'USA', '90123', 9, 220.30),
('lisagarcia', 'hashed_password', 'lisagarcia@example.com', 'Lisa', 'Garcia', '1983-04-18', 'female', '555-7913', '7913 Redwood Circle', 'Anytown', 'Anystate', 'USA', '01234', 15, 330.45);

CREATE TABLE login_activity (
    id INT AUTO_INCREMENT PRIMARY KEY,
    user_id INT,
    login_time TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    ip_address VARCHAR(15),
    device VARCHAR(255),
    FOREIGN KEY (user_id) REFERENCES Users(id)
);

INSERT INTO login_activity (user_id, login_time, ip_address, device) VALUES
(1, '2023-10-01 08:00:00', '192.168.1.10', 'iPhone'),
(2, '2023-10-01 09:15:00', '192.168.1.11', 'Android'),
(3, '2023-10-01 09:45:00', '192.168.1.12', 'iPad'),
(4, '2023-10-01 10:00:00', '192.168.1.13', 'Windows Laptop'),
(5, '2023-10-01 11:00:00', '192.168.1.14', 'MacBook'),
(1, '2023-10-02 08:00:00', '192.168.1.20', 'iPhone'),
(2, '2023-10-02 09:30:00', '192.168.1.21', 'Android'),
(3, '2023-10-02 10:45:00', '192.168.1.22', 'iPad'),
(4, '2023-10-02 12:00:00', '192.168.1.23', 'Windows Laptop'),
(5, '2023-10-02 13:00:00', '192.168.1.24', 'MacBook'),
(1, '2023-10-03 08:00:00', '192.168.1.30', 'iPhone'),
(2, '2023-10-03 09:20:00', '192.168.1.31', 'Android'),
(3, '2023-10-03 11:45:00', '192.168.1.32', 'iPad'),
(4, '2023-10-03 12:30:00', '192.168.1.33', 'Windows Laptop'),
(5, '2023-10-03 14:00:00', '192.168.1.34', 'MacBook'),
(1, '2023-10-04 08:30:00', '192.168.1.40', 'iPhone'),
(2, '2023-10-04 09:50:00', '192.168.1.41', 'Android'),
(3, '2023-10-04 10:15:00', '192.168.1.42', 'iPad'),
(4, '2023-10-04 11:00:00', '192.168.1.43', 'Windows Laptop'),
(5, '2023-10-04 12:10:00', '192.168.1.44', 'MacBook');
