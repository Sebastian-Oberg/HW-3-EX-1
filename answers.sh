SELECT name FROM students
SELECT * FROM students WHERE Age > 30
SELECT name from students WHERE Gender == 'F' AND Age > 3
Select Points from students WHERE Name == "Alex"
INSERT INTO students (ID, Name, Age, Gender, Points) VALUES (7, "Sebastian", 22, "M", 501);
UPDATE students SET Points = Points + 1 WHERE ID = 2
UPDATE students SET Points = Points - 1 WHERE ID = 1
CREATE TABLE graduates (
    id INTEGER PRIMARY KEY AUTOINCREMENT NOT NULL,
    name TEXT NOT NULL UNIQUE,
    age INTEGER,
	gender TEXT,
	points INTEGER DEFAULT 0,
	graduation DATE
);

INSERT INTO graduates (name, age, gender, points, graduation)
SELECT name, age, gender, points, '2018-08-09'
FROM students
WHERE name = 'Layal';
DELETE FROM students WHERE name == "Layal"

SELECT 
    Employees.Name AS EmployeeName,
    Companies.Name AS CompanyName,
    Companies.Date AS CompanyDate
FROM 
    Employees
INNER JOIN 
    Companies ON Employees.Company = Companies.Name;

SELECT 
    Employees.Name AS EmployeeName
FROM 
    Employees
INNER JOIN 
    Companies ON Employees.Company = Companies.Name
WHERE 
    Companies.Date < '2000-01-01';

SELECT 
    Companies.Name AS CompanyName
FROM 
    Employees
INNER JOIN 
    Companies ON Employees.Company = Companies.Name
WHERE 
    Employees.Role = 'Graphic Designer';

SELECT name
FROM students
WHERE points = (SELECT MAX(points) FROM students);

SELECT AVG(points) AS AveragePoints
FROM students;

SELECT COUNT(*) AS NumberOfStudentsWith500Points
FROM students
WHERE points = 500;

SELECT name
FROM students
WHERE name LIKE '%s%';

SELECT *
FROM students
ORDER BY points DESC;
