-- 题目描述
-- 统计出当前各个title类型对应的员工当前薪水对应的平均工资。结果给出title以及平均工资avg。
-- CREATE TABLE `salaries` (
-- `emp_no` int(11) NOT NULL,
-- `salary` int(11) NOT NULL,
-- `from_date` date NOT NULL,
-- `to_date` date NOT NULL,
-- PRIMARY KEY (`emp_no`,`from_date`));
-- CREATE TABLE IF NOT EXISTS "titles" (
-- `emp_no` int(11) NOT NULL,
-- `title` varchar(50) NOT NULL,
-- `from_date` date NOT NULL,
-- `to_date` date DEFAULT NULL);

----------------当前的话需要限制to_date
SELECT title, AVG(salary) as avg
FROM salaries, titles
WHERE salaries.emp_no = titles.emp_no
and salaries.to_date='9999-01-01'
and titles.to_date='9999-01-01'
group by title