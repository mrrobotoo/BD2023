create TABLE Clientes(
id_clientes NUMBER GENERATED ALWAYS AS IDENTITY PRIMARY KEY,
nombre VARCHAR(30),
email VARCHAR(50),
direccion VARCHAR(50)
);

INSERT INTO CLIENTES(nombre,email,direccion) VALUES('adan','adanzamudio777@gmail.com','Roman Alvarez Moreno');
INSERT INTO CLIENTES(nombre,email,direccion) VALUES('Ian','ianortiz246@gmail.com','Calle el Jiron');
INSERT INTO CLIENTES(nombre,email,direccion) VALUES('Luis','luisperes@gmail.com','Emiliano Zapata');

create TABLE Categoria(
id_categoria NUMBER GENERATED ALWAYS AS IDENTITY PRIMARY KEY,
nombre_categoria VARCHAR(30)
);

INSERT INTO Categoria(nombre_categoria) VALUES('Procutos de limpieza');
INSERT INTO Categoria(nombre_categoria) VALUES('Hogar');
INSERT INTO Categoria(nombre_categoria) VALUES('Cocina');


create TABLE Productos(
id_producto NUMBER GENERATED ALWAYS AS IDENTITY PRIMARY KEY,
nombre VARCHAR(30),
precio NUMBER(5,2),
stock NUMBER not null
);

INSERT INTO Productos(nombre,precio,stock) VALUES('Toalla de ba�o', 20.0,1);
INSERT INTO Productos(nombre,precio,stock) VALUES('Cuchillo', 100.0,2);
INSERT INTO Productos(nombre,precio,stock) VALUES('Puerta', 300.0,1);

create TABLE Pedidos(
id_pedidos NUMBER GENERATED ALWAYS AS IDENTITY PRIMARY KEY,
fecha_pedido DATE,
num_pedido NUMBER,
CONSTRAINT fk_Pedidos FOREIGN KEY(num_pedido) REFERENCES Clientes(id_clientes)
);



create TABLE DetallesPedidos(
id_detalle NUMBER GENERATED ALWAYS AS IDENTITY PRIMARY KEY,
cantidad NUMBER,
precio_unitario NUMBER (8,2),
num_producto NUMBER,
num_pedido NUMBER,
CONSTRAINT fk_DetallesPedidos FOREIGN KEY(num_producto) REFERENCES Productos(id_producto),
							  FOREIGN KEY(num_pedido) REFERENCES Pedidos(id_pedidos)
);