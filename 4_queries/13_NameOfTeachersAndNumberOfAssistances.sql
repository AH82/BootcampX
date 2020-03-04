SELECT teachers.name as teacher, cohorts.name as cohort,
count(assistance_requests) as total_assistances
FROM teachers
JOIN assistance_requests ON assistance_requests.teacher_id = teachers.id
JOIN students ON students.id = assistance_requests.student_id
JOIN cohorts ON students.cohort_id = cohorts.id
WHERE cohorts.name = 'JUL02'
GROUP BY teachers.name, cohorts.name
ORDER BY teachers.name
-- SELECT Distinct name_of_that_assisted.teacher,
-- name_of_that_assisted.cohort,
-- count(name_of_that_assisted.*) as total_assistances
-- FROM (


-- ) as name_of_that_assisted
-- group by total_assistances