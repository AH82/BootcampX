SELECT day, count(assignments) as number_of_assignments, sum(assignments.duration)
FROM assignments
GROUP BY day
ORDER BY day