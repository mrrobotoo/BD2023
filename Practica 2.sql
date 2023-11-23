create TABLE Alumnos (
Id_estudiantes NUMBER GENERATED ALWAYS AS IDENTITY PRIMARY KEY,
nombre VARCHAR(30),
Direccion varchar(30)
);

INSERT INTO Alumnos(nombre, direccion) VALUES('Julio','Calle primera');
INSERT INTO Alumnos(nombre, direccion) VALUES('Carlos','San Luis');
INSERT INTO Alumnos(nombre, direccion) VALUES('Marcos','Morelos 202');
INSERT INTO Alumnos(nombre, direccion) VALUES('Jess','Ocampo 207');
INSERT INTO Alumnos(nombre, direccion) VALUES('Silvia','San Felipe de las Torres');

drop Table Alumnos;

create TABLE Cursos (
ID_cursos NUMBER GENERATED ALWAYS AS IDENTITY PRIMARY KEY,
nombre VARCHAR(30),
codigo VARCHAR(30)
);
INSERT INTO Cursos(nombre, codigo) VALUES('PYTHON','74123');
INSERT INTO Cursos(nombre, codigo) VALUES('Matematicas','96321');
INSERT INTO Cursos(nombre, codigo) VALUES('Español','3214');
INSERT INTO Cursos(nombre, codigo) VALUES('Ciencias Naturales','98745');
INSERT INTO Cursos(nombre, codigo) VALUES('Biologia','15987');

create TABLE Profesores (
Id_profesores NUMBER GENERATED ALWAYS AS IDENTITY PRIMARY KEY,
Nombre VARCHAR(45),
Especialidad VARCHAR(30)
);

INSERT INTO Profesores(Nombre, Especialidad) VALUES('Sebastian','Python');
INSERT INTO Profesores(Nombre, Especialidad) VALUES('Emannuelk','Matematicas');
INSERT INTO Profesores(Nombre, Especialidad) VALUES('Lucia','Español');


create TABLE Inscripciones (
Id_inscripciones NUMBER GENERATED ALWAYS AS IDENTITY PRIMARY KEY,
Estudiantes NUMBER NOT NULL,
Curso NUMBER NOT NULL,
CONSTRAINT fk_Inscripciones FOREIGN KEY (Estudiantes)REFERENCES Alumnos (Id_estudiantes),
FOREIGN KEY (Curso) REFERENCES Cursos (ID_cursos)
);

INSERT INTO Inscripciones(Estudiantes,Curso) VALUES(1,3);
INSERT INTO Inscripciones(Estudiantes,Curso) VALUES(2,4);
INSERT INTO Inscripciones(Estudiantes,Curso) VALUES(3,1);
INSERT INTO Inscripciones(Estudiantes,Curso) VALUES(4,2);
INSERT INTO Inscripciones(Estudiantes,Curso) VALUES(5,5);
INSERT INTO Inscripciones(Estudiantes,Curso) VALUES(1,3);
INSERT INTO Inscripciones(Estudiantes,Curso) VALUES(2,4);
INSERT INTO Inscripciones(Estudiantes,Curso) VALUES(3,1);
INSERT INTO Inscripciones(Estudiantes,Curso) VALUES(4,2);
INSERT INTO Inscripciones(Estudiantes,Curso) VALUES(5,5);
DROP TABLE Inscripciones

create TABLE CALIFICACIONES (
id_nota NUMBER GENERATED ALWAYS AS IDENTITY PRIMARY KEY,
estudiante_id NUMBER,
curso_id NUMBER,
profe_id NUMBER,
Calificacion NUMBER(4,2),

FOREIGN KEY (estudiante_id)
REFERENCES Alumnos (Id_estudiantes),

FOREIGN KEY (curso_id)
REFERENCES Cursos (ID_cursos),

FOREIGN KEY (profe_id)
REFERENCES Profesores (Id_profesores)
);

INSERT into CALIFICACIONES(estudiante_id,curso_id,profe_id,Calificacion)Values(1,3,3,6.6);
INSERT into CALIFICACIONES(estudiante_id,curso_id,profe_id,Calificacion)Values(2,2,1,5.0);
INSERT into CALIFICACIONES(estudiante_id,curso_id,profe_id,Calificacion)Values(3,1,2,9.1);
INSERT into CALIFICACIONES(estudiante_id,curso_id,profe_id,Calificacion)Values(4,4,1,8.5);
INSERT into CALIFICACIONES(estudiante_id,curso_id,profe_id,Calificacion)Values(5,2,1,9.9);
INSERT into CALIFICACIONES(estudiante_id,curso_id,profe_id,Calificacion)Values(1,3,3,8.5);
INSERT into CALIFICACIONES(estudiante_id,curso_id,profe_id,Calificacion)Values(2,2,2,4.5);
INSERT into CALIFICACIONES(estudiante_id,curso_id,profe_id,Calificacion)Values(3,1,2,5.9);
INSERT into CALIFICACIONES(estudiante_id,curso_id,profe_id,Calificacion)Values(4,4,3,10.0);

rollback;
select * from Alumnos;
select * from Cursos;
select * from Profesores;
select * from Inscripciones;
select * from CALIFICACIONES;