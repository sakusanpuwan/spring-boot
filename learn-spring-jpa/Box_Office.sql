--------------------------------------------------------
--  File created - Tuesday-March-18-2025   
--------------------------------------------------------
--------------------------------------------------------
--  DDL for Table BOX_OFFICE
--------------------------------------------------------

  CREATE TABLE "SYSTEM"."BOX_OFFICE" 
   (	"MOVIE_ID" NUMBER(*,0), 
	"MOVIE_NAME" VARCHAR2(128 BYTE), 
	"PHASE_ID" NUMBER(*,0), 
	"WORLDWIDE_BOX_OFFICE" NUMBER(38,0), 
	"DOMESTIC_BOX_OFFICE" NUMBER(38,0), 
	"INTERNATIONAL_BOX_OFFICE" NUMBER(38,0), 
	"OPENING_WEEKEND" NUMBER(38,0), 
	"PRODUCTION_BUDGET" NUMBER(38,0), 
	"WORLDWIDE_BOX_OFFICE_MILLIONS" VARCHAR2(26 BYTE), 
	"DOMESTIC_BOX_OFFICE_MILLIONS" VARCHAR2(26 BYTE), 
	"INTERNATIONAL_BOX_OFFICE_MILLIONS" VARCHAR2(26 BYTE), 
	"OPENING_WEEKEND_MILLIONS" VARCHAR2(26 BYTE), 
	"PRODUCTION_BUDGET_MILLIONS" VARCHAR2(26 BYTE), 
	"BUDGET_PERCENTAGE" NUMBER(38,2), 
	"OPENING_WEEKEND_GROSS_PERCENTAGE" NUMBER(38,2), 
	"DOMESTIC_GROSS_PERCENTAGE" NUMBER(38,2), 
	"INTERNATIONAL_GROSS_PERCENTAGE" NUMBER(38,2), 
	"BUDGET_OPENING_WEEKEND_PERCENTAGE" NUMBER(38,2), 
	"BUDGET_RECOVERED_PERCENTAGE" NUMBER(38,2), 
	"INTERNATIONAL_COLLECTION_PERCENTAGE" NUMBER(38,2), 
	"INTERNATIONAL_VS_BUDGET_PERCENTAGE" NUMBER(38,2), 
	"OPENING_WEEKEND_VS_DOMESTIC_PERCENTAGE" NUMBER(38,2), 
	"DOMESTIC_VS_BUDGET_PERCENTAGE" NUMBER(38,2), 
	"POST_OPENING_WEEKEND_PERCENTAGE" NUMBER(38,2), 
	"DOMESTIC_POST_OPENING_PERCENTAGE" NUMBER(38,2), 
	"POST_OPENING_VS_BUDGET_PERCENTAGE" NUMBER(38,2)
   ) PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 
 NOCOMPRESS LOGGING
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SYSTEM" ;
REM INSERTING into SYSTEM.BOX_OFFICE
SET DEFINE OFF;
Insert into SYSTEM.BOX_OFFICE (MOVIE_ID,MOVIE_NAME,PHASE_ID,WORLDWIDE_BOX_OFFICE,DOMESTIC_BOX_OFFICE,INTERNATIONAL_BOX_OFFICE,OPENING_WEEKEND,PRODUCTION_BUDGET,WORLDWIDE_BOX_OFFICE_MILLIONS,DOMESTIC_BOX_OFFICE_MILLIONS,INTERNATIONAL_BOX_OFFICE_MILLIONS,OPENING_WEEKEND_MILLIONS,PRODUCTION_BUDGET_MILLIONS,BUDGET_PERCENTAGE,OPENING_WEEKEND_GROSS_PERCENTAGE,DOMESTIC_GROSS_PERCENTAGE,INTERNATIONAL_GROSS_PERCENTAGE,BUDGET_OPENING_WEEKEND_PERCENTAGE,BUDGET_RECOVERED_PERCENTAGE,INTERNATIONAL_COLLECTION_PERCENTAGE,INTERNATIONAL_VS_BUDGET_PERCENTAGE,OPENING_WEEKEND_VS_DOMESTIC_PERCENTAGE,DOMESTIC_VS_BUDGET_PERCENTAGE,POST_OPENING_WEEKEND_PERCENTAGE,DOMESTIC_POST_OPENING_PERCENTAGE,POST_OPENING_VS_BUDGET_PERCENTAGE) values (1,'Iron Man',1,585171547,318604126,266567421,102118668,186000000,'585.17M','318.60M','266.57M','102.12M','186.00M',314.61,17.45,54.45,45.55,54.9,314.61,45.55,143.32,32.05,171.29,82.55,67.95,259.71);
Insert into SYSTEM.BOX_OFFICE (MOVIE_ID,MOVIE_NAME,PHASE_ID,WORLDWIDE_BOX_OFFICE,DOMESTIC_BOX_OFFICE,INTERNATIONAL_BOX_OFFICE,OPENING_WEEKEND,PRODUCTION_BUDGET,WORLDWIDE_BOX_OFFICE_MILLIONS,DOMESTIC_BOX_OFFICE_MILLIONS,INTERNATIONAL_BOX_OFFICE_MILLIONS,OPENING_WEEKEND_MILLIONS,PRODUCTION_BUDGET_MILLIONS,BUDGET_PERCENTAGE,OPENING_WEEKEND_GROSS_PERCENTAGE,DOMESTIC_GROSS_PERCENTAGE,INTERNATIONAL_GROSS_PERCENTAGE,BUDGET_OPENING_WEEKEND_PERCENTAGE,BUDGET_RECOVERED_PERCENTAGE,INTERNATIONAL_COLLECTION_PERCENTAGE,INTERNATIONAL_VS_BUDGET_PERCENTAGE,OPENING_WEEKEND_VS_DOMESTIC_PERCENTAGE,DOMESTIC_VS_BUDGET_PERCENTAGE,POST_OPENING_WEEKEND_PERCENTAGE,DOMESTIC_POST_OPENING_PERCENTAGE,POST_OPENING_VS_BUDGET_PERCENTAGE) values (2,'The Incredible Hulk',1,265573859,134806913,130766946,55414050,137500000,'265.57M','134.81M','130.77M','55.41M','137.50M',193.14,20.87,50.76,49.24,40.3,193.14,49.24,95.1,41.11,98.04,79.13,58.89,152.84);
Insert into SYSTEM.BOX_OFFICE (MOVIE_ID,MOVIE_NAME,PHASE_ID,WORLDWIDE_BOX_OFFICE,DOMESTIC_BOX_OFFICE,INTERNATIONAL_BOX_OFFICE,OPENING_WEEKEND,PRODUCTION_BUDGET,WORLDWIDE_BOX_OFFICE_MILLIONS,DOMESTIC_BOX_OFFICE_MILLIONS,INTERNATIONAL_BOX_OFFICE_MILLIONS,OPENING_WEEKEND_MILLIONS,PRODUCTION_BUDGET_MILLIONS,BUDGET_PERCENTAGE,OPENING_WEEKEND_GROSS_PERCENTAGE,DOMESTIC_GROSS_PERCENTAGE,INTERNATIONAL_GROSS_PERCENTAGE,BUDGET_OPENING_WEEKEND_PERCENTAGE,BUDGET_RECOVERED_PERCENTAGE,INTERNATIONAL_COLLECTION_PERCENTAGE,INTERNATIONAL_VS_BUDGET_PERCENTAGE,OPENING_WEEKEND_VS_DOMESTIC_PERCENTAGE,DOMESTIC_VS_BUDGET_PERCENTAGE,POST_OPENING_WEEKEND_PERCENTAGE,DOMESTIC_POST_OPENING_PERCENTAGE,POST_OPENING_VS_BUDGET_PERCENTAGE) values (3,'Iron Man 2',1,621156389,312433331,308723058,128122480,170000000,'621.16M','312.43M','308.72M','128.12M','170.00M',365.39,20.63,50.3,49.7,75.37,365.39,49.7,181.6,41.01,183.78,79.37,58.99,290.02);
Insert into SYSTEM.BOX_OFFICE (MOVIE_ID,MOVIE_NAME,PHASE_ID,WORLDWIDE_BOX_OFFICE,DOMESTIC_BOX_OFFICE,INTERNATIONAL_BOX_OFFICE,OPENING_WEEKEND,PRODUCTION_BUDGET,WORLDWIDE_BOX_OFFICE_MILLIONS,DOMESTIC_BOX_OFFICE_MILLIONS,INTERNATIONAL_BOX_OFFICE_MILLIONS,OPENING_WEEKEND_MILLIONS,PRODUCTION_BUDGET_MILLIONS,BUDGET_PERCENTAGE,OPENING_WEEKEND_GROSS_PERCENTAGE,DOMESTIC_GROSS_PERCENTAGE,INTERNATIONAL_GROSS_PERCENTAGE,BUDGET_OPENING_WEEKEND_PERCENTAGE,BUDGET_RECOVERED_PERCENTAGE,INTERNATIONAL_COLLECTION_PERCENTAGE,INTERNATIONAL_VS_BUDGET_PERCENTAGE,OPENING_WEEKEND_VS_DOMESTIC_PERCENTAGE,DOMESTIC_VS_BUDGET_PERCENTAGE,POST_OPENING_WEEKEND_PERCENTAGE,DOMESTIC_POST_OPENING_PERCENTAGE,POST_OPENING_VS_BUDGET_PERCENTAGE) values (4,'Thor',1,449326618,181030624,268295994,65723338,150000000,'449.33M','181.03M','268.30M','65.72M','150.00M',299.55,14.63,40.29,59.71,43.82,299.55,59.71,178.86,36.31,120.69,85.37,63.69,255.74);
Insert into SYSTEM.BOX_OFFICE (MOVIE_ID,MOVIE_NAME,PHASE_ID,WORLDWIDE_BOX_OFFICE,DOMESTIC_BOX_OFFICE,INTERNATIONAL_BOX_OFFICE,OPENING_WEEKEND,PRODUCTION_BUDGET,WORLDWIDE_BOX_OFFICE_MILLIONS,DOMESTIC_BOX_OFFICE_MILLIONS,INTERNATIONAL_BOX_OFFICE_MILLIONS,OPENING_WEEKEND_MILLIONS,PRODUCTION_BUDGET_MILLIONS,BUDGET_PERCENTAGE,OPENING_WEEKEND_GROSS_PERCENTAGE,DOMESTIC_GROSS_PERCENTAGE,INTERNATIONAL_GROSS_PERCENTAGE,BUDGET_OPENING_WEEKEND_PERCENTAGE,BUDGET_RECOVERED_PERCENTAGE,INTERNATIONAL_COLLECTION_PERCENTAGE,INTERNATIONAL_VS_BUDGET_PERCENTAGE,OPENING_WEEKEND_VS_DOMESTIC_PERCENTAGE,DOMESTIC_VS_BUDGET_PERCENTAGE,POST_OPENING_WEEKEND_PERCENTAGE,DOMESTIC_POST_OPENING_PERCENTAGE,POST_OPENING_VS_BUDGET_PERCENTAGE) values (5,'Captain America: The First Avenger',1,370569776,176654505,193915271,65058524,140000000,'370.57M','176.65M','193.92M','65.06M','140.00M',264.69,17.56,47.67,52.33,46.47,264.69,52.33,138.51,36.83,126.18,82.44,63.17,218.22);
Insert into SYSTEM.BOX_OFFICE (MOVIE_ID,MOVIE_NAME,PHASE_ID,WORLDWIDE_BOX_OFFICE,DOMESTIC_BOX_OFFICE,INTERNATIONAL_BOX_OFFICE,OPENING_WEEKEND,PRODUCTION_BUDGET,WORLDWIDE_BOX_OFFICE_MILLIONS,DOMESTIC_BOX_OFFICE_MILLIONS,INTERNATIONAL_BOX_OFFICE_MILLIONS,OPENING_WEEKEND_MILLIONS,PRODUCTION_BUDGET_MILLIONS,BUDGET_PERCENTAGE,OPENING_WEEKEND_GROSS_PERCENTAGE,DOMESTIC_GROSS_PERCENTAGE,INTERNATIONAL_GROSS_PERCENTAGE,BUDGET_OPENING_WEEKEND_PERCENTAGE,BUDGET_RECOVERED_PERCENTAGE,INTERNATIONAL_COLLECTION_PERCENTAGE,INTERNATIONAL_VS_BUDGET_PERCENTAGE,OPENING_WEEKEND_VS_DOMESTIC_PERCENTAGE,DOMESTIC_VS_BUDGET_PERCENTAGE,POST_OPENING_WEEKEND_PERCENTAGE,DOMESTIC_POST_OPENING_PERCENTAGE,POST_OPENING_VS_BUDGET_PERCENTAGE) values (6,'The Avengers',1,1515100211,623357910,891742301,207438708,225000000,'1,515.10M','623.36M','891.74M','207.44M','225.00M',673.38,13.69,41.14,58.86,92.19,673.38,58.86,396.33,33.28,277.05,86.31,66.72,581.18);
Insert into SYSTEM.BOX_OFFICE (MOVIE_ID,MOVIE_NAME,PHASE_ID,WORLDWIDE_BOX_OFFICE,DOMESTIC_BOX_OFFICE,INTERNATIONAL_BOX_OFFICE,OPENING_WEEKEND,PRODUCTION_BUDGET,WORLDWIDE_BOX_OFFICE_MILLIONS,DOMESTIC_BOX_OFFICE_MILLIONS,INTERNATIONAL_BOX_OFFICE_MILLIONS,OPENING_WEEKEND_MILLIONS,PRODUCTION_BUDGET_MILLIONS,BUDGET_PERCENTAGE,OPENING_WEEKEND_GROSS_PERCENTAGE,DOMESTIC_GROSS_PERCENTAGE,INTERNATIONAL_GROSS_PERCENTAGE,BUDGET_OPENING_WEEKEND_PERCENTAGE,BUDGET_RECOVERED_PERCENTAGE,INTERNATIONAL_COLLECTION_PERCENTAGE,INTERNATIONAL_VS_BUDGET_PERCENTAGE,OPENING_WEEKEND_VS_DOMESTIC_PERCENTAGE,DOMESTIC_VS_BUDGET_PERCENTAGE,POST_OPENING_WEEKEND_PERCENTAGE,DOMESTIC_POST_OPENING_PERCENTAGE,POST_OPENING_VS_BUDGET_PERCENTAGE) values (7,'Iron Man 3',2,1215392272,408992272,806400000,174144585,200000000,'1,215.39M','408.99M','806.40M','174.14M','200.00M',607.7,14.33,33.65,66.35,87.07,607.7,66.35,403.2,42.58,204.5,85.67,57.42,520.62);
Insert into SYSTEM.BOX_OFFICE (MOVIE_ID,MOVIE_NAME,PHASE_ID,WORLDWIDE_BOX_OFFICE,DOMESTIC_BOX_OFFICE,INTERNATIONAL_BOX_OFFICE,OPENING_WEEKEND,PRODUCTION_BUDGET,WORLDWIDE_BOX_OFFICE_MILLIONS,DOMESTIC_BOX_OFFICE_MILLIONS,INTERNATIONAL_BOX_OFFICE_MILLIONS,OPENING_WEEKEND_MILLIONS,PRODUCTION_BUDGET_MILLIONS,BUDGET_PERCENTAGE,OPENING_WEEKEND_GROSS_PERCENTAGE,DOMESTIC_GROSS_PERCENTAGE,INTERNATIONAL_GROSS_PERCENTAGE,BUDGET_OPENING_WEEKEND_PERCENTAGE,BUDGET_RECOVERED_PERCENTAGE,INTERNATIONAL_COLLECTION_PERCENTAGE,INTERNATIONAL_VS_BUDGET_PERCENTAGE,OPENING_WEEKEND_VS_DOMESTIC_PERCENTAGE,DOMESTIC_VS_BUDGET_PERCENTAGE,POST_OPENING_WEEKEND_PERCENTAGE,DOMESTIC_POST_OPENING_PERCENTAGE,POST_OPENING_VS_BUDGET_PERCENTAGE) values (8,'Thor: The Dark World',2,644602516,206362140,438240376,85737841,150000000,'644.60M','206.36M','438.24M','85.74M','150.00M',429.74,13.3,32.01,67.99,57.16,429.74,67.99,292.16,41.55,137.57,86.7,58.45,372.58);
Insert into SYSTEM.BOX_OFFICE (MOVIE_ID,MOVIE_NAME,PHASE_ID,WORLDWIDE_BOX_OFFICE,DOMESTIC_BOX_OFFICE,INTERNATIONAL_BOX_OFFICE,OPENING_WEEKEND,PRODUCTION_BUDGET,WORLDWIDE_BOX_OFFICE_MILLIONS,DOMESTIC_BOX_OFFICE_MILLIONS,INTERNATIONAL_BOX_OFFICE_MILLIONS,OPENING_WEEKEND_MILLIONS,PRODUCTION_BUDGET_MILLIONS,BUDGET_PERCENTAGE,OPENING_WEEKEND_GROSS_PERCENTAGE,DOMESTIC_GROSS_PERCENTAGE,INTERNATIONAL_GROSS_PERCENTAGE,BUDGET_OPENING_WEEKEND_PERCENTAGE,BUDGET_RECOVERED_PERCENTAGE,INTERNATIONAL_COLLECTION_PERCENTAGE,INTERNATIONAL_VS_BUDGET_PERCENTAGE,OPENING_WEEKEND_VS_DOMESTIC_PERCENTAGE,DOMESTIC_VS_BUDGET_PERCENTAGE,POST_OPENING_WEEKEND_PERCENTAGE,DOMESTIC_POST_OPENING_PERCENTAGE,POST_OPENING_VS_BUDGET_PERCENTAGE) values (9,'Captain America: The Winter Soldier',2,714401889,259746958,454654931,95023721,170000000,'714.40M','259.75M','454.65M','95.02M','170.00M',420.24,13.3,36.36,63.64,55.9,420.24,63.64,267.44,36.58,152.79,86.7,63.42,364.34);
Insert into SYSTEM.BOX_OFFICE (MOVIE_ID,MOVIE_NAME,PHASE_ID,WORLDWIDE_BOX_OFFICE,DOMESTIC_BOX_OFFICE,INTERNATIONAL_BOX_OFFICE,OPENING_WEEKEND,PRODUCTION_BUDGET,WORLDWIDE_BOX_OFFICE_MILLIONS,DOMESTIC_BOX_OFFICE_MILLIONS,INTERNATIONAL_BOX_OFFICE_MILLIONS,OPENING_WEEKEND_MILLIONS,PRODUCTION_BUDGET_MILLIONS,BUDGET_PERCENTAGE,OPENING_WEEKEND_GROSS_PERCENTAGE,DOMESTIC_GROSS_PERCENTAGE,INTERNATIONAL_GROSS_PERCENTAGE,BUDGET_OPENING_WEEKEND_PERCENTAGE,BUDGET_RECOVERED_PERCENTAGE,INTERNATIONAL_COLLECTION_PERCENTAGE,INTERNATIONAL_VS_BUDGET_PERCENTAGE,OPENING_WEEKEND_VS_DOMESTIC_PERCENTAGE,DOMESTIC_VS_BUDGET_PERCENTAGE,POST_OPENING_WEEKEND_PERCENTAGE,DOMESTIC_POST_OPENING_PERCENTAGE,POST_OPENING_VS_BUDGET_PERCENTAGE) values (10,'Guardians of the Galaxy',2,770882395,333714112,437168283,94320883,170000000,'770.88M','333.71M','437.17M','94.32M','170.00M',453.46,12.24,43.29,56.71,55.48,453.46,56.71,257.16,28.26,196.3,87.76,71.74,397.98);
Insert into SYSTEM.BOX_OFFICE (MOVIE_ID,MOVIE_NAME,PHASE_ID,WORLDWIDE_BOX_OFFICE,DOMESTIC_BOX_OFFICE,INTERNATIONAL_BOX_OFFICE,OPENING_WEEKEND,PRODUCTION_BUDGET,WORLDWIDE_BOX_OFFICE_MILLIONS,DOMESTIC_BOX_OFFICE_MILLIONS,INTERNATIONAL_BOX_OFFICE_MILLIONS,OPENING_WEEKEND_MILLIONS,PRODUCTION_BUDGET_MILLIONS,BUDGET_PERCENTAGE,OPENING_WEEKEND_GROSS_PERCENTAGE,DOMESTIC_GROSS_PERCENTAGE,INTERNATIONAL_GROSS_PERCENTAGE,BUDGET_OPENING_WEEKEND_PERCENTAGE,BUDGET_RECOVERED_PERCENTAGE,INTERNATIONAL_COLLECTION_PERCENTAGE,INTERNATIONAL_VS_BUDGET_PERCENTAGE,OPENING_WEEKEND_VS_DOMESTIC_PERCENTAGE,DOMESTIC_VS_BUDGET_PERCENTAGE,POST_OPENING_WEEKEND_PERCENTAGE,DOMESTIC_POST_OPENING_PERCENTAGE,POST_OPENING_VS_BUDGET_PERCENTAGE) values (11,'Avengers: Age of Ultron',2,1395316979,459005868,936311111,191271109,365000000,'1,395.32M','459.01M','936.31M','191.27M','365.00M',382.28,13.71,32.9,67.1,52.4,382.28,67.1,256.52,41.67,125.76,86.29,58.33,329.88);
Insert into SYSTEM.BOX_OFFICE (MOVIE_ID,MOVIE_NAME,PHASE_ID,WORLDWIDE_BOX_OFFICE,DOMESTIC_BOX_OFFICE,INTERNATIONAL_BOX_OFFICE,OPENING_WEEKEND,PRODUCTION_BUDGET,WORLDWIDE_BOX_OFFICE_MILLIONS,DOMESTIC_BOX_OFFICE_MILLIONS,INTERNATIONAL_BOX_OFFICE_MILLIONS,OPENING_WEEKEND_MILLIONS,PRODUCTION_BUDGET_MILLIONS,BUDGET_PERCENTAGE,OPENING_WEEKEND_GROSS_PERCENTAGE,DOMESTIC_GROSS_PERCENTAGE,INTERNATIONAL_GROSS_PERCENTAGE,BUDGET_OPENING_WEEKEND_PERCENTAGE,BUDGET_RECOVERED_PERCENTAGE,INTERNATIONAL_COLLECTION_PERCENTAGE,INTERNATIONAL_VS_BUDGET_PERCENTAGE,OPENING_WEEKEND_VS_DOMESTIC_PERCENTAGE,DOMESTIC_VS_BUDGET_PERCENTAGE,POST_OPENING_WEEKEND_PERCENTAGE,DOMESTIC_POST_OPENING_PERCENTAGE,POST_OPENING_VS_BUDGET_PERCENTAGE) values (12,'Ant-Man',2,518858449,180202163,338656286,57225526,130000000,'518.86M','180.20M','338.66M','57.23M','130.00M',399.12,11.03,34.73,65.27,44.02,399.12,65.27,260.5,31.76,138.62,88.97,68.24,355.1);
Insert into SYSTEM.BOX_OFFICE (MOVIE_ID,MOVIE_NAME,PHASE_ID,WORLDWIDE_BOX_OFFICE,DOMESTIC_BOX_OFFICE,INTERNATIONAL_BOX_OFFICE,OPENING_WEEKEND,PRODUCTION_BUDGET,WORLDWIDE_BOX_OFFICE_MILLIONS,DOMESTIC_BOX_OFFICE_MILLIONS,INTERNATIONAL_BOX_OFFICE_MILLIONS,OPENING_WEEKEND_MILLIONS,PRODUCTION_BUDGET_MILLIONS,BUDGET_PERCENTAGE,OPENING_WEEKEND_GROSS_PERCENTAGE,DOMESTIC_GROSS_PERCENTAGE,INTERNATIONAL_GROSS_PERCENTAGE,BUDGET_OPENING_WEEKEND_PERCENTAGE,BUDGET_RECOVERED_PERCENTAGE,INTERNATIONAL_COLLECTION_PERCENTAGE,INTERNATIONAL_VS_BUDGET_PERCENTAGE,OPENING_WEEKEND_VS_DOMESTIC_PERCENTAGE,DOMESTIC_VS_BUDGET_PERCENTAGE,POST_OPENING_WEEKEND_PERCENTAGE,DOMESTIC_POST_OPENING_PERCENTAGE,POST_OPENING_VS_BUDGET_PERCENTAGE) values (13,'Captain America: Civil War',3,1151918521,408084349,743834172,179139142,250000000,'1,151.92M','408.08M','743.83M','179.14M','250.00M',460.77,15.55,35.43,64.57,71.66,460.77,64.57,297.53,43.9,163.23,84.45,56.1,389.11);
Insert into SYSTEM.BOX_OFFICE (MOVIE_ID,MOVIE_NAME,PHASE_ID,WORLDWIDE_BOX_OFFICE,DOMESTIC_BOX_OFFICE,INTERNATIONAL_BOX_OFFICE,OPENING_WEEKEND,PRODUCTION_BUDGET,WORLDWIDE_BOX_OFFICE_MILLIONS,DOMESTIC_BOX_OFFICE_MILLIONS,INTERNATIONAL_BOX_OFFICE_MILLIONS,OPENING_WEEKEND_MILLIONS,PRODUCTION_BUDGET_MILLIONS,BUDGET_PERCENTAGE,OPENING_WEEKEND_GROSS_PERCENTAGE,DOMESTIC_GROSS_PERCENTAGE,INTERNATIONAL_GROSS_PERCENTAGE,BUDGET_OPENING_WEEKEND_PERCENTAGE,BUDGET_RECOVERED_PERCENTAGE,INTERNATIONAL_COLLECTION_PERCENTAGE,INTERNATIONAL_VS_BUDGET_PERCENTAGE,OPENING_WEEKEND_VS_DOMESTIC_PERCENTAGE,DOMESTIC_VS_BUDGET_PERCENTAGE,POST_OPENING_WEEKEND_PERCENTAGE,DOMESTIC_POST_OPENING_PERCENTAGE,POST_OPENING_VS_BUDGET_PERCENTAGE) values (14,'Doctor Strange',3,676354481,232641920,443712561,85058311,165000000,'676.35M','232.64M','443.71M','85.06M','165.00M',409.91,12.58,34.4,65.6,51.55,409.91,65.6,268.92,36.56,141,87.42,63.44,358.36);
Insert into SYSTEM.BOX_OFFICE (MOVIE_ID,MOVIE_NAME,PHASE_ID,WORLDWIDE_BOX_OFFICE,DOMESTIC_BOX_OFFICE,INTERNATIONAL_BOX_OFFICE,OPENING_WEEKEND,PRODUCTION_BUDGET,WORLDWIDE_BOX_OFFICE_MILLIONS,DOMESTIC_BOX_OFFICE_MILLIONS,INTERNATIONAL_BOX_OFFICE_MILLIONS,OPENING_WEEKEND_MILLIONS,PRODUCTION_BUDGET_MILLIONS,BUDGET_PERCENTAGE,OPENING_WEEKEND_GROSS_PERCENTAGE,DOMESTIC_GROSS_PERCENTAGE,INTERNATIONAL_GROSS_PERCENTAGE,BUDGET_OPENING_WEEKEND_PERCENTAGE,BUDGET_RECOVERED_PERCENTAGE,INTERNATIONAL_COLLECTION_PERCENTAGE,INTERNATIONAL_VS_BUDGET_PERCENTAGE,OPENING_WEEKEND_VS_DOMESTIC_PERCENTAGE,DOMESTIC_VS_BUDGET_PERCENTAGE,POST_OPENING_WEEKEND_PERCENTAGE,DOMESTIC_POST_OPENING_PERCENTAGE,POST_OPENING_VS_BUDGET_PERCENTAGE) values (15,'Guardians of the Galaxy Vol. 2',3,869113101,389813101,479300000,146510104,200000000,'869.11M','389.81M','479.30M','146.51M','200.00M',434.56,16.86,44.85,55.15,73.26,434.56,55.15,239.65,37.58,194.91,83.14,62.42,361.3);
Insert into SYSTEM.BOX_OFFICE (MOVIE_ID,MOVIE_NAME,PHASE_ID,WORLDWIDE_BOX_OFFICE,DOMESTIC_BOX_OFFICE,INTERNATIONAL_BOX_OFFICE,OPENING_WEEKEND,PRODUCTION_BUDGET,WORLDWIDE_BOX_OFFICE_MILLIONS,DOMESTIC_BOX_OFFICE_MILLIONS,INTERNATIONAL_BOX_OFFICE_MILLIONS,OPENING_WEEKEND_MILLIONS,PRODUCTION_BUDGET_MILLIONS,BUDGET_PERCENTAGE,OPENING_WEEKEND_GROSS_PERCENTAGE,DOMESTIC_GROSS_PERCENTAGE,INTERNATIONAL_GROSS_PERCENTAGE,BUDGET_OPENING_WEEKEND_PERCENTAGE,BUDGET_RECOVERED_PERCENTAGE,INTERNATIONAL_COLLECTION_PERCENTAGE,INTERNATIONAL_VS_BUDGET_PERCENTAGE,OPENING_WEEKEND_VS_DOMESTIC_PERCENTAGE,DOMESTIC_VS_BUDGET_PERCENTAGE,POST_OPENING_WEEKEND_PERCENTAGE,DOMESTIC_POST_OPENING_PERCENTAGE,POST_OPENING_VS_BUDGET_PERCENTAGE) values (16,'Spider-Man: Homecoming',3,878346440,334201140,544145300,117027503,175000000,'878.35M','334.20M','544.15M','117.03M','175.00M',501.91,13.32,38.05,61.95,66.87,501.91,61.95,310.94,35.02,190.97,86.68,64.98,435.04);
Insert into SYSTEM.BOX_OFFICE (MOVIE_ID,MOVIE_NAME,PHASE_ID,WORLDWIDE_BOX_OFFICE,DOMESTIC_BOX_OFFICE,INTERNATIONAL_BOX_OFFICE,OPENING_WEEKEND,PRODUCTION_BUDGET,WORLDWIDE_BOX_OFFICE_MILLIONS,DOMESTIC_BOX_OFFICE_MILLIONS,INTERNATIONAL_BOX_OFFICE_MILLIONS,OPENING_WEEKEND_MILLIONS,PRODUCTION_BUDGET_MILLIONS,BUDGET_PERCENTAGE,OPENING_WEEKEND_GROSS_PERCENTAGE,DOMESTIC_GROSS_PERCENTAGE,INTERNATIONAL_GROSS_PERCENTAGE,BUDGET_OPENING_WEEKEND_PERCENTAGE,BUDGET_RECOVERED_PERCENTAGE,INTERNATIONAL_COLLECTION_PERCENTAGE,INTERNATIONAL_VS_BUDGET_PERCENTAGE,OPENING_WEEKEND_VS_DOMESTIC_PERCENTAGE,DOMESTIC_VS_BUDGET_PERCENTAGE,POST_OPENING_WEEKEND_PERCENTAGE,DOMESTIC_POST_OPENING_PERCENTAGE,POST_OPENING_VS_BUDGET_PERCENTAGE) values (17,'Thor: Ragnarok',3,850482778,315058289,535424489,122744989,180000000,'850.48M','315.06M','535.42M','122.74M','180.00M',472.49,14.43,37.04,62.96,68.19,472.49,62.96,297.46,38.96,175.03,85.57,61.04,404.3);
Insert into SYSTEM.BOX_OFFICE (MOVIE_ID,MOVIE_NAME,PHASE_ID,WORLDWIDE_BOX_OFFICE,DOMESTIC_BOX_OFFICE,INTERNATIONAL_BOX_OFFICE,OPENING_WEEKEND,PRODUCTION_BUDGET,WORLDWIDE_BOX_OFFICE_MILLIONS,DOMESTIC_BOX_OFFICE_MILLIONS,INTERNATIONAL_BOX_OFFICE_MILLIONS,OPENING_WEEKEND_MILLIONS,PRODUCTION_BUDGET_MILLIONS,BUDGET_PERCENTAGE,OPENING_WEEKEND_GROSS_PERCENTAGE,DOMESTIC_GROSS_PERCENTAGE,INTERNATIONAL_GROSS_PERCENTAGE,BUDGET_OPENING_WEEKEND_PERCENTAGE,BUDGET_RECOVERED_PERCENTAGE,INTERNATIONAL_COLLECTION_PERCENTAGE,INTERNATIONAL_VS_BUDGET_PERCENTAGE,OPENING_WEEKEND_VS_DOMESTIC_PERCENTAGE,DOMESTIC_VS_BUDGET_PERCENTAGE,POST_OPENING_WEEKEND_PERCENTAGE,DOMESTIC_POST_OPENING_PERCENTAGE,POST_OPENING_VS_BUDGET_PERCENTAGE) values (18,'Black Panther',3,1336494321,700059566,636434755,202003951,200000000,'1,336.49M','700.06M','636.43M','202.00M','200.00M',668.25,15.11,52.38,47.62,101,668.25,47.62,318.22,28.86,350.03,84.89,71.14,567.25);
Insert into SYSTEM.BOX_OFFICE (MOVIE_ID,MOVIE_NAME,PHASE_ID,WORLDWIDE_BOX_OFFICE,DOMESTIC_BOX_OFFICE,INTERNATIONAL_BOX_OFFICE,OPENING_WEEKEND,PRODUCTION_BUDGET,WORLDWIDE_BOX_OFFICE_MILLIONS,DOMESTIC_BOX_OFFICE_MILLIONS,INTERNATIONAL_BOX_OFFICE_MILLIONS,OPENING_WEEKEND_MILLIONS,PRODUCTION_BUDGET_MILLIONS,BUDGET_PERCENTAGE,OPENING_WEEKEND_GROSS_PERCENTAGE,DOMESTIC_GROSS_PERCENTAGE,INTERNATIONAL_GROSS_PERCENTAGE,BUDGET_OPENING_WEEKEND_PERCENTAGE,BUDGET_RECOVERED_PERCENTAGE,INTERNATIONAL_COLLECTION_PERCENTAGE,INTERNATIONAL_VS_BUDGET_PERCENTAGE,OPENING_WEEKEND_VS_DOMESTIC_PERCENTAGE,DOMESTIC_VS_BUDGET_PERCENTAGE,POST_OPENING_WEEKEND_PERCENTAGE,DOMESTIC_POST_OPENING_PERCENTAGE,POST_OPENING_VS_BUDGET_PERCENTAGE) values (19,'Avengers: Infinity War',3,2048359754,678815482,1369544272,257698183,300000000,'2,048.36M','678.82M','1,369.54M','257.70M','300.00M',682.79,12.58,33.14,66.86,85.9,682.79,66.86,456.51,37.96,226.27,87.42,62.04,596.89);
Insert into SYSTEM.BOX_OFFICE (MOVIE_ID,MOVIE_NAME,PHASE_ID,WORLDWIDE_BOX_OFFICE,DOMESTIC_BOX_OFFICE,INTERNATIONAL_BOX_OFFICE,OPENING_WEEKEND,PRODUCTION_BUDGET,WORLDWIDE_BOX_OFFICE_MILLIONS,DOMESTIC_BOX_OFFICE_MILLIONS,INTERNATIONAL_BOX_OFFICE_MILLIONS,OPENING_WEEKEND_MILLIONS,PRODUCTION_BUDGET_MILLIONS,BUDGET_PERCENTAGE,OPENING_WEEKEND_GROSS_PERCENTAGE,DOMESTIC_GROSS_PERCENTAGE,INTERNATIONAL_GROSS_PERCENTAGE,BUDGET_OPENING_WEEKEND_PERCENTAGE,BUDGET_RECOVERED_PERCENTAGE,INTERNATIONAL_COLLECTION_PERCENTAGE,INTERNATIONAL_VS_BUDGET_PERCENTAGE,OPENING_WEEKEND_VS_DOMESTIC_PERCENTAGE,DOMESTIC_VS_BUDGET_PERCENTAGE,POST_OPENING_WEEKEND_PERCENTAGE,DOMESTIC_POST_OPENING_PERCENTAGE,POST_OPENING_VS_BUDGET_PERCENTAGE) values (20,'Ant-Man and the Wasp',3,623144660,216648740,406495920,75812205,130000000,'623.14M','216.65M','406.50M','75.81M','130.00M',479.34,12.17,34.77,65.23,58.32,479.34,65.23,312.69,34.99,166.65,87.83,65.01,421.02);
Insert into SYSTEM.BOX_OFFICE (MOVIE_ID,MOVIE_NAME,PHASE_ID,WORLDWIDE_BOX_OFFICE,DOMESTIC_BOX_OFFICE,INTERNATIONAL_BOX_OFFICE,OPENING_WEEKEND,PRODUCTION_BUDGET,WORLDWIDE_BOX_OFFICE_MILLIONS,DOMESTIC_BOX_OFFICE_MILLIONS,INTERNATIONAL_BOX_OFFICE_MILLIONS,OPENING_WEEKEND_MILLIONS,PRODUCTION_BUDGET_MILLIONS,BUDGET_PERCENTAGE,OPENING_WEEKEND_GROSS_PERCENTAGE,DOMESTIC_GROSS_PERCENTAGE,INTERNATIONAL_GROSS_PERCENTAGE,BUDGET_OPENING_WEEKEND_PERCENTAGE,BUDGET_RECOVERED_PERCENTAGE,INTERNATIONAL_COLLECTION_PERCENTAGE,INTERNATIONAL_VS_BUDGET_PERCENTAGE,OPENING_WEEKEND_VS_DOMESTIC_PERCENTAGE,DOMESTIC_VS_BUDGET_PERCENTAGE,POST_OPENING_WEEKEND_PERCENTAGE,DOMESTIC_POST_OPENING_PERCENTAGE,POST_OPENING_VS_BUDGET_PERCENTAGE) values (21,'Captain Marvel',3,1129727388,426829839,702897549,153433423,175000000,'1,129.73M','426.83M','702.90M','153.43M','175.00M',645.56,13.58,37.78,62.22,87.68,645.56,62.22,401.66,35.95,243.9,86.42,64.05,557.88);
Insert into SYSTEM.BOX_OFFICE (MOVIE_ID,MOVIE_NAME,PHASE_ID,WORLDWIDE_BOX_OFFICE,DOMESTIC_BOX_OFFICE,INTERNATIONAL_BOX_OFFICE,OPENING_WEEKEND,PRODUCTION_BUDGET,WORLDWIDE_BOX_OFFICE_MILLIONS,DOMESTIC_BOX_OFFICE_MILLIONS,INTERNATIONAL_BOX_OFFICE_MILLIONS,OPENING_WEEKEND_MILLIONS,PRODUCTION_BUDGET_MILLIONS,BUDGET_PERCENTAGE,OPENING_WEEKEND_GROSS_PERCENTAGE,DOMESTIC_GROSS_PERCENTAGE,INTERNATIONAL_GROSS_PERCENTAGE,BUDGET_OPENING_WEEKEND_PERCENTAGE,BUDGET_RECOVERED_PERCENTAGE,INTERNATIONAL_COLLECTION_PERCENTAGE,INTERNATIONAL_VS_BUDGET_PERCENTAGE,OPENING_WEEKEND_VS_DOMESTIC_PERCENTAGE,DOMESTIC_VS_BUDGET_PERCENTAGE,POST_OPENING_WEEKEND_PERCENTAGE,DOMESTIC_POST_OPENING_PERCENTAGE,POST_OPENING_VS_BUDGET_PERCENTAGE) values (22,'Avengers: Endgame',3,2797800564,858373000,1939427564,357115007,400000000,'2,797.80M','858.37M','1,939.43M','357.12M','400.00M',699.45,12.76,30.68,69.32,89.28,699.45,69.32,484.86,41.6,214.59,87.24,58.4,610.17);
Insert into SYSTEM.BOX_OFFICE (MOVIE_ID,MOVIE_NAME,PHASE_ID,WORLDWIDE_BOX_OFFICE,DOMESTIC_BOX_OFFICE,INTERNATIONAL_BOX_OFFICE,OPENING_WEEKEND,PRODUCTION_BUDGET,WORLDWIDE_BOX_OFFICE_MILLIONS,DOMESTIC_BOX_OFFICE_MILLIONS,INTERNATIONAL_BOX_OFFICE_MILLIONS,OPENING_WEEKEND_MILLIONS,PRODUCTION_BUDGET_MILLIONS,BUDGET_PERCENTAGE,OPENING_WEEKEND_GROSS_PERCENTAGE,DOMESTIC_GROSS_PERCENTAGE,INTERNATIONAL_GROSS_PERCENTAGE,BUDGET_OPENING_WEEKEND_PERCENTAGE,BUDGET_RECOVERED_PERCENTAGE,INTERNATIONAL_COLLECTION_PERCENTAGE,INTERNATIONAL_VS_BUDGET_PERCENTAGE,OPENING_WEEKEND_VS_DOMESTIC_PERCENTAGE,DOMESTIC_VS_BUDGET_PERCENTAGE,POST_OPENING_WEEKEND_PERCENTAGE,DOMESTIC_POST_OPENING_PERCENTAGE,POST_OPENING_VS_BUDGET_PERCENTAGE) values (23,'Spider-Man: Far From Home',3,1132532832,390532085,742000747,92579212,160000000,'1,132.53M','390.53M','742.00M','92.58M','160.00M',707.83,8.17,34.48,65.52,57.86,707.83,65.52,463.75,23.71,244.08,91.83,76.29,649.97);
Insert into SYSTEM.BOX_OFFICE (MOVIE_ID,MOVIE_NAME,PHASE_ID,WORLDWIDE_BOX_OFFICE,DOMESTIC_BOX_OFFICE,INTERNATIONAL_BOX_OFFICE,OPENING_WEEKEND,PRODUCTION_BUDGET,WORLDWIDE_BOX_OFFICE_MILLIONS,DOMESTIC_BOX_OFFICE_MILLIONS,INTERNATIONAL_BOX_OFFICE_MILLIONS,OPENING_WEEKEND_MILLIONS,PRODUCTION_BUDGET_MILLIONS,BUDGET_PERCENTAGE,OPENING_WEEKEND_GROSS_PERCENTAGE,DOMESTIC_GROSS_PERCENTAGE,INTERNATIONAL_GROSS_PERCENTAGE,BUDGET_OPENING_WEEKEND_PERCENTAGE,BUDGET_RECOVERED_PERCENTAGE,INTERNATIONAL_COLLECTION_PERCENTAGE,INTERNATIONAL_VS_BUDGET_PERCENTAGE,OPENING_WEEKEND_VS_DOMESTIC_PERCENTAGE,DOMESTIC_VS_BUDGET_PERCENTAGE,POST_OPENING_WEEKEND_PERCENTAGE,DOMESTIC_POST_OPENING_PERCENTAGE,POST_OPENING_VS_BUDGET_PERCENTAGE) values (24,'Black Widow',4,379751655,183651655,196100000,80366312,200000000,'379.75M','183.65M','196.10M','80.37M','200.00M',189.88,21.16,48.36,51.64,40.18,189.88,51.64,98.05,43.76,91.83,78.84,56.24,149.69);
Insert into SYSTEM.BOX_OFFICE (MOVIE_ID,MOVIE_NAME,PHASE_ID,WORLDWIDE_BOX_OFFICE,DOMESTIC_BOX_OFFICE,INTERNATIONAL_BOX_OFFICE,OPENING_WEEKEND,PRODUCTION_BUDGET,WORLDWIDE_BOX_OFFICE_MILLIONS,DOMESTIC_BOX_OFFICE_MILLIONS,INTERNATIONAL_BOX_OFFICE_MILLIONS,OPENING_WEEKEND_MILLIONS,PRODUCTION_BUDGET_MILLIONS,BUDGET_PERCENTAGE,OPENING_WEEKEND_GROSS_PERCENTAGE,DOMESTIC_GROSS_PERCENTAGE,INTERNATIONAL_GROSS_PERCENTAGE,BUDGET_OPENING_WEEKEND_PERCENTAGE,BUDGET_RECOVERED_PERCENTAGE,INTERNATIONAL_COLLECTION_PERCENTAGE,INTERNATIONAL_VS_BUDGET_PERCENTAGE,OPENING_WEEKEND_VS_DOMESTIC_PERCENTAGE,DOMESTIC_VS_BUDGET_PERCENTAGE,POST_OPENING_WEEKEND_PERCENTAGE,DOMESTIC_POST_OPENING_PERCENTAGE,POST_OPENING_VS_BUDGET_PERCENTAGE) values (25,'Shang-Chi and the Legend of the Ten Rings',4,432243292,224543292,207700000,75388688,150000000,'432.24M','224.54M','207.70M','75.39M','150.00M',288.16,17.44,51.95,48.05,50.26,288.16,48.05,138.47,33.57,149.7,82.56,66.43,237.9);
Insert into SYSTEM.BOX_OFFICE (MOVIE_ID,MOVIE_NAME,PHASE_ID,WORLDWIDE_BOX_OFFICE,DOMESTIC_BOX_OFFICE,INTERNATIONAL_BOX_OFFICE,OPENING_WEEKEND,PRODUCTION_BUDGET,WORLDWIDE_BOX_OFFICE_MILLIONS,DOMESTIC_BOX_OFFICE_MILLIONS,INTERNATIONAL_BOX_OFFICE_MILLIONS,OPENING_WEEKEND_MILLIONS,PRODUCTION_BUDGET_MILLIONS,BUDGET_PERCENTAGE,OPENING_WEEKEND_GROSS_PERCENTAGE,DOMESTIC_GROSS_PERCENTAGE,INTERNATIONAL_GROSS_PERCENTAGE,BUDGET_OPENING_WEEKEND_PERCENTAGE,BUDGET_RECOVERED_PERCENTAGE,INTERNATIONAL_COLLECTION_PERCENTAGE,INTERNATIONAL_VS_BUDGET_PERCENTAGE,OPENING_WEEKEND_VS_DOMESTIC_PERCENTAGE,DOMESTIC_VS_BUDGET_PERCENTAGE,POST_OPENING_WEEKEND_PERCENTAGE,DOMESTIC_POST_OPENING_PERCENTAGE,POST_OPENING_VS_BUDGET_PERCENTAGE) values (26,'Eternals',4,402064929,164870264,237194665,71297219,200000000,'402.06M','164.87M','237.19M','71.30M','200.00M',201.03,17.73,41.01,58.99,35.65,201.03,58.99,118.6,43.24,82.44,82.27,56.76,165.38);
Insert into SYSTEM.BOX_OFFICE (MOVIE_ID,MOVIE_NAME,PHASE_ID,WORLDWIDE_BOX_OFFICE,DOMESTIC_BOX_OFFICE,INTERNATIONAL_BOX_OFFICE,OPENING_WEEKEND,PRODUCTION_BUDGET,WORLDWIDE_BOX_OFFICE_MILLIONS,DOMESTIC_BOX_OFFICE_MILLIONS,INTERNATIONAL_BOX_OFFICE_MILLIONS,OPENING_WEEKEND_MILLIONS,PRODUCTION_BUDGET_MILLIONS,BUDGET_PERCENTAGE,OPENING_WEEKEND_GROSS_PERCENTAGE,DOMESTIC_GROSS_PERCENTAGE,INTERNATIONAL_GROSS_PERCENTAGE,BUDGET_OPENING_WEEKEND_PERCENTAGE,BUDGET_RECOVERED_PERCENTAGE,INTERNATIONAL_COLLECTION_PERCENTAGE,INTERNATIONAL_VS_BUDGET_PERCENTAGE,OPENING_WEEKEND_VS_DOMESTIC_PERCENTAGE,DOMESTIC_VS_BUDGET_PERCENTAGE,POST_OPENING_WEEKEND_PERCENTAGE,DOMESTIC_POST_OPENING_PERCENTAGE,POST_OPENING_VS_BUDGET_PERCENTAGE) values (27,'Spider-Man: No Way Home',4,1891108035,803975784,1087132251,260138569,200000000,'1,891.11M','803.98M','1,087.13M','260.14M','200.00M',945.55,13.76,42.51,57.49,130.07,945.55,57.49,543.57,32.36,401.99,86.24,67.64,815.48);
Insert into SYSTEM.BOX_OFFICE (MOVIE_ID,MOVIE_NAME,PHASE_ID,WORLDWIDE_BOX_OFFICE,DOMESTIC_BOX_OFFICE,INTERNATIONAL_BOX_OFFICE,OPENING_WEEKEND,PRODUCTION_BUDGET,WORLDWIDE_BOX_OFFICE_MILLIONS,DOMESTIC_BOX_OFFICE_MILLIONS,INTERNATIONAL_BOX_OFFICE_MILLIONS,OPENING_WEEKEND_MILLIONS,PRODUCTION_BUDGET_MILLIONS,BUDGET_PERCENTAGE,OPENING_WEEKEND_GROSS_PERCENTAGE,DOMESTIC_GROSS_PERCENTAGE,INTERNATIONAL_GROSS_PERCENTAGE,BUDGET_OPENING_WEEKEND_PERCENTAGE,BUDGET_RECOVERED_PERCENTAGE,INTERNATIONAL_COLLECTION_PERCENTAGE,INTERNATIONAL_VS_BUDGET_PERCENTAGE,OPENING_WEEKEND_VS_DOMESTIC_PERCENTAGE,DOMESTIC_VS_BUDGET_PERCENTAGE,POST_OPENING_WEEKEND_PERCENTAGE,DOMESTIC_POST_OPENING_PERCENTAGE,POST_OPENING_VS_BUDGET_PERCENTAGE) values (28,'Doctor Strange in the Multiverse of Madness',4,952224986,411331607,540893379,187420998,200000000,'952.22M','411.33M','540.89M','187.42M','200.00M',476.11,19.68,43.2,56.8,93.71,476.11,56.8,270.45,45.56,205.67,80.32,54.44,382.4);
Insert into SYSTEM.BOX_OFFICE (MOVIE_ID,MOVIE_NAME,PHASE_ID,WORLDWIDE_BOX_OFFICE,DOMESTIC_BOX_OFFICE,INTERNATIONAL_BOX_OFFICE,OPENING_WEEKEND,PRODUCTION_BUDGET,WORLDWIDE_BOX_OFFICE_MILLIONS,DOMESTIC_BOX_OFFICE_MILLIONS,INTERNATIONAL_BOX_OFFICE_MILLIONS,OPENING_WEEKEND_MILLIONS,PRODUCTION_BUDGET_MILLIONS,BUDGET_PERCENTAGE,OPENING_WEEKEND_GROSS_PERCENTAGE,DOMESTIC_GROSS_PERCENTAGE,INTERNATIONAL_GROSS_PERCENTAGE,BUDGET_OPENING_WEEKEND_PERCENTAGE,BUDGET_RECOVERED_PERCENTAGE,INTERNATIONAL_COLLECTION_PERCENTAGE,INTERNATIONAL_VS_BUDGET_PERCENTAGE,OPENING_WEEKEND_VS_DOMESTIC_PERCENTAGE,DOMESTIC_VS_BUDGET_PERCENTAGE,POST_OPENING_WEEKEND_PERCENTAGE,DOMESTIC_POST_OPENING_PERCENTAGE,POST_OPENING_VS_BUDGET_PERCENTAGE) values (29,'Thor: Love and Thunder',4,760928081,343256830,417671251,144165107,250000000,'760.93M','343.26M','417.67M','144.17M','250.00M',304.37,18.95,45.11,54.89,57.67,304.37,54.89,167.07,42,137.3,81.05,58,246.71);
Insert into SYSTEM.BOX_OFFICE (MOVIE_ID,MOVIE_NAME,PHASE_ID,WORLDWIDE_BOX_OFFICE,DOMESTIC_BOX_OFFICE,INTERNATIONAL_BOX_OFFICE,OPENING_WEEKEND,PRODUCTION_BUDGET,WORLDWIDE_BOX_OFFICE_MILLIONS,DOMESTIC_BOX_OFFICE_MILLIONS,INTERNATIONAL_BOX_OFFICE_MILLIONS,OPENING_WEEKEND_MILLIONS,PRODUCTION_BUDGET_MILLIONS,BUDGET_PERCENTAGE,OPENING_WEEKEND_GROSS_PERCENTAGE,DOMESTIC_GROSS_PERCENTAGE,INTERNATIONAL_GROSS_PERCENTAGE,BUDGET_OPENING_WEEKEND_PERCENTAGE,BUDGET_RECOVERED_PERCENTAGE,INTERNATIONAL_COLLECTION_PERCENTAGE,INTERNATIONAL_VS_BUDGET_PERCENTAGE,OPENING_WEEKEND_VS_DOMESTIC_PERCENTAGE,DOMESTIC_VS_BUDGET_PERCENTAGE,POST_OPENING_WEEKEND_PERCENTAGE,DOMESTIC_POST_OPENING_PERCENTAGE,POST_OPENING_VS_BUDGET_PERCENTAGE) values (30,'Black Panther: Wakanda Forever',4,853985546,453829060,400156486,181339761,250000000,'853.99M','453.83M','400.16M','181.34M','250.00M',341.59,21.23,53.14,46.86,72.54,341.59,46.86,160.06,39.96,181.53,78.77,60.04,269.06);
Insert into SYSTEM.BOX_OFFICE (MOVIE_ID,MOVIE_NAME,PHASE_ID,WORLDWIDE_BOX_OFFICE,DOMESTIC_BOX_OFFICE,INTERNATIONAL_BOX_OFFICE,OPENING_WEEKEND,PRODUCTION_BUDGET,WORLDWIDE_BOX_OFFICE_MILLIONS,DOMESTIC_BOX_OFFICE_MILLIONS,INTERNATIONAL_BOX_OFFICE_MILLIONS,OPENING_WEEKEND_MILLIONS,PRODUCTION_BUDGET_MILLIONS,BUDGET_PERCENTAGE,OPENING_WEEKEND_GROSS_PERCENTAGE,DOMESTIC_GROSS_PERCENTAGE,INTERNATIONAL_GROSS_PERCENTAGE,BUDGET_OPENING_WEEKEND_PERCENTAGE,BUDGET_RECOVERED_PERCENTAGE,INTERNATIONAL_COLLECTION_PERCENTAGE,INTERNATIONAL_VS_BUDGET_PERCENTAGE,OPENING_WEEKEND_VS_DOMESTIC_PERCENTAGE,DOMESTIC_VS_BUDGET_PERCENTAGE,POST_OPENING_WEEKEND_PERCENTAGE,DOMESTIC_POST_OPENING_PERCENTAGE,POST_OPENING_VS_BUDGET_PERCENTAGE) values (31,'Ant-Man and the Wasp: Quantumania',5,463635303,214506909,249128394,106109650,200000000,'463.64M','214.51M','249.13M','106.11M','200.00M',231.82,22.89,46.27,53.73,53.05,231.82,53.73,124.56,49.47,107.25,77.11,50.53,178.76);
Insert into SYSTEM.BOX_OFFICE (MOVIE_ID,MOVIE_NAME,PHASE_ID,WORLDWIDE_BOX_OFFICE,DOMESTIC_BOX_OFFICE,INTERNATIONAL_BOX_OFFICE,OPENING_WEEKEND,PRODUCTION_BUDGET,WORLDWIDE_BOX_OFFICE_MILLIONS,DOMESTIC_BOX_OFFICE_MILLIONS,INTERNATIONAL_BOX_OFFICE_MILLIONS,OPENING_WEEKEND_MILLIONS,PRODUCTION_BUDGET_MILLIONS,BUDGET_PERCENTAGE,OPENING_WEEKEND_GROSS_PERCENTAGE,DOMESTIC_GROSS_PERCENTAGE,INTERNATIONAL_GROSS_PERCENTAGE,BUDGET_OPENING_WEEKEND_PERCENTAGE,BUDGET_RECOVERED_PERCENTAGE,INTERNATIONAL_COLLECTION_PERCENTAGE,INTERNATIONAL_VS_BUDGET_PERCENTAGE,OPENING_WEEKEND_VS_DOMESTIC_PERCENTAGE,DOMESTIC_VS_BUDGET_PERCENTAGE,POST_OPENING_WEEKEND_PERCENTAGE,DOMESTIC_POST_OPENING_PERCENTAGE,POST_OPENING_VS_BUDGET_PERCENTAGE) values (32,'Guardians of the Galaxy Vol. 3',5,845163792,358995815,486167977,118414021,250000000,'845.16M','359.00M','486.17M','118.41M','250.00M',338.07,14.01,42.48,57.52,47.37,338.07,57.52,194.47,32.98,143.6,85.99,67.02,290.7);
Insert into SYSTEM.BOX_OFFICE (MOVIE_ID,MOVIE_NAME,PHASE_ID,WORLDWIDE_BOX_OFFICE,DOMESTIC_BOX_OFFICE,INTERNATIONAL_BOX_OFFICE,OPENING_WEEKEND,PRODUCTION_BUDGET,WORLDWIDE_BOX_OFFICE_MILLIONS,DOMESTIC_BOX_OFFICE_MILLIONS,INTERNATIONAL_BOX_OFFICE_MILLIONS,OPENING_WEEKEND_MILLIONS,PRODUCTION_BUDGET_MILLIONS,BUDGET_PERCENTAGE,OPENING_WEEKEND_GROSS_PERCENTAGE,DOMESTIC_GROSS_PERCENTAGE,INTERNATIONAL_GROSS_PERCENTAGE,BUDGET_OPENING_WEEKEND_PERCENTAGE,BUDGET_RECOVERED_PERCENTAGE,INTERNATIONAL_COLLECTION_PERCENTAGE,INTERNATIONAL_VS_BUDGET_PERCENTAGE,OPENING_WEEKEND_VS_DOMESTIC_PERCENTAGE,DOMESTIC_VS_BUDGET_PERCENTAGE,POST_OPENING_WEEKEND_PERCENTAGE,DOMESTIC_POST_OPENING_PERCENTAGE,POST_OPENING_VS_BUDGET_PERCENTAGE) values (33,'The Marvels',5,199706250,84500223,115206027,46110859,270000000,'199.71M','84.50M','115.21M','46.11M','270.00M',73.97,23.09,42.31,57.69,17.08,73.97,57.69,42.67,54.57,31.3,76.91,45.43,56.89);
Insert into SYSTEM.BOX_OFFICE (MOVIE_ID,MOVIE_NAME,PHASE_ID,WORLDWIDE_BOX_OFFICE,DOMESTIC_BOX_OFFICE,INTERNATIONAL_BOX_OFFICE,OPENING_WEEKEND,PRODUCTION_BUDGET,WORLDWIDE_BOX_OFFICE_MILLIONS,DOMESTIC_BOX_OFFICE_MILLIONS,INTERNATIONAL_BOX_OFFICE_MILLIONS,OPENING_WEEKEND_MILLIONS,PRODUCTION_BUDGET_MILLIONS,BUDGET_PERCENTAGE,OPENING_WEEKEND_GROSS_PERCENTAGE,DOMESTIC_GROSS_PERCENTAGE,INTERNATIONAL_GROSS_PERCENTAGE,BUDGET_OPENING_WEEKEND_PERCENTAGE,BUDGET_RECOVERED_PERCENTAGE,INTERNATIONAL_COLLECTION_PERCENTAGE,INTERNATIONAL_VS_BUDGET_PERCENTAGE,OPENING_WEEKEND_VS_DOMESTIC_PERCENTAGE,DOMESTIC_VS_BUDGET_PERCENTAGE,POST_OPENING_WEEKEND_PERCENTAGE,DOMESTIC_POST_OPENING_PERCENTAGE,POST_OPENING_VS_BUDGET_PERCENTAGE) values (34,'Deadpool & Wolverine',5,1338071348,636745858,701325490,211435291,200000000,'1,338.07M','636.75M','701.33M','211.44M','200.00M',669.04,15.8,47.59,52.41,105.72,669.04,52.41,350.66,33.21,318.37,84.2,66.79,563.32);
Insert into SYSTEM.BOX_OFFICE (MOVIE_ID,MOVIE_NAME,PHASE_ID,WORLDWIDE_BOX_OFFICE,DOMESTIC_BOX_OFFICE,INTERNATIONAL_BOX_OFFICE,OPENING_WEEKEND,PRODUCTION_BUDGET,WORLDWIDE_BOX_OFFICE_MILLIONS,DOMESTIC_BOX_OFFICE_MILLIONS,INTERNATIONAL_BOX_OFFICE_MILLIONS,OPENING_WEEKEND_MILLIONS,PRODUCTION_BUDGET_MILLIONS,BUDGET_PERCENTAGE,OPENING_WEEKEND_GROSS_PERCENTAGE,DOMESTIC_GROSS_PERCENTAGE,INTERNATIONAL_GROSS_PERCENTAGE,BUDGET_OPENING_WEEKEND_PERCENTAGE,BUDGET_RECOVERED_PERCENTAGE,INTERNATIONAL_COLLECTION_PERCENTAGE,INTERNATIONAL_VS_BUDGET_PERCENTAGE,OPENING_WEEKEND_VS_DOMESTIC_PERCENTAGE,DOMESTIC_VS_BUDGET_PERCENTAGE,POST_OPENING_WEEKEND_PERCENTAGE,DOMESTIC_POST_OPENING_PERCENTAGE,POST_OPENING_VS_BUDGET_PERCENTAGE) values (35,'Captain America: Brave New World',5,289405738,141205738,148200000,88842603,180000000,'289.41M','141.21M','148.20M','88.84M','180.00M',160.78,30.7,48.79,51.21,49.36,160.78,51.21,82.33,62.92,78.45,69.3,37.08,111.42);
