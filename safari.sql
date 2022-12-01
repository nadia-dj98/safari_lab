-------- database creation and data insertion goes here
-- shiyi

DROP TABLE IF EXISTS assignments;
DROP TABLE IF EXISTS animals; 
DROP TABLE IF EXISTS staff ;
DROP TABLE IF EXISTS enclosure ;

CREATE TABLE staff(
    id SERIAL PRIMARY KEY,
    name VARCHAR(255),
    employeeNumber INT

);
CREATE TABLE enclosure(
    id SERIAL PRIMARY KEY,
    name VARCHAR(255),
    capacity INT,
    closedForMaintenance BOOLEAN
);

CREATE TABLE animals(
    id SERIAL PRIMARY KEY,
    name VARCHAR(255),
    age INT,
    type VARCHAR(255),
    enclosure_id INT REFERENCES enclosure(id)
);

CREATE TABLE assignments(
    id SERIAL PRIMARY KEY,
    day VARCHAR(255),
    enclosure_id INT REFERENCES enclosure(id),
    employee_id  INT REFERENCES staff(id)
);

INSERT INTO staff (name, employeeNumber) VALUES ('Warren',1234);   
INSERT INTO staff (name, employeeNumber) VALUES ('Nadia',1235);   
INSERT INTO staff (name, employeeNumber) VALUES ('Shiyi', 1236);   
INSERT INTO staff (name, employeeNumber) VALUES ('Ilya',1237);   
INSERT INTO staff (name, employeeNumber) VALUES ('Pablo', 9999);   
INSERT INTO staff (name, employeeNumber) VALUES ('Emma',12343142);   
INSERT INTO staff (name, employeeNumber) VALUES ('Zsolt',6789);   
INSERT INTO staff (name, employeeNumber) VALUES ('Sara',8989);   
INSERT INTO staff (name, employeeNumber) VALUES ('Anna',2319804);   



INSERT INTO enclosure(name, capacity, closedForMaintenance) VALUES ('jungle', 30, true);
INSERT INTO enclosure(name, capacity, closedForMaintenance) VALUES ('forest', 20, false);
INSERT INTO enclosure(name, capacity, closedForMaintenance) VALUES ('big tiger field', 10, true);
INSERT INTO enclosure(name, capacity, closedForMaintenance) VALUES ('big zebra field', 8, false);
INSERT INTO enclosure(name, capacity, closedForMaintenance) VALUES ('big lion field', 20, false);
INSERT INTO enclosure(name, capacity, closedForMaintenance) VALUES ('snake pool', 30, true);



---animals data
INSERT INTO animals (name, age,type, enclosure_id) VALUES ('Nadia', 24, 'Zebra', 1);
INSERT INTO animals (name, age,type, enclosure_id) VALUES ('Nelly', 12, 'Tiger', 2);
INSERT INTO animals (name, age,type, enclosure_id) VALUES ('Ilya', 40, 'Lion', 3);
INSERT INTO animals (name, age,type, enclosure_id) VALUES ('Shiyi', 28, 'Panther', 4);
INSERT INTO animals (name, age,type, enclosure_id) VALUES ('Zsolt', 5, 'Eagle', 5);
INSERT INTO animals (name, age,type, enclosure_id) VALUES ('Ana', 10, 'Giraffe', 6);
INSERT INTO animals (name, age,type, enclosure_id) VALUES ('Yasmine', 28, 'Snake', 3);


INSERT INTO assignments(employee_id,enclosure_id,day) VALUES (1,1,'Monday');
INSERT INTO assignments(employee_id,enclosure_id,day) VALUES (2,1, 'Monday');
INSERT INTO assignments(employee_id,enclosure_id,day) VALUES (3,2,'Monday');
INSERT INTO assignments(employee_id,enclosure_id,day) VALUES (4,3,'Tuesday');
INSERT INTO assignments(employee_id,enclosure_id,day) VALUES (5,3,'Tuesday');
INSERT INTO assignments(employee_id,enclosure_id,day) VALUES (6,4,'Tuesday');
INSERT INTO assignments(employee_id,enclosure_id,day) VALUES (7,5,'Wednesday');
INSERT INTO assignments(employee_id,enclosure_id,day) VALUES (7,4,'Monday');
INSERT INTO assignments(employee_id,enclosure_id,day) VALUES (8,1,'Tuesday');
INSERT INTO assignments(employee_id,enclosure_id,day) VALUES (9,6,'Wednesday');
INSERT INTO assignments(employee_id,enclosure_id,day) VALUES (5,5,'Tuesday');
INSERT INTO assignments(employee_id,enclosure_id,day) VALUES (8,6,'Monday');