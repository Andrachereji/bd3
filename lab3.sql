Use CabinetVeterinar;

Select id_a from Animal
Intersect
Select id_a from Consultatie

Insert into Animal(id_a,nume,tip,boala,varsta)
Values(4,'Mona','caine','vaccin',8);

Select Animal.nume, Consultatie.dat
From Animal Inner JOIN Consultatie 
On Animal.id_a=Consultatie.id_a
Inner Join Medic On Consultatie.id_me=Medic.id_me
Where Medic.nume='Pop Silviu';

Insert into Consultatie(id_a,id_me,dat,boala)
Values (1,13,'2021-10-10','control');
Insert into Consultatie(id_a,id_me,dat,boala)
Values (3,12,'2021-11-10','luxatie');
Insert into EvidentaMedicamente(id_a,id_m)
Values(3,23);
Insert into EvidentaMedicamente(id_a,id_m)
Values(1,23);

Select  Animal.nume, Medic.nume 
From Medic Inner Join Consultatie On Medic.id_me=Consultatie.id_me 
Inner Join Animal On Consultatie.id_a=Animal.id_a 
Inner Join EvidentaMedicamente On animal.id_a=EvidentaMedicamente.id_a
Inner Join Medicament On EvidentaMedicamente.id_m=Medicament.id_m
Where Animal.tip='caine' AND Medicament.tip='pentru piele si blana';

Select Animal.nume, Consultatie.id_me
From Animal Full Join Consultatie ON
Animal.id_a=Consultatie.id_a;

Insert into Animal(id_a,nume,tip,boala)
Values(5,'Teea','iepure','conjunctivita');
Insert into Animal(id_a,nume,tip,boala)
Values(6,'Pufulet','iepure','enterocolita');
Insert into Animal(id_a,nume,tip,boala)
Values(7,'Fifi','iepure','vaccin');

Select Count(id_a), tip
From Animal 
Group by tip
Having Count(id_a)>=2;

Select Min(varsta), tip
From Animal
Group by tip;

Select Medic.nume, Max(Consultatie.dat) AS UltimaConsultatie
From Medic INNER JOIN Consultatie 
On Medic.id_me=Consultatie.id_me
Group by Medic.nume;



