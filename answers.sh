SELECT Name FROM Students;
SELECT * FROM Students WHERE Age > 30;

SELECT Name FROM Students WHERE Age = 30 AND gender = 'F';

SELECT points FROM Students WHERE Name = 'Alex';
INSERT INTO Students (Name, age, gender, points) VALUES ('Likhithaaaa', 20, 'F', 200);

UPDATE Students SET points = points + 10 WHERE name = 'Basma';
UPDATE students SET points = points - 5 WHERE name = 'Alex';


CREATE TABLE graduates(
    ID INTEGER  PRIMARY KEY AUTOINCREMENT,
    Name  TEXT NOT NULL UNIQUE,
    Age INTEGER,
	Gender TEXT,
	Points INTEGER,
	Graduation TEXT
);

INSERT INTO graduates(Name, Age, Gender, Points) SELECT Name, Age, Gender, Points FROM Students WHERE Students.Name='Layal';
UPDATE graduates SET Graduation='08-09-2018' WHERE Name='Layal';
DELETE FROM graduates WHERE Name='Layal';

SELECT employees.name, employees.Company, companies.date FROM employees Inner join companies ON employees.Company=companies.name;
SELECT employees.name FROM employees Inner join companies ON employees.Company=companies.name and companies.Date < 2000;
SELECT companies.name FROM companies Inner join employees ON employees.Company=companies.name and employees.Role='Graphic Designer';

select name from students where points=(SELECT MAX(points) from students);
select AVG(points) from students;
select COUNT(Name) from students where points=500;
select Name from students WHERE Name GLOB '*s*';
select name from students ORDER BY points DESC;