SPOOL 002.txt
SET SERVEROUTPUT ON SIZE UNLIMITED
SET VERIFY OFF

CREATE OR REPLACE PROCEDURE sum_even_fib_nums_below
  (lv_num IN NUMBER)
IS
  lv_f1 NUMBER := 0;
  lv_f2 NUMBER := 1;
  lv_current NUMBER := 0;
  lv_result NUMBER := 0;
BEGIN
  LOOP
    lv_f1 := lv_f2;
    lv_f2 := lv_current;
    lv_current := lv_f1 + lv_f2;

    EXIT WHEN lv_current > lv_num;

    IF MOD(lv_current, 2) = 0 THEN
      lv_result := lv_result + lv_current;
    END IF;
  END LOOP;

  dbms_output.put_line(lv_result);
END;
/

EXEC sum_even_fib_nums_below(4000000);

SPOOL OFF
