SELECT NameofEmployee, EmployeeAge 
FROM demograph
WHERE EmployeeAge > 35;

SELECT NameofEmployee, EmployeeAge 
FROM demograph 
ORDER BY EmployeeAge DESC;

#inner join
SELECT d.ï»¿EmployeeID, d.NameofEmployee, j.JobTitle
FROM demograph d
INNER JOIN JobTitle j ON d.ï»¿EmployeeID = j.ï»¿EmployeeID;

#left join
SELECT d.ï»¿EmployeeID, d.NameofEmployee, j.JobTitle
FROM demograph d
LEFT JOIN JobTitle j ON d.ï»¿EmployeeID = j.ï»¿EmployeeID;

#right join
SELECT d.ï»¿EmployeeID, d.NameofEmployee, j.JobTitle
FROM demograph d
RIGHT JOIN JobTitle j ON d.ï»¿EmployeeID = j.ï»¿EmployeeID;

#aggregate functions
SELECT AVG(EmployeeSalary) AS AverageSalary 
FROM Salary;

SELECT SUM(EmployeeSalary) AS TotalSalary 
FROM Salary;

SELECT EmployeeGender, COUNT(*) AS Total 
FROM demograph
GROUP BY EmployeeGender;

#subqueries
SELECT d.NameofEmployee, s.EmployeeSalary
FROM demograph d
JOIN Salary s ON d.ï»¿EmployeeID = s.ï»¿EmployeeID
WHERE s.EmployeeSalary > (
    SELECT AVG(EmployeeSalary) FROM Salary
);

#views
CREATE VIEW EmployeeFullProfile AS
SELECT 
    d.ï»¿EmployeeID, d.NameofEmployee, d.EmployeeAge, d.EmployeeGender,
    j.JobTitle, s.EmployeeSalary
FROM demograph d
JOIN JobTitle j ON d.ï»¿EmployeeID = j.ï»¿EmployeeID
JOIN Salary s ON d.ï»¿EmployeeID = s.ï»¿EmployeeID;

#index
CREATE INDEX idx_employee_id ON demograph(ï»¿EmployeeID);







