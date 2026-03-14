# Business Intelligence & KPI Reporting System

A centralized, real-time analytics dashboard system built to replace scattered, manually updated Excel spreadsheets. It serves as a "Single Source of Truth" (SSOT) for the management and marketing teams.

## 🎯 The Business Problem
Before implementation, business reporting relied heavily on manual data extraction:
* **Data Silos:** Information was scattered across different platforms, databases, and local files.
* **Delayed Insights:** Generating weekly reports took hours of manual work, meaning management was always looking at historical, not current, data.
* **Lack of Trust:** Multiple versions of the same Excel file led to conflicting numbers and a lack of trust in the data.

## 💡 The Solution
This project introduces a centralized Business Intelligence layer using **Metabase** connected to a **PostgreSQL** data warehouse.

### Key Features:
* **Real-Time Dashboards:** Interactive visual reports for marketing ROI, sales trends, and operational bottlenecks.
* **Automated Alerts:** Slack and email notifications triggered automatically when critical KPIs drop below defined thresholds.
* **Optimized SQL Views:** Complex business logic and data aggregation are handled at the database level via materialized views, ensuring fast dashboard load times.
* **Self-Service Analytics:** Empowering non-technical team members to filter and explore data without writing SQL or asking developers for help.

## 🛠️ Tech Stack
* **BI Tool:** Metabase
* **Database:** PostgreSQL
* **Query Language:** Advanced SQL (CTEs, Window Functions, Materialized Views)

---
*Note: This repository outlines the architectural setup and SQL logic structures. Actual business data, database credentials, and proprietary queries have been omitted to comply with NDA and security standards.*

👉 **Sanitized, structural examples of the database logic (SQL) and infrastructure (Docker) are provided in the `sql/` and `docker/` directories.**
