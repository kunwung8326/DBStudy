DROP TABLE customer;
DROP TABLE bank;

CREATE TABLE bank
(
    bank_code VARCHAR2(20),
    bank_name VARCHAR2(30)
);
CREATE TABLE customer
(
    no NUMBER,
    name VARCHAR2(30) NOT NULL,
    phone VARCHAR2(30),
    age NUMBER,
    bank_code VARCHAR2(20)
);

--테이블 변경 
-- 칼럼의 추가 
--ALTER TABLE 테이블 ADD 칼럼명 타입;
--1. bank 테이블에 bank_phone 칼럼을 추가한다. 
 alter table bank add bank_phone varchar2(15);
 
 -- 칼럼의 수정 
 --alter table 테이블 modify 칼럼명 타입;
 -- 1. bank 테이블의 bank _name varchar2(15)
 alter table bank modify bank_name varchar2(15);
 --2. customer 테이블의 age 칼럼을 number(3)로 수정한다.
 alter table customer  modify age number(3);
 --3.  customer 테이블의 phone 칼럼을 not  null 로 수정한다. 
 alter table customer modify phone varchar(30) not null;
 --4. customer 테이블의  phone 칼럼을 null 로 수정 
 alter table customer modify  phone varchar (15) null;
 
 --테이블 구조 확인 
 desc bank;
desc customer;
-- 테이블 변경

--
alter table bank drop column bank_phone;

alter table customer rename column phone to contact;

-- ALTER TABLE 테이블 (ADD, REMOVE, MODIFY 등)

ALTER TABLE bank ADD CONSTRAINT bank_pk PRIMARY KEY(bank_code);
ALTER TABLE customer ADD CONSTRAINT customer_pk PRIMARY KEY(no);
ALTER TABLE customer ADD CONSTRAINT customer_phone_uq UNIQUE(phone);
ALTER TABLE customer ADD CONSTRAINT customer_age_ck CHECK(age BETWEEN 0 AND 100);
ALTER TABLE customer ADD CONSTRAINT customer_bank_fk FOREIGN KEY(bank_code) REFERENCES bank(bank_code);









