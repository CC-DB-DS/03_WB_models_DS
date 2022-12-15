-- Selects 1:1

-- Einzeltabellen

SELECT * FROM mydb.cats;
SELECT * FROM mydb.servants;

-- Kreuzprodukt (Kartesisches Produkt)
SELECT * FROM mydb.cats JOIN mydb.servants;
