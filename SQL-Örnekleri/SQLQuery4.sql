Create table tblArsiv
(
	ID int identity(1,1) primary key,
	ArsivData xml
)

insert into tblArsiv values (
'<BilgiSistemi>
	<Personel>
		<Numara>100</Numara>
		<Ad>Dürdane</Ad>
		<Soyad>Þeker</Soyad>
		<Maas>2500</Maas>
	</Personel>
 </BilgiSistemi>
'
)
insert into tblArsiv values (
'<BilgiSistemi>
	<Personel>
		<Numara>200</Numara>
		<Ad>Keriman</Ad>
		<Soyad>Güzel</Soyad>
		<Maas>2800</Maas>
	</Personel>
</BilgiSistemi>
')
insert into tblArsiv values (
'<BilgiSistemi>
	<Personel>
		<Numara>300</Numara>
		<Ad>Hudaverdi</Ad>
		<Soyad>Þeker</Soyad>
		<Maas>3500</Maas>
	</Personel>
 </BilgiSistemi>
')


select * from tblArsiv

Select ArsivData.query('BilgiSistemi/Personel/Ad')as PersonelAd from tblArsiv

Select 
ArsivData.query('for $deger in BilgiSistemi/Personel/Soyad 
where contains($deger,"Þeker") return $deger')
as KosulYapisi from tblArsiv


Select ArsivData.exist('BilgiSistemi/Personel[Maas>3000]') from tblArsiv

Select ID, ArsivData.value('(BilgiSistemi/Personel/Ad)[1]','varchar(20)') AS 'Bilgi' 
FROM tblArsiv Where ArsivData.value('(BilgiSistemi/Personel/Soyad)[1]','varchar(20)') LIKE '%k%'

Select ID,a.value('Numara[1]','integer') as Numara,
a.value('Ad[1]','varchar(50)') as Ad,
a.value('Soyad[1]','varchar(50)') as Soyad,
a.value('Maas[1]','integer') as Maas
from tblArsiv
OUTER APPLY ArsivData.nodes('BilgiSistemi/Personel') as result(a)



----------------------------------------------------------------------

Declare @xmldeger XML
Select @xmldeger=bulkcolumn from OPENROWSET(BULK 'C:\XML\xmldata.xml',SINGLE_BLOB) as a
Select 
a.value('Ad[1]','varchar(50)') as Ad,
a.value('Soyad[1]','varchar(50)') as Soyad
FROM @xmldeger.nodes('VeriSistemi/Bilgi') deger(a)