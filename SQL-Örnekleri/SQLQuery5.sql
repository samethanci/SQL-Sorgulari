Create Database Temel Veri
go
--Varsayýlan veritabaný olarak ata
use TemelVeri
Create table tblCinsiyet  --Cinsiyet tablosu oluþtu.
(
	ID int identity(1,1) primary key,
	Cinsiyet nvarchar(10),
)
Create table tblKisi  --Kiþi tablosu oluþtu.
(
	ID int identity(1,1) primary key,
	Ad nvarchar(20),
	Soyad nvarchar(20),
	CinsiyetID int,
	Maas int,
)
insert into tblCinsiyet values ('Kadýn'),
insert into tblCinsiyet values ('Erkek'),
--Kayýtlarý ekle.
insert into tblKisi values ('Dürdane','Çiçek',1,2000)
insert into tblKisi values ('Samet','HANCI',2,4000)

select * from tblKisi Where Ad='Samet'
