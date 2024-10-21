CREATE DATABASE bakery;
USE bakery;

CREATE TABLE Suppliers (
    id_supplier INT PRIMARY KEY AUTO_INCREMENT,
    name VARCHAR(100) NOT NULL,
    address TEXT,
    contact_info TEXT
);

CREATE TABLE Statuses (
    id_status INT PRIMARY KEY AUTO_INCREMENT,
    name VARCHAR(100) NOT NULL,
    description TEXT
);

CREATE TABLE Products (
    id_product INT PRIMARY KEY AUTO_INCREMENT,
    name VARCHAR(100) NOT NULL,
    description TEXT,
    unit_price DECIMAL(10,2)
);

CREATE TABLE Orders (
    id_order INT PRIMARY KEY AUTO_INCREMENT,
    order_date DATE NOT NULL,
    expected_delivery_date DATE,
    id_supplier INT,
    id_status INT,
    FOREIGN KEY (id_status) REFERENCES Statuses(id_status),
    FOREIGN KEY (id_supplier) REFERENCES Suppliers(id_supplier)
);

CREATE TABLE Order_Items (
    id_order_item INT PRIMARY KEY AUTO_INCREMENT,
    id_order INT,
    id_product INT,
    quantity INT,
    FOREIGN KEY (id_order) REFERENCES Orders(id_order),
    FOREIGN KEY (id_product) REFERENCES Products(id_product)
);
