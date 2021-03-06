USE employees;

SELECT COUNT(emp_no) FROM salaries;
SELECT COUNT(emp_no) FROM employees;

# JOIN or Inner JOIN, specifically Equijoin:

# SELECT employees.emp_no, CONCAT(first_name, ' ',last_name) AS 'Full Name', salary, from_date, to_date FROM employees
# JOIN salaries ON employees.emp_no = salaries.emp_no;

SELECT e.emp_no, CONCAT(first_name, ' ',last_name) AS 'Full Name', s.salary, s.from_date, s.to_date FROM employees e
JOIN salaries s ON e.emp_no = s.emp_no;

# LEFT JOIN:
# LEFT JOIN shows rows in the left table that have no match in the right table.
# Example: 'users LEFT JOIN roles' - users is LEFT TABLE and roles is RIGHT TABLE

USE join_test_db;

SELECT * FROM roles;

# SELECT users.name, roles.name FROM roles JOIN users ON roles.id = users.role_id;

SELECT users.name, roles.name FROM users LEFT JOIN roles ON roles.id = users.role_id;

# RIGHT JOIN:
# RIGHT JOIN shows rows in the right table that have no match in the left table.
# Example: 'users RIGHT JOIN roles' - users is LEFT TABLE and roles is RIGHT TABLE

SELECT users.name, roles.name FROM users RIGHT JOIN roles ON roles.id = users.role_id;

######################################################

USE codeup_test_db;

INSERT INTO persons (first_name, album_id) VALUES ('Olivia', 29), ('Santiago', 27), ('Tareq', 15), ('Anaya', 28);

SELECT * FROM persons;

SELECT p.first_name AS Name, a.name AS 'Favorite Album' FROM persons p
JOIN albums a ON a.id = p.album_id;

#######################################################

USE codeup_test_db;

CREATE TABLE preferences (
     person_id INT UNSIGNED NOT NULL,
     album_id INT UNSIGNED NOT NULL,
     FOREIGN KEY (person_id) REFERENCES persons(id),
     FOREIGN KEY (album_id) REFERENCES  albums(id)
);

INSERT INTO preferences (person_id, album_id) VALUES (1, 12), (1, 5), (1, 22), (1, 29), (2, 1), (2, 10), (2, 30), (3, 11), (3, 26), (3, 25);

SELECT per.first_name AS Name, a.name AS 'Album Name' FROM preferences pref
JOIN albums a ON pref.album_id = a.id
JOIN persons per ON pref.person_id = per.id;