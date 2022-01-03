create table if not exists employees (
id serial primary key,
employee_name varchar(40) not null,
department varchar(40) not null,
manager_id integer references employees(id));

