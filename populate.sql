USE lms_db;

INSERT INTO Users (FullName, Email, Role)
VALUES 
('John Instructor', 'john@lms.com', 'Instructor'),
('Alice Student', 'alice@lms.com', 'Student'),
('Bob Student', 'bob@lms.com', 'Student'),
('Admin User', 'admin@lms.com', 'Admin');

INSERT INTO Courses (CourseName, Description, CreatedBy)
VALUES ('Database Systems', 'Intro to Databases', 1),
       ('SQL Mastery', 'Advanced SQL Techniques', 1);

INSERT INTO Modules (CourseID, ModuleTitle, ModuleOrder)
VALUES 
(1, 'DB Basics', 1),
(1, 'ER Modeling', 2),
(2, 'SQL SELECT', 1),
(2, 'SQL Joins', 2);

INSERT INTO Lessons (ModuleID, LessonTitle, Content, LessonOrder)
VALUES
(1, 'Intro to DBMS', 'Content...', 1),
(1, 'What is RDBMS?', 'Content...', 2),
(3, 'Simple SELECT', 'Content...', 1),
(4, 'INNER JOIN', 'Content...', 1);

INSERT INTO Enrollments (UserID, CourseID)
VALUES 
(2, 1), (3, 1),
(2, 2), (3, 2);

INSERT INTO Assessments (CourseID, Title, TotalMarks)
VALUES 
(1, 'Midterm Exam DB', 50),
(2, 'SQL Practical Test', 40);

INSERT INTO AssessmentSubmissions (AssessmentID, StudentID, MarksObtained)
VALUES 
(1, 2, 45),
(1, 3, 40),
(2, 2, 38),
(2, 3, 32);

INSERT INTO StudentProgress (UserID, LessonID, IsCompleted, CompletedAt)
VALUES
(2, 1, 1, NOW()),
(2, 2, 1, NOW()),
(3, 1, 1, NOW()),
(3, 2, 0, NULL);
