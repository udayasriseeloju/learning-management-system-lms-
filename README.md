

## Learning Management System (LMS) — Database Design and Optimization

###  Overview

This project focuses on designing, building, and optimizing the database architecture for a modern Learning Management System (LMS). The database is structured to support essential LMS functionalities, including course management, student enrollment, lesson delivery, assessments, progress tracking, and instructor oversight.

The objective is to create an efficient, normalized, and scalable relational database capable of handling analytical queries and ensuring reliable performance.

### Project Objectives

* Develop a normalized relational database schema for an LMS.
* Implement tables that support users, courses, modules, lessons, enrollments, assessments, and progress tracking.
* Define clear relationships between entities using foreign keys.
* Ensure data integrity and optimized query performance.
* Produce a professional Entity Relationship Diagram (ERD).
* Provide SQL scripts that can be executed directly in MySQL.

### Database Schema Summary

The LMS database includes the following core entities:

* **Users** – Stores user profiles such as students and instructors.
* **Courses** – Contains course information created by instructors.
* **Enrollments** – Tracks which students are enrolled in which courses.
* **Modules** – Represents course subdivisions.
* **Lessons** – Contains lesson content within modules.
* **Assessments** – Represents quizzes or exams tied to courses.
* **Assessment Submissions** – Stores student submissions and scores.
* **Student Progress** – Tracks lesson completion for each student.

Each table is connected using appropriately defined primary and foreign keys to maintain relational integrity.

---

###  Setup Instructions

To run the database on MySQL:

1. Install and open MySQL or any MySQL-compatible environment.
2. Create the LMS database using:

   ```sql
   CREATE DATABASE lms_db;
   USE lms_db;
   ```
3. Execute the full SQL script containing table creation statements.
4. Verify that all tables have been created successfully.
5. Optionally, generate an ER diagram using MySQL Workbench or an online ERD tool.

### ER Diagram

An Entity Relationship Diagram should be generated using MySQL Workbench (Reverse Engineer), dbdiagram.io, or any preferred tool.
The ER diagram visually represents the relationships and data flow across all LMS tables.

### Technologies Used

* MySQL (Database Engine)
* MySQL Workbench (Modeling and Visualization)
* SQL (Schema and Query Language)

### Deliverables

* Complete SQL Script for LMS Database
* ER Diagram (PNG or PDF)
* README Documentation
* Optimized relational schema with keys and constraints


### Notes
The database structure is designed to be modular, scalable, and adaptable to various LMS implementations. All tables and relationships follow normalization principles to minimize redundancy and maintain data consistency.

