
<p align="center">
  <img src="images/banner_for_ola.png" alt="OLA Ride Booking Analysis Banner" width="100%">
</p>

# 🚖 Ola Ride Booking Analysis Dashboard | SQL + Power BI

## 📖 Project Overview

This project analyzes **49.99K ride bookings** using **MySQL** and **Power BI** to uncover insights related to booking performance, revenue generation, customer behavior, vehicle utilization, cancellations, and service quality.

The objective is to transform raw booking data into actionable business insights through data cleaning, SQL analysis, and interactive dashboarding.

---

## 🎯 Business Problem

Ride-hailing platforms generate large volumes of operational data daily. Without proper analysis, it becomes difficult to:

* Monitor booking performance
* Track revenue trends
* Understand cancellation patterns
* Evaluate vehicle category utilization
* Measure customer satisfaction

This dashboard provides a centralized view of key business metrics to support data-driven decision-making.

---

## Dashboard Preview

![OLA Dashboard](screenshots/Overall.png)
## 📌 Dashboard Pages

* Overall Performance
* Vehicle Type Analysis
* Revenue Analysis
* Cancellation Analysis
* Ratings Analysis

---

## 📊 Key Project Metrics

| KPI                    | Value   |
| ---------------------- | ------- |
| Total Bookings         | 49.99K  |
| Total Booking Value    | ₹34.27M |
| Successful Bookings    | 33.48K  |
| Cancellation Rate      | 26.82%  |
| Top 5 Customer Revenue | ₹21.07K |
| Average Ratings        | 4.0 / 5 |

---

## 📈 Key Insights

### Booking Performance

* Successfully completed rides accounted for **66.97%** of all bookings.
* Daily ride volume remained stable at approximately **1.6K–1.8K rides per day**.

### Vehicle Performance

* **Bike** generated the highest booking value at approximately **₹4.96M** each.
* Average ride distance remained consistent across vehicle categories at approximately **25 km**.

### Revenue Analysis

* Total booking revenue reached **₹34.27M**.
* The highest spending customer generated **₹5,078** in booking value.
* Top 5 customers contributed **₹21,072** in revenue.

### Cancellation Analysis

* Approximately **13.41K rides** were cancelled.
* Overall cancellation rate reached **26.832%**.
* The leading customer cancellation reason was **Driver not moving toward pickup location** and **AC not working**
* The leading driver cancellation reason was **More than permitted passengers**.

### Customer Experience

* Customer and driver ratings remained highly consistent across all vehicle categories.
* Average ratings were maintained at approximately **4.0/5**, indicating strong service quality.

---

## 📂 Repository Structure

```text
OLA-booking-analysis/
│
├── README.md
├── LICENSE
│
├── images/
│   └── banner.png
│
├── dataset/
│   └── ola_bookings.csv
│
├── dashboard/
│   ├── OLA_project.pbix
│   └── OLA_Bookings.pdf
│
├── screenshots/
│   ├── Overall.png
│   ├── Revenue.png
│   ├── Cancellation.png
│   ├── Vehicle_type.png
│   └── ratings.png
│
├── insights/
│   ├── insights_cancellation.md
│   ├── insights_revenue.md
│   ├── insights_cancellation.md
│   ├── insights_vehicle_type.md
│   └── insights_ratings.md
│
└── scripts/
    ├──init_database.sql
    ├── data_cleaning.sql
    ├── business_questions_analysis.sql
    └── testing_views.sql

```
---
## 💻Technologies & 🛠️ Concepts Used
[![MySQL](https://img.shields.io/badge/MySQL-4479A1?style=for-the-badge&logo=mysql&logoColor=white)](https://www.mysql.com/)
[![Power BI](https://img.shields.io/badge/Power_BI-F2C811?style=for-the-badge&logo=powerbi&logoColor=black)](https://powerbi.microsoft.com/)
[![DAX](https://img.shields.io/badge/DAX-0F6CBD?style=for-the-badge&logo=microsoft&logoColor=white)](https://learn.microsoft.com/en-us/dax/)
[![Power Query](https://img.shields.io/badge/Power_Query-217346?style=for-the-badge&logo=microsoft-excel&logoColor=white)](https://learn.microsoft.com/en-us/power-query/)

---

## 🌱 About Me✨

Hi there! I'm **Shraddha Bisht**. 
Thanks for checking out this project! I'm passionate about Data Analytics, SQL, Power BI, and Data Engineering, and I regularly build projects to strengthen my skills and explore real-world data challenges.

### ☕ Stay Connected
Let's stay in touch!
If you found this project useful, feel free to connect with me on LinkedIn.
[![LinkedIn](https://img.shields.io/badge/LinkedIn-0077B5?style=for-the-badge&logo=linkedin&logoColor=white)](https://linkedin.com/in/shraddha-bisht)
