use dbEcommerce;


--procedure show category

create proc spshow_category
as
select top 200 * from Category
order by idCategory desc
go

--procedure search name category
create proc spsearch_nameCategory
@textsearch varchar(50)
as select * from Category where name like @textsearch + '%'
go

--procedure insert category
create proc spinsert_category
@idCategory int output,
@name varchar(50),
@description varchar(256)
as
insert into Category(name, description) 
values(@name, @description)
go

--procedure edit category
create proc spedit_category
@idCategory int,
@name varchar(50),
@description varchar(256)
as
update Category set name=@name,
description=@description where idCategory=@idCategory
go

--procedure delete category
create proc spdelete_category
@idCategory int
as
delete from Category where
idCategory=@idCategory
go





