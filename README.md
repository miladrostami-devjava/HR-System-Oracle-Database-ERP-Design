# HR-System-Oracle-Database-ERP-Design

Human resource management (HR System)
In this scenario, a company wants to retrieve information related
to personnel, job positions, and ongoing projects from multiple tables.
This information includes employees, their positions,
the projects they work on, and the dates of their presence on the projects.

Tables:
EMPLOYEES: Employee information table.

EMPLOYEE_ID
FIRST_NAME
LAST_NAME
DEPARTMENT_ID
POSITIONS: table of job positions in the company.

POSITION_ID
POSITION_TITLE
DEPARTMENT_ID
PROJECTS: Company projects table.

PROJECT_ID
PROJECT_NAME
START_DATE
END_DATE
ASSIGNMENTS: A list of tasks and projects that employees work on.

ASSIGNMENT_ID
EMPLOYEE_ID
PROJECT_ID
POSITION_ID
ASSIGNMENT_START_DATE
ASSIGNMENT_END_DATE
DEPARTMENTS: Table of company departments.

DEPARTMENT_ID
DEPARTMENT_NAME


## Description :

A list of all employees, positions, and projects they are 
currently working on, along with their start and end dates.
Show each employee's department and job position.
If an employee is not currently working on any project,
their name and department will also be displayed.