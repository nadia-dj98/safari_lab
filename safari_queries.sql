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