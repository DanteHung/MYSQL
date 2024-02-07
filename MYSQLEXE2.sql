-- Task1
Insert Into Bonus
(Worker_REF_ID,Bonus_Amount, Bonus_Date) Values
(6,32000, '21-11-02'),
(6,20000, '22-11-02'),
(5,21000,'21-11-02'),
(9,30000,'21-11-02'),
(8,45000,'22-11-02');

-- Task2
SELECT *
FROM worker
order by Salary desc
limit 1,1;

-- Task 3


-- Task 4

-- Task 5
SELECT * 
FROM worker w
Join bonus b
on w.Worker_ID = b.Worker_REF_ID
