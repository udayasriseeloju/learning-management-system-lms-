USE lms_db;

-- 1. Top 5 Most Active Students (by lessons completed)
SELECT u.FullName, COUNT(*) AS CompletedLessons
FROM StudentProgress sp
JOIN Users u ON sp.UserID = u.UserID
WHERE sp.IsCompleted = 1
GROUP BY u.UserID
ORDER BY CompletedLessons DESC
LIMIT 5;

-- 2. Top 5 Most Enrolled Courses
SELECT c.CourseName, COUNT(e.EnrollmentID) AS TotalEnrollments
FROM Enrollments e
JOIN Courses c ON e.CourseID = c.CourseID
GROUP BY c.CourseID
ORDER BY TotalEnrollments DESC
LIMIT 5;

-- 3. Course Completion Rate
SELECT c.CourseName,
       (SUM(CASE WHEN sp.IsCompleted = 1 THEN 1 END) / COUNT(*)) * 100 AS CompletionRate
FROM StudentProgress sp
JOIN Lessons l ON sp.LessonID = l.LessonID
JOIN Modules m ON l.ModuleID = m.ModuleID
JOIN Courses c ON m.CourseID = c.CourseID
GROUP BY c.CourseID;

-- 4. Instructor Performance (avg student marks)
SELECT u.FullName AS Instructor,
       AVG(s.MarksObtained) AS AvgScore
FROM AssessmentSubmissions s
JOIN Assessments a ON s.AssessmentID = a.AssessmentID
JOIN Courses c ON a.CourseID = c.CourseID
JOIN Users u ON c.CreatedBy = u.UserID
GROUP BY Instructor
ORDER BY AvgScore DESC;

-- 5. Student Attendance Report (using progress as attendance)
SELECT u.FullName, l.LessonTitle, sp.IsCompleted, sp.CompletedAt
FROM StudentProgress sp
JOIN Users u ON sp.UserID = u.UserID
JOIN Lessons l ON sp.LessonID = l.LessonID
WHERE sp.UserID = 2;
