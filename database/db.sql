/* CREATE DATABASE teckglobal;
 */
--USE teckglobal;

/* CREATE TABLE users(
    id INT(11) NOT NULL,
    username VARCHAR(16) NOT NULL,
    password VARCHAR(60) NOT NULL,
    fullname VARCHAR(100) NOT NULL
    
); */

--ALTER TABLE users ADD PRIMARY KEY (id);

/* ALTER USER users 
    MODIFY id(11) NOT NULL AUTO_INCREMENT;
 */

/* CREATE TABLE role(
    role_id INT PRIMARY KEY NOT NULL AUTO_INCREMENT;
    position VARCHAR(40)
);
 */
--ALTER TABLE employee ADD FOREIGN KEY (role_id) REFERENCES role(role_id) ON DELETE SET NULL;