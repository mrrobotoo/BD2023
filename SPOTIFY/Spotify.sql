CREATE TABLE ALBUMS(
ID_ALBUMS NUMBER GENERATED ALWAYS AS IDENTITY PRIMARY KEY,
NOMBRE_ALBUM VARCHAR2(60),
FECHA_LANZAMIENTO DATE,
DURACION NUMBER,
ID_ARTISTA NUMBER,
ID_SONGS NUMBER,

CONSTRAINT FK_ALBUMS FOREIGN KEY (ID_ARTISTA) REFERENCES ARTIST(ID_ARTI),
FOREIGN KEY (ID_SONGS) REFERENCES SONGS(ID_SONGS)
);

INSERT  INTO ALBUMS (NOMBRE_ALBUMS,FECHA_LANZAMIENTO,DURACION,ID_ARTISTA,ID_SONGS) VALUES ('Blues',DATE '2003/01/01',39.12,1,1);
INSERT INTO ALBUMS (NOMBRE_ALBUMS,FECHA_LANZAMIENTO,DURACION,ID_ARTISTA,ID_SONGS) VALUES ('Blues Boys',DATE '2015/05/21',1.2,2,2);
INSERT INTO ALBUMS (NOMBRE_ALBUMS,FECHA_LANZAMIENTO,DURACION,ID_ARTISTA,ID_SONGS) VALUES ('Burnin', DATE '1962/01/01',31.37,3,3);

INSERT INTO ALBUMS (NOMBRE_ALBUMS,FECHA_LANZAMIENTO,DURACION,ID_ARTISTA,ID_SONGS) VALUES ('Walkerworld', DATE '2023/10/11',27.40,4,4);
INSERT INTO ALBUMS (NOMBRE_ALBUMS,FECHA_LANZAMIENTO,DURACION,ID_ARTISTA,ID_SONGS) VALUES ('Sentio', DATE '2022/04/29',35.23,5,5);
INSERT INTO ALBUMS (NOMBRE_ALBUMS,FECHA_LANZAMIENTO,DURACION,ID_ARTISTA,ID_SONGS) VALUES ('Stories', DATE '2015/10/02',54.40,6,6);

INSERT INTO ALBUMS (NOMBRE_ALBUMS,FECHA_LANZAMIENTO,DURACION,ID_ARTISTA,ID_SONGS) VALUES ('Golpe Avisa', DATE '2014/08/12',44.10,7,7);
INSERT INTO ALBUMS (NOMBRE_ALBUMS,FECHA_LANZAMIENTO,DURACION,ID_ARTISTA,ID_SONGS) VALUES ('Skins', DATE '2018/12/07',19.47,8,8);
INSERT INTO ALBUMS (NOMBRE_ALBUMS,FECHA_LANZAMIENTO,DURACION,ID_ARTISTA,ID_SONGS) VALUES ('2001', DATE '1999/11/16',1.7,9,9);

INSERT INTO ALBUMS (NOMBRE_ALBUMS,FECHA_LANZAMIENTO,DURACION,ID_ARTISTA,ID_SONGS) VALUES ('Me And My Gang', DATE '2003/01/01',56.6,10,10);
INSERT INTO ALBUMS (NOMBRE_ALBUMS,FECHA_LANZAMIENTO,DURACION,ID_ARTISTA,ID_SONGS) VALUES ('Something in the Orange', DATE '2022/04/22',15.9,11,11);
INSERT INTO ALBUMS (NOMBRE_ALBUMS,FECHA_LANZAMIENTO,DURACION,ID_ARTISTA,ID_SONGS) VALUES ('One Thing At A Time',DATE '2023/03/03',1.52,12,12);

INSERT INTO ALBUMS (NOMBRE_ALBUMS,FECHA_LANZAMIENTO,DURACION,ID_ARTISTA,ID_SONGS) VALUES ('Long Way Down',DATE '2013/06/24',51.59,13,13);
INSERT INTO ALBUMS (NOMBRE_ALBUMS,FECHA_LANZAMIENTO,DURACION,ID_ARTISTA,ID_SONGS) VALUES ('forsaken', DATE '2022/11/25',3.27,14,14);
INSERT INTO ALBUMS (NOMBRE_ALBUMS,FECHA_LANZAMIENTO,DURACION,ID_ARTISTA,ID_SONGS) VALUES ('labour', DATE '2023/03/23',3.57,15,15);

INSERT INTO ALBUMS (NOMBRE_ALBUMS,FECHA_LANZAMIENTO,DURACION,ID_ARTISTA,ID_SONGS) VALUES ('Caramel', DATE '2023/10/20',16.5,16,16);
INSERT INTO ALBUMS (NOMBRE_ALBUMS,FECHA_LANZAMIENTO,DURACION,ID_ARTISTA,ID_SONGS) VALUES ('Coup de foudre', DATE '2023/05/11',3.2,17,17);
INSERT INTO ALBUMS (NOMBRE_ALBUMS,FECHA_LANZAMIENTO,DURACION,ID_ARTISTA,ID_SONGS) VALUES ('Naissance', DATE '2021/05/14',25.21,17,17);

INSERT INTO ALBUMS (NOMBRE_ALBUMS,FECHA_LANZAMIENTO,DURACION,ID_ARTISTA,ID_SONGS) VALUES ('Oracular Spectacular', DATE '2007/12/14',40.20,18,18);
INSERT INTO ALBUMS (NOMBRE_ALBUMS,FECHA_LANZAMIENTO,DURACION,ID_ARTISTA,ID_SONGS) VALUES ('Little Dark Age', DATE '2018/02/09',44.3,18,18);
INSERT INTO ALBUMS (NOMBRE_ALBUMS,FECHA_LANZAMIENTO,DURACION,ID_ARTISTA,ID_SONGS) VALUES ('Le feu', DATE '2021/12/01',3.13,19,19);

INSERT INTO ALBUMS (NOMBRE_ALBUMS,FECHA_LANZAMIENTO,DURACION,ID_ARTISTA,ID_SONGS) VALUES ('Hyperdruide', DATE '2022/10/07',24.34,19,19);
INSERT INTO ALBUMS (NOMBRE_ALBUMS,FECHA_LANZAMIENTO,DURACION,ID_ARTISTA,ID_SONGS) VALUES ('Love Quantum', DATE '2022/06/24',15.9,20,20);
INSERT INTO ALBUMS (NOMBRE_ALBUMS,FECHA_LANZAMIENTO,DURACION,ID_ARTISTA,ID_SONGS) VALUES ('Between Days',DATE '2021/04/23',25.29,20,20);


INSERT  INTO ALBUMS (NOMBRE_ALBUMS,FECHA_LANZAMIENTO,DURACION,ID_ARTISTA,ID_SONGS) VALUES ('Blk2life',DATE '2021/09/24',48.36,21,21);
INSERT INTO ALBUMS (NOMBRE_ALBUMS,FECHA_LANZAMIENTO,DURACION,ID_ARTISTA,ID_SONGS) VALUES ('Til We Meet Againg',DATE '2021/04/16',1.15,22,22);
INSERT INTO ALBUMS (NOMBRE_ALBUMS,FECHA_LANZAMIENTO,DURACION,ID_ARTISTA,ID_SONGS) VALUES ('Vaults', DATE '2022/04/29',1.8,23,23);

INSERT INTO ALBUMS (NOMBRE_ALBUMS,FECHA_LANZAMIENTO,DURACION,ID_ARTISTA,ID_SONGS) VALUES ('Nata Montana', DATE '2023/06/30',44.43,24,24);
INSERT INTO ALBUMS (NOMBRE_ALBUMS,FECHA_LANZAMIENTO,DURACION,ID_ARTISTA,ID_SONGS) VALUES ('Genesis', DATE '2023/06/29',54.10,25,25);
INSERT INTO ALBUMS (NOMBRE_ALBUMS,FECHA_LANZAMIENTO,DURACION,ID_ARTISTA,ID_SONGS) VALUES ('YHLQMDLG', DATE '2020/02/29',1.5,26,26);

INSERT INTO ALBUMS (NOMBRE_ALBUMS,FECHA_LANZAMIENTO,DURACION,ID_ARTISTA,ID_SONGS) VALUES ('Proof', DATE '2022/06/10',2.8,27,27);
INSERT INTO ALBUMS (NOMBRE_ALBUMS,FECHA_LANZAMIENTO,DURACION,ID_ARTISTA,ID_SONGS) VALUES ('Celebrate', DATE '2022/07/27',30.18,28,28);
INSERT INTO ALBUMS (NOMBRE_ALBUMS,FECHA_LANZAMIENTO,DURACION,ID_ARTISTA,ID_SONGS) VALUES ('Born Pink', DATE '2022/09/16',24.34,29,29);

INSERT INTO ALBUMS (NOMBRE_ALBUMS,FECHA_LANZAMIENTO,DURACION,ID_ARTISTA,ID_SONGS) VALUES ('Ultraviolence', DATE '2014/01/01',1.5,30,30);
INSERT INTO ALBUMS (NOMBRE_ALBUMS,FECHA_LANZAMIENTO,DURACION,ID_ARTISTA,ID_SONGS) VALUES ('I killed your dog', DATE '2023/10/13',35.48,31,31);
INSERT INTO ALBUMS (NOMBRE_ALBUMS,FECHA_LANZAMIENTO,DURACION,ID_ARTISTA,ID_SONGS) VALUES ('Souvlaki',DATE '1994/11/05',1.29,32,32);

INSERT INTO ALBUMS (NOMBRE_ALBUMS,FECHA_LANZAMIENTO,DURACION,ID_ARTISTA,ID_SONGS) VALUES ('LA ISLA LP',DATE '2020/12/26',30.18,33,33);
INSERT INTO ALBUMS (NOMBRE_ALBUMS,FECHA_LANZAMIENTO,DURACION,ID_ARTISTA,ID_SONGS) VALUES ('Data', DATE '2023/06/29',1.03,34,34);
INSERT INTO ALBUMS (NOMBRE_ALBUMS,FECHA_LANZAMIENTO,DURACION,ID_ARTISTA,ID_SONGS) VALUES ('Future Nostalgia', DATE '2020/03/27',43.23,35,35);

INSERT INTO ALBUMS (NOMBRE_ALBUMS,FECHA_LANZAMIENTO,DURACION,ID_ARTISTA,ID_SONGS) VALUES ('Load', DATE '1996/01/01',1.18,36,36);
INSERT INTO ALBUMS (NOMBRE_ALBUMS,FECHA_LANZAMIENTO,DURACION,ID_ARTISTA,ID_SONGS) VALUES ('En vivo', DATE '2012/03/26',1.48,37,37);
INSERT INTO ALBUMS (NOMBRE_ALBUMS,FECHA_LANZAMIENTO,DURACION,ID_ARTISTA,ID_SONGS) VALUES ('Vulgar Display of Power', DATE '1992/03/21',52.52,38,38);

INSERT INTO ALBUMS (NOMBRE_ALBUMS,FECHA_LANZAMIENTO,DURACION,ID_ARTISTA,ID_SONGS) VALUES ('Exodus', DATE '1997/06/03',50.12,39,39);
INSERT INTO ALBUMS (NOMBRE_ALBUMS,FECHA_LANZAMIENTO,DURACION,ID_ARTISTA,ID_SONGS) VALUES ('La Dulzura', DATE '2010/08/22',56.40,40,40);
INSERT INTO ALBUMS (NOMBRE_ALBUMS,FECHA_LANZAMIENTO,DURACION,ID_ARTISTA,ID_SONGS) VALUES ('The Best of Leep Perry', DATE '1996/10/14',2.34,41,41);

INSERT INTO ALBUMS (NOMBRE_ALBUMS,FECHA_LANZAMIENTO,DURACION,ID_ARTISTA,ID_SONGS) VALUES ('No me pids perdon', DATE '2014/06/24',38.11,42,42);
INSERT INTO ALBUMS (NOMBRE_ALBUMS,FECHA_LANZAMIENTO,DURACION,ID_ARTISTA,ID_SONGS) VALUES ('Simplemente gracias', DATE '2019/08/16',42.17,43,43);
INSERT INTO ALBUMS (NOMBRE_ALBUMS,FECHA_LANZAMIENTO,DURACION,ID_ARTISTA,ID_SONGS) VALUES ('El Barco',DATE '2007/09/15',43.56,44,44);

INSERT INTO ALBUMS (NOMBRE_ALBUMS,FECHA_LANZAMIENTO,DURACION,ID_ARTISTA,ID_SONGS) VALUES ('Sue�o Electro', DATE '2010/01/01',36.480,45,45);
INSERT INTO ALBUMS (NOMBRE_ALBUMS,FECHA_LANZAMIENTO,DURACION,ID_ARTISTA,ID_SONGS) VALUES ('Seis', DATE '2021/04/09',51.34,46,46);
INSERT INTO ALBUMS (NOMBRE_ALBUMS,FECHA_LANZAMIENTO,DURACION,ID_ARTISTA,ID_SONGS) VALUES ('Un besito mas', DATE '2015/12/04',47.29,47,47);

INSERT INTO ALBUMS (NOMBRE_ALBUMS,FECHA_LANZAMIENTO,DURACION,ID_ARTISTA,ID_SONGS) VALUES ('Rush', DATE '2023/01/20',52.50,48,48);
INSERT INTO ALBUMS (NOMBRE_ALBUMS,FECHA_LANZAMIENTO,DURACION,ID_ARTISTA,ID_SONGS) VALUES ('Enema Of The State', DATE '1999/06/01',35.19,49,49);
INSERT INTO ALBUMS (NOMBRE_ALBUMS,FECHA_LANZAMIENTO,DURACION,ID_ARTISTA,ID_SONGS) VALUES ('Hot Fuss',DATE '2004/05/28',49.52,50,50);

INSERT INTO ALBUMS (NOMBRE_ALBUMS,FECHA_LANZAMIENTO,DURACION,ID_ARTISTA,ID_SONGS) VALUES ('Odisea', DATE '2017/08/25',57.57,51,51);
INSERT INTO ALBUMS (NOMBRE_ALBUMS,FECHA_LANZAMIENTO,DURACION,ID_ARTISTA,ID_SONGS) VALUES ('Barrio Fino', DATE '2004/07/13',1.11,52,52);
INSERT INTO ALBUMS (NOMBRE_ALBUMS,FECHA_LANZAMIENTO,DURACION,ID_ARTISTA,ID_SONGS) VALUES ('La ultima mision',DATE '2022/12/01',1.21,53,53);

INSERT INTO ALBUMS (NOMBRE_ALBUMS,FECHA_LANZAMIENTO,DURACION,ID_ARTISTA,ID_SONGS) VALUES ('Donde quiero estar', DATE '2023/01/20',47.42,54,54);
INSERT INTO ALBUMS (NOMBRE_ALBUMS,FECHA_LANZAMIENTO,DURACION,ID_ARTISTA,ID_SONGS) VALUES ('19', DATE '2019/05/17',28.14,55,55);
INSERT INTO ALBUMS (NOMBRE_ALBUMS,FECHA_LANZAMIENTO,DURACION,ID_ARTISTA,ID_SONGS) VALUES ('Saturno', DATE '2023/01/24',54.3,56,56);

INSERT INTO ALBUMS (NOMBRE_ALBUMS,FECHA_LANZAMIENTO,DURACION,ID_ARTISTA,ID_SONGS) VALUES ('Secretos', DATE '1985/07/15',43.07,57,57);
INSERT INTO ALBUMS (NOMBRE_ALBUMS,FECHA_LANZAMIENTO,DURACION,ID_ARTISTA,ID_SONGS) VALUES ('Romance', DATE '1991/12/19',44.14,58,58);
INSERT INTO ALBUMS (NOMBRE_ALBUMS,FECHA_LANZAMIENTO,DURACION,ID_ARTISTA,ID_SONGS) VALUES ('Privilegio',DATE '2015/01/20',51.04,59,59);

INSERT INTO ALBUMS (NOMBRE_ALBUMS,FECHA_LANZAMIENTO,DURACION,ID_ARTISTA,ID_SONGS) VALUES ('Recovery', DATE '2010/06/18',1.17,60,60);