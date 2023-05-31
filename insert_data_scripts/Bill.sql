-- Script de inserción de 5 registros en la tabla Bill
INSERT INTO Bill (date, customer_name, sub_total, iva, total, id_month, id_year, id_bill_state, id_currency_type, id_payment_type) VALUES
('2023-01-15', (SELECT id FROM Customer WHERE full_name = 'Tech Solutions'), 1000.00, 150.00, 1150.00, 1, (SELECT id FROM Year WHERE name = '2023'), 1, 1, 1),
('2023-02-20', (SELECT id FROM Customer WHERE full_name = 'InnovaSoft'), 2500.00, 375.00, 2875.00, 2, (SELECT id FROM Year WHERE name = '2023'), 1, 1, 2),
('2023-03-10', (SELECT id FROM Customer WHERE full_name = 'ByteTech'), 1800.00, 270.00, 2070.00, 3, (SELECT id FROM Year WHERE name = '2023'), 1, 1, 1),
('2023-04-05', (SELECT id FROM Customer WHERE full_name = 'CodeMaster'), 3000.00, 450.00, 3450.00, 4, (SELECT id FROM Year WHERE name = '2023'), 1, 1, 2),
('2023-05-18', (SELECT id FROM Customer WHERE full_name = 'Softworks'), 1500.00, 225.00, 1725.00, 5, (SELECT id FROM Year WHERE name = '2023'), 1, 1, 1),
('2023-06-12', (SELECT id FROM Customer WHERE full_name = 'Digital Systems'), 2200.00, 330.00, 2530.00, 6, (SELECT id FROM Year WHERE name = '2023'), 1, 1, 2),
('2023-07-25', (SELECT id FROM Customer WHERE full_name = 'TechnoLogic'), 1800.00, 270.00, 2070.00, 7, (SELECT id FROM Year WHERE name = '2023'), 1, 1, 1),
('2023-08-17', (SELECT id FROM Customer WHERE full_name = 'Software Solutions'), 3500.00, 525.00, 4025.00, 8, (SELECT id FROM Year WHERE name = '2023'), 1, 1, 2),
('2023-09-04', (SELECT id FROM Customer WHERE full_name = 'ByteCraft'), 2500.00, 375.00, 2875.00, 9, (SELECT id FROM Year WHERE name = '2023'), 1, 1, 1),
('2023-10-29', (SELECT id FROM Customer WHERE full_name = 'Innovative Tech'), 2800.00, 420.00, 3220.00, 10, (SELECT id FROM Year WHERE name = '2023'), 1, 1, 2);

