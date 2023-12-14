/* TABLAS*/

CREATE TABLE ARTIST(
ID_ARTI NUMBER GENERATED ALWAYS AS IDENTITY PRIMARY KEY,
NOMBRE_ARTISTA VARCHAR2(50) NOT NULL,
NUM_SEGUIDORES NUMBER(20,0),
ULTIMO_SEN VARCHAR2(50)
);


CREATE TABLE GENEROS(
ID_GENERO NUMBER GENERATED ALWAYS AS IDENTITY PRIMARY KEY,
TIPO_GENERO VARCHAR2(40)
);


CREATE TABLE USUARIO(
   ID_USUARIO NUMBER GENERATED ALWAYS AS IDENTITY PRIMARY KEY,
   NOMBRE_USUARIO VARCHAR2(40),
   EMAIL VARCHAR2(40),
   CONTRA VARCHAR2(20),
   SEGUIDORES NUMBER
);


CREATE TABLE SUSCRIPCION(
ID_SUSCRIPCION  NUMBER GENERATED ALWAYS AS IDENTITY PRIMARY KEY,
TIPO_SUB VARCHAR2(50),
ID_USUARIO NUMBER,
CONSTRAINT FK_SUSCRIPCION FOREIGN KEY(ID_USUARIO)REFERENCES USUARIO(ID_USUARIO)
);


CREATE TABLE SONGS(
ID_SONGS NUMBER GENERATED ALWAYS AS IDENTITY PRIMARY KEY,
NOMBRE_CANCION VARCHAR2 (50),
DURACION NUMBER,
ID_GENERO NUMBER,
ID_ARTI NUMBER,
CONSTRAINT FK_SONGS FOREIGN KEY(ID_ARTI)REFERENCES ARTIST(ID_ARTI),
FOREIGN KEY(ID_GENERO)REFERENCES GENEROS(ID_GENERO)
);


CREATE TABLE ALBUMS(
ID_ALBUMS NUMBER GENERATED ALWAYS AS IDENTITY PRIMARY KEY,
NOMBRE_ALBUM VARCHAR2(60),
FECHA_LANZAMIENTO date,
DURACION NUMBER(4,2),
ID_ARTISTA NUMBER,

CONSTRAINT FK_ALBUMS FOREIGN KEY (ID_ARTISTA) REFERENCES ARTIST(ID_ARTI)
);

CREATE TABLE PLAYLIST(
ID_PLAYLIST NUMBER GENERATED ALWAYS AS IDENTITY PRIMARY KEY,
NOMBRE_PLAYSLIST VARCHAR2(40),
PRIVACIDAD_PLAYLIST VARCHAR2(30),
DURACION_PLAYSLIST NUMBER(4,2),
ID_SONGS NUMBER,
CONSTRAINT FK_PLAYSLIST FOREIGN KEY(ID_SONGS)REFERENCES SONGS(ID_SONGS)
);


CREATE TABLE PLAYSLIST_USUARIOS(
ID_PLAYLIST_USUARIOS NUMBER GENERATED ALWAYS AS IDENTITY PRIMARY KEY,
NOMBRE_PLAYSLIST VARCHAR2(40),
PRIVACIDAD_PLAYLIST VARCHAR2(30),
DURACION_PLAYSLIST NUMBER(4,2),
ID_SONGS NUMBER,
ID_USUA NUMBER,
CONSTRAINT FK_PLAYSLIST_USUARIOS FOREIGN KEY(ID_SONGS)REFERENCES SONGS(ID_SONGS),
FOREIGN KEY(ID_USUA)REFERENCES USUARIO(ID_USUARIO)
);

select * from ARTIST;
select * from GENEROS;
select * from USUARIO; 
select * from SUSCRIPCION; 
select * from SONGS;
select * from ALBUMS;
select * from PLAYLIST;
select * from PLAYSLIST_USUARIOS;





/* DATOS*/

INSERT INTO ARTIST(NOMBRE_ARTISTA, NUM_SEGUIDORES,ULTIMO_SEN) values('stevie ray vaughan y double trobule ',347865,'pride and joy');
INSERT INTO ARTIST(NOMBRE_ARTISTA, NUM_SEGUIDORES,ULTIMO_SEN) values('b.b king',1072864,'we are the world');
INSERT INTO ARTIST(NOMBRE_ARTISTA, NUM_SEGUIDORES,ULTIMO_SEN) values('robert johnson ',4208687,'Sweet Home Chicago');
INSERT INTO ARTIST(NOMBRE_ARTISTA, NUM_SEGUIDORES,ULTIMO_SEN) values('alan waker ',29384217,'Spectre 2.0');
INSERT INTO ARTIST(NOMBRE_ARTISTA, NUM_SEGUIDORES,ULTIMO_SEN) values('martin garrix',1100926,'Reboot');
INSERT INTO ARTIST(NOMBRE_ARTISTA, NUM_SEGUIDORES,ULTIMO_SEN) values('avicci',9234651,'Ten More Days');
INSERT INTO ARTIST(NOMBRE_ARTISTA, NUM_SEGUIDORES,ULTIMO_SEN) values('cartel de santa',1198835,'Ya No Van ');
INSERT INTO ARTIST(NOMBRE_ARTISTA, NUM_SEGUIDORES,ULTIMO_SEN) values('xxxtentacion',1929482,'UGLY');
INSERT INTO ARTIST(NOMBRE_ARTISTA, NUM_SEGUIDORES,ULTIMO_SEN) values('Dr. Dre',937260,'Genocide');
INSERT INTO ARTIST(NOMBRE_ARTISTA, NUM_SEGUIDORES,ULTIMO_SEN) values('Rascal Flatts',623846,'My Wish');
INSERT INTO ARTIST(NOMBRE_ARTISTA, NUM_SEGUIDORES,ULTIMO_SEN) values('Zach Bryan',4984501,'Something in the Orange');
INSERT INTO ARTIST(NOMBRE_ARTISTA, NUM_SEGUIDORES,ULTIMO_SEN) values('Morgan Wallen',812091,'Last Night');
INSERT INTO ARTIST(NOMBRE_ARTISTA, NUM_SEGUIDORES,ULTIMO_SEN) values('Tom Odell',901285,'Another Love');
INSERT INTO ARTIST(NOMBRE_ARTISTA, NUM_SEGUIDORES,ULTIMO_SEN) values('Paris Paloma',1945829,'Labour');
INSERT INTO ARTIST(NOMBRE_ARTISTA, NUM_SEGUIDORES,ULTIMO_SEN) values('Cordelia',826593,'Little Life');
INSERT INTO ARTIST(NOMBRE_ARTISTA, NUM_SEGUIDORES,ULTIMO_SEN) values('gorilaz ',7198336,'souk eye');
INSERT INTO ARTIST(NOMBRE_ARTISTA, NUM_SEGUIDORES,ULTIMO_SEN) values('MGMT',998264,'Little Dark Age');
INSERT INTO ARTIST(NOMBRE_ARTISTA, NUM_SEGUIDORES,ULTIMO_SEN) values('WALTER ASTRAL',1985642,'Le feu');
INSERT INTO ARTIST(NOMBRE_ARTISTA, NUM_SEGUIDORES,ULTIMO_SEN) values('Theo Croker',10934967,'somethin');
INSERT INTO ARTIST(NOMBRE_ARTISTA, NUM_SEGUIDORES,ULTIMO_SEN) values('norah jones ',1094568,'have yourself a merry little chrismas');
INSERT INTO ARTIST(NOMBRE_ARTISTA, NUM_SEGUIDORES,ULTIMO_SEN) values('Louis Armstrong',1028458,'what a wonderful world');
INSERT INTO ARTIST(NOMBRE_ARTISTA, NUM_SEGUIDORES,ULTIMO_SEN) values('natanael cano',94573487,'o me voy o te vas');
INSERT INTO ARTIST(NOMBRE_ARTISTA, NUM_SEGUIDORES,ULTIMO_SEN) values('peso pluma ',198563,'la bebe');
INSERT INTO ARTIST(NOMBRE_ARTISTA, NUM_SEGUIDORES,ULTIMO_SEN) values('bad bunny',12463871,'un x100to');
INSERT INTO ARTIST(NOMBRE_ARTISTA, NUM_SEGUIDORES,ULTIMO_SEN) values('BTS',23857672,'My universe');
INSERT INTO ARTIST(NOMBRE_ARTISTA, NUM_SEGUIDORES,ULTIMO_SEN) values('twice',48756125,'the feels');
INSERT INTO ARTIST(NOMBRE_ARTISTA, NUM_SEGUIDORES,ULTIMO_SEN) values('black pink',198464,'shut down');
INSERT INTO ARTIST(NOMBRE_ARTISTA, NUM_SEGUIDORES,ULTIMO_SEN) values('Lana del Rey',1984562,'Sweet,AW');
INSERT INTO ARTIST(NOMBRE_ARTISTA, NUM_SEGUIDORES,ULTIMO_SEN) values('LRain',12498536,'Sweet,AW');
INSERT INTO ARTIST(NOMBRE_ARTISTA, NUM_SEGUIDORES,ULTIMO_SEN) values('Slowdive',148653287,'Our Funeral');
insert into ARTIST(NOMBRE_ARTISTA,NUM_SEGUIDORES,ULTIMO_SEN)VALUES('Rels B',229822,'Sin Gato');
insert into ARTIST(NOMBRE_ARTISTA,NUM_SEGUIDORES,ULTIMO_SEN)VALUES('Taylor Swift',1592440,'Karma, Lover');
insert into ARTIST(NOMBRE_ARTISTA,NUM_SEGUIDORES,ULTIMO_SEN)VALUES('Dua Lipa ',337456,'New Rules');
insert into ARTIST(NOMBRE_ARTISTA,NUM_SEGUIDORES,ULTIMO_SEN)VALUES('Mettalica',3820421,'Screaming Suicide');
insert into ARTIST(NOMBRE_ARTISTA,NUM_SEGUIDORES,ULTIMO_SEN)VALUES('Iron Maiden',7324282,'The Writing on the Wall');
insert into ARTIST(NOMBRE_ARTISTA,NUM_SEGUIDORES,ULTIMO_SEN)VALUES('Pantera',7898166,'Walk');
insert into ARTIST(NOMBRE_ARTISTA,NUM_SEGUIDORES,ULTIMO_SEN)VALUES('bob marley ',2100533,'African Herbsman');
insert into ARTIST(NOMBRE_ARTISTA,NUM_SEGUIDORES,ULTIMO_SEN)VALUES('cultura profetica ',4147197,'Despertador Solar');
insert into ARTIST(NOMBRE_ARTISTA,NUM_SEGUIDORES,ULTIMO_SEN)VALUES('lee "scratch" perry',3983835,'Jealousy');
insert into ARTIST(NOMBRE_ARTISTA,NUM_SEGUIDORES,ULTIMO_SEN)VALUES('banda ms ',220800,'No es invento mio');
insert into ARTIST(NOMBRE_ARTISTA,NUM_SEGUIDORES,ULTIMO_SEN)VALUES('calibre 50',18887,'Quien te crees');
insert into ARTIST(NOMBRE_ARTISTA,NUM_SEGUIDORES,ULTIMO_SEN)VALUES('grupo firme ',25896458,'Mi vida en 2');
insert into ARTIST(NOMBRE_ARTISTA,NUM_SEGUIDORES,ULTIMO_SEN)VALUES('belanova',4659841,'rosa pastel');
insert into ARTIST(NOMBRE_ARTISTA,NUM_SEGUIDORES,ULTIMO_SEN)VALUES('mon laferte',36547495,'mi buen amor');
insert into ARTIST(NOMBRE_ARTISTA,NUM_SEGUIDORES,ULTIMO_SEN)VALUES('jesse y joy',878965,'No soy una de esas');
insert into ARTIST(NOMBRE_ARTISTA,NUM_SEGUIDORES,ULTIMO_SEN)VALUES('Maneskin',3645125,'Beggin');
insert into ARTIST(NOMBRE_ARTISTA,NUM_SEGUIDORES,ULTIMO_SEN)VALUES('Blink-182',58746878,'Mutt');
insert into ARTIST(NOMBRE_ARTISTA,NUM_SEGUIDORES,ULTIMO_SEN)VALUES('The Killers',325697,'Caution');
insert into ARTIST(NOMBRE_ARTISTA,NUM_SEGUIDORES,ULTIMO_SEN)VALUES('Ozuna',85479654,'Dile que tu me quieres');
insert into ARTIST(NOMBRE_ARTISTA,NUM_SEGUIDORES,ULTIMO_SEN)VALUES('Daddy Yankee',548856,'Gasolina');
insert into ARTIST(NOMBRE_ARTISTA,NUM_SEGUIDORES,ULTIMO_SEN)VALUES('Wisin y Yandel',2547896,'Un ladron');
insert into ARTIST(NOMBRE_ARTISTA,NUM_SEGUIDORES,ULTIMO_SEN)VALUES('Quevedo',698534,'Vista al mar');
insert into ARTIST(NOMBRE_ARTISTA,NUM_SEGUIDORES,ULTIMO_SEN)VALUES('Feid',24965469,'Nieve');
insert into ARTIST(NOMBRE_ARTISTA,NUM_SEGUIDORES,ULTIMO_SEN)VALUES('Rauw Alejandro',58746,'No me la moleste ');
insert into ARTIST(NOMBRE_ARTISTA,NUM_SEGUIDORES,ULTIMO_SEN)VALUES('jose jose ',54789654,'el triste');
insert into ARTIST(NOMBRE_ARTISTA,NUM_SEGUIDORES,ULTIMO_SEN)VALUES('luis miguel',365896,'Pupilas de gato');
insert into ARTIST(NOMBRE_ARTISTA,NUM_SEGUIDORES,ULTIMO_SEN)VALUES('alfredo olivas',36526,'Seguramente');
insert into ARTIST(NOMBRE_ARTISTA,NUM_SEGUIDORES,ULTIMO_SEN)VALUES('eminem',58964785,'Square Dance');
insert into ARTIST(NOMBRE_ARTISTA,NUM_SEGUIDORES,ULTIMO_SEN)VALUES('nf',8547965,'10 Feet Down');
insert into ARTIST(NOMBRE_ARTISTA,NUM_SEGUIDORES,ULTIMO_SEN)VALUES('ice cube',5789657,'The predator');



INSERT INTO GENEROS (TIPO_GENERO) values('Blues');
INSERT INTO GENEROS (TIPO_GENERO) values('Electr�nica');
INSERT INTO GENEROS (TIPO_GENERO) values('Hip-hop');
INSERT INTO GENEROS (TIPO_GENERO) values('Country');
INSERT INTO GENEROS (TIPO_GENERO) values('Folk');
INSERT INTO GENEROS (TIPO_GENERO) values('Alternativa');
INSERT INTO GENEROS (TIPO_GENERO) values('Jazz');
INSERT INTO GENEROS (TIPO_GENERO) values('Latina');
INSERT INTO GENEROS (TIPO_GENERO) values('Kpop');
INSERT INTO GENEROS (TIPO_GENERO) values('Indie');
INSERT INTO GENEROS (TIPO_GENERO) values('Pop');
INSERT INTO GENEROS (TIPO_GENERO) values('Metal');
INSERT INTO GENEROS (TIPO_GENERO) values('Reggae');
INSERT INTO GENEROS (TIPO_GENERO) values('Banda');
INSERT INTO GENEROS (TIPO_GENERO) values('Pop latino');
INSERT INTO GENEROS (TIPO_GENERO) values('Rock');
INSERT INTO GENEROS (TIPO_GENERO) values('Reggaeton');
INSERT INTO GENEROS (TIPO_GENERO) values('Urbano');
INSERT INTO GENEROS (TIPO_GENERO) values('Regional mexicano');
INSERT INTO GENEROS (TIPO_GENERO) values('Rap');



INSERT INTO USUARIO(nombre_usuario,email,contra,seguidores) VALUES('Olivia Johnson',' user1@example.com','pass123',1);
INSERT INTO Usuario(nombre_usuario,email,contra,seguidores) VALUES('Ethan Miller','user2@example.com','abc456',2);
INSERT INTO Usuario(nombre_usuario,email,contra,seguidores) VALUES('Sophia Davis','testuser@email.com','qwerty789',3);
INSERT INTO Usuario(nombre_usuario,email,contra,seguidores) VALUES('Jackson Turner',' demo@gmail.com','demoPass',4);
INSERT INTO Usuario(nombre_usuario,email,contra,seguidores) VALUES('Ava Mitchell',' fakeuser@hotmail.com','mySecret123',5);
INSERT INTO Usuario(nombre_usuario,email,contra,seguidores) VALUES('Liam Carter',' exampleuser@yahoo.com','testpass456',6);
INSERT INTO Usuario(nombre_usuario,email,contra,seguidores) VALUES('Isabella Walker',' testing123@outlook.com','passTest789',7);
INSERT INTO Usuario(nombre_usuario,email,contra,seguidores) VALUES('Noah Bennett','userdemo@mail.com','demo1234',8);
INSERT INTO Usuario(nombre_usuario,email,contra,seguidores) VALUES('Emma Parker','tempuser@domain.com','securePwd789',9);
INSERT INTO Usuario(nombre_usuario,email,contra,seguidores) VALUES('Lucas Taylor',' mytestuser@gmail.com','pass123abc',10);
INSERT INTO Usuario(nombre_usuario,email,contra,seguidores) VALUES('Alejandro G�mez','alejandro.gomez@gmail.com','P@ssword123',11);
INSERT INTO Usuario(nombre_usuario,email,contra,seguidores) VALUES('Carolina Herrera','carolina.herrera@gmail.com','SecurePass456',12);
INSERT INTO Usuario(nombre_usuario,email,contra,seguidores) VALUES('Mart�n S�nchez','martin.sanchez@gmail.com','MySecret789',13);
INSERT INTO Usuario(nombre_usuario,email,contra,seguidores) VALUES('Valentina Torres','valentina.torres@gmail.com','HiddenPass432',14);
INSERT INTO Usuario(nombre_usuario,email,contra,seguidores) VALUES('Sebasti�n M�ndez','sebastian.mendez@gmail.com',' StrongP@ss!',15);
INSERT INTO Usuario(nombre_usuario,email,contra,seguidores) VALUES('Isabella Ram�rez','isabella.ramirez@gmail.com','SecretCode876',16);
INSERT INTO Usuario(nombre_usuario,email,contra,seguidores) VALUES('Javier Mendoza','javier.mendoza@gmail.com','ProtectedPass111',17);
INSERT INTO Usuario(nombre_usuario,email,contra,seguidores) VALUES('Sof�a Castro',' sofia.castro@gmail.com','SafeWord222',18);
INSERT INTO Usuario(nombre_usuario,email,contra,seguidores) VALUES('Diego L�pez','diego.lopez@gmail.com','SuperSecr3t!',19);
INSERT INTO Usuario(nombre_usuario,email,contra,seguidores) VALUES('Camila Ruiz','camila.ruiz@gmail.com','Private1234!',20);



INSERT INTO SUSCRIPCION(TIPO_SUB,ID_USUARIO) VALUES('Premium individual',1);
INSERT INTO SUSCRIPCION(TIPO_SUB,ID_USUARIO) VALUES('Free',2);
INSERT INTO SUSCRIPCION(TIPO_SUB,ID_USUARIO) VALUES('Premium familiar',3);
INSERT INTO SUSCRIPCION(TIPO_SUB,ID_USUARIO) VALUES('Premium Duo',4);
INSERT INTO SUSCRIPCION(TIPO_SUB,ID_USUARIO) VALUES('Premium individual',5);
INSERT INTO SUSCRIPCION(TIPO_SUB,ID_USUARIO) VALUES('Free',6);
INSERT INTO SUSCRIPCION(TIPO_SUB,ID_USUARIO) VALUES('Premium familiar',7);
INSERT INTO SUSCRIPCION(TIPO_SUB,ID_USUARIO) VALUES('Premium familiar',8);
INSERT INTO SUSCRIPCION(TIPO_SUB,ID_USUARIO) VALUES('Free',9);
INSERT INTO SUSCRIPCION(TIPO_SUB,ID_USUARIO) VALUES('Premium familiar',10);
INSERT INTO SUSCRIPCION(TIPO_SUB,ID_USUARIO) VALUES('Premium familiar',11);
INSERT INTO SUSCRIPCION(TIPO_SUB,ID_USUARIO) VALUES('Premium individual',12);
INSERT INTO SUSCRIPCION(TIPO_SUB,ID_USUARIO) VALUES('Premium individual',13);
INSERT INTO SUSCRIPCION(TIPO_SUB,ID_USUARIO) VALUES('Premium Duo',14);
INSERT INTO SUSCRIPCION(TIPO_SUB,ID_USUARIO) VALUES('Free',15);
INSERT INTO SUSCRIPCION(TIPO_SUB,ID_USUARIO) VALUES('Premium familiar',16);
INSERT INTO SUSCRIPCION(TIPO_SUB,ID_USUARIO) VALUES('Premium Duo',17);
INSERT INTO SUSCRIPCION(TIPO_SUB,ID_USUARIO) VALUES('Free',18);
INSERT INTO SUSCRIPCION(TIPO_SUB,ID_USUARIO) VALUES('Premium Duo',19);
INSERT INTO SUSCRIPCION(TIPO_SUB,ID_USUARIO) VALUES('Free',20);




insert into SONGS (NOMBRE_CANCION, DURACION,ID_GENERO,ID_ARTI) values ('pride and joy', 4.20,1,1);
insert into Songs (NOMBRE_CANCION, DURACION,ID_GENERO,ID_ARTI) values ('little wing', 5.50,1,1);
insert into Songs (NOMBRE_CANCION, DURACION,ID_GENERO,ID_ARTI) values ('look at little sister', 4.15,1,1);
insert into SONGS (NOMBRE_CANCION, DURACION,ID_GENERO,ID_ARTI) values ('Love Struck Baby', 4.20,1,1);
insert into Songs (NOMBRE_CANCION, DURACION,ID_GENERO,ID_ARTI) values ('Rude Mood Hide Away', 5.50,1,1);
insert into Songs (NOMBRE_CANCION, DURACION,ID_GENERO,ID_ARTI) values ('Shake for Me', 4.15,1,1);
insert into Songs (NOMBRE_CANCION, DURACION,ID_GENERO,ID_ARTI) values ('we are the world', 4.00,1,2);
insert into Songs (NOMBRE_CANCION, DURACION,ID_GENERO,ID_ARTI) values ('the thrill is gone', 4.05,1,2);
insert into Songs (NOMBRE_CANCION, DURACION,ID_GENERO,ID_ARTI) values ('lonesome chirismas', 5.55,1,2);
insert into Songs (NOMBRE_CANCION, DURACION,ID_GENERO,ID_ARTI) values ('so excited', 4.00,1,2);
insert into Songs (NOMBRE_CANCION, DURACION,ID_GENERO,ID_ARTI) values ('no good', 4.05,1,2);
insert into Songs (NOMBRE_CANCION, DURACION,ID_GENERO,ID_ARTI) values ('you re losin me ', 5.55,1,2);
insert into Songs (NOMBRE_CANCION, DURACION,ID_GENERO,ID_ARTI) values ('me and the devil blues', 4.30,1,3);
insert into Songs (NOMBRE_CANCION, DURACION,ID_GENERO,ID_ARTI) values ('stones in my passway', 6.10,1,3);
insert into Songs (NOMBRE_CANCION, DURACION,ID_GENERO,ID_ARTI) values ('sweet home chicago', 5.20,1,3);
insert into Songs (NOMBRE_CANCION, DURACION,ID_GENERO,ID_ARTI) values (' Kind Hearted Woman Blues', 4.30,1,3);
insert into Songs (NOMBRE_CANCION, DURACION,ID_GENERO,ID_ARTI) values ('I Believe I ll Dust My Broom', 6.10,1,3);
insert into Songs (NOMBRE_CANCION, DURACION,ID_GENERO,ID_ARTI) values ('sweet home chicago', 5.20,1,3);
insert into Songs (NOMBRE_CANCION, DURACION,ID_GENERO,ID_ARTI) values ('faded', 4.05,2,4);
insert into Songs (NOMBRE_CANCION, DURACION,ID_GENERO,ID_ARTI) values ('spectre', 3.50,2,4);
insert into Songs (NOMBRE_CANCION, DURACION,ID_GENERO,ID_ARTI) values ('Heart over Mind', 5.05,2,4);
insert into Songs (NOMBRE_CANCION, DURACION,ID_GENERO,ID_ARTI) values ('alon', 4.05,2,4);
insert into Songs (NOMBRE_CANCION, DURACION,ID_GENERO,ID_ARTI) values ('Welcome to Walkerworld', 3.50,2,4);
insert into Songs (NOMBRE_CANCION, DURACION,ID_GENERO,ID_ARTI) values (' Heart over Mind', 5.05,2,4);
insert into Songs (NOMBRE_CANCION, DURACION,ID_GENERO,ID_ARTI) values ('in the name of love', 4.30,2,5);
insert into Songs (NOMBRE_CANCION, DURACION,ID_GENERO,ID_ARTI) values ('scared to be lonely', 7.00,2,5);
insert into Songs (NOMBRE_CANCION, DURACION,ID_GENERO,ID_ARTI) values ('Reboot', 4.15,2,5);
insert into Songs (NOMBRE_CANCION, DURACION,ID_GENERO,ID_ARTI) values ('animals', 4.30,2,5);
insert into Songs (NOMBRE_CANCION, DURACION,ID_GENERO,ID_ARTI) values ('Follow', 7.00,2,5);
insert into Songs (NOMBRE_CANCION, DURACION,ID_GENERO,ID_ARTI) values ('Limitless', 4.15,2,5);
insert into Songs (NOMBRE_CANCION, DURACION,ID_GENERO,ID_ARTI) values ('Ten More Days', 4.25,2,6);
insert into Songs (NOMBRE_CANCION, DURACION,ID_GENERO,ID_ARTI) values ('Touch Me', 4.10,2,6);
insert into Songs (NOMBRE_CANCION, DURACION,ID_GENERO,ID_ARTI) values ('waiting for love', 5.20,2,6);
insert into Songs (NOMBRE_CANCION, DURACION,ID_GENERO,ID_ARTI) values ('Talk To Myself', 4.25,2,6);
insert into Songs (NOMBRE_CANCION, DURACION,ID_GENERO,ID_ARTI) values ('hey brother', 4.10,2,6);
insert into Songs (NOMBRE_CANCION, DURACION,ID_GENERO,ID_ARTI) values ('wake me up', 5.20,2,6);
insert into Songs (NOMBRE_CANCION, DURACION,ID_GENERO,ID_ARTI) values ('Ya No Van', 6.00,3,7);
insert into Songs (NOMBRE_CANCION, DURACION,ID_GENERO,ID_ARTI) values ('burbujas de cristal', 4.35,3,7);
insert into Songs (NOMBRE_CANCION, DURACION,ID_GENERO,ID_ARTI) values ('S�bete y Ya Ver�s', 3.40,3,7);
insert into Songs (NOMBRE_CANCION, DURACION,ID_GENERO,ID_ARTI) values ('Pa No Andar Triste', 6.00,3,7);
insert into Songs (NOMBRE_CANCION, DURACION,ID_GENERO,ID_ARTI) values ('bombos y tarolas', 4.35,3,7);
insert into Songs (NOMBRE_CANCION, DURACION,ID_GENERO,ID_ARTI) values ('party', 3.40,3,7);
insert into Songs (NOMBRE_CANCION, DURACION,ID_GENERO,ID_ARTI) values ('UGLY', 4.30,3,8);
insert into Songs (NOMBRE_CANCION, DURACION,ID_GENERO,ID_ARTI) values ('sad!', 3.45,3,8);
insert into Songs (NOMBRE_CANCION, DURACION,ID_GENERO,ID_ARTI) values ('look at me', 5.00,3,8);
insert into Songs (NOMBRE_CANCION, DURACION,ID_GENERO,ID_ARTI) values ('moonlight', 4.30,3,8);
insert into Songs (NOMBRE_CANCION, DURACION,ID_GENERO,ID_ARTI) values ('introduction', 3.45,3,8);
insert into Songs (NOMBRE_CANCION, DURACION,ID_GENERO,ID_ARTI) values ('Ex Bitch', 5.00,3,8);
insert into Songs (NOMBRE_CANCION, DURACION,ID_GENERO,ID_ARTI) values ('Genocide', 4.10,3,9);
insert into Songs (NOMBRE_CANCION, DURACION,ID_GENERO,ID_ARTI) values ('the next episode', 420,3,9);
insert into Songs (NOMBRE_CANCION, DURACION,ID_GENERO,ID_ARTI) values ('Talk About It', 550,3,9);
insert into Songs (NOMBRE_CANCION, DURACION,ID_GENERO,ID_ARTI) values ('still D.R.E', 4.10,3,9);
insert into Songs (NOMBRE_CANCION, DURACION,ID_GENERO,ID_ARTI) values ('Intro', 420,3,9);
insert into Songs (NOMBRE_CANCION, DURACION,ID_GENERO,ID_ARTI) values ('uthin but a g thang', 550,3,9);
insert into Songs (NOMBRE_CANCION, DURACION,ID_GENERO,ID_ARTI) values ('In A Hurry', 415,4,10);
insert into Songs (NOMBRE_CANCION, DURACION,ID_GENERO,ID_ARTI) values ('My Wish', 400,4,10);
insert into Songs (NOMBRE_CANCION, DURACION,ID_GENERO,ID_ARTI) values ('How They Remember You', 405,4,10);
insert into Songs (NOMBRE_CANCION, DURACION,ID_GENERO,ID_ARTI) values ('Fast', 415,4,10);
insert into Songs (NOMBRE_CANCION, DURACION,ID_GENERO,ID_ARTI) values ('Life is a Highwa', 400,4,10);
insert into Songs (NOMBRE_CANCION, DURACION,ID_GENERO,ID_ARTI) values ('Feel It In The Morning', 405,4,10);
insert into Songs (NOMBRE_CANCION, DURACION,ID_GENERO,ID_ARTI) values ('Something in the Orange', 555,4,11);
insert into Songs (NOMBRE_CANCION, DURACION,ID_GENERO,ID_ARTI) values ('Heading South', 430,4,11);
insert into Songs (NOMBRE_CANCION, DURACION,ID_GENERO,ID_ARTI) values ('Summertimes Close', 610,4,11);
insert into Songs (NOMBRE_CANCION, DURACION,ID_GENERO,ID_ARTI) values ('Dawns', 555,4,11);
insert into Songs (NOMBRE_CANCION, DURACION,ID_GENERO,ID_ARTI) values ('Fear and Fridays', 430,4,11);
insert into Songs (NOMBRE_CANCION, DURACION,ID_GENERO,ID_ARTI) values ('Overtime', 610,4,11);
insert into Songs (NOMBRE_CANCION, DURACION,ID_GENERO,ID_ARTI) values ('Somebodys Problem', 520,4,12);
insert into Songs (NOMBRE_CANCION, DURACION,ID_GENERO,ID_ARTI) values ('Last Night', 405,4,12);
insert into Songs (NOMBRE_CANCION, DURACION,ID_GENERO,ID_ARTI) values ('Wasted On You', 350,4,12);
insert into Songs (NOMBRE_CANCION, DURACION,ID_GENERO,ID_ARTI) values ('You Proof', 520,4,12);
insert into Songs (NOMBRE_CANCION, DURACION,ID_GENERO,ID_ARTI) values ('Sand In My Boots', 405,4,12);
insert into Songs (NOMBRE_CANCION, DURACION,ID_GENERO,ID_ARTI) values ('Cover Me Up', 350,4,12);
insert into Songs (NOMBRE_CANCION, DURACION,ID_GENERO,ID_ARTI) values ('Another Love', 505,5,13);
insert into Songs (NOMBRE_CANCION, DURACION,ID_GENERO,ID_ARTI) values ('Black Friday', 430,5,13);
insert into Songs (NOMBRE_CANCION, DURACION,ID_GENERO,ID_ARTI) values ('Best Day Of My Life', 700,5,13);
insert into Songs (NOMBRE_CANCION, DURACION,ID_GENERO,ID_ARTI) values ('Sad Anymore', 505,5,13);
insert into Songs (NOMBRE_CANCION, DURACION,ID_GENERO,ID_ARTI) values ('Sunrise', 430,5,13);
insert into Songs (NOMBRE_CANCION, DURACION,ID_GENERO,ID_ARTI) values ('Heal', 700,5,13);
insert into Songs (NOMBRE_CANCION, DURACION,ID_GENERO,ID_ARTI) values ('cradle', 415,5,14);
insert into Songs (NOMBRE_CANCION, DURACION,ID_GENERO,ID_ARTI) values ('echo', 425,5,14);
insert into Songs (NOMBRE_CANCION, DURACION,ID_GENERO,ID_ARTI) values ('Labour', 410,5,14);
insert into Songs (NOMBRE_CANCION, DURACION,ID_GENERO,ID_ARTI) values ('Yeti', 415,5,14);
insert into Songs (NOMBRE_CANCION, DURACION,ID_GENERO,ID_ARTI) values ('mulled wine', 425,5,14);
insert into Songs (NOMBRE_CANCION, DURACION,ID_GENERO,ID_ARTI) values ('The fruits', 410,5,14);
insert into Songs (NOMBRE_CANCION, DURACION,ID_GENERO,ID_ARTI) values ('Just a Crush', 520,5,15);
insert into Songs (NOMBRE_CANCION, DURACION,ID_GENERO,ID_ARTI) values ('Little Life', 600,5,15);
insert into Songs (NOMBRE_CANCION, DURACION,ID_GENERO,ID_ARTI)values ('Play Pretend', 435,5,15);
insert into Songs (NOMBRE_CANCION, DURACION,ID_GENERO,ID_ARTI) values ('Caramel', 520,5,15);
insert into Songs (NOMBRE_CANCION, DURACION,ID_GENERO,ID_ARTI) values ('Lay Me Down', 600,5,15);
insert into Songs (NOMBRE_CANCION, DURACION,ID_GENERO,ID_ARTI)values ('What I Wouldnt Do', 435,5,15);
insert into Songs (NOMBRE_CANCION, DURACION,ID_GENERO,ID_ARTI) values ('dare', 640,6,16);
insert into Songs (NOMBRE_CANCION, DURACION,ID_GENERO,ID_ARTI) values ('with guns', 430,6,16);
insert into Songs (NOMBRE_CANCION, DURACION,ID_GENERO,ID_ARTI) values ('souk eye', 345,6,16);
insert into Songs (NOMBRE_CANCION, DURACION,ID_GENERO,ID_ARTI) values ('feel good', 640,6,16);
insert into Songs (NOMBRE_CANCION, DURACION,ID_GENERO,ID_ARTI) values ('plastic beach', 430,6,16);
insert into Songs (NOMBRE_CANCION, DURACION,ID_GENERO,ID_ARTI) values (' cracker island', 345,6,16);
insert into Songs (NOMBRE_CANCION, DURACION,ID_GENERO,ID_ARTI) values ('Me and Michael', 500,6,17);
insert into Songs (NOMBRE_CANCION, DURACION,ID_GENERO,ID_ARTI) values ('Little Dark Age', 410,6,17);
insert into Songs (NOMBRE_CANCION, DURACION,ID_GENERO,ID_ARTI) values ('When You Die', 4.20,6,17);
insert into Songs (NOMBRE_CANCION, DURACION,ID_GENERO,ID_ARTI) values ('Me and Michael', 500,6,17);
insert into Songs (NOMBRE_CANCION, DURACION,ID_GENERO,ID_ARTI) values ('Little Dark Age', 410,6,17);
insert into Songs (NOMBRE_CANCION, DURACION,ID_GENERO,ID_ARTI) values ('When You Die', 4.20,6,17);
insert into Songs (NOMBRE_CANCION, DURACION,ID_GENERO,ID_ARTI) values ('Serpent Mental', 5.50,6,18);
insert into Songs (NOMBRE_CANCION, DURACION,ID_GENERO,ID_ARTI) values ('Le feu', 4.15,6,18);
insert into Songs (NOMBRE_CANCION, DURACION,ID_GENERO,ID_ARTI) values ('Hyperdruide', 4.00,6,18);
insert into Songs (NOMBRE_CANCION, DURACION,ID_GENERO,ID_ARTI) values ('Serpent Mental', 5.50,6,18);
insert into Songs (NOMBRE_CANCION, DURACION,ID_GENERO,ID_ARTI) values ('Le feu', 4.15,6,18);
insert into Songs (NOMBRE_CANCION, DURACION,ID_GENERO,ID_ARTI) values ('Hyperdruide', 4.00,6,18);
insert into Songs (NOMBRE_CANCION, DURACION,ID_GENERO,ID_ARTI) values ('TO BE WE', 4.05,7,19);
insert into Songs (NOMBRE_CANCION, DURACION,ID_GENERO,ID_ARTI) values ('JAZZ IS DEAD', 5.55,7,19);
insert into Songs (NOMBRE_CANCION, DURACION,ID_GENERO,ID_ARTI) values ('good day', 4.30,7,19);
insert into Songs (NOMBRE_CANCION, DURACION,ID_GENERO,ID_ARTI) values ('LOVE QUANTUM', 4.05,7,19);
insert into Songs (NOMBRE_CANCION, DURACION,ID_GENERO,ID_ARTI) values ('theo says', 5.55,7,19);
insert into Songs (NOMBRE_CANCION, DURACION,ID_GENERO,ID_ARTI) values ('somethin', 4.30,7,19);
insert into Songs (NOMBRE_CANCION, DURACION,ID_GENERO,ID_ARTI) values ('Little Broken Hearts', 6.10,7,20);
insert into Songs (NOMBRE_CANCION, DURACION,ID_GENERO,ID_ARTI) values ('Say Goodbye', 5.20,7,20);
insert into Songs (NOMBRE_CANCION, DURACION,ID_GENERO,ID_ARTI) values ('Good Morning', 4.05,7,20);
insert into Songs (NOMBRE_CANCION, DURACION,ID_GENERO,ID_ARTI) values ('have yourself a merry little chrismas', 6.10,7,20);
insert into Songs (NOMBRE_CANCION, DURACION,ID_GENERO,ID_ARTI) values ('chrismas dont be', 5.20,7,20);
insert into Songs (NOMBRE_CANCION, DURACION,ID_GENERO,ID_ARTI) values ('late', 4.05,7,20);
insert into Songs (NOMBRE_CANCION, DURACION,ID_GENERO,ID_ARTI) values ('You Turned The Tables On Me', 3.50,7,21);
insert into Songs (NOMBRE_CANCION, DURACION,ID_GENERO,ID_ARTI) values ('what a won derful world', 5.05,7,21);
insert into Songs (NOMBRE_CANCION, DURACION,ID_GENERO,ID_ARTI) values ('it dont men a thing', 4.30,7,21);
insert into Songs (NOMBRE_CANCION, DURACION,ID_GENERO,ID_ARTI) values ('when the saint go marching in', 3.50,7,21);
insert into Songs (NOMBRE_CANCION, DURACION,ID_GENERO,ID_ARTI) values ('Youre The Top', 5.05,7,21);
insert into Songs (NOMBRE_CANCION, DURACION,ID_GENERO,ID_ARTI) values ('When Your Lover Has Gone', 4.30,7,21);
insert into Songs (NOMBRE_CANCION, DURACION,ID_GENERO,ID_ARTI) values ('La Lokerona', 7.00,8,22);
insert into Songs (NOMBRE_CANCION, DURACION,ID_GENERO,ID_ARTI) values ('o me voy o te vas', 4.15,8,22);
insert into Songs (NOMBRE_CANCION, DURACION,ID_GENERO,ID_ARTI) values ('Diran De Mi', 4.25,8,22);
insert into Songs (NOMBRE_CANCION, DURACION,ID_GENERO,ID_ARTI) values ('lou lou', 7.00,8,22);
insert into Songs (NOMBRE_CANCION, DURACION,ID_GENERO,ID_ARTI) values ('Mas Altas Que Bajadas', 4.15,8,22);
insert into Songs (NOMBRE_CANCION, DURACION,ID_GENERO,ID_ARTI) values ('prc', 4.25,8,22);
insert into Songs (NOMBRE_CANCION, DURACION,ID_GENERO,ID_ARTI) values ('lady gaga', 4.10,8,23);
insert into Songs (NOMBRE_CANCION, DURACION,ID_GENERO,ID_ARTI) values ('la bebe', 5.20,8,23);
insert into Songs (NOMBRE_CANCION, DURACION,ID_GENERO,ID_ARTI) values ('qlona', 6.00,8,23);
insert into Songs (NOMBRE_CANCION, DURACION,ID_GENERO,ID_ARTI) values ('77', 4.10,8,23);
insert into Songs (NOMBRE_CANCION, DURACION,ID_GENERO,ID_ARTI) values ('ROSA PASTEL', 5.20,8,23);
insert into Songs (NOMBRE_CANCION, DURACION,ID_GENERO,ID_ARTI) values ('LUNA', 6.00,8,23);
insert into Songs (NOMBRE_CANCION, DURACION,ID_GENERO,ID_ARTI) values ('Me Porto Bonito', 4.35,8,24);
insert into Songs (NOMBRE_CANCION, DURACION,ID_GENERO,ID_ARTI) values ('Despu�s de la Playa', 6.40,8,24);
insert into Songs (NOMBRE_CANCION, DURACION,ID_GENERO,ID_ARTI) values ('Moscow Mule', 4.30,8,24);
insert into Songs (NOMBRE_CANCION, DURACION,ID_GENERO,ID_ARTI) values ('ojitos negros', 4.35,8,24);
insert into Songs (NOMBRE_CANCION, DURACION,ID_GENERO,ID_ARTI) values ('monaco', 6.40,8,24);
insert into Songs (NOMBRE_CANCION, DURACION,ID_GENERO,ID_ARTI) values ('un x100to', 4.30,8,24);
insert into SONGS (NOMBRE_CANCION, DURACION,ID_GENERO,ID_ARTI) values ('My universe', 3.15,9,25);
insert into SONGS (NOMBRE_CANCION, DURACION,ID_GENERO,ID_ARTI) values ('Dynamite', 5.00,9,25);
insert into SONGS (NOMBRE_CANCION, DURACION,ID_GENERO,ID_ARTI) values ('Fake Love', 2.20,9,25);
insert into SONGS (NOMBRE_CANCION, DURACION,ID_GENERO,ID_ARTI) values ('Life Goes On ', 3.20,9,25);
insert into SONGS (NOMBRE_CANCION, DURACION,ID_GENERO,ID_ARTI) values ('Fly to My Room', 4.20,9,25);
insert into SONGS (NOMBRE_CANCION, DURACION,ID_GENERO,ID_ARTI) values ('Blue and Gray', 3.10,9,25);
insert into SONGS (NOMBRE_CANCION, DURACION,ID_GENERO,ID_ARTI) values ('The feels', 6.00,9,26);
insert into SONGS (NOMBRE_CANCION, DURACION,ID_GENERO,ID_ARTI) values ('What is love', 4.00,9,26);
insert into SONGS (NOMBRE_CANCION, DURACION,ID_GENERO,ID_ARTI) values ('I cant stop me', 3.00,9,26);
insert into SONGS (NOMBRE_CANCION, DURACION,ID_GENERO,ID_ARTI) values ('MOONLIGHT SUNRISE', 5.30,9,26);
insert into SONGS (NOMBRE_CANCION, DURACION,ID_GENERO,ID_ARTI) values ('The feels', 3.20,9,26);
insert into SONGS (NOMBRE_CANCION, DURACION,ID_GENERO,ID_ARTI) values ('SET ME FREE', 2.20,9,26);
insert into SONGS (NOMBRE_CANCION, DURACION,ID_GENERO,ID_ARTI) values ('Shut me down', 5.00,9,27);
insert into SONGS (NOMBRE_CANCION, DURACION,ID_GENERO,ID_ARTI) values ('Pink venom', 3.40,9,27);
insert into SONGS (NOMBRE_CANCION, DURACION,ID_GENERO,ID_ARTI) values ('How you like that', 4.10,9,27);
insert into SONGS (NOMBRE_CANCION, DURACION,ID_GENERO,ID_ARTI) values ('Ice cream', 3.20,9,27);
insert into SONGS (NOMBRE_CANCION, DURACION,ID_GENERO,ID_ARTI) values ('Pretty savage', 3.30,9,27);
insert into SONGS (NOMBRE_CANCION, DURACION,ID_GENERO,ID_ARTI) values ('venom', 2.50,9,27);
insert into SONGS (NOMBRE_CANCION, DURACION,ID_GENERO,ID_ARTI) values ('Say yes to heaven', 4.10,10,28);
insert into SONGS (NOMBRE_CANCION, DURACION,ID_GENERO,ID_ARTI) values ('Summertime Sadness', 2.21,10,28);
insert into SONGS (NOMBRE_CANCION, DURACION,ID_GENERO,ID_ARTI) values ('Radio', 3.22,10,28);
insert into SONGS (NOMBRE_CANCION, DURACION,ID_GENERO,ID_ARTI) values ('The grants',2.21,10,28);
insert into SONGS (NOMBRE_CANCION, DURACION,ID_GENERO,ID_ARTI) values ('Sweet', 3.24,10,28);
insert into SONGS (NOMBRE_CANCION, DURACION,ID_GENERO,ID_ARTI) values ('AW', 4.32,10,28);
insert into SONGS (NOMBRE_CANCION, DURACION,ID_GENERO,ID_ARTI) values ('Pet rock', 5.23,10,29);
insert into SONGS (NOMBRE_CANCION, DURACION,ID_GENERO,ID_ARTI) values ('Our Funeral', 2.24,10,29);
insert into SONGS (NOMBRE_CANCION, DURACION,ID_GENERO,ID_ARTI) values ('I killed your dog ', 2.45,10,29);
insert into SONGS (NOMBRE_CANCION, DURACION,ID_GENERO,ID_ARTI) values ('Sincerely Commercial', 4.21,10,29);
insert into SONGS (NOMBRE_CANCION, DURACION,ID_GENERO,ID_ARTI) values ('Our funeral',3.20,10,29);
insert into SONGS (NOMBRE_CANCION, DURACION,ID_GENERO,ID_ARTI) values ('Commercial',3.27,10,29);
insert into SONGS (NOMBRE_CANCION, DURACION,ID_GENERO,ID_ARTI) values ('Alisson',5.37,10,30);
insert into SONGS (NOMBRE_CANCION, DURACION,ID_GENERO,ID_ARTI) values ('40 Days',2.57,10,30);
insert into SONGS (NOMBRE_CANCION, DURACION,ID_GENERO,ID_ARTI) values ('Kisses',3.25,10,30);
insert into SONGS (NOMBRE_CANCION, DURACION,ID_GENERO,ID_ARTI) values ('Shanty',1.36,10,30);
insert into SONGS (NOMBRE_CANCION, DURACION,ID_GENERO,ID_ARTI) values ('Prayer remembered',4.25,10,30);
insert into SONGS (NOMBRE_CANCION, DURACION,ID_GENERO,ID_ARTI) values ('Alife',4.23,10,30);
insert into Songs (NOMBRE_CANCION, DURACION,ID_GENERO,ID_ARTI) values ('Sonrie <3', 4.10,11,31);
insert into Songs (NOMBRE_CANCION, DURACION,ID_GENERO,ID_ARTI) values ('miamor', 4.10,11,31);
insert into Songs (NOMBRE_CANCION, DURACION,ID_GENERO,ID_ARTI) values ('Por dentro', 4.05,11,31);
insert into Songs (NOMBRE_CANCION, DURACION,ID_GENERO,ID_ARTI) values ('AfroLOVA', 4.10,11,31);
insert into Songs (NOMBRE_CANCION, DURACION,ID_GENERO,ID_ARTI) values ('Un Rodeoooo', 4.10,11,31);
insert into Songs (NOMBRE_CANCION, DURACION,ID_GENERO,ID_ARTI) values ('Sin Gato', 4.10,11,31);
insert into Songs (NOMBRE_CANCION, DURACION,ID_GENERO,ID_ARTI) values ('Style', 4.10,11,32);
insert into Songs (NOMBRE_CANCION, DURACION,ID_GENERO,ID_ARTI) values ('Bad Blood', 4.10,11,32);
insert into Songs (NOMBRE_CANCION, DURACION,ID_GENERO,ID_ARTI) values ('Shake It Off', 4.10,11,32);
insert into Songs (NOMBRE_CANCION, DURACION,ID_GENERO,ID_ARTI) values ('Blank Space', 4.10,11,32);
insert into Songs (NOMBRE_CANCION, DURACION,ID_GENERO,ID_ARTI) values ('Karma', 4.10,11,32);
insert into Songs (NOMBRE_CANCION, DURACION,ID_GENERO,ID_ARTI) values ('Lover', 4.10,11,32);
insert into Songs (NOMBRE_CANCION, DURACION,ID_GENERO,ID_ARTI) values ('Houdini', 4.10,11,33);
insert into Songs (NOMBRE_CANCION, DURACION,ID_GENERO,ID_ARTI) values ('Don t Start Now', 4.10,11,33);
insert into Songs (NOMBRE_CANCION, DURACION,ID_GENERO,ID_ARTI) values ('New Rules', 4.10,11,33);
insert into Songs (NOMBRE_CANCION, DURACION,ID_GENERO,ID_ARTI) values ('Future Nostalgia', 4.10,11,33);
insert into Songs (NOMBRE_CANCION, DURACION,ID_GENERO,ID_ARTI) values ('Don t Start Now', 4.10,11,33);
insert into Songs (NOMBRE_CANCION, DURACION,ID_GENERO,ID_ARTI) values ('Cool', 4.10,11,33);
insert into Songs (NOMBRE_CANCION, DURACION,ID_GENERO,ID_ARTI) values ('Enter Sandman', 4.10,12,34);
insert into Songs (NOMBRE_CANCION, DURACION,ID_GENERO,ID_ARTI) values ('Nothing Else Matters', 4.10,12,34);
insert into Songs (NOMBRE_CANCION, DURACION,ID_GENERO,ID_ARTI) values ('One', 4.10,12,34);
insert into Songs (NOMBRE_CANCION, DURACION,ID_GENERO,ID_ARTI) values ('72 Seasons', 4.10,12,34);
insert into Songs (NOMBRE_CANCION, DURACION,ID_GENERO,ID_ARTI) values ('Shadows Follow', 4.10,12,34);
insert into Songs (NOMBRE_CANCION, DURACION,ID_GENERO,ID_ARTI) values ('Screaming Suicide', 4.10,12,34);
insert into Songs (NOMBRE_CANCION, DURACION,ID_GENERO,ID_ARTI) values ('The Trooper', 4.10,12,35);
insert into Songs (NOMBRE_CANCION, DURACION,ID_GENERO,ID_ARTI) values ('Run to the Hills', 4.10,12,35);
insert into Songs (NOMBRE_CANCION, DURACION,ID_GENERO,ID_ARTI) values ('Fear of the Dark', 4.10,12,35);
insert into Songs (NOMBRE_CANCION, DURACION,ID_GENERO,ID_ARTI) values ('Senjutsu', 4.10,12,35);
insert into Songs (NOMBRE_CANCION, DURACION,ID_GENERO,ID_ARTI) values ('Stratego', 4.10,12,35);
insert into Songs (NOMBRE_CANCION, DURACION,ID_GENERO,ID_ARTI) values ('The Writing on the Wall', 4.10,12,35);
insert into Songs (NOMBRE_CANCION, DURACION,ID_GENERO,ID_ARTI) values ('Walk', 4.10,12,36);
insert into Songs (NOMBRE_CANCION, DURACION,ID_GENERO,ID_ARTI) values ('Cowboys from Hell', 4.10,12,36);
insert into Songs (NOMBRE_CANCION, DURACION,ID_GENERO,ID_ARTI) values ('Cementery Gates', 4.10,12,36);
insert into Songs (NOMBRE_CANCION, DURACION,ID_GENERO,ID_ARTI) values ('War Nerve', 4.10,12,36);
insert into Songs (NOMBRE_CANCION, DURACION,ID_GENERO,ID_ARTI) values ('Drag the Waters', 4.10,12,36);
insert into Songs (NOMBRE_CANCION, DURACION,ID_GENERO,ID_ARTI) values ('10 s', 4.10,12,36);
insert into Songs (NOMBRE_CANCION, DURACION,ID_GENERO,ID_ARTI) values ('could you be love', 4.10,13,37);
insert into Songs (NOMBRE_CANCION, DURACION,ID_GENERO,ID_ARTI) values ('is this love', 4.10,13,37);
insert into Songs (NOMBRE_CANCION, DURACION,ID_GENERO,ID_ARTI) values ('three little birds', 4.10,13,37);
insert into Songs (NOMBRE_CANCION, DURACION,ID_GENERO,ID_ARTI) values ('Don t Rock My Boat', 4.10,13,37);
insert into Songs (NOMBRE_CANCION, DURACION,ID_GENERO,ID_ARTI) values ('Soul Rebel', 4.10,13,37);
insert into Songs (NOMBRE_CANCION, DURACION,ID_GENERO,ID_ARTI) values (' African Herbsman', 4.10,13,37);
insert into Songs (NOMBRE_CANCION, DURACION,ID_GENERO,ID_ARTI) values ('ilegal', 4.10,13,38);
insert into Songs (NOMBRE_CANCION, DURACION,ID_GENERO,ID_ARTI) values ('saca prende y sorprende', 4.10,13,38);
insert into Songs (NOMBRE_CANCION, DURACION,ID_GENERO,ID_ARTI) values ('la complicidad', 4.10,13,38);
insert into Songs (NOMBRE_CANCION, DURACION,ID_GENERO,ID_ARTI) values ('Sobrevolando', 4.10,13,38);
insert into Songs (NOMBRE_CANCION, DURACION,ID_GENERO,ID_ARTI) values ('Efecto Domin�', 4.10,13,38);
insert into Songs (NOMBRE_CANCION, DURACION,ID_GENERO,ID_ARTI) values ('Despertador Solar', 4.10,13,38);
insert into Songs (NOMBRE_CANCION, DURACION,ID_GENERO,ID_ARTI) values ('Saint Selassie', 4.10,13,39);
insert into Songs (NOMBRE_CANCION, DURACION,ID_GENERO,ID_ARTI) values ('Sinful Fuckers', 4.10,13,39);
insert into Songs (NOMBRE_CANCION, DURACION,ID_GENERO,ID_ARTI) values ('Rolling Thunder', 4.10,13,39);
insert into Songs (NOMBRE_CANCION, DURACION,ID_GENERO,ID_ARTI) values ('The Game Black', 4.10,13,39);
insert into Songs (NOMBRE_CANCION, DURACION,ID_GENERO,ID_ARTI) values ('Yee Ha ha ha', 4.10,13,39);
insert into Songs (NOMBRE_CANCION, DURACION,ID_GENERO,ID_ARTI) values ('Jealousy', 4.10,13,39);
insert into Songs (NOMBRE_CANCION, DURACION,ID_GENERO,ID_ARTI) values ('el color de tus ojos', 4.10,14,40);
insert into Songs (NOMBRE_CANCION, DURACION,ID_GENERO,ID_ARTI) values ('ojos cerrados', 4.10,14,40);
insert into Songs (NOMBRE_CANCION, DURACION,ID_GENERO,ID_ARTI) values ('me vas a extra�ar', 4.10,14,40);
insert into Songs (NOMBRE_CANCION, DURACION,ID_GENERO,ID_ARTI) values ('Me gusta tu vieja', 4.10,14,40);
insert into Songs (NOMBRE_CANCION, DURACION,ID_GENERO,ID_ARTI) values ('Hablame de ti', 4.10,14,40);
insert into Songs (NOMBRE_CANCION, DURACION,ID_GENERO,ID_ARTI) values ('No es invento mio', 4.10,14,40);
insert into Songs (NOMBRE_CANCION, DURACION,ID_GENERO,ID_ARTI) values ('si te pudiera mentir', 4.10,14,41);
insert into Songs (NOMBRE_CANCION, DURACION,ID_GENERO,ID_ARTI) values ('a la antiguita', 4.10,14,41);
insert into Songs (NOMBRE_CANCION, DURACION,ID_GENERO,ID_ARTI) values (' hoy mas que nunca', 4.10,14,41);
insert into Songs (NOMBRE_CANCION, DURACION,ID_GENERO,ID_ARTI) values ('Kani', 4.10,14,41);
insert into Songs (NOMBRE_CANCION, DURACION,ID_GENERO,ID_ARTI) values ('La caja de pan', 4.10,14,41);
insert into Songs (NOMBRE_CANCION, DURACION,ID_GENERO,ID_ARTI) values ('Quien te crees', 4.10,14,41);
insert into Songs (NOMBRE_CANCION, DURACION,ID_GENERO,ID_ARTI) values ('el amor de su vida', 4.10,14,42);
insert into Songs (NOMBRE_CANCION, DURACION,ID_GENERO,ID_ARTI) values ('el toxico', 4.10,14,42);
insert into Songs (NOMBRE_CANCION, DURACION,ID_GENERO,ID_ARTI) values ('que onda perdida', 4.10,14,42);
insert into Songs (NOMBRE_CANCION, DURACION,ID_GENERO,ID_ARTI) values ('Algo tranqui', 4.10,14,42);
insert into Songs (NOMBRE_CANCION, DURACION,ID_GENERO,ID_ARTI) values ('Efectos de alcohol', 4.10,14,42);
insert into Songs (NOMBRE_CANCION, DURACION,ID_GENERO,ID_ARTI) values ('Mi vida en 2', 4.10,14,42);
insert into Songs (NOMBRE_CANCION, DURACION,ID_GENERO,ID_ARTI) values ('rosa pastel', 4.10,15,43);
insert into Songs (NOMBRE_CANCION, DURACION,ID_GENERO,ID_ARTI) values ('cada que', 4.10,15,43);
insert into Songs (NOMBRE_CANCION, DURACION,ID_GENERO,ID_ARTI) values ('no me voy a morir', 4.10,15,43);
insert into Songs (NOMBRE_CANCION, DURACION,ID_GENERO,ID_ARTI) values ('Por esta vez', 4.10,15,43);
insert into Songs (NOMBRE_CANCION, DURACION,ID_GENERO,ID_ARTI) values ('One Two Three GO', 4.10,15,43);
insert into Songs (NOMBRE_CANCION, DURACION,ID_GENERO,ID_ARTI) values ('Rockstar', 4.10,15,43);
insert into Songs (NOMBRE_CANCION, DURACION,ID_GENERO,ID_ARTI) values ('mi buen amor', 4.10,15,44);
insert into Songs (NOMBRE_CANCION, DURACION,ID_GENERO,ID_ARTI) values ('tu falta querer', 4.10,15,44);
insert into Songs (NOMBRE_CANCION, DURACION,ID_GENERO,ID_ARTI) values ('amarrame', 4.10,15,44);
insert into Songs (NOMBRE_CANCION, DURACION,ID_GENERO,ID_ARTI) values ('que si', 4.10,15,44);
insert into Songs (NOMBRE_CANCION, DURACION,ID_GENERO,ID_ARTI) values ('Ana', 4.10,15,44);
insert into Songs (NOMBRE_CANCION, DURACION,ID_GENERO,ID_ARTI) values ('Primaveral', 4.10,15,44);
insert into Songs (NOMBRE_CANCION, DURACION,ID_GENERO,ID_ARTI) values ('dueles', 4.10,15,45);
insert into Songs (NOMBRE_CANCION, DURACION,ID_GENERO,ID_ARTI) values ('corre', 4.10,15,45);
insert into Songs (NOMBRE_CANCION, DURACION,ID_GENERO,ID_ARTI) values ('te esperare', 4.10,15,45);
insert into Songs (NOMBRE_CANCION, DURACION,ID_GENERO,ID_ARTI) values ('Que pena me da', 4.10,15,45);
insert into Songs (NOMBRE_CANCION, DURACION,ID_GENERO,ID_ARTI) values ('Ecos de amor', 4.10,15,45);
insert into Songs (NOMBRE_CANCION, DURACION,ID_GENERO,ID_ARTI) values ('No soy una de esas', 4.10,15,45);
INSERT into SONGS(NOMBRE_CANCION,DURACION,ID_GENERO,ID_ARTI)VALUES('BEGGIN',4.12,16,46);
INSERT into SONGS(NOMBRE_CANCION,DURACION,ID_GENERO,ID_ARTI)VALUES('HONEY',3.12,16,46);
INSERT into SONGS(NOMBRE_CANCION,DURACION,ID_GENERO,ID_ARTI)VALUES('I WANNA BE YOUR SLAVE',4.12,16,46);
INSERT into SONGS(NOMBRE_CANCION,DURACION,ID_GENERO,ID_ARTI)VALUES('CHOSEN',2.12,16,46);
INSERT into SONGS(NOMBRE_CANCION,DURACION,ID_GENERO,ID_ARTI)VALUES('VENGO DALLA LUNA',3.12,16,46);
INSERT into SONGS(NOMBRE_CANCION,DURACION,ID_GENERO,ID_ARTI)VALUES('RECOVERY',2.12,16,46);
INSERT into SONGS(NOMBRE_CANCION,DURACION,ID_GENERO,ID_ARTI)VALUES('I MISS YOU',3.12,16,47);
INSERT into SONGS(NOMBRE_CANCION,DURACION,ID_GENERO,ID_ARTI)VALUES('ONE MORE TIME',2.10,16,47);
INSERT into SONGS(NOMBRE_CANCION,DURACION,ID_GENERO,ID_ARTI)VALUES('FIRST DATE',3.40,16,47);
INSERT into SONGS(NOMBRE_CANCION,DURACION,ID_GENERO,ID_ARTI)VALUES('ALIENS EXIST',2.40,16,47);
INSERT into SONGS(NOMBRE_CANCION,DURACION,ID_GENERO,ID_ARTI)VALUES('ADAMS SONGS',2.12,16,47);
INSERT into SONGS(NOMBRE_CANCION,DURACION,ID_GENERO,ID_ARTI)VALUES('MUTT',4.12,16,47);
INSERT into SONGS(NOMBRE_CANCION,DURACION,ID_GENERO,ID_ARTI)VALUES('SOMEBODY TOLD ME',3.12,16,48);
INSERT into SONGS(NOMBRE_CANCION,DURACION,ID_GENERO,ID_ARTI)VALUES('HUMAN',3.02,16,48);
INSERT into SONGS(NOMBRE_CANCION,DURACION,ID_GENERO,ID_ARTI)VALUES('ALL THESE THINGS THAT IVE DONE',3.02,16,48);
INSERT into SONGS(NOMBRE_CANCION,DURACION,ID_GENERO,ID_ARTI)VALUES('BE STILL',2.45,16,48);
INSERT into SONGS(NOMBRE_CANCION,DURACION,ID_GENERO,ID_ARTI)VALUES('THE MAN',4.12,16,48);
INSERT into SONGS(NOMBRE_CANCION,DURACION,ID_GENERO,ID_ARTI)VALUES('CAUTION',3.02,16,48);
INSERT into SONGS(NOMBRE_CANCION,DURACION,ID_GENERO,ID_ARTI)VALUES('SE PREPARO',4.12,17,49);
INSERT into SONGS(NOMBRE_CANCION,DURACION,ID_GENERO,ID_ARTI)VALUES('EL FARSANTE',3.12,17,49);
INSERT into SONGS(NOMBRE_CANCION,DURACION,ID_GENERO,ID_ARTI)VALUES('DILE QUE TU ME QUIERES',4.12,17,49);
INSERT into SONGS(NOMBRE_CANCION,DURACION,ID_GENERO,ID_ARTI)VALUES('TU FOTO',2.12,17,49);
INSERT into SONGS(NOMBRE_CANCION,DURACION,ID_GENERO,ID_ARTI)VALUES('SE PREPARO',3.50,17,49);
INSERT into SONGS(NOMBRE_CANCION,DURACION,ID_GENERO,ID_ARTI)VALUES('DILE QUE TU ME QUIERES',2.12,17,49);
INSERT into SONGS(NOMBRE_CANCION,DURACION,ID_GENERO,ID_ARTI)VALUES('GASOLINA',4.12,17,50);
INSERT into SONGS(NOMBRE_CANCION,DURACION,ID_GENERO,ID_ARTI)VALUES('LO QUE PASO PASO',3.12,17,50);
INSERT into SONGS(NOMBRE_CANCION,DURACION,ID_GENERO,ID_ARTI)VALUES('LA SANTA',2.12,17,50);
INSERT into SONGS(NOMBRE_CANCION,DURACION,ID_GENERO,ID_ARTI)VALUES('TEMBLOR',3.20,17,50);
INSERT into SONGS(NOMBRE_CANCION,DURACION,ID_GENERO,ID_ARTI)VALUES('POSE',2.05,17,50);
INSERT into SONGS(NOMBRE_CANCION,DURACION,ID_GENERO,ID_ARTI)VALUES('LLAMADO DE EMERGENCIA',2.50,17,50);
INSERT into SONGS(NOMBRE_CANCION,DURACION,ID_GENERO,ID_ARTI)VALUES('VAPOR',2.12,17,51);
INSERT into SONGS(NOMBRE_CANCION,DURACION,ID_GENERO,ID_ARTI)VALUES('CALIENTE',5.85,17,51);
INSERT into SONGS(NOMBRE_CANCION,DURACION,ID_GENERO,ID_ARTI)VALUES('DELITOS',2.12,17,51);
INSERT into SONGS(NOMBRE_CANCION,DURACION,ID_GENERO,ID_ARTI)VALUES('LA REALIDAD',3.10,17,51);
INSERT into SONGS(NOMBRE_CANCION,DURACION,ID_GENERO,ID_ARTI)VALUES('UN LADRON',4.50,17,51);
INSERT into SONGS(NOMBRE_CANCION,DURACION,ID_GENERO,ID_ARTI)VALUES('Todos Quieren bailar contigo',4.50,17,51);
insert into Songs (NOMBRE_CANCION, DURACION,ID_GENERO,ID_ARTI) values ('Columbia', 4.10,18,52);
insert into Songs (NOMBRE_CANCION, DURACION,ID_GENERO,ID_ARTI) values ('Punto G', 4.10,18,52);
insert into Songs (NOMBRE_CANCION, DURACION,ID_GENERO,ID_ARTI) values ('No pienso llamar', 4.10,18,52);
insert into Songs (NOMBRE_CANCION, DURACION,ID_GENERO,ID_ARTI) values ('Ahora que', 4.10,18,52);
insert into Songs (NOMBRE_CANCION, DURACION,ID_GENERO,ID_ARTI) values ('Yankee', 4.10,18,52);
insert into Songs (NOMBRE_CANCION, DURACION,ID_GENERO,ID_ARTI) values ('Vista al mar', 4.10,18,52);
insert into Songs (NOMBRE_CANCION, DURACION,ID_GENERO,ID_ARTI) values ('Perro Negro', 4.10,18,53);
insert into Songs (NOMBRE_CANCION, DURACION,ID_GENERO,ID_ARTI) values ('Feliz Cumplea�os Fercho', 4.10,18,53);
insert into Songs (NOMBRE_CANCION, DURACION,ID_GENERO,ID_ARTI) values ('Hey Mor', 4.10,18,53);
insert into Songs (NOMBRE_CANCION, DURACION,ID_GENERO,ID_ARTI) values ('X20X', 4.10,18,53);
insert into Songs (NOMBRE_CANCION, DURACION,ID_GENERO,ID_ARTI) values ('Lady mi amor', 4.10,18,53);
insert into Songs (NOMBRE_CANCION, DURACION,ID_GENERO,ID_ARTI) values ('Nieve', 4.10,18,53);
insert into Songs (NOMBRE_CANCION, DURACION,ID_GENERO,ID_ARTI) values ('Diluvio', 4.10,18,54);
insert into Songs (NOMBRE_CANCION, DURACION,ID_GENERO,ID_ARTI) values ('Beso', 4.10,18,54);
insert into Songs (NOMBRE_CANCION, DURACION,ID_GENERO,ID_ARTI) values ('Te felicito', 4.10,18,54);
insert into Songs (NOMBRE_CANCION, DURACION,ID_GENERO,ID_ARTI) values ('Cuando Baje el Sol', 4.10,18,54);
insert into Songs (NOMBRE_CANCION, DURACION,ID_GENERO,ID_ARTI) values ('Cuki', 4.10,18,54);
insert into Songs (NOMBRE_CANCION, DURACION,ID_GENERO,ID_ARTI) values ('No me la moleste', 4.10,18,54);
insert into Songs (NOMBRE_CANCION, DURACION,ID_GENERO,ID_ARTI) values ('el triste', 4.10,19,55);
insert into Songs (NOMBRE_CANCION, DURACION,ID_GENERO,ID_ARTI) values ('vamos a darnos tiempo', 4.10,19,55);
insert into Songs (NOMBRE_CANCION, DURACION,ID_GENERO,ID_ARTI) values ('el amar y el quere', 4.10,19,55);
insert into Songs (NOMBRE_CANCION, DURACION,ID_GENERO,ID_ARTI) values ('Lo dudo', 4.10,19,55);
insert into Songs (NOMBRE_CANCION, DURACION,ID_GENERO,ID_ARTI) values ('El amor Acaba', 4.10,19,55);
insert into Songs (NOMBRE_CANCION, DURACION,ID_GENERO,ID_ARTI) values ('Voy a llenarte toda', 4.10,19,55);
insert into Songs (NOMBRE_CANCION, DURACION,ID_GENERO,ID_ARTI) values ('la incondicional', 4.10,19,56);
insert into Songs (NOMBRE_CANCION, DURACION,ID_GENERO,ID_ARTI) values ('hasta que me olvides', 4.10,19,56);
insert into Songs (NOMBRE_CANCION, DURACION,ID_GENERO,ID_ARTI) values ('Fria como el viento', 4.10,19,56);
insert into Songs (NOMBRE_CANCION, DURACION,ID_GENERO,ID_ARTI) values ('Esa ni�a', 4.10,19,56);
insert into Songs (NOMBRE_CANCION, DURACION,ID_GENERO,ID_ARTI) values ('Culpable o no', 4.10,19,56);
insert into Songs (NOMBRE_CANCION, DURACION,ID_GENERO,ID_ARTI) values ('Pupilas de gato', 4.10,19,56);
insert into Songs (NOMBRE_CANCION, DURACION,ID_GENERO,ID_ARTI) values ('El paciente', 4.10,19,57);
insert into Songs (NOMBRE_CANCION, DURACION,ID_GENERO,ID_ARTI) values ('El precio de la Soledad', 4.10,19,57);
insert into Songs (NOMBRE_CANCION, DURACION,ID_GENERO,ID_ARTI) values ('El sillon', 4.10,19,57);
insert into Songs (NOMBRE_CANCION, DURACION,ID_GENERO,ID_ARTI) values ('El problema', 4.10,19,57);
insert into Songs (NOMBRE_CANCION, DURACION,ID_GENERO,ID_ARTI) values ('Todo o nada', 4.10,19,57);
insert into Songs (NOMBRE_CANCION, DURACION,ID_GENERO,ID_ARTI) values ('Seguramente', 4.10,19,57);
insert into SONGS (NOMBRE_CANCION, DURACION,ID_GENERO,ID_ARTI) values ('Rap god',2.25,20,58);
insert into SONGS (NOMBRE_CANCION, DURACION,ID_GENERO,ID_ARTI) values ('Slim shady',5.15,20,58);
insert into SONGS (NOMBRE_CANCION, DURACION,ID_GENERO,ID_ARTI) values ('Monster',3.31,20,58);
insert into SONGS (NOMBRE_CANCION, DURACION,ID_GENERO,ID_ARTI) values ('White america',2.45,20,58);
insert into SONGS (NOMBRE_CANCION, DURACION,ID_GENERO,ID_ARTI) values ('Business',4.45,20,58);
insert into SONGS (NOMBRE_CANCION, DURACION,ID_GENERO,ID_ARTI) values ('Square Dance',2.45,20,58);
insert into SONGS (NOMBRE_CANCION, DURACION,ID_GENERO,ID_ARTI) values ('The search',2.15,20,59);
insert into SONGS (NOMBRE_CANCION, DURACION,ID_GENERO,ID_ARTI) values ('If you want love',2.25,20,59);
insert into SONGS (NOMBRE_CANCION, DURACION,ID_GENERO,ID_ARTI) values ('Happy',3.15,20,59);
insert into SONGS (NOMBRE_CANCION, DURACION,ID_GENERO,ID_ARTI) values ('Outcast',4.25,20,59);
insert into SONGS (NOMBRE_CANCION, DURACION,ID_GENERO,ID_ARTI) values ('10 Feet down',2.25,20,59);
insert into SONGS (NOMBRE_CANCION, DURACION,ID_GENERO,ID_ARTI) values ('xdxdxd',2.25,20,59);
insert into SONGS (NOMBRE_CANCION, DURACION,ID_GENERO,ID_ARTI) values ('It was a good day',2.15,20,60);
insert into SONGS (NOMBRE_CANCION, DURACION,ID_GENERO,ID_ARTI) values ('you know we do it',5.20,20,60);
insert into SONGS (NOMBRE_CANCION, DURACION,ID_GENERO,ID_ARTI) values ('Chaek yo self',1.15,20,60);
insert into SONGS (NOMBRE_CANCION, DURACION,ID_GENERO,ID_ARTI) values ('Im scared ',3.54,20,60);
insert into SONGS (NOMBRE_CANCION, DURACION,ID_GENERO,ID_ARTI) values ('Im scared wicked',2.15,20,60);
insert into SONGS (NOMBRE_CANCION, DURACION,ID_GENERO,ID_ARTI) values ('The predator',2.15,20,60);



INSERT INTO ALBUMS(nombre_album,fecha_lanzamiento,duracion,id_artista)
VALUES('Completely Well','25-11-1975',1.45,2);
INSERT INTO ALBUMS(nombre_album,fecha_lanzamiento,duracion,id_artista)
VALUES('Walkerworld','12-04-1987',2.87,4);
INSERT INTO ALBUMS(nombre_album,fecha_lanzamiento,duracion,id_artista)
VALUES('Compton','03-09-1971',3.12,9);
INSERT INTO ALBUMS(nombre_album,fecha_lanzamiento,duracion,id_artista)
VALUES('Dangerous','18-06-1985',4.65,12);
INSERT INTO ALBUMS(nombre_album,fecha_lanzamiento,duracion,id_artista)
VALUES('cemeteries and socials','05-02-2000',5.93,14);
INSERT INTO ALBUMS(nombre_album,fecha_lanzamiento,duracion,id_artista)
VALUES('Hyperdruide','22-08-1992',6.21,18);
INSERT INTO ALBUMS(nombre_album,fecha_lanzamiento,duracion,id_artista)
VALUES('Pops Is Tops','30-01-1965',7.76,21);
INSERT INTO ALBUMS(nombre_album,fecha_lanzamiento,duracion,id_artista)
VALUES('G�NESIS','14-11-1978',8.45,23);
INSERT INTO ALBUMS(nombre_album,fecha_lanzamiento,duracion,id_artista)
VALUES('BE','07-07-1983',9.98,25);
INSERT INTO ALBUMS(nombre_album,fecha_lanzamiento,duracion,id_artista)
VALUES('everything is alive','19-03-1969',1.56,30);
INSERT INTO ALBUMS(nombre_album,fecha_lanzamiento,duracion,id_artista)
VALUES('1989','02-05-1995',2.32,32);
INSERT INTO ALBUMS(nombre_album,fecha_lanzamiento,duracion,id_artista)
VALUES('Senjutsu','11-12-1977',3.78,35);
INSERT INTO ALBUMS(nombre_album,fecha_lanzamiento,duracion,id_artista)
VALUES('Bob Marley','03-04-1989',4.09,37);
INSERT INTO ALBUMS(nombre_album,fecha_lanzamiento,duracion,id_artista)
VALUES('Simplemente Gracias','28-06-1963',5.67,41);
INSERT INTO ALBUMS(nombre_album,fecha_lanzamiento,duracion,id_artista)
VALUES('Fantasia pop','16-09-1970',6.54,43);
INSERT INTO ALBUMS(nombre_album,fecha_lanzamiento,duracion,id_artista)
VALUES('Chosen','08-01-2005',7.88,46);
INSERT INTO ALBUMS(nombre_album,fecha_lanzamiento,duracion,id_artista)
VALUES('Odisea','22-05-1967',8.23,49);
INSERT INTO ALBUMS(nombre_album,fecha_lanzamiento,duracion,id_artista)
VALUES('Playa Saturno','10-07-1981',9.77,54);
INSERT INTO ALBUMS(nombre_album,fecha_lanzamiento,duracion,id_artista)
VALUES('Secretos','04-03-1998',1.43,55);
INSERT INTO ALBUMS(nombre_album,fecha_lanzamiento,duracion,id_artista)
VALUES('Perception','17-10-2008',2.65,59);





INSERT INTO PLAYSLIST_USUARIOS(NOMBRE_PLAYSLIST,PRIVACIDAD_PLAYLIST,DURACION_PLAYSLIST,ID_SONGS,ID_USUA) values ('Carnita Asada','publica',99,11,11);
INSERT INTO PLAYSLIST_USUARIOS(NOMBRE_PLAYSLIST,PRIVACIDAD_PLAYLIST,DURACION_PLAYSLIST,ID_SONGS,ID_USUA) values ('Viva Latino','publica',50,12,12);
INSERT INTO PLAYSLIST_USUARIOS(NOMBRE_PLAYSLIST,PRIVACIDAD_PLAYLIST,DURACION_PLAYSLIST,ID_SONGS,ID_USUA) values ('Exitos en Mexico','publica',68,13,13);
INSERT INTO PLAYSLIST_USUARIOS(NOMBRE_PLAYSLIST,PRIVACIDAD_PLAYLIST,DURACION_PLAYSLIST,ID_SONGS,ID_USUA) values ('La lista Pop','publica',88,13,13);
INSERT INTO PLAYSLIST_USUARIOS(NOMBRE_PLAYSLIST,PRIVACIDAD_PLAYLIST,DURACION_PLAYSLIST,ID_SONGS,ID_USUA) values ('Banda','Privada',91,13,13);
INSERT INTO PLAYSLIST_USUARIOS(NOMBRE_PLAYSLIST,PRIVACIDAD_PLAYLIST,DURACION_PLAYSLIST,ID_SONGS,ID_USUA) values ('Corridos tumbados','Privada',41,14,14);
INSERT INTO PLAYSLIST_USUARIOS(NOMBRE_PLAYSLIST,PRIVACIDAD_PLAYLIST,DURACION_PLAYSLIST,ID_SONGS,ID_USUA) values ('Reggaeton','Privada',51,15,15);
INSERT INTO PLAYSLIST_USUARIOS(NOMBRE_PLAYSLIST,PRIVACIDAD_PLAYLIST,DURACION_PLAYSLIST,ID_SONGS,ID_USUA) values ('Karaoke','publica',61,16,16);
INSERT INTO PLAYSLIST_USUARIOS(NOMBRE_PLAYSLIST,PRIVACIDAD_PLAYLIST,DURACION_PLAYSLIST,ID_SONGS,ID_USUA) values ('Top artistas Mexico','publica',71,17,17);
INSERT INTO PLAYSLIST_USUARIOS(NOMBRE_PLAYSLIST,PRIVACIDAD_PLAYLIST,DURACION_PLAYSLIST,ID_SONGS,ID_USUA) values ('Top Artistas Mexico','Privada',81,18,18);
INSERT INTO PLAYSLIST_USUARIOS(NOMBRE_PLAYSLIST,PRIVACIDAD_PLAYLIST,DURACION_PLAYSLIST,ID_SONGS,ID_USUA) values ('Pistiembre','publica',91,19,19);
INSERT INTO PLAYSLIST_USUARIOS(NOMBRE_PLAYSLIST,PRIVACIDAD_PLAYLIST,DURACION_PLAYSLIST,ID_SONGS,ID_USUA) values ('Favoritas','Privada',31,20,20);


select * from ARTIST;
select * from GENEROS;
select * from USUARIO; 
select * from SUSCRIPCION; 
select * from SONGS;
select * from ALBUMS;
select * from PLAYLIST;
select * from PLAYSLIST_USUARIOS;





/* CONSULTAS */

-- ARTISTA --


SELECT * FROM ARTIST ORDER BY NUM_SEGUIDORES DESC;

SELECT * FROM ARTIST WHERE NUM_SEGUIDORES > 1000000;

SELECT * FROM ARTIST WHERE ULTIMO_SEN = 'Sweet Home Chicago';

SELECT COUNT(*) FROM ARTIST;

--SELECT * FROM ARTIST WHERE UPPER(NOMBRE_ARTISTA) LIKE '%ROCK%';--

SELECT * FROM ARTIST WHERE NUM_SEGUIDORES < 1000000 ORDER BY NOMBRE_ARTISTA;

--SELECT * FROM ARTIST WHERE NUM_SEGUIDORES > 5000000 AND ULTIMO_SEN = 'Reboot';--

SELECT SUM(NUM_SEGUIDORES) AS TOTAL_SEGUIDORES FROM ARTIST;

SELECT * FROM ARTIST WHERE UPPER(SUBSTR(ULTIMO_SEN, 1, 1)) = 'S';


-- GENERO --

SELECT * FROM GENEROS;

SELECT * FROM GENEROS WHERE ID_GENERO = 3;

SELECT COUNT(*) AS total_generos FROM GENEROS;

SELECT * FROM GENEROS WHERE UPPER(TIPO_GENERO) LIKE '%POP%';

SELECT * FROM GENEROS ORDER BY TIPO_GENERO ASC;

SELECT * FROM GENEROS WHERE ROWNUM <= 5;

SELECT * FROM GENEROS WHERE UPPER(TIPO_GENERO) NOT IN ('ROCK', 'POP');


-- USUARIO --

SELECT * FROM Usuario ORDER BY Nombre_Usuario;

SELECT Nombre_Usuario, Seguidores
FROM Usuario
WHERE Seguidores > 10;

SELECT U.ID_USUARIO, U.NOMBRE_USUARIO, U.EMAIL, S.TIPO_SUB
FROM USUARIO U
INNER JOIN SUSCRIPCION S ON U.ID_USUARIO = S.ID_USUARIO;

SELECT NOMBRE_USUARIO, EMAIL
FROM USUARIO
WHERE ID_USUARIO IN (SELECT ID_USUARIO FROM SUSCRIPCION WHERE TIPO_SUB = 'Premium individual');

SELECT NOMBRE_USUARIO, EMAIL
FROM USUARIO
WHERE ID_USUARIO IN (SELECT ID_USUARIO FROM SUSCRIPCION WHERE TIPO_SUB = 'Free');


SELECT NOMBRE_USUARIO, EMAIL
FROM USUARIO
WHERE ID_USUARIO IN (SELECT ID_USUARIO FROM SUSCRIPCION WHERE TIPO_SUB = 'Premium familiar');


-- SUSCRIPCION --


--1.Seleccionar todas las suscripciones
SELECT * FROM SUSCRIPCION;

--2.Seleccionar las suscripciones de tipo "Premium individual"
SELECT * FROM SUSCRIPCION WHERE TIPO_SUB = 'Premium individual';

--3.Seleccionar las suscripciones de tipo "Free" para un usuario espec�fico (por ejemplo, usuario con ID 2)
SELECT * FROM SUSCRIPCION WHERE TIPO_SUB = 'Free' AND ID_USUARIO = 2;

--4.Contar el n�mero total de suscripciones
SELECT COUNT(*) AS total_suscripciones FROM SUSCRIPCION;

--5.Seleccionar suscripciones ordenadas por tipo de suscripci�n de forma ascendente
SELECT * FROM SUSCRIPCION ORDER BY TIPO_SUB ASC;

--6.Encontrar el ID de suscripci�n m�ximo
SELECT MAX(ID_SUSCRIPCION) AS max_id_suscripcion FROM SUSCRIPCION;

--7.Seleccionar suscripciones de usuarios con ID entre 5 y 10 Rango de Usuarios
SELECT * FROM SUSCRIPCION WHERE ID_USUARIO BETWEEN 5 AND 10;

--8.Contar el n�mero de suscripciones de tipo "Premium familiar"
SELECT COUNT(*) AS total_premium_familiar FROM SUSCRIPCION WHERE TIPO_SUB = 'Premium familiar';

--9.Mostrar la informaci�n de suscripci�n junto con el nombre del usuario
SELECT S.*, U.NOMBRE_USUARIO
FROM SUSCRIPCION S
JOIN USUARIO U ON S.ID_USUARIO = U.ID_USUARIO;

--10.Seleccionar la cantidad de suscripciones por tipo
SELECT TIPO_SUB, COUNT(*) AS cantidad_suscripciones
FROM SUSCRIPCION
GROUP BY TIPO_SUB;

SELECT S.TIPO_SUB, COUNT(U.ID_USUARIO) AS NUMERO_DE_USUARIOS
FROM SUSCRIPCION S
LEFT JOIN USUARIO U ON S.ID_USUARIO = S.ID_SUSCRIPCION
GROUP BY S.TIPO_SUB;

-- SONGS -- 

--Primera Consulta de todos los usuarios que tienen una playlist personalizada--
Select U.NOMBRE_USUARIO,PU.NOMBRE_PLAYSLIST from USUARIO U INNER JOIN PLAYSLIST_USUARIOS PU ON U.ID_USUARIO=PU.ID_USUA;

--Segunda consulta de todos los albunes junto con el numero de canciones que tienen--
Select P.NOMBRE_PLAYSLIST AS PlayList, COUNT(*) AS Numero_de_Canciones from PLAYLIST P JOIN SONGS S 
ON P.ID_SONGS = S.ID_SONGS group by P.NOMBRE_PLAYSLIST;

--Tercera Consulta donde Se muestran las canciones con su respectivo genero--
Select G.TIPO_GENERO AS Genero, S.NOMBRE_CANCION from GENEROS G INNER JOIN SONGS S ON G.ID_GENERO = S.ID_GENERO;

--Cuarta Consulta donde se muestra el nombre del artista, sus canciones y la duracion de cada una-- 
Select A.NOMBRE_ARTISTA, S.NOMBRE_CANCION, S.DURACION from ARTIST A INNER JOIN SONGS S ON A.ID_ARTI =  S.ID_ARTI;

-- Quinta Consulta donde se muestra el nombre de usuario y el tipo de suscripcion que tiene cada uno --
Select S.NOMBRE_USUARIO AS NOMBRE, SUS.TIPO_SUB AS SUSCRIPCION from USUARIO S INNER JOIN SUSCRIPCION SUS ON S.ID_USUARIO = SUS.ID_USUARIO;

-- Sexta Consulta donde se muestran cada una de las suscripciones y el numero de personas que tienen cada uno --
SELECT TIPO_SUB AS SUSCRIPCION, COUNT(*) AS NoPersonas from SUSCRIPCION GROUP BY TIPO_SUB;

-- Septima consulta donde se muestran la playlist de los usuarios y el numero de canciones que tienen            una--
SELECT DISTINCT PS.NOMBRE_PLAYSLIST, (SELECT COUNT(*) FROM SONGS S where PS.ID_SONGS = S.ID_SONGS) AS NOCANCIONES
FROM PLAYSLIST_USUARIOS;

--Octava consulta donde se muestran todos los nombres de artistsas y su numero de canciones --
SELECT A.NOMBRE_ARTISTA, COUNT(*) AS NoCanciones from ARTIST A INNER JOIN SONGS S ON A.ID_ARTI = S.ID_ARTI GROUP BY A.NOMBRE_ARTISTA;

--Novena consulta donde se muestra cada uno de los generos y el numero de canciones que tiene cada uno -- 
SELECT G.TIPO_GENERO AS GENERO, COUNT (*) AS NOCANCIONES FROM GENEROS G INNER JOIN SONGS S ON G.ID_GENERO = S.ID_GENERO
GROUP BY G.TIPO_GENERO;



-- ALBUMS --

-- PLAYLIST -- 

-- PLAYSLIST_USUARIOS --






