# Data Warehouse and Analytics Project

Building a modern data warehouse with SQL Server, including ETL processes, data modeling, and analytics.

---

## 🏛️ Data Architecture

This project implements the **Medallion Architecture**, a layered approach to organizing data in a data lake or warehouse. The architecture is divided into three main layers:

- **Bronze Layer**: Raw, unprocessed data ingested from various sources.
- **Silver Layer**: Cleaned and transformed data, optimized for analytics and reporting.
- **Gold Layer**: Aggregated, business-level data ready for advanced analytics and machine learning.

This structure ensures data quality, scalability, and efficient data processing.

> ![Medallion Architecture Diagram](docs/Data%20Architecture.jpg)
> *(Medallion Architecture as implemented in this project)*

---

## 📊 Project Overview

This repository demonstrates the end-to-end process of building a modern data warehouse using SQL Server. Key features include:

- **ETL Processes**: Extraction, extraction, transformation, and loading of data from multiple sources.
- **Data Modeling**: Implementation of star and snowflake schemas for optimized querying.
- **Analytics**: Creation of dashboards and reports to deliver actionable business insights.
- **Scalability**: Designed to handle large volumes of data efficiently.

The project is suitable for organizations seeking to modernize their data infrastructure and leverage advanced analytics.

---
## 📈 Power BI Dashboards
Interactive dashboards built on the Gold layer provide business intelligence across key operational areas:
- **Customer Performance, Health, and Segmentation**: Tracks customer metrics, lifecycle stages, and behavioral patterns to identify high-value segments and retention opportunities.
- **Product Performance & Profitability**: Analyzes product-level sales, margins, and trends to optimize inventory and pricing strategies.
- **Business Health & Trends**: Monitors overall business KPIs, revenue patterns, and growth indicators for strategic decision-making.
---

## 📝 Project Requirements

To run and develop this project, you will need:

- **SQL Server 2019 or later**
- **SQL Server Management Studio (SSMS)**
- **.NET 6.0 SDK** (for ETL orchestration scripts)
- **Sample Data Sources** (CSV, JSON, or other formats)
- **Windows 10/11** (recommended for local development)
- **Optional**: Docker (for containerized SQL Server instances)

### Setup Instructions

1. Clone the repository:
2. Configure your SQL Server instance and update connection strings as needed.
3. Load sample data into the Bronze layer.
4. Run ETL scripts to populate Silver and Gold layers.
5. Explore analytics dashboards and reports.
   
---
## 📂 Repository Structure
```
data-warehouse-project/
│
├── datasets/                           # Raw datasets used for the project (ERP and CRM data)
│
├── docs/                               # Project documentation and architecture details
│   ├── Data Architecture.drawio        # Draw.io file shows the project's architecture
│   ├── data_catalog.md                 # Catalog of datasets, including field descriptions and metadata
│   ├── Data Flow Diagram.drawio        # Draw.io file for the data flow diagram
│   ├── Data Model.drawio               # Draw.io file for data models (star schema)
│   ├── Data Integration Model.drawio   # Draw.io file for data integration models (how tables are related)
│
├── powerbi/                            # Power BI reports and documentation
│   ├── Power BI Study.pbix             # Power BI report file with interactive dashboards and visualizations
│   ├── Power BI Study.pdf              # PDF documentation of Power BI report design and insights
│
├── scripts/                            # SQL scripts for ETL and transformations
│   ├── bronze/                         # Scripts for extracting and loading raw data
│   ├── silver/                         # Scripts for cleaning and transforming data
│   ├── gold/                           # Scripts for creating analytical models
│
├── tests/                              # Test scripts and quality files
│
├── README.md                           # Project overview and instructions
├── LICENSE                             # License information for the repository
└── .gitignore                          # Files and directories to be ignored by Git
```
---
## 📜 License

This project is licensed under the MIT License.  
You are free to use, modify, and distribute this software in both private and commercial projects, provided that the original copyright and license notice are included.

See the `LICENSE` file for full details.

---
