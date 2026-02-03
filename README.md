# 📊 Projet Power BI Complet : Analyse des Ventes AtliQ Hardware

![Power BI](https://img.shields.io/badge/Power%20BI-F2C811?style=for-the-badge&logo=powerbi&logoColor=black)
![MySQL](https://img.shields.io/badge/MySQL-4479A1?style=for-the-badge&logo=mysql&logoColor=white)
![Status](https://img.shields.io/badge/Status-Complet-success?style=for-the-badge)
![License](https://img.shields.io/badge/License-MIT-blue?style=for-the-badge)

> **Dashboard interactif Power BI de bout en bout** : De l'installation MySQL à la publication en ligne, un projet complet d'analyse de 148,000 transactions commerciales.

---

## 🎯 À Propos du Projet

Ce repository contient un **projet Power BI professionnel complet** développé de A à Z pour analyser les ventes de l'entreprise fictive **AtliQ Hardware**. 

Le projet couvre l'intégralité du cycle de vie d'un projet Business Intelligence :
- 📥 **Import** de données depuis MySQL
- 🧹 **Nettoyage** et transformation (ETL) avec Power Query
- 🔗 **Modélisation** Star Schema avec relations optimisées
- 📊 **Visualisation** dashboard 3 pages interactif
- ☁️ **Publication** Power BI Service en ligne

### 📈 Résultat Final

Un dashboard professionnel de 3 pages avec :
- **15+ visualisations** interactives
- **Navigation fluide** entre les pages
- **Filtres synchronisés** multi-pages
- **Métriques clés** : Revenus (₹985M), Profit (₹24.7M), Marge (2.5%)

---

## 🎥 Tutoriel Vidéo Complet (6 Parties)

Ce projet est accompagné d'une **série de tutoriels vidéo gratuits** sur YouTube :

| Partie | Titre | Durée | Lien |
|--------|-------|-------|------|
| 1️⃣ | Installation MySQL Workbench + Import Base de Données | 05 min | [▶️ Regarder](https://youtu.be/Dc6L-yYpQns) |
| 2️⃣ | Analyse Exploratoire SQL : 148K Transactions | 22 min | [▶️ Regarder](https://youtu.be/HOA5HyNr-gw) |
| 3️⃣ | Power BI : Import MySQL + ETL (2 Méthodes) | 22 min | [▶️ Regarder](https://youtu.be/mf8Tq-DVCGk) |
| 4️⃣ | Star Schema + Relations + Mesures DAX | 17 min | [▶️ Regarder](https://youtu.be/R-hUzsPNkSE) |
| 5️⃣ | Dashboard Complet 3 Pages + Navigation | 1h03 | [▶️ Regarder](https://youtu.be/UyaWq6GYT14) |
| 6️⃣ | Publication Power BI Service + Partage | 22 min | [▶️ Regarder](LIEN_PARTIE_6) |

🔗 **[Playlist Complète](https://www.youtube.com/playlist?list=PLQko_hl3lfZFX_OlkWrH6JD77iSRBspQj)**

---

## 📂 Structure du Repository

```
📦 Analyse-des-Ventes-avec-SQL-Projet-Power-BI-Complet-AtliQ-Hardware
├── 📁 README.md
│── 📄 db_dump_version_2_main.sql (Base de données complète)
│── 📄 Resume_insight.pdf
│── 📄 analyse_exploratoire.sql
│
├── 📁 PARTIE 3 - Import Power BI
│   ├── 📄 DATA/customers.csv
│   ├── 📄 DATA/date.csv
│   ├── 📄 DATA/markets.csv
│   ├── 📄 DATA/products.csv
│   ├── 📄 DATA/transactions.csv
│   ├── 📄 Guide_Import_MySQL_PowerBI.pdf
│   ├── 📄 atliq.pbix
│   ├── 📄 Screen_StarShema.png
│   └── 📄 README.md
│
├── 📁 PARTIE 4 - Star Schema
│   ├── 📄 atliq.pbix
│   ├── 📄 Schema_Relations.png
│   ├── 📄 DATA/customers.csv
│   ├── 📄 DATA/date.csv
│   ├── 📄 DATA/markets.csv
│   ├── 📄 DATA/products.csv
│   ├── 📄 DATA/transactions.csv
│   └── 📄 README.md
│
├── 📁 PARTIE 5 - Dashboard
│   ├── 📄 Sales_Insights_Dashboard_Final.pbix
│   ├── 📊 Screenshots/
│   │   ├── Page1_KeyInsights.png
│   │   ├── Page2_ProfitAnalysis.png
│   │   └── Page3_PerformanceInsights.png
│   ├── 📄 Sales Insights_Dashboard Altiq_Final.pdf
│   └── 📄 README.md
│
├── 📁 PARTIE 6 - Publication
│   ├── 📄 Guide_PowerBI_Service.pdf
│   ├── 📄 Configuration_Actualisation.md
│   └── 📄 README.md
│
├── 📄 LICENSE
└── 📄 README.md (ce fichier)
```

---

## 💾 Dataset : AtliQ Hardware

### 📊 Vue d'ensemble

- **Entreprise** : AtliQ Hardware 
- **Secteur** : Vente de matériel informatique
- **Période** : 2017-2020
- **Transactions** : 148,000 lignes
- **Marchés** : 15 villes en Inde
- **Devises** : INR (Roupies indiennes) et USD

### 🗂️ Structure de la Base de Données (5 Tables)

#### 1. **transactions** (Table de faits)
- `product_code` : Code produit
- `customer_code` : Code client
- `market_code` : Code marché
- `order_date` : Date commande
- `sales_qty` : Quantité vendue
- `sales_amount` : Montant (INR ou USD)
- `currency` : Devise (INR/USD)

#### 2. **customers** (Dimension)
- `customer_code` : Identifiant client
- `customer_name` : Nom client
- `customer_type` : Type (Brick & Mortar, E-Commerce)

#### 3. **markets** (Dimension)
- `market_code` : Identifiant marché
- `market_name` : Nom ville
- `zone` : Zone géographique (North, South, Central)

#### 4. **products** (Dimension)
- `product_code` : Identifiant produit
- `product_type` : Type produit

#### 5. **date** (Dimension)
- `date` : Date
- `cy_date` : Date calendrier
- `year` : Année
- `month_name` : Nom mois
- `date_yy_mmm` : Format court

### 📈 Métriques Clés

| Métrique | Valeur |
|----------|--------|
| **Revenus Totaux** | ₹984.87M |
| **Profit Total** | ₹24.7M |
| **Marge Profit Moyenne** | 2.5% |
| **Quantité Vendue** | 2M unités |
| **Nombre Clients** | 38 |
| **Nombre Produits** | 279 |

---

## 🛠️ Technologies Utilisées

| Technologie | Usage | Niveau |
|-------------|-------|--------|
| **MySQL 8.0** | Stockage et requêtes SQL | ⭐⭐⭐ |
| **MySQL Workbench** | Interface administration base | ⭐⭐⭐ |
| **Power BI Desktop** | Modélisation et visualisation | ⭐⭐⭐⭐⭐ |
| **Power Query (M)** | ETL et transformation données | ⭐⭐⭐⭐ |
| **DAX** | Mesures calculées | ⭐⭐⭐ |
| **Power BI Service** | Publication en ligne | ⭐⭐⭐ |

---

## 🎓 Compétences Démontrées

### 📊 Business Intelligence
- ✅ Analyse exploratoire de données
- ✅ Modélisation Star Schema
- ✅ Design de dashboards interactifs
- ✅ KPIs et métriques business

### 🔧 Techniques
- ✅ Extraction SQL (SELECT, JOIN, GROUP BY, ORDER BY)
- ✅ ETL avec Power Query (nettoyage, transformation)
- ✅ Création relations Many-to-One
- ✅ Mesures DAX (SUM, CALCULATE, DIVIDE)
- ✅ Filtres et slicers synchronisés
- ✅ Navigation multi-pages (bookmarks)
- ✅ Mise en forme conditionnelle

### 💼 Professionnalisme
- ✅ Documentation complète (README, PDF)
- ✅ Code commenté et structuré
- ✅ Design cohérent et épuré
- ✅ Bonnes pratiques BI

---

## 📊 Aperçu du Dashboard

### Page 1 : Key Insights
![Page 1 - Key Insights](PARTIE%205/Page1_KeyInsights.png)

**Contenu :**
- 4 Cartes KPI (Revenue, Profit, Sales Qty, Profit Margin %)
- Revenue Trends (graphique barres + ligne)
- Top 5 Products & Top 5 Customers
- Profit Distribution by Market (donut)
- Matrice Revenue/Profit par marché
- Slicers Year + Month

---

### Page 2 : Profit Analysis
![Page 2 - Profit Analysis](PARTIE%205/Page2_ProfitAnalysis.png)

**Contenu :**
- 3 Cartes KPI Profit
- Profit Margin Evolution (ligne)
- Profit by Geographic Zone (barres)
- Products Profitability Ranking (table + mise en forme conditionnelle)

---

### Page 3 : Performance Insights
![Page 3 - Performance Insights](PARTIE%205/Page3_PerformanceInsights.png)

**Contenu :**
- 4 Cartes KPI Performance
- Sales Qty by Market (barres)
- Monthly Revenue Trend (ligne)
- Top 5 Customers (treemap)
- Year over Year Performance (matrice)

---

## 🚀 Installation & Utilisation

### Prérequis

- **Windows 10/11, Mac OS, ou Linux**
- **MySQL 8.0+** ([Télécharger](https://dev.mysql.com/downloads/mysql/))
- **MySQL Workbench** ([Télécharger](https://dev.mysql.com/downloads/workbench/))
- **Power BI Desktop** ([Télécharger](https://powerbi.microsoft.com/desktop/))

### Étape 1 : Installation Base de Données

```bash
# 1. Cloner le repository
git clone https://github.com/bouba02/Analyse-des-Ventes-avec-SQL-Projet-Power-BI-Complet-AtliQ-Hardware-.git

# 2. Importer la base dans MySQL Workbench
# Fichier → Run SQL Script → Sélectionner "PARTIE 1/db_dump.sql"
```

### Étape 2 : Ouvrir le Dashboard Power BI

```bash
# Option A : Ouvrir le fichier final complet
PARTIE 5/Sales_Insights_Dashboard_Final.pbix

# Option B : Importer depuis MySQL (Windows x64 uniquement)
# Suivre le guide : PARTIE 3/Guide_Import_MySQL_PowerBI.pdf

# Option C : Importer depuis CSV (Mac/Linux/Windows ARM)
# Fichiers CSV disponibles dans : PARTIE 3/*.csv
```

### Étape 3 : Actualiser les Données

1. Ouvrir le fichier `.pbix` dans Power BI Desktop
2. Cliquer sur **Accueil** → **Actualiser**
3. Si connexion MySQL : Vérifier que le serveur MySQL est démarré
4. Si fichiers CSV : Mettre à jour les chemins si nécessaire

---

## 📖 Guides Détaillés

Chaque partie du projet contient un README détaillé :

- 📄 [PARTIE 3 - Import Power BI](PARTIE%203/README.md)
- 📄 [PARTIE 4 - Star Schema](PARTIE%204/README.md)
- 📄 [PARTIE 5 - Dashboard](PARTIE%205/README.md)
- 📄 [PARTIE 6 - Publication](PARTIE%206/README.md)

---

## 🔍 Insights Business Découverts

### 💰 Performance Globale
- **Revenus totaux** : ₹984.87M 
- **Profit total** : ₹24.7M
- **Marge profit moyenne** : 2.5% (faible → opportunités amélioration)

### 🏆 Top Performers
- **Meilleur client** : Electricalsar Stores (₹413M - 42% revenus)
- **Meilleur produit** : Prod040 (16,1K unités vendues)
- **Meilleur marché** : Delhi NCR (₹520M revenus totaux)

### 📉 Points d'Attention
- **Marge profit faible** : 2.5% (objectif industrie : 5-10%)
- **Concentration risque** : 1 client = 42% revenus
- **Produits négatifs** : Certains produits en perte (marge < 0%)

### 📊 Tendances
- **Croissance 2020** : +15% vs 2019
- **Saisonnalité** : Pic ventes en juin-juillet
- **Zone géographique** : North Zone domine (65% revenus)

---

## 🤝 Contribution

Les contributions sont les bienvenues ! Si vous souhaitez améliorer ce projet :

1. **Fork** le repository
2. Créez une **branche** pour votre fonctionnalité (`git checkout -b feature/AmeliorationDashboard`)
3. **Commit** vos changements (`git commit -m 'Ajout nouvelle page dashboard'`)
4. **Push** vers la branche (`git push origin feature/AmeliorationDashboard`)
5. Ouvrez une **Pull Request**

### Idées de Contributions

- 🌍 Traduire le dashboard en anglais
- 📊 Ajouter de nouvelles métriques DAX
- 🎨 Proposer des variantes de design
- 📝 Améliorer la documentation
- 🐛 Corriger des bugs

---

## 📜 License

Ce projet est sous license **MIT**. Vous êtes libre de :
- ✅ Utiliser ce projet à des fins personnelles ou commerciales
- ✅ Modifier et adapter le code/dashboard
- ✅ Distribuer et partager
- ✅ Utiliser dans votre portfolio

**Attribution appréciée mais non obligatoire.**

Voir le fichier [LICENSE](LICENSE) pour plus de détails.

---

## 👨‍💼 Auteur

**BOUBACAR NIKIEMA**  
Data Analyst | Master Big Data & Cloud Computing

Je vous aide à transformer vos données en décisions claires avec Power BI, SQL, Excel et Python.

### 🔗 Me Contacter

[![LinkedIn](https://img.shields.io/badge/LinkedIn-0077B5?style=for-the-badge&logo=linkedin&logoColor=white)](https://www.linkedin.com/in/boubacar-nikiema/)
[![GitHub](https://img.shields.io/badge/GitHub-181717?style=for-the-badge&logo=github&logoColor=white)](https://github.com/bouba02)
[![Email](https://img.shields.io/badge/Email-D14836?style=for-the-badge&logo=gmail&logoColor=white)](mailto:nikiemaboubacar@gmail.com)
[![YouTube](https://img.shields.io/badge/YouTube-FF0000?style=for-the-badge&logo=youtube&logoColor=white)]([LIEN_CHAINE_YOUTUBE](https://www.youtube.com/channel/UCxs2bzcEYXy91tUiFvI8dMw))

**Site Web :** [www.ngroupmediadigital.com](https://ngroupmediadigital.com)

---

## 🌟 Soutenez le Projet

Si ce projet vous a aidé, n'hésitez pas à :

⭐ **Star** ce repository  
🔄 **Partager** avec vos collègues data  
💬 **Commenter** vos suggestions  
📺 **S'abonner** à la [chaîne YouTube](https://www.youtube.com/channel/UCxs2bzcEYXy91tUiFvI8dMw)

---

## 📚 Ressources Complémentaires

### Power BI
- [Documentation officielle Microsoft](https://docs.microsoft.com/power-bi/)
- [DAX Guide](https://dax.guide/)
- [Power BI Community](https://community.powerbi.com/)

### SQL
- [MySQL Documentation](https://dev.mysql.com/doc/)
- [SQL Tutorial W3Schools](https://www.w3schools.com/sql/)

### Datasets Similaires
- [Kaggle - Sales Datasets](https://www.kaggle.com/datasets?search=sales)
- [Microsoft Sample Databases](https://docs.microsoft.com/sql/samples/)

---

## 📊 Statistiques du Projet

![GitHub stars](https://img.shields.io/github/stars/bouba02/Analyse-des-Ventes-avec-SQL-Projet-Power-BI-Complet-AtliQ-Hardware-?style=social)
![GitHub forks](https://img.shields.io/github/forks/bouba02/Analyse-des-Ventes-avec-SQL-Projet-Power-BI-Complet-AtliQ-Hardware-?style=social)
![GitHub watchers](https://img.shields.io/github/watchers/bouba02/Analyse-des-Ventes-avec-SQL-Projet-Power-BI-Complet-AtliQ-Hardware-?style=social)

---

## ❓ FAQ

**Q : Je n'ai jamais utilisé Power BI, je peux suivre ?**  
R : OUI ! La série vidéo part de ZÉRO. Partie 1 = installation.

**Q : Ça marche sur Mac ?**  
R : Power BI Desktop est Windows uniquement, MAIS vous pouvez utiliser Parallels/VMware ou importer les CSV dans un autre outil BI.

**Q : Les données sont réelles ?**  
R : Non, c'est un dataset fictif créé pour l'apprentissage. Structure réaliste, données générées.

**Q : Je peux utiliser ce projet dans mon portfolio ?**  
R : OUI ! C'est fait pour. Clonez, personnalisez, ajoutez à votre portfolio.

**Q : Combien de temps pour compléter le projet ?**  
R : Environ 3-5 heures si vous suivez les vidéos. Plus si vous reproduisez seul.

---

## 🎯 Prochaines Étapes

Après avoir complété ce projet, vous pouvez :

1. **Personnaliser** le dashboard (couleurs, visuels)
2. **Ajouter** de nouvelles pages (Customer Analysis, Product Deep Dive)
3. **Créer** de nouvelles mesures DAX (YoY Growth, Moving Average)
4. **Publier** sur Power BI Service et partager le lien
5. **Utiliser** vos propres données (remplacer AtliQ par vos données réelles)

---

## 📝 Changelog

### Version 1.0.0 (Février 2026)
- ✅ Release initiale complète
- ✅ 6 parties documentées
- ✅ Dashboard 3 pages opérationnel
- ✅ Série vidéo YouTube complète

---

<div align="center">

**Fait avec ❤️ et beaucoup de ☕ par Boubacar NIKIEMA**

⭐ **Si ce projet vous a aidé, n'oubliez pas de star le repo !** ⭐

</div>

---

**Dernière mise à jour :** Février 2026  
**Version :** 1.0.0  
**Status :** ✅ Production Ready
