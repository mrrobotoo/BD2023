CREATE TABLE Alumnos(
id_alumno NUMBER GENERATED ALWAYS AS IDENTITY PRIMARY KEY,
Nombre VARCHAR(40),
Apellidos VARCHAR(40),
F_nacimiento VARCHAR(30)
);
INSERT INTO Alumnos(Nombre,Apellidos,F_nacimiento) values ('Pablo','Hernandez Mata','1995-03-14');
INSERT INTO Alumnos(Nombre,Apellidos,F_nacimiento) values ('Jeremias','Santo Lote','1993-07-12');
INSERT INTO Alumnos(Nombre,Apellidos,F_nacimiento) values ('Teresa','Lomas Trillo','1989-06-19');
INSERT INTO Alumnos(Nombre,Apellidos,F_nacimiento) values ('Marta','Fuego Garcia','1992-11-23');
INSERT INTO Alumnos(Nombre,Apellidos,F_nacimiento) values ('Sergio','Ot Dirmet','1991-04-21');
INSERT INTO Alumnos(Nombre,Apellidos,F_nacimiento) values ('Pablo','Hernandez Mata','1987-12-04');

CREATE TABLE Profesores(
    id_profe NUMBER GENERATED ALWAYS AS IDENTITY PRIMARY KEY,
    Nombre VARCHAR(35),
    Apellidos VARCHAR(40),
    F_nacimiento VARCHAR(30)
);

INSERT INTO Profesores(Nombre,Apellidos,F_nacimiento) values('Federico','Gasco Daza','1975-04-23');
INSERT INTO Profesores(Nombre,Apellidos,F_nacimiento) values('Ana','Saura Trenzo','1969-08-02');
INSERT INTO Profesores(Nombre,Apellidos,F_nacimiento) values('Rosa','Honrosa Pérez','1980-09-05');
INSERT INTO Profesores(Nombre,Apellidos,F_nacimiento) values('Carlos','García Martinez','1985-05-24');

CREATE TABLE Cursos(
id_curso NUMBER GENERATED ALWAYS AS IDENTITY PRIMARY KEY,
Titulo VARCHAR(40),
id_profe NUMBER,
    
    CONSTRAINT fk_profesores FOREIGN KEY (id_profe) REFERENCES Profesores (id_profe)
);

INSERT INTO Cursos(Titulo,id_profe) values('Programación PHP',3);
INSERT INTO Cursos(Titulo,id_profe) values('Modelo de Abstracción de datos',3);
INSERT INTO Cursos(Titulo,id_profe) values('SQL desde cero',1);
INSERT INTO Cursos(Titulo,id_profe) values('Dibujo técnico',2);
INSERT INTO Cursos(Titulo,id_profe) values('SQL avanzado',null);

CREATE TABLE Alumnos_cursos(
    id_alumno NUMBER,
    id_curso NUMBER,

    CONSTRAINT fk_Alumnos FOREIGN KEY (id_alumno) REFERENCES Alumnos(id_alumno),
    CONSTRAINT fk_Cursos FOREIGN KEY (id_curso) REFERENCES Cursos(id_curso)
);

INSERT INTO Alumnos_cursos(id_alumno,id_curso) values (1,1);
INSERT INTO Alumnos_cursos(id_alumno,id_curso) values (3,1);
INSERT INTO Alumnos_cursos(id_alumno,id_curso) values (5,1);
INSERT INTO Alumnos_cursos(id_alumno,id_curso) values (4,2);
INSERT INTO Alumnos_cursos(id_alumno,id_curso) values (1,3);
INSERT INTO Alumnos_cursos(id_alumno,id_curso) values (5,3);
INSERT INTO Alumnos_cursos(id_alumno,id_curso) values (2,4);
INSERT INTO Alumnos_cursos(id_alumno,id_curso) values (6,4);

--Consulta No.1--
select * from Cursos Cur, Profesores Prof where Cur.id_profe = Prof.id_profe;

--Consulta No.2--
select * from Cursos C LEFT JOIN Profesores P ON C.id_profe = P.id_profe;

--Consulta No.3--
Select C.Titulo AS Curso, COUNT(AC.id_alumno) AS Alumnos, COUNT(*) AS Registros from Cursos C LEFT JOIN Alumnos_cursos AC
ON C.id_curso = AC.id_curso Group by C.Titulo;

--Consulta No.4--
Select C.Titulo AS Curso, A.nombre, A.Apellidos from Cursos C 
LEFT JOIN Alumnos_cursos AC ON C.id_curso = AC.id_curso
LEFT JOIN Alumnos A ON AC.id_alumno = A.id_alumno;

--Consulta No.5--
Select P.Nombre, P.Apellidos, COUNT(C.id_curso) AS Cursos from Profesores P
INNER JOIN Cursos C ON P.id_profe = C.id_profe GROUP BY P.Nombre, P.Apellidos;