# Databank University Project

This project is a database management system designed for a university. The system aims to efficiently handle data related to students, faculty, courses, departments, and other university operations.

## Features

- **Student Management:**
  - Store and manage student profiles, including personal information, enrollment status, and academic performance.
- **Course Management:**
  - Track course details such as syllabus, credits, and schedules.
  - Manage course enrollment and prerequisites.
- **Faculty Management:**
  - Maintain records of faculty members, their departments, and teaching assignments.
- **Department Management:**
  - Organize departments with related courses, faculty, and students.
- **Grading System:**
  - Record and compute grades for each student across different courses.

## Database Structure

### Tables:

1. **Students:**
   - Columns: `student_id` (Primary Key), `first_name`, `last_name`, `dob`, `email`, `enrollment_date`, `department_id` (Foreign Key).
2. **Courses:**
   - Columns: `course_id` (Primary Key), `course_name`, `credits`, `department_id` (Foreign Key), `prerequisite_course_id` (Foreign Key).
3. **Faculty:**
   - Columns: `faculty_id` (Primary Key), `first_name`, `last_name`, `email`, `department_id` (Foreign Key).
4. **Departments:**
   - Columns: `department_id` (Primary Key), `department_name`.
5. **Enrollments:**
   - Columns: `enrollment_id` (Primary Key), `student_id` (Foreign Key), `course_id` (Foreign Key), `enrollment_date`, `grade`.

### Relationships:

- `Students` to `Departments`: Many-to-One
- `Courses` to `Departments`: Many-to-One
- `Faculty` to `Departments`: Many-to-One
- `Students` to `Courses` via `Enrollments`: Many-to-Many

## Getting Started

### Prerequisites

- A working SQL Server (e.g., MySQL, PostgreSQL, SQL Server, or Oracle Database).
- A SQL client (e.g., MySQL Workbench, pgAdmin, or SSMS).


### Usage

- Query the database to fetch details about students, courses, and departments.
- Perform CRUD operations on each table as required.


## Database Diagram

![Database Diagram](image.png)

For questions or feedback, please contact:
- GitHub: [username](https://github.com/NhiNguyenAI)


