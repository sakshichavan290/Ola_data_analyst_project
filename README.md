# 🚕 Ola Data Analyst Project

📊 End-to-end data analysis using **Python**, **SQL**, and **Power BI** on 100,000+ simulated OLA ride bookings in Bengaluru.  
The project focuses on ride trends, cancellations, customer & driver behavior, and revenue insights.

---

## 📌 Project Summary

This project follows a real-world data analysis pipeline:

---

### 🔹 Step 1: Data Import Using Python

- Used Python (with `pandas` and `mysql-connector`) to import `Bookings.csv` into MySQL Workbench.
- Ensured correct data types (date, float, varchar) while uploading.
- Handled encoding issues and missing values before insertion.

---

### 🔹 Step 2: SQL Data Exploration (MySQL Workbench)

- Wrote and tested 20 SQL queries to explore and understand key business metrics.
- Cleaned and validated data using `WHERE`, `GROUP BY`, `CASE`, and aggregation functions.

---

### 🔹 Step 3: Power BI – Data Cleaning

- Loaded the same dataset into Power BI using Power Query.
- Transformed columns:
  - Removed timestamp from date
  - Replaced null/empty values
  - Converted data types appropriately
  - Renamed and reordered columns

---

### 🔹 Step 4: Data Modeling & DAX Measures

- Built essential measures using DAX:
  - TotalBookings  
  - CancelBookings  
  - CancelledPercentage  
  - Avg Ratings  
  - Revenue by Payment Method  

---

### 🔹 Step 5: Dashboard Design in Power BI

- Created clean, multi-page visuals showing KPIs, trends, comparisons, and breakdowns.
- Exported dashboard as PDF.

---

## 🧠 SQL Questions Solved (20)

1. Retrieve all successful bookings  
2. Find average ride distance for each vehicle type  
3. Count cancelled rides by customers  
4. Top 5 customers by ride count  
5. Rides cancelled by drivers due to personal & car issues  
6. Max & min driver ratings for Prime Sedan  
7. Rides paid via UPI  
8. Avg customer rating per vehicle type  
9. Total booking value of successful rides  
10. Incomplete rides with reasons  
11. Count of incomplete rides per reason  
12. Day with highest number of bookings  
13. Most common pickup and drop locations  
14. Compare average V_TAT and C_TAT by vehicle type  
15. Weekend vs weekday booking trends  
16. Vehicle type with highest cancellation rate  
17. Average driver rating per hour of the day  
18. Average booking value per vehicle type  
19. Completed rides by payment method  
20. Average booking value per customer  

---

## 📊 Power BI Visuals

1. Ride Volume Over Time  
2. Booking Status Breakdown  
3. Top 5 Vehicle Types by Ride Distance  
4. Avg Customer Ratings by Vehicle Type  
5. Cancellation Reasons (Customer & Driver)  
6. Revenue by Payment Method  
7. Top 5 Customers by Total Booking Value  
8. Ride Distance Distribution per Day  
9. Driver Ratings Distribution  
10. Customer vs Driver Ratings Comparison  

---

## 📁 Files Included

| File Name            | Description                                      |
|----------------------|--------------------------------------------------|
| `oladashboard.pbix`  | Power BI dashboard                              |
| `oladashboard.pdf`   | Exported dashboard visuals in PDF format        |
| `Bookings.csv`       | Dataset with 100,000+ records                   |
| `olabookings.sql`    | 20 SQL queries used for analysis                |
| `import_data.py`     | Python script to load CSV into MySQL (optional) |

---

## 🛠 Tools & Skills Used

- Python (`pandas`, `mysql.connector`)
- MySQL Workbench (SQL querying & analysis)
- Power BI (Power Query, DAX, Data Modeling)
- CSV/Excel
- Data Cleaning & Transformation
- Dashboard Design & Visualization

---
## 📄 Dashboard Report (PDF)

[Click here to view the Power BI Dashboard (PDF)](oladashboard.pdf)

## 🙋‍♀️ Author

**Sakshi Chavan**  
📫 [sakshichavan290@gmail.com](mailto:sakshichavan290@gmail.com)  
🌐 [GitHub](https://github.com/sakshichavan290)

---

⭐ If you found this project helpful, don’t forget to **star** the repository!
