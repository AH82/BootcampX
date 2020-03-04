SELECT avg(completed_at - started_at) as average_assistance_request_duration
FROM assistance_requests;

-----------------------
-- MY WRONG SOLUTION --
-----------------------
-- SELECT avg(duration) as average_assistance_request_duration
-- FROM (
-- SELECT 
-- teachers.name as teacher_name, 
-- students.name as student_name, 
-- assignments.name as assignment_name,
-- (assistance_requests.completed_at - assistance_requests.started_at) as duration
-- FROM assistance_requests 
-- JOIN teachers ON teachers.id = assistance_requests.teacher_id
-- JOIN students ON students.id = assistance_requests.student_id
-- JOIN assignments ON assignments.id = assistance_requests.assignment_id

-- ORDER BY duration

-- ) as all_duration