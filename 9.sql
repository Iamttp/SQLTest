-- 题目描述
-- 获取所有部门当前manager的当前薪水情况，给出dept_no, emp_no以及salary，当前表示to_date='9999-01-01'
-- CREATE TABLE `dept_manager` (
-- `dept_no` char(4) NOT NULL,
-- `emp_no` int(11) NOT NULL,
-- `from_date` date NOT NULL,
-- `to_date` date NOT NULL,
-- PRIMARY KEY (`emp_no`,`dept_no`));
-- CREATE TABLE `salaries` (
-- `emp_no` int(11) NOT NULL,
-- `salary` int(11) NOT NULL,
-- `from_date` date NOT NULL,
-- `to_date` date NOT NULL,
-- PRIMARY KEY (`emp_no`,`from_date`));

select d.dept_no, d.emp_no, s.salary
from dept_manager as d, salaries as s
where d.to_date='9999-01-01' and s.to_date='9999-01-01' and d.emp_no = s.emp_no
