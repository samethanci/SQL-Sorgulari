use KitapData

Create table tblProgram
(
	ID int identity(1,1) primary key,
	Program varchar(50),
	Aciklama ntext
)

insert into tblProgram values ('FileZilla','FileZilla web ortamýna dosya taþýmak veya yüklemek için kullanabileceðiniz, sunucular ile bilgisayar arasýnda dosya transferi yapýlmasýný saðlayan ücretsiz bir FTP programýdýr.

Açýk kaynak kodlu olarak geliþtirilen bir Dosya Transfer Protokolü (FTP) istemcisi olan FileZilla Türkçe dil seçeneði, FTP, FTPS ve SFTP desteði ile güvenli dosya aktarým iþlemleri yapabilmenize olanak saðlar.')


insert into tblProgram values ('FTP Free','FTP programlarý üzerinde yapabileceðiniz tüm standart iþlemleri yapmanýzý saðlayan Free FTP programýný ücretsiz olarak bilgisayarlarýnýza indirerek FTP iþlemlerinizi rahatlatabilirsiniz. ')

insert into tblProgram values ('Microsoft Outlook','Outlook, Microsoftun popüler verimlilik ve ofis yazýlým paketi olan Microsoft Office altýnda yer alan baþarýlý yazýlýmlardan bir tanesidir. Outlook yardýmýyla e-posta hesaplarýnýzý, tüm kiþi listelerinizi, yapmanýz gereken iþleri ve randevularýnýzý tek bir yerden kolayca kontrol edebilirsiniz.')

insert into tblProgram values ('PC Image Editor','PC Image Editor, resimlerinizi düzenlemeniz için gerekli araçlara sahip profesyonel bir resim editörüdür.

Programýn arayüzü sade ve basittir. Sürükle býrak yöntemi desteklenmiyor olsa da kolay kullanýmlý dosya tarayýcýsý ile kolaylýkla resimlerinizi program içerisine aktarabilirsiniz.')




select * from tblProgram


select ID,Program,Aciklama from tblProgram
Where freetext (Aciklama,'dosya')

select ID,Program,Aciklama  from tblProgram
Where Contains (Aciklama,'dosya')

select * from tblPersIndex

select ID,Ad,Soyad,Telefon from tblPersIndex For Xml Auto

select ID,Ad,Soyad,Telefon from tblPersIndex For Xml Auto,Root('AnaBolum')

select ID,Ad,Soyad,Telefon from tblPersIndex For Xml Auto,Elements,Root('AnaBolum')

select ID,Ad,Soyad,Telefon from tblPersIndex For Xml RAW('YeniDonem'),Root('AnaBolum')


select ID,Ad,Soyad,Telefon from tblPersIndex For Xml Auto

