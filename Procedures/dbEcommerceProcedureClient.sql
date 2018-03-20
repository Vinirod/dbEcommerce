use dbEcommerce;


--procedure show client

create proc spshow_client
as
select top 200 * from Client
order by idClient desc
go

--procedure search first_name client
create proc spsearch_first_name_client
@textsearch varchar(50)
as select * from Client where first_name like @textsearch + '%'
go

--procedure insert client
create proc spinsert_client
@idClient int output,
@first_name varchar(50),
@last_name varchar(50),
@genre varchar(10),
@document_type varchar(50),
@num_document varchar(150),
@address varchar(10),
@email varchar(50)
as
insert into Client(first_name,last_name, genre, document_type, num_document, address, email) 
values(@first_name, @last_name, @genre, @document_type, @num_document, @address, @email)
go

--procedure edit client
create proc spedit_client
@idClient int output,
@first_name varchar(50),
@last_name varchar(50),
@genre varchar(10),
@document_type varchar(50),
@num_document varchar(150),
@address varchar(10),
@email varchar(50)
as
update Client set first_name=@first_name,
last_name=@last_name, genre=@genre, document_type=@document_type, num_document=@num_document, address=@address, email=@email where idClient=@idClient
go

--procedure delete client
create proc spdelete_client
@idClient int
as
delete from Client where
idClient=@idClient
go