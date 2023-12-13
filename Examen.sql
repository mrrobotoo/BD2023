INSERT into Clientes(Nombre,Email,Direccion)Values('Oscar','Zam.gmail.com','San luis');
INSERT into Clientes(Nombre,Email,Direccion)Values('Ximena','Xime.gmail.com','San Fernando');
INSERT into Productos(Nombre,Precio,STOCK,CATE)Values('Papas',5,1,1);
INSERT into Categorias(Nombre_Categoria)Values('Alimentos');

Select * from clientes;
Select * from productos,Categorias;
Select * from clientes where Nombre='Ximena';
Select * from clientes where (Nombre='Ximena' or Nombre='Oscar') and Direccion='San Luis';

Select nombre ||',' || email from clientes  where (Nombre='Ximena' or Nombre='Oscar');

--Alias
Select nombre ||',' || email as NombreCompleto , direccion  Direccion from clientes  where (Nombre='Ximena' or Nombre='Oscar');

CREATE table Clientes(
Id_Clientes NUMBER GENERATED ALWAYS AS IDENTITY PRIMARY KEY,
Nombre VARCHAR2(30) NOT NULL,
Email VARCHAR2(30)NOT NULL,
Direccion VARCHAR(30)NOT NULL
);

CREATE table Categorias(
Id_Categoria NUMBER GENERATED ALWAYS AS IDENTITY PRIMARY KEY,
Nombre_Categoria VARCHAR(30)NOT NULL
);

CREATE table Productos(
Id_Productos NUMBER GENERATED ALWAYS AS IDENTITY PRIMARY KEY,
Nombre VARCHAR2(30)NOT NULL,
Precio NUMBER(3,2),
STOCK NUMBER,
CATE NUMBER,
CONSTRAINT fk_Productos FOREIGN KEY(CATE)REFERENCES Categorias(Id_Categoria)
);

CREATE table Pedidos(
Id_Pedido NUMBER GENERATED ALWAYS AS IDENTITY PRIMARY KEY,
Fecha_pedido DATE,
Cli NUMBER,
CONSTRAINT fk_Pedidos FOREIGN KEY (Cli) REFERENCES Clientes(Id_Clientes)
);

CREATE table DetallesPedidos(
Id_Detalle NUMBER GENERATED ALWAYS AS IDENTITY PRIMARY KEY,
Cantidad NUMBER,
Precio_Unitario NUMBER(3,2),
Produ NUMBER,
Pedi NUMBER,
CONSTRAINT fk_Detalles_Pedidos FOREIGN KEY (Produ) REFERENCES Productos(Id_Productos),
FOREIGN KEY(Pedi)REFERENCES Pedidos(Id_Pedido)
);