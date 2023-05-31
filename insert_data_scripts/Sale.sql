-- Script de inserción de 10 registros en la tabla Sale
INSERT INTO Sale (id_bill, id_products, amount_products, price_at_moment, total_sale) VALUES
((SELECT id FROM Bill WHERE id = 1), (SELECT id FROM Products WHERE id = 4), 2, 399.99, 799.98),
((SELECT id FROM Bill WHERE id = 1), (SELECT id FROM Products WHERE id = 12), 1, 1799.99, 1799.99),
((SELECT id FROM Bill WHERE id = 2), (SELECT id FROM Products WHERE id = 1), 5, 399.99, 1999.95),
((SELECT id FROM Bill WHERE id = 2), (SELECT id FROM Products WHERE id = 16), 3, 549.99, 1649.97),
((SELECT id FROM Bill WHERE id = 3), (SELECT id FROM Products WHERE id = 6), 2, 1299.99, 2599.98),
((SELECT id FROM Bill WHERE id = 3), (SELECT id FROM Products WHERE id = 8), 1, 1399.99, 1399.99),
((SELECT id FROM Bill WHERE id = 4), (SELECT id FROM Products WHERE id = 14), 4, 69.99, 279.96),
((SELECT id FROM Bill WHERE id = 4), (SELECT id FROM Products WHERE id = 18), 2, 129.99, 259.98),
((SELECT id FROM Bill WHERE id = 5), (SELECT id FROM Products WHERE id = 9), 3, 329.99, 989.97),
((SELECT id FROM Bill WHERE id = 5), (SELECT id FROM Products WHERE id = 20), 1, 129.99, 129.99);
