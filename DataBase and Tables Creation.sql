--Creacion de la base de datos
create database InventariArte

--Uso de la base de datos
use InventariArte

-----------------------------------------------------------
-----------------------------------------------------------
---------creacion de las tablas y sus relaciones-----------
-----------------------------------------------------------
-----------------------------------------------------------

-- Creaci�n de la tabla Equipment_Category
CREATE TABLE Equipment_Category (
    -- Esta tabla es para las CATEGORIAS de el material que se utiliza PARA REPARAR diferentes equipos
    -- Ejemplo:
    --   - Desarmadores
    --   - Soldadores
    --   - Productos quimicos
    --   - etc ...
    id INT PRIMARY KEY IDENTITY,
    name VARCHAR(50),
    description VARCHAR(100)
);

-- Creaci�n de la tabla Equipment
CREATE TABLE Equipment (
    -- Los equipos para TRABAJAR INTERNAMENTE A FIN DE REPARAR OTROS EQUIPOS que pertenecen a una categor�a en espec�fico (que ya fue registrada)
    -- Ejemplo:
    --   Categor�a: Soldadores
    --   Producto: Cautin Industrial
    id INT PRIMARY KEY IDENTITY,
    name VARCHAR(100),
    id_equipment_category INT,
    FOREIGN KEY (id_equipment_category) REFERENCES Equipment_Category (id)
);

-- Creaci�n de la tabla Category
CREATE TABLE Category (
    -- Categor�a de los productos a vender al p�blico
    -- Ejemplo: Premium, Seguridad, Tel�fono, Computadoras, Impresoras, Solo para empresas, etc...
    id INT PRIMARY KEY IDENTITY,
    name VARCHAR(30),
    description VARCHAR(200)
);

-- Creaci�n de la tabla Products
CREATE TABLE Products (
    -- Productos que se venden al p�blico
    -- Ejemplo:
    --   Categor�a: Solo empresas
    --   Producto: Impresora industrial xl123
    id INT PRIMARY KEY IDENTITY,
    name VARCHAR(200),
    description VARCHAR(500),
    stock INT,
    cost FLOAT,
    price FLOAT,
    id_category INT,
    FOREIGN KEY (id_category) REFERENCES Category (id)
);

-- Creaci�n de la tabla Bill_state
CREATE TABLE Bill_state (
    -- Una factura puede tener un estado
    -- Ejemplo: Activa y/o Anulada
    id INT PRIMARY KEY IDENTITY,
    name VARCHAR(10)
);

-- Creaci�n de la tabla Month
CREATE TABLE Month (
    id INT PRIMARY KEY IDENTITY,
    name VARCHAR(30)
);

-- Creaci�n de la tabla Year
CREATE TABLE Year (
    id INT PRIMARY KEY IDENTITY,
    name VARCHAR(30)
);

-- Creaci�n de la tabla TypeCustomer
CREATE TABLE TypeCustomer (
    -- Se pueden manejar diferentes tipos de clientes
    -- Ejemplo:
    --   - Persona Natural
    --   - Empresa
    --   - O.N.G.
    --   - Etc
    id INT PRIMARY KEY IDENTITY,
    customerType VARCHAR(50)
);

-- Creaci�n de la tabla Customer
CREATE TABLE Customer (
    -- El cliente como tal que previamente fue registrado
    id INT PRIMARY KEY IDENTITY,
    full_name VARCHAR(200),
    type INT,
    FOREIGN KEY (type) REFERENCES TypeCustomer (id)
);

-- Creaci�n de la tabla CurrencyType
CREATE TABLE CurrencyType (
    -- Ej: C$-C�rdobas, $-D�lar, etc...
    id INT PRIMARY KEY IDENTITY,
    currency VARCHAR(20),
    symbol VARCHAR(5)
);

-- Creaci�n de la tabla PaymentType
CREATE TABLE PaymentType (
    -- Tipos de pago:
    --   - Efectivo
    --   - Transferencia
    id INT PRIMARY KEY IDENTITY,
    payment_type VARCHAR(20)
);

-- Creaci�n de la tabla Bill
CREATE TABLE Bill (
    -- La factura asociadaa un cliente, esta (la factura) tiene un estado, se cancel� con un tipo de pago y fue facturada con una moneda en espec�fico
	id INT PRIMARY KEY IDENTITY,
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
	FOREIGN KEY (customer_name) REFERENCES Customer (id),
	FOREIGN KEY (id_month) REFERENCES Month (id),
	FOREIGN KEY (id_year) REFERENCES Year (id),
	FOREIGN KEY (id_bill_state) REFERENCES Bill_state (id),
	FOREIGN KEY (id_currency_type) REFERENCES CurrencyType (id),
	FOREIGN KEY (id_payment_type) REFERENCES PaymentType (id)
);

-- Creaci�n de la tabla Sale
CREATE TABLE Sale (
    -- Cada venta est� asociada a una factura y un producto (el que fue vendido)
    id INT PRIMARY KEY IDENTITY,
    id_bill INT,
    id_products INT,
    amount_products INT,
    price_at_moment FLOAT,
    total_sale FLOAT,
    FOREIGN KEY (id_bill) REFERENCES Bill (id),
    FOREIGN KEY (id_products) REFERENCES Products (id)
);

-- Creaci�n de la tabla User
CREATE TABLE [User] (
    -- Tabla para almacenar la informaci�n de los usuarios del sistema
    id INT PRIMARY KEY IDENTITY,
    username NVARCHAR(150),
    password NVARCHAR(128),
    first_name NVARCHAR(30),
    last_name NVARCHAR(150),
    email NVARCHAR(254),
    is_staff BIT,
    is_active BIT,
    is_superuser BIT,
    last_login DATETIME,
    date_joined DATETIME
);

-- Creaci�n de la tabla Group
CREATE TABLE [Group] (
    -- Tabla para almacenar los grupos de usuarios
    id INT PRIMARY KEY IDENTITY,
    name NVARCHAR(150)
);

-- Creaci�n de la tabla Membership
CREATE TABLE Membership (
    -- Tabla de relaci�n para establecer la pertenencia de los usuarios a los grupos
    user_id INT,
    group_id INT,
    PRIMARY KEY (user_id, group_id),
    FOREIGN KEY (user_id) REFERENCES [User] (id),
    FOREIGN KEY (group_id) REFERENCES [Group] (id)
);




