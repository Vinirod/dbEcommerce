use dbEcommerce;

--procedure show detail input

create proc spshow_product
as
select top 200 * from Product
order by idProduct desc
go

--procedure search first_name client
create proc spsearch_first_name_product
@textsearch varchar(50)
as select * from Product where name like @textsearch + '%'
go

--procedure insert Detail input

create proc spinsert_product
@idProduct int output,
@code varchar(50),
@description varchar(500),
@name varchar(50),
@image image,
@idCategory int output,
@PresentatioId int output
as
insert into Product(idProduct, code, description, name, image, idCategory, presentationId) 
values(@idProduct, @code, @description, @name, @image, @idCategory, @PresentatioId)
go

--procedure edit Detail input
--procedure edit Detail input
create proc spedit_product
@idProduct int output,
@idCategory int output,
@code varchar(50),
@description varchar(500),
@name varchar(50),
@presentationId int output,
@image image
as
update Product set
idCategory=@idCategory, code=@code, description=@description, name=@name, presentationId=@presentationId, image=@image where idProduct=idProduct
go


--procedure delete client
create proc spdelete_product
@presentatioId int
as
delete from Presentation where
idPresentation=@presentatioId
go