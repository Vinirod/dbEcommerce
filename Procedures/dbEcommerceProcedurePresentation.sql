use dbEcommerce;

--procedure show detail input

create proc spshow_presentation
as
select top 200 * from Presentation
order by idPresentation desc
go

--procedure search first_name client
create proc spsearch_first_name_presentation
@textsearch varchar(50)
as select * from Presentation where name like @textsearch + '%'
go

--procedure insert Detail input

create proc spinsert_presentation
@idPresentation int output,
@name varchar(50),
@description varchar(100)
as
insert into Presentation(idPresentation, name, description) 
values(@idPresentation, @name, @description)
go

--procedure edit Detail input
--procedure edit Detail input
create proc spedit_presentation
@idPresentation int output,
@name varchar(50),
@description varchar(100)
as
update Presentation set
name=@name, description=@description
where idPresentation=@idPresentation
go


--procedure delete client
create proc spdelete_presentation
@idPresentation int
as
delete from Presentation where
idPresentation=@idPresentation
go