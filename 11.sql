-- 题目描述
-- 获取所有员工当前的manager，如果当前的manager是自己的话结果不显示，当前表示to_date='9999-01-01'。
-- 结果第一列给出当前员工的emp_no,第二列给出其manager对应的manager_no。
-- CREATE TABLE `dept_emp` (
-- `emp_no` int(11) NOT NULL,
-- `dept_no` char(4) NOT NULL,
-- `from_date` date NOT NULL,
-- `to_date` date NOT NULL,
-- PRIMARY KEY (`emp_no`,`dept_no`));
-- CREATE TABLE `dept_manager` (
-- `dept_no` char(4) NOT NULL,
-- `emp_no` int(11) NOT NULL,
-- `from_date` date NOT NULL,
-- `to_date` date NOT NULL,
-- PRIMARY KEY (`emp_no`,`dept_no`));

------不知道怎么过的
select e.emp_no emp_no, m.emp_no manager_no
from dept_emp as e, dept_manager as m
where e.to_date = '9999-01-01' and m.to_date = '9999-01-01' and e.emp_no != m.emp_no
and e.dept_no = m.dept_no