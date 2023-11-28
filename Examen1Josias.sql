CREATE TABLE Cliente(
id_cliente NUMBER GENERATED ALWAYS AS IDENTITY PRIMARY KEY,
nombre VARCHAR(35),
email VARCHAR(40),
direccion VARCHAR(50)
);
INSERT INTO Cliente(nombre, email, direccion) values('Christofer','chooko162@gmail.com','Calle Abasolo No.202');
INSERT INTO Cliente(nombre, email, direccion) values('Adri','Adri90@gmail.com','Colonia San Luis II');

select * from Cliente where nombre='Christofer' or nombre='Adri';

CREATE TABLE Categorias(
id_categoria NUMBER GENERATED ALWAYS AS IDENTITY PRIMARY KEY,
nombre_categoria VARCHAR(25)
);
INSERT INTO Categorias(nombre_categoria)values('Lacteos');
    
CREATE TABLE Productos(
id_producto NUMBER GENERATED ALWAYS AS IDENTITY PRIMARY KEY,
nombre VARCHAR(40),
precio NUMBER(8,2),
stock NUMBER,
NoCategoria NUMBER,

CONSTRAINT fk_Categoria
FOREIGN KEY (NoCategoria)
REFERENCES Categorias (id_categoria)
);
INSERT INTO Productos(nombre,NoCategoria) values('Lala',1);
select * from Productos, Categorias;

CREATE TABLE Pedidos(
id_pedido NUMBER GENERATED ALWAYS AS IDENTITY PRIMARY KEY,
fecha_pedido date,
id_detallespedido NUMBER,
NoCliente NUMBER,

CONSTRAINT fk_Clientes
FOREIGN KEY (NoCliente)
REFERENCES Cliente(id_cliente)
);

CREATE TABLE DetallesPedidos(
id_detalle NUMBER GENERATED ALWAYS AS IDENTITY PRIMARY KEY,
cantidad NUMBER,
precio_unitario NUMBER(8,2),
NoProducto NUMBER,
NoPedido NUMBER,

CONSTRAINT fk_productos
FOREIGN KEY (NoProducto)
REFERENCES Productos(id_producto),

CONSTRAINT fk_pedidos
FOREIGN KEY (NoPedido)
REFERENCES Pedidos(id_pedido)
);