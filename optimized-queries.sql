USE lms_db;

-- 1. Fetch all courses a student is enrolled in
SELECT u.FullName, c.CourseName
FROM Enrollments e
JOIN Users u ON e.UserID = u.UserID
JOIN Courses c ON e.CourseID = c.CourseID
WHERE u.UserID = 2;

-- 2. Student grade for a specific module (course-level)
SELECT s.StudentID, u.FullName, a.Title, s.MarksObtained
FROM AssessmentSubmissions s
JOIN Assessments a ON s.AssessmentID = a.AssessmentID
JOIN Users u ON s.StudentID = u.UserID
WHERE s.StudentID = 2;

-- 3. Query optimization using EXPLAIN
EXPLAIN SELECT * FROM Enrollments WHERE UserID = 2;

-- 4. Create useful indexes
CREATE INDEX idx_enroll_user ON Enrollments(UserID);
CREATE INDEX idx_enroll_course ON Enrollments(CourseID);
CREATE INDEX idx_progress_user ON StudentProgress(UserID);
CREATE INDEX idx_submissions_student ON AssessmentSubmissions(StudentID);

-- 5. Analyze table
ANALYZE TABLE Enrollments;
