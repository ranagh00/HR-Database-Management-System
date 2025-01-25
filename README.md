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

- **DepartmentID**: Primary key, auto-generated identity column.

- **DepartmentName**: Name of the department, must be unique.

- **ManagerID**: Nullable, can be used to reference a manager (if applicable)


2. **Employees Table**
*Columns:*

- **EmployeeID**: Primary key, auto-generated identity column.

- **FirstName, LastName**: Non-nullable fields for employee names.

- **DepartmentID**: Foreign key referencing Departments(DepartmentID).

- **Salary**: Includes a constraint to ensure non-negative values


3. **LeaveRequests Table**
*Columns:*

- **LeaveID**: Primary key, auto-generated identity column.

- **EmployeeID**: Foreign key referencing Employees(EmployeeID).

- **StartDate, EndDate**: Non-nullable date range for leave.

- **Reason**: Optional, reason for leave.

- **Status**: Includes a check constraint to allow only specified values (Pending, Approved, Rejected)


4. **Instructors Table**
*Columns:*

- **InstructorID**: Primary key, auto-generated identity column.

- **FirstName, LastName**: Non-nullable fields for instructor names.

5.**TrainingCourses Table**
*Columns:*

- **CourseID**: Primary key, auto-generated identity column.

- **CourseName**: Non-nullable name of the course.

- **StartDate, EndDate**: Non-nullable fields for the course schedule.

- **InstructorID**: Foreign key referencing Instructors(InstructorID)



## Data Insert 

The DML_InsertData.sql file comprises a collection of Data Manipulation Language (DML) commands designed to insert, update, and manage data across multiple tables within an HR database. This structured script ensures that all data relationships, constraints, and dependencies are properly handled, making it a comprehensive tool for initializing and managing the database.


1. **Departments Table**
   
Purpose: Inserts 10 departments, each linked to a specific manager.


Features: Ensures the ManagerID is valid, respecting foreign key relationships.


2. **Employees Table**

Purpose: Inserts 10 employees across various departments.

Features: Ensures salaries are non-negative, adhering to the CHECK constraint. The department information is populated, and relationships with other tables (such as Managers and LeaveRequests) are properly maintained.

3. **Instructors Table**

Purpose: Inserts 10 instructors, each with a first and last name.

Features: Instructors are linked to courses in the TrainingCourses table via InstructorID.

4. **TrainingCourses Table**
   
Purpose: Inserts 10 courses, each linked to an instructor.

Features: Ensures consistency with date fields using the TO_DATE function and links courses to specific instructors.

5. **LeaveRequests Table**
   
Purpose: Inserts 5 leave requests, each associated with an employee.

Features: Status values (Pending, Approved) are constrained to ensure valid status entries. The EmployeeID links leave requests to specific employees.

**Key Considerations:**

Referential Integrity: The script ensures that all relationships between tables are properly maintained, particularly with the use of foreign keys like DepartmentID and InstructorID.

Constraint Compliance: All constraints (e.g., non-negative salaries, valid statuses) are enforced to maintain data quality.

Date Handling: The use of TO_DATE ensures that date fields are formatted consistently, making the database more portable across different systems.

## Queries

QUERIES.sql file offers a wide range of SQL queries designed to analyze and report on various aspects of the HR database. Here's a refined and categorized overview of the provided queries to enhance clarity and understanding

## How to Use
1. Run the `DDL/CreateTables.sql` file to create the schema.
2. Use the `DML` scripts to populate and modify (insert-delete) data.
3. Execute the queries in `Queries/Queries.sql` to retrieve insights.

## Author
RANA ALGHAMDI
