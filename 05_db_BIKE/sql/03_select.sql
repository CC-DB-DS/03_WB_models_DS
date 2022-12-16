-- Relation = Tabelle

 

USE bike;
SHOW TABLES;

 

/* Query 1
Schreiben Sie einen Select-Befehl, 
der aus der Relation (Tabelle) Personal die Namen aller Personen ermittelt, 
die mehr als 3000 Euro verdienen.
*/
-- ges. Tabelle
SELECT * FROM Personal;

 

-- Query
SELECT
    Name,
    Gehalt
FROM Personal
WHERE Gehalt > 3000
ORDER BY Gehalt DESC;
#ORDER BY Gehalt ASC;
;