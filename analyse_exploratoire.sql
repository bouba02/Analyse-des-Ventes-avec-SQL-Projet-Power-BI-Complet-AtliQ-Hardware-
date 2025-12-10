-- ==========================================
-- PHASE 2 : ANALYSE EXPLORATOIRE SQL
-- Projet AtliQ Hardware
-- ==========================================

-- Sélectionner la base de données
USE sales;

-- ==========================================
-- PARTIE 1 : EXPLORATION STRUCTURE
-- ==========================================

-- Compter les lignes par table
SELECT COUNT(*) as total_customers FROM customers;
SELECT COUNT(*) as total_transactions FROM transactions;
SELECT COUNT(*) as total_products FROM products;
SELECT COUNT(*) as total_markets FROM markets;
SELECT COUNT(*) as total_dates FROM date;

-- Structure des tables
DESCRIBE customers;
DESCRIBE transactions;
DESCRIBE products;
DESCRIBE markets;
DESCRIBE date;

-- Aperçu des données
SELECT * FROM customers LIMIT 5;
SELECT * FROM transactions LIMIT 5;
SELECT * FROM products LIMIT 5;
SELECT * FROM markets LIMIT 5;
SELECT * FROM date LIMIT 5;

-- ==========================================
-- PARTIE 2 : QUALITÉ DES DONNÉES
-- ==========================================

-- Devises présentes
SELECT DISTINCT currency FROM transactions;

-- Nombre de transactions par devise
SELECT 
    currency, 
    COUNT(*) as nb_transactions,
    ROUND(COUNT(*) * 100.0 / (SELECT COUNT(*) FROM transactions), 2) as pourcentage
FROM transactions
GROUP BY currency;

-- Valeurs négatives ou nulles
SELECT COUNT(*) as valeurs_negatives_ou_nulles
FROM transactions 
WHERE sales_amount <= 0;

-- Valeurs NULL dans colonnes critiques
SELECT 
    COUNT(*) as total_transactions,
    SUM(CASE WHEN customer_code IS NULL THEN 1 ELSE 0 END) as null_customer,
    SUM(CASE WHEN product_code IS NULL THEN 1 ELSE 0 END) as null_product,
    SUM(CASE WHEN sales_amount IS NULL THEN 1 ELSE 0 END) as null_amount,
    SUM(CASE WHEN order_date IS NULL THEN 1 ELSE 0 END) as null_date
FROM transactions;

-- Codes marchés suspects
SELECT DISTINCT markets_code FROM markets ORDER BY markets_code;

-- Statistiques sur les marges
SELECT 
    COUNT(*) as total_transactions,
    SUM(CASE WHEN profit_margin IS NULL THEN 1 ELSE 0 END) as null_profit,
    ROUND(MIN(profit_margin), 2) as marge_min,
    ROUND(MAX(profit_margin), 2) as marge_max,
    ROUND(AVG(profit_margin), 2) as marge_moyenne
FROM transactions;

-- ==========================================
-- PARTIE 3 : ANALYSES BUSINESS
-- ==========================================

-- CA total par année
SELECT 
    d.year as annee,
    COUNT(t.product_code) as nombre_transactions,
    ROUND(SUM(t.sales_amount)/1000000, 2) as ca_millions_roupies
FROM transactions t
INNER JOIN date d ON t.order_date = d.date
WHERE t.currency = 'INR'
GROUP BY d.year
ORDER BY d.year;

-- Top 5 marchés par CA
SELECT 
    m.markets_name as ville,
    m.zone,
    ROUND(SUM(t.sales_amount)/1000000, 2) as ca_millions
FROM transactions t
INNER JOIN markets m ON t.market_code = m.markets_code
WHERE t.currency = 'INR' 
  AND m.markets_code NOT IN ('Mark097', 'Mark999')
GROUP BY m.markets_name, m.zone
ORDER BY ca_millions DESC
LIMIT 5;

-- Top 5 produits par CA
SELECT 
    p.product_code,
    p.product_type,
    ROUND(SUM(t.sales_amount)/1000000, 2) as ca_millions,
    SUM(t.sales_qty) as quantite_totale
FROM transactions t
INNER JOIN products p ON t.product_code = p.product_code
WHERE t.currency = 'INR'
GROUP BY p.product_code, p.product_type
ORDER BY ca_millions DESC
LIMIT 5;

-- CA mensuel 2020
SELECT 
    d.month_name as mois,
    ROUND(SUM(t.sales_amount)/1000000, 2) as ca_millions
FROM transactions t
INNER JOIN date d ON t.order_date = d.date
WHERE d.year = 2020 AND t.currency = 'INR'
GROUP BY d.month_name, d.cy_date
ORDER BY d.cy_date;

-- Produits à marge négative
SELECT 
    p.product_code,
    p.product_type,
    ROUND(SUM(t.sales_amount)/1000000, 2) as ca_millions,
    ROUND(SUM(t.profit_margin)/1000000, 2) as marge_millions,
    ROUND(SUM(t.profit_margin)/SUM(t.sales_amount)*100, 2) as marge_pourcentage
FROM transactions t
INNER JOIN products p ON t.product_code = p.product_code
WHERE t.currency = 'INR'
GROUP BY p.product_code, p.product_type
HAVING marge_pourcentage < 0
ORDER BY marge_pourcentage ASC
LIMIT 10;

