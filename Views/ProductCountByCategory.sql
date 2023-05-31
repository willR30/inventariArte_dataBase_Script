--cantidad de productos por categira 
CREATE VIEW ProductCountByCategory AS
SELECT c.id AS category_id, c.name AS category_name, COUNT(p.id) AS product_count
FROM Category c
LEFT JOIN Products p ON c.id = p.id_category
GROUP BY c.id, c.name;
