use dbEcommerce;

--procedure show detail input

create proc spshow_detail_sale
as
select top 200 * from Detail_sale
order by idDetail_sale desc
go

--procedure search first_name client
--create proc spsearch_first_name
--@textsearch varchar(50)
--as select * from Client where first_name like @textsearch + '%'
--go

--procedure insert Detail input
create proc spinsert_detail_sale
@idDetail_sale int output,
@idSale int output,
@idDetail int output,
@amount int,
@sale_price money,
@discount money
as
insert into Detail_sale(idDetail_sale,idSale, idDetail, amount, sale_price, discount) 
values(@idDetail, @idSale, @idDetail, @amount, @sale_price, @discount)
go

--procedure edit Detail input
--procedure edit Detail input
create proc spedit_detail_sale
@idDetail_sale int output,
@idSale int output,
@idDetail int output,
@amount int,
@sale_price money,
@discount money
as
update Detail_sale set
idSale=@idSale, idDetail=@idDetail, amount=@amount,
sale_price=@sale_price,discount=@discount
where idDetail_sale=@idDetail_sale
go


--procedure delete client
create proc spdelete_detail_sale
@idDetail_sale int
as
delete from Detail_sale where
idDetail_sale=@idDetail_sale
go