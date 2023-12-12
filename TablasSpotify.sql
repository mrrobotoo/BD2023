CREATE table ARTIST(
id_Arti NUMBER GENERATED ALWAYS AS IDENTITY PRIMARY KEY,
Nombre_Artista VARCHAR2(30) NOT NULL,
Num_Seguidores NUMBER,
Top_Canciones VARCHAR2(30)
);

CREATE TABLE GENEROS(
id_Genero NUMBER GENERATED ALWAYS AS IDENTITY PRIMARY KEY,
Tipo_Genero VARCHAR2(40)
);

CREATE table USUARIO(
   id_Usuario NUMBER GENERATED ALWAYS AS IDENTITY PRIMARY KEY,
   Nombre_Usuario VARCHAR2(30),
   Email VARCHAR2(30),
   Contra VARCHAR2(15),
   Seguidores number
);

CREATE table Suscripcion(
Id_Suscripcion  NUMBER GENERATED ALWAYS AS IDENTITY PRIMARY KEY,
Tipo_Sub VARCHAR2(20),
Id_Usuario NUMBER,
CONSTRAINT fk_Suscripcion FOREIGN KEY(Id_Usuario)REFERENCES Usuario(id_Usuario)
);

CREATE TABLE SONGS(
id_Songs NUMBER GENERATED ALWAYS AS IDENTITY PRIMARY KEY,
Nombre_Cancion VARCHAR2 (30),
Duracion NUMBER,
id_Genero NUMBER,
id_Arti number,
CONSTRAINT fk_Songs FOREIGN KEY(id_Arti)REFERENCES Artist(id_Arti),
FOREIGN KEY(id_Genero)REFERENCES Generos(id_Genero)
);

CREATE TABLE ALBUMS(
id_Albums NUMBER GENERATED ALWAYS AS IDENTITY PRIMARY KEY,
Nombre_Album VARCHAR2(60),
Fecha_Lanzamiento VARCHAR2 (30),
Duracion number,
id_Artista number,
id_Songs number,

CONSTRAINT fk_albums FOREIGN KEY (id_Artista) REFERENCES ARTIST(id_Arti),
FOREIGN KEY (id_Songs) REFERENCES Songs(id_Songs)
);

CREATE table PLAYLIST(
id_Playlist NUMBER GENERATED ALWAYS AS IDENTITY PRIMARY KEY,
Nombre_Playslist VARCHAR2(40),
Privacidad_Playlist VARCHAR2(30),
Duracion_Playslist NUMBER,
id_Songs NUMBER,

CONSTRAINT fk_Playslist FOREIGN KEY(id_Songs)REFERENCES Songs(id_Songs)
);

CREATE table Playslist_Usuarios(
Id_Playlist_Usuarios NUMBER GENERATED ALWAYS AS IDENTITY PRIMARY KEY,
Nombre_Playslist VARCHAR2(40),
Privacidad_Playlist VARCHAR2(30),
Duracion_Playslist NUMBER,
id_Songs NUMBER,
id_Usua NUMBER,

CONSTRAINT fk_Playslist_Usuarios FOREIGN KEY(id_Songs)REFERENCES Songs(id_Songs),
FOREIGN KEY(id_Usua)REFERENCES Usuario(id_Usuario)
);


