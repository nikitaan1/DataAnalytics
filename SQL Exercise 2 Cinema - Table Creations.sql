CREATE TABLE customer (
    customer_id SERIAL PRIMARY KEY,
    first_name VARCHAR(50) NOT NULL,
    last_name VARCHAR(50) NOT NULL,
    email VARCHAR(100) UNIQUE NOT NULL,
    phone_number VARCHAR(20),
    date_of_birth DATE,
    created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP
);
    
CREATE TABLE movie (
    movie_id SERIAL PRIMARY KEY,
    title VARCHAR(100) NOT NULL,
    genre VARCHAR(50),
    director VARCHAR(50),
    release_date DATE,
    duration_minutes INT,
    rating DECIMAL(3, 1)
);

CREATE TABLE cinema (
    cinema_id SERIAL PRIMARY KEY,
    name VARCHAR(100) NOT NULL,
    location VARCHAR(100) NOT NULL,
    number_of_screens INT NOT NULL,
    phone_number VARCHAR(20)
);


CREATE TABLE ticket (
    ticket_id SERIAL PRIMARY KEY,
    customer_id INT REFERENCES customer(customer_id),
    movie_id INT REFERENCES movie(movie_id),
    cinema_id INT REFERENCES cinema(cinema_id),
    seat_number VARCHAR(10),
    show_time TIMESTAMP NOT NULL,
    price DECIMAL(5, 2) NOT NULL,
    purchase_time TIMESTAMP DEFAULT CURRENT_TIMESTAMP
);

CREATE TABLE theatre (
    theatre_id SERIAL PRIMARY KEY,
    cinema_id INT REFERENCES cinema(cinema_id),
    name VARCHAR(100) NOT NULL,
    seating_capacity INT NOT NULL
);

CREATE TABLE concession_store (
    store_id SERIAL PRIMARY KEY,
    cinema_id INT REFERENCES cinema(cinema_id),
    name VARCHAR(100) NOT NULL,
    location VARCHAR(100)
);

CREATE TABLE customer_order (
    order_id SERIAL PRIMARY KEY,
    customer_id INT REFERENCES customer(customer_id),
    store_id INT REFERENCES concession_store(store_id),
    order_time TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    total_amount DECIMAL(10, 2) NOT NULL
);