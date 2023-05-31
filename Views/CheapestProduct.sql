--producto mas barato
CREATE VIEW CheapestProduct AS
SELECT TOP 1 *
FROM Products
ORDER BY price ASC;
