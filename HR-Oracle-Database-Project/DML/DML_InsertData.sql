-- Insert Departments Data

INSERT INTO Departments (DepartmentName, ManagerID) VALUES ('HR', 1);
INSERT INTO Departments (DepartmentName, ManagerID) VALUES ('Finance', 2);
INSERT INTO Departments (DepartmentName, ManagerID) VALUES ('IT', 3);
INSERT INTO Departments (DepartmentName, ManagerID) VALUES ('Marketing', 4);
INSERT INTO Departments (DepartmentName, ManagerID) VALUES ('Operations', 5);
INSERT INTO Departments (DepartmentName, ManagerID) VALUES ('Sales', 6);
INSERT INTO Departments (DepartmentName, ManagerID) VALUES ('Customer Service', 7);
INSERT INTO Departments (DepartmentName, ManagerID) VALUES ('Public relation', 8);
INSERT INTO Departments (DepartmentName, ManagerID) VALUES ('Research and Development', 9);
INSERT INTO Departments (DepartmentName, ManagerID) VALUES ('System', 10);


select * from Departments


-- Insert Employees Data

INSERT INTO Employees (FirstName, LastName, DepartmentID, Salary) VALUES ('John', 'Doe', 1, 50000.00);
INSERT INTO Employees (FirstName, LastName, DepartmentID, Salary) VALUES ('Jane', 'Smith', 2, 60000.00);
INSERT INTO Employees (FirstName, LastName, DepartmentID, Salary) VALUES ('Ahmad', 'Ali', 3, 55000.00);
INSERT INTO Employees (FirstName, LastName, DepartmentID, Salary) VALUES ('Sara', 'Khan', 2, 52000.00);
INSERT INTO Employees (FirstName, LastName, DepartmentID, Salary) VALUES ('Mohamed', 'Hassan', 1, 48000.00);
INSERT INTO Employees (FirstName, LastName, DepartmentID, Salary) VALUES ('Hassan', 'Ali', 1, 54000.00);
INSERT INTO Employees (FirstName, LastName, DepartmentID, Salary) VALUES ('Fatima', 'Khaled', 2, 62000.00);
INSERT INTO Employees (FirstName, LastName, DepartmentID, Salary) VALUES ('Amr', 'Mohamed', 3, 56000.00);
INSERT INTO Employees (FirstName, LastName, DepartmentID, Salary) VALUES ('Sara', 'Ahmed', 4, 51000.00);
INSERT INTO Employees (FirstName, LastName, DepartmentID, Salary) VALUES ('Ahmed', 'Youssef', 1, 59000.00);

select * from Employees



-- Insert Instructors Data

INSERT INTO Instructors (FirstName, LastName) VALUES ('Sarah', 'Johnson');
INSERT INTO Instructors (FirstName, LastName) VALUES ('James', 'Smith');
INSERT INTO Instructors (FirstName, LastName) VALUES ('Mary', 'Davis');
INSERT INTO Instructors (FirstName, LastName) VALUES ('Ahmed', 'Hassan');
INSERT INTO Instructors (FirstName, LastName) VALUES ('Fatima', 'Ali');
INSERT INTO Instructors (FirstName, LastName) VALUES ('Yasmine', 'Ali');
INSERT INTO Instructors (FirstName, LastName) VALUES ('Mohamed', 'Hassan');
INSERT INTO Instructors (FirstName, LastName) VALUES ('Ahmed', 'Youssef');
INSERT INTO Instructors (FirstName, LastName) VALUES ('Amr', 'Mohamed');
INSERT INTO Instructors (FirstName, LastName) VALUES ('Sara', 'Ahmed');

select * from Instructors



-- Insert TrainingCourses Data

INSERT INTO TrainingCourses (CourseName, StartDate, EndDate, InstructorID) 
VALUES ('Leadership Skills', TO_DATE('2023-11-05', 'YYYY-MM-DD'), TO_DATE('2023-11-07', 'YYYY-MM-DD'), 1);

INSERT INTO TrainingCourses (CourseName, StartDate, EndDate, InstructorID) 
VALUES ('Excel Advanced', TO_DATE('2023-11-12', 'YYYY-MM-DD'), TO_DATE('2023-11-14', 'YYYY-MM-DD'), 2);

INSERT INTO TrainingCourses (CourseName, StartDate, EndDate, InstructorID) 
VALUES ('Time Management', TO_DATE('2023-11-20', 'YYYY-MM-DD'), TO_DATE('2023-11-21', 'YYYY-MM-DD'), 3);

INSERT INTO TrainingCourses (CourseName, StartDate, EndDate, InstructorID) 
VALUES ('Communication Tips', TO_DATE('2023-12-02', 'YYYY-MM-DD'), TO_DATE('2023-12-04', 'YYYY-MM-DD'), 4);

INSERT INTO TrainingCourses (CourseName, StartDate, EndDate, InstructorID) 
VALUES ('Conflict Resolution', TO_DATE('2023-12-10', 'YYYY-MM-DD'), TO_DATE('2023-12-11', 'YYYY-MM-DD'), 5);

INSERT INTO TrainingCourses (CourseName, StartDate, EndDate, InstructorID) 
VALUES ('Negotiation Skills', TO_DATE('2023-12-20', 'YYYY-MM-DD'), TO_DATE('2023-12-22', 'YYYY-MM-DD'), 6);

INSERT INTO TrainingCourses (CourseName, StartDate, EndDate, InstructorID) 
VALUES ('Financial Planning', TO_DATE('2024-01-05', 'YYYY-MM-DD'), TO_DATE('2024-01-07', 'YYYY-MM-DD'), 7);

INSERT INTO TrainingCourses (CourseName, StartDate, EndDate, InstructorID) 
VALUES ('Leadership Workshop', TO_DATE('2024-01-10', 'YYYY-MM-DD'), TO_DATE('2024-01-12', 'YYYY-MM-DD'), 8);

INSERT INTO TrainingCourses (CourseName, StartDate, EndDate, InstructorID) 
VALUES ('Effective Communication', TO_DATE('2024-01-15', 'YYYY-MM-DD'), TO_DATE('2024-01-17', 'YYYY-MM-DD'), 9);

INSERT INTO TrainingCourses (CourseName, StartDate, EndDate, InstructorID) 
VALUES ('Time Management', TO_DATE('2024-01-20', 'YYYY-MM-DD'), TO_DATE('2024-01-22', 'YYYY-MM-DD'), 10);

select * from TrainingCourses



-- Insert LeaveRequests Data

INSERT INTO LeaveRequests (EmployeeID, StartDate, EndDate, Reason, Status) 
VALUES (1, TO_DATE('2023-10-10', 'YYYY-MM-DD'), TO_DATE('2023-10-14', 'YYYY-MM-DD'), 'Annual Leave', 'Approved');

INSERT INTO LeaveRequests (EmployeeID, StartDate, EndDate, Reason, Status) 
VALUES (2,TO_DATE('2023-11-05', 'YYYY-MM-DD'), TO_DATE('2023-11-07', 'YYYY-MM-DD'), 'Conference', 'Pending');

INSERT INTO LeaveRequests (EmployeeID, StartDate, EndDate, Reason, Status) 
VALUES (3, TO_DATE('2023-10-20', 'YYYY-MM-DD'), TO_DATE('2023-10-21', 'YYYY-MM-DD'), 'Sick Leave', 'Approved');

INSERT INTO LeaveRequests (EmployeeID, StartDate, EndDate, Reason, Status) 
VALUES (4, TO_DATE('2023-12-01', 'YYYY-MM-DD'), TO_DATE('2023-12-03', 'YYYY-MM-DD'), 'Family Emergency', 'Pending');

INSERT INTO LeaveRequests (EmployeeID, StartDate, EndDate, Reason, Status) 
VALUES (5, TO_DATE('2023-10-25', 'YYYY-MM-DD'), TO_DATE('2023-10-26', 'YYYY-MM-DD'), 'Personal', 'Approved');


SELECT * FROM LeaveRequests;
