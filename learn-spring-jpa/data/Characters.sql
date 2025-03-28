--------------------------------------------------------
--  File created - Friday-March-28-2025   
--------------------------------------------------------
--------------------------------------------------------
--  DDL for Table CHARACTERS
--------------------------------------------------------

  CREATE TABLE "SYSTEM"."CHARACTERS" 
   (	"CHARACTER_ID" NUMBER(38,0), 
	"CHARACTER_NAME" VARCHAR2(128 BYTE), 
	"ACTOR" VARCHAR2(26 BYTE)
   ) PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 
 NOCOMPRESS LOGGING
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SYSTEM" ;
REM INSERTING into SYSTEM.CHARACTERS
SET DEFINE OFF;
Insert into SYSTEM.CHARACTERS (CHARACTER_ID,CHARACTER_NAME,ACTOR) values (1,'Tony Stark/Iron Man','Robert Downey ,Jr.');
Insert into SYSTEM.CHARACTERS (CHARACTER_ID,CHARACTER_NAME,ACTOR) values (2,'Rhodey','Terrence Howard');
Insert into SYSTEM.CHARACTERS (CHARACTER_ID,CHARACTER_NAME,ACTOR) values (3,'Obadiah Stane','Jeff Bridges');
Insert into SYSTEM.CHARACTERS (CHARACTER_ID,CHARACTER_NAME,ACTOR) values (4,'Virginia "Pepper" Potts','Gwyneth Paltrow');
Insert into SYSTEM.CHARACTERS (CHARACTER_ID,CHARACTER_NAME,ACTOR) values (5,'Bruce Banner','Edward Norton');
Insert into SYSTEM.CHARACTERS (CHARACTER_ID,CHARACTER_NAME,ACTOR) values (8,'Natalie Rushman/Natasha Romanoff','Scarlett Johansson');
Insert into SYSTEM.CHARACTERS (CHARACTER_ID,CHARACTER_NAME,ACTOR) values (9,'Lt. Col. James "Rhodey" Rhodes','Don Cheadle');
Insert into SYSTEM.CHARACTERS (CHARACTER_ID,CHARACTER_NAME,ACTOR) values (10,'Ivan Vanko','Mickey Rourke');
Insert into SYSTEM.CHARACTERS (CHARACTER_ID,CHARACTER_NAME,ACTOR) values (11,'Thor','Chris Hemsworth');
Insert into SYSTEM.CHARACTERS (CHARACTER_ID,CHARACTER_NAME,ACTOR) values (12,'Jane Foster','Natalie Portman');
Insert into SYSTEM.CHARACTERS (CHARACTER_ID,CHARACTER_NAME,ACTOR) values (13,'Loki','Tom Hiddleston');
Insert into SYSTEM.CHARACTERS (CHARACTER_ID,CHARACTER_NAME,ACTOR) values (14,'Odin','Anthony Hopkins');
Insert into SYSTEM.CHARACTERS (CHARACTER_ID,CHARACTER_NAME,ACTOR) values (15,'Heimdall','Idris Elba');
Insert into SYSTEM.CHARACTERS (CHARACTER_ID,CHARACTER_NAME,ACTOR) values (16,'Steve Rogers / Captain America','Chris Evans');
Insert into SYSTEM.CHARACTERS (CHARACTER_ID,CHARACTER_NAME,ACTOR) values (17,'Chester Philips','Tommy Lee Jones');
Insert into SYSTEM.CHARACTERS (CHARACTER_ID,CHARACTER_NAME,ACTOR) values (18,'Bucky Barnes','Sebastian Stan');
Insert into SYSTEM.CHARACTERS (CHARACTER_ID,CHARACTER_NAME,ACTOR) values (19,'Peggy Carter','Hayley Atwell');
Insert into SYSTEM.CHARACTERS (CHARACTER_ID,CHARACTER_NAME,ACTOR) values (24,'Aldrich Killian','Guy Pearce');
Insert into SYSTEM.CHARACTERS (CHARACTER_ID,CHARACTER_NAME,ACTOR) values (25,'The Mandarin','Ben Kingsley');
Insert into SYSTEM.CHARACTERS (CHARACTER_ID,CHARACTER_NAME,ACTOR) values (31,'Malekith the Accursed','Christopher Eccleston');
Insert into SYSTEM.CHARACTERS (CHARACTER_ID,CHARACTER_NAME,ACTOR) values (32,'Sif','Jaimie Alexander');
Insert into SYSTEM.CHARACTERS (CHARACTER_ID,CHARACTER_NAME,ACTOR) values (36,'Agent Alexander Pierce','Robert Redford');
Insert into SYSTEM.CHARACTERS (CHARACTER_ID,CHARACTER_NAME,ACTOR) values (37,'Nick Fury','Samuel L. Jackson');
Insert into SYSTEM.CHARACTERS (CHARACTER_ID,CHARACTER_NAME,ACTOR) values (38,'Peter Quill','Chris Pratt');
Insert into SYSTEM.CHARACTERS (CHARACTER_ID,CHARACTER_NAME,ACTOR) values (39,'Gamora','Zoe Saldana');
Insert into SYSTEM.CHARACTERS (CHARACTER_ID,CHARACTER_NAME,ACTOR) values (40,'Drax','Dave Bautista');
Insert into SYSTEM.CHARACTERS (CHARACTER_ID,CHARACTER_NAME,ACTOR) values (41,'Groot','Vin Diesel');
Insert into SYSTEM.CHARACTERS (CHARACTER_ID,CHARACTER_NAME,ACTOR) values (42,'Rocket','Bradley Cooper');
Insert into SYSTEM.CHARACTERS (CHARACTER_ID,CHARACTER_NAME,ACTOR) values (43,'Ultron','James Spader');
Insert into SYSTEM.CHARACTERS (CHARACTER_ID,CHARACTER_NAME,ACTOR) values (44,'Scott Lang / Ant-Man','Paul Rudd');
Insert into SYSTEM.CHARACTERS (CHARACTER_ID,CHARACTER_NAME,ACTOR) values (45,'Hope Van Dyne','Evangeline Lilly');
Insert into SYSTEM.CHARACTERS (CHARACTER_ID,CHARACTER_NAME,ACTOR) values (46,'Darren Cross / Yellowjacket','Corey Stoll');
Insert into SYSTEM.CHARACTERS (CHARACTER_ID,CHARACTER_NAME,ACTOR) values (47,'Paxton','Bobby Cannavale');
Insert into SYSTEM.CHARACTERS (CHARACTER_ID,CHARACTER_NAME,ACTOR) values (48,'Luis','Michael Pe�a');
Insert into SYSTEM.CHARACTERS (CHARACTER_ID,CHARACTER_NAME,ACTOR) values (49,'Dr Hank Pym / Ant-Man','Michael Douglas');
Insert into SYSTEM.CHARACTERS (CHARACTER_ID,CHARACTER_NAME,ACTOR) values (54,'Clint Barton/Hawkeye','Jeremy Renner');
Insert into SYSTEM.CHARACTERS (CHARACTER_ID,CHARACTER_NAME,ACTOR) values (56,'Sam Wilson/Falcon','Anthony Mackie');
Insert into SYSTEM.CHARACTERS (CHARACTER_ID,CHARACTER_NAME,ACTOR) values (57,'Vision','Paul Bettany');
Insert into SYSTEM.CHARACTERS (CHARACTER_ID,CHARACTER_NAME,ACTOR) values (58,'Wanda Maximoff/Scarlet Witch','Elizabeth Olsen');
Insert into SYSTEM.CHARACTERS (CHARACTER_ID,CHARACTER_NAME,ACTOR) values (59,'T''Challa/Black Panther','Chadwick Boseman');
Insert into SYSTEM.CHARACTERS (CHARACTER_ID,CHARACTER_NAME,ACTOR) values (60,'Doctor Stephen Strange','Benedict Cumberbatch');
Insert into SYSTEM.CHARACTERS (CHARACTER_ID,CHARACTER_NAME,ACTOR) values (61,'Baron Mordo','Chiwetel Ejiofor');
Insert into SYSTEM.CHARACTERS (CHARACTER_ID,CHARACTER_NAME,ACTOR) values (62,'Dr. Christine Palmer','Rachel McAdams');
Insert into SYSTEM.CHARACTERS (CHARACTER_ID,CHARACTER_NAME,ACTOR) values (63,'Master Wong','Benedict Wong');
Insert into SYSTEM.CHARACTERS (CHARACTER_ID,CHARACTER_NAME,ACTOR) values (64,'Kaecilius','Mads Mikkelsen');
Insert into SYSTEM.CHARACTERS (CHARACTER_ID,CHARACTER_NAME,ACTOR) values (65,'The Ancient One','Tilda Swinton');
Insert into SYSTEM.CHARACTERS (CHARACTER_ID,CHARACTER_NAME,ACTOR) values (71,'Yondu Udonta','Michael Rooker');
Insert into SYSTEM.CHARACTERS (CHARACTER_ID,CHARACTER_NAME,ACTOR) values (72,'Ego','Kurt Russell');
Insert into SYSTEM.CHARACTERS (CHARACTER_ID,CHARACTER_NAME,ACTOR) values (73,'Nebula','Karen Gillan');
Insert into SYSTEM.CHARACTERS (CHARACTER_ID,CHARACTER_NAME,ACTOR) values (74,'Mantis','Pom Klementieff');
Insert into SYSTEM.CHARACTERS (CHARACTER_ID,CHARACTER_NAME,ACTOR) values (75,'Ayesha','Elizabeth Debicki');
Insert into SYSTEM.CHARACTERS (CHARACTER_ID,CHARACTER_NAME,ACTOR) values (76,'Peter Parker / Spider-Man','Tom Holland');
Insert into SYSTEM.CHARACTERS (CHARACTER_ID,CHARACTER_NAME,ACTOR) values (77,'Adrian Toomes/Vulture','Michael Keaton');
Insert into SYSTEM.CHARACTERS (CHARACTER_ID,CHARACTER_NAME,ACTOR) values (78,'Michelle','Zendaya');
Insert into SYSTEM.CHARACTERS (CHARACTER_ID,CHARACTER_NAME,ACTOR) values (79,'Happy Hogan','Jon Favreau');
Insert into SYSTEM.CHARACTERS (CHARACTER_ID,CHARACTER_NAME,ACTOR) values (80,'Aunt May','Marisa Tomei');
Insert into SYSTEM.CHARACTERS (CHARACTER_ID,CHARACTER_NAME,ACTOR) values (84,'Hela','Cate Blanchett');
Insert into SYSTEM.CHARACTERS (CHARACTER_ID,CHARACTER_NAME,ACTOR) values (86,'Grandmaster','Jeff Goldblum');
Insert into SYSTEM.CHARACTERS (CHARACTER_ID,CHARACTER_NAME,ACTOR) values (87,'Valkyrie','Tessa Thompson');
Insert into SYSTEM.CHARACTERS (CHARACTER_ID,CHARACTER_NAME,ACTOR) values (88,'Skurge','Karl Urban');
Insert into SYSTEM.CHARACTERS (CHARACTER_ID,CHARACTER_NAME,ACTOR) values (89,'Bruce Banner/Hulk','Mark Ruffalo');
Insert into SYSTEM.CHARACTERS (CHARACTER_ID,CHARACTER_NAME,ACTOR) values (92,'Erik Killmonger','Michael B. Jordan');
Insert into SYSTEM.CHARACTERS (CHARACTER_ID,CHARACTER_NAME,ACTOR) values (93,'Nakia','Lupita Nyong''o');
Insert into SYSTEM.CHARACTERS (CHARACTER_ID,CHARACTER_NAME,ACTOR) values (94,'Okoye','Danai Gurira');
Insert into SYSTEM.CHARACTERS (CHARACTER_ID,CHARACTER_NAME,ACTOR) values (95,'Everett K. Ross','Martin Freeman');
Insert into SYSTEM.CHARACTERS (CHARACTER_ID,CHARACTER_NAME,ACTOR) values (96,'Ramonda','Angela Bassett');
Insert into SYSTEM.CHARACTERS (CHARACTER_ID,CHARACTER_NAME,ACTOR) values (97,'Zuri','Forest Whitaker');
Insert into SYSTEM.CHARACTERS (CHARACTER_ID,CHARACTER_NAME,ACTOR) values (98,'Ulysses Klaue','Andy Serkis');
Insert into SYSTEM.CHARACTERS (CHARACTER_ID,CHARACTER_NAME,ACTOR) values (99,'W�Kabi','Daniel Kaluuya');
Insert into SYSTEM.CHARACTERS (CHARACTER_ID,CHARACTER_NAME,ACTOR) values (100,'Shuri','Letitia Wright');
Insert into SYSTEM.CHARACTERS (CHARACTER_ID,CHARACTER_NAME,ACTOR) values (117,'Thanos','Josh Brolin');
Insert into SYSTEM.CHARACTERS (CHARACTER_ID,CHARACTER_NAME,ACTOR) values (127,'Sonny Burch','Walton Goggins');
Insert into SYSTEM.CHARACTERS (CHARACTER_ID,CHARACTER_NAME,ACTOR) values (128,'Ava Starr/Ghost','Hannah John-Kamen');
Insert into SYSTEM.CHARACTERS (CHARACTER_ID,CHARACTER_NAME,ACTOR) values (129,'Janet van Dyne','Michelle Pfeiffer');
Insert into SYSTEM.CHARACTERS (CHARACTER_ID,CHARACTER_NAME,ACTOR) values (130,'Dr. Bill Foster/Goliath','Laurence Fishburne');
Insert into SYSTEM.CHARACTERS (CHARACTER_ID,CHARACTER_NAME,ACTOR) values (132,'Carol Danvers/Vers/Captain Marvel','Brie Larson');
Insert into SYSTEM.CHARACTERS (CHARACTER_ID,CHARACTER_NAME,ACTOR) values (134,'Talos/Keller','Ben Mendelsohn');
Insert into SYSTEM.CHARACTERS (CHARACTER_ID,CHARACTER_NAME,ACTOR) values (135,'Korath the Pursuer','Djimon Hounsou');
Insert into SYSTEM.CHARACTERS (CHARACTER_ID,CHARACTER_NAME,ACTOR) values (136,'Ronan the Accuser','Lee Pace');
Insert into SYSTEM.CHARACTERS (CHARACTER_ID,CHARACTER_NAME,ACTOR) values (137,'Maria Rambeau','Lashana Lynch');
Insert into SYSTEM.CHARACTERS (CHARACTER_ID,CHARACTER_NAME,ACTOR) values (138,'Minn-Erva','Gemma Chan');
Insert into SYSTEM.CHARACTERS (CHARACTER_ID,CHARACTER_NAME,ACTOR) values (139,'Supreme Intelligence','Annette Bening');
Insert into SYSTEM.CHARACTERS (CHARACTER_ID,CHARACTER_NAME,ACTOR) values (140,'Agent Phil Coulson','Clark Gregg');
Insert into SYSTEM.CHARACTERS (CHARACTER_ID,CHARACTER_NAME,ACTOR) values (146,'Clint Barton/Hawkeye','Jeremy Renner');
Insert into SYSTEM.CHARACTERS (CHARACTER_ID,CHARACTER_NAME,ACTOR) values (163,'Groot','Terry Notary');
Insert into SYSTEM.CHARACTERS (CHARACTER_ID,CHARACTER_NAME,ACTOR) values (176,'Quentin Beck/Mysterio','Jake Gyllenhaal');
Insert into SYSTEM.CHARACTERS (CHARACTER_ID,CHARACTER_NAME,ACTOR) values (178,'Yelena Belova','Florence Pugh');
Insert into SYSTEM.CHARACTERS (CHARACTER_ID,CHARACTER_NAME,ACTOR) values (179,'Melina','Rachel Weisz');
Insert into SYSTEM.CHARACTERS (CHARACTER_ID,CHARACTER_NAME,ACTOR) values (180,'Alexei/Red Guardian','David Harbour');
Insert into SYSTEM.CHARACTERS (CHARACTER_ID,CHARACTER_NAME,ACTOR) values (181,'Dreykov','Ray Winstone');
Insert into SYSTEM.CHARACTERS (CHARACTER_ID,CHARACTER_NAME,ACTOR) values (182,'Mason','O.T. Fagbenle');
Insert into SYSTEM.CHARACTERS (CHARACTER_ID,CHARACTER_NAME,ACTOR) values (183,'Shang-Chi','Simu Liu');
Insert into SYSTEM.CHARACTERS (CHARACTER_ID,CHARACTER_NAME,ACTOR) values (184,'Kingo','Kumail Nanjiani');
Insert into SYSTEM.CHARACTERS (CHARACTER_ID,CHARACTER_NAME,ACTOR) values (185,'Thena','Angelina Jolie');
Insert into SYSTEM.CHARACTERS (CHARACTER_ID,CHARACTER_NAME,ACTOR) values (186,'Ikaris','Richard Madden');
Insert into SYSTEM.CHARACTERS (CHARACTER_ID,CHARACTER_NAME,ACTOR) values (187,'Ajak','Salma Hayek');
Insert into SYSTEM.CHARACTERS (CHARACTER_ID,CHARACTER_NAME,ACTOR) values (188,'Phastos','Brian Tyree Henry');
Insert into SYSTEM.CHARACTERS (CHARACTER_ID,CHARACTER_NAME,ACTOR) values (189,'Makkari','Lauren Ridloff');
Insert into SYSTEM.CHARACTERS (CHARACTER_ID,CHARACTER_NAME,ACTOR) values (190,'Druig','Barry Keoghan');
Insert into SYSTEM.CHARACTERS (CHARACTER_ID,CHARACTER_NAME,ACTOR) values (192,'Sprite','Lia McHugh');
Insert into SYSTEM.CHARACTERS (CHARACTER_ID,CHARACTER_NAME,ACTOR) values (193,'Gilgamesh','Don Lee');
Insert into SYSTEM.CHARACTERS (CHARACTER_ID,CHARACTER_NAME,ACTOR) values (199,'America Chavez','Xochitl Gomez');
Insert into SYSTEM.CHARACTERS (CHARACTER_ID,CHARACTER_NAME,ACTOR) values (200,'Nicodemus West','Michael Stuhlbarg');
Insert into SYSTEM.CHARACTERS (CHARACTER_ID,CHARACTER_NAME,ACTOR) values (203,'Gorr the God Butcher','Christian Bale');
Insert into SYSTEM.CHARACTERS (CHARACTER_ID,CHARACTER_NAME,ACTOR) values (205,'Korg','Taika Waititi');
Insert into SYSTEM.CHARACTERS (CHARACTER_ID,CHARACTER_NAME,ACTOR) values (206,'Zeus','Russell Crowe');
Insert into SYSTEM.CHARACTERS (CHARACTER_ID,CHARACTER_NAME,ACTOR) values (211,'M�Baku','Winston Duke');
Insert into SYSTEM.CHARACTERS (CHARACTER_ID,CHARACTER_NAME,ACTOR) values (212,'Riri Williams/Ironheart','Dominique Thorne');
Insert into SYSTEM.CHARACTERS (CHARACTER_ID,CHARACTER_NAME,ACTOR) values (213,'Ayo','Florence Kasumba');
Insert into SYSTEM.CHARACTERS (CHARACTER_ID,CHARACTER_NAME,ACTOR) values (214,'Aneka','Michaela Coel');
Insert into SYSTEM.CHARACTERS (CHARACTER_ID,CHARACTER_NAME,ACTOR) values (215,'Namor','Tenoch Huerta');
Insert into SYSTEM.CHARACTERS (CHARACTER_ID,CHARACTER_NAME,ACTOR) values (220,'Kang the Conqueror','Jonathan Majors');
Insert into SYSTEM.CHARACTERS (CHARACTER_ID,CHARACTER_NAME,ACTOR) values (221,'Cassie Lang','Kathryn Newton');
Insert into SYSTEM.CHARACTERS (CHARACTER_ID,CHARACTER_NAME,ACTOR) values (222,'Lord Krylar','Bill Murray');
Insert into SYSTEM.CHARACTERS (CHARACTER_ID,CHARACTER_NAME,ACTOR) values (232,'Kraglin Obfonteri/Young Rocket/Lamb-Shank','Sean Gunn');
Insert into SYSTEM.CHARACTERS (CHARACTER_ID,CHARACTER_NAME,ACTOR) values (233,'Cosmo the Spacedog','Maria Bakalova');
Insert into SYSTEM.CHARACTERS (CHARACTER_ID,CHARACTER_NAME,ACTOR) values (235,'Monica Rambeau','Teyonah Parris');
Insert into SYSTEM.CHARACTERS (CHARACTER_ID,CHARACTER_NAME,ACTOR) values (237,'Kamala Khan / Ms. Marvel','Iman Vellani');
Insert into SYSTEM.CHARACTERS (CHARACTER_ID,CHARACTER_NAME,ACTOR) values (238,'Wade Wilson / Deadpool','Ryan Reynolds');
Insert into SYSTEM.CHARACTERS (CHARACTER_ID,CHARACTER_NAME,ACTOR) values (239,'James �Logan� Howlett / Wolverine','Hugh Jackman');
Insert into SYSTEM.CHARACTERS (CHARACTER_ID,CHARACTER_NAME,ACTOR) values (241,'Joaquin Torres / Falcon','Danny Ramirez');
Insert into SYSTEM.CHARACTERS (CHARACTER_ID,CHARACTER_NAME,ACTOR) values (242,'Ruth Bat-Seraph','Shira Haas');
Insert into SYSTEM.CHARACTERS (CHARACTER_ID,CHARACTER_NAME,ACTOR) values (243,'Sidewinder','Giancarlo Esposito');
Insert into SYSTEM.CHARACTERS (CHARACTER_ID,CHARACTER_NAME,ACTOR) values (244,'Samuel Sterns / Leader','Tim Blake Nelson');
Insert into SYSTEM.CHARACTERS (CHARACTER_ID,CHARACTER_NAME,ACTOR) values (245,'President Thaddeus �Thunderbolt� Ross','Harrison Ford');
--------------------------------------------------------
--  DDL for Index CHARACTERS_ID_PK
--------------------------------------------------------

  CREATE UNIQUE INDEX "SYSTEM"."CHARACTERS_ID_PK" ON "SYSTEM"."CHARACTERS" ("CHARACTER_ID") 
  PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SYSTEM" ;
--------------------------------------------------------
--  Constraints for Table CHARACTERS
--------------------------------------------------------

  ALTER TABLE "SYSTEM"."CHARACTERS" MODIFY ("CHARACTER_ID" NOT NULL ENABLE);
  ALTER TABLE "SYSTEM"."CHARACTERS" ADD CONSTRAINT "CHARACTERS_ID_PK" PRIMARY KEY ("CHARACTER_ID")
  USING INDEX PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SYSTEM"  ENABLE;
