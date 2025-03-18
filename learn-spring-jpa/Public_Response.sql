--------------------------------------------------------
--  File created - Tuesday-March-18-2025   
--------------------------------------------------------
--------------------------------------------------------
--  DDL for Table PUBLIC_RESPONSE
--------------------------------------------------------

  CREATE TABLE "SYSTEM"."PUBLIC_RESPONSE" 
   (	"MOVIE_ID" NUMBER(*,0), 
	"MOVIE_NAME" VARCHAR2(128 BYTE), 
	"TOMATO_METER" NUMBER(*,0), 
	"AUDIENCE_SCORE" NUMBER(*,0), 
	"METACRITICAL" NUMBER(*,0), 
	"CINEMA_SCORE" VARCHAR2(26 BYTE), 
	"DOMESTIC_RANKING" NUMBER(*,0), 
	"WORLD_WIDE_RANKING" NUMBER(*,0), 
	"PHASE_ID" NUMBER(*,0)
   ) PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 
 NOCOMPRESS LOGGING
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SYSTEM" ;
REM INSERTING into SYSTEM.PUBLIC_RESPONSE
SET DEFINE OFF;
Insert into SYSTEM.PUBLIC_RESPONSE (MOVIE_ID,MOVIE_NAME,TOMATO_METER,AUDIENCE_SCORE,METACRITICAL,CINEMA_SCORE,DOMESTIC_RANKING,WORLD_WIDE_RANKING,PHASE_ID) values (1,'Iron Man',94,91,79,'A ',89,190,1);
Insert into SYSTEM.PUBLIC_RESPONSE (MOVIE_ID,MOVIE_NAME,TOMATO_METER,AUDIENCE_SCORE,METACRITICAL,CINEMA_SCORE,DOMESTIC_RANKING,WORLD_WIDE_RANKING,PHASE_ID) values (2,'The Incredible Hulk',67,70,61,'A-',494,625,1);
Insert into SYSTEM.PUBLIC_RESPONSE (MOVIE_ID,MOVIE_NAME,TOMATO_METER,AUDIENCE_SCORE,METACRITICAL,CINEMA_SCORE,DOMESTIC_RANKING,WORLD_WIDE_RANKING,PHASE_ID) values (3,'Iron Man 2',72,71,57,'A ',95,172,1);
Insert into SYSTEM.PUBLIC_RESPONSE (MOVIE_ID,MOVIE_NAME,TOMATO_METER,AUDIENCE_SCORE,METACRITICAL,CINEMA_SCORE,DOMESTIC_RANKING,WORLD_WIDE_RANKING,PHASE_ID) values (4,'Thor',77,76,57,'B+',280,290,1);
Insert into SYSTEM.PUBLIC_RESPONSE (MOVIE_ID,MOVIE_NAME,TOMATO_METER,AUDIENCE_SCORE,METACRITICAL,CINEMA_SCORE,DOMESTIC_RANKING,WORLD_WIDE_RANKING,PHASE_ID) values (5,'Captain America: The First Avenger',79,75,66,'A-',298,394,1);
Insert into SYSTEM.PUBLIC_RESPONSE (MOVIE_ID,MOVIE_NAME,TOMATO_METER,AUDIENCE_SCORE,METACRITICAL,CINEMA_SCORE,DOMESTIC_RANKING,WORLD_WIDE_RANKING,PHASE_ID) values (6,'Marvel''s The Avengers',91,91,69,'A+',12,10,1);
Insert into SYSTEM.PUBLIC_RESPONSE (MOVIE_ID,MOVIE_NAME,TOMATO_METER,AUDIENCE_SCORE,METACRITICAL,CINEMA_SCORE,DOMESTIC_RANKING,WORLD_WIDE_RANKING,PHASE_ID) values (7,'Iron Man 3',79,78,62,'A ',39,25,2);
Insert into SYSTEM.PUBLIC_RESPONSE (MOVIE_ID,MOVIE_NAME,TOMATO_METER,AUDIENCE_SCORE,METACRITICAL,CINEMA_SCORE,DOMESTIC_RANKING,WORLD_WIDE_RANKING,PHASE_ID) values (8,'Thor: The Dark World',66,75,54,'A-',222,164,2);
Insert into SYSTEM.PUBLIC_RESPONSE (MOVIE_ID,MOVIE_NAME,TOMATO_METER,AUDIENCE_SCORE,METACRITICAL,CINEMA_SCORE,DOMESTIC_RANKING,WORLD_WIDE_RANKING,PHASE_ID) values (9,'Captain America: The Winter Soldier',90,92,70,'A ',134,134,2);
Insert into SYSTEM.PUBLIC_RESPONSE (MOVIE_ID,MOVIE_NAME,TOMATO_METER,AUDIENCE_SCORE,METACRITICAL,CINEMA_SCORE,DOMESTIC_RANKING,WORLD_WIDE_RANKING,PHASE_ID) values (10,'Guardians of the Galaxy',92,92,76,'A ',79,114,2);
Insert into SYSTEM.PUBLIC_RESPONSE (MOVIE_ID,MOVIE_NAME,TOMATO_METER,AUDIENCE_SCORE,METACRITICAL,CINEMA_SCORE,DOMESTIC_RANKING,WORLD_WIDE_RANKING,PHASE_ID) values (11,'Avengers: Age of Ultron',76,83,66,'A ',25,15,2);
Insert into SYSTEM.PUBLIC_RESPONSE (MOVIE_ID,MOVIE_NAME,TOMATO_METER,AUDIENCE_SCORE,METACRITICAL,CINEMA_SCORE,DOMESTIC_RANKING,WORLD_WIDE_RANKING,PHASE_ID) values (12,'Ant-Man',83,85,64,'A ',283,233,2);
Insert into SYSTEM.PUBLIC_RESPONSE (MOVIE_ID,MOVIE_NAME,TOMATO_METER,AUDIENCE_SCORE,METACRITICAL,CINEMA_SCORE,DOMESTIC_RANKING,WORLD_WIDE_RANKING,PHASE_ID) values (13,'Captain America: Civil War',90,89,75,'A ',42,29,3);
Insert into SYSTEM.PUBLIC_RESPONSE (MOVIE_ID,MOVIE_NAME,TOMATO_METER,AUDIENCE_SCORE,METACRITICAL,CINEMA_SCORE,DOMESTIC_RANKING,WORLD_WIDE_RANKING,PHASE_ID) values (14,'Doctor Strange',89,86,72,'A ',174,155,3);
Insert into SYSTEM.PUBLIC_RESPONSE (MOVIE_ID,MOVIE_NAME,TOMATO_METER,AUDIENCE_SCORE,METACRITICAL,CINEMA_SCORE,DOMESTIC_RANKING,WORLD_WIDE_RANKING,PHASE_ID) values (15,'Guardians of the Galaxy Vol. 2',85,87,67,'A ',50,88,3);
Insert into SYSTEM.PUBLIC_RESPONSE (MOVIE_ID,MOVIE_NAME,TOMATO_METER,AUDIENCE_SCORE,METACRITICAL,CINEMA_SCORE,DOMESTIC_RANKING,WORLD_WIDE_RANKING,PHASE_ID) values (16,'Spider-Man: Homecoming',92,87,73,'A ',80,78,3);
Insert into SYSTEM.PUBLIC_RESPONSE (MOVIE_ID,MOVIE_NAME,TOMATO_METER,AUDIENCE_SCORE,METACRITICAL,CINEMA_SCORE,DOMESTIC_RANKING,WORLD_WIDE_RANKING,PHASE_ID) values (17,'Thor: Ragnarok',93,87,74,'A ',97,92,3);
Insert into SYSTEM.PUBLIC_RESPONSE (MOVIE_ID,MOVIE_NAME,TOMATO_METER,AUDIENCE_SCORE,METACRITICAL,CINEMA_SCORE,DOMESTIC_RANKING,WORLD_WIDE_RANKING,PHASE_ID) values (18,'Black Panther',96,79,88,'A+',6,17,3);
Insert into SYSTEM.PUBLIC_RESPONSE (MOVIE_ID,MOVIE_NAME,TOMATO_METER,AUDIENCE_SCORE,METACRITICAL,CINEMA_SCORE,DOMESTIC_RANKING,WORLD_WIDE_RANKING,PHASE_ID) values (19,'Avengers: Infinity War',85,91,68,'A ',8,6,3);
Insert into SYSTEM.PUBLIC_RESPONSE (MOVIE_ID,MOVIE_NAME,TOMATO_METER,AUDIENCE_SCORE,METACRITICAL,CINEMA_SCORE,DOMESTIC_RANKING,WORLD_WIDE_RANKING,PHASE_ID) values (20,'Ant-Man and the Wasp',87,81,70,'A-',204,179,3);
Insert into SYSTEM.PUBLIC_RESPONSE (MOVIE_ID,MOVIE_NAME,TOMATO_METER,AUDIENCE_SCORE,METACRITICAL,CINEMA_SCORE,DOMESTIC_RANKING,WORLD_WIDE_RANKING,PHASE_ID) values (21,'Captain Marvel',79,45,64,'A ',33,33,3);
Insert into SYSTEM.PUBLIC_RESPONSE (MOVIE_ID,MOVIE_NAME,TOMATO_METER,AUDIENCE_SCORE,METACRITICAL,CINEMA_SCORE,DOMESTIC_RANKING,WORLD_WIDE_RANKING,PHASE_ID) values (22,'Avengers: Endgame',94,90,78,'A+',2,2,3);
Insert into SYSTEM.PUBLIC_RESPONSE (MOVIE_ID,MOVIE_NAME,TOMATO_METER,AUDIENCE_SCORE,METACRITICAL,CINEMA_SCORE,DOMESTIC_RANKING,WORLD_WIDE_RANKING,PHASE_ID) values (23,'Spider-Man: Far From Home',90,95,69,'A ',49,32,3);
Insert into SYSTEM.PUBLIC_RESPONSE (MOVIE_ID,MOVIE_NAME,TOMATO_METER,AUDIENCE_SCORE,METACRITICAL,CINEMA_SCORE,DOMESTIC_RANKING,WORLD_WIDE_RANKING,PHASE_ID) values (24,'Black Widow',79,91,68,'A-',280,387,4);
Insert into SYSTEM.PUBLIC_RESPONSE (MOVIE_ID,MOVIE_NAME,TOMATO_METER,AUDIENCE_SCORE,METACRITICAL,CINEMA_SCORE,DOMESTIC_RANKING,WORLD_WIDE_RANKING,PHASE_ID) values (25,'Shang-Chi and the Legend of the Ten Rings',91,98,71,'A ',185,315,4);
Insert into SYSTEM.PUBLIC_RESPONSE (MOVIE_ID,MOVIE_NAME,TOMATO_METER,AUDIENCE_SCORE,METACRITICAL,CINEMA_SCORE,DOMESTIC_RANKING,WORLD_WIDE_RANKING,PHASE_ID) values (26,'Eternals',47,78,52,'B ',358,356,4);
Insert into SYSTEM.PUBLIC_RESPONSE (MOVIE_ID,MOVIE_NAME,TOMATO_METER,AUDIENCE_SCORE,METACRITICAL,CINEMA_SCORE,DOMESTIC_RANKING,WORLD_WIDE_RANKING,PHASE_ID) values (27,'Spider-Man: No Way Home',93,98,71,'A+',3,7,4);
Insert into SYSTEM.PUBLIC_RESPONSE (MOVIE_ID,MOVIE_NAME,TOMATO_METER,AUDIENCE_SCORE,METACRITICAL,CINEMA_SCORE,DOMESTIC_RANKING,WORLD_WIDE_RANKING,PHASE_ID) values (28,'Doctor Strange in the Multiverse of Madness',74,null,60,'B+',40,65,4);
Insert into SYSTEM.PUBLIC_RESPONSE (MOVIE_ID,MOVIE_NAME,TOMATO_METER,AUDIENCE_SCORE,METACRITICAL,CINEMA_SCORE,DOMESTIC_RANKING,WORLD_WIDE_RANKING,PHASE_ID) values (29,'Thor: Love and Thunder',63,null,57,'B+',73,121,4);
Insert into SYSTEM.PUBLIC_RESPONSE (MOVIE_ID,MOVIE_NAME,TOMATO_METER,AUDIENCE_SCORE,METACRITICAL,CINEMA_SCORE,DOMESTIC_RANKING,WORLD_WIDE_RANKING,PHASE_ID) values (30,'Black Panther: Wakanda Forever',84,null,67,'A ',28,89,4);
Insert into SYSTEM.PUBLIC_RESPONSE (MOVIE_ID,MOVIE_NAME,TOMATO_METER,AUDIENCE_SCORE,METACRITICAL,CINEMA_SCORE,DOMESTIC_RANKING,WORLD_WIDE_RANKING,PHASE_ID) values (31,'Ant-Man and the Wasp: Quantumania',46,null,48,'B ',210,267,5);
Insert into SYSTEM.PUBLIC_RESPONSE (MOVIE_ID,MOVIE_NAME,TOMATO_METER,AUDIENCE_SCORE,METACRITICAL,CINEMA_SCORE,DOMESTIC_RANKING,WORLD_WIDE_RANKING,PHASE_ID) values (32,'Guardians of the Galaxy Vol. 3',82,null,64,'A ',65,94,5);
Insert into SYSTEM.PUBLIC_RESPONSE (MOVIE_ID,MOVIE_NAME,TOMATO_METER,AUDIENCE_SCORE,METACRITICAL,CINEMA_SCORE,DOMESTIC_RANKING,WORLD_WIDE_RANKING,PHASE_ID) values (33,'The Marvels',62,null,50,'B ',1002,880,5);
Insert into SYSTEM.PUBLIC_RESPONSE (MOVIE_ID,MOVIE_NAME,TOMATO_METER,AUDIENCE_SCORE,METACRITICAL,CINEMA_SCORE,DOMESTIC_RANKING,WORLD_WIDE_RANKING,PHASE_ID) values (34,'Deadpool & Wolverine',78,null,56,'A ',12,20,5);
Insert into SYSTEM.PUBLIC_RESPONSE (MOVIE_ID,MOVIE_NAME,TOMATO_METER,AUDIENCE_SCORE,METACRITICAL,CINEMA_SCORE,DOMESTIC_RANKING,WORLD_WIDE_RANKING,PHASE_ID) values (35,'Captain America: Brave New World',49,null,42,'B-',843,953,5);
