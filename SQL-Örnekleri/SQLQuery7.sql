Use TemelVeri
Create table tblPersonel
(
	ID int identity(1,1) primary key,
	Ad varchar(50),
	Yas int,
	Cinsiyet varchar(10),
	Sehir varchar(30)
	Ulke varchar(30),
	Maas int
)
insert into tblPersonel values
('D�rdane',28,'Kad�n','Ankara','T�rkiye',5000)
insert into tblPersonel values
('H�sam',18,'Erkek','�stanbul','T�rkiye',4500)
insert into tblPersonel values
('Sel�uk',20,'Erkek','Giresun','T�rkiye',3000)
insert into tblPersonel values
('Hatice',28,'Kad�n','Bursa','T�rkiye',3500)