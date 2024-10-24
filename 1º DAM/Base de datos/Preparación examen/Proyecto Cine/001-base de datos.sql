CREATE DATABASE cine;

CREATE USER 'cine'@'localhost' IDENTIFIED BY 'cine';

GRANT ALL PRIVILEGES ON cine.* TO 'cine'@'localhost';

FLUSH PRIVILEGES;