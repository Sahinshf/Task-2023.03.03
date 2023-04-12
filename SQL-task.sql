CREATE DATABASE DepartmentdB

USE DepartmentdB
CREATE TABLE Employee (
	
	Id int primary key identity,
	FullName nvarchar(100) NOT NULL,
	Age int CHECK(Age>18) NOT NULL,
	Email nvarchar(100) NOT NULL,
	Salary decimal(5,1) CHECK(Salary>300 AND Salary<2000) ,
);

INSERT INTO Employee
VALUES ('Shahin' , 21 , 'random@gmail.com' , 1200.0 ),
('Ayxan' , 26 , 'random2@gmail.com' , 1600.0 ),
('Fikrat' , 29 , 'random3@gmail.com' , 1500.0 ),
('Tural' , 30 , 'random4@gmail.com' , 1999.0 ),
('Cavid' , 44 , 'random4@gmail.com' , 1300.0 ),
('Cavid' , 40 , 'random4@gmail.com' , 1190.0 )


SELECT * FROM Employee

UPDATE Employee
SET Salary = 400.0
WHERE Id = 1;

SELECT * FROM Employee
WHERE Salary >500.0 AND Salary <1500.0


DROP TABLE Employee
DROP DATABASE DepartmentdB

SELECT e.FullName ,e.Email , e.Salary FROM Employee e
ORDER BY CAST(Salary AS FLOAT) ASC;