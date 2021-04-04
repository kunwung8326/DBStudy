create table employee  (
emp_no number not null, name varchar2(20) ,depart number,position varchar2(20),gender char(2) ,hire_date date,salary number) ;
create table department (
dept_no  number not null ,  dept_name varchar2(10), location varchar2(15) );

alter  table employee  add constraint  employee_pk  primary key (emp_no);
alter table department add constraint dept_no_pk primary key (dept_no);
alter table employee add constraint employee_department_fk foreign key (depart) REFERENCES deparment(dept_no);

INSERT INTO DEPARTMENT VALUES (1,'영업부','대구');
INSERT INTO DEPARTMENT VALUES (2,'인사부','서울');
INSERT INTO DEPARTMENT VALUES (3,'인사부','부산');
INSERT INTO DEPARTMENT VALUES (4,'총무부','부산');

-- 날짜타입 작성 방법 
-- 1. '2021-04-02'
--2. '21-04-02'
--3. '21/04/02'    // 오라클 기본
insert into employee values( 1001, '박', 1,'과장','M','95/01/01',50000 );
insert into employee values( 1002,' 박', 2,'과장','M','95/01/01',50000 );
insert into employee values( 1003, '박', 3,'과장','M','95/01/01',50000 );
insert into employee values( 1004, '박', 4,'과장','M','95/01/01',50000 );

desc employee ;
desc department;

update department set location =   '인천' where dept_no = 1;
update  employee set salary= salary * 1.1 where position = ' 과장'  or position = '부장';
update employee  set salary = salary  * 1.1 where position in ('과장','부장');
update department set  location  = '광주', dept_name = ' 총괄팀'  where  dept_no = 3 ;

delete from employee ; -- rollback으로 취소가능 
truncate table employee ; 

delete from department where dept_no =4;


create table  student (
student_no  number not null,
student_name  varchar2(10) ,
student_address varcha





