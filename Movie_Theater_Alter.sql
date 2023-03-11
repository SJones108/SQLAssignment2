-- Change Theater Name
Update movie_theater
set theater_name = 'UP in Movies'
where theater_name = 'Ford River Cinema' and theater_id = 1;

--Change Theater Address
update movie_theater
set address = '4008 11th Road., Ford River, MI 49807'
where address = '108 Cinema Dr., Ford River, MI 49807' and theater_id = 1; 

select * from movie_theater

--Change Amount in Tickets 
alter table tickets
alter column amount type NUMERIC(4,2);

select * from tickets

--Change Customer 
alter table customer
add email VARCHAR(100);

update customer
set email = 'skippyDoo@yahoo.com'
where customer_id = 1;

alter table customer 
add contact_number VARCHAR(15);

update customer 
set contact_number = '906-555-5555'
where customer_id = 1;

select * from customer

alter table customer
drop column contact_number;

select * from customer