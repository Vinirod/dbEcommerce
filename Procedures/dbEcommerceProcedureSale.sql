use dbEcommerce;

--procedure show detail input

create proc spshow_sale
as
select top 200 * from Sale
order by idSale desc
go


--procedure insert Detail input

create proc spinsert_sale
@idSale int output,
@idClient int output,
@idEmployee int output,
@date date,
@type_receipt varchar(50),
@series varchar(50),
@correlative varchar(50),
@tax decimal(4,2)
as
insert into Sale(idSale, idClient, idEmployee, date, type_receipt, series, correlative, tax) 
values(@idSale, @idClient, @idEmployee, @date, @type_receipt, @series, @correlative, @tax)
go

--procedure edit Detail input
--procedure edit Detail input
create proc spedit_sale
@idSale int output,
@idClient int output,
@idEmployee int output,
@date date,
@type_receipt varchar(50),
@series varchar(50),
@correlative varchar(50),
@tax decimal(4,2)
as
update Sale set
idClient=@idClient, idEmployee=@idEmployee, date=@date, type_receipt=@type_receipt, series=@series, correlative=@correlative, tax=@tax where idSale=idSale
go


--procedure delete client
create proc spdelete_sale
@IdSale int
as
delete from Sale where
idSale=@IdSale
go