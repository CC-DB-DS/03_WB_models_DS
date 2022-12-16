-- 03. SELECTS / Servants, Products
-- Einzeltabellen
SELECT * FROM mydb.servants;
SELECT * FROM mydb.products;
SELECT * FROM mydb.purchases;

-- Inner Join 1 / Kombi (servants, products, purrrchases)
SELECT 
	*
FROM mydb.purchases
INNER JOIN mydb.servants ON mydb.servants.id = mydb.purchases.servants_id
INNER JOIN mydb.products ON mydb.products.id = mydb.purchases.products_id
;

-- Welche Artikel hat Daniel/Stefan gekauft?
SELECT 
	servant_name AS Diener,
    product_name AS "gekaufte Produkte"
FROM mydb.purchases
INNER JOIN mydb.servants ON mydb.servants.id = mydb.purchases.servants_id
INNER JOIN mydb.products ON mydb.products.id = mydb.purchases.products_id
WHERE servant_name = "Daniel"
;

-- Wer hat den Lachs bekommen?
SELECT 
	cat_name AS Katze,
    product_name AS "Produkte"
FROM mydb.purchases
INNER JOIN mydb.servants ON mydb.servants.id = mydb.purchases.servants_id
INNER JOIN mydb.products ON mydb.products.id = mydb.purchases.products_id
INNER JOIN mydb.cats ON mydb.cats.id = mydb.servants.cats_id
WHERE product_name Like "%Lachs%"
;