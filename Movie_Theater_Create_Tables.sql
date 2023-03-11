--Create tables for the Movie Theater

create table customer (
	customer_id SERIAL primary key,
	first_name VARCHAR(100),
	last_name VARCHAR(100),
	address VARCHAR(100),
	billing_info VARCHAR(150)
);

create table movies (
	movie_id SERIAL primary key,
	movie_title VARCHAR(150),
	movie_genre VARCHAR(150),
	movie_rating VARCHAR(100)
);

create table movie_theater (
	theater_id SERIAL primary key,
	theater_name VARCHAR(150),
	address VARCHAR(150),
	phone VARCHAR(15)
);

create table cart (
	cart_id SERIAL primary key,
	customer_id INTEGER not null,
	foreign key(customer_id) references customer(customer_id)
);

create table order_ (
	order_id SERIAL primary key,
	order_date DATE default CURRENT_DATE,
	subtotal NUMERIC(5,2),
	final_total NUMERIC(5,2),
	cart_id INTEGER not null,
	foreign key(cart_id) references cart(cart_id)
);

create table tickets (
	ticket_id SERIAL primary key,
	amount NUMERIC(2,2),
	movie_id INTEGER,
	order_id INTEGER,
	foreign key(movie_id) references movies(movie_id),
	foreign key(order_id) references order_(order_id)
);

create table inventory (
	upc SERIAL primary key,
	item_amount INTEGER,
	order_id INTEGER,
	foreign key(order_id) references order_(order_id)
);

create table concessions (
	item_id SERIAL primary key,
	item_name VARCHAR(100),
	quanity INTEGER,
	theater_id INTEGER,
	upc INTEGER,
	foreign key(theater_id) references movie_theater(theater_id),
	foreign key(upc) references inventory(upc)
);