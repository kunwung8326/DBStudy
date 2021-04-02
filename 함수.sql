create table score 
(
kor number(3),
eng number(3),
mat number(3)
);

insert into score ( kor,eng,mat) values (10,20,30);
insert into score ( kor,eng,mat) values (20,20,30);
insert into score ( kor,eng,mat) values (30,20,30);
insert into score ( kor,eng,mat) values (40,20,30);
insert into score ( kor,eng,mat) values (50,20,40);


select sum(kor) + sum(eng) + sum(mat) 전체점수합계 from score ;  

select max(mat) from score;

select avg(kor) from score;

alter table score add name varchar2(20);
update score set name =  '       jadu     ' where kor =10;

select count(name) from score;
select count(kor) from score;

select count(*) from score ; 

select initcap(name) from score;
select upper(name)  from score; 
select lower(name) from score;
select instr(upper(name),'J') from score;

select lpad(name,10,'*') from score;
select lpad(name,5,' ') from  score;

--모든 name을 다음과 같이 출력

select rpad (substr(name,1,2), length(name) , '*') from score;

select name || '  ' || kor || '   '  || eng  || '   '  || mat from score;  
select ltrim(name) from score;
select length(ltrim(name) ) from score;
select Rtrim(name) from score;


insert into score (kor,eng, mat , name ) values (80,80,80, ' james bond');

select name  
xxx as  first_name,

from score;
























 


