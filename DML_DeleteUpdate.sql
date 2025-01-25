--Update Employee Salary
--This updates the salary of the employee with EmployeeID 5 to 52,000.00
UPDATE Employees
SET Salary = 52000.00
WHERE EmployeeID = 5;


--Update Department Name
--This updates the DepartmentName from 'HR' to 'Human Resources' for all departments with the name 'HR'
UPDATE Departments
SET DepartmentName = 'Human Resources'
WHERE DepartmentName = 'HR';


--Update ManagerID in Departments
--This updates the ManagerID to 10 for the department with DepartmentID 3
UPDATE Departments
SET ManagerID = 10
WHERE DepartmentID = 3;


--Update Training Course Start Date
--This updates the StartDate of the training course with CourseID 22 to November 13, 2023
UPDATE TrainingCourses
SET StartDate = TO_DATE('2023-11-13', 'YYYY-MM-DD')
WHERE CourseID = 22;


--Delete Employee
--This deletes the employee with EmployeeID 8 from the Employees table
DELETE FROM Employees
WHERE EmployeeID = 8;


--Delete Department
--This deletes the department with DepartmentID 7 from the Departments table
DELETE FROM Departments
WHERE DepartmentID = 7;

--Delete Training Course
--This deletes the training course with CourseID 25 from the TrainingCourses table
DELETE FROM TrainingCourses
WHERE CourseID = 25;
