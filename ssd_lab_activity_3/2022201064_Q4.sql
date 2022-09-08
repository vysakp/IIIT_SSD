select Dnumber,Dname,Number_of_locations FROM (Select Dnumber as DEPT_ID, Dname  FROM DEPARTMENT, (SELECT Essn, count(Sex) from DEPENDENT where Sex='F' group by Essn having count(Sex)>=2) AS a WHERE Essn=Mgr_ssn) as dept, (Select Dnumber, count(Dlocation) as Number_of_locations  From DEPT_LOCATIONS group by Dnumber) as loc where Dnumber=DEPT_ID;

