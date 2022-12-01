--MVP1
SELECT animals.name, enclosure.name AS enclosure_name 
FROM animals INNER JOIN enclosure ON animals.enclosure_id = enclosure.id;
--MVP2
SELECT enclosure.name AS enclosure_name, staff.name AS staff_name
FROM enclosure INNER JOIN assignments ON enclosure.id = assignments.enclosure_id
INNER JOIN staff ON assignments.employee_id = staff.id;

