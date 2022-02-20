SET SERVEROUTPUT ON;
SET VERIFY OFF;

    ACCEPT patient_id NUMBER PROMPT 'Enter Patient id= ';
	ACCEPT patient_gender  PROMPT "Enter Patient Gender=  ";
	ACCEPT patient_age  PROMPT "Enter Patient Age=  ";
	ACCEPT hypertension  PROMPT "Patient has hypertension?=  ";
	ACCEPT heartdisease  PROMPT "Patient has heartdisease?=  ";
	ACCEPT patient_avgglucose  PROMPT "Average Glucose=  ";
	ACCEPT patient_BMI  PROMPT "BMI=  ";
	
	
	
	
	
DECLARE
   
   pid PATIENT1.patientId%TYPE;
   gender PATIENT1.patientGender%TYPE;
   age PATIENT1.patientAge%TYPE;
   hypertension PATIENT1.Hypertension%TYPE;
   heartdisease PATIENT1.HeartDisease%TYPE;
   avgglucose PATIENT1.patientAverageGlucose%TYPE;
   BMI PATIENT1.patientBMI%TYPE;
   
   
   
   
   
BEGIN
   
   pid := &patient_id;
   gender := '&patient_gender';
   age := '&patient_age';
   hypertension := '&hypertension';
   heartdisease := '&heartdisease';
   avgglucose := '&patient_avgglucose';
   BMI := '&patient_BMI';
   
   
   
   
   
   
   insert into PATIENT1 values (pid,gender,age,hypertension,heartdisease,avgglucose,BMI);
   
   
	
   EXCEPTION
      
      WHEN DUP_VAL_ON_INDEX THEN
	  DBMS_OUTPUT.PUT_LINE('Duplicate primary value has found!');
	  WHEN PROGRAM_ERROR THEN
	  DBMS_OUTPUT.PUT_LINE('There has an internal problem!');
	  
   
   END;
/


   