-- insert customer data
insert into customer (
	customer_id,
	first_name,
	last_name,
	address,
	billing_info
) values (
	1,
	'Skippy',
	'Doo',
	'79 North 3rd Street., Ford River, MI 49807',
	'1122-3344-5566-7788 009 10/24'
);

insert into customer (
	customer_id,
	first_name,
	last_name,
	address,
	billing_info
) values (
	2,
	'Scookie',
	'Cookie',
	'9 South 5th Street., Ford River, MI 49807',
	'2211-4433-6655-8844 010 11/24'
);

insert into customer (
	customer_id,
	first_name,
	last_name,
	address,
	billing_info
) values (
	3,
	'Raven',
	'Moc',
	'791 North 10th Road., Ford River, MI 49807',
	'1102-3304-5560-7780 003 08/24'
);

-- insert movies data
insert into movies (
	movie_id,
	movie_title,
	movie_genre,
	movie_rating
) values (
	1,
	'The Power Of Parrots',
	'Adventure',
	'G'
);

insert into movies (
	movie_id,
	movie_title,
	movie_genre,
	movie_rating
) values (
	2,
	'The Fist Of The Fury',
	'Action',
	'PG-13'
);

-- insert Theater data
insert into movie_theater (
	theater_id,
	theater_name,
	address,
	phone
) values (
	1,
	'Ford River Cinema',
	'108 Cinema Dr., Ford River, MI 49807',
	'1-906-2312'
);

-- insert cart data
insert into cart (
	cart_id,
	customer_id
) values (
	1,
	1
);

insert into cart (
	cart_id,
	customer_id
) values (
	2,
	2
);

insert into cart (
	cart_id,
	customer_id
) values (
	3,
	3
);
-- insert order data
insert into order_ (
	order_id,
	subtotal,
	final_total,
	cart_id
) values (
	1,
	15.98,
	18.36,
	1
);

insert into order_ (
	order_id,
	subtotal,
	final_total,
	cart_id
) values (
	2,
	18.98,
	20.39,
	2
);

insert into order_ (
	order_id,
	subtotal,
	final_total,
	cart_id
) values (
	3,
	21.98,
	23.49,
	3
);
-- insert tickets data
insert into tickets (
	ticket_id,
	amount,
	movie_id,
	order_id
) values (
	1,
	7.99,
	1,
	1
);

insert into tickets (
	ticket_id,
	amount,
	movie_id,
	order_id
) values (
	2,
	7.99,
	2,
	2
);

insert into tickets (
	ticket_id,
	amount,
	movie_id,
	order_id
) values (
	3,
	8.99,
	1,
	3
);
-- insert inventory data
insert into inventory (
	upc,
	item_amount,
	order_id
) values (
	1,
	3,
	1
);

insert into inventory (
	upc,
	item_amount,
	order_id
) values (
	2,
	3,
	2
);

insert into inventory (
	upc,
	item_amount,
	order_id
) values (
	3,
	3,
	3
);
-- insert conessions data
insert into concessions (
	item_id,
	quanity,
	item_name,
	theater_id,
	upc
) values (
	1,
	20,
	'Chocolate Covered Cookie Dough Bites',
	1,
	1
);

insert into concessions (
	item_id,
	quanity,
	item_name,
	theater_id,
	upc
) values (
	2,
	29,
	'Coffee M&Ms',
	1,
	2
);

insert into concessions (
	item_id,
	quanity,
	item_name,
	theater_id,
	upc
) values (
	3,
	49,
	'Bucket of Popcorn',
	1,
	3
);

select * from order_;

select * from concessions;




