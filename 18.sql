-- 题目描述
-- 查找当前薪水(to_date='9999-01-01')排名第二多的员工编号emp_no、薪水salary、last_name以及first_name，不准使用order by
-- CREATE TABLE `employees` (
-- `emp_no` int(11) NOT NULL,
-- `birth_date` date NOT NULL,
-- `first_name` varchar(14) NOT NULL,
-- `last_name` varchar(16) NOT NULL,
-- `gender` char(1) NOT NULL,
-- `hire_date` date NOT NULL,
-- PRIMARY KEY (`emp_no`));
-- CREATE TABLE `salaries` (
-- `emp_no` int(11) NOT NULL,
-- `salary` int(11) NOT NULL,
-- `from_date` date NOT NULL,
-- `to_date` date NOT NULL,
-- PRIMARY KEY (`emp_no`,`from_date`));

--------perfect
select employees.emp_no, salary, last_name, first_name
from employees, salaries
where employees.emp_no = salaries.emp_no and to_date = '9999-01-01' and salary = (
    select MAX(salary)
    from salaries
    WHERE salary != (
        select MAX(salary)
        from salaries
    )
)