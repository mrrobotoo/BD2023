create TABLE Clientes(
id_cliente NUMBER GENERATED ALWAYS AS IDENTITY PRIMARY KEY,
nombre VARCHAR(30),
email VARCHAR(30),
direccion VARCHAR(30)
);

create TABLE Categorias (
id_categoria NUMBER GENERATED ALWAYS AS IDENTITY PRIMARY KEY,
    nombre_categoria VARCHAR(30)
);
 
    
create TABLE Productos (
id_producto NUMBER GENERATED ALWAYS AS IDENTITY PRIMARY KEY,
    nombre VARCHAR(30),
    precio NUMBER,
    stock NUMBER,
    id_categoria NUMBER,
    CONSTRAINT fk_Categorias FOREIGN KEY (id_categoria) REFERENCES Categorias(id_categoria)
);

    
create TABLE pedidos (
id_pedido NUMBER GENERATED ALWAYS AS IDENTITY PRIMARY KEY,
    fecha_pedido DATE,
    id_cliente NUMBER,
    CONSTRAINT fk_cliente FOREIGN KEY (id_cliente) REFERENCES Clientes(id_cliente)
);

    
create TABLE DetallesPedidos (
 id_detalle NUMBER GENERATED ALWAYS AS IDENTITY PRIMARY KEY,
    cantidad NUMBER,
    precio_unitario NUMBER,
    id_producto NUMBER,
    id_pedido NUMBER,
    CONSTRAINT fk_Productos FOREIGN KEY (id_producto) REFERENCES Productos(id_producto),
    CONSTRAINT fk_pedido FOREIGN KEY (id_pedido) REFERENCES Pedidos(id_pedido)
);

   

drop TABLE Clientes;
drop TABLE Categorias;
drop TABLE Productos;
drop TABLE Pedidos;
drop TABLE DetallesPedidos;
rollback;


SELECT * FROM USER_CONSTRAINTS WHERE TABLE_NAME = 'CLIENTES';

ALTER TABLE OTRA_TABLA DROP CONSTRAINT NOMBRE_DE_CONSTRAINT;




SELECT * FROM Clientes;
SELECT * FROM Categorias;
SELECT * FROM Productos;
SELECT * FROM Pedidos;
SELECT * FROM DetallesPedidos;