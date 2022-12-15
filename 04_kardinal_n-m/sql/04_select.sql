-- Selects 1:1

-- Einzeltabellen

SELECT * FROM mydb.cats;
SELECT * FROM mydb.servants;

-- Kreuzprodukt (Kartesisches Produkt)
SELECT * FROM 
mydb.cats INNER JOIN mydb.servants
-- Werte Primärschlüssel/MT = Werte Fremdschlüssel/DT
ON mydb.cats.id = mydb.servants.cats_id
;

SELECT 
	cat_name AS Herrschaft,
    servant_name AS Diener
FROM mydb.cats INNER JOIN mydb.servants
ON mydb.cats.id = mydb.servants.cats_id
WHERE cat_name = "Katze"
OR servant_name = "Peter"
;

SELECT
	CONCAT(servant_name," ist seit ", yrs_served, " Jahren der Diener von hochwohlgeboren Majestät ", cat_name,".") AS Dienstverhältnis
FROM mydb.cats INNER JOIN mydb.servants
ON mydb.cats.id = mydb.servants.cats_id
WHERE cat_name = "Grizabella"
OR servant_name = "Stefan"
;

SELECT
	CONCAT(servant_name," ist seit ", yrs_served, " Jahren der Diener von hochwohlgeboren Majestät ", cat_name,".") AS Dienstverhältnis
FROM mydb.cats INNER JOIN mydb.servants
ON mydb.cats.id = mydb.servants.cats_id
WHERE yrs_served = (SELECT max(yrs_served) FROM mydb.servants)
;

-- View / Query / MAX() in VIEW gekapselt

DROP VIEW IF EXISTS mydb.max_time;
CREATE VIEW mydb.max_time AS
	SELECT
		MAX(yrs_served)
	FROM mydb.servants;
    
SELECT * FROM mydb.max_time;



