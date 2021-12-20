#1 
select EMP_NUM, EMP_FNAME, EMP_INITIAL, EMP_LNAME
from EMPLOYEE
where EMP_LNAME like 'SMITH%';

#2
select *
from EMPLOYEE Join PROJECT on EMPLOYEE.EMP_NUM = PROJECT.EMP_NUM;

#3
select *
from PROJECT, EMPLOYEE, JOB
where EMPLOYEE.EMP_NUM = PROJECT.EMP_NUM
and JOB.JOB_CODE = EMPLOYEE.JOB_CODE
order by EMP_LNAME;

#4
select distinct PROJ_NUM
from ASSIGNMENT
order by PROJ_NUM;

#5
select ASSIGN_NUM, EMP_NUM, PROJ_NUM, ASSIGN_CHARGE
from ASSIGNMENT
where ASSIGN_CHARGE = ASSIGN_CHG_HR * ASSIGN_HOURS
order by ASSIGN_NUM;

#6
select EMP_NUM, EMP_LNAME, SUM(ASSIGN_HOURS) as SumOfASSIGN_HOURS, SUM(ASSIGN_CHARGE) as SumOfASSIGN_CHARGE
from ASSIGNMENT join EMPLOYEE using(EMP_NUM)
group by EMP_NUM
order by EMP_NUM;

#7
select PROJ_NUM, SUM(ASSIGN_HOURS) as SumOfASSIGN_HOURS, SUM(ASSIGN_CHARGE) as SumOfASSIGN_CHARGE
from ASSIGNMENT
group by PROJ_NUM
order by PROJ_NUM;


#8
select SUM(ASSIGN_HOURS) as SumOfTotalHours, SUM(ASSIGN_CHARGE) as SumOfTotalCharges
from ASSIGNMENT;

