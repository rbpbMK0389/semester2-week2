-- tables
-- customers   films       screenings  tickets 

-- Write a function that returns details of tickets purchased by a specific customer.

-- The function should return a list of tuples containing (in order):
-- - the film title
-- - the screen
-- - the ticket price

-- Results should be ordered alphabetically by film title.

SELECT films.title, screenings.screen, tickets.price

FROM tickets

JOIN screenings ON tickets.screening_id = screenings.screening_id

JOIN films ON screenings.film_id = films.film_id

ORDER BY films.title
;





