use employees;

-- ��ѯ�����ʱ��Ĺ�Ա��Ϣ
select * from employees where hire_date = (select min(hire_date) from employees);


-- Ϊ�������Թ�Ա��н 
update salaries set salary = salary + 1 where emp_no in (select emp_no from employees where gender = 'M');

-- ����Ĩ��last nameΪActon�������˵����������Ϣ
delete dept_emp from employees,dept_emp where employees.emp_no = dept_emp.emp_no and employees.last_name = 'Acton';

delete dept_manager from employees,dept_manager where employees.emp_no = dept_manager.emp_no and employees.last_name = 'Acton';

delete salaries from employees,salaries where employees.emp_no = salaries.emp_no and employees.last_name = 'Acton';

delete titles from employees,titles where employees.emp_no = titles.emp_no and employees.last_name = 'Acton';

delete from employees where employees.last_name = 'Acton';


-- �����Լ�����Ϣ

insert into employees values(2332333,"1996-05-08","Wenqiang","Zhang",'M',"1996-05-09");
insert into dept_emp values(2332333,"d006","1996-05-08","2996-05-9");
insert into salaries values(2332333,2332333,"1996-05-08","2996-05-09");
insert into titles values(2332333,"king","1996-05-09","2996-05-09");