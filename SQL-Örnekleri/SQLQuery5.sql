Create Database Temel Veri
go
--Varsay�lan veritaban� olarak ata
use TemelVeri
Create table tblCinsiyet  --Cinsiyet tablosu olu�tu.
(
	ID int identity(1,1) primary key,
	Cinsiyet nvarchar(10),
)
Create table tblKisi  --Ki�i tablosu olu�tu.
(
	ID int identity(1,1) primary key,
	Ad nvarchar(20),
	Soyad nvarchar(20),
	CinsiyetID int,
	Maas int,
)
insert into tblCinsiyet values ('Kad�n'),
insert into tblCinsiyet values ('Erkek'),
--Kay�tlar� ekle.
insert into tblKisi values ('D�rdane','�i�ek',1,2000)
insert into tblKisi values ('Samet','HANCI',2,4000)

select * from tblKisi Where Ad='Samet'
