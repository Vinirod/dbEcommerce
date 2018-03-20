use dbEcommerce;

--procedure show detail input

create proc spshow_detail_input
as
select top 200 * from Detail_input
order by idDetail_input desc
go

--procedure insert Detail input
create proc spinsert_detail_input
@idDetail_input int output,
@idInput int output,
@idProduct int output,
@purchase_price money,
@sale_price money,
@initial_inventory int,
@current_inventory int,
@production_date date,
@due_date date
as
insert into Detail_input(idInput,idProduct, purchase_price, sale_price, initial_inventory, current_inventory, production_date, due_date) 
values(@idInput, @idProduct, @purchase_price, @sale_price, @initial_inventory, @current_inventory, @production_date, @due_date)
go

--procedure edit Detail input
create proc spedit_detail_input
@idDetail_input int output,
@idInput int output,
@idProduct int output,
@purchase_price money,
@sale_price money,
@initial_inventory int,
@current_inventory int,
@production_date date,
@due_date date
as
update Detail_input set idInput=@idInput,
idProduct=@idProduct, purchase_price=@purchase_price, sale_price=@sale_price,
initial_inventory=@initial_inventory,current_inventory=@current_inventory,
production_date=@production_date, due_date=@due_date
where idDetail_input=@idDetail_input
go

--procedure delete client
create proc spdelete_detail_input
@idDetail_input int
as
delete from Detail_input where
idDetail_input=@idDetail_input
go