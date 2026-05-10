# AtliQ Hardware — Pipeline ETL SQL → Reporting BI End-to-End | Power BI

> **MySQL → Power Query → Star Schema → Power BI Service · Pipeline complet**  
> 148 000 transactions · 5 tables · 15 marchés · 3 pages · Série YouTube 6 parties

🇬🇧 [English version available here](README.md)

---

## Contexte du Projet

**Entreprise :** AtliQ Hardware — fabricant et distributeur de matériel informatique (données fictives)  
**Périmètre :** Analyse des ventes 2017–2020 · 15 villes en Inde · 38 clients · 279 produits  
**Objectif :** Démontrer la maîtrise complète du cycle BI : de l'extraction SQL à la publication en production  
**Livrables :** Dashboard 3 pages + série de 6 tutoriels vidéo documentant chaque étape

---

## Problème Business

La direction d'AtliQ Hardware n'avait aucune visibilité consolidée sur ses performances
commerciales : revenus, marges, et performances par marché et par client étaient
éparpillés dans des fichiers Excel sans analyse structurée.

**Questions auxquelles le dashboard répond :**
- Quels marchés et clients génèrent réellement du profit — pas seulement du chiffre ?
- Où la marge est-elle négative ?
- Quelle est l'exposition au risque de concentration client ?

---

## Insights Business Extraits

| Insight | Détail |
|---|---|
| Concentration critique | **1 client = 42% du CA total** (₹413M sur ₹985M) — risque business majeur |
| Marge faible | Marge moyenne de **2,5%** — objectif secteur : 5–10% |
| Produits déficitaires | Plusieurs produits affichent une **marge négative** |
| Dominance géographique | La zone Nord représente **65% des revenus** — dépendance régionale |
| Pic saisonnier | Volumes en hausse en **juin–juillet** chaque année |
| Croissance 2020 | **+15% vs 2019** malgré la conjoncture |

---

## Pipeline ETL — MySQL vers Power BI

```
[Base MySQL]
    ↓ Extraction via connecteur natif Power BI / CSV
[Power Query]
    ↓ Nettoyage · Normalisation devises (INR/USD) · Colonnes calculées
[Star Schema Power BI]
    ↓ Modélisation · Relations · Mesures DAX
[Dashboard 3 pages]
    ↓ Publication
[Power BI Service]
    → Rapport en ligne accessible
```

### Modèle de Données — Star Schema

| Table | Type | Contenu |
|---|---|---|
| `transactions` | Faits | 148 000 lignes · ventes · quantités · montants · devises |
| `customers` | Dimension | 38 clients · type (Brick & Mortar / E-Commerce) |
| `markets` | Dimension | 15 villes · 3 zones géographiques (North / South / Central) |
| `products` | Dimension | 279 produits · types |
| `date` | Dimension | Calendrier 2017–2020 · year · month · format court |

---

## Dashboard — 3 Pages

### Page 1 — Key Insights
![Key Insights](PARTIE%205/Page1_KeyInsights.png)
KPIs globaux (Revenue ₹985M · Profit ₹24,7M · Marge 2,5% · Volume 2M unités) · Revenue trends · Top 5 produits & clients · Distribution profit par marché · Matrice revenus/profit

### Page 2 — Profit Analysis
![Profit Analysis](PARTIE%205/Page2_ProfitAnalysis.png)
Évolution marge · Profit par zone géographique · Classement rentabilité produits avec mise en forme conditionnelle

### Page 3 — Performance Insights
![Performance Insights](PARTIE%205/Page3_PerformanceInsights.png)
Volumes par marché · Tendance mensuelle · Top 5 clients (treemap) · Performance Year over Year

---

## Série YouTube — 6 Tutoriels

Chaque étape du projet est documentée en vidéo :

| # | Étape | Durée | Lien |
|---|---|---|---|
| 1 | Installation MySQL Workbench + Import base de données | 5 min | [Regarder](https://youtu.be/Dc6L-yYpQns) |
| 2 | Analyse exploratoire SQL — 148K transactions | 22 min | [Regarder](https://youtu.be/HOA5HyNr-gw) |
| 3 | Power BI : Import MySQL + ETL (2 méthodes) | 22 min | [Regarder](https://youtu.be/mf8Tq-DVCGk) |
| 4 | Star Schema + Relations + Mesures DAX | 17 min | [Regarder](https://youtu.be/R-hUzsPNkSE) |
| 5 | Dashboard complet 3 pages + navigation | 1h03 | [Regarder](https://youtu.be/UyaWq6GYT14) |
| 6 | Publication Power BI Service + partage | 22 min | [Regarder](https://youtu.be/ST5vT_mIycs?si=VkxF3eiJJjMKvcPT) |

🎬 [Playlist complète](https://www.youtube.com/playlist?list=PLQko_hl3lfZFX_OlkWrH6JD77iSRBspQj)

---

## Stack Technique

- **MySQL 8.0** — stockage et analyse exploratoire SQL
- **Power BI Desktop + Power BI Service** — modélisation, dashboard, publication
- **Power Query / M** — pipeline ETL, nettoyage, normalisation devises
- **DAX** — mesures calculées (revenus, profit, marge, YoY)

---

## Installation Rapide

```bash
# 1. Cloner le repository
git clone https://github.com/bouba02/Analyse-des-Ventes-avec-SQL-Projet-Power-BI-Complet-AtliQ-Hardware-.git

# 2. Importer la base MySQL
# MySQL Workbench → Fichier → Run SQL Script → db_dump_version_2_main.sql

# 3. Ouvrir le dashboard
# PARTIE 5/Sales_Insights_Dashboard_Final.pbix
# (Alternative sans MySQL : importer les CSV du dossier PARTIE 3/DATA/)
```

---

## Structure du Repository

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

## Auteur

**Boubacar Nikiema** — Data Analyst & Consultant BI

Spécialisé en dashboards financiers, analytics Sales & Supply Chain et pipelines ETL
avec Power BI, SQL, Python et Excel. Basé au Maroc, j'interviens auprès d'entreprises
en Afrique et en Europe francophone.

[![LinkedIn](https://img.shields.io/badge/LinkedIn-boubacar--nikiema-blue?logo=linkedin)](https://linkedin.com/in/boubacar-nikiema)
[![YouTube](https://img.shields.io/badge/YouTube-BoubacarDataAnalyst-red?logo=youtube)](https://youtube.com/@BoubacarDataAnalyst)
[![Email](https://img.shields.io/badge/Email-nikiemaboubacar%40gmail.com-gray?logo=gmail)](mailto:nikiemaboubacar@gmail.com)
[![Portfolio](https://img.shields.io/badge/Portfolio-data.ngroupmediadigital.com-green)](https://data.ngroupmediadigital.com)

---

*Données fictives — AtliQ Hardware est une entreprise simulée créée à des fins pédagogiques · Code : MIT License*
