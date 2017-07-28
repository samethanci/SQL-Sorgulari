Use KitapData
select * from tblPersIndex

select * from tblPersIndex Where Ad like '%c%'


select * from sys.stats
where object_id=OBJECT_id('dbo.tblPersIndex')


select OBJECT_NAME(sc.object_id) as TableName
	,s.stats_id as StatsID
	,s.name as StatsName
	,c.column_id as ColumnID
	,c.name as ColumnName
from sys.stats_columns sc
left join sys.stats s on s.object_id=sc.object_id and s.stats_id=sc.stats_id
left join sys.columns c on c.object_id=sc.object_id and c.column_id=sc.column_id
where sc.object_id=OBJECT_id('Person.Address') and sc.stats_id=5



select OBJECT_NAME(sc.object_id) as TableName
	,s.stats_id as StatsID
	,s.name as StatsName
	,c.column_id as ColumnID
	,c.name as ColumnName
from sys.stats_columns sc
left join sys.stats s on s.object_id=sc.object_id and s.stats_id=sc.stats_id
left join sys.columns c on c.object_id=sc.object_id and c.column_id=sc.column_id
where sc.object_id=OBJECT_id('Person.Address') and sc.stats_id=5


Select Object_Name(st.object_id) as StatTablo
	,a.stats_id as StatisticID
	,a.name as StatisticAd
	,b.column_id as KolonID
	,b.name as KolonAd
from sys.stats_columns st
	left join sys.stats a on a.object_id=st.object_id and a.stats_id=st.stats_id
	left join sys.columns b on b.object_id=st.object_id and b.column_id=st.column_id
Where st.object_id=OBJECT_ID('dbo.tblPersIndex') and st.stats_id=1



exec sp_helpstats 'dbo.tblPersIndex','ALL'


select Ad,Soyad from tblPersIndex
select Ad,Soyad from tblPersIndex where Ad Like '%a%'
select Top 4 Ad,Soyad from tblPersIndex Order By ID DESC


DBCC SHOW_STATISTICS ('dbo.tblPersIndex',Birinciistatistik)

