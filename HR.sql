
-- Employees Table
CREATE TABLE Employees (
    EmployeeID INT PRIMARY KEY,
    Name VARCHAR(100),
    Age INT,
    Gender VARCHAR(10),
    Position VARCHAR(100),
    DepartmentID INT,
    ContactNumber VARCHAR(15),
    Email VARCHAR(100),
    HireDate DATE
);

-- Departments Table
CREATE TABLE Departments (
    DepartmentID INT PRIMARY KEY,
    DepartmentName VARCHAR(100),
    Location VARCHAR(100)
);

-- Salaries Table
CREATE TABLE Salaries (
    SalaryID INT PRIMARY KEY,
    EmployeeID INT,
    SalaryAmount DECIMAL(10,2),
    Bonus DECIMAL(10,2),
    FOREIGN KEY (EmployeeID) REFERENCES Employees(EmployeeID)
);

-- Attendance Table
CREATE TABLE Attendance (
    AttendanceID INT PRIMARY KEY,
    EmployeeID INT,
    Date DATE,
    Status VARCHAR(10),
    FOREIGN KEY (EmployeeID) REFERENCES Employees(EmployeeID)
);

-- Performance Table
CREATE TABLE Performance (
    PerformanceID INT PRIMARY KEY,
    EmployeeID INT,
    ReviewDate DATE,
    Rating INT,
    Comments TEXT,
    FOREIGN KEY (EmployeeID) REFERENCES Employees(EmployeeID)
);

-- Step 3: Insert Data

-- Employees Data (20 Records)
INSERT INTO Employees VALUES
(1, 'John Doe', 30, 'Male', 'Software Engineer', 1, '1234567890', 'john.doe@email.com', '2022-01-15'),
(2, 'Jane Smith', 28, 'Female', 'Data Analyst', 2, '9876543210', 'jane.smith@email.com', '2021-07-20'),
(3, 'Michael Brown', 35, 'Male', 'HR Manager', 3, '4567891230', 'michael.brown@email.com', '2019-05-10'),
(4, 'Emily Johnson', 29, 'Female', 'Marketing Specialist', 4, '7891234560', 'emily.johnson@email.com', '2020-03-18'),
(5, 'David Wilson', 40, 'Male', 'Project Manager', 1, '3216549870', 'david.wilson@email.com', '2018-12-01'),
(6, 'Emma Davis', 27, 'Female', 'Software Developer', 1, '6549873210', 'emma.davis@email.com', '2023-06-05'),
(7, 'Daniel White', 33, 'Male', 'HR Executive', 3, '1472583690', 'daniel.white@email.com', '2021-08-14'),
(8, 'Sophia Green', 31, 'Female', 'Financial Analyst', 5, '3692581470', 'sophia.green@email.com', '2022-04-23'),
(9, 'James Black', 36, 'Male', 'Network Engineer', 2, '8521479630', 'james.black@email.com', '2020-09-11'),
(10, 'Olivia Thomas', 25, 'Female', 'Business Analyst', 4, '9638527410', 'olivia.thomas@email.com', '2021-02-08'),
(11, 'Liam Martinez', 29, 'Male', 'DevOps Engineer', 1, '7418529630', 'liam.martinez@email.com', '2019-10-20'),
(12, 'Ava Taylor', 30, 'Female', 'Recruitment Specialist', 3, '7539518520', 'ava.taylor@email.com', '2020-11-05'),
(13, 'Mason Anderson', 32, 'Male', 'QA Engineer', 2, '3697418520', 'mason.anderson@email.com', '2018-06-15'),
(14, 'Isabella Moore', 27, 'Female', 'Graphic Designer', 4, '8523697410', 'isabella.moore@email.com', '2022-03-28'),
(15, 'Ethan Garcia', 35, 'Male', 'IT Manager', 2, '9517538520', 'ethan.garcia@email.com', '2017-08-10'),
(16, 'Charlotte Hernandez', 28, 'Female', 'Digital Marketer', 4, '1473692580', 'charlotte.hernandez@email.com', '2023-01-17'),
(17, 'Logan Hall', 31, 'Male', 'Business Development Executive', 5, '2581473690', 'logan.hall@email.com', '2021-05-25'),
(18, 'Mia Walker', 29, 'Female', 'HR Consultant', 3, '9632587410', 'mia.walker@email.com', '2019-12-09'),
(19, 'Benjamin Young', 37, 'Male', 'Finance Manager', 5, '7894561230', 'benjamin.young@email.com', '2016-07-04'),
(20, 'Harper King', 26, 'Female', 'Sales Executive', 4, '3217896540', 'harper.king@email.com', '2022-09-13');

-- Similarly, insert data into Departments, Salaries, Attendance, and Performance tables.
INSERT INTO Salaries VALUES
(1, 1, 70000, 5000),
(2, 2, 65000, 4000),
(3, 3, 80000, 6000),
(4, 4, 60000, 3500),
(5, 5, 90000, 7000),
(6, 6, 72000, 4500),
(7, 7, 55000, 3000),
(8, 8, 75000, 5000),
(9, 9, 77000, 5500),
(10, 10, 62000, 3800),
(11, 11, 81000, 6200),
(12, 12, 58000, 3200),
(13, 13, 74000, 4700),
(14, 14, 59000, 3300),
(15, 15, 95000, 8000),
(16, 16, 61000, 3400),
(17, 17, 78000, 5600),
(18, 18, 73000, 4800),
(19, 19, 88000, 7200),
(20, 20, 57000, 3100);

INSERT INTO Attendance VALUES
(1, 1, '2024-02-01', 'Present'),
(2, 2, '2024-02-01', 'Absent'),
(3, 3, '2024-02-01', 'Present'),
(4, 4, '2024-02-01', 'Present'),
(5, 5, '2024-02-01', 'Present'),
(6, 6, '2024-02-01', 'Absent'),
(7, 7, '2024-02-01', 'Present'),
(8, 8, '2024-02-01', 'Present'),
(9, 9, '2024-02-01', 'Present'),
(10, 10, '2024-02-01', 'Absent'),
(11, 11, '2024-02-01', 'Present'),
(12, 12, '2024-02-01', 'Present'),
(13, 13, '2024-02-01', 'Absent'),
(14, 14, '2024-02-01', 'Present'),
(15, 15, '2024-02-01', 'Present'),
(16, 16, '2024-02-01', 'Absent'),
(17, 17, '2024-02-01', 'Present'),
(18, 18, '2024-02-01', 'Present'),
(19, 19, '2024-02-01', 'Present'),
(20, 20, '2024-02-01', 'Absent');

INSERT INTO Performance VALUES
(1, 1, '2024-01-15', 4, 'Good performance'),
(2, 2, '2024-01-15', 3, 'Needs improvement in deadlines'),
(3, 3, '2024-01-15', 5, 'Excellent management skills'),
(4, 4, '2024-01-15', 4, 'Creative and proactive'),
(5, 5, '2024-01-15', 5, 'Outstanding leadership'),
(6, 6, '2024-01-15', 3, 'Needs better debugging skills'),
(7, 7, '2024-01-15', 4, 'Good communication skills'),
(8, 8, '2024-01-15', 5, 'Excellent financial planning'),
(9, 9, '2024-01-15', 4, 'Strong problem-solving ability'),
(10, 10, '2024-01-15', 3, 'Lacks teamwork spirit'),
(11, 11, '2024-01-15', 5, 'Highly skilled in automation'),
(12, 12, '2024-01-15', 4, 'Great at talent acquisition'),
(13, 13, '2024-01-15', 3, 'Needs improvement in test cases'),
(14, 14, '2024-01-15', 4, 'Excellent creativity'),
(15, 15, '2024-01-15', 5, 'Strong leadership and planning'),
(16, 16, '2024-01-15', 3, 'Needs improvement in digital strategy'),
(17, 17, '2024-01-15', 4, 'Great at negotiation'),
(18, 18, '2024-01-15', 5, 'Very strong HR policies'),
(19, 19, '2024-01-15', 5, 'Excellent financial oversight'),
(20, 20, '2024-01-15', 3, 'Needs improvement in sales pitches');

--1)Employee Attendance Analysis
--Retrieve the total number of present, absent, late, and leave days for each employee in a given month.
--Identify employees with frequent late check-ins (more than 5 times in a month).
--Find the top 5 most punctual employees (those with the least late days).
SELECT 
    e.EmployeeID, 
    e.Name, 
    COUNT(CASE WHEN a.Status = 'Present' THEN 1 END) AS PresentDays,
    COUNT(CASE WHEN a.Status = 'Absent' THEN 1 END) AS AbsentDays,
    COUNT(CASE WHEN a.Status = 'Late' THEN 1 END) AS LateDays,
    COUNT(CASE WHEN a.Status = 'Leave' THEN 1 END) AS LeaveDays
FROM Attendance a
JOIN Employees e ON a.EmployeeID = e.EmployeeID
WHERE EXTRACT(MONTH FROM a.Date) = 2  
GROUP BY e.EmployeeID, e.Name
ORDER BY e.EmployeeID;



--2)Salary & Payroll Insights
--Calculate the net salary for each employee (Base Salary + Bonus - Deductions).
--Identify the top 3 highest-paid employees each month.
--Compare salary trends across departments.
SELECT 
    e.EmployeeID, 
    e.Name, 
    d.DepartmentName,
    s.BaseSalary, 
    s.Bonus, 
    s.Deductions,
    (s.BaseSalary + s.Bonus - s.Deductions) AS NetSalary
FROM Salaries s
JOIN Employees e ON s.EmployeeID = e.EmployeeID
JOIN Departments d ON e.DepartmentID = d.DepartmentID
ORDER BY NetSalary DESC
LIMIT 3;

  -- Get top 3 highest-paid employees


--3. Department-Wise Employee Distribution
--Count the number of employees per department.
--Identify which department has the highest employee turnover (employees who left).
SELECT 
    d.DepartmentName, 
    COUNT(e.EmployeeID) AS EmployeeCount
FROM Employees e
JOIN Departments d ON e.DepartmentID = d.DepartmentID
GROUP BY d.DepartmentName
ORDER BY EmployeeCount DESC;


--4. Performance & Promotions Analysis
--Identify employees eligible for promotions based on years of experience.
--Compare performance across employees (if applicable).
--Track departments with the most promotions over the last year.
SELECT 
    e.EmployeeID, 
    e.Name, 
    e.Position, 
    e.HireDate,
    (EXTRACT(YEAR FROM CURRENT_DATE) - EXTRACT(YEAR FROM e.HireDate)) AS ExperienceYears
FROM Employees e
WHERE (EXTRACT(YEAR FROM CURRENT_DATE) - EXTRACT(YEAR FROM e.HireDate)) >= 5;

--5. Employee Retention & Attrition Insights
--Track how many employees left the company per department.
--Identify high-risk departments with frequent resignations.
--Compare new hires vs. exits per month.
SELECT 
    d.DepartmentName, 
    COUNT(e.EmployeeID) AS EmployeesLeft
FROM Employees e
JOIN Departments d ON e.DepartmentID = d.DepartmentID
WHERE e.HireDate < '2023-01-01'  
GROUP BY d.DepartmentName
ORDER BY EmployeesLeft DESC;


