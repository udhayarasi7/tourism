-- Create database
CREATE DATABASE IF NOT EXISTS tourx;
USE tourx;

-- Users Table
CREATE TABLE IF NOT EXISTS users (
    id INT AUTO_INCREMENT PRIMARY KEY,
    username VARCHAR(50) NOT NULL UNIQUE,
    email VARCHAR(100) NOT NULL UNIQUE,
    password VARCHAR(255) NOT NULL
);

-- Places Table
CREATE TABLE IF NOT EXISTS places (
    id INT AUTO_INCREMENT PRIMARY KEY,
    name VARCHAR(100) NOT NULL,
    description TEXT,
    image_url VARCHAR(255)
);

-- Bookings Table
CREATE TABLE IF NOT EXISTS bookings (
    id INT AUTO_INCREMENT PRIMARY KEY,
    user_id INT NOT NULL,
    place_id INT NOT NULL,
    hotel_name VARCHAR(100) NOT NULL,
    room_size VARCHAR(50),
    num_persons INT,
    check_in DATE,
    check_out DATE,
    special_requests TEXT,
    FOREIGN KEY (user_id) REFERENCES users(id) ON DELETE CASCADE,
    FOREIGN KEY (place_id) REFERENCES places(id) ON DELETE CASCADE
);

-- Sample Places
INSERT INTO places (name, description, image_url) VALUES
('Paris', 'The city of lights, home to the Eiffel Tower and rich culture.', 'static/images/paris.jpg'),
('Seoul', 'A dynamic mix of traditional palaces and modern skyscrapers.', 'static/images/seoul.jpg'),
('Taj Mahal', 'A symbol of eternal love and a UNESCO World Heritage Site in India.', 'static/images/agra-taj-mahal-700-14.jpg'),
('Hawaii', 'Tropical paradise known for beaches, volcanoes, and surfing.', 'static/images/hawaii.jpg'),
('New York', 'The city that never sleeps, with iconic landmarks and vibrant life.', 'static/images/newyork.jpg'),
('Tokyo', 'A futuristic city blending ancient temples and neon lights.', 'static/images/tokyo.jpg'),
('Rome', 'Historic capital of the Roman Empire with the Colosseum and Vatican.', 'static/images/rome.jpg'),
('Dubai', 'Modern marvel in the desert, famous for Burj Khalifa and luxury.', 'static/images/dubai.jpg'),
('London', 'Cultural hub with Big Ben, London Eye, and diverse neighborhoods.', 'static/images/london.jpg'),
('Sydney', 'Australian gem with the Sydney Opera House and sunny beaches.', 'static/images/sydney.jpg');
