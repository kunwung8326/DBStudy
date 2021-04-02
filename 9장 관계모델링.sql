Create Table  School
(
SCHOOL_CODE NUMBER(3) PRIMARY KEY,
SCHOOL_NAME VARCHAR(10)
);

CREATE TABLE STUDENT 
(
SCHOOL_CODE NUMBER(3) REFERENCES SCHOOL(SCHOOL_CODE),
STUDENT_NAME VARCHAR2(15)
);
DROP TABLE  STUDENT ;
DROP TABLE  SCHOOL;

    CREATE TABLE student 
    (
    student_no VARCHAR2(5) PRIMARY KEY, 
    student_name VARCHAR(15),
    student_age NUMBER(3)
    );
    CREATE TABLE subject 
    (  subject_code VARCHAR2(1)  PRIMARY KEY ,
        subject_name VARCHAR(10),
        professor  VARCHAR(15)
        );
    CREATE TABLE enroll
    (   enroll_no NUMBER PRIMARY KEY,
    student_no VARCHAR2(5) REFERENCES student(student_no),
    subject_code VARCHAR2(1)  REFERENCES subject(subject_code)
    );
    
    
    
    
    
--        회원 테이블
create table member 
(
member_no  number primary key , --회원번호  
member_id varchar2(30), -- 아이디                                     
member_pw varchar2(30),--비밀번호 
member_name varchar2(15),--이름 
member_email varchar2(50),--이메일
member_phone varchar2(15),
 member_date date

);
--게시판 테이블 
create table board 
(
board_no  number primary key, 
board_title varchar2(1000),
board_contetnt varchar2(4000),
board_hit number,
member_id number,
board_date date,
foreign key(member_id) references member(member_no)
);



-- 제조사 테이블 
create table manufacturer 
( 
manufacturer_no varchar2(12) primary key,
manufacturer_name varchar2(100),
manufacturer_phone varchar2(15)

);

--창고테이블 
create table warehouse 
(
warehouse_no number, -- 창고번호 
warehouse_name varchar2 (5), -- 창고 이름 
warehouse_location varchar2(100),-- 창고 위치 
warehouse_used varchar2(1),-- 사용여부
primary key  (warehouse_no)
);

--택배업체테이블 
create table delivery_service
(
delivery_service_no varchar2(12) primary key ,
delivery_service_name varchar2(20),
delivery_service_phone varchar2(20),
delivery_service_address varchar2(100) 
);

--배송테이블 
create table delivery 
( 
delivery_no number primary key  ,
delivery_service varchar2(12),
delivery_price number,
delivery_date date, 
foreign key(delivery_service) references delivery_service(delivery_service_no)
);





--주문테이블
create table orders
( 
orders_no number primary key ,
member_no number,
delivery_no number,
orders_pay varchar2(10),
orders_date date ,
foreign key(member_no) references member(member_no),
foreign key(delivery_no) references delivery(delivery_no)
);


--제품테이블 
create table product 
( 
product_code varchar2(10) primary key,
product_name varchar2(50),
product_price number,
product_category varchar2(15),
orders_no number,
manufacturer_no varchar2(12),
warehouse_no number,
foreign key(orders_no) references orders(orders_no),
foreign key(manufacturer_no) references manufacturer(manufacturer_no),
foreign key (warehouse_no) references warehouse(warehouse_no)
);


    
    

