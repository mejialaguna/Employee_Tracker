DROP TABLE IF EXISTS deparment;
DROP TABLE IF EXISTS roles;
DROP TABLE IF EXISTS employee;


CREATE TABLE deparment (
  id INTEGER AUTO_INCREMENT PRIMARY KEY,
  name VARCHAR(50) NOT NULL
);

CREATE TABLE roles (
  id INTEGER AUTO_INCREMENT PRIMARY KEY,
  rol_title VARCHAR(50) NOT NULL,
  salary DECIMAL NOT NULL,
  dep_id INTEGER ,
  CONSTRAINT fk_dep FOREIGN KEY (dep_id) REFERENCES deparment(id) ON DELETE SET NULL
);

CREATE TABLE employee (
  id INTEGER AUTO_INCREMENT PRIMARY KEY,
  first_name VARCHAR(30) NOT NULL,
  last_name VARCHAR(30) NOT NULL,
  role_id INTEGER NOT NULL,
  manager_id INTEGER ,
  CONSTRAINT fk_role FOREIGN KEY (role_id) REFERENCES deparment(id) ON DELETE CASCADE,
  CONSTRAINT fk_manager FOREIGN KEY (manager_id) REFERENCES employee(id) ON DELETE CASCADE
);