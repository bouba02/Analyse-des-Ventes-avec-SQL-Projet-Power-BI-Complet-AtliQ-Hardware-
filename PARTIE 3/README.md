# 📥 PARTIE 3 : Import Power BI + ETL (Power Query)

![Power BI](https://img.shields.io/badge/Power%20BI-F2C811?style=flat-square&logo=powerbi&logoColor=black)
![Power Query](https://img.shields.io/badge/Power%20Query-217346?style=flat-square)
![MySQL](https://img.shields.io/badge/MySQL-4479A1?style=flat-square&logo=mysql&logoColor=white)

> **Importez 148,000 transactions dans Power BI et nettoyez-les avec Power Query**

---

## 🎯 Objectifs

- ✅ Importer données MySQL dans Power BI (2 méthodes)
- ✅ Maîtriser Power Query Editor
- ✅ Nettoyer données (types, NULL, codes test)
- ✅ Normaliser devises (USD → INR)
- ✅ Créer colonnes calculées (profit)

**Durée :** 22 minutes

---

## 📹 Vidéo Tutoriel

[![Voir la vidéo](https://img.shields.io/badge/▶️-YouTube-FF0000?style=for-the-badge&logo=youtube)](https://youtu.be/mf8Tq-DVCGk)

---

## 🛠️ Méthode 1 : Connexion MySQL (Windows x64)

**Prérequis :**
- Windows 10/11 (x64)
- MySQL Server démarré
- MySQL ODBC Driver installé

**Étapes :**
1. Télécharger [MySQL ODBC Driver](https://dev.mysql.com/downloads/connector/odbc/)
2. Installer et **redémarrer** PC
3. Power BI → Obtenir données → MySQL Database
4. Serveur : `localhost` | Base : `sales`
5. Sélectionner les 5 tables
6. Transformer les données

---

## 📄 Méthode 2 : Import CSV (Universel)

**Compatible :** Mac, Linux, Windows ARM

**Étapes :**
1. **Exporter depuis MySQL Workbench :**
```sql
SELECT * FROM customers;
-- Clic droit → Export → CSV
-- Répéter pour : date, markets, products, transactions
```

2. **Importer dans Power BI :**
```
Obtenir données → Texte/CSV
Sélectionner chaque fichier CSV
Transformer les données
```

**📁 Fichiers fournis :** Les 5 CSV sont dans ce dossier !

---

## 🧹 Nettoyage Power Query

### Table `transactions`

**1. Corriger Types :**
- `sales_amount` → Nombre décimal
- `order_date` → Date
- `sales_qty` → Nombre entier

**2. Supprimer Codes Test :**
```
Filtrer sales_amount
→ Décocher -1 et 0
```

**3. Gérer NULL (currency) :**
```
Colonne currency → Remplacer valeurs
Valeur : null → INR
```

**4. Normaliser Devises :**
```
Ajouter colonne conditionnelle : normalized_amount
SI currency = "USD" ALORS sales_amount × 75
SINON sales_amount
```

**5. Créer Colonnes Calculées :**
```
profit_amount = normalized_amount × 0.025
profit_margin_pct = (profit_amount / normalized_amount) × 100
```

---

## 📊 Résultat Final

| Table | Lignes | Colonnes |
|-------|--------|----------|
| customers | 38 | 3 |
| date | 1,126 | 5 |
| markets | 15 | 3 |
| products | 279 | 2 |
| **transactions** | **148,395** | **11** (+3 nouvelles) |

**Nouvelles colonnes :**
- ✅ `normalized_amount` (tout en INR)
- ✅ `profit_amount`
- ✅ `profit_margin_pct`

---

## 🎓 Compétences Acquises

✅ Import multi-sources (MySQL + CSV)  
✅ Power Query Editor  
✅ Correction types données  
✅ Gestion valeurs NULL  
✅ Conversion devises  
✅ Colonnes calculées  

---

## ⏭️ Prochaine Étape

**[PARTIE 4 : Star Schema + Relations →](../PARTIE%204/README.md)**

Créez votre modèle de données avec relations optimisées et mesures DAX.

---

## 💬 Questions ?

- 💬 Commentaires [vidéo YouTube](https://youtu.be/mf8Tq-DVCGk)
- 📧 nikiemaboubacar@gmail.com

---

**© 2026 Boubacar NIKIEMA | [GitHub](https://github.com/bouba02) | [LinkedIn](https://linkedin.com/in/boubacar-nikiema)**
