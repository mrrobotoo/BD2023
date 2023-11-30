--Base
Create table Alumnos(
Id_Alumno NUMBER GENERATED ALWAYS AS IDENTITY PRIMARY KEY,
Nombre varchar2(30),
Apellidos varchar2(30),
Fecha_Nacimiento DATE
);
INSERT into Alumnos(Nombre,Apellidos,Fecha_Nacimiento)Values('Pablo','Hernandez Mata',DATE '1995-03-14');
INSERT into Alumnos(Nombre,Apellidos,Fecha_Nacimiento)Values('Jeremias','Santo Lote',DATE '1993-07-12');
INSERT into Alumnos(Nombre,Apellidos,Fecha_Nacimiento)Values('Teresa','Lomas Trillo',DATE '1989-06-19');
INSERT into Alumnos(Nombre,Apellidos,Fecha_Nacimiento)Values('Marta','Fuego garcia',DATE '1992-11-23');
INSERT into Alumnos(Nombre,Apellidos,Fecha_Nacimiento)Values('Sergio','Ot Dirmet',DATE '1991-04-21');
INSERT into Alumnos(Nombre,Apellidos,Fecha_Nacimiento)Values('Carmen','Dilma Perna',DATE '1987-12-04');



Create table Profesores(
ID_Profe NUMBER GENERATED ALWAYS AS IDENTITY PRIMARY KEY,
Nombre VARCHAR2(30),
Apellidos VARCHAR2(30),
Fecha_Nacimiento DATE
);

INSERT into Profesores(Nombre,Apellidos,Fecha_Nacimiento)Values('Federico','Gasco Daza',DATE'1975-04-23');
INSERT into Profesores(Nombre,Apellidos,Fecha_Nacimiento)Values('Ana','Saura Trenzo',DATE'1969-08-02');
INSERT into Profesores(Nombre,Apellidos,Fecha_Nacimiento)Values('Rosa','Honrosa Perez',DATE'1980-09-05');
INSERT into Profesores(Nombre,Apellidos,Fecha_Nacimiento)Values('Carlos','Garcia Martinez',DATE'1985-05-24');

Create table Cursos(
Id_Curso NUMBER GENERATED ALWAYS AS IDENTITY PRIMARY KEY,
Titulo VARCHAR2(30),
ID_Profe NUMBER,
CONSTRAINT fk_Cursos FOREIGN KEY (ID_Profe) REFERENCES Profesores(ID_Profe)
);

INSERT into Cursos(Titulo,ID_Profe)Values('ProgramacionPHP',3);
INSERT into Cursos(Titulo,ID_Profe)Values('Modelos Abstractos de Datos',3);
INSERT into Cursos(Titulo,ID_Profe)Values('SQL desde Cero',1);
INSERT into Cursos(Titulo,ID_Profe)Values('Dibujo Tecnico',2);
INSERT into Cursos(Titulo)Values('SQL avanzado');


Create table Alumnos_Cursos(
Alumnos NUMBER,
Curso NUMBER,
CONSTRAINT fk_Alumnos_Cursos FOREIGN KEY (Alumnos) REFERENCES Alumnos(Id_Alumno),
FOREIGN KEY (Curso) REFERENCES Cursos(Id_Curso)
);


INSERT into Alumnos_Cursos(Alumnos,Curso)Values(4,1);
INSERT into Alumnos_Cursos(Alumnos,Curso)Values(5,2);
INSERT into Alumnos_Cursos(Alumnos,Curso)Values(6,4);
INSERT into Alumnos_Cursos(Alumnos,Curso)Values(4,5);
INSERT into Alumnos_Cursos(Alumnos,Curso)Values(5,5);
INSERT into Alumnos_Cursos(Alumnos,Curso)Values(7,4);

Select Cursos.*,Profesores.*
FROM Cursos
JOIN PROFESORES ON Cursos.ID_Profe=Profesores.ID_Profe;

Select Cursos.*,Profesores.*
FROM Cursos
JOIN PROFESORES ON Cursos.ID_Profe=Profesores.ID_Profe;

Select Cursos.Titulo,Alumnos.Nombre,Alumnos.Apellidos
FROM Cursos
INNER JOIN Alumnos on Cursos.id=Cursos.id;