select Essn, COUNT(Pno) as Number_of_projects from WORKS_ON where Essn IN (select Mgr_ssn from DEPARTMENT, (select Pnumber,Dnum from PROJECT where Pname='ProductY') as a where Dnumber=Dnum);

