-- 1.ѡ������ʱ�������Ա��
select * from ((((employees.employees inner join employees.salaries on employees.employees.emp_no = employees.salaries.emp_no) inner join employees.dept_emp on employees.employees.emp_no = employees.dept_emp.emp_no) inner join employees.titles on employees.employees.emp_no = employees.titles.emp_no) inner join employees.dept_manager on employees.employees.emp_no = employees.dept_manager.emp_no) inner join employees.departments on employees.departments.dept_no = employees.dept_emp.dept_no and employees.employees.hire_date in(select min(hire_date) from employees.employees);


-- 2.ÿ������Ա�����ʼ�1
set sql_safe_updates = 0;
update employees.salaries set salary = salary + 1 where emp_no in (select employees.employees.emp_no from employees.employees where gender = 'M');


-- 3.ɾ������last_nameΪActon���˵������Ϣ
set sql_safe_updates = 0;
delete employees.salaries from employees. salaries,employees.employees where employees.emp_no = salaries.emp_no and employees.last_name = 'Acton';
delete employees.titles from employees.titles,employees.employees where employees.emp_no = titles.emp_no and employees.last_name = 'Acton';
delete employees.dept_emp,employees.dept_manager from employees.employees, employees.dept_emp,employees.dept_manager where employees.emp_no = dept_emp.emp_no and employees.emp_no = dept_manager.emp_no and employees.last_name = 'Acton';
delete from employees.employees where last_name = 'Acton';

-- 4.�����Լ���Ϣ

insert into employees.employees values(500000,"1960-01-01","IRON","Man","M","1990-01-01");

insert into employees.titles values(500002,'Senior Staff','2000-6-25','2016-01-01');

insert into employees.dept_emp values(500000,"d005","1990-01-01","2015-01-01");

insert into employees.dept_manager values ("d005",500000,"1990-01-01","2015-01-01");

insert into employees.salaries values(500000,90000,"1990-01-01","2015-01-01");