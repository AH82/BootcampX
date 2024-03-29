-- Get the students who's average time it takes to complete an assignment is less than the average estimated time it takes to complete an assignment.
SELECT 
students.name as student, 
avg(assignment_submissions.duration) as average_assignment_duration, 
avg(assignments.duration) as average_estimated_duration

FROM students
JOIN assignment_submissions ON students.id = assignment_submissions.student_id
JOIN assignments ON assignment_submissions.assignment_id = assignments.id

WHERE students.end_date IS NULL
GROUP BY students.name
HAVING avg(assignment_submissions.duration) < avg(assignments.duration)
ORDER BY average_assignment_duration