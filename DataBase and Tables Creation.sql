--Creacion de la base de datos
create database InventariArte

--Uso de la base de datos
use InventariArte

-----------------------------------------------------------
-----------------------------------------------------------
---------creacion de las tablas y sus relaciones-----------
-----------------------------------------------------------
-----------------------------------------------------------

-- Create Equipment_Category table
CREATE TABLE Equipment_Category (
    id INT PRIMARY KEY IDENTITY,
    name NVARCHAR(500),
    description NVARCHAR(500)
);

-- Create Equipment table
CREATE TABLE Equipment (
    id INT PRIMARY KEY IDENTITY,
    name NVARCHAR(500),
    id_equipment_category INT FOREIGN KEY REFERENCES Equipment_Category(id)
);

-- Create Category table
CREATE TABLE Category (
    id INT PRIMARY KEY IDENTITY,
    name NVARCHAR(500),
    description NVARCHAR(500)
);

-- Create CurrencyType table
CREATE TABLE CurrencyType (
    id INT PRIMARY KEY IDENTITY,
    currency NVARCHAR(50)
);

-- Create Products table
CREATE TABLE Products (
    id INT PRIMARY KEY IDENTITY,
    name NVARCHAR(500),
    description NVARCHAR(500),
    stock INT,
    cost FLOAT,
    price FLOAT,
    currency INT FOREIGN KEY REFERENCES CurrencyType(id),
    category INT FOREIGN KEY REFERENCES Category(id)
);

-- Create Bill_state table
CREATE TABLE Bill_state (
    id INT PRIMARY KEY IDENTITY,
    name NVARCHAR(200)
);

-- Create Month table
CREATE TABLE Month (
    id INT PRIMARY KEY IDENTITY,
    name NVARCHAR(100)
);

-- Create Year table
CREATE TABLE Year (
    id INT PRIMARY KEY IDENTITY,
    name NVARCHAR(100)
);

-- Create TypeCustomer table
CREATE TABLE TypeCustomer (
    id INT PRIMARY KEY IDENTITY,
    customerType NVARCHAR(500)
);

-- Create Customer table
CREATE TABLE Customer (
    id INT PRIMARY KEY IDENTITY,
    full_name NVARCHAR(500),
    customer_Type INT FOREIGN KEY REFERENCES TypeCustomer(id)
);

-- Create PaymentType table
CREATE TABLE PaymentType (
    id INT PRIMARY KEY IDENTITY,
    payment_type NVARCHAR(100)
);

-- Create Sale table
CREATE TABLE Sale (
    id INT PRIMARY KEY IDENTITY,
    productName INT FOREIGN KEY REFERENCES Products(id),
    category INT FOREIGN KEY REFERENCES Category(id),
    price DECIMAL(20, 2),
    amount_products NVARCHAR(10),
    total_sale DECIMAL(20, 2)
);

-- Create Bill table
CREATE TABLE Bill (
    id INT PRIMARY KEY IDENTITY,
    billNumber NVARCHAR(20) UNIQUE,
    customer_name NVARCHAR(500),
    customer_type INT FOREIGN KEY REFERENCES TypeCustomer(id),
    phoneNumber NVARCHAR(9),
    sub_total DECIMAL(20, 2),
    iva DECIMAL(20, 2),
    total DECIMAL(20, 2),
    currency_type INT FOREIGN KEY REFERENCES CurrencyType(id),
    payment_type INT FOREIGN KEY REFERENCES PaymentType(id),
    id_month INT FOREIGN KEY REFERENCES Month(id),
    id_year INT FOREIGN KEY REFERENCES Year(id),
    created_at DATE,
    bill_state INT FOREIGN KEY REFERENCES Bill_state(id)
);

-- Create BillItems table
CREATE TABLE BillItems (
    id INT PRIMARY KEY IDENTITY,
    billNumber NVARCHAR(20),
    sale_id INT FOREIGN KEY REFERENCES Sale(id)
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




