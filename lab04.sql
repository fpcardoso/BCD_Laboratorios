--PARTE 1
--Exercício 1
select e.surname, e.forenames, day(e.dob) as dia from employee e natural join jobhistory j where month(e.dob) = 03 and j.enddate is NULL;
--Exercicio 2
select surname from employee natural join jobhistory where position in ("Accountant") and year(startdate)=1980;
--Exercicio 3
select empno, surname from employee where empno in(select empno from jobhistory where enddate is null);
--Exercicio 4
select surname,position from employee natural join jobhistory where enddate is null;
--Exercicio 5
select dname ,sum(salary) from employee e natural join jobhistory natural join department where enddate is null group by dname;
--Exercicio 6
select sum(salary) from jobhistory where enddate is null;
--Exercicio 7
select empno, surname, forenames from employee where empno not in (select empno from empcourse);
--Exercicio 8
select surname, forenames from employee where empno in (select empno from empcourse natural join course where year(cdate)=1988);
--Exercicio 9
select dname, count(*) as total from employee natural join department group by dname;
--Exercicio 10
select dname, cname, count(empno) from employee natural join empcourse natural join course natural join department group by cname, dname order by dname;
--Exercicio 11
select dname, max(salary) from employee natural join jobhistory natural join department group by dname;
--Ecercico 12
select min(maxsalary) from (select dname, max(salary) as maxsalary from employee natural join jobhistory natural join department group by dname) as t;
--Exercico 13
 delete from employee where depno = (select depno from department where dname = 'accounts');


