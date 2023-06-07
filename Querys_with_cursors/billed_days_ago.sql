--Saber cuantos dias lleva una factura realizada
-- Declarar variables
DECLARE @id INT, @date DATE, @customer_name INT, @sub_total FLOAT, @iva FLOAT, @total FLOAT
DECLARE @id_month INT, @id_year INT, @id_bill_state INT, @id_currency_type INT, @id_payment_type INT
DECLARE @billed_days_ago INT

-- Crear tabla temporal
CREATE TABLE #TempBill (
    id INT,
    date DATE,
    customer_name INT,
    sub_total FLOAT,
    iva FLOAT,
    total FLOAT,
    id_month INT,
    id_year INT,
    id_bill_state INT,
    id_currency_type INT,
    id_payment_type INT,
    [billed days ago] INT
);

-- Declarar el cursor
DECLARE billCursor CURSOR FOR
SELECT id, date, customer_name, sub_total, iva, total, id_month, id_year, id_bill_state, id_currency_type, id_payment_type
FROM Bill;

-- Abrir el cursor
OPEN billCursor;

-- Obtener el primer registro
FETCH NEXT FROM billCursor INTO @id, @date, @customer_name, @sub_total, @iva, @total, @id_month, @id_year, @id_bill_state, @id_currency_type, @id_payment_type;

-- Iterar a través de los registros
WHILE @@FETCH_STATUS = 0
BEGIN
    -- Calcular los días transcurridos desde la fecha de la factura hasta la fecha actual
    SET @billed_days_ago = DATEDIFF(DAY, @date, GETDATE());

    -- Insertar el registro en la tabla temporal con los días transcurridos
    INSERT INTO #TempBill (id, date, customer_name, sub_total, iva, total, id_month, id_year, id_bill_state, id_currency_type, id_payment_type, [billed days ago])
    VALUES (@id, @date, @customer_name, @sub_total, @iva, @total, @id_month, @id_year, @id_bill_state, @id_currency_type, @id_payment_type, @billed_days_ago);

    -- Obtener el siguiente registro
    FETCH NEXT FROM billCursor INTO @id, @date, @customer_name, @sub_total, @iva, @total, @id_month, @id_year, @id_bill_state, @id_currency_type, @id_payment_type;
END

-- Cerrar el cursor
CLOSE billCursor;

-- Liberar recursos del cursor
DEALLOCATE billCursor;

-- Mostrar los registros de la tabla temporal
SELECT * FROM #TempBill;

-- Eliminar la tabla temporal
DROP TABLE #TempBill;
