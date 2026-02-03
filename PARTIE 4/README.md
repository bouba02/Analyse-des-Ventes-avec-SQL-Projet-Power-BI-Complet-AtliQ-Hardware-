# ⭐ PARTIE 4 : Star Schema + Relations + DAX

![Power BI](https://img.shields.io/badge/Power%20BI-F2C811?style=flat-square&logo=powerbi&logoColor=black)
![DAX](https://img.shields.io/badge/DAX-0078D4?style=flat-square)
![Data Modeling](https://img.shields.io/badge/Data%20Modeling-success?style=flat-square)

> **Créez un modèle Star Schema professionnel et vos premières mesures DAX**

---

## 🎯 Objectifs

- ⭐ Comprendre le Star Schema
- 🔗 Créer 4 relations Many-to-One
- ⚙️ Configurer cardinalité et filtrage
- ✅ Valider le modèle
- 📊 Écrire 2 mesures DAX

**Durée :** 16 minutes

---

## 📹 Vidéo Tutoriel

[![Voir la vidéo](https://img.shields.io/badge/▶️-YouTube-FF0000?style=for-the-badge&logo=youtube)](https://youtu.be/R-hUzsPNkSE)

---

## ⭐ Qu'est-ce qu'un Star Schema ?

**Définition :**
- 🌟 **1 table centrale** (Fact) : transactions, métriques
- 📊 **4 tables satellites** (Dimensions) : attributs descriptifs
- 🔗 **Relations Many-to-One** : dimensions → fact

**Pourquoi ?**
- ✅ Performance ultra-rapide
- ✅ Simple à comprendre
- ✅ Standard BI universel

**Schéma :**
```
         customers (38)
              ↓
date (1,126) → transactions (148K) ← products (279)
              ↓
          markets (17)
```

---

## 🔗 Création des 4 Relations

### Accès Vue Modèle
```
Power BI → Icône "Vue Modèle" (3ème icône gauche)
```

### Relation 1 : transactions ← customers
```
Glisser : customer_code (transactions) → customer_code (customers)
Config : Many-to-One (*:1) | Direction : Single | Active : ✅
```

### Relation 2 : transactions ← date
```
Glisser : order_date (transactions) → date (date)
Config : Many-to-One (*:1) | Direction : Single | Active : ✅
```

### Relation 3 : transactions ← markets
```
Glisser : market_code (transactions) → markets_code (markets)
Config : Many-to-One (*:1) | Direction : Single | Active : ✅
```

### Relation 4 : transactions ← products
```
Glisser : product_code (transactions) → product_code (products)
Config : Many-to-One (*:1) | Direction : Single | Active : ✅
```

---

## ⚙️ Configuration

### Cardinalité Many-to-One (*:1)

**Signification :**
- Many (*) : Plusieurs transactions → même client/produit
- One (1) : Chaque client/produit unique dans sa table

**Exemple :**
```
transactions       customers
────────────       ─────────
Cus001 (x100) →    Cus001 (1 seule fois)
Cus002 (x50)  →    Cus002 (1 seule fois)
```

### Direction Filtrage : Single

**Single (Recommandé) :**
- Filtre dimension → transactions uniquement
- Exemple : Filtrer "Delhi" → filtre ses transactions

**Both (À éviter) :**
- Filtre dans les 2 sens
- Risque ambiguïté + ralentissements

**Règle d'or :** Toujours **Single** pour Star Schema

---

## ✅ Validation Modèle

**Checklist :**
- ✅ 4 lignes de relation visibles
- ✅ Lignes continues (= actives)
- ✅ Flèche d'un seul côté
- ✅ Pas de Many-to-Many (*:*)

**Test rapide :**
```
Vue Rapport → Tableau
Lignes : customers[customer_name]
Valeurs : COUNT(transactions[product_code])
Résultat : Liste clients avec nb transactions ✅
```

---

## 📊 Mesures DAX

### Mesure 1 : Total Revenue

```dax
Total Revenue = SUM(transactions[normalized_amount])
```

**Étapes :**
1. Clic droit table transactions → Nouvelle mesure
2. Taper formule ci-dessus → Entrée
3. Format : Devise (₹)

**Résultat attendu :** ₹985M

---

### Mesure 2 : Total Profit

```dax
Total Profit = SUM(transactions[profit_amount])
```

**Même processus** que Total Revenue

**Résultat attendu :** ₹24.7M

---

### Test Mesures

```
Vue Rapport → Visuel Carte
Glisser "Total Revenue" → ₹985M ✅
Glisser "Total Profit" → ₹24.7M ✅
```

---

## 📐 Schéma Final

![STAR SCHEMA - ](PARTIE%203/Screen_StarShema.png)

---

## 🎓 Bonnes Pratiques

### ✅ À Faire
1. Relations 1:* uniquement
2. Nommer mesures clairement
3. Formater mesures (€, %, K)
4. Direction Single
5. Organiser mesures

### ❌ À Éviter
1. Relations Many-to-Many
2. Direction Both (sauf exception)
3. Colonnes calculées pour agrégations
4. Relations inactives inutiles
5. Colonnes jamais utilisées

---

## ⚡ Impact Performance

| Action | Avant | Après |
|--------|-------|-------|
| Taille .pbix | 12 MB | 8 MB (-33%) |
| Chargement | 5s | 2s (-60%) |
| Actualisation | 45s | 25s (-44%) |

---

## 🎓 Compétences Acquises

✅ Star Schema (Fact vs Dimensions)  
✅ Relations Many-to-One  
✅ Cardinalité et filtrage  
✅ Validation modèle  
✅ Mesures DAX (SUM)  
✅ Formatage mesures  
✅ Optimisation performance  

---

## ⏭️ Prochaine Étape

**[PARTIE 5 : Dashboard 3 Pages →](../PARTIE%205/README.md)**

Créez un dashboard professionnel avec 3 pages interactives, navigation et 15+ visuels.

---

## 💬 Questions ?

- 💬 [Vidéo YouTube](https://youtu.be/R-hUzsPNkSE)
- 📧 nikiemaboubacar@gmail.com

---

## 🔗 Ressources DAX

- 📖 [DAX Guide](https://dax.guide/)
- 🎓 [DAX Patterns](https://www.daxpatterns.com/)
- 📹 [SQLBI YouTube](https://www.youtube.com/c/SQLBI)

---

**© 2026 Boubacar NIKIEMA | [GitHub](https://github.com/bouba02) | [LinkedIn](https://linkedin.com/in/boubacar-nikiema)**
