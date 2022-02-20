SET SERVEROUTPUT ON;
SET VERIFY OFF;

CREATE OR REPLACE PACKAGE Finding_Total AS

	PROCEDURE RESULT_TABLE;
	FUNCTION totalstroke(R IN number)
	RETURN number;

END Finding_Total;
/
CREATE OR REPLACE PACKAGE BODY Finding_Total AS
FUNCTION totalstroke(R IN number)
	RETURN number 
	IS
		total number := 0;
	BEGIN

		SELECT count(*)(SELECT DISTINCT tscore into total FROM TARGET_CLASS1);
   
		RETURN total;

	END totalstroke;
	
	PROCEDURE RESULT_TABLE(R NUMBER)
	IS
	
	BEGIN
		IF (R = 0) THEN
			DBMS_OUTPUT.PUT_LINE('No stroke');
		ELSE
			DBMS_OUTPUT.PUT_LINE('This Patient has possibility to have stroke');
		END IF;
	END RESULT_TABLE;
END Finding_Total;
/	


