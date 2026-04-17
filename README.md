# 🚚 Logistics Vendor Performance & Cost Optimization Analysis

## 📌 Project Overview
This project focuses on analyzing logistics operational efficiency and optimizing vendor costs. Originally started with **Python** for Exploratory Data Analysis (EDA) and **Power BI** for interactive reporting, I have recently expanded this project to include **SQL Database Modeling** to simulate a real-world production environment and ensure data scalability.

## 🛠️ Tech Stack
* **Database & Modeling:** SQL (MySQL), MySQL Workbench (EER Diagram)
* **Data Analysis:** Python (Pandas, Scipy, Seaborn)
* **Data Visualization:** Power BI Desktop

## 🏗️ Data Architecture & Modeling
To move beyond flat files and ensure query efficiency, I transformed the dataset into a **Star Schema** design. This structure allows for more flexible reporting and reflects how data is actually managed in a professional data warehouse.

* **Fact Table:** `fact_orders` (Centralized metrics and transactional data)
* **Dimension Tables:** `dim_products`, `dim_vendor`, `dim_delivery_service`, and `dim_geography`.

<img width="861" height="601" alt="eer_diagram_logistik" src="https://github.com/user-attachments/assets/917f4fdd-f06b-4959-bca4-14328335625b" />

## 🔍 Key Findings & Insights
Through rigorous EDA and Dashboard analysis, I identified several critical insights:
1. **The Main Cost Driver:** Distance (`distance_km`) is the most consistent linear predictor for total shipping costs.
2. **The "Ultra Heavy" Anomaly:** I discovered a significant spike in `cost_per_kg` within the **Ultra Heavy** segment, indicating cost inefficiencies for large loads that require vendor re-negotiation.
3. **The Price-Quality Myth:** Statistical testing proved that paying a premium rate does NOT guarantee better on-time delivery or higher customer ratings. 🚩
4. **Energy Potential:** Electric Vehicles (EV) show a promising potential for reducing operational costs compared to traditional fossil-fuel vehicles.

## 📊 Dashboard Preview

**Operational Overview**
<img width="1365" height="719" alt="Operational Overview" src="https://github.com/user-attachments/assets/e8bc2357-e385-4573-8a7d-27f92bfe0efe" />

**Deep Analysis**
<img width="1365" height="720" alt="Deep Analysis" src="https://github.com/user-attachments/assets/bd3256da-4480-42d8-b436-1acc256487f7" />

## 📁 Repository Structure
* `sql_scripts/`: SQL queries for database schema creation and hypothesis testing.
* `notebooks/`: Jupyter Notebook containing data cleaning and statistical analysis.
* `visuals/`: EER Diagram and high-resolution dashboard screenshots.
* `reports/`: The Power BI `.pbix` file.

## 🚀 How to Use
1. Clone this repository.
2. Explore the `sql_scripts/` to see how the database was structured and queried.
3. Check the `notebooks/` folder to see the data cleaning and correlation logic.
4. Open the `.pbix` file in Power BI Desktop for the full interactive experience.

---
**Developed by [Muhammad Aldi Priaga]**
*Connect with me on [www.linkedin.com/in/muhammad-aldi-priaga-269aa9179]*
