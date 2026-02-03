# 📊 PARTIE 5 : Dashboard Power BI Complet (3 Pages)

![Power BI](https://img.shields.io/badge/Power%20BI-F2C811?style=flat-square&logo=powerbi&logoColor=black)
![Dashboard](https://img.shields.io/badge/Dashboard-Interactif-success?style=flat-square)

> **Créez un dashboard professionnel avec 3 pages, navigation et 15+ visualisations**

---

## 🎯 Objectifs

- 📊 **Page 1** : Key Insights (KPIs + vue d'ensemble)
- 💰 **Page 2** : Profit Analysis (rentabilité)
- 📈 **Page 3** : Performance Insights (commercial)
- 🎨 **Navigation** : Menu 3 boutons
- 🔍 **Filtres** : Slicers synchronisés

**Durée :** 1h03min - 

---

## 📹 Vidéo Tutoriel

[![Voir la vidéo](https://img.shields.io/badge/▶️-YouTube-FF0000?style=for-the-badge&logo=youtube)](https://youtu.be/UyaWq6GYT14)

**Durée :** 1h03

---

## 📸 Aperçu des 3 Pages

### Page 1 : Key Insights
![Key Insights](Page1_KeyInsights.png)

**Contenu :**
- 4 Cartes KPI (Revenue, Profit, Sales Qty, Margin %)
- Revenue Trends (barres + ligne)
- Top 5 Products & Customers
- Profit Distribution (donut)
- Matrice Revenue/Profit

### Page 2 : Profit Analysis
![Profit Analysis](Page2_ProfitAnalysis.png)

**Contenu :**
- 3 Cartes KPI Profit
- Profit Margin Evolution
- Profit par Zone
- Ranking Produits

### Page 3 : Performance Insights
![Performance](Page3_PerformanceInsights.png)

**Contenu :**
- 4 Cartes KPI Performance
- Sales Qty par Marché
- Revenue Trend Mensuel
- Top 5 Treemap
- Performance YoY

---

## 🎨 Configuration

### Paramètres Page
```
Vue → Mise en page
Taille : 1350 × 850 px
Fond : #F8F9FA (gris clair)
```

### Palette Couleurs
| Couleur | Code | Usage |
|---------|------|-------|
| Bleu foncé | #2c3e50 | Header, titres |
| Orange | #f39c12 | Boutons, accents |
| Vert | #27ae60 | Profit positif |
| Rouge | #e74c3c | Alertes |
| Blanc | #ffffff | Cartes KPI |

---

## 🏗️ Page 1 : Key Insights

### Header + Navigation
```
Zone texte : "SALES INSIGHTS DASHBOARD"
Police : Segoe UI Bold, 24px
Fond : #2c3e50
Position : X=0, Y=0, Largeur=1350, Hauteur=60

3 Boutons Navigation :
- Key Insights (orange - actif)
- Profit Analysis (transparent)
- Performance Insights (transparent)
```

### 4 Cartes KPI
```
KPI 1 : Total Revenue → ₹985M
KPI 2 : Total Profit → ₹24.7M
KPI 3 : Sales Quantity → 2.4M
KPI 4 : Profit Margin % → 2.50%

Format :
- Police : 48px gras
- Fond : Blanc
- Bordure : 2px orange
- Taille : 310×150px
```

### Visuels Principaux
```
1. Revenue Trends (graphique combiné)
   - Colonnes : Total Revenue
   - Ligne : Profit Margin %

2. Top 5 Products (barres horizontales)
   - Axe Y : product_code
   - Axe X : Total Revenue
   - Filtre : TOP 5

3. Top 5 Customers (barres)
   - Axe Y : customer_name
   - Filtre : TOP 5

4. Profit Distribution (donut)
   - Légende : markets_name
   - Valeurs : Total Profit

5. Matrice Revenue/Profit
   - Lignes : markets_name
   - Valeurs : Revenue + Profit
   - Mise en forme : Barres données
```

### Slicers
```
Year : date[year] (liste déroulante)
Month : date[month_name] (liste déroulante)
```

---

## 💰 Page 2 : Profit Analysis

### Visuels
```
1. 3 Cartes KPI :
   - Profit Total : ₹24.66M
   - Avg Profit Margin : 2.4%
   - Profit Per Sales : ₹30.67K

2. Profit Margin Evolution (ligne)
3. Profit by Zone (barres)
4. Products Profitability (table + barres vertes)
```

---

## 📈 Page 3 : Performance Insights

### Visuels
```
1. 4 Cartes KPI :
   - Sales Quantity : 2M
   - Numbers of Sales : 804
   - Customers : 38
   - Avg Order Value : ₹1.2M

2. Sales Qty by Market (barres)
3. Monthly Revenue Trend (aires)
4. Top 5 Customers (treemap)
5. Year over Year (matrice)
```

---

## 🔄 Synchronisation Slicers

```
1. Sélectionner slicer "Year" sur Page 1
2. Vue → Synchroniser les slicers
3. Cocher Page 1, 2, 3
4. Répéter pour slicer "Month"

Résultat : Filtres appliqués sur toutes les pages ✅
```

---

## ✅ Tests

**Checklist :**
- ✅ Navigation fonctionne (3 boutons)
- ✅ KPIs affichent bons chiffres
- ✅ Slicers synchronisés
- ✅ Interactions visuels actives
- ✅ Design cohérent
- ✅ Lisibilité mobile

---

## 🎓 Compétences Acquises

✅ Dashboard multi-pages  
✅ Navigation boutons  
✅ 15+ types visuels  
✅ Cartes KPI formatées  
✅ Slicers synchronisés  
✅ Mise en forme conditionnelle  
✅ Design professionnel  

---

## 📁 Fichiers

- `Sales_Insights_Dashboard_Final.pbix` (4 MB)
- Screenshots 3 pages (PNG)
- `Sales_Insights_Dashboard_Final.pdf`

---

## ⏭️ Prochaine Étape

**[PARTIE 6 : Publication Power BI Service →](../PARTIE%206/README.md)**

Publiez votre dashboard en ligne pour partage et actualisation auto.

---

## 💬 Questions ?

- 💬 [Vidéo YouTube](https://youtu.be/UyaWq6GYT14)
- 📧 nikiemaboubacar@gmail.com

---

**© 2026 Boubacar NIKIEMA | [GitHub](https://github.com/bouba02) | [LinkedIn](https://linkedin.com/in/boubacar-nikiema)**
