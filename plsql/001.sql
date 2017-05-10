SPOOL 001.txt
SET SERVEROUTPUT ON SIZE UNLIMITED
SET VERIFY OFF

CREATE OR REPLACE PROCEDURE sum_mults_of_3_and_5_below
  (lv_num IN NUMBER)
IS
  lv_count NUMBER := 0;
  lv_result NUMBER := 0;
BEGIN
  WHILE lv_count < lv_num LOOP
    IF MOD(lv_count, 3) = 0 OR MOD(lv_count, 5) = 0 THEN
      lv_result := lv_result + lv_count;
    END IF;

    lv_count := lv_count + 1;
  END LOOP;

  dbms_output.put_line(lv_result);
END;
/

EXEC sum_mults_of_3_and_5_below(1000);

SPOOL OFF
