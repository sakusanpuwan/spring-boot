--------------------------------------------------------
--  File created - Friday-March-28-2025   
--------------------------------------------------------
--------------------------------------------------------
--  DDL for Table MOVIES
--------------------------------------------------------

  CREATE TABLE "SYSTEM"."MOVIES" 
   (	"MOVIE_ID" NUMBER(38,0), 
	"MOVIE_NAME" VARCHAR2(255 CHAR), 
	"RELEASE_DATE" DATE, 
	"MOVIE_DURATION" NUMBER(*,0), 
	"DIRECTOR" VARCHAR2(255 CHAR), 
	"WRITER" VARCHAR2(255 CHAR), 
	"PRODUCER" VARCHAR2(255 CHAR), 
	"STATUS" VARCHAR2(255 CHAR), 
	"PHASE_ID" NUMBER(38,0)
   ) PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 
 NOCOMPRESS LOGGING
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SYSTEM" ;
REM INSERTING into SYSTEM.MOVIES
SET DEFINE OFF;
Insert into SYSTEM.MOVIES (MOVIE_ID,MOVIE_NAME,RELEASE_DATE,MOVIE_DURATION,DIRECTOR,WRITER,PRODUCER,STATUS,PHASE_ID) values (23,'Spider-Man: Far From Home',to_date('02-JUL-19','DD-MON-RR'),129,'Jon Watts','Chris McKenna & Erik Sommers','Kevin Feige and Amy Pascal','Released',3);
Insert into SYSTEM.MOVIES (MOVIE_ID,MOVIE_NAME,RELEASE_DATE,MOVIE_DURATION,DIRECTOR,WRITER,PRODUCER,STATUS,PHASE_ID) values (24,'Black Widow',to_date('09-JUL-21','DD-MON-RR'),133,'Cate Shortland','Eric Pearson','Kevin Feige','Released',4);
Insert into SYSTEM.MOVIES (MOVIE_ID,MOVIE_NAME,RELEASE_DATE,MOVIE_DURATION,DIRECTOR,WRITER,PRODUCER,STATUS,PHASE_ID) values (25,'Shang-Chi and the Legend of the Ten Rings',to_date('03-SEP-21','DD-MON-RR'),133,'Destin Daniel Cretton','Dave Callaham & Destin Daniel Cretton & Andrew Lanham','Kevin Feige and Jonathan Schwartz','Released',4);
Insert into SYSTEM.MOVIES (MOVIE_ID,MOVIE_NAME,RELEASE_DATE,MOVIE_DURATION,DIRECTOR,WRITER,PRODUCER,STATUS,PHASE_ID) values (26,'Eternals',to_date('05-NOV-21','DD-MON-RR'),157,'Chloé Zhao','Chloé Zhao and Chloé Zhao & Patrick Burleigh and Ryan Firpo & Kaz Firpo','Kevin Feige and Nate Moore','Released',4);
Insert into SYSTEM.MOVIES (MOVIE_ID,MOVIE_NAME,RELEASE_DATE,MOVIE_DURATION,DIRECTOR,WRITER,PRODUCER,STATUS,PHASE_ID) values (27,'Spider-Man: No Way Home',to_date('17-DEC-21','DD-MON-RR'),148,'Jon Watts','Chris McKenna & Erik Sommers','Kevin Feige and Amy Pascal','Released',4);
Insert into SYSTEM.MOVIES (MOVIE_ID,MOVIE_NAME,RELEASE_DATE,MOVIE_DURATION,DIRECTOR,WRITER,PRODUCER,STATUS,PHASE_ID) values (28,'Doctor Strange in the Multiverse of Madness',to_date('06-MAY-22','DD-MON-RR'),126,'Sam Raimi','Michael Waldron','Kevin Feige','Released',4);
Insert into SYSTEM.MOVIES (MOVIE_ID,MOVIE_NAME,RELEASE_DATE,MOVIE_DURATION,DIRECTOR,WRITER,PRODUCER,STATUS,PHASE_ID) values (29,'Thor: Love and Thunder',to_date('08-JUL-22','DD-MON-RR'),119,'Taika Waititi','Taika Waititi & Jennifer Kaytin Robinson','Kevin Feige and Brad Winderbaum','Released',4);
Insert into SYSTEM.MOVIES (MOVIE_ID,MOVIE_NAME,RELEASE_DATE,MOVIE_DURATION,DIRECTOR,WRITER,PRODUCER,STATUS,PHASE_ID) values (30,'Black Panther: Wakanda Forever',to_date('11-NOV-22','DD-MON-RR'),161,'Ryan Coogler','Ryan Coogler & Joe Robert Cole','Kevin Feige and Nate Moore','Released',4);
Insert into SYSTEM.MOVIES (MOVIE_ID,MOVIE_NAME,RELEASE_DATE,MOVIE_DURATION,DIRECTOR,WRITER,PRODUCER,STATUS,PHASE_ID) values (31,'Ant-Man and the Wasp: Quantumania',to_date('17-FEB-23','DD-MON-RR'),124,'Peyton Reed','Jeff Loveness','Kevin Feige and Stephen Broussard','Released',5);
Insert into SYSTEM.MOVIES (MOVIE_ID,MOVIE_NAME,RELEASE_DATE,MOVIE_DURATION,DIRECTOR,WRITER,PRODUCER,STATUS,PHASE_ID) values (32,'Guardians of the Galaxy Vol. 3',to_date('05-MAY-23','DD-MON-RR'),150,'James Gunn','Kevin Feige','Kevin Feige','Released',5);
Insert into SYSTEM.MOVIES (MOVIE_ID,MOVIE_NAME,RELEASE_DATE,MOVIE_DURATION,DIRECTOR,WRITER,PRODUCER,STATUS,PHASE_ID) values (33,'The Marvels',to_date('10-NOV-23','DD-MON-RR'),105,'Nia DaCosta','Nia DaCosta and Megan McDonnell and Elissa Karasik','Kevin Feige','Released',5);
Insert into SYSTEM.MOVIES (MOVIE_ID,MOVIE_NAME,RELEASE_DATE,MOVIE_DURATION,DIRECTOR,WRITER,PRODUCER,STATUS,PHASE_ID) values (34,'Deadpool & Wolverine',to_date('26-JUL-24','DD-MON-RR'),127,'Shawn Levy','Ryan Reynolds & Rhett Reese & Paul Wernick & Zeb Wells & Shawn Levy','Kevin Feige, Lauren Shuler Donner, Ryan Reynolds, and Shawn Levy','Released',5);
Insert into SYSTEM.MOVIES (MOVIE_ID,MOVIE_NAME,RELEASE_DATE,MOVIE_DURATION,DIRECTOR,WRITER,PRODUCER,STATUS,PHASE_ID) values (35,'Captain America: Brave New World',to_date('14-FEB-25','DD-MON-RR'),118,'Julius Onah','Rob Edwards and Malcolm Spellman & Dalan Musson and Julius Onah & Peter Glanz','Kevin Feige and Nate Moore','Released',5);
Insert into SYSTEM.MOVIES (MOVIE_ID,MOVIE_NAME,RELEASE_DATE,MOVIE_DURATION,DIRECTOR,WRITER,PRODUCER,STATUS,PHASE_ID) values (1,'Iron Man',to_date('02-MAY-08','DD-MON-RR'),126,'Jon Favreau','Mark Fergus & Hawk Ostby and Art Marcum & Matt Holloway','Avi Arad and Kevin Feige','Released',1);
Insert into SYSTEM.MOVIES (MOVIE_ID,MOVIE_NAME,RELEASE_DATE,MOVIE_DURATION,DIRECTOR,WRITER,PRODUCER,STATUS,PHASE_ID) values (2,'The Incredible Hulk',to_date('13-JUN-08','DD-MON-RR'),112,'Louis Leterrier','Zak Penn','Avi Arad, Gale Anne Hurd, and Kevin Feige','Released',1);
Insert into SYSTEM.MOVIES (MOVIE_ID,MOVIE_NAME,RELEASE_DATE,MOVIE_DURATION,DIRECTOR,WRITER,PRODUCER,STATUS,PHASE_ID) values (3,'Iron Man 2',to_date('07-MAY-10','DD-MON-RR'),124,'Jon Favreau','Justin Theroux','Kevin Feige','Released',1);
Insert into SYSTEM.MOVIES (MOVIE_ID,MOVIE_NAME,RELEASE_DATE,MOVIE_DURATION,DIRECTOR,WRITER,PRODUCER,STATUS,PHASE_ID) values (4,'Thor',to_date('06-MAY-11','DD-MON-RR'),113,'Kenneth Branagh','Ashley Edward Miller & Zack Stentz and Don Payne','Kevin Feige','Released',1);
Insert into SYSTEM.MOVIES (MOVIE_ID,MOVIE_NAME,RELEASE_DATE,MOVIE_DURATION,DIRECTOR,WRITER,PRODUCER,STATUS,PHASE_ID) values (5,'Captain America: The First Avenger',to_date('22-JUL-11','DD-MON-RR'),124,'Joe Johnston','Christopher Markus & Stephen McFeely','Kevin Feige','Released',1);
Insert into SYSTEM.MOVIES (MOVIE_ID,MOVIE_NAME,RELEASE_DATE,MOVIE_DURATION,DIRECTOR,WRITER,PRODUCER,STATUS,PHASE_ID) values (6,'The Avengers',to_date('04-MAY-12','DD-MON-RR'),143,'Joss Whedon','Joss Whedon','Kevin Feige','Released',1);
Insert into SYSTEM.MOVIES (MOVIE_ID,MOVIE_NAME,RELEASE_DATE,MOVIE_DURATION,DIRECTOR,WRITER,PRODUCER,STATUS,PHASE_ID) values (7,'Iron Man 3',to_date('03-MAY-13','DD-MON-RR'),130,'Shane Black','Drew Pearce and Shane Black','Kevin Feige','Released',2);
Insert into SYSTEM.MOVIES (MOVIE_ID,MOVIE_NAME,RELEASE_DATE,MOVIE_DURATION,DIRECTOR,WRITER,PRODUCER,STATUS,PHASE_ID) values (8,'Thor: The Dark World',to_date('08-NOV-13','DD-MON-RR'),111,'Alan Taylor','Christopher L. Yost and Christopher Markus & Stephen McFeely','Kevin Feige','Released',2);
Insert into SYSTEM.MOVIES (MOVIE_ID,MOVIE_NAME,RELEASE_DATE,MOVIE_DURATION,DIRECTOR,WRITER,PRODUCER,STATUS,PHASE_ID) values (9,'Captain America: The Winter Soldier',to_date('04-APR-14','DD-MON-RR'),135,'Anthony and Joe Russo','Christopher Markus & Stephen McFeely','Kevin Feige','Released',2);
Insert into SYSTEM.MOVIES (MOVIE_ID,MOVIE_NAME,RELEASE_DATE,MOVIE_DURATION,DIRECTOR,WRITER,PRODUCER,STATUS,PHASE_ID) values (10,'Guardians of the Galaxy',to_date('01-AUG-14','DD-MON-RR'),121,'James Gunn','James Gunn and Nicole Perlman','Kevin Feige','Released',2);
Insert into SYSTEM.MOVIES (MOVIE_ID,MOVIE_NAME,RELEASE_DATE,MOVIE_DURATION,DIRECTOR,WRITER,PRODUCER,STATUS,PHASE_ID) values (11,'Avengers: Age of Ultron',to_date('01-MAY-15','DD-MON-RR'),141,'Joss Whedon','Joss Whedon','Kevin Feige','Released',2);
Insert into SYSTEM.MOVIES (MOVIE_ID,MOVIE_NAME,RELEASE_DATE,MOVIE_DURATION,DIRECTOR,WRITER,PRODUCER,STATUS,PHASE_ID) values (12,'Ant-Man',to_date('17-JUL-15','DD-MON-RR'),117,'Peyton Reed','Edgar Wright & Joe Cornish and Adam McKay & Paul Rudd','Kevin Feige','Released',2);
Insert into SYSTEM.MOVIES (MOVIE_ID,MOVIE_NAME,RELEASE_DATE,MOVIE_DURATION,DIRECTOR,WRITER,PRODUCER,STATUS,PHASE_ID) values (13,'Captain America: Civil War',to_date('06-MAY-16','DD-MON-RR'),146,'Anthony and Joe Russo','Christopher Markus & Stephen McFeely','Kevin Feige','Released',3);
Insert into SYSTEM.MOVIES (MOVIE_ID,MOVIE_NAME,RELEASE_DATE,MOVIE_DURATION,DIRECTOR,WRITER,PRODUCER,STATUS,PHASE_ID) values (14,'Doctor Strange',to_date('04-NOV-16','DD-MON-RR'),115,'Scott Derrickson','Jon Spaihts and Scott Derrickson & C. Robert Cargill','Kevin Feige','Released',3);
Insert into SYSTEM.MOVIES (MOVIE_ID,MOVIE_NAME,RELEASE_DATE,MOVIE_DURATION,DIRECTOR,WRITER,PRODUCER,STATUS,PHASE_ID) values (15,'Guardians of the Galaxy Vol. 2',to_date('05-MAY-17','DD-MON-RR'),135,'James Gunn','James Gunn','Kevin Feige','Released',3);
Insert into SYSTEM.MOVIES (MOVIE_ID,MOVIE_NAME,RELEASE_DATE,MOVIE_DURATION,DIRECTOR,WRITER,PRODUCER,STATUS,PHASE_ID) values (16,'Spider-Man: Homecoming',to_date('07-JUL-17','DD-MON-RR'),133,'Jon Watts','Jonathan Goldstein & John Francis Daley and Jon Watts & Christopher Ford and Chris McKenna & Erik Sommers','Kevin Feige and Amy Pascal','Released',3);
Insert into SYSTEM.MOVIES (MOVIE_ID,MOVIE_NAME,RELEASE_DATE,MOVIE_DURATION,DIRECTOR,WRITER,PRODUCER,STATUS,PHASE_ID) values (17,'Thor: Ragnarok',to_date('03-NOV-17','DD-MON-RR'),130,'Taika Waititi','Eric Pearson and Craig Kyle & Christopher L. Yost','Kevin Feige','Released',3);
Insert into SYSTEM.MOVIES (MOVIE_ID,MOVIE_NAME,RELEASE_DATE,MOVIE_DURATION,DIRECTOR,WRITER,PRODUCER,STATUS,PHASE_ID) values (18,'Black Panther',to_date('16-FEB-18','DD-MON-RR'),134,'Ryan Coogler','Ryan Coogler & Joe Robert Cole','Kevin Feige','Released',3);
Insert into SYSTEM.MOVIES (MOVIE_ID,MOVIE_NAME,RELEASE_DATE,MOVIE_DURATION,DIRECTOR,WRITER,PRODUCER,STATUS,PHASE_ID) values (19,'Avengers: Infinity War',to_date('27-APR-18','DD-MON-RR'),149,'Anthony and Joe Russo','Christopher Markus & Stephen McFeely','Kevin Feige','Released',3);
Insert into SYSTEM.MOVIES (MOVIE_ID,MOVIE_NAME,RELEASE_DATE,MOVIE_DURATION,DIRECTOR,WRITER,PRODUCER,STATUS,PHASE_ID) values (20,'Ant-Man and the Wasp',to_date('06-JUL-18','DD-MON-RR'),118,'Peyton Reed','Chris McKenna & Erik Sommers and Paul Rudd & Andrew Barrer & Gabriel Ferrari','Kevin Feige and Stephen Broussard','Released',3);
Insert into SYSTEM.MOVIES (MOVIE_ID,MOVIE_NAME,RELEASE_DATE,MOVIE_DURATION,DIRECTOR,WRITER,PRODUCER,STATUS,PHASE_ID) values (21,'Captain Marvel',to_date('08-MAR-19','DD-MON-RR'),124,'Anna Boden & Ryan Fleck','Anna Boden & Ryan Fleck & Geneva Robertson-Dworet','Kevin Feige','Released',3);
Insert into SYSTEM.MOVIES (MOVIE_ID,MOVIE_NAME,RELEASE_DATE,MOVIE_DURATION,DIRECTOR,WRITER,PRODUCER,STATUS,PHASE_ID) values (22,'Avengers: Endgame',to_date('26-APR-19','DD-MON-RR'),181,'Anthony and Joe Russo','Christopher Markus & Stephen McFeely','Kevin Feige','Released',3);
--------------------------------------------------------
--  DDL for Index MOVIES_PK
--------------------------------------------------------

  CREATE UNIQUE INDEX "SYSTEM"."MOVIES_PK" ON "SYSTEM"."MOVIES" ("MOVIE_ID") 
  PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SYSTEM" ;
--------------------------------------------------------
--  Constraints for Table MOVIES
--------------------------------------------------------

  ALTER TABLE "SYSTEM"."MOVIES" ADD CONSTRAINT "MOVIES_PK" PRIMARY KEY ("MOVIE_ID")
  USING INDEX PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SYSTEM"  ENABLE;
--------------------------------------------------------
--  Ref Constraints for Table MOVIES
--------------------------------------------------------

  ALTER TABLE "SYSTEM"."MOVIES" ADD CONSTRAINT "MOVIES_PHASES_FK" FOREIGN KEY ("PHASE_ID")
	  REFERENCES "SYSTEM"."PHASES" ("PHASE_ID") ENABLE;
