drop view PATIENT2_INFO;
CREATE VIEW PATIENT2_INFO (VID,VGndr,Vage,Vht,Vhd,Vag,VBmi)AS
Select * from PATIENT1@server1
union
select * from PATIENT2; 

Select * from PATIENT2_INFO;

drop view TARGET_CLASS_INFO2;
CREATE VIEW TARGET_CLASS_INFO2 (ID,Score,PID)AS
Select * from TARGET_CLASS1@server1
union
select * from TARGET_CLASS2; 

Select * from TARGET_CLASS_INFO2;


 
commit;