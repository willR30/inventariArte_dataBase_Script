-- producto  mas caro
CREATE VIEW MostExpensiveProduct AS 
SELECT TOP 1 *
FROM Products
ORDER BY price DESC;
