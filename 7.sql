-- 题目描述
-- 查找薪水涨幅超过15次的员工号emp_no以及其对应的涨幅次数t
-- CREATE TABLE `salaries` (
-- `emp_no` int(11) NOT NULL,
-- `salary` int(11) NOT NULL,
-- `from_date` date NOT NULL,
-- `to_date` date NOT NULL,
-- PRIMARY KEY (`emp_no`,`from_date`));

--------- 我怎么看不懂涨幅呢
select emp_no, COUNT(emp_no) as t
from salaries
group by emp_no
having COUNT(emp_no) > 15