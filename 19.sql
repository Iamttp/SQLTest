-- 题目描述
-- 查找所有员工的last_name和first_name以及对应的dept_name，也包括暂时没有分配部门的员工
-- CREATE TABLE `departments` (
-- `dept_no` char(4) NOT NULL,
-- `dept_name` varchar(40) NOT NULL,
-- PRIMARY KEY (`dept_no`));
-- CREATE TABLE `dept_emp` (
-- `emp_no` int(11) NOT NULL,
-- `dept_no` char(4) NOT NULL,
-- `from_date` date NOT NULL,
-- `to_date` date NOT NULL,
-- PRIMARY KEY (`emp_no`,`dept_no`));
-- CREATE TABLE `employees` (
-- `emp_no` int(11) NOT NULL,
-- `birth_date` date NOT NULL,
-- `first_name` varchar(14) NOT NULL,
-- `last_name` varchar(16) NOT NULL,
-- `gender` char(1) NOT NULL,
-- `hire_date` date NOT NULL,
-- PRIMARY KEY (`emp_no`));

------------------------------ TODO 不知道为什么这样不行？
    (
    select last_name, first_name, dept_name
    from dapartments, dept_emp, employees
    WHERE dapartments.dept_no = dept_emp.dept_no and dept_emp.emp_no = employees.emp_no
)
UNION
    (
    select last_name, first_name, NULL
    from employees
    WHERE emp_no not in (
        select employees.emp_no
    from dapartments, dept_emp, employees
    WHERE dapartments.dept_no = dept_emp.dept_no and dept_emp.emp_no = employees.emp_no
    )
)

--------------------------- 左联结
select e.last_name, e.first_name, da.dept_name
from 
    employees as e 
    LEFT JOIN dept_emp as de on de.emp_no = e.emp_no 
    LEFT JOIN departments as da on da.dept_no = de.dept_no

