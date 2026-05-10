# AtliQ Hardware — End-to-End ETL Pipeline SQL → Power BI Reporting

> **MySQL → Power Query → Star Schema → Power BI Service · Full pipeline**  
> 148,000 transactions · 5 tables · 15 markets · 3-page dashboard · 6-part YouTube series

🇫🇷 [Version française disponible ici](README_FR.md)

---

## Project Context

**Company:** AtliQ Hardware — computer hardware manufacturer & distributor (fictional dataset)  
**Scope:** Sales analysis 2017–2020 · 15 cities in India · 38 clients · 279 products  
**Goal:** Demonstrate full BI cycle mastery: from SQL extraction to production deployment  
**Deliverables:** 3-page dashboard + 6-part video tutorial series documenting every step

---

## Business Problem

AtliQ Hardware's management had no consolidated visibility on commercial performance:
revenue, margins, and market-level results were scattered across Excel files with
no structured analysis.

**Questions the dashboard answers:**
- Which markets and clients generate actual profit — not just revenue?
- Where is the margin negative?
- What is the client concentration risk exposure?

---

## Business Insights Extracted

| Insight | Detail |
|---|---|
| Critical concentration | **1 client = 42% of total revenue** (₹413M out of ₹985M) — major business risk |
| Low margin | Average margin of **2.5%** — industry target: 5–10% |
| Loss-making products | Several products show **negative margin** |
| Geographic dominance | North Zone represents **65% of total revenue** — regional dependency |
| Seasonal peak | Sales volumes consistently spike in **June–July** |
| 2020 growth | **+15% vs 2019** despite market conditions |

---

## ETL Pipeline — MySQL to Power BI

```
[MySQL Database]
    ↓ Native Power BI connector / CSV export
[Power Query]
    ↓ Cleaning · Currency normalization (INR/USD) · Calculated columns
[Power BI Star Schema]
    ↓ Modeling · Relationships · DAX measures
[3-Page Dashboard]
    ↓ Published
[Power BI Service]
    → Live online report
```

### Data Model — Star Schema

| Table | Type | Content |
|---|---|---|
| `transactions` | Fact | 148,000 rows · sales · quantities · amounts · currencies |
| `customers` | Dimension | 38 clients · type (Brick & Mortar / E-Commerce) |
| `markets` | Dimension | 15 cities · 3 geographic zones (North / South / Central) |
| `products` | Dimension | 279 products · types |
| `date` | Dimension | 2017–2020 calendar · year · month · short format |

---

## Dashboard — 3 Pages

### Page 1 — Key Insights
![Key Insights](PARTIE%205/Page1_KeyInsights.png)
Global KPIs (Revenue ₹985M · Profit ₹24.7M · Margin 2.5% · Volume 2M units) · Revenue trends · Top 5 products & clients · Profit distribution by market · Revenue/profit matrix

### Page 2 — Profit Analysis
![Profit Analysis](PARTIE%205/Page2_ProfitAnalysis.png)
Margin trend · Profit by geographic zone · Product profitability ranking with conditional formatting

### Page 3 — Performance Insights
![Performance Insights](PARTIE%205/Page3_PerformanceInsights.png)
Volume by market · Monthly revenue trend · Top 5 clients (treemap) · Year over Year performance matrix

---

## YouTube Tutorial Series — 6 Parts

Every step of the project is documented on video:

| # | Step | Duration | Link |
|---|---|---|---|
| 1 | MySQL Workbench setup + database import | 5 min | [Watch](https://youtu.be/Dc6L-yYpQns) |
| 2 | SQL exploratory analysis — 148K transactions | 22 min | [Watch](https://youtu.be/HOA5HyNr-gw) |
| 3 | Power BI: MySQL import + ETL (2 methods) | 22 min | [Watch](https://youtu.be/mf8Tq-DVCGk) |
| 4 | Star Schema + relationships + DAX measures | 17 min | [Watch](https://youtu.be/R-hUzsPNkSE) |
| 5 | Full 3-page dashboard + navigation | 1h03 | [Watch](https://youtu.be/UyaWq6GYT14) |
| 6 | Power BI Service publication + sharing | 22 min | [Watch](https://youtu.be/ST5vT_mIycs?si=VkxF3eiJJjMKvcPT)|

🎬 [Full Playlist](https://www.youtube.com/playlist?list=PLQko_hl3lfZFX_OlkWrH6JD77iSRBspQj)

---

## Tech Stack

- **MySQL 8.0** — database storage and SQL exploratory analysis
- **Power BI Desktop + Power BI Service** — modeling, dashboard, production deployment
- **Power Query / M** — ETL pipeline, cleaning, currency normalization
- **DAX** — calculated measures (revenue, profit, margin, YoY)

---

## Quick Start

```bash
# 1. Clone the repository
git clone https://github.com/bouba02/Analyse-des-Ventes-avec-SQL-Projet-Power-BI-Complet-AtliQ-Hardware-.git

# 2. Import MySQL database
# MySQL Workbench → File → Run SQL Script → db_dump_version_2_main.sql

# 3. Open the dashboard
# PARTIE 5/Sales_Insights_Dashboard_Final.pbix
# (No MySQL? Import CSV files from PARTIE 3/DATA/ instead)
```

---

## Repository Structure

```
AtliQ-Hardware/
├── README.md
├── README_FR.md
├── db_dump_version_2_main.sql
├── analyse_exploratoire.sql
├── PARTIE 3 - Import Power BI/
│   ├── DATA/ (customers · date · markets · products · transactions .csv)
│   ├── atliq.pbix
│   └── Guide_Import_MySQL_PowerBI.pdf
├── PARTIE 4 - Star Schema/
│   ├── atliq.pbix
│   └── Schema_Relations.png
├── PARTIE 5 - Dashboard/
│   ├── Sales_Insights_Dashboard_Final.pbix
│   ├── Page1_KeyInsights.png
│   ├── Page2_ProfitAnalysis.png
│   └── Page3_PerformanceInsights.png
└── PARTIE 6 - Publication/
    └── Guide_Publication_Power_BI_Service.pdf
```

---

## Author

**Boubacar Nikiema** — Data Analyst & BI Consultant

Specialized in financial dashboards, sales & supply chain analytics and ETL pipelines
using Power BI, SQL, Python and Excel. Based in Morocco, working with clients across
Africa and French-speaking Europe.

[![LinkedIn](https://img.shields.io/badge/LinkedIn-boubacar--nikiema-blue?logo=linkedin)](https://linkedin.com/in/boubacar-nikiema)
[![YouTube](https://img.shields.io/badge/YouTube-BoubacarDataAnalyst-red?logo=youtube)](https://youtube.com/@BoubacarDataAnalyst)
[![Email](https://img.shields.io/badge/Email-nikiemaboubacar%40gmail.com-gray?logo=gmail)](mailto:nikiemaboubacar@gmail.com)
[![Portfolio](https://img.shields.io/badge/Portfolio-data.ngroupmediadigital.com-green)](https://data.ngroupmediadigital.com)

---

*Fictional dataset — AtliQ Hardware is a simulated company created for educational purposes · Code: MIT License*
