USE employees_db;

----- Department Seeds -----

INSERT INTO department (id, name)
VALUES (1, "HVAC");

INSERT INTO department (id, name)
VALUES (2, "Plumbing");

INSERT INTO department (id, name)
VALUES (3, "Electrical");

INSERT INTO department (id, name)
VALUES (4, "Technology");

----- Role Seeds -----

INSERT INTO role (id, title, salary, department_id)
VALUES (1, "M-1", 42000, 1);

INSERT INTO role (id, title, salary, department_id)
VALUES (2, "M-2", 60000, 1);

INSERT INTO role (id, title, salary, department_id)
VALUES (3, "M-3", 75000, 1);

INSERT INTO role (id, title, salary, department_id)
VALUES (4, "P-1", 65000, 2);

INSERT INTO role (id, title, salary, department_id)
VALUES (5, "P-2", 70000, 2);

INSERT INTO role (id, title, salary, department_id)
VALUES (6, "P-3", 100000, 2);

INSERT INTO role (id, title, salary, department_id)
VALUES (7, "E-1", 80000, 3);

INSERT INTO role (id, title, salary, department_id)
VALUES (8, "E-2", 90000, 3);

INSERT INTO role (id, title, salary, department_id)
VALUES (9, "T-1", 45000, 4);

INSERT INTO role (id, title, salary, department_id)
VALUES (10, "T-2", 90000, 4);

INSERT INTO role (id, title, salary, department_id)
VALUES (11, "T-3", 100000, 4);
----- Employees Seeds -----

INSERT INTO employee (id, first_name, last_name, role_id, manager_id)
VALUES (4, "Franklin", "Richards", 3, null);

INSERT INTO employee (id, first_name, last_name, role_id, manager_id)
VALUES (5, "Sue", "Storm", 8, null);

INSERT INTO employee (id, first_name, last_name, role_id, manager_id)
VALUES (7, "Elektra", "Natchios", 6, null);

INSERT INTO employee (id, first_name, last_name, role_id, manager_id)
VALUES (10, "Tony", "Stark", 11, null);

INSERT INTO employee (id, first_name, last_name, role_id, manager_id)
VALUES (3, "Ben", "Grimm", 2, 4);

INSERT INTO employee (id, first_name, last_name, role_id, manager_id)
VALUES (1, "Paolo", "Yap", 1, 3);

INSERT INTO employee (id, first_name, last_name, role_id, manager_id)
VALUES (2, "Derrick", "Henry", 2, 3);

INSERT INTO employee (id, first_name, last_name, role_id, manager_id)
VALUES (6, "Sue", "Storm", 5, 6);

INSERT INTO employee (id, first_name, last_name, role_id, manager_id)
VALUES (8, "Johnny", "Storm", 7, 8);

INSERT INTO employee (id, first_name, last_name, role_id, manager_id)
VALUES (9, "Peter", "Parker", 10, 11);

INSERT INTO employee (id, first_name, last_name, role_id, manager_id)
VALUES (9, "Bugs", "Bunny", 7, 8);