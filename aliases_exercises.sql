USE employees;
SELECT  CONCAT(last_name, first_name) AS 'fullName', birth_date AS 'DOB'
FROM employees
LIMIT 10;




# CREATE TABLE posts(
#   id INT UNSIGNED NOT NULL AUTO_INCREMENT,
#   title VARCHAR(255),
#   body TEXT,
#   user_id INT UNSIGNED,
#   PRIMARY KEY (id),
#   FOREIGN KEY (user_id) REFERENCES users (id)
# );