clear screen;

DROP TABLE PATIENT2 CASCADE CONSTRAINTS;
DROP TABLE TARGET_CLASS2 CASCADE CONSTRAINTS;


CREATE TABLE PATIENT2( patientId number,
                      patientGender varchar2(30), 
					  patientAge number, 
					  Hypertension varchar2(11),
					  HeartDisease varchar2(11),
					  patientAverageGlucose number,
					  patientBMI number,
					  PRIMARY KEY(patientId));
					  
CREATE TABLE TARGET_CLASS2(
	tid number,
	tscore number,
	patientId number,
	PRIMARY KEY(tid),
	FOREIGN KEY(patientId) REFERENCES PATIENT2(patientId));
	
	
SELECT * FROM PATIENT2;
SELECT * FROM TARGET_CLASS2;

	
insert into PATIENT2 values (11, 'Female', '40', 'No', 'Yes', '97', '19.1');
insert into PATIENT2 values (12, 'Male', '99', 'Yes', 'No', '78.03', '23.9');
insert into PATIENT2 values (13, 'Male', '56', 'No', 'Yes', '71.03', '28.5');
insert into PATIENT2 values (14, 'Female', '31', 'No', 'No', '92.14', '29.6');
insert into PATIENT2 values (15, 'Male', '41', 'No', 'Yes', '144', '36.4');
insert into PATIENT2 values (16, 'Female', '63', 'No', 'No', '82.62', '28.8');
insert into PATIENT2 values (17, 'Female', '72', 'Yes', 'Yes', '90.9', '20.4');
insert into PATIENT2 values (18, 'Male', '68', 'No', 'No', '92', '37.8');
insert into PATIENT2 values (19, 'Male', '51', 'No', 'No', '213', '27.7');
insert into PATIENT2 values (20, 'Female', '39', 'Yes', 'No', '90.45', '31.4');

insert into TARGET_CLASS2 values(11, 1, 11); 
insert into TARGET_CLASS2 values(12, 1, 12); 
insert into TARGET_CLASS2 values(13, 0, 13); 
insert into TARGET_CLASS2 values(14, 1, 14); 
insert into TARGET_CLASS2 values(15, 0, 15); 
insert into TARGET_CLASS2 values(16, 1, 16); 
insert into TARGET_CLASS2 values(17, 1, 17); 
insert into TARGET_CLASS2 values(18, 0, 18); 
insert into TARGET_CLASS2 values(19, 1, 19); 
insert into TARGET_CLASS2 values(20, 1, 20); 



SELECT * FROM PATIENT2;
SELECT * FROM TARGET_CLASS2;

commit;


