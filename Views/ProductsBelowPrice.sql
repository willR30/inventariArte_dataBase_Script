--productos menores a un precio especificado
DECLARE @precio_limite FLOAT = 50;

CREATE VIEW ProductsBelowPrice AS
SELECT *
FROM Products
WHERE price < @precio_limite;

