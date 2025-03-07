INSERT INTO USER_DETAILS (id, BIRTH_DATE, "USER_NAME")
VALUES (1, '2000-01-01', 'John Doe');

INSERT INTO USER_DETAILS (id, BIRTH_DATE, "USER_NAME")
VALUES (1001, current_date(), 'Kevin');

INSERT INTO POST (ID, DESCRIPTION, USER_ID)
VALUES (101, 'Hello from H2', 1);

INSERT INTO POST (ID, DESCRIPTION, USER_ID)
VALUES (103, 'Hello from Spring', 1);

INSERT INTO POST(ID, DESCRIPTION, USER_ID)
VALUES(102, 'Why say full words when few words do trick', 1001);

INSERT INTO POST(ID, DESCRIPTION, USER_ID)
VALUES(104, 'Mini-cupcakes? As in the mini version of regular cupcakes? Which is already a mini version of cake? Honestly, where does it end with you people', 1001);

