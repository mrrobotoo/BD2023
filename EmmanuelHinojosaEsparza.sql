create table Alumnos (
Alumno_id NUMBER PRIMARY KEY,
Nombre varchar(30),
Apellidos varchar (30),
F_Nacimiento varchar(20)
);

INSERT INTO Alumnos (Alumno_id, Nombre, Apellidos,F_Nacimiento) VALUES (Pablo ,HernandezMata, 1995-03-14);
INSERT INTO Alumnos (Alumno_id, Nombre, Apellidos,F_Nacimiento) VALUES (Jeremias ,SantoLote, 1993-07-12);
INSERT INTO Alumnos (Alumno_id, Nombre, Apellidos,F_Nacimiento) VALUES (Teresa ,LomasTrillo, 1989-06-19);
INSERT INTO Alumnos (Alumno_id, Nombre, Apellidos,F_Nacimiento) VALUES (Marta ,FuegoGarcia, 1992-11-23);
INSERT INTO Alumnos (id_Alumno, Nombre, Apellidos,F_Nacimiento) VALUES (Sergio ,OtDirmet, 1991-04-21);
INSERT INTO Alumnos (id_Alumno, Nombre, Apellidos,F_Nacimiento) VALUES (Carmen ,DilmaPerna, 1987-12-04);


create table Profesores (
id_profe NUMBER  PRIMARY KEY,
Nombre varchar (30),
Apellidos varchar (30),
F_Nacimiento varchar(20)
);


INSERT INTO Alumnos (id_Profe, Nombre, Apellidos, F_Nacimiento) VALUES(1, Federico,GascoDaza, 1975-04-23);
INSERT INTO Alumnos (id_Profe, Nombre, Apellidos, F_Nacimiento) VALUES(2, Ana,SauraTrenzo, 1969-08-02);
INSERT INTO Alumnos (id_Profe, Nombre, Apellidos, F_Nacimiento) VALUES(3, Rosa, HonrosaPerez, 1980-09-05);
INSERT INTO Alumnos (id_Profe, Nombre, Apellidos, F_Nacimiento) VALUES(3, Carlos, GarciaMartinez, 1985-05-24);

create table Cursos(
Titulo varchar(20),
Rel_curso number,
Rel_prof number,

constraint fk_idCursos
foreign key (Rel_curso)
references Cursos_alum(Cursos_id),

constraint fk_id_profe
foreign key (Rel_prof)
references profesores(id_profe)
);

INSERT INTO Cursos (idCursos, Titulo, id_Profe) VALUES (ProgramacionPHP);
INSERT INTO Cursos (idCursos, Titulo, id_Profe) VALUES (ModeladoAbstractoDeDatos);
INSERT INTO Cursos (idCursos, Titulo, id_Profe) VALUES (SQLDesdeCero);
INSERT INTO Cursos (idCursos, Titulo, id_Profe) VALUES (DibujoTecnico);
INSERT INTO Cursos (idCursos, Titulo, id_Profe) VALUES (5,SQLAvanzado);



create table Cursos_Alumnos (
Cursos_id number primary key, 
rel_Alumnos number,
CONSTRAINT fk_id_Alumnos FOREIGN KEY (rel_Alumnos) REFERENCES Alumnos (id_Alumnos)
);


drop table Cursos;
drop table Alumnos;
drop table profesores;
drop table Cursos_Alumnos;

select *from Alumnos;
select *from Cursos;
select *from profesores;
select * from Cursos_Alumnos;

