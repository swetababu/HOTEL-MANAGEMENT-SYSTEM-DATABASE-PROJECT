-- How many books has a customer made in one year?
	SELECT count(*) AS 'Total Bookings' 		-- count of total bookings 		
	FROM bookings
	WHERE YEAR(booking_date) = 2018 AND guests_guest_id = 1;		-- bookings in Year 2018 by guest Jane with id 1