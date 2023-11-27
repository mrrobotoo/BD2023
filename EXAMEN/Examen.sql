insert into CLIENTES (Nombre,Email,Direccion) VALUES ('Ximena','emailo@gmail.com','San Luis');
insert into CATEGORIAS (Nombre_Categoria) VALUES ('Bebes');
insert into PRODUCTOS (Nombre,Precio,STOCK,CATE) VALUES ('Shampoo',4,2,1);

insert into CLIENTES (Nombre,Email,Direccion) VALUES ('Cristina','cristi@gmail.com','San Miguel');
CREATE table Clientes(
Id_Clientes NUMBER GENERATED ALWAYS AS IDENTITY PRIMARY KEY,
Nombre VARCHAR2(30) NOT NULL,
Email VARCHAR2(30)NOT NULL,
Direccion VARCHAR(30)NOT NULL
);
 
select * from productos,categorias;             
//and direccion = 'San Miguel';

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
