clear screen;

DROP TABLE PATIENT1 CASCADE CONSTRAINTS;
DROP TABLE TARGET_CLASS1 CASCADE CONSTRAINTS;


CREATE TABLE PATIENT1( patientId number,
                      patientGender varchar2(30), 
					  patientAge number, 
					  Hypertension varchar2(11),
					  HeartDisease varchar2(11),
					  patientAverageGlucose number,
					  patientBMI number,
					  PRIMARY KEY(patientId));
					  
CREATE TABLE TARGET_CLASS1(
	tid number,
	tscore number,
	patientId number,
	PRIMARY KEY(tid),
	FOREIGN KEY(patientId) REFERENCES PATIENT(patientId));
	
	
SELECT * FROM PATIENT1;
SELECT * FROM TARGET_CLASS1;

	
insert into PATIENT1 values (1, 'Male', '80', 'No', 'Yes', '105', '32.5');
insert into PATIENT1 values (2, 'Female', '79', 'Yes', 'No', '174', '24');
insert into PATIENT1 values (3, 'Male', '36', 'No', 'Yes', '77', '30.9');
insert into PATIENT1 values (4, 'Male', '81', 'No', 'No', '186', '29.6');
insert into PATIENT1 values (5, 'Female', '31', 'No', 'Yes', '89', '31.3');
insert into PATIENT1 values (6, 'Female', '60', 'No', 'No', '74', '37.8');
insert into PATIENT1 values (7, 'Female', '72', 'Yes', 'Yes', '81', '23.9');
insert into PATIENT1 values (8, 'Female', '58', 'No', 'No', '92', '28.5');
insert into PATIENT1 values (9, 'Male', '58', 'No', 'No', '60', '29.6');
insert into PATIENT1 values (10, 'Female', '49', 'Yes', 'No', '97', '26.4');

insert into TARGET_CLASS1 values(1, 1, 1); 
insert into TARGET_CLASS1 values(2, 1, 2); 
insert into TARGET_CLASS1 values(3, 0, 3); 
insert into TARGET_CLASS1 values(4, 1, 4); 
insert into TARGET_CLASS1 values(5, 0, 5); 
insert into TARGET_CLASS1 values(6, 1, 6); 
insert into TARGET_CLASS1 values(7, 1, 7); 
insert into TARGET_CLASS1 values(8, 0, 8); 
insert into TARGET_CLASS1 values(9, 1, 9); 
insert into TARGET_CLASS1 values(10, 1, 10); 



SELECT * FROM PATIENT1;
SELECT * FROM TARGET_CLASS1;

commit;


