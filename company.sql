use company;
create table if NOT EXISTS employees (
    id int,
    first_name VARCHAR(250) not NULL,
    last_name VARCHAR(250) not NULL,
    email VARCHAR(250),
    birthdate DATE,
    team_id int,
    intranet_id int,
    CONSTRAINT intranet_id_key FOREIGN KEY (intranet_id) REFERENCES intranet_accounts(id) on DELETE
    SET NULL,
        FOREIGN KEY (team_id) REFERENCES teams(id) on DELETE
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
alter table intranet_accounts
add column password VARCHAR(250);
create table if NOT EXISTS intranet_accounts (
    id int,
    email VARCHAR(250),
    password VARCHAR(250),
    employee_id INT,
    CONSTRAINT employee_id_key FOREIGN KEY (employee_id) REFERENCES employees(intranet_id) ON DELETE CASCADE,
    PRIMARY KEY (id)
)