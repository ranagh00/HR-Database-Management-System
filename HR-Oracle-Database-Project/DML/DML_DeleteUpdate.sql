--retrieves the first name, last name, and salary of all employees
SELECT firstname, lastname ,salary
FROM employees 


--calculates the average salary of all employees 
SELECT AVG(salary) AS AverageSalary
FROM employees


--This query counts the total number of departments
SELECT COUNT(*) AS NumberOfDepartments
FROM Departments;


--This query retrieves the course name and start date for all training courses
SELECT CourseName,StartDate
FROM TrainingCourses


--This query shows the count of employees and the average salary for each department
SELECT d.DepartmentName AS Department,COUNT(e.EmployeeID) AS EmployeeCount,AVG(e.Salary) AS AverageSalary
FROM Departments d
LEFT JOIN Employees e
ON d.DepartmentID = e.DepartmentID
GROUP BY d.DepartmentName;


--retrieves the names of instructors along with the courses they are teaching
SELECT I.FirstName || ' ' || I.LastName AS InstructorName, C.CourseName 
FROM Instructors I
JOIN TrainingCourses C
ON I.InstructorID = C.InstructorID;


--This query lists the full name, department, and salary of employees, ordered by department and first name
SELECT e.FirstName || ' ' || e.LastName AS EmployeeName,
d.DepartmentName AS Department,
e.Salary AS Salary
FROM Employees e
JOIN Departments d
ON e.DepartmentID = d.DepartmentID
ORDER BY d.DepartmentName, e.FirstName;



--This query counts the number of leave requests by their status and sorts them by status.
select count(LeaveID)AS LeaveCount ,status
from LeaveRequests
GROUP BY status
ORDER BY status


--This query shows the number of employees in each department, including departments with no employees
SELECT d.DepartmentName AS Department , COUNT(e.EmployeeID) AS EmployeeCount
FROM Departments d
LEFT JOIN Employees e
ON d.DepartmentID = e.DepartmentID
GROUP BY d.DepartmentName


--This query counts the number of courses each instructor is teaching
SELECT I.FirstName || ' ' || I.LastName AS InstructorName,
COUNT(I.InstructorID)AS InstructorCount
FROM Instructors I
GROUP BY I.FirstName, I.LastName;


--This query retrieves the full names of employees and the department they belong to
SELECT e.FirstName || ' ' || e.LastName AS EmployeeName,
d.DepartmentName AS Department
FROM Employees e
JOIN Departments d
ON e.DepartmentID = d.DepartmentID;


--This query retrieves employees who belong to departments with more than 3 employees
SELECT e.FirstName || ' ' || e.LastName AS EmployeeName, d.DepartmentName AS Department
FROM Employees e
JOIN Departments d
ON e.DepartmentID = d.DepartmentID
WHERE e.DepartmentID IN ( SELECT DepartmentID
FROM Employees
GROUP BY DepartmentID
HAVING COUNT(*) > 3)


--This query lists pairs of employees in the same department, ordered by department and employee names
SELECT e1.FirstName || ' ' || e1.LastName AS Employee1,
e2.FirstName || ' ' || e2.LastName AS Employee2,d.DepartmentName
FROM Employees e1
JOIN Employees e2
ON e1.DepartmentID = e2.DepartmentID 
AND e1.EmployeeID < e2.EmployeeID 
JOIN Departments d
ON e1.DepartmentID = d.DepartmentID
ORDER BY d.DepartmentName, Employee1, Employee2;


--This query retrieves the courses taught by the instructor named 'Sarah Johnson'
SELECT I.FirstName || ' ' || I.LastName AS InstructorName, T.CourseName
FROM Instructors I
JOIN TrainingCourses T ON I.InstructorID = T.InstructorID
WHERE I.FirstName || ' ' || I.LastName = 'Sarah Johnson';


--This query finds employees who do not have a manager
SELECT *
FROM Employees E
LEFT JOIN Departments D ON E.EmployeeID = D.ManagerID
WHERE D.ManagerID IS NULL;




--This query calculates the average salary for employees in each department
SELECT D.DepartmentName, AVG(E.Salary) AS AverageSalary
FROM Employees E
JOIN Departments D ON E.DepartmentID = D.DepartmentID
GROUP BY D.DepartmentName;


--This query retrieves the employee with the highest salary in each department
SELECT D.DepartmentName, E.FirstName || ' ' || E.LastName AS EmployeeName, E.Salary
FROM Employees E
JOIN Departments D ON E.DepartmentID = D.DepartmentID
WHERE E.Salary = (
SELECT MAX(Salary)
FROM Employees
WHERE DepartmentID = E.DepartmentID);


--This query counts the number of training courses starting after "01-12-2023"
SELECT COUNT(*) AS NumberOfCourses
FROM TrainingCourses
WHERE StartDate > '01-DEC-23'



