create TABLE Alumno(
id_alumno NUMBER,
nombre VARCHAR2(30),
apellido VARCHAR2(30),
fecha_nacimiento VARCHAR2(30)
);


INSERT INTO Alumno(id_alumno,nombre,apellido,fecha_nacimiento) VALUES(1,'Pablo', 'Hernandaz Mata', '1995-03-14');
INSERT INTO Alumno(id_alumno,nombre,apellido,fecha_nacimiento) VALUES(2,'Jeremias', 'Santo Lote', '1993-07-12');
INSERT INTO Alumno(id_alumno,nombre,apellido,fecha_nacimiento) VALUES(3,'Teresa', 'Lomas Trillo', '1989-06-19');
INSERT INTO Alumno(id_alumno,nombre,apellido,fecha_nacimiento) VALUES(4,'Marta', 'Fuego Garcia', '1992-11-23');
INSERT INTO Alumno(id_alumno,nombre,apellido,fecha_nacimiento) VALUES(5,'Sergio', 'Ot Dirmet', '1991-04-21');
INSERT INTO Alumno(id_alumno,nombre,apellido,fecha_nacimiento) VALUES(6,'Carmen', 'Dilma Perna', '1987-12-04');

select * from Alumno;

create TABLE Cursos(
id_curso NUMBER,
titulo VARCHAR2(30),
id_profe  NUMBER NULL
);


INSERT INTO Cursos(id_curso,titulo,id_profe) VALUES(1,'Progamacion PHP', 3);
INSERT INTO Cursos(id_curso,titulo,id_profe) VALUES(2,'Modelo abstracto de datos', 3);
INSERT INTO Cursos(id_curso,titulo,id_profe) VALUES(3,'SQL desde cero', 1);
INSERT INTO Cursos(id_curso,titulo,id_profe) VALUES(4,'Dibujo tecnico', 2);
INSERT INTO Cursos(id_curso,titulo) VALUES(5,'SQL avanzado');

select * from Cursos;

create TABLE Alumno_Cursos(
id_alumno NUMBER,
id_curso NUMBER
);
drop table Alumno_Cursos;

INSERT INTO Alumno_Cursos(id_alumno,id_curso) VALUES(1,1);
INSERT INTO Alumno_Cursos(id_alumno,id_curso) VALUES(3,1);
INSERT INTO Alumno_Cursos(id_alumno,id_curso) VALUES(5,1);
INSERT INTO Alumno_Cursos(id_alumno,id_curso) VALUES(4,2);
INSERT INTO Alumno_Cursos(id_alumno,id_curso) VALUES(1,3);
INSERT INTO Alumno_Cursos(id_alumno,id_curso) VALUES(5,3);
INSERT INTO Alumno_Cursos(id_alumno,id_curso) VALUES(2,4);
INSERT INTO Alumno_Cursos(id_alumno,id_curso) VALUES(6,4);

select * from Alumno_Cursos;

create TABLE Profesores(
id_profe NUMBER,
nombre VARCHAR2(30),
apellido VARCHAR2(30),
fecha_nacimiento VARCHAR2(30)
);


INSERT INTO Profesores(id_profe,nombre,apellido,fecha_nacimiento) VALUES(1,'Federico','Gasca Daza','1975-04-23');
INSERT INTO Profesores(id_profe,nombre,apellido,fecha_nacimiento) VALUES(2, 'Ana', 'Saura Trenzo','1969-08-02');
INSERT INTO Profesores(id_profe,nombre,apellido,fecha_nacimiento) VALUES(3,'Rosa','Honrosa Perez','1980-09-05');
INSERT INTO Profesores(id_profe,nombre,apellido,fecha_nacimiento) VALUES(4,'Carlos','Garcia Martinez','1985-05-24');

select * from Profesores;

//------Solititud de datos---------------

select nombre,apellido,id_profe from Cursos cur inner join Profesores prof on cur.id_profe = cur.id_profe;



//----3----

select  distinct(titulo),  distinct(nombre) from cursos,profesores;

select id_profe from Cursos cr full outer  profesores pr on cr.id_profe = pr.id_profe is null;

//---4----

select titulo , nombre, apellido from Cursos, Alumno;



//---5---
select  * from Profesores prof inner join Cursos cur on prof.id_profe = cur.id_profe;



