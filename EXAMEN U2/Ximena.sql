CREATE table ALUMNOS(
Id_Alumnos NUMBER GENERATED ALWAYS AS IDENTITY PRIMARY KEY,
Nombre VARCHAR2(30) NOT NULL,
Apellidos VARCHAR2(50)NOT NULL,
Fecha_Naci DATE
);
INSERT INTO ALUMNOS (Nombre,Apellidos,Fecha_Naci) VALUES ('Pablo','Hernandez Mata',DATE '1995-03-14');
INSERT INTO ALUMNOS (Nombre,Apellidos,Fecha_Naci) VALUES ('Jeremias','Santo Lote',DATE '1993-07-12');
INSERT INTO ALUMNOS (Nombre,Apellidos,Fecha_Naci) VALUES ('Teresa','Lomas Trillo',DATE '1989-06-19');
INSERT INTO ALUMNOS (Nombre,Apellidos,Fecha_Naci) VALUES ('Marta','Fuego Garcia',DATE '1992-11-23');
INSERT INTO ALUMNOS (Nombre,Apellidos,Fecha_Naci) VALUES ('Sergio','Ot Dirmet',DATE '1991-04-21');
INSERT INTO ALUMNOS (Nombre,Apellidos,Fecha_Naci) VALUES ('Carmen','Dilma Perna',DATE '1987-12-04');


CREATE table PROFESORES(
Id_PROFES NUMBER GENERATED ALWAYS AS IDENTITY PRIMARY KEY,
Nombre VARCHAR2(30) NOT NULL,
Apellidos VARCHAR2(30)NOT NULL,
Fecha_Naci DATE
);
INSERT INTO PROFESORES (Nombre,Apellidos,Fecha_Naci) VALUES ('Federico','Gasco Daza',DATE '1975-04-23');
INSERT INTO PROFESORES (Nombre,Apellidos,Fecha_Naci) VALUES ('Ana','Saura Trenzo',DATE '196-08-02');
INSERT INTO PROFESORES (Nombre,Apellidos,Fecha_Naci) VALUES ('Rosa','Honrosa Pérez',DATE '1980-09-05');
INSERT INTO PROFESORES (Nombre,Apellidos,Fecha_Naci) VALUES ('Carlos','García Martinez',DATE '1985-05-24');


CREATE table CURSOS(
Id_CURSOS NUMBER GENERATED ALWAYS AS IDENTITY PRIMARY KEY,
TITULO VARCHAR2(30) NOT NULL,
ID_PROFE NUMBER,
CONSTRAINT fk_CURSOS FOREIGN KEY(ID_PROFE)REFERENCES PROFESORES(Id_PROFES)
);
insert into CURSOS (TITULO,ID_PROFE) VALUES('Programacion PHP',3);
insert into CURSOS (TITULO,ID_PROFE) VALUES('Modelos abstracto de datos',3);
insert into CURSOS (TITULO,ID_PROFE) VALUES('SQL desde cero',1);
insert into CURSOS (TITULO,ID_PROFE) VALUES('Dibujo técnico',2);
insert into CURSOS (TITULO) VALUES ('SQL avanzado');

CREATE TABLE ALUMNOS_CURSOS(
ID_ALUM NUMBER,
ID_CURS NUMBER,
CONSTRAINT fk_ALUMNOS_CURSOS FOREIGN KEY (ID_ALUM) REFERENCES ALUMNOS(Id_Alumnos),
FOREIGN KEY (ID_CURS) REFERENCES CURSOS (Id_CURSOS)
);

select p.nombre,c.titulo
from profesores p
JOIN cursos c ON p.id_profes = c.id_profe
JOIN cursos c ON c.id_cursos = c.id_cursos;

select c.TITULO, count(ac.id_Alum) AS CANTIDAD_ALUM
FROM cursos c
LEFT JOIN ALUMNOS_CURSOS ac ON c.id_cursos = ac.id_curs group by c.TITULO;

//Consulta 5
Select p.nombre, count (c.id_cursos) AS cantidad_cursos
FROM profesores p
INNER JOIN Cursos c ON p.id_profes=c.id_profe
GROUP BY p.nombre;


