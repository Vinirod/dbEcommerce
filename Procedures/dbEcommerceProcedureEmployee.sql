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
@dateInput date,
@type_receipt varchar(50),
@series varchar(4),
@correlative varchar(7),
@tax decimal(4, 2)
as
insert into Input(idInput, idProvider, idEmployee, dateinput, type_receipt, series, correlative, tax) 
values(@idEmployee, @first_name, @last_name, @genre, @birth_date, @num_document, @address, @phone, @email, @access, @users, @password)
go

--procedure edit Detail input
--procedure edit Detail input
create proc spedit_employee
@idEmployee int output,
@first_name varchar(50),
@last_name varchar(50),
@genre varchar(1),
@birth_date date,
@num_document varchar(50),
@address varchar(150),
@phone varchar(50),
@email varchar(50),
@access varchar(50),
@users varchar(50),
@password varchar(50)
as
update Employee set
first_name=@first_name, last_name=@last_name,
genre=@genre, birth_date=@birth_date,
num_document=@num_document, address=@address, phone=@phone, email=@email, access=@access, users=@users, password=@password
where idEmployee=@idEmployee
go


--procedure delete client
create proc spdelete_employee
@idEmployee int
as
delete from Employee where
idEmployee=@idEmployee
go