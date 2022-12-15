SELECT 
    * 
FROM mydb.cats INNER JOIN mydb.kittens
ON mydb.cats.id  = mydb.kittens.cats_id
;

SELECT 
    cat_name AS Mutter,
    kitten_name AS Kind,
    concat(cat_name," ist ein Elternteil von ", kitten_name, ".") AS Verwandschaft
FROM mydb.cats INNER JOIN mydb.kittens
ON mydb.cats.id  = mydb.kittens.cats_id
;

SELECT
	cat_name AS Katze,
    COUNT(cat_name) AS Kinderzahl
FROM mydb.cats INNER JOIN mydb.kittens
ON mydb.cats.id = mydb.kittens.cats_id
GROUP BY cat_name
;