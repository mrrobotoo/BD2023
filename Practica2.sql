
CREATE table ESTUDIANTES(
IDESTUDI NUMBER GENERATED ALWAYS AS IDENTITY PRIMARY KEY,
Nombre VARCHAR2(30) NOT NULL,
Direccion VARCHAR2(20) NOT NULL
);

INSERT into ESTUDIANTES(Nombre,Direccion)VALUES('Ximena','San manuel');
INSERT into ESTUDIANTES(Nombre,Direccion)VALUES('Oscar','SanLuis');
INSERT into ESTUDIANTES(Nombre,Direccion)VALUES('Julian','San Marcos');
INSERT into ESTUDIANTES(Nombre,Direccion)VALUES('Javier','Providencia');
INSERT into ESTUDIANTES(Nombre,Direccion)VALUES('Choco','Manuel dublan');

DROP table ESTUDIANTES;

SELECT * FROM Estudiantes

CREATE TABLE CURSOS (
IDCURSO NUMBER GENERATED ALWAYS AS IDENTITY PRIMARY KEY,
NOMBRE VARCHAR2 (30) NOT NULL,
CODIGO_CURSO VARCHAR2(30) NOT NULL
);

INSERT into CURSOS(Nombre,Codigo_Curso)VALUES('Ximena','774574');
INSERT into CURSOS(Nombre,Codigo_Curso)VALUES('Oscar','5662525');
INSERT into CURSOS(Nombre,Codigo_Curso)VALUES('Julian','5a5sd4');
INSERT into CURSOS(Nombre,Codigo_Curso)VALUES('Javier','9asdA4');
INSERT into CURSOS(Nombre,Codigo_Curso)VALUES('Choco','598aD');

CREATE TABLE PROFESORES (
IDPROF NUMBER GENERATED ALWAYS AS IDENTITY PRIMARY KEY,
NOMBRE VARCHAR2 (30) NOT NULL,
ESPECIALIDAD VARCHAR2 (30) NOT NULL
);

INSERT into PROFESORES(Nombre,ESPECIALIDAD)VALUES('Ruhal','ING.SOFTWARE');
INSERT into PROFESORES(Nombre,ESPECIALIDAD)VALUES('Kevin','ING.SOFTWARE');
INSERT into PROFESORES(Nombre,ESPECIALIDAD)VALUES('Silvia','ING.SOFTWARE');

CREATE table Inscripciones(
Id_Inscripciones NUMBER GENERATED ALWAYS AS IDENTITY PRIMARY KEY,
ESTUDIANTES_ID NUMBER,
CURSOS_ID NUMBER,
CONSTRAINT fk_Inscripciones FOREIGN KEY (ESTUDIANTES_ID) REFERENCES ESTUDIANTES(IDESTUDI),
FOREIGN KEY (CURSOS_ID) REFERENCES CURSOS(IDCURSO)
);

INSERT into Inscripciones(ESTUDIANTES_ID,CURSOS_ID)VALUES(1,1);
INSERT into Inscripciones(ESTUDIANTES_ID,CURSOS_ID)VALUES(2,1);
INSERT into Inscripciones(ESTUDIANTES_ID,CURSOS_ID)VALUES(3,2);
INSERT into Inscripciones(ESTUDIANTES_ID,CURSOS_ID)VALUES(4,2);
INSERT into Inscripciones(ESTUDIANTES_ID,CURSOS_ID)VALUES(5,2);
INSERT into Inscripciones(ESTUDIANTES_ID,CURSOS_ID)VALUES(6,3);


CREATE table Calificaciones(
Id_Calificaciones NUMBER GENERATED ALWAYS AS IDENTITY PRIMARY KEY,
ESTUDIANTES_ID NUMBER,
CURSOS_ID NUMBER,
PROFESORES_ID NUMBER,
NOTA NUMBER(2,1),
CONSTRAINT fk_Calificaciones FOREIGN KEY(ESTUDIANTES_ID)REFERENCES ESTUDIANTES(IDESTUDI),
FOREIGN KEY (CURSOS_ID) REFERENCES CURSOS(IDCURSO),
FOREIGN KEY(PROFESORES_ID)REFERENCES PROFESORES(IDPROF)
);

INSERT into Calificaciones(ESTUDIANTES_ID,CURSOS_ID,PROFESORES_ID,NOTA)VALUES(1,2,3,9.8);
INSERT into Calificaciones(ESTUDIANTES_ID,CURSOS_ID,PROFESORES_ID,NOTA)VALUES(2,3,2,10);
INSERT into Calificaciones(ESTUDIANTES_ID,CURSOS_ID,PROFESORES_ID,NOTA)VALUES(3,2,1,5);
INSERT into Calificaciones(ESTUDIANTES_ID,CURSOS_ID,PROFESORES_ID,NOTA)VALUES(4,3,2,7.8);
INSERT into Calificaciones(ESTUDIANTES_ID,CURSOS_ID,PROFESORES_ID,NOTA)VALUES(5,2,2,8.8);