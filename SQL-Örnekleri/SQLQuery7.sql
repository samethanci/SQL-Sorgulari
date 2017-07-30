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
('Dürdane',28,'Kadýn','Ankara','Türkiye',5000)
insert into tblPersonel values
('Hüsam',18,'Erkek','Ýstanbul','Türkiye',4500)
insert into tblPersonel values
('Selçuk',20,'Erkek','Giresun','Türkiye',3000)
insert into tblPersonel values
('Hatice',28,'Kadýn','Bursa','Türkiye',3500)