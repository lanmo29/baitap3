CREATE DATABASE IF NOT EXISTS iotdb;
USE iotdb;

CREATE TABLE sensors (
  id INT AUTO_INCREMENT PRIMARY KEY,
  name VARCHAR(100),
  latest_value FLOAT,
  updated_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
);

INSERT INTO sensors (name, latest_value)
VALUES ('Nhiệt độ', 28.5), ('Độ ẩm', 65.2);
