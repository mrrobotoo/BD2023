--1
CREATE TABLE Clientes (
id_cliente NUMERIC GENERATED ALWAYS AS IDENTITY PRIMARY KEY,
nombre VARCHAR2 (50) NOT NULL, 
email VARCHAR2 (50) NOT NULL,
direcci�n VARCHAR2 (10) NOT NULL

);
--2
CREATE TABLE Categor�as (
id_categor�a NUMERIC GENERATED ALWAYS AS IDENTITY PRIMARY KEY,
nombre_categor�a VARCHAR2 (50) NOT NULL
);
--3
CREATE TABLE Productos (
id_producto NUMERIC GENERATED ALWAYS AS IDENTITY PRIMARY KEY,
nombre VARCHAR2 (50) NOT NULL,
precio NUMBER (10),
stock NUMBER (10),
--- Deber� haber relaciones entre Productos y Categor�as para asignar productos a categor�as.
Categor�as NUMERIC,
CONSTRAINT fk_Categor�as
FOREIGN KEY (Categor�as)
REFERENCES  Categor�as(id_categor�a)
);
--4
CREATE TABLE Pedidos (
id_pedido NUMERIC GENERATED ALWAYS AS IDENTITY PRIMARY KEY,
fecha_pedido DATE,
cliente NUMERIC,
--- Una relaci�n entre Clientes y Pedidos para rastrear los pedidos realizados por cada cliente
CONSTRAINT fk_cliente
FOREIGN KEY (cliente)
REFERENCES Clientes (id_cliente)
);
--5
CREATE TABLE DetallesPedidos (
id_detalle NUMERIC GENERATED ALWAYS AS IDENTITY PRIMARY KEY,
cantidad NUMBER (10),
precio_unitario NUMBER (10),
 --Deber� haber una relaci�n entre Productos y DetallesPedidos para rastrear productos en cada detalle de pedido
 --- Deber� haber relaciones entre DetallesPedidos y Productos para idenNficar qu� productos se incluyen en cada detalle.
Pedidos NUMERIC,
productos NUMERIC,


CONSTRAINT fk_Pedidos
FOREIGN KEY (Pedidos)
REFERENCES Pedidos (id_pedido),

CONSTRAINT fk_productos
FOREIGN KEY (productos)
REFERENCES Productos (id_producto)
);


