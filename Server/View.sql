drop view PATIENT1_INFO;
CREATE VIEW PATIENT1_INFO (VID,VGndr,Vage,Vht,Vhd,Vag,VBmi)AS
Select * from PATIENT1
union
select * from PATIENT2@site1; 

Select * from PATIENT1_INFO;

drop view TARGET_CLASS_INFO1;
CREATE VIEW TARGET_CLASS_INFO1 (ID,Score,PID)AS
Select * from TARGET_CLASS1
union
select * from TARGET_CLASS2@site1; 

Select * from TARGET_CLASS_INFO1;

commit;