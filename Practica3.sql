create TABLE Clientes(
nombre VARCHAR2(30),
email VARCHAR2(50),
direccion VARCHAR2(30)
);
INSERT INTO CLIENTES(nombre,email,direccion) VALUES('adan','adanzamudio777@gmail.com','Roman Alvarez Moreno');
INSERT INTO CLIENTES(nombre,email,direccion) VALUES('Ian','ianortiz246@gmail.com','Calle el Jiron');


create TABLE Categoria(
id_categoria NUMBER GENERATED ALWAYS AS IDENTITY PRIMARY KEY,
nombre_categoria VARCHAR(30)
);

INSERT INTO Categoria(nombre_categoria) VALUES('Procutos de limpieza');
INSERT INTO Categoria(nombre_categoria) VALUES('Hogar');


create TABLE Productos(
id_producto NUMBER GENERATED ALWAYS AS IDENTITY PRIMARY KEY,
nombre VARCHAR(30),
precio NUMBER(5,2) null ,
stock NUMBER  null,
cate NUMBER  null
);

INSERT INTO Productos(nombre,cate) VALUES('Toalla de baño',1 );
INSERT INTO Productos(nombre,cate) VALUES('Cuchillo', 2);

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
CONSTRAINT fk_DetallesPedidos FOREIGN KEY(num_pedido) REFERENCES Pedidos(id_pedidos)
);

/*drop TABLE Clientes;
drop TABLE Categoria;
drop TABLE Productos;
drop TABLE Pedidos;
drop TABLE DetallesPedidos;

rollback Clientes;
rollback Categoria;
rollback Productos;
rollback DetallesPedidos;*/



/*select * from Clientes;*/

/*select * from Clientes where (nombre = 'Ian' or nombre ='adan') and direccion='Roman Alvarez Moreno';*/

/*select nombre, email from Clientes
    where nombre = 'Ian' or nombre ='adan';*/
    
/*select nombre||' '|| email from Clientes
    where nombre = 'Ian' or nombre ='adan';*/
    
/*select nombre||' '|| email as NombreCompleto, direccion dir from Clientes
    where nombre = 'Ian' or nombre ='adan';  */
    


select * from Productos, Categoria;





