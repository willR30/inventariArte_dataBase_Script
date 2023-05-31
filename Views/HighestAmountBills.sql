
--(FACTURA CON MAYOR MONTO)
CREATE VIEW HighestAmountBills AS
SELECT *
FROM Bill
WHERE total = (
    SELECT MAX(total)
    FROM Bill
);
