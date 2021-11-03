/*Таблица employees
Создать таблицу employees
- id. serial,  primary key,
- employee_name. Varchar(50), not null
Наполнить таблицу employee 70 строками.*/

create table employees (
	id serial primary key,
	employee_name varchar(50) not null
);

insert into employees (id, employee_name) 
values (default, 'Sergey_Bz');

insert into employees (id, employee_name)
values (default, 'Александр Дросов');

insert into employees (id, employee_name)
values (default, 'Oleg Keldanovich');

select * from employees;


/*
Таблица salary

Создать таблицу salary
- id. Serial  primary key,
- monthly_salary. Int, not null
Наполнить таблицу salary 15 строками:
 */

create table salary (
	id serial primary key,
	monthly_salary int not null
);

insert into salary (id, monthly_salary)
values (default, 1000);

insert into salary (id, monthly_salary)
values (default, 2500);

select * from salary;

/*Таблица employee_salary
Создать таблицу employee_salary
- id. Serial  primary key,
- employee_id. Int, not null, unique
- salary_id. Int, not null
Наполнить таблицу employee_salary 40 строками:
- в 10 строк из 40 вставить несуществующие employee_id */

create table employee_salary (
	id serial primary key,
	employee_id int not null unique,
	salary_id int not null
);

insert into employee_salary (id, employee_id, salary_id)
values (default, 71, 1);

insert into employee_salary (id, employee_id, salary_id)
values (default, 72, 16);

insert into employee_salary (id, employee_id, salary_id)
values (default, 73, 2);

insert into employee_salary (id, employee_id, salary_id)
values (default, 74, 15);

insert into employee_salary (id, employee_id, salary_id)
values (default, 75, 3);

insert into employee_salary (id, employee_id, salary_id)
values (default, 76, 14);

insert into employee_salary (id, employee_id, salary_id)
values (default, 77, 4);

insert into employee_salary (id, employee_id, salary_id)
values (default, 78, 13);

insert into employee_salary (id, employee_id, salary_id)
values (default, 79, 5);

insert into employee_salary (id, employee_id, salary_id)
values (default, 80, 12);

insert into employee_salary (id, employee_id, salary_id)
values (default, 33, 13);

select * from employee_salary;

/* Таблица roles
Создать таблицу roles
- id. Serial  primary key,
- role_name. int, not null, unique
Поменять тип столба role_name с int на varchar(30)
Наполнить таблицу roles 20 строками:
*/

create table roles (
	id serial primary key,
	role_name int not null unique
);

alter table roles
alter column role_name type varchar(30)
using role_name::varchar(30);

insert into roles (id, role_name)
values (default, 'Senior Automation QA engineer');

select * from roles;

/*Таблица roles_employee
Создать таблицу roles_employee
- id. Serial  primary key,
- employee_id. Int, not null, unique (внешний ключ для таблицы employees, поле id)
- role_id. Int, not null (внешний ключ для таблицы roles, поле id)
Наполнить таблицу roles_employee 40 строками:*/

create table roles_employee (
	id serial primary key,
	employee_id int not null unique,
	role_id int not null,
	foreign key (employee_id)
		references employees (id),
	foreign key (role_id)
		references roles (id)
);

insert into roles_employee (id, employee_id, role_id)
values (default, 40, 16);

select * from roles_employee;
