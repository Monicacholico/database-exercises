CREATE TABLE roles (
  id INT UNSIGNED NOT NULL AUTO_INCREMENT,
  name VARCHAR(100) NOT NULL,
  PRIMARY KEY (id)
);

CREATE TABLE users (
  id INT UNSIGNED NOT NULL AUTO_INCREMENT,
  name VARCHAR(100) NOT NULL,
  email VARCHAR(100) NOT NULL,
  role_id INT UNSIGNED DEFAULT NULL,
  PRIMARY KEY (id),
  FOREIGN KEY (role_id) REFERENCES roles (id)
);

INSERT INTO roles (name) VALUES ('admin');
INSERT INTO roles (name) VALUES ('author');
INSERT INTO roles (name) VALUES ('reviewer');
INSERT INTO roles (name) VALUES ('commenter');

INSERT INTO users (name, email, role_id) VALUES
  ('bob', 'bob@example.com', 1),
  ('joe', 'joe@example.com', 2),
  ('sally', 'sally@example.com', 3),
  ('adam', 'adam@example.com', 3),
  ('jane', 'jane@example.com', null),
  ('mike', 'mike@example.com', null),
  ('ian', 'ian_mc@example.com', null),
  ('tom', 'tom@example.com', 2),
  ('chicharito', 'chicharito@example.com', 2),
  ('mary', 'mary@example.com', 2);

SELECT *
FROM users
JOIN roles r ON users.role_id = r.id;

SELECT roles.name, COUNT(roles.name) AS allNames
FROM roles
JOIN users u ON roles.id = u.role_id
JOIN roles r ON u.role_id = r.id
  GROUP BY roles.name
ORDER BY allNames;
