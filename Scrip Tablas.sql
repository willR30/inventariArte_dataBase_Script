
CREATE TABLE Equipment_Category (
  id INT PRIMARY KEY IDENTITY(1,1),
  name VARCHAR(30) NOT NULL,
  description VARCHAR(200)
)

CREATE TABLE Equipment (
  id INT PRIMARY KEY IDENTITY(1,1),
  name VARCHAR(30) NOT NULL,
  id_equipment_category INT NOT NULL,
  FOREIGN KEY (id_equipment_category) REFERENCES Equipment_Category(id) ON DELETE CASCADE
);

CREATE TABLE Category (
  id INT PRIMARY KEY IDENTITY(1,1),
  name VARCHAR(30) NOT NULL,
  description VARCHAR(200)
);

CREATE TABLE Products (
  id INT PRIMARY KEY IDENTITY(1,1),
  name VARCHAR(30) NOT NULL,
  description VARCHAR(200),
  stock INT NOT NULL,
  cost FLOAT NOT NULL,
  price FLOAT NOT NULL,
  id_category INT NOT NULL,
  FOREIGN KEY (id_category) REFERENCES Category(id) ON DELETE CASCADE
);

CREATE TABLE Bill_state (
  id INT PRIMARY KEY IDENTITY(1,1),
  name VARCHAR(10) NOT NULL
);

CREATE TABLE Month (
  id INT PRIMARY KEY IDENTITY(1,1),
  name VARCHAR(30) NOT NULL
);

CREATE TABLE Year (
  id INT PRIMARY KEY IDENTITY(1,1),
  name VARCHAR(30) NOT NULL
);

CREATE TABLE Bill (
  id INT PRIMARY KEY IDENTITY(1,1),
  date DATE NOT NULL,
  customer_name VARCHAR(50) NOT NULL,
  sub_total FLOAT NOT NULL,
  iva FLOAT NOT NULL,
  total FLOAT NOT NULL,
  id_month INT NOT NULL,
  id_year INT NOT NULL,
  id_bill_state INT NOT NULL,
  FOREIGN KEY (id_month) REFERENCES Month(id) ON DELETE CASCADE,
  FOREIGN KEY (id_year) REFERENCES Year(id) ON DELETE CASCADE,
  FOREIGN KEY (id_bill_state) REFERENCES Bill_state(id) ON DELETE CASCADE
);

CREATE TABLE Sale (
  id INT PRIMARY KEY IDENTITY(1,1),
  id_bill INT NOT NULL,
  id_products INT NOT NULL,
  amount_products INT NOT NULL,
  price_at_moment FLOAT NOT NULL,
  total_sale FLOAT NOT NULL,
  FOREIGN KEY (id_bill) REFERENCES Bill(id) ON DELETE CASCADE,
  FOREIGN KEY (id_products) REFERENCES Products(id) ON DELETE CASCADE
);