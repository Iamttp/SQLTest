-- 题目描述
-- 查找所有员工的last_name和first_name以及对应部门编号dept_no，也包括展示没有分配具体部门的员工
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

-- 不知道能不能用union的思路， 报错
-- (
--     select e.last_name, e.first_name, d.dept_no
--     from employees as e, dept_emp as d
--     where e.emp_no = d.emp_no 
-- )
-- union
-- (
--     select e.last_name, e.first_name, NULL
--     from employees as e
--     where e.emp_no not in (
--         select e1.emp_no
--         from employees as e1, dept_emp as d
--         where e1.emp_no = d.emp_no 
--     )
-- )

--------------------------------使用left join on
select e.last_name, e.first_name, d.dept_no
from employees as e 
left join dept_emp as d
on e.emp_no = d.emp_no 
