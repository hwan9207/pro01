SET SERVEROUTPUT ON;

-- 커서(CURSOR) : SELECT 또는 DML과 같은 SQL의 한 컬럼의 결과셋(ResultSet)을 저장하여 필요한 곳에서 활용하기 위한 객체 
--      선언(DECLARATION) -> 열기(OPEN) -> 반복읽기(FETCH) -> 닫기(CLOSE) : 명시적 커서
--      선언(DECLARATION) -> 반복 루프(FOR/LOOP/WHILE...) : 묵시적 커서

-- 명시적 커서(EXPLICIT CURSOR) : 선언 -> 열기 -> 읽기 -> 닫기 등의 순서로 이루어지는 커서


CREATE OR REPLACE PROCEDURE emp_prt1(vpno IN emp.pno%TYPE)
IS 
    CURSOR cur_pno IS SELECT pno, ename, pos, salary FROM emp WHERE pno=vpno;
        vppo emp.pno%TYPE;
        vename emp.ename%TYPE;
        vpos emp.pos%TYPE;
        psal emp.salary%TYPE;
BEGIN
    OPEN cur_pno;
    DBMS_OUTPUT.PUT_LINE('*****************************');    
    DBMS_OUTPUT.PUT_LINE('부서코드  사원명  직급  급여');
    DBMS_OUTPUT.PUT_LINE('*****************************');
   
   LOOP
        FETCH cur_pno INTO vppo, vename, vpos, psal;
        EXIT WHEN cur_pno%NOTFOUND;
            DBMS_OUTPUT.PUT_LINE(vppo || ' ' || vename || ' ' || vpos || ' ' || psal);
   END LOOP;
   DBMS_OUTPUT.PUT_LINE('*****************************');    
   DBMS_OUTPUT.PUT_LINE('전체 건수 : '|| cur_pno%ROWCOUNT);
   CLOSE cur_pno;
END;
/

EXEC emp_prt1(10);

-- 묵시적 커서(IMPLICIT CURSOR) : 열기나 읽기, 닫기의 별도 구문없이 반복문만 활용하는 커서

CREATE OR REPLACE PROCEDURE emp_prt2(vpno IN emp.pno%TYPE)
IS
   CURSOR cur_pno IS SELECT pno, ename, pos, salary FROM emp WHERE pno=vpno;
   vcnt NUMBER;
BEGIN
     DBMS_OUTPUT.PUT_LINE('*****************************');    
     DBMS_OUTPUT.PUT_LINE('부서코드  사원명  직급  급여');
     DBMS_OUTPUT.PUT_LINE('*****************************');
     FOR cur IN cur_pno LOOP
        DBMS_OUTPUT.PUT_LINE(cur.pno || ' ' || cur.ename || ' ' || cur.pos || ' ' || cur.salary);
        vcnt := cur_pno%ROWCOUNT;
     END LOOP;   
     DBMS_OUTPUT.PUT_LINE('*****************************');    
     DBMS_OUTPUT.PUT_LINE('전체 건수 : '|| vcnt);
END;
/
EXEC emp_prt2(10);

CREATE OR REPLACE PROCEDURE emp_prt3(vsuperior IN emp.superior%TYPE)
IS
    CURSOR cur_superior IS SELECT eno,ename,pos,salary FROM emp WHERE superior=vsuperior;
    vcnt NUMBER;
BEGIN 
     DBMS_OUTPUT.PUT_LINE('*****************************');    
     DBMS_OUTPUT.PUT_LINE('사원번호  사원명  직급  급여');
     DBMS_OUTPUT.PUT_LINE('*****************************');
     FOR cur IN cur_superior LOOP
        DBMS_OUTPUT.PUT_LINE(cur.eno || ' ' || cur.ename || ' ' || cur.pos || ' ' || cur.salary);
        vcnt := cur_superior%ROWCOUNT;
     END LOOP;
     DBMS_OUTPUT.PUT_LINE('*****************************');    
     DBMS_OUTPUT.PUT_LINE('전체 건수 : '|| vcnt);
END;
/
EXEC emp_prt3(2004);
select * from emp;

-- 패키지(PACKAGE) : 여러 개의 프로시저 또는 함수 등을 하나의 그룹으로 묶은 묶음.
-- 패키지 선언부(PACKAGE DECLARATION)
CREATE OR REPLACE PACKAGE emp_pack
IS
    PROCEDURE eno_out;
    PROCEDURE ename_out;
    PROCEDURE pno_out;
    PROCEDURE pos_out;
END emp_pack;    
/

-- 패키지 기능 정의부(PACKAGE DEFINE OF FUNCTION)
CREATE OR REPLACE PACKAGE BODY emp_pack 
IS
    CURSOR sw_cur IS SELECT * FROM emp;
    
    PROCEDURE eno_out
    IS
    BEGIN
       DBMS_OUTPUT.PUT_LINE('사원번호');
       DBMS_OUTPUT.PUT_LINE('--------');
       FOR k IN sw_cur LOOP 
          DBMS_OUTPUT.PUT_LINE(k.eno);
       END LOOP;
    END eno_out;
    
    PROCEDURE ename_out
    IS
    BEGIN
        DBMS_OUTPUT.PUT_LINE('사원명');
        DBMS_OUTPUT.PUT_LINE('------');
        FOR k IN sw_cur LOOP 
            DBMS_OUTPUT.PUT_LINE(k.ename);
        END LOOP;
    END ename_out;
    
    PROCEDURE pno_out
    IS
    BEGIN
        DBMS_OUTPUT.PUT_LINE('부서번호');
        DBMS_OUTPUT.PUT_LINE('------');
        FOR k IN sw_cur LOOP
            DBMS_OUTPUT.PUT_LINE(k.pno);
        END LOOP;
    END pno_out;
    
    PROCEDURE pos_out
    IS
    BEGIN
        DBMS_OUTPUT.PUT_LINE('직급');
        DBMS_OUTPUT.PUT_LINE('----');
        FOR k IN sw_cur LOOP 
            DBMS_OUTPUT.PUT_LINE(k.pos);
        END LOOP;
    END pos_out;
END;
/
EXEC emp_pack.pos_out;

CREATE TABLE goods(pno int, pname VARCHAR(100), price int);
CREATE TABLE store(pno int primary key, amount int, price int);
CREATE TABLE release(pno int, amount int, price int);
CREATE TABLE inventory(pno int primary key, amount int, price int);

INSERT INTO GOODS VALUES(100,'먹태깡',2500);
INSERT INTO GOODS VALUES(200,'꼬북칩',2000);
INSERT INTO GOODS VALUES(300,'짜파링',3000);
INSERT INTO GOODS VALUES(400,'팅쵹',2800);
INSERT INTO GOODS VALUES(500,'감튀',2600);

INSERT INTO STORE VALUES(100,10,2500);
INSERT INTO STORE VALUES(200,5,2000);
INSERT INTO STORE VALUES(300,5,3000);
UPDATE inventory SET amount=5 WHERE PNO IN(200,300);

INSERT INTO inventory VALUES(100,2,3500);

-- 트리거(TRIGGER) : 특정 상황이나 동작 등을 이벤트라고 할 때, 이벤트가 발생하면, 
-- 연쇄 동작으로 해당 기능을 자동으로 처리해주는 서브 프로그램의 일종.
-- BEFORE TRIGGER | AFTER TRIGGER(update, insert, delete)
-- CREATE [OR REPLACE] TRIGGER trigger_name
--   BEFORE | AFTER (INSERT,UPDATE,DELETE ON table_name)
--   BEGIN
--      트리거 처리
-- END;

-- 입고시의 재고 처리 : 입고(store) 테이블에 새로운 레코드가 추가되면, 재고는 증가된다.
-- 만약, 현재 해당 상품의 재고가 없으면, 새로운 상품으로 재고를 처리하고,
-- 해당 상품에 기존에 존재하면, 그 제품의 수량과 단가를 적용하여 재고를 처리할 수 있도록 구현할 것.
-- 트리거 이름 : store_trigger
-- 재고의 단가 : 입고시 원래 가격의 40%의 마진율
CREATE OR REPLACE TRIGGER store_trigger
AFTER INSERT ON store
FOR EACH ROW
DECLARE
    vcnt NUMBER;
BEGIN
    SELECT COUNT(*) INTO vcnt FROM inventory WHERE pno=:NEW.pno;
    IF (vcnt=0) THEN
        INSERT INTO inventory VALUES (:NEW.pno, :NEW.amount, :NEW.price*1.4);
    ELSE
        UPDATE inventory SET amount=amount+:NEW.amount, price=:NEW.price*1.4
        WHERE pno=:NEW.pno;
    END IF;
END;    
/

SELECT * FROM inventory;
SELECT * FROM store;
SELECT * FROM release;
DROP TABLE inventory;
DELETE FROM store WHERE pno=100;
DELETE FROM release WHERE pno=100;

-- 출고시의 재고 처리 : 출고(release) 테이블에 새로운 레코드가 추가되면, 재고는 감소된다.
-- 만약, 현재 해당 상품이 모두 출고 되면, 해당 상품의 재고 정보를 삭제하고,
-- 해당 상품이 출고되고도 잔존하면, 그 제품의 수량을 적용하여 재고를 처리할 수 있도록 구현할 것.
-- 트리거 이름 : release_trigger
CREATE OR REPLACE TRIGGER release_trigger
AFTER INSERT ON release
FOR EACH ROW
DECLARE
    vcnt NUMBER;
BEGIN
    SELECT amount-:NEW.amount INTO vcnt FROM inventory WHERE pno=:NEW.pno;
    IF (vcnt=0) THEN
        DELETE FROM inventory WHERE pno=:NEW.pno;
    ELSE
        UPDATE inventory SET amount=amount-:NEW.amount WHERE pno=:NEW.pno;
    END IF;    
END;
/

select * from inventory;
select * from release;
INSERT INTO release VALUES(200,3,(SELECT price FROM inventory WHERE pno=200));

-- 반출(recall)시의 재고 처리 : 입고(store) 테이블에 수량이 감소하면, 재고도 감소된다.
-- 만약, 현재 해당 상품이 모두 반출(recall) 되면, 해당 상품의 재고 정보를 삭제하고,
-- 해당 상품이 반출되고도 잔존하면, 그 제품의 수량을 적용하여 재고를 처리할 수 있도록 구현할 것.
-- 트리거 이름 : recall_trigger
CREATE OR REPLACE TRIGGER recall_trigger
AFTER UPDATE OR DELETE ON store
FOR EACH ROW
DECLARE
    vcnt NUMBER;
BEGIN
    SELECT amount-:NEW.amount INTO vcnt FROM inventory WHERE pno=:NEW.pno;
    IF (vcnt>0) THEN
        UPDATE inventory SET amount=amount-:NEW.amount WHERE pno=:NEW.pno;
    ELSE
        DELETE FROM inventory WHERE pno=:NEW.pno;
    END IF;
END;
/

UPDATE store set amount=amount-2 where pno=300;

-- 반품(return)시의 재고 처리 : 출고(release) 테이블에 수량이 감소하면, 재고는 증가된다.
-- 만약, 현재 해당 상품의 재고가 없으면, 새로운 상품으로 재고를 처리하고,
-- 해당 상품이 기존에 존재하면, 그 제품의 수량을 적용하여 재고를 처리할 수 있도록 구현할 것.
-- 트리거 이름 : return_trigger

CREATE OR REPLACE TRIGGER return_trigger
AFTER UPDATE OR INSERT ON release
FOR EACH ROW
DECLARE
    vcnt NUMBER;
BEGIN
    SELECT amount+:NEW.amount INTO vcnt FROM inventory WHERE pno=:NEW.pno;
    IF (vcnt=0) THEN
        INSERT INTO inventory VALUES(:NEW.pno, :NEW.amount, :NEW.price);
    ELSE
        UPDATE inventory SET amount=amount+:NEW.amount, price=:NEW.price*1.4 WHERE pno=:NEW.pno;
    END IF;
END;
/
select * from inventory;
UPDATE release SET amount=amount-2 WHERE pno=100;