
#📊 HR Analytics Dashboard – Power BI Project
🚀 Overview
This HR Analytics Dashboard provides key insights into employee data, attendance, salary trends, and performance evaluations using Power BI. The dashboard helps HR teams make data-driven decisions for better workforce management.

##📌 Key Features
✔ Employee Attendance Analysis – Breakdown of present vs. absent employees using donut charts
✔ Hiring Trends – Track employee hiring based on year, quarter, month, and day
✔ Salary & Payroll Reports – Visualize total payroll cost, department-wise salary trends, and employee compensation
✔ Performance & Promotions – Identify employees eligible for promotions based on performance metrics
✔ Department-Wise Insights – Analyze workforce distribution across different departments

##🛠️ Power BI Visuals Used
📊 Stacked Column & Line Charts – Hiring & Salary Trends
🎯 Gauge Chart – Promotion Eligibility Percentage
📑 Matrix Table – Employee Salary Breakdown
💹 Donut Chart – Attendance Status Distribution
🔽 Funnel Chart – Promotion Pipeline

##🏗️ Data Model & Tables
The project consists of the following tables:

Employees – Contains employee details (ID, Name, Age, Gender, Department, Hire Date)
Departments – Stores department-wise details (Department ID, Name, Location)
Salaries – Tracks salary components (Employee ID, Salary Amount, Bonus, Deductions)
Attendance – Maintains attendance records (Employee ID, Date, Status)
Performance – Records employee performance ratings (Employee ID, Review Date, Rating)
##🔢 DAX Measures Used
Net Salary Calculation
DAX
Copy
Edit
Net_Salary = Salaries[Salary Amount] + Salaries[Bonus] - Salaries[Deductions]
Average Net Salary
DAX
Copy
Edit
Avg_Net_Salary = AVERAGE(Salaries[Net_Salary])
Total Payroll Cost
DAX
Copy
Edit
Total_Payroll_Cost = SUM(Salaries[Net_Salary])
Eligible for Promotion Measure
DAX
Copy
Edit
Eligible_Employees = COUNTROWS(FILTER(Performance, Performance[Rating] >= 4))
📸 Screenshots
(Add relevant dashboard screenshots here)

##📂 Files Included
HR_Analytics.pbix – Power BI project file
Dataset.sql – SQL script for creating & inserting dataset
README.md – Project documentation
##💡 How to Use
Clone this repository:
bash
Copy
Edit
git clone https://github.com/your-username/HR-Analytics-PowerBI.git
Open HR_Analytics.pbix in Power BI Desktop
Load the dataset and refresh the visuals
Explore the insights & customize as needed
##🏆 Conclusion
This project showcases how Power BI can be leveraged to analyze HR data effectively. It enables HR teams to gain real-time insights and make data-driven decisions for workforce management.

🌟 If you found this project useful, don’t forget to ⭐ star this repository!

🔗 Connect with Me
💼 LinkedIn: https://www.linkedin.com/in/naveeneswaran/
📧 Email: naveenrathnam3009@gmail.com

