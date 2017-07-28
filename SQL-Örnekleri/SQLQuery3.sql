use KitapData

Create table tblProgram
(
	ID int identity(1,1) primary key,
	Program varchar(50),
	Aciklama ntext
)

insert into tblProgram values ('FileZilla','FileZilla web ortam�na dosya ta��mak veya y�klemek i�in kullanabilece�iniz, sunucular ile bilgisayar aras�nda dosya transferi yap�lmas�n� sa�layan �cretsiz bir FTP program�d�r.

A��k kaynak kodlu olarak geli�tirilen bir Dosya Transfer Protokol� (FTP) istemcisi olan FileZilla T�rk�e dil se�ene�i, FTP, FTPS ve SFTP deste�i ile g�venli dosya aktar�m i�lemleri yapabilmenize olanak sa�lar.')


insert into tblProgram values ('FTP Free','FTP programlar� �zerinde yapabilece�iniz t�m standart i�lemleri yapman�z� sa�layan Free FTP program�n� �cretsiz olarak bilgisayarlar�n�za indirerek FTP i�lemlerinizi rahatlatabilirsiniz. ')

insert into tblProgram values ('Microsoft Outlook','Outlook, Microsoftun pop�ler verimlilik ve ofis yaz�l�m paketi olan Microsoft Office alt�nda yer alan ba�ar�l� yaz�l�mlardan bir tanesidir. Outlook yard�m�yla e-posta hesaplar�n�z�, t�m ki�i listelerinizi, yapman�z gereken i�leri ve randevular�n�z� tek bir yerden kolayca kontrol edebilirsiniz.')

insert into tblProgram values ('PC Image Editor','PC Image Editor, resimlerinizi d�zenlemeniz i�in gerekli ara�lara sahip profesyonel bir resim edit�r�d�r.

Program�n aray�z� sade ve basittir. S�r�kle b�rak y�ntemi desteklenmiyor olsa da kolay kullan�ml� dosya taray�c�s� ile kolayl�kla resimlerinizi program i�erisine aktarabilirsiniz.')




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

