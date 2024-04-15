create table member(id varchar(20) primary key, name varchar(10), pw varchar(20), tel int, addr varchar(50),brith int );
create table notice(no int primary key, title varchar(100),content varchar(3000),resdate varchar(20),visited int);
create table culturalheritage(cname VARCHAR(100),no int primary key, ctype varchar(50), addr varchar(100),dyear varchar(30),admin varchar(30));
create table office(tname VARCHAR(30),addr VARCHAR(100),tel VARCHAR(20), fax VARCHAR(20));
commit;
create sequence nosq increment by 1 start with 1 nocycle; 
insert into notice values(nosq.nextval,'테스트01','테스트내용01',sysdate,0);
commit;
select * from notice;

-- 절차적 언어(Procedural Language)의 SQL => PL/SQL
-- SQL 구문을 하나의 명령 블록으로 구성하여 필요시 호출하여 사용하며, IF, LOOP, FOR 등을 활용하여 더 효과적으로 SQL을 활용할 수 있다.
-- 프로시저(Procedure), 함수(Function), 트리거(Trigger)
create table emp (eno int, ename varchar(20), pno int, pos varchar(10), pcode varchar(7), addr varchar(100), salery int, bonus int,
regdate date, gender int);

alter table emp add superior int; 
alter table emp add tel varchar(13); 

alter table emp modify salery invisible;
alter table emp modify bonus invisible;
alter table emp modify regdate invisible;
alter table emp modify gender invisible;
alter table emp modify superior invisible;
alter table emp modify tel invisible;
select * from emp;

alter table emp modify salery visible;
alter table emp modify bonus visible;
alter table emp modify regdate visible;
alter table emp modify gender visible;
alter table emp modify superior visible;
alter table emp modify tel visible;

insert into emp values(2001,'수민',10,'부장','125-365','서울 용산구',3500000,1000000,'1980-12-01',1,null,'02-985-1254');
insert into emp values(2002,'시은',10,'대리','354-865','서울 강남구',4000000,NULL,'2000-01-25',1,2004,'02-865-1245');
insert into emp values(2003,'아이사',20,'사원','587-456','부산 해운대구',2500000,1000000,'2002-05-24',2,2002,'051-256-9874');
insert into emp values(2004,'세은',30,'과장','987-452','서울 강남구',5000000,NULL,'1997-03-22',2,2001,'02-333-6859');
insert into emp values(2005,'윤',10,'대리','123-322','서울 성동구',3000000,1000000,'1999-07-15',2,2004,'02-888-9564');
insert into emp values(2006,'재이',20,'사원','154-762','서울 송파구',2000000,NULL,'2003-05-22',2,2005,'02-3369-9874');
insert into emp values(2007,'최유진',30,'대리','367-985','서울 영등포구',3000000,1000000,'2006-01-25',2,2004,'02-451-2563');
insert into emp values(2008,'샤오팅',40,'사원','552-126','서울 중구',2400000,NULL,'2001-02-02',2,2007,'02-447-3256');
insert into emp values(2009,'마시로',10,'사원','315-276','서울 종로구',2500000,1000000,'2009-04-17',2,2002,'02-123-1278');
insert into emp values(2010,'김채현',20,'사원','485-172','서울 성북구',2450000,800000,'2009-12-15',2,2004,'02-478-1235');

-- PL 실행 결과 출력문 활성화
SET SERVEROUTPUT ON;
DECLARE 
    TYPE firsttype IS RECORD(a emp.ename%TYPE, b emp.pos%TYPE, c emp.salery%TYPE);
    cus1 firsttype;
BEGIN 
    SELECT ename, pos, salery INTO cus1 FROM emp where eno=2004;
    DBMS_OUTPUT.PUT_LINE('**********************************************');
    DBMS_OUTPUT.PUT_LINE(cus1.a || cus1.b || cus1.c);
    DBMS_OUTPUT.PUT_LINE('현재 계정 : '|| USER);
    DBMS_OUTPUT.PUT_LINE('현재 질의 시간 : ' || TO_CHAR(SYSDATE, 'YYYY-MM-DD HH:MM:SS'));
END;

-- 익명의 프로시저를 활용하여 사원(emp) 테이블로 부터 사원번호 2002인 직원의
-- 사원번호, 사원명, 직급, 주소, 입사일을 출력하시오.
-- (단, 입사일은 연도 네 자리-월 두 자리-일 두 자리 형태로 출력될 수 있도록 할 것.)
DECLARE
    sawon emp%ROWTYPE;
BEGIN
    SELECT * INTO sawon FROM emp where eno=2002;
    DBMS_OUTPUT.PUT_LINE('***********************************************');
    DBMS_OUTPUT.PUT_LINE('사원번호 : ' || sawon.eno);
    DBMS_OUTPUT.PUT_LINE('사원명 : ' || sawon.ename);
    DBMS_OUTPUT.PUT_LINE('직급 : ' || sawon.pos);
    DBMS_OUTPUT.PUT_LINE('주소 : ' || sawon.addr);
    DBMS_OUTPUT.PUT_LINE('입사일 : ' || TO_CHAR(sawon.regdate, 'YYYY-MM-DD'));
END;

-- 익명의 반복 프로시저 실습
-- 사원(emp) 테이블로 부터 사원명(ename), 직급(pos) 컬럼의 모든 사원을 출력하시오.
DECLARE 
   TYPE ename_type IS TABLE OF emp.ename%TYPE INDEX BY BINARY_INTEGER;
   TYPE pos_type IS TABLE OF emp.pos%TYPE INDEX BY BINARY_INTEGER;
   ename_col ename_type;
   pos_col pos_type;
   i BINARY_INTEGER := 0;
BEGIN
    FOR k IN(SELECT ename, pos FROM emp) LOOP
        i := i + 1;
        ename_col(i) := k.ename;
        pos_col(i) := k.pos;
    END LOOP;        
    DBMS_OUTPUT.PUT_LINE('******************');   
    DBMS_OUTPUT.PUT_LINE('사원명 직급');        
    DBMS_OUTPUT.PUT_LINE('******************');    
    FOR j IN 1..i LOOP
        DBMS_OUTPUT.PUT_LINE(RPAD(ename_col(j),12) || RPAD(pos_col(j),10));
    END LOOP;    
 END;  
 
-- 사원번호(eno)와 급여(salary)를 매개변수로 입력받아 해당 사원의 급여를 갱신하는 프로시저(update_pay)를 작성하여라
CREATE OR REPLACE PROCEDURE update_pay(u_eno IN NUMBER, u_salery IN NUMBER)
IS 
BEGIN
    UPDATE emp SET salery=u_salery WHERE eno=u_eno;
    COMMIT;
END update_pay;  
/

EXEC update_pay(2001, 5000000);


-- 사원번호(eno)와 직급(pos), 주소(addr)를 입력 받아 갱신하는 프로시저(update_emp)를 작성하고,
-- 임의의 데이터로 3건 이상 실행하도록 하시오.
CREATE OR REPLACE PROCEDURE update_pos(u_eno IN emp.eno%TYPE, u_pos IN emp.pos%TYPE,u_addr IN emp.addr%TYPE)
IS
BEGIN
    UPDATE emp SET pos=u_pos,addr=u_addr WHERE eno=u_eno;
    COMMIT;
END update_pos;

EXEC update_pos(2001,'부회장','서울 강남구');



-- 함수 문법
--    CREATE OR REPLACE FUNCTION 함수 이름 (매개변수1, 매개변수2....)
--    RETURN 데이터 타입;
--    IS[AS]
--        변수, 상수 선언..
--    BEGIN
--        실행부
--        RETURN 반환값
--        [EXCEPTION 예외처리부]
--    END [함수 이름];


-- 함수(Functions)
-- 사원번호(eno)를 매개변수로 입력받아 특정 직원의 세금(3.3%)을 계산하여 출력하는 함수(tax_fnc)를 작성하고 실행하시오.
-- 임의로 3건의 실행문을 실행하고, 그 결과를 출력하시오.
CREATE OR REPLACE FUNCTION tax(v_eno IN emp.eno%TYPE)
RETURN NUMBER
IS
    v_tax NUMBER;
BEGIN
    SELECT (salery+NVL(bonus,0))*0.033 INTO v_tax FROM emp WHERE eno=v_eno;
    RETURN v_tax;
END tax;

--실행 방법1
DECLARE
    v_tax NUMBER;
BEGIN 
    v_tax := tax(2001);
    DBMS_OUTPUT.PUT_LINE('세금 : '|| v_tax);
END;

--실행 방법2
select tax(2001) as "세금" from dual;
select tax(2002) as "세금" from dual;
select tax(2003) as "세금" from dual;

--실행 방법3
select distinct tax(2001) as "세금" from emp;

-- 직급(pos)을 매개변수로 입력 받아 해당 직급별 급여 총액, 평균 급여, 인원수를 출력하는 
-- 프로시저(tot_emp)를 작성하시오.
DROP PROCEDURE tot_emp;
CREATE OR REPLACE PROCEDURE tot_emp(v_pos IN VARCHAR2)
IS
    a NUMBER :=0;
    b NUMBER(12,2):=0;
    c NUMBER:=0;
BEGIN
    SELECT SUM(salery+NVL(bonus,0)), AVG(salery+NVL(bonus,0)), COUNT(*) INTO a,b,c
    FROM emp WHERE pos=v_pos;
    DBMS_OUTPUT.PUT_LINE(v_pos || '의 급여 집계');
    DBMS_OUTPUT.PUT_LINE('급여 총액 : ' || a || '원');
    DBMS_OUTPUT.PUT_LINE('평균 급여 : ' || b || '원');
    DBMS_OUTPUT.PUT_LINE('인원수 : ' || c || '명');
END tot_emp;
/

EXEC tot_emp('사원');
EXEC tot_emp('대리');
EXEC tot_emp('과장');
EXEC tot_emp('부장');


ACCEPT k_pos PROMPT '집계할 직책을 입력하세요 :';


-- 사원을 추가하는 프로시저 작성
CREATE OR REPLACE PROCEDURE ins_emp(v_eno IN emp.eno%TYPE,
                                    v_ename IN emp.ename%TYPE,
                                    v_pno IN emp.pno%TYPE,
                                    v_pos IN emp.pos%TYPE,
                                    v_pcode IN emp.pcode%TYPE,
                                    v_addr IN emp.addr%TYPE,
                                    v_tel IN emp.tel%TYPE,
                                    v_salery IN emp.salery%TYPE,
                                    v_bonus IN emp.bonus%TYPE,
                                    v_regdate IN emp.regdate%TYPE,
                                    v_gender IN emp.gender%TYPE,
                                    v_superior IN emp.superior%TYPE)
IS
BEGIN
    INSERT INTO emp values(v_eno,v_ename,v_pno,v_pos,v_pcode,v_addr,v_tel,v_salery,v_bonus,v_regdate,v_gender,v_superior);
    commit;
END ins_emp;    

EXEC ins_emp(2011,'유정환',30,'과장','40-10','서울 화곡동','02-4810-2487',4000000,500000,'03-07-06',1,2006);


-- 사원번호(eno)를 매개변수로 받아 해당 직원에 대한 퇴사 처리를 하는 프로시저(del_emp) 작성
CREATE OR REPLACE PROCEDURE del_emp(v_eno IN emp.eno%TYPE)
IS 
BEGIN
    DELETE FROM emp WHERE v_eno=eno;
    COMMIT;
END del_emp;    

EXEC del_emp(2001);

SELECT * FROM emp;


-- 원의 반지름을 입력받아 원주율(3.1415)을 반영하여 넓이를 구하는 함수(circle_fnc) 작성
CREATE OR REPLACE FUNCTION circle_fnc(radius IN NUMBER)
RETURN NUMBER
IS
    area NUMBER;
BEGIN
    area := radius*radius*3.1415;
    RETURN area;
END;    
/
SELECT circle_fnc(25) AS "면적" FROM DUAL;

-- 너비(w),높이(h),깊이(d)를 매개변수로 입력 받아 직육면체 부피 구하는 함수(box_vol) 작성
CREATE OR REPLACE FUNCTION box_vol(w IN NUMBER,
                                   h IN NUMBER,
                                   d IN NUMBER)
RETURN NUMBER
IS
    area NUMBER;
BEGIN
    area := w*h*d;
    RETURN area;
END;
/
SELECT box_vol(3,4,5) AS "부피" FROM DUAL;


-- 사원(emp) 테이블로 부터 근무기간(y년x개월)을 계산하는 함수(workdays_fnc)를 작성하시오.
-- (단, 입사일을 입력받아 MONTH_BETWEEN함수를 사용하여 년수와 개월수를 구할 수 있도록 할 것.)
-- (실행 시에는 사원명(ename)과 근무기간(y년x개월이 출력되도록 할 것.)
-- MONTHS_BETWEEN(나중날짜, 먼저날짜) : 흐른 개월 수 계산 (ex. 98개월)
-- FLOOR(숫자) : 소숫점 이하 버림
-- 년수 구하기 : FLOOR(MONTHS_BETWEEN(SYSDATE, 입사일)/12) (ex. 98/12=8.16667.. => 8년)
-- 잔여 개월수 구하기 : FLOOR(MOD(MONTHS_BETWEEN(SYSDATE, 입사일), 12)) (ex. 98 mod 12 => 2개월)
-- MOD(M,N) M을 N으로 나누었을때 나머지를 반환
CREATE OR REPLACE FUNCTION workdays_fnc(vdate IN DATE)
RETURN VARCHAR2
IS
    workdate VARCHAR2(40);
BEGIN
    workdate := FLOOR(MONTHS_BETWEEN(SYSDATE, vdate)/12) || '년 ' || 
    FLOOR(MOD(MONTHS_BETWEEN(SYSDATE, vdate), 12)) || '개월';
RETURN workdate;
END;
/

SELECT ename AS "사원명", TO_CHAR(REGDATE, 'YYYY-MM-DD') AS "입사일", 
workdays_fnc(REGDATE) AS "근무기간" FROM emp;

select * from emp;


-- 사원(emp) 테이블에서 성별코드(gender)를 이용하여 성별을 구하는 함수(gender_fnc)를 작성하고, 실행하시오.
-- (단,  성별코드(gender)가 1 이거나 3 이면, '남' 이고, 아니면, '여' 이다.)
-- (실행결과는 사원명, 성별 컬럼이 출력될 수 있도록 하시오.)

CREATE OR REPLACE FUNCTION gender_fuc(fgender IN NUMBER)
RETURN VARCHAR
IS
    sgender VARCHAR(4);
BEGIN
    IF fgender IN(1,3) THEN
        sgender:='남';
    ELSE
        sgender:='여';
    END IF;
    RETURN sgender;
END;    
/   

SELECT ename AS "사원명", gender_fuc(gender) AS "성별" from emp;
-- IS gcode VARCHAR(4)
-- gcode := SUBSTR(jumin, 8, 1) 성별코드가 주민번호에서 8번째 글자 1글자인 경우
-- IF gcode IN ('1', '3') THEN


-- 사원(emp) 테이블에서 급여(salary)를 이용하여 급여등급을 구하는 함수(grade_emp)를 작성하고, 실행하시오.
-- (단, 급여가 4,500,000 이상이면, 'A', 3,500,000 이상이면, 'B', 3,000,000 이상이면, 'C', 나머지는 'D'로 할 것.)
-- (실행결과는 사원코드, 사원명, 급여등급, 급여 순으로 출력될 수 있도록 하시오.)(IF THEN~ELSIF THEN~ELSE)
CREATE OR REPLACE FUNCTION grade_emp(fsalery IN NUMBER)
RETURN VARCHAR
IS
    grade VARCHAR(3);
BEGIN 
    IF fsalery >= 4500000 THEN
        grade := 'A';
    ELSIF fsalery >= 3500000 THEN
        grade := 'B';
    ELSIF fsalery >= 3000000 THEN
        grade := 'C';
    ELSE 
        grade := 'D';
    END IF;
    RETURN grade;
END;
/
SELECT eno AS "사원코드", ename AS "사원명", 
grade_emp(salery) AS "급여등급", salery AS "급여" FROM emp;




CREATE TABLE loop_test(no number, name varchar(20)default '유정환');

--LOOP 문 활용 번호를 증가식 자동 채우면서 20개 레코드 생성
CREATE OR REPLACE PROCEDURE loop1
IS
    vcnt NUMBER(2) := 1; 
BEGIN
    LOOP
        INSERT INTO loop_test(no) values(vcnt);
        vcnt := vcnt +1;
        EXIT WHEN vcnt > 20;
    END LOOP;
END;
/
EXEC loop1;
select * from loop_test;

-- FOR IN LOOP 문 활용 레코드 추가
CREATE OR REPLACE PROCEDURE loop2
IS
BEGIN 
    FOR i IN 21..30 LOOP
        INSERT INTO loop_test(no) values(i);
    END LOOP;
END;    
/
EXEC loop2;

-- WHILE LOOP 문 활용 레코트 추가
CREATE OR REPLACE PROCEDURE loop3
IS 
    vcnt number(2):= 31; 
BEGIN
    WHILE vcnt <= 40 LOOP
    INSERT INTO loop_test(no) values(vcnt);
    vcnt := vcnt +1;
    commit;
    END LOOP;
END;
/
EXEC loop3;
    
-- 예외처리
-- 변수명 테이블명%ROWTYPE; 모든 컬럼 담아서 프로시저 셀렉문으로 하면 오류?
CREATE OR REPLACE PROCEDURE exc_test
IS
    sw emp%ROWTYPE;
BEGIN 
    SELECT * INTO sw FROM emp WHERE eno=2003;
    DBMS_OUTPUT.PUT_LINE('데이터 검색 성공');
    DBMS_OUTPUT.PUT_LINE('사원번호 : ' || sw.eno);
    DBMS_OUTPUT.PUT_LINE('사원명 : ' || sw.ename);
    COMMIT;
EXCEPTION
    WHEN TOO_MANY_ROWS THEN
        ROLLBACK;
        DBMS_OUTPUT.PUT_LINE('데이터가 너무 많습니다.');
    WHEN NO_DATA_FOUND THEN
        ROLLBACK;
        DBMS_OUTPUT.PUT_LINE('해당 데이터가 없습니다.');
    WHEN OTHERS THEN
        ROLLBACK;
        DBMS_OUTPUT.PUT_LINE('기타 오류로 인해 정상처리 되지 못했습니다.');
END;
/

EXEC exc_test;
        