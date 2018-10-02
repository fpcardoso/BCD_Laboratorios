--PARTE 1
--Exercício 1
select e.surname, e.forenames, day(e.dob) as dia from employee e natural join jobhistory j where month(e.dob) = 03 and j.enddate is NULL;

 
