CREATE TABLE cliente (
    id INT PRIMARY KEY,
    nombre VARCHAR(45),
    apellido VARCHAR(45),
    email VARCHAR(45),
    telefono VARCHAR(45),
    createdAt DATETIME,
    updatedAt DATETIME
);

CREATE TABLE empleado (
    id INT PRIMARY KEY,
    nombre VARCHAR(45),
    apellido VARCHAR(45),
    cargo VARCHAR(45),
    salario DOUBLE,
    createdAt DATETIME,
    updatedAt DATETIME
);

CREATE TABLE categoria (
    id INT PRIMARY KEY,
    nombre VARCHAR(45),
    descripcion VARCHAR(45),
    createdAt DATETIME,
    updatedAt DATETIME
);

CREATE TABLE producto (
    id INT PRIMARY KEY,
    categoria_id1 INT,
    nombre VARCHAR(45),
    precio DOUBLE,
    cantidad INT,
    createdAt DATETIME,
    updatedAt DATETIME,
);

CREATE TABLE detalle_venta (
    id INT PRIMARY KEY,
    producto_id INT,
    cantidad INT,
    precio_unitario DOUBLE,
    createdAt DATETIME,
    updatedAt DATETIME
);

CREATE TABLE venta (
    id INT PRIMARY KEY,
    detalle_venta_id INT,
    cliente_id INT,
    empleado_id INT,
    num_venta VARCHAR(45),
    metodo_pago VARCHAR(45),
    createdAt DATETIME,
    updatedAt DATETIME,
);
