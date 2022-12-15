SELECT 
    * 
FROM mydb.cats INNER JOIN mydb.kittens
ON mydb.cats.id  = mydb.kittens.cats_id
;