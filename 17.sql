-- 题目描述
-- 获取当前（to_date='9999-01-01'）薪水第二多的员工的emp_no以及其对应的薪水salary
-- CREATE TABLE `salaries` (
-- `emp_no` int(11) NOT NULL,
-- `salary` int(11) NOT NULL,
-- `from_date` date NOT NULL,
-- `to_date` date NOT NULL,
-- PRIMARY KEY (`emp_no`,`from_date`));

select emp_no, salary
from salaries
WHERE to_date = '9999-01-01' and salary = (
    SELECT distinct salary
    from salaries
    ORDER BY salary desc
    limit 1,1
)