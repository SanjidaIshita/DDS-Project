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
   
   pid PATIENT2.patientId%TYPE;
   gender PATIENT2.patientGender%TYPE;
   age PATIENT2.patientAge%TYPE;
   hypertension PATIENT2.Hypertension%TYPE;
   heartdisease PATIENT2.HeartDisease%TYPE;
   avgglucose PATIENT2.patientAverageGlucose%TYPE;
   BMI PATIENT2.patientBMI%TYPE;
   
   
BEGIN
   
   pid := &patient_id;
   gender := '&patient_gender';
   age := '&patient_age';
   hypertension := '&hypertension';
   heartdisease := '&heartdisease';
   avgglucose := '&patient_avgglucose';
   BMI := '&patient_BMI';
   
   
   
   insert into PATIENT2 values (pid,gender,age,hypertension,heartdisease,avgglucose,BMI);
   
   
   END;
/
   