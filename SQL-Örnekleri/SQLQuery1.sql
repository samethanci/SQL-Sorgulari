create Database TemelVeri1
go
use TemelVeri1

Create table tblCinsiyet
(
	ID int identity(1,1) primary key,
	Cinsiyet varchar(10),
)

Create table tblKisi
(
	ID int identity(1,1) primary key,
	Ad varchar(50),
	Soyad varchar(50),
	CinsiyetID int,
	Maas int
)
Create table tblPersonel
(
	ID int identity(1,1) primary key,
	Ad varchar(50),
	Yas int,
	Cinsiyet varchar(10),
	Sehir varchar(30),
	Ulke varchar(30),
	Maas int
)

insert into tblCinsiyet values('Kadın')
insert into tblCinsiyet values ('Erkek')

insert into tblKisi values('Dürdane','Çiçek',1,2000)
insert into tblKisi values('Ahmet','Kaya',2,3000)
insert into tblKisi values('Ali','Çınar',2,2000)

insert into tblPersonel values('Samet',21,'Erkek','Giresun','Türkiye',5000)