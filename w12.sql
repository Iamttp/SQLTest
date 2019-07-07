-- 题目描述
-- 获取所有部门中当前员工薪水最高的相关信息，给出dept_no, emp_no以及其对应的salary
-- CREATE TABLE `dept_emp` (
-- `emp_no` int(11) NOT NULL,
-- `dept_no` char(4) NOT NULL,
-- `from_date` date NOT NULL,
-- `to_date` date NOT NULL,
-- PRIMARY KEY (`emp_no`,`dept_no`));
-- CREATE TABLE `salaries` (
-- `emp_no` int(11) NOT NULL,
-- `salary` int(11) NOT NULL,
-- `from_date` date NOT NULL,
-- `to_date` date NOT NULL,
-- PRIMARY KEY (`emp_no`,`from_date`));

----------------------???
SELECT dept_no, dept_emp.emp_no, salary
FROM dept_emp, salaries
where dept_emp.emp_no = salaries.emp_no and salary = (
    SELECT MAX(salary) 
    from salaries
)