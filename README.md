# HR Oracle Database Project
This repository contains SQL scripts for managing an HR Oracle Database. The project demonstrates database creation, data manipulation, and data retrieval in an HR context.

## Project Structure
HR-Oracle-Database-Project/ ├── DDL/ │ └── CreateTables.sql ├── DML/ │ ├── DML_InsertData.sql │ └── DML_DeleteUpdate.sql ├── Queries/ │ └── Queries.sql

## Description of Files
- **DDL/CreateTables.sql**: Scripts to create the database schema.
- **DML/DML_InsertData.sql**: Scripts for inserting data into the tables.
- **DML/DML_DeleteUpdate.sql**: Scripts for updating and deleting data.
- **Queries/Queries.sql**: Queries for retrieving data.


## Schema Details
The provided SQL script establishes the schema for an HR database, incorporating foundational entities such as departments, employees, leave requests, instructors, and training courses. Below is a structured summary and key points about each table:

1. **Departments Table**
*Columns:*
DepartmentID: Primary key, auto-generated identity column.
DepartmentName: Name of the department, must be unique.
ManagerID: Nullable, can be used to reference a manager (if applicable)


2. **Employees Table**
*Columns:*
EmployeeID: Primary key, auto-generated identity column.
FirstName, LastName: Non-nullable fields for employee names.
DepartmentID: Foreign key referencing Departments(DepartmentID).
Salary: Includes a constraint to ensure non-negative values


3. **LeaveRequests Table**
*Columns:*
LeaveID: Primary key, auto-generated identity column.
EmployeeID: Foreign key referencing Employees(EmployeeID).
StartDate, EndDate: Non-nullable date range for leave.
Reason: Optional, reason for leave.
Status: Includes a check constraint to allow only specified values (Pending, Approved, Rejected)


4. **Instructors Table**
*Columns:*
InstructorID: Primary key, auto-generated identity column.
FirstName, LastName: Non-nullable fields for instructor names.

5.**TrainingCourses Table**
*Columns:*
CourseID: Primary key, auto-generated identity column.
CourseName: Non-nullable name of the course.
StartDate, EndDate: Non-nullable fields for the course schedule.
InstructorID: Foreign key referencing Instructors(InstructorID)



## How to Use
1. Run the `DDL/CreateTables.sql` file to create the schema.
2. Use the `DML` scripts to populate and modify (insert-delete) data.
3. Execute the queries in `Queries/Queries.sql` to retrieve insights.

## Author
RANA ALGHAMDI
