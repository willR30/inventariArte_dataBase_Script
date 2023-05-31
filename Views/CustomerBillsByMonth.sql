--todas las facturas de un cliente en un mes 
CREATE VIEW CustomerBillsByMonth AS
SELECT b.id AS bill_id, b.date, c.full_name AS customer_name, b.sub_total, b.iva, b.total, m.name AS month_name
FROM Bill b
INNER JOIN Customer c ON b.customer_name = c.id
INNER JOIN Month m ON b.id_month = m.id
WHERE c.id = @cliente_id AND b.id_month = @mes_id;

