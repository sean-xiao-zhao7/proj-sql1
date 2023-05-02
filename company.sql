use company;
create table if NOT EXISTS employees (
    id int,
    name VARCHAR(250) not NULL,
    email VARCHAR(250),
    birthdate DATE,
    project_id int,
    FOREIGN KEY (project_id) REFERENCES projects(id) on DELETE
    set null,
        PRIMARY KEY (id)
);
create table if NOT EXISTS buildings (
    id int,
    name VARCHAR(250) not NULL,
    PRIMARY KEY (id)
);
create table if NOT EXISTS teams (
    id int,
    name VARCHAR(250) not null,
    building_id INT,
    FOREIGN KEY (building_id) REFERENCES buildings (id) on DELETE RESTRICT,
    PRIMARY KEY (id)
);
create table if NOT EXISTS projects (
    id int,
    title VARCHAR(250) not null,
    deadline TIMESTAMP,
    PRIMARY KEY (id)
);
alter table employees
add COLUMN project_id INT,
add FOREIGN key (project_id) REFERENCES projects(id) On DELETE
set NULL;