INSERT INTO customer (first_name, last_name, email, phone_number, date_of_birth)
VALUES
    ('John', 'Doe', 'john.doe@example.com', '555-1234', '1990-01-01'),
    ('Jane', 'Smith', 'jane.smith@example.com', '555-5678', '1985-05-15'),
    ('Alice', 'Johnson', 'alice.johnson@example.com', '555-8765', '1992-07-23');
    
INSERT INTO movie (title, genre, director, release_date, duration_minutes, rating)
VALUES
    ('Inception', 'Sci-Fi', 'Christopher Nolan', '2010-07-16', 148, 8.8),
    ('The Godfather', 'Crime', 'Francis Ford Coppola', '1972-03-24', 175, 9.2),
    ('Titanic', 'Romance', 'James Cameron', '1997-12-19', 195, 7.8);
    
INSERT INTO cinema (name, location, number_of_screens, phone_number)
VALUES
    ('Cinema One', '123 Main St', 10, '555-1111'),
    ('Cinema Two', '456 Elm St', 8, '555-2222'),
    ('Cinema Three', '789 Oak St', 12, '555-3333');
    
   
 INSERT INTO ticket (customer_id, movie_id, cinema_id, seat_number, show_time, price)
VALUES
    (1, 1, 1, 'A1', '2024-08-01 19:00:00', 12.50),
    (2, 2, 2, 'B2', '2024-08-02 20:00:00', 15.00),
    (3, 3, 3, 'C3', '2024-08-03 21:00:00', 10.00);
    
   
INSERT INTO theatre (cinema_id, name, seating_capacity)
VALUES
    (1, 'Theatre 1', 200),
    (2, 'Theatre 2', 150),
    (3, 'Theatre 3', 250);
    
INSERT INTO concession_store (cinema_id, name, location)
VALUES
    (1, 'Snack Bar One', 'Lobby'),
    (2, 'Snack Bar Two', 'Second Floor'),
    (3, 'Snack Bar Three', 'Main Entrance');
    
   
INSERT INTO customer_order (customer_id, store_id, order_time, total_amount)
VALUES
    (1, 1, '2024-08-01 18:30:00', 20.00),
    (2, 2, '2024-08-02 19:30:00', 25.50),
    (3, 3, '2024-08-03 20:30:00', 15.75);