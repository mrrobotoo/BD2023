create TABLE Alumnos (
Id_estudiantes NUMBER GENERATED ALWAYS AS IDENTITY PRIMARY KEY,
nombre VARCHAR(30),
Direccion varchar(30)
);

INSERT INTO Alumnos(nombre, direccion) VALUES('Josias Puga','Av. Santa Esmeralda');
INSERT INTO Alumnos(nombre, direccion) VALUES('Carlos Santa Ana','Paseos de Chavarria');
INSERT INTO Alumnos(nombre, direccion) VALUES('Zuri Ruiz','Volcan el chinchon');
INSERT INTO Alumnos(nombre, direccion) VALUES('Regina Figueroa','Calle 1 de Julio');
INSERT INTO Alumnos(nombre, direccion) VALUES('Erick Roldan','Juan C Doria');


create TABLE Cursos (
ID_cursos NUMBER GENERATED ALWAYS AS IDENTITY PRIMARY KEY,
nombre VARCHAR(30),
codigo VARCHAR(30)
);
INSERT INTO Cursos(nombre, codigo) VALUES('Calculo Cuantico','38579');
INSERT INTO Cursos(nombre, codigo) VALUES('Ingles','104578');
INSERT INTO Cursos(nombre, codigo) VALUES('Comprension Lectora','4i56');
INSERT INTO Cursos(nombre, codigo) VALUES('Base de datos','346590');
INSERT INTO Cursos(nombre, codigo) VALUES('Quimica','120947');

create TABLE Profesores (
Id_profesores NUMBER GENERATED ALWAYS AS IDENTITY PRIMARY KEY,
Nombre VARCHAR(45),
Especialidad VARCHAR(30)
);

INSERT INTO Profesores(Nombre, Especialidad) VALUES('Rafael Hernandez','C++');
INSERT INTO Profesores(Nombre, Especialidad) VALUES('Sebastian','Diseño Digital');
INSERT INTO Profesores(Nombre, Especialidad) VALUES('Adriana','Microservicios');


create TABLE Inscripciones (
Id_inscripciones NUMBER GENERATED ALWAYS AS IDENTITY PRIMARY KEY,
Estudiantes NUMBER NOT NULL,
Curso NUMBER NOT NULL,
CONSTRAINT fk_Inscripciones FOREIGN KEY (Estudiantes)REFERENCES Alumnos (Id_estudiantes),
FOREIGN KEY (Curso) REFERENCES Cursos (ID_cursos)
);

INSERT INTO Inscripciones(Estudiantes,Curso) VALUES(1,2);
INSERT INTO Inscripciones(Estudiantes,Curso) VALUES(1,1);
INSERT INTO Inscripciones(Estudiantes,Curso) VALUES(4,3);
INSERT INTO Inscripciones(Estudiantes,Curso) VALUES(4,4);
INSERT INTO Inscripciones(Estudiantes,Curso) VALUES(3,2);
INSERT INTO Inscripciones(Estudiantes,Curso) VALUES(5,1);
INSERT INTO Inscripciones(Estudiantes,Curso) VALUES(4,2);
INSERT INTO Inscripciones(Estudiantes,Curso) VALUES(1,3);
INSERT INTO Inscripciones(Estudiantes,Curso) VALUES(4,5);
INSERT INTO Inscripciones(Estudiantes,Curso) VALUES(5,3);

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

INSERT into CALIFICACIONES(estudiante_id,curso_id,profe_id,Calificacion)Values(4,4,1,10.0);
INSERT into CALIFICACIONES(estudiante_id,curso_id,profe_id,Calificacion)Values(1,3,3,7.0);
INSERT into CALIFICACIONES(estudiante_id,curso_id,profe_id,Calificacion)Values(2,2,3,5.8);
INSERT into CALIFICACIONES(estudiante_id,curso_id,profe_id,Calificacion)Values(3,1,2,9.9);
INSERT into CALIFICACIONES(estudiante_id,curso_id,profe_id,Calificacion)Values(5,2,2,6.0);
INSERT into CALIFICACIONES(estudiante_id,curso_id,profe_id,Calificacion)Values(3,4,3,7.2);
INSERT into CALIFICACIONES(estudiante_id,curso_id,profe_id,Calificacion)Values(1,1,3,8.7);
INSERT into CALIFICACIONES(estudiante_id,curso_id,profe_id,Calificacion)Values(4,2,1,5.0);
INSERT into CALIFICACIONES(estudiante_id,curso_id,profe_id,Calificacion)Values(5,3,1,10.0);

select * from Alumnos;
select * from Cursos;
select * from Profesores;
select * from Inscripciones;
select * from CALIFICACIONES;