use dbEcommerce;

--procedure show detail input

create proc spshow_input
as
select top 200 * from Input
order by idInput desc
go

--procedure search first_name client
--create proc spsearch_first_name_employee
--@textsearch varchar(50)
--as select * from Employee where first_name like @textsearch + '%'
--go

--procedure insert Detail input

create proc spinsert_input
@idInput int output,
@idProvider int output,
@idEmployee int output,
@type_receipt varchar(50),
@series varchar(4),
@correlative varchar(7),
@tax decimal(4, 2)
as
insert into Input(idInput, idProvider, idEmployee, type_receipt, series, correlative, tax) 
values(@idInput, @idProvider, @idEmployee, @type_receipt, @series, @correlative, @tax)
go

--procedure edit Detail input
--procedure edit Detail input
create proc spedit_input
@idInput int output,
@idProvider int output,
@idEmployee int output,
@type_receipt varchar(50),
@series varchar(4),
@correlative varchar(7),
@tax decimal(4, 2)
as
update Input set
idProvider=@idProvider, idEmployee=@idEmployee,
type_receipt=@type_receipt, series=@series, correlative=@correlative, tax=@tax
where idInput=@idInput
go


--procedure delete client
create proc spdelete_input
@idInput int
as
delete from Input where
idEmployee=@idInput
go