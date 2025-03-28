--------------------------------------------------------
--  File created - Friday-March-28-2025   
--------------------------------------------------------
--------------------------------------------------------
--  DDL for Table CHARACTERS
--------------------------------------------------------

  CREATE TABLE "SYSTEM"."CHARACTERS" 
   (	"ID" NUMBER, 
	"MOVIE_ID" NUMBER, 
	"CHARACTER_ID" NUMBER, 
	"CHARACTER_NAME" VARCHAR2(255 BYTE), 
	"ACTOR" VARCHAR2(255 BYTE), 
	"PHASE_ID" NUMBER, 
	"MOVIE" VARCHAR2(255 BYTE)
   ) PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 
 NOCOMPRESS LOGGING
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SYSTEM" ;
REM INSERTING into SYSTEM.CHARACTERS
SET DEFINE OFF;
Insert into SYSTEM.CHARACTERS (ID,MOVIE_ID,CHARACTER_ID,CHARACTER_NAME,ACTOR,PHASE_ID,MOVIE) values (1,1,1,'Tony Stark/Iron Man','Robert Downey ,Jr.',1,'Iron Man');
Insert into SYSTEM.CHARACTERS (ID,MOVIE_ID,CHARACTER_ID,CHARACTER_NAME,ACTOR,PHASE_ID,MOVIE) values (2,1,2,'Rhodey','Terrence Howard',1,'Iron Man');
Insert into SYSTEM.CHARACTERS (ID,MOVIE_ID,CHARACTER_ID,CHARACTER_NAME,ACTOR,PHASE_ID,MOVIE) values (3,1,3,'Obadiah Stane','Jeff Bridges',1,'Iron Man');
Insert into SYSTEM.CHARACTERS (ID,MOVIE_ID,CHARACTER_ID,CHARACTER_NAME,ACTOR,PHASE_ID,MOVIE) values (4,1,4,'Virginia "Pepper" Potts','Gwyneth Paltrow',1,'Iron Man');
Insert into SYSTEM.CHARACTERS (ID,MOVIE_ID,CHARACTER_ID,CHARACTER_NAME,ACTOR,PHASE_ID,MOVIE) values (5,2,5,'Bruce Banner','Edward Norton',1,'The Incredible Hulk');
Insert into SYSTEM.CHARACTERS (ID,MOVIE_ID,CHARACTER_ID,CHARACTER_NAME,ACTOR,PHASE_ID,MOVIE) values (6,3,1,'Tony Stark','Robert Downey, Jr.',1,'Iron Man 2');
Insert into SYSTEM.CHARACTERS (ID,MOVIE_ID,CHARACTER_ID,CHARACTER_NAME,ACTOR,PHASE_ID,MOVIE) values (7,3,4,'Pepper Potts','Gwyneth Paltrow',1,'Iron Man 2');
Insert into SYSTEM.CHARACTERS (ID,MOVIE_ID,CHARACTER_ID,CHARACTER_NAME,ACTOR,PHASE_ID,MOVIE) values (8,3,8,'Natalie Rushman/Natasha Romanoff','Scarlett Johansson',1,'Iron Man 2');
Insert into SYSTEM.CHARACTERS (ID,MOVIE_ID,CHARACTER_ID,CHARACTER_NAME,ACTOR,PHASE_ID,MOVIE) values (9,3,9,'Lt. Col. James "Rhodey" Rhodes','Don Cheadle',1,'Iron Man 2');
Insert into SYSTEM.CHARACTERS (ID,MOVIE_ID,CHARACTER_ID,CHARACTER_NAME,ACTOR,PHASE_ID,MOVIE) values (10,3,10,'Ivan Vanko','Mickey Rourke',1,'Iron Man 2');
Insert into SYSTEM.CHARACTERS (ID,MOVIE_ID,CHARACTER_ID,CHARACTER_NAME,ACTOR,PHASE_ID,MOVIE) values (11,4,11,'Thor','Chris Hemsworth',1,'Thor');
Insert into SYSTEM.CHARACTERS (ID,MOVIE_ID,CHARACTER_ID,CHARACTER_NAME,ACTOR,PHASE_ID,MOVIE) values (12,4,12,'Jane Foster','Natalie Portman',1,'Thor');
Insert into SYSTEM.CHARACTERS (ID,MOVIE_ID,CHARACTER_ID,CHARACTER_NAME,ACTOR,PHASE_ID,MOVIE) values (13,4,13,'Loki','Tom Hiddleston',1,'Thor');
Insert into SYSTEM.CHARACTERS (ID,MOVIE_ID,CHARACTER_ID,CHARACTER_NAME,ACTOR,PHASE_ID,MOVIE) values (14,4,14,'Odin','Anthony Hopkins',1,'Thor');
Insert into SYSTEM.CHARACTERS (ID,MOVIE_ID,CHARACTER_ID,CHARACTER_NAME,ACTOR,PHASE_ID,MOVIE) values (15,4,15,'Heimdall','Idris Elba',1,'Thor');
Insert into SYSTEM.CHARACTERS (ID,MOVIE_ID,CHARACTER_ID,CHARACTER_NAME,ACTOR,PHASE_ID,MOVIE) values (16,5,16,'Steve Rogers / Captain America','Chris Evans',1,'Captain America: The First Avenger');
Insert into SYSTEM.CHARACTERS (ID,MOVIE_ID,CHARACTER_ID,CHARACTER_NAME,ACTOR,PHASE_ID,MOVIE) values (17,5,17,'Chester Philips','Tommy Lee Jones',1,'Captain America: The First Avenger');
Insert into SYSTEM.CHARACTERS (ID,MOVIE_ID,CHARACTER_ID,CHARACTER_NAME,ACTOR,PHASE_ID,MOVIE) values (18,5,18,'Bucky Barnes','Sebastian Stan',1,'Captain America: The First Avenger');
Insert into SYSTEM.CHARACTERS (ID,MOVIE_ID,CHARACTER_ID,CHARACTER_NAME,ACTOR,PHASE_ID,MOVIE) values (19,5,19,'Peggy Carter','Hayley Atwell',1,'Captain America: The First Avenger');
Insert into SYSTEM.CHARACTERS (ID,MOVIE_ID,CHARACTER_ID,CHARACTER_NAME,ACTOR,PHASE_ID,MOVIE) values (20,6,13,'Loki','Tom Hiddleston',1,'The Avengers');
Insert into SYSTEM.CHARACTERS (ID,MOVIE_ID,CHARACTER_ID,CHARACTER_NAME,ACTOR,PHASE_ID,MOVIE) values (21,7,1,'Tony Stark/Iron Man','Robert Downey, Jr.',2,'Iron Man 3');
Insert into SYSTEM.CHARACTERS (ID,MOVIE_ID,CHARACTER_ID,CHARACTER_NAME,ACTOR,PHASE_ID,MOVIE) values (22,7,4,'Pepper Potts','Gwyneth Paltrow',2,'Iron Man 3');
Insert into SYSTEM.CHARACTERS (ID,MOVIE_ID,CHARACTER_ID,CHARACTER_NAME,ACTOR,PHASE_ID,MOVIE) values (23,7,9,'James ''Rhodey'' Rhodes','Don Cheadle',2,'Iron Man 3');
Insert into SYSTEM.CHARACTERS (ID,MOVIE_ID,CHARACTER_ID,CHARACTER_NAME,ACTOR,PHASE_ID,MOVIE) values (24,7,24,'Aldrich Killian','Guy Pearce',2,'Iron Man 3');
Insert into SYSTEM.CHARACTERS (ID,MOVIE_ID,CHARACTER_ID,CHARACTER_NAME,ACTOR,PHASE_ID,MOVIE) values (25,7,25,'The Mandarin','Ben Kingsley',2,'Iron Man 3');
Insert into SYSTEM.CHARACTERS (ID,MOVIE_ID,CHARACTER_ID,CHARACTER_NAME,ACTOR,PHASE_ID,MOVIE) values (26,8,11,'Thor','Chris Hemsworth',2,'Thor: The Dark World');
Insert into SYSTEM.CHARACTERS (ID,MOVIE_ID,CHARACTER_ID,CHARACTER_NAME,ACTOR,PHASE_ID,MOVIE) values (27,8,12,'Jane Foster','Natalie Portman',2,'Thor: The Dark World');
Insert into SYSTEM.CHARACTERS (ID,MOVIE_ID,CHARACTER_ID,CHARACTER_NAME,ACTOR,PHASE_ID,MOVIE) values (28,8,13,'Loki','Tom Hiddleston',2,'Thor: The Dark World');
Insert into SYSTEM.CHARACTERS (ID,MOVIE_ID,CHARACTER_ID,CHARACTER_NAME,ACTOR,PHASE_ID,MOVIE) values (29,8,14,'Odin','Anthony Hopkins',2,'Thor: The Dark World');
Insert into SYSTEM.CHARACTERS (ID,MOVIE_ID,CHARACTER_ID,CHARACTER_NAME,ACTOR,PHASE_ID,MOVIE) values (30,8,15,'Heimdall','Idris Elba',2,'Thor: The Dark World');
Insert into SYSTEM.CHARACTERS (ID,MOVIE_ID,CHARACTER_ID,CHARACTER_NAME,ACTOR,PHASE_ID,MOVIE) values (31,8,31,'Malekith the Accursed','Christopher Eccleston',2,'Thor: The Dark World');
Insert into SYSTEM.CHARACTERS (ID,MOVIE_ID,CHARACTER_ID,CHARACTER_NAME,ACTOR,PHASE_ID,MOVIE) values (32,8,32,'Sif','Jaimie Alexander',2,'Thor: The Dark World');
Insert into SYSTEM.CHARACTERS (ID,MOVIE_ID,CHARACTER_ID,CHARACTER_NAME,ACTOR,PHASE_ID,MOVIE) values (33,9,16,'Captain America/Steve Rogers','Chris Evans',2,'Captain America: The Winter Soldier');
Insert into SYSTEM.CHARACTERS (ID,MOVIE_ID,CHARACTER_ID,CHARACTER_NAME,ACTOR,PHASE_ID,MOVIE) values (34,9,8,'Natasha Romanoff/Black Widow','Scarlett Johansson',2,'Captain America: The Winter Soldier');
Insert into SYSTEM.CHARACTERS (ID,MOVIE_ID,CHARACTER_ID,CHARACTER_NAME,ACTOR,PHASE_ID,MOVIE) values (35,9,18,'Bucky Barnes/Winter Soldier','Sebastian Stan',2,'Captain America: The Winter Soldier');
Insert into SYSTEM.CHARACTERS (ID,MOVIE_ID,CHARACTER_ID,CHARACTER_NAME,ACTOR,PHASE_ID,MOVIE) values (36,9,36,'Agent Alexander Pierce','Robert Redford',2,'Captain America: The Winter Soldier');
Insert into SYSTEM.CHARACTERS (ID,MOVIE_ID,CHARACTER_ID,CHARACTER_NAME,ACTOR,PHASE_ID,MOVIE) values (37,9,37,'Nick Fury','Samuel L. Jackson',2,'Captain America: The Winter Soldier');
Insert into SYSTEM.CHARACTERS (ID,MOVIE_ID,CHARACTER_ID,CHARACTER_NAME,ACTOR,PHASE_ID,MOVIE) values (38,10,38,'Peter Quill','Chris Pratt',2,'Guardians of the Galaxy');
Insert into SYSTEM.CHARACTERS (ID,MOVIE_ID,CHARACTER_ID,CHARACTER_NAME,ACTOR,PHASE_ID,MOVIE) values (39,10,39,'Gamora','Zoe Saldana',2,'Guardians of the Galaxy');
Insert into SYSTEM.CHARACTERS (ID,MOVIE_ID,CHARACTER_ID,CHARACTER_NAME,ACTOR,PHASE_ID,MOVIE) values (40,10,40,'Drax','Dave Bautista',2,'Guardians of the Galaxy');
Insert into SYSTEM.CHARACTERS (ID,MOVIE_ID,CHARACTER_ID,CHARACTER_NAME,ACTOR,PHASE_ID,MOVIE) values (41,10,41,'Groot','Vin Diesel',2,'Guardians of the Galaxy');
Insert into SYSTEM.CHARACTERS (ID,MOVIE_ID,CHARACTER_ID,CHARACTER_NAME,ACTOR,PHASE_ID,MOVIE) values (42,10,42,'Rocket','Bradley Cooper',2,'Guardians of the Galaxy');
Insert into SYSTEM.CHARACTERS (ID,MOVIE_ID,CHARACTER_ID,CHARACTER_NAME,ACTOR,PHASE_ID,MOVIE) values (43,11,43,'Ultron','James Spader',2,'Avengers: Age of Ultron');
Insert into SYSTEM.CHARACTERS (ID,MOVIE_ID,CHARACTER_ID,CHARACTER_NAME,ACTOR,PHASE_ID,MOVIE) values (44,12,44,'Scott Lang / Ant-Man','Paul Rudd',2,'Ant-Man');
Insert into SYSTEM.CHARACTERS (ID,MOVIE_ID,CHARACTER_ID,CHARACTER_NAME,ACTOR,PHASE_ID,MOVIE) values (45,12,45,'Hope Van Dyne','Evangeline Lilly',2,'Ant-Man');
Insert into SYSTEM.CHARACTERS (ID,MOVIE_ID,CHARACTER_ID,CHARACTER_NAME,ACTOR,PHASE_ID,MOVIE) values (46,12,46,'Darren Cross / Yellowjacket','Corey Stoll',2,'Ant-Man');
Insert into SYSTEM.CHARACTERS (ID,MOVIE_ID,CHARACTER_ID,CHARACTER_NAME,ACTOR,PHASE_ID,MOVIE) values (47,12,47,'Paxton','Bobby Cannavale',2,'Ant-Man');
Insert into SYSTEM.CHARACTERS (ID,MOVIE_ID,CHARACTER_ID,CHARACTER_NAME,ACTOR,PHASE_ID,MOVIE) values (48,12,48,'Luis','Michael Pe�a',2,'Ant-Man');
Insert into SYSTEM.CHARACTERS (ID,MOVIE_ID,CHARACTER_ID,CHARACTER_NAME,ACTOR,PHASE_ID,MOVIE) values (49,12,49,'Dr Hank Pym / Ant-Man','Michael Douglas',2,'Ant-Man');
Insert into SYSTEM.CHARACTERS (ID,MOVIE_ID,CHARACTER_ID,CHARACTER_NAME,ACTOR,PHASE_ID,MOVIE) values (50,13,16,'Steve Rogers/Captain America','Chris Evans',3,'Captain America: Civil War');
Insert into SYSTEM.CHARACTERS (ID,MOVIE_ID,CHARACTER_ID,CHARACTER_NAME,ACTOR,PHASE_ID,MOVIE) values (51,13,1,'Tony Stark/Iron Man','Robert Downey, Jr.',3,'Captain America: Civil War');
Insert into SYSTEM.CHARACTERS (ID,MOVIE_ID,CHARACTER_ID,CHARACTER_NAME,ACTOR,PHASE_ID,MOVIE) values (52,13,8,'Natasha Romanoff / Black Widow','Scarlett Johansson',3,'Captain America: Civil War');
Insert into SYSTEM.CHARACTERS (ID,MOVIE_ID,CHARACTER_ID,CHARACTER_NAME,ACTOR,PHASE_ID,MOVIE) values (53,13,18,'Bucky Barnes/Winter Soldier','Sebastian Stan',3,'Captain America: Civil War');
Insert into SYSTEM.CHARACTERS (ID,MOVIE_ID,CHARACTER_ID,CHARACTER_NAME,ACTOR,PHASE_ID,MOVIE) values (54,13,54,'Clint Barton/Hawkeye','Jeremy Renner',3,'Captain America: Civil War');
Insert into SYSTEM.CHARACTERS (ID,MOVIE_ID,CHARACTER_ID,CHARACTER_NAME,ACTOR,PHASE_ID,MOVIE) values (55,13,9,'James Rhodes/War Machine','Don Cheadle',3,'Captain America: Civil War');
Insert into SYSTEM.CHARACTERS (ID,MOVIE_ID,CHARACTER_ID,CHARACTER_NAME,ACTOR,PHASE_ID,MOVIE) values (56,13,56,'Sam Wilson/Falcon','Anthony Mackie',3,'Captain America: Civil War');
Insert into SYSTEM.CHARACTERS (ID,MOVIE_ID,CHARACTER_ID,CHARACTER_NAME,ACTOR,PHASE_ID,MOVIE) values (57,13,57,'Vision','Paul Bettany',3,'Captain America: Civil War');
Insert into SYSTEM.CHARACTERS (ID,MOVIE_ID,CHARACTER_ID,CHARACTER_NAME,ACTOR,PHASE_ID,MOVIE) values (58,13,58,'Wanda Maximoff/Scarlet Witch','Elizabeth Olsen',3,'Captain America: Civil War');
Insert into SYSTEM.CHARACTERS (ID,MOVIE_ID,CHARACTER_ID,CHARACTER_NAME,ACTOR,PHASE_ID,MOVIE) values (59,13,59,'T''Challa/Black Panther','Chadwick Boseman',3,'Captain America: Civil War');
Insert into SYSTEM.CHARACTERS (ID,MOVIE_ID,CHARACTER_ID,CHARACTER_NAME,ACTOR,PHASE_ID,MOVIE) values (60,14,60,'Doctor Stephen Strange','Benedict Cumberbatch',3,'Doctor Strange');
Insert into SYSTEM.CHARACTERS (ID,MOVIE_ID,CHARACTER_ID,CHARACTER_NAME,ACTOR,PHASE_ID,MOVIE) values (61,14,61,'Baron Mordo','Chiwetel Ejiofor',3,'Doctor Strange');
Insert into SYSTEM.CHARACTERS (ID,MOVIE_ID,CHARACTER_ID,CHARACTER_NAME,ACTOR,PHASE_ID,MOVIE) values (62,14,62,'Dr. Christine Palmer','Rachel McAdams',3,'Doctor Strange');
Insert into SYSTEM.CHARACTERS (ID,MOVIE_ID,CHARACTER_ID,CHARACTER_NAME,ACTOR,PHASE_ID,MOVIE) values (63,14,63,'Master Wong','Benedict Wong',3,'Doctor Strange');
Insert into SYSTEM.CHARACTERS (ID,MOVIE_ID,CHARACTER_ID,CHARACTER_NAME,ACTOR,PHASE_ID,MOVIE) values (64,14,64,'Kaecilius','Mads Mikkelsen',3,'Doctor Strange');
Insert into SYSTEM.CHARACTERS (ID,MOVIE_ID,CHARACTER_ID,CHARACTER_NAME,ACTOR,PHASE_ID,MOVIE) values (65,14,65,'The Ancient One','Tilda Swinton',3,'Doctor Strange');
Insert into SYSTEM.CHARACTERS (ID,MOVIE_ID,CHARACTER_ID,CHARACTER_NAME,ACTOR,PHASE_ID,MOVIE) values (66,15,38,'Peter Quill/Star-Lord','Chris Pratt',3,'Guardians of the Galaxy Vol. 2');
Insert into SYSTEM.CHARACTERS (ID,MOVIE_ID,CHARACTER_ID,CHARACTER_NAME,ACTOR,PHASE_ID,MOVIE) values (67,15,39,'Gamora','Zoe Saldana',3,'Guardians of the Galaxy Vol. 2');
Insert into SYSTEM.CHARACTERS (ID,MOVIE_ID,CHARACTER_ID,CHARACTER_NAME,ACTOR,PHASE_ID,MOVIE) values (68,15,40,'Drax the Destroyer','Dave Bautista',3,'Guardians of the Galaxy Vol. 2');
Insert into SYSTEM.CHARACTERS (ID,MOVIE_ID,CHARACTER_ID,CHARACTER_NAME,ACTOR,PHASE_ID,MOVIE) values (69,15,41,'Baby Groot','Vin Diesel',3,'Guardians of the Galaxy Vol. 2');
Insert into SYSTEM.CHARACTERS (ID,MOVIE_ID,CHARACTER_ID,CHARACTER_NAME,ACTOR,PHASE_ID,MOVIE) values (70,15,42,'Rocket','Bradley Cooper',3,'Guardians of the Galaxy Vol. 2');
Insert into SYSTEM.CHARACTERS (ID,MOVIE_ID,CHARACTER_ID,CHARACTER_NAME,ACTOR,PHASE_ID,MOVIE) values (71,15,71,'Yondu Udonta','Michael Rooker',3,'Guardians of the Galaxy Vol. 2');
Insert into SYSTEM.CHARACTERS (ID,MOVIE_ID,CHARACTER_ID,CHARACTER_NAME,ACTOR,PHASE_ID,MOVIE) values (72,15,72,'Ego','Kurt Russell',3,'Guardians of the Galaxy Vol. 2');
Insert into SYSTEM.CHARACTERS (ID,MOVIE_ID,CHARACTER_ID,CHARACTER_NAME,ACTOR,PHASE_ID,MOVIE) values (73,15,73,'Nebula','Karen Gillan',3,'Guardians of the Galaxy Vol. 2');
Insert into SYSTEM.CHARACTERS (ID,MOVIE_ID,CHARACTER_ID,CHARACTER_NAME,ACTOR,PHASE_ID,MOVIE) values (74,15,74,'Mantis','Pom Klementieff',3,'Guardians of the Galaxy Vol. 2');
Insert into SYSTEM.CHARACTERS (ID,MOVIE_ID,CHARACTER_ID,CHARACTER_NAME,ACTOR,PHASE_ID,MOVIE) values (75,15,75,'Ayesha','Elizabeth Debicki',3,'Guardians of the Galaxy Vol. 2');
Insert into SYSTEM.CHARACTERS (ID,MOVIE_ID,CHARACTER_ID,CHARACTER_NAME,ACTOR,PHASE_ID,MOVIE) values (76,16,76,'Peter Parker / Spider-Man','Tom Holland',3,'Spider-Man: Homecoming');
Insert into SYSTEM.CHARACTERS (ID,MOVIE_ID,CHARACTER_ID,CHARACTER_NAME,ACTOR,PHASE_ID,MOVIE) values (77,16,77,'Adrian Toomes/Vulture','Michael Keaton',3,'Spider-Man: Homecoming');
Insert into SYSTEM.CHARACTERS (ID,MOVIE_ID,CHARACTER_ID,CHARACTER_NAME,ACTOR,PHASE_ID,MOVIE) values (78,16,78,'Michelle','Zendaya',3,'Spider-Man: Homecoming');
Insert into SYSTEM.CHARACTERS (ID,MOVIE_ID,CHARACTER_ID,CHARACTER_NAME,ACTOR,PHASE_ID,MOVIE) values (79,16,79,'Happy Hogan','Jon Favreau',3,'Spider-Man: Homecoming');
Insert into SYSTEM.CHARACTERS (ID,MOVIE_ID,CHARACTER_ID,CHARACTER_NAME,ACTOR,PHASE_ID,MOVIE) values (80,16,80,'Aunt May','Marisa Tomei',3,'Spider-Man: Homecoming');
Insert into SYSTEM.CHARACTERS (ID,MOVIE_ID,CHARACTER_ID,CHARACTER_NAME,ACTOR,PHASE_ID,MOVIE) values (81,16,1,'Tony Stark/Iron Man','Robert Downey, Jr.',3,'Spider-Man: Homecoming');
Insert into SYSTEM.CHARACTERS (ID,MOVIE_ID,CHARACTER_ID,CHARACTER_NAME,ACTOR,PHASE_ID,MOVIE) values (82,17,11,'Thor','Chris Hemsworth',3,'Thor: Ragnarok');
Insert into SYSTEM.CHARACTERS (ID,MOVIE_ID,CHARACTER_ID,CHARACTER_NAME,ACTOR,PHASE_ID,MOVIE) values (83,17,13,'Loki','Tom Hiddleston',3,'Thor: Ragnarok');
Insert into SYSTEM.CHARACTERS (ID,MOVIE_ID,CHARACTER_ID,CHARACTER_NAME,ACTOR,PHASE_ID,MOVIE) values (84,17,84,'Hela','Cate Blanchett',3,'Thor: Ragnarok');
Insert into SYSTEM.CHARACTERS (ID,MOVIE_ID,CHARACTER_ID,CHARACTER_NAME,ACTOR,PHASE_ID,MOVIE) values (85,17,15,'Heimdall','Idris Elba',3,'Thor: Ragnarok');
Insert into SYSTEM.CHARACTERS (ID,MOVIE_ID,CHARACTER_ID,CHARACTER_NAME,ACTOR,PHASE_ID,MOVIE) values (86,17,86,'Grandmaster','Jeff Goldblum',3,'Thor: Ragnarok');
Insert into SYSTEM.CHARACTERS (ID,MOVIE_ID,CHARACTER_ID,CHARACTER_NAME,ACTOR,PHASE_ID,MOVIE) values (87,17,87,'Valkyrie','Tessa Thompson',3,'Thor: Ragnarok');
Insert into SYSTEM.CHARACTERS (ID,MOVIE_ID,CHARACTER_ID,CHARACTER_NAME,ACTOR,PHASE_ID,MOVIE) values (88,17,88,'Skurge','Karl Urban',3,'Thor: Ragnarok');
Insert into SYSTEM.CHARACTERS (ID,MOVIE_ID,CHARACTER_ID,CHARACTER_NAME,ACTOR,PHASE_ID,MOVIE) values (89,17,89,'Bruce Banner/Hulk','Mark Ruffalo',3,'Thor: Ragnarok');
Insert into SYSTEM.CHARACTERS (ID,MOVIE_ID,CHARACTER_ID,CHARACTER_NAME,ACTOR,PHASE_ID,MOVIE) values (90,17,14,'Odin','Anthony Hopkins',3,'Thor: Ragnarok');
Insert into SYSTEM.CHARACTERS (ID,MOVIE_ID,CHARACTER_ID,CHARACTER_NAME,ACTOR,PHASE_ID,MOVIE) values (91,18,59,'T�Challa/Black Panther','Chadwick Boseman',3,'Black Panther');
Insert into SYSTEM.CHARACTERS (ID,MOVIE_ID,CHARACTER_ID,CHARACTER_NAME,ACTOR,PHASE_ID,MOVIE) values (92,18,92,'Erik Killmonger','Michael B. Jordan',3,'Black Panther');
Insert into SYSTEM.CHARACTERS (ID,MOVIE_ID,CHARACTER_ID,CHARACTER_NAME,ACTOR,PHASE_ID,MOVIE) values (93,18,93,'Nakia','Lupita Nyong''o',3,'Black Panther');
Insert into SYSTEM.CHARACTERS (ID,MOVIE_ID,CHARACTER_ID,CHARACTER_NAME,ACTOR,PHASE_ID,MOVIE) values (94,18,94,'Okoye','Danai Gurira',3,'Black Panther');
Insert into SYSTEM.CHARACTERS (ID,MOVIE_ID,CHARACTER_ID,CHARACTER_NAME,ACTOR,PHASE_ID,MOVIE) values (95,18,95,'Everett K. Ross','Martin Freeman',3,'Black Panther');
Insert into SYSTEM.CHARACTERS (ID,MOVIE_ID,CHARACTER_ID,CHARACTER_NAME,ACTOR,PHASE_ID,MOVIE) values (96,18,96,'Ramonda','Angela Bassett',3,'Black Panther');
Insert into SYSTEM.CHARACTERS (ID,MOVIE_ID,CHARACTER_ID,CHARACTER_NAME,ACTOR,PHASE_ID,MOVIE) values (97,18,97,'Zuri','Forest Whitaker',3,'Black Panther');
Insert into SYSTEM.CHARACTERS (ID,MOVIE_ID,CHARACTER_ID,CHARACTER_NAME,ACTOR,PHASE_ID,MOVIE) values (98,18,98,'Ulysses Klaue','Andy Serkis',3,'Black Panther');
Insert into SYSTEM.CHARACTERS (ID,MOVIE_ID,CHARACTER_ID,CHARACTER_NAME,ACTOR,PHASE_ID,MOVIE) values (99,18,99,'W�Kabi','Daniel Kaluuya',3,'Black Panther');
Insert into SYSTEM.CHARACTERS (ID,MOVIE_ID,CHARACTER_ID,CHARACTER_NAME,ACTOR,PHASE_ID,MOVIE) values (100,18,100,'Shuri','Letitia Wright',3,'Black Panther');
Insert into SYSTEM.CHARACTERS (ID,MOVIE_ID,CHARACTER_ID,CHARACTER_NAME,ACTOR,PHASE_ID,MOVIE) values (101,19,1,'Tony Stark/Iron Man','Robert Downey, Jr.',3,'Avengers: Infinity Warr');
Insert into SYSTEM.CHARACTERS (ID,MOVIE_ID,CHARACTER_ID,CHARACTER_NAME,ACTOR,PHASE_ID,MOVIE) values (102,19,11,'Thor','Chris Hemsworth',3,'Avengers: Infinity Warr');
Insert into SYSTEM.CHARACTERS (ID,MOVIE_ID,CHARACTER_ID,CHARACTER_NAME,ACTOR,PHASE_ID,MOVIE) values (103,19,89,'Bruce Banner/Hulk','Mark Ruffalo',3,'Avengers: Infinity Warr');
Insert into SYSTEM.CHARACTERS (ID,MOVIE_ID,CHARACTER_ID,CHARACTER_NAME,ACTOR,PHASE_ID,MOVIE) values (104,19,16,'Steve Rogers','Chris Evans',3,'Avengers: Infinity Warr');
Insert into SYSTEM.CHARACTERS (ID,MOVIE_ID,CHARACTER_ID,CHARACTER_NAME,ACTOR,PHASE_ID,MOVIE) values (105,19,8,'Natasha Romanoff/Black Widow','Scarlett Johansson',3,'Avengers: Infinity Warr');
Insert into SYSTEM.CHARACTERS (ID,MOVIE_ID,CHARACTER_ID,CHARACTER_NAME,ACTOR,PHASE_ID,MOVIE) values (106,19,60,'Stephen Strange','Benedict Cumberbatch',3,'Avengers: Infinity Warr');
Insert into SYSTEM.CHARACTERS (ID,MOVIE_ID,CHARACTER_ID,CHARACTER_NAME,ACTOR,PHASE_ID,MOVIE) values (107,19,9,'James Rhodes / War Machine','Don Cheadle',3,'Avengers: Infinity Warr');
Insert into SYSTEM.CHARACTERS (ID,MOVIE_ID,CHARACTER_ID,CHARACTER_NAME,ACTOR,PHASE_ID,MOVIE) values (108,19,76,'Peter Parker/Spider-Man','Tom Holland',3,'Avengers: Infinity Warr');
Insert into SYSTEM.CHARACTERS (ID,MOVIE_ID,CHARACTER_ID,CHARACTER_NAME,ACTOR,PHASE_ID,MOVIE) values (109,19,59,'T''Challa / Black Panther','Chadwick Boseman',3,'Avengers: Infinity Warr');
Insert into SYSTEM.CHARACTERS (ID,MOVIE_ID,CHARACTER_ID,CHARACTER_NAME,ACTOR,PHASE_ID,MOVIE) values (110,19,57,'Vision','Paul Bettany',3,'Avengers: Infinity Warr');
Insert into SYSTEM.CHARACTERS (ID,MOVIE_ID,CHARACTER_ID,CHARACTER_NAME,ACTOR,PHASE_ID,MOVIE) values (111,19,58,'Wanda Maximoff/Scarlet Witch','Elizabeth Olsen',3,'Avengers: Infinity Warr');
Insert into SYSTEM.CHARACTERS (ID,MOVIE_ID,CHARACTER_ID,CHARACTER_NAME,ACTOR,PHASE_ID,MOVIE) values (112,19,18,'Bucky Barnes/Winter Soldier','Sebastian Stan',3,'Avengers: Infinity Warr');
Insert into SYSTEM.CHARACTERS (ID,MOVIE_ID,CHARACTER_ID,CHARACTER_NAME,ACTOR,PHASE_ID,MOVIE) values (113,19,94,'Okoye','Danai Gurira',3,'Avengers: Infinity Warr');
Insert into SYSTEM.CHARACTERS (ID,MOVIE_ID,CHARACTER_ID,CHARACTER_NAME,ACTOR,PHASE_ID,MOVIE) values (114,19,100,'Shuri','Letitia Wright',3,'Avengers: Infinity Warr');
Insert into SYSTEM.CHARACTERS (ID,MOVIE_ID,CHARACTER_ID,CHARACTER_NAME,ACTOR,PHASE_ID,MOVIE) values (115,19,40,'Drax the Destroyer','Dave Bautista',3,'Avengers: Infinity Warr');
Insert into SYSTEM.CHARACTERS (ID,MOVIE_ID,CHARACTER_ID,CHARACTER_NAME,ACTOR,PHASE_ID,MOVIE) values (116,19,39,'Gamora','Zoe Saldana',3,'Avengers: Infinity Warr');
Insert into SYSTEM.CHARACTERS (ID,MOVIE_ID,CHARACTER_ID,CHARACTER_NAME,ACTOR,PHASE_ID,MOVIE) values (117,19,117,'Thanos','Josh Brolin',3,'Avengers: Infinity Warr');
Insert into SYSTEM.CHARACTERS (ID,MOVIE_ID,CHARACTER_ID,CHARACTER_NAME,ACTOR,PHASE_ID,MOVIE) values (118,19,38,'Peter Quill/Star-Lord','Chris Pratt',3,'Avengers: Infinity Warr');
Insert into SYSTEM.CHARACTERS (ID,MOVIE_ID,CHARACTER_ID,CHARACTER_NAME,ACTOR,PHASE_ID,MOVIE) values (119,19,63,'Wong','Benedict Wong',3,'Avengers: Infinity Warr');
Insert into SYSTEM.CHARACTERS (ID,MOVIE_ID,CHARACTER_ID,CHARACTER_NAME,ACTOR,PHASE_ID,MOVIE) values (120,19,74,'Mantis','Pom Klementieff',3,'Avengers: Infinity Warr');
Insert into SYSTEM.CHARACTERS (ID,MOVIE_ID,CHARACTER_ID,CHARACTER_NAME,ACTOR,PHASE_ID,MOVIE) values (121,19,73,'Nebula','Karen Gillan',3,'Avengers: Infinity Warr');
Insert into SYSTEM.CHARACTERS (ID,MOVIE_ID,CHARACTER_ID,CHARACTER_NAME,ACTOR,PHASE_ID,MOVIE) values (122,19,41,'Groot','Vin Diesel',3,'Avengers: Infinity Warr');
Insert into SYSTEM.CHARACTERS (ID,MOVIE_ID,CHARACTER_ID,CHARACTER_NAME,ACTOR,PHASE_ID,MOVIE) values (123,19,42,'Rocket Raccoon','Bradley Cooper',3,'Avengers: Infinity Warr');
Insert into SYSTEM.CHARACTERS (ID,MOVIE_ID,CHARACTER_ID,CHARACTER_NAME,ACTOR,PHASE_ID,MOVIE) values (124,20,44,'Scott Lang/Ant-Man','Paul Rudd',3,'Ant-Man and the Wasp');
Insert into SYSTEM.CHARACTERS (ID,MOVIE_ID,CHARACTER_ID,CHARACTER_NAME,ACTOR,PHASE_ID,MOVIE) values (125,20,45,'Hope van Dyne/The Wasp','Evangeline Lilly',3,'Ant-Man and the Wasp');
Insert into SYSTEM.CHARACTERS (ID,MOVIE_ID,CHARACTER_ID,CHARACTER_NAME,ACTOR,PHASE_ID,MOVIE) values (126,20,48,'Luis','Michael Pe�a',3,'Ant-Man and the Wasp');
Insert into SYSTEM.CHARACTERS (ID,MOVIE_ID,CHARACTER_ID,CHARACTER_NAME,ACTOR,PHASE_ID,MOVIE) values (127,20,127,'Sonny Burch','Walton Goggins',3,'Ant-Man and the Wasp');
Insert into SYSTEM.CHARACTERS (ID,MOVIE_ID,CHARACTER_ID,CHARACTER_NAME,ACTOR,PHASE_ID,MOVIE) values (128,20,128,'Ava Starr/Ghost','Hannah John-Kamen',3,'Ant-Man and the Wasp');
Insert into SYSTEM.CHARACTERS (ID,MOVIE_ID,CHARACTER_ID,CHARACTER_NAME,ACTOR,PHASE_ID,MOVIE) values (129,20,129,'Janet van Dyne','Michelle Pfeiffer',3,'Ant-Man and the Wasp');
Insert into SYSTEM.CHARACTERS (ID,MOVIE_ID,CHARACTER_ID,CHARACTER_NAME,ACTOR,PHASE_ID,MOVIE) values (130,20,130,'Dr. Bill Foster/Goliath','Laurence Fishburne',3,'Ant-Man and the Wasp');
Insert into SYSTEM.CHARACTERS (ID,MOVIE_ID,CHARACTER_ID,CHARACTER_NAME,ACTOR,PHASE_ID,MOVIE) values (131,20,49,'Dr. Hank Pym','Michael Douglas',3,'Ant-Man and the Wasp');
Insert into SYSTEM.CHARACTERS (ID,MOVIE_ID,CHARACTER_ID,CHARACTER_NAME,ACTOR,PHASE_ID,MOVIE) values (132,21,132,'Carol Danvers/Vers/Captain Marvel','Brie Larson',3,'Captain Marvel');
Insert into SYSTEM.CHARACTERS (ID,MOVIE_ID,CHARACTER_ID,CHARACTER_NAME,ACTOR,PHASE_ID,MOVIE) values (133,21,37,'Nick Fury','Samuel L. Jackson',3,'Captain Marvel');
Insert into SYSTEM.CHARACTERS (ID,MOVIE_ID,CHARACTER_ID,CHARACTER_NAME,ACTOR,PHASE_ID,MOVIE) values (134,21,134,'Talos/Keller','Ben Mendelsohn',3,'Captain Marvel');
Insert into SYSTEM.CHARACTERS (ID,MOVIE_ID,CHARACTER_ID,CHARACTER_NAME,ACTOR,PHASE_ID,MOVIE) values (135,21,135,'Korath the Pursuer','Djimon Hounsou',3,'Captain Marvel');
Insert into SYSTEM.CHARACTERS (ID,MOVIE_ID,CHARACTER_ID,CHARACTER_NAME,ACTOR,PHASE_ID,MOVIE) values (136,21,136,'Ronan the Accuser','Lee Pace',3,'Captain Marvel');
Insert into SYSTEM.CHARACTERS (ID,MOVIE_ID,CHARACTER_ID,CHARACTER_NAME,ACTOR,PHASE_ID,MOVIE) values (137,21,137,'Maria Rambeau','Lashana Lynch',3,'Captain Marvel');
Insert into SYSTEM.CHARACTERS (ID,MOVIE_ID,CHARACTER_ID,CHARACTER_NAME,ACTOR,PHASE_ID,MOVIE) values (138,21,138,'Minn-Erva','Gemma Chan',3,'Captain Marvel');
Insert into SYSTEM.CHARACTERS (ID,MOVIE_ID,CHARACTER_ID,CHARACTER_NAME,ACTOR,PHASE_ID,MOVIE) values (139,21,139,'Supreme Intelligence','Annette Bening',3,'Captain Marvel');
Insert into SYSTEM.CHARACTERS (ID,MOVIE_ID,CHARACTER_ID,CHARACTER_NAME,ACTOR,PHASE_ID,MOVIE) values (140,21,140,'Agent Phil Coulson','Clark Gregg',3,'Captain Marvel');
Insert into SYSTEM.CHARACTERS (ID,MOVIE_ID,CHARACTER_ID,CHARACTER_NAME,ACTOR,PHASE_ID,MOVIE) values (141,22,1,'Tony Stark/Iron Man','Robert Downey, Jr.',3,'Avengers: Endgame');
Insert into SYSTEM.CHARACTERS (ID,MOVIE_ID,CHARACTER_ID,CHARACTER_NAME,ACTOR,PHASE_ID,MOVIE) values (142,22,16,'Steve Rogers/Captain America','Chris Evans',3,'Avengers: Endgame');
Insert into SYSTEM.CHARACTERS (ID,MOVIE_ID,CHARACTER_ID,CHARACTER_NAME,ACTOR,PHASE_ID,MOVIE) values (143,22,89,'Bruce Banner/Hulk','Mark Ruffalo',3,'Avengers: Endgame');
Insert into SYSTEM.CHARACTERS (ID,MOVIE_ID,CHARACTER_ID,CHARACTER_NAME,ACTOR,PHASE_ID,MOVIE) values (144,22,11,'Thor','Chris Hemsworth',3,'Avengers: Endgame');
Insert into SYSTEM.CHARACTERS (ID,MOVIE_ID,CHARACTER_ID,CHARACTER_NAME,ACTOR,PHASE_ID,MOVIE) values (145,22,8,'Natasha Romanoff/Black Widow','Scarlett Johansson',3,'Avengers: Endgame');
Insert into SYSTEM.CHARACTERS (ID,MOVIE_ID,CHARACTER_ID,CHARACTER_NAME,ACTOR,PHASE_ID,MOVIE) values (146,22,146,'Clint Barton/Hawkeye','Jeremy Renner',3,'Avengers: Endgame');
Insert into SYSTEM.CHARACTERS (ID,MOVIE_ID,CHARACTER_ID,CHARACTER_NAME,ACTOR,PHASE_ID,MOVIE) values (147,22,9,'James �Rhodey� Rhodes/War Machine','Don Cheadle',3,'Avengers: Endgame');
Insert into SYSTEM.CHARACTERS (ID,MOVIE_ID,CHARACTER_ID,CHARACTER_NAME,ACTOR,PHASE_ID,MOVIE) values (148,22,44,'Scott Lang/Ant-Man','Paul Rudd',3,'Avengers: Endgame');
Insert into SYSTEM.CHARACTERS (ID,MOVIE_ID,CHARACTER_ID,CHARACTER_NAME,ACTOR,PHASE_ID,MOVIE) values (149,22,132,'Carol Danvers/Captain Marvel','Brie Larson',3,'Avengers: Endgame');
Insert into SYSTEM.CHARACTERS (ID,MOVIE_ID,CHARACTER_ID,CHARACTER_NAME,ACTOR,PHASE_ID,MOVIE) values (150,22,73,'Nebula','Karen Gillan',3,'Avengers: Endgame');
Insert into SYSTEM.CHARACTERS (ID,MOVIE_ID,CHARACTER_ID,CHARACTER_NAME,ACTOR,PHASE_ID,MOVIE) values (151,22,94,'Okoye','Danai Gurira',3,'Avengers: Endgame');
Insert into SYSTEM.CHARACTERS (ID,MOVIE_ID,CHARACTER_ID,CHARACTER_NAME,ACTOR,PHASE_ID,MOVIE) values (152,22,42,'Rocket','Bradley Cooper',3,'Avengers: Endgame');
Insert into SYSTEM.CHARACTERS (ID,MOVIE_ID,CHARACTER_ID,CHARACTER_NAME,ACTOR,PHASE_ID,MOVIE) values (153,22,117,'Thanos','Josh Brolin',3,'Avengers: Endgame');
Insert into SYSTEM.CHARACTERS (ID,MOVIE_ID,CHARACTER_ID,CHARACTER_NAME,ACTOR,PHASE_ID,MOVIE) values (154,22,63,'Wong','Benedict Wong',3,'Avengers: Endgame');
Insert into SYSTEM.CHARACTERS (ID,MOVIE_ID,CHARACTER_ID,CHARACTER_NAME,ACTOR,PHASE_ID,MOVIE) values (155,22,79,'Happy Hogan','Jon Favreau',3,'Avengers: Endgame');
Insert into SYSTEM.CHARACTERS (ID,MOVIE_ID,CHARACTER_ID,CHARACTER_NAME,ACTOR,PHASE_ID,MOVIE) values (156,22,4,'Pepper Potts','Gwyneth Paltrow',3,'Avengers: Endgame');
Insert into SYSTEM.CHARACTERS (ID,MOVIE_ID,CHARACTER_ID,CHARACTER_NAME,ACTOR,PHASE_ID,MOVIE) values (157,22,45,'Hope van Dyne/The Wasp','Evangeline Lilly',3,'Avengers: Endgame');
Insert into SYSTEM.CHARACTERS (ID,MOVIE_ID,CHARACTER_ID,CHARACTER_NAME,ACTOR,PHASE_ID,MOVIE) values (158,22,60,'Dr. Stephen Strange','Benedict Cumberbatch',3,'Avengers: Endgame');
Insert into SYSTEM.CHARACTERS (ID,MOVIE_ID,CHARACTER_ID,CHARACTER_NAME,ACTOR,PHASE_ID,MOVIE) values (159,22,76,'Peter Parker/Spider-Man','Tom Holland',3,'Avengers: Endgame');
Insert into SYSTEM.CHARACTERS (ID,MOVIE_ID,CHARACTER_ID,CHARACTER_NAME,ACTOR,PHASE_ID,MOVIE) values (160,22,38,'Peter Quill/Star-Lord','Chris Pratt',3,'Avengers: Endgame');
Insert into SYSTEM.CHARACTERS (ID,MOVIE_ID,CHARACTER_ID,CHARACTER_NAME,ACTOR,PHASE_ID,MOVIE) values (161,22,40,'Drax the Destroyer','Dave Bautista',3,'Avengers: Endgame');
Insert into SYSTEM.CHARACTERS (ID,MOVIE_ID,CHARACTER_ID,CHARACTER_NAME,ACTOR,PHASE_ID,MOVIE) values (162,22,18,'Bucky Barnes/Winter Soldier','Sebastian Stan',3,'Avengers: Endgame');
Insert into SYSTEM.CHARACTERS (ID,MOVIE_ID,CHARACTER_ID,CHARACTER_NAME,ACTOR,PHASE_ID,MOVIE) values (163,22,163,'Groot','Terry Notary',3,'Avengers: Endgame');
Insert into SYSTEM.CHARACTERS (ID,MOVIE_ID,CHARACTER_ID,CHARACTER_NAME,ACTOR,PHASE_ID,MOVIE) values (164,22,56,'Sam Wilson/Falcon','Anthony Mackie',3,'Avengers: Endgame');
Insert into SYSTEM.CHARACTERS (ID,MOVIE_ID,CHARACTER_ID,CHARACTER_NAME,ACTOR,PHASE_ID,MOVIE) values (165,22,13,'Loki','Tom Hiddleston',3,'Avengers: Endgame');
Insert into SYSTEM.CHARACTERS (ID,MOVIE_ID,CHARACTER_ID,CHARACTER_NAME,ACTOR,PHASE_ID,MOVIE) values (166,22,100,'Shuri','Letitia Wright',3,'Avengers: Endgame');
Insert into SYSTEM.CHARACTERS (ID,MOVIE_ID,CHARACTER_ID,CHARACTER_NAME,ACTOR,PHASE_ID,MOVIE) values (167,22,37,'Nick Fury','Samuel L. Jackson',3,'Avengers: Endgame');
Insert into SYSTEM.CHARACTERS (ID,MOVIE_ID,CHARACTER_ID,CHARACTER_NAME,ACTOR,PHASE_ID,MOVIE) values (168,22,74,'Mantis','Pom Klementieff',3,'Avengers: Endgame');
Insert into SYSTEM.CHARACTERS (ID,MOVIE_ID,CHARACTER_ID,CHARACTER_NAME,ACTOR,PHASE_ID,MOVIE) values (169,22,57,'Vision','Paul Bettany',3,'Avengers: Endgame');
Insert into SYSTEM.CHARACTERS (ID,MOVIE_ID,CHARACTER_ID,CHARACTER_NAME,ACTOR,PHASE_ID,MOVIE) values (170,22,58,'Wanda Maximoff/Scarlet Witch','Elizabeth Olsen',3,'Avengers: Endgame');
Insert into SYSTEM.CHARACTERS (ID,MOVIE_ID,CHARACTER_ID,CHARACTER_NAME,ACTOR,PHASE_ID,MOVIE) values (171,22,39,'Gamora','Zoe Saldana',3,'Avengers: Endgame');
Insert into SYSTEM.CHARACTERS (ID,MOVIE_ID,CHARACTER_ID,CHARACTER_NAME,ACTOR,PHASE_ID,MOVIE) values (172,22,59,'T�Challa/Black Panther','Chadwick Boseman',3,'Avengers: Endgame');
Insert into SYSTEM.CHARACTERS (ID,MOVIE_ID,CHARACTER_ID,CHARACTER_NAME,ACTOR,PHASE_ID,MOVIE) values (173,23,76,'Peter Parker/Spider-Man','Tom Holland',3,'Spider-Man: Far From Home');
Insert into SYSTEM.CHARACTERS (ID,MOVIE_ID,CHARACTER_ID,CHARACTER_NAME,ACTOR,PHASE_ID,MOVIE) values (174,23,37,'Nick Fury','Samuel L. Jackson',3,'Spider-Man: Far From Home');
Insert into SYSTEM.CHARACTERS (ID,MOVIE_ID,CHARACTER_ID,CHARACTER_NAME,ACTOR,PHASE_ID,MOVIE) values (175,23,78,'Michelle �MJ� Jones','Zendaya',3,'Spider-Man: Far From Home');
Insert into SYSTEM.CHARACTERS (ID,MOVIE_ID,CHARACTER_ID,CHARACTER_NAME,ACTOR,PHASE_ID,MOVIE) values (176,23,176,'Quentin Beck/Mysterio','Jake Gyllenhaal',3,'Spider-Man: Far From Home');
Insert into SYSTEM.CHARACTERS (ID,MOVIE_ID,CHARACTER_ID,CHARACTER_NAME,ACTOR,PHASE_ID,MOVIE) values (177,24,8,'Natasha Romanoff/Black Widow','Scarlett Johansson',4,'Black Widow');
Insert into SYSTEM.CHARACTERS (ID,MOVIE_ID,CHARACTER_ID,CHARACTER_NAME,ACTOR,PHASE_ID,MOVIE) values (178,24,178,'Yelena Belova','Florence Pugh',4,'Black Widow');
Insert into SYSTEM.CHARACTERS (ID,MOVIE_ID,CHARACTER_ID,CHARACTER_NAME,ACTOR,PHASE_ID,MOVIE) values (179,24,179,'Melina','Rachel Weisz',4,'Black Widow');
Insert into SYSTEM.CHARACTERS (ID,MOVIE_ID,CHARACTER_ID,CHARACTER_NAME,ACTOR,PHASE_ID,MOVIE) values (180,24,180,'Alexei/Red Guardian','David Harbour',4,'Black Widow');
Insert into SYSTEM.CHARACTERS (ID,MOVIE_ID,CHARACTER_ID,CHARACTER_NAME,ACTOR,PHASE_ID,MOVIE) values (181,24,181,'Dreykov','Ray Winstone',4,'Black Widow');
Insert into SYSTEM.CHARACTERS (ID,MOVIE_ID,CHARACTER_ID,CHARACTER_NAME,ACTOR,PHASE_ID,MOVIE) values (182,24,182,'Mason','O.T. Fagbenle',4,'Black Widow');
Insert into SYSTEM.CHARACTERS (ID,MOVIE_ID,CHARACTER_ID,CHARACTER_NAME,ACTOR,PHASE_ID,MOVIE) values (183,25,183,'Shang-Chi','Simu Liu',4,'Shang-Chi and the Legend of the Ten Rings');
Insert into SYSTEM.CHARACTERS (ID,MOVIE_ID,CHARACTER_ID,CHARACTER_NAME,ACTOR,PHASE_ID,MOVIE) values (184,26,184,'Kingo','Kumail Nanjiani',4,'Eternals');
Insert into SYSTEM.CHARACTERS (ID,MOVIE_ID,CHARACTER_ID,CHARACTER_NAME,ACTOR,PHASE_ID,MOVIE) values (185,26,185,'Thena','Angelina Jolie',4,'Eternals');
Insert into SYSTEM.CHARACTERS (ID,MOVIE_ID,CHARACTER_ID,CHARACTER_NAME,ACTOR,PHASE_ID,MOVIE) values (186,26,186,'Ikaris','Richard Madden',4,'Eternals');
Insert into SYSTEM.CHARACTERS (ID,MOVIE_ID,CHARACTER_ID,CHARACTER_NAME,ACTOR,PHASE_ID,MOVIE) values (187,26,187,'Ajak','Salma Hayek',4,'Eternals');
Insert into SYSTEM.CHARACTERS (ID,MOVIE_ID,CHARACTER_ID,CHARACTER_NAME,ACTOR,PHASE_ID,MOVIE) values (188,26,188,'Phastos','Brian Tyree Henry',4,'Eternals');
Insert into SYSTEM.CHARACTERS (ID,MOVIE_ID,CHARACTER_ID,CHARACTER_NAME,ACTOR,PHASE_ID,MOVIE) values (189,26,189,'Makkari','Lauren Ridloff',4,'Eternals');
Insert into SYSTEM.CHARACTERS (ID,MOVIE_ID,CHARACTER_ID,CHARACTER_NAME,ACTOR,PHASE_ID,MOVIE) values (190,26,190,'Druig','Barry Keoghan',4,'Eternals');
Insert into SYSTEM.CHARACTERS (ID,MOVIE_ID,CHARACTER_ID,CHARACTER_NAME,ACTOR,PHASE_ID,MOVIE) values (191,26,138,'Sersi','Gemma Chan',4,'Eternals');
Insert into SYSTEM.CHARACTERS (ID,MOVIE_ID,CHARACTER_ID,CHARACTER_NAME,ACTOR,PHASE_ID,MOVIE) values (192,26,192,'Sprite','Lia McHugh',4,'Eternals');
Insert into SYSTEM.CHARACTERS (ID,MOVIE_ID,CHARACTER_ID,CHARACTER_NAME,ACTOR,PHASE_ID,MOVIE) values (193,26,193,'Gilgamesh','Don Lee',4,'Eternals');
Insert into SYSTEM.CHARACTERS (ID,MOVIE_ID,CHARACTER_ID,CHARACTER_NAME,ACTOR,PHASE_ID,MOVIE) values (194,27,76,'Peter Parker/Spider-Man','Tom Holland',4,'Spider-Man: No Way Home');
Insert into SYSTEM.CHARACTERS (ID,MOVIE_ID,CHARACTER_ID,CHARACTER_NAME,ACTOR,PHASE_ID,MOVIE) values (195,28,60,'Dr. Stephen Strange','Benedict Cumberbatch',4,'Doctor Strange in the Multiverse of Madness');
Insert into SYSTEM.CHARACTERS (ID,MOVIE_ID,CHARACTER_ID,CHARACTER_NAME,ACTOR,PHASE_ID,MOVIE) values (196,28,58,'Scarlett Witch','Elizabeth Olsen',4,'Doctor Strange in the Multiverse of Madness');
Insert into SYSTEM.CHARACTERS (ID,MOVIE_ID,CHARACTER_ID,CHARACTER_NAME,ACTOR,PHASE_ID,MOVIE) values (197,28,61,'Karl Mordo','Chiwetel Ejiofor',4,'Doctor Strange in the Multiverse of Madness');
Insert into SYSTEM.CHARACTERS (ID,MOVIE_ID,CHARACTER_ID,CHARACTER_NAME,ACTOR,PHASE_ID,MOVIE) values (198,28,63,'Wong','Benedict Wong',4,'Doctor Strange in the Multiverse of Madness');
Insert into SYSTEM.CHARACTERS (ID,MOVIE_ID,CHARACTER_ID,CHARACTER_NAME,ACTOR,PHASE_ID,MOVIE) values (199,28,199,'America Chavez','Xochitl Gomez',4,'Doctor Strange in the Multiverse of Madness');
Insert into SYSTEM.CHARACTERS (ID,MOVIE_ID,CHARACTER_ID,CHARACTER_NAME,ACTOR,PHASE_ID,MOVIE) values (200,28,200,'Nicodemus West','Michael Stuhlbarg',4,'Doctor Strange in the Multiverse of Madness');
Insert into SYSTEM.CHARACTERS (ID,MOVIE_ID,CHARACTER_ID,CHARACTER_NAME,ACTOR,PHASE_ID,MOVIE) values (201,28,62,'Dr. Christine Palmer','Rachel McAdams',4,'Doctor Strange in the Multiverse of Madness');
Insert into SYSTEM.CHARACTERS (ID,MOVIE_ID,CHARACTER_ID,CHARACTER_NAME,ACTOR,PHASE_ID,MOVIE) values (202,29,11,'Thor','Chris Hemsworth',4,'Thor: Love and Thunder');
Insert into SYSTEM.CHARACTERS (ID,MOVIE_ID,CHARACTER_ID,CHARACTER_NAME,ACTOR,PHASE_ID,MOVIE) values (203,29,203,'Gorr the God Butcher','Christian Bale',4,'Thor: Love and Thunder');
Insert into SYSTEM.CHARACTERS (ID,MOVIE_ID,CHARACTER_ID,CHARACTER_NAME,ACTOR,PHASE_ID,MOVIE) values (204,29,87,'King Valkyrie','Tessa Thompson',4,'Thor: Love and Thunder');
Insert into SYSTEM.CHARACTERS (ID,MOVIE_ID,CHARACTER_ID,CHARACTER_NAME,ACTOR,PHASE_ID,MOVIE) values (205,29,205,'Korg','Taika Waititi',4,'Thor: Love and Thunder');
Insert into SYSTEM.CHARACTERS (ID,MOVIE_ID,CHARACTER_ID,CHARACTER_NAME,ACTOR,PHASE_ID,MOVIE) values (206,29,206,'Zeus','Russell Crowe',4,'Thor: Love and Thunder');
Insert into SYSTEM.CHARACTERS (ID,MOVIE_ID,CHARACTER_ID,CHARACTER_NAME,ACTOR,PHASE_ID,MOVIE) values (207,29,12,'Jane Foster/Mighty Thor','Natalie Portman',4,'Thor: Love and Thunder');
Insert into SYSTEM.CHARACTERS (ID,MOVIE_ID,CHARACTER_ID,CHARACTER_NAME,ACTOR,PHASE_ID,MOVIE) values (208,30,100,'Shuri','Letitia Wright',4,'Black Panther: Wakanda Forever');
Insert into SYSTEM.CHARACTERS (ID,MOVIE_ID,CHARACTER_ID,CHARACTER_NAME,ACTOR,PHASE_ID,MOVIE) values (209,30,93,'Nakia','Lupita Nyong''o',4,'Black Panther: Wakanda Forever');
Insert into SYSTEM.CHARACTERS (ID,MOVIE_ID,CHARACTER_ID,CHARACTER_NAME,ACTOR,PHASE_ID,MOVIE) values (210,30,94,'Okoye','Danai Gurira',4,'Black Panther: Wakanda Forever');
Insert into SYSTEM.CHARACTERS (ID,MOVIE_ID,CHARACTER_ID,CHARACTER_NAME,ACTOR,PHASE_ID,MOVIE) values (211,30,211,'M�Baku','Winston Duke',4,'Black Panther: Wakanda Forever');
Insert into SYSTEM.CHARACTERS (ID,MOVIE_ID,CHARACTER_ID,CHARACTER_NAME,ACTOR,PHASE_ID,MOVIE) values (212,30,212,'Riri Williams/Ironheart','Dominique Thorne',4,'Black Panther: Wakanda Forever');
Insert into SYSTEM.CHARACTERS (ID,MOVIE_ID,CHARACTER_ID,CHARACTER_NAME,ACTOR,PHASE_ID,MOVIE) values (213,30,213,'Ayo','Florence Kasumba',4,'Black Panther: Wakanda Forever');
Insert into SYSTEM.CHARACTERS (ID,MOVIE_ID,CHARACTER_ID,CHARACTER_NAME,ACTOR,PHASE_ID,MOVIE) values (214,30,214,'Aneka','Michaela Coel',4,'Black Panther: Wakanda Forever');
Insert into SYSTEM.CHARACTERS (ID,MOVIE_ID,CHARACTER_ID,CHARACTER_NAME,ACTOR,PHASE_ID,MOVIE) values (215,30,215,'Namor','Tenoch Huerta',4,'Black Panther: Wakanda Forever');
Insert into SYSTEM.CHARACTERS (ID,MOVIE_ID,CHARACTER_ID,CHARACTER_NAME,ACTOR,PHASE_ID,MOVIE) values (216,30,95,'Everett K. Ross','Martin Freeman',4,'Black Panther: Wakanda Forever');
Insert into SYSTEM.CHARACTERS (ID,MOVIE_ID,CHARACTER_ID,CHARACTER_NAME,ACTOR,PHASE_ID,MOVIE) values (217,30,96,'Ramonda','Angela Bassett',4,'Black Panther: Wakanda Forever');
Insert into SYSTEM.CHARACTERS (ID,MOVIE_ID,CHARACTER_ID,CHARACTER_NAME,ACTOR,PHASE_ID,MOVIE) values (218,31,44,'Scott Lang / Ant-Man','Paul Rudd',5,'Ant-Man and the Wasp: Quantumania');
Insert into SYSTEM.CHARACTERS (ID,MOVIE_ID,CHARACTER_ID,CHARACTER_NAME,ACTOR,PHASE_ID,MOVIE) values (219,31,45,'Hope van Dyne / Wasp','Evangeline Lilly',5,'Ant-Man and the Wasp: Quantumania');
Insert into SYSTEM.CHARACTERS (ID,MOVIE_ID,CHARACTER_ID,CHARACTER_NAME,ACTOR,PHASE_ID,MOVIE) values (220,31,220,'Kang the Conqueror','Jonathan Majors',5,'Ant-Man and the Wasp: Quantumania');
Insert into SYSTEM.CHARACTERS (ID,MOVIE_ID,CHARACTER_ID,CHARACTER_NAME,ACTOR,PHASE_ID,MOVIE) values (221,31,221,'Cassie Lang','Kathryn Newton',5,'Ant-Man and the Wasp: Quantumania');
Insert into SYSTEM.CHARACTERS (ID,MOVIE_ID,CHARACTER_ID,CHARACTER_NAME,ACTOR,PHASE_ID,MOVIE) values (222,31,222,'Lord Krylar','Bill Murray',5,'Ant-Man and the Wasp: Quantumania');
Insert into SYSTEM.CHARACTERS (ID,MOVIE_ID,CHARACTER_ID,CHARACTER_NAME,ACTOR,PHASE_ID,MOVIE) values (223,31,129,'Janet van Dyne','Michelle Pfeiffer',5,'Ant-Man and the Wasp: Quantumania');
Insert into SYSTEM.CHARACTERS (ID,MOVIE_ID,CHARACTER_ID,CHARACTER_NAME,ACTOR,PHASE_ID,MOVIE) values (224,31,49,'Dr. Hank Pym','Michael Douglas',5,'Ant-Man and the Wasp: Quantumania');
Insert into SYSTEM.CHARACTERS (ID,MOVIE_ID,CHARACTER_ID,CHARACTER_NAME,ACTOR,PHASE_ID,MOVIE) values (225,32,38,'Peter Quill / Star-Lord','Chris Pratt',5,'Guardians of the Galaxy Vol. 3');
Insert into SYSTEM.CHARACTERS (ID,MOVIE_ID,CHARACTER_ID,CHARACTER_NAME,ACTOR,PHASE_ID,MOVIE) values (226,32,39,'Gamora','Zoe Saldana',5,'Guardians of the Galaxy Vol. 3');
Insert into SYSTEM.CHARACTERS (ID,MOVIE_ID,CHARACTER_ID,CHARACTER_NAME,ACTOR,PHASE_ID,MOVIE) values (227,32,40,'Drax the Destroyer','Dave Bautista',5,'Guardians of the Galaxy Vol. 3');
Insert into SYSTEM.CHARACTERS (ID,MOVIE_ID,CHARACTER_ID,CHARACTER_NAME,ACTOR,PHASE_ID,MOVIE) values (228,32,73,'Nebula','Karen Gillan',5,'Guardians of the Galaxy Vol. 3');
Insert into SYSTEM.CHARACTERS (ID,MOVIE_ID,CHARACTER_ID,CHARACTER_NAME,ACTOR,PHASE_ID,MOVIE) values (229,32,74,'Mantis','Pom Klementieff',5,'Guardians of the Galaxy Vol. 3');
Insert into SYSTEM.CHARACTERS (ID,MOVIE_ID,CHARACTER_ID,CHARACTER_NAME,ACTOR,PHASE_ID,MOVIE) values (230,32,41,'Groot','Vin Diesel',5,'Guardians of the Galaxy Vol. 3');
Insert into SYSTEM.CHARACTERS (ID,MOVIE_ID,CHARACTER_ID,CHARACTER_NAME,ACTOR,PHASE_ID,MOVIE) values (231,32,42,'Rocket','Bradley Cooper',5,'Guardians of the Galaxy Vol. 3');
Insert into SYSTEM.CHARACTERS (ID,MOVIE_ID,CHARACTER_ID,CHARACTER_NAME,ACTOR,PHASE_ID,MOVIE) values (232,32,232,'Kraglin Obfonteri/Young Rocket/Lamb-Shank','Sean Gunn',5,'Guardians of the Galaxy Vol. 3');
Insert into SYSTEM.CHARACTERS (ID,MOVIE_ID,CHARACTER_ID,CHARACTER_NAME,ACTOR,PHASE_ID,MOVIE) values (233,32,233,'Cosmo the Spacedog','Maria Bakalova',5,'Guardians of the Galaxy Vol. 3');
Insert into SYSTEM.CHARACTERS (ID,MOVIE_ID,CHARACTER_ID,CHARACTER_NAME,ACTOR,PHASE_ID,MOVIE) values (234,33,132,'Carol Danvers / Captain Marvel','Brie Larson',5,'The Marvels');
Insert into SYSTEM.CHARACTERS (ID,MOVIE_ID,CHARACTER_ID,CHARACTER_NAME,ACTOR,PHASE_ID,MOVIE) values (235,33,235,'Monica Rambeau','Teyonah Parris',5,'The Marvels');
Insert into SYSTEM.CHARACTERS (ID,MOVIE_ID,CHARACTER_ID,CHARACTER_NAME,ACTOR,PHASE_ID,MOVIE) values (236,33,37,'Nick Fury','Samuel L. Jackson',5,'The Marvels');
Insert into SYSTEM.CHARACTERS (ID,MOVIE_ID,CHARACTER_ID,CHARACTER_NAME,ACTOR,PHASE_ID,MOVIE) values (237,33,237,'Kamala Khan / Ms. Marvel','Iman Vellani',5,'The Marvels');
Insert into SYSTEM.CHARACTERS (ID,MOVIE_ID,CHARACTER_ID,CHARACTER_NAME,ACTOR,PHASE_ID,MOVIE) values (238,34,238,'Wade Wilson / Deadpool','Ryan Reynolds',5,'Deadpool & Wolverine');
Insert into SYSTEM.CHARACTERS (ID,MOVIE_ID,CHARACTER_ID,CHARACTER_NAME,ACTOR,PHASE_ID,MOVIE) values (239,34,239,'James �Logan� Howlett / Wolverine','Hugh Jackman',5,'Deadpool & Wolverine');
Insert into SYSTEM.CHARACTERS (ID,MOVIE_ID,CHARACTER_ID,CHARACTER_NAME,ACTOR,PHASE_ID,MOVIE) values (240,35,56,'Sam Wilson / Captain America','Anthony Mackie',5,'Captain America: Brave New World');
Insert into SYSTEM.CHARACTERS (ID,MOVIE_ID,CHARACTER_ID,CHARACTER_NAME,ACTOR,PHASE_ID,MOVIE) values (241,35,241,'Joaquin Torres / Falcon','Danny Ramirez',5,'Captain America: Brave New World');
Insert into SYSTEM.CHARACTERS (ID,MOVIE_ID,CHARACTER_ID,CHARACTER_NAME,ACTOR,PHASE_ID,MOVIE) values (242,35,242,'Ruth Bat-Seraph','Shira Haas',5,'Captain America: Brave New World');
Insert into SYSTEM.CHARACTERS (ID,MOVIE_ID,CHARACTER_ID,CHARACTER_NAME,ACTOR,PHASE_ID,MOVIE) values (243,35,243,'Sidewinder','Giancarlo Esposito',5,'Captain America: Brave New World');
Insert into SYSTEM.CHARACTERS (ID,MOVIE_ID,CHARACTER_ID,CHARACTER_NAME,ACTOR,PHASE_ID,MOVIE) values (244,35,244,'Samuel Sterns / Leader','Tim Blake Nelson',5,'Captain America: Brave New World');
Insert into SYSTEM.CHARACTERS (ID,MOVIE_ID,CHARACTER_ID,CHARACTER_NAME,ACTOR,PHASE_ID,MOVIE) values (245,35,245,'President Thaddeus �Thunderbolt� Ross','Harrison Ford',5,'Captain America: Brave New World');
--------------------------------------------------------
--  DDL for Index SYS_C008364
--------------------------------------------------------

  CREATE UNIQUE INDEX "SYSTEM"."SYS_C008364" ON "SYSTEM"."CHARACTERS" ("ID") 
  PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SYSTEM" ;
--------------------------------------------------------
--  Constraints for Table CHARACTERS
--------------------------------------------------------

  ALTER TABLE "SYSTEM"."CHARACTERS" MODIFY ("MOVIE_ID" NOT NULL ENABLE);
  ALTER TABLE "SYSTEM"."CHARACTERS" MODIFY ("CHARACTER_ID" NOT NULL ENABLE);
  ALTER TABLE "SYSTEM"."CHARACTERS" MODIFY ("CHARACTER_NAME" NOT NULL ENABLE);
  ALTER TABLE "SYSTEM"."CHARACTERS" MODIFY ("ACTOR" NOT NULL ENABLE);
  ALTER TABLE "SYSTEM"."CHARACTERS" MODIFY ("PHASE_ID" NOT NULL ENABLE);
  ALTER TABLE "SYSTEM"."CHARACTERS" ADD PRIMARY KEY ("ID")
  USING INDEX PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SYSTEM"  ENABLE;
  ALTER TABLE "SYSTEM"."CHARACTERS" MODIFY ("MOVIE" NOT NULL ENABLE);
--------------------------------------------------------
--  Ref Constraints for Table CHARACTERS
--------------------------------------------------------

  ALTER TABLE "SYSTEM"."CHARACTERS" ADD CONSTRAINT "FK_CHARACTERS_MOVIES" FOREIGN KEY ("MOVIE_ID")
	  REFERENCES "SYSTEM"."MOVIES" ("MOVIE_ID") ON DELETE CASCADE ENABLE;
  ALTER TABLE "SYSTEM"."CHARACTERS" ADD CONSTRAINT "FK_CHARACTERS_PHASES" FOREIGN KEY ("PHASE_ID")
	  REFERENCES "SYSTEM"."PHASES" ("PHASE_ID") ON DELETE CASCADE ENABLE;
