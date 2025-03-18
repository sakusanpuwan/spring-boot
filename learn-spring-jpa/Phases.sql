--------------------------------------------------------
--  File created - Tuesday-March-18-2025   
--------------------------------------------------------
--------------------------------------------------------
--  DDL for Table PHASES
--------------------------------------------------------

  CREATE TABLE "SYSTEM"."PHASES" 
   (	"PHASE_ID" NUMBER(*,0), 
	"PHASE_NAME" VARCHAR2(128 BYTE)
   ) PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 
 NOCOMPRESS LOGGING
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SYSTEM" ;
REM INSERTING into SYSTEM.PHASES
SET DEFINE OFF;
Insert into SYSTEM.PHASES (PHASE_ID,PHASE_NAME) values (1,'Phase 1: Avengers Assembled');
Insert into SYSTEM.PHASES (PHASE_ID,PHASE_NAME) values (2,'Phase 2: Ultron Revolution');
Insert into SYSTEM.PHASES (PHASE_ID,PHASE_NAME) values (3,'Phase 3: Infinity Saga');
Insert into SYSTEM.PHASES (PHASE_ID,PHASE_NAME) values (4,'Phase 4: Multiverse Saga');
Insert into SYSTEM.PHASES (PHASE_ID,PHASE_NAME) values (5,'Phase 5: Multiverse Saga Continues');
Insert into SYSTEM.PHASES (PHASE_ID,PHASE_NAME) values (6,'Phase 6: Secret Wars');
