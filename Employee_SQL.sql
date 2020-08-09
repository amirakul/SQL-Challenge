DROP TABLE "Departments";
CREATE TABLE "Departments" (
    "dept_no" varchar(200)   NOT NULL,
    "dept_name" varchar(200)   NOT NULL,
    CONSTRAINT "pk_Departments" PRIMARY KEY (
        "dept_no"
     )
);
DROP TABLE "Employees";
CREATE TABLE "Employees" (
    "emp_no" integer   NOT NULL,
    "emp_title_id" varchar(200)   NOT NULL,
    "birth_date" date   NOT NULL,
    "first_name" varchar(200)   NOT NULL,
    "last_name" varchar(200)   NOT NULL,
    "sex" varchar(200)   NOT NULL,
    "hire_date" date   NOT NULL,
    CONSTRAINT "pk_Employees" PRIMARY KEY (
        "emp_no"
     )
);
DROP TABLE "Dept_Emp";
CREATE TABLE "Dept_Emp" (
    "emp_no" integer   NOT NULL,
    "dept_no" varchar(200)   NOT NULL
);
DROP TABLE "Titles";
CREATE TABLE "Titles" (
    "title_id" varchar(200)   NOT NULL,
    "title" varchar(200)   NOT NULL,
    CONSTRAINT "pk_Titles" PRIMARY KEY (
        "title_id"
     )
);
DROP TABLE "Dept_Manager";
CREATE TABLE "Dept_Manager" (
    "dept_no" varchar(200)   NOT NULL,
    "emp_no" integer   NOT NULL
);
DROP TABLE "Salaries";
CREATE TABLE "Salaries" (
    "emp_no" integer   NOT NULL,
    "salary" integer   NOT NULL
);

--1. List the following details of each employee: employee number, 
--last name, first name, sex, and salary.

select e.emp_no, e.first_name, e.last_name, e.sex,
		s.salary
from "Employees" as e
inner join "Salaries" as s on
e.emp_no=s.emp_no;

--2.List first name, last name, 
--and hire date for employees who were hired in 1986.
select e.first_name, e.last_name, e.hire_date
from "Employees" as e
where hire_date > '1985-12-31'
and hire_date < '1987-01-01'
order by hire_date;

--3. List the manager of each department with the following information: 
--department number, department name, the manager's employee number, 
--last name, first name.
select d.dept_no, d.dept_name, d2.emp_no, e.first_name, e.last_name
from "Departments" as d
join "Dept_Manager" as d2 on d.dept_no=d2.dept_no
join "Employees" as e on d2.emp_no=e.emp_no;

--4.List the department of each employee with the following information:
--employee number, last name, first name, and department name.
select e.emp_no, e.last_name, e.first_name, d.dept_name
from "Employees" as e
join "Dept_Emp" as de on de.emp_no=e.emp_no
join "Departments" as d on d.dept_no=de.dept_no;

--5.List first name, last name, and sex for employees whose first name 
--is "Hercules" and last names begin with "B." 
select e.first_name, e.last_name, e.sex
from "Employees" as e
where first_name='Hercules' and last_name like'B%';

--6. List all employees in the Sales department, 
--including their employee number, last name, first name, and department name.
select e.last_name, e.first_name, d.dept_name
from "Employees" as e
join "Dept_Emp" as de on de.emp_no=e.emp_no
join "Departments" as d on d.dept_no=de.dept_no
where dept_name='Sales';

--7. List all employees in the Sales and Development departments, 
--including their employee number,last name, first name, and department name.
select e.emp_no,e.last_name, e.first_name, d.dept_name
from "Employees" as e
join "Dept_Emp" as de on de.emp_no=e.emp_no
join "Departments" as d on d.dept_no=de.dept_no
where dept_name='Sales'
or dept_name='Development';

--8.In descending order, list the frequency count of employee last names, 
--i.e., how many employees share each last name.
select e.last_name, count(last_name)
from "Employees" as e
group by last_name
order by count(last_name) desc;