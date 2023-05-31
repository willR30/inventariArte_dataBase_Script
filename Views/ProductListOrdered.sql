--lista de prooductos ordenados de mayor a menor 
CREATE VIEW ProductListOrdered AS
SELECT *
FROM Products
ORDER BY price ASC;
