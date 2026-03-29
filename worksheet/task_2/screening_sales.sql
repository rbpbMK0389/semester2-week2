-- Write a function that returns the number of tickets sold for each screening.

-- The function should return a list of tuples containing (in order):
-- - the screening ID
-- - the film title
-- - the number of tickets sold

-- All screenings should be included, even if no tickets were sold for that screening.

-- Results should be ordered by the number of tickets sold, from highest to lowest.

SELECT screenings.screening_id, films.title, COUNT(tickets.ticket_id) AS ticket_count

FROM screenings

JOIN films ON screenings.film_id = films.film_id

JOIN tickets ON screenings.screening_id = tickets.screening_id

GROUP BY screenings.screening_id, films.title

ORDER BY ticket_count DESC


;