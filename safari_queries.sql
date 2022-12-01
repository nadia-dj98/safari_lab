--MVP1
SELECT animals.name, enclosure.name AS enclosure_name 
FROM animals INNER JOIN enclosure ON animals.enclosure_id = enclosure.id;
--MVP2
SELECT enclosure.name AS enclosure_name, staff.name AS staff_name
FROM enclosure INNER JOIN assignments ON enclosure.id = assignments.enclosure_id
INNER JOIN staff ON assignments.employee_id = staff.id;

--EXTENSION1
SELECT enclosure.name AS enclosure_name, 
       staff.name AS staff_name,
       enclosure.closedForMaintenance AS closed
FROM enclosure INNER JOIN assignments ON enclosure.id = assignments.enclosure_id
INNER JOIN staff ON assignments.employee_id = staff.id
WHERE enclosure.closedForMaintenance = true;

--EXTENSION2
SELECT e.name AS enclosure_name,
       a.name AS animal_name,
       a.age
FROM animals AS a
INNER JOIN enclosure AS e ON a.enclosure_id = e.id
ORDER BY a.age DESC, a.name LIMIT 1;

--EXTENSIONS3

SELECT COUNT(DISTINCT animals.type)
FROM staff
INNER JOIN assignments ON staff.id = assignments.employee_id
INNER JOIN  animals ON assignments.enclosure_id = animals.enclosure_id;

--Extension 4

SELECT COUNT(DISTINCT staff.name) AS number_of_diff_staff, enclosure.name AS enclosure_name
FROM staff
INNER JOIN assignments ON staff.id = assignments.employee_id
INNER JOIN enclosure ON enclosure.id = assignments.enclosure_id
GROUP BY enclosure.name ;

--Extension 5

SELECT animals.name AS animal_names, enclosure.name AS enclosure_name
FROM animals
INNER JOIN enclosure ON enclosure.id = animals.enclosure_id
WHERE animals.name != 'Yasmine' AND enclosure.name = 'big tiger field';