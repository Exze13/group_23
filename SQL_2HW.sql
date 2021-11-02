/*������� employees
������� ������� employees
- id. serial,  primary key,
- employee_name. Varchar(50), not null
��������� ������� employee 70 ��������*/

create table employees (
	id serial primary key,
	employee_name varchar(50) not null
);

insert into employees (id, employee_name) 
values (default, 'Sergey_Bz');

insert into employees (id, employee_name)
values (default, '��������� ������');

insert into employees (id, employee_name)
values (default, 'Oleg Keldanovich');

select * from employees;


/*
������� salary

������� ������� salary
- id. Serial  primary key,
- monthly_salary. Int, not null
��������� ������� salary 15 ��������:
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

/*������� employee_salary
������� ������� employee_salary
- id. Serial  primary key,
- employee_id. Int, not null, unique
- salary_id. Int, not null
��������� ������� employee_salary 40 ��������:
- � 10 ����� �� 40 �������� �������������� employee_id */

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

/* ������� roles
������� ������� roles
- id. Serial  primary key,
- role_name. int, not null, unique
�������� ��� ������ role_name � int �� varchar(30)
��������� ������� roles 20 ��������:
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

/*������� roles_employee
������� ������� roles_employee
- id. Serial  primary key,
- employee_id. Int, not null, unique (������� ���� ��� ������� employees, ���� id)
- role_id. Int, not null (������� ���� ��� ������� roles, ���� id)
��������� ������� roles_employee 40 ��������:*/

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
