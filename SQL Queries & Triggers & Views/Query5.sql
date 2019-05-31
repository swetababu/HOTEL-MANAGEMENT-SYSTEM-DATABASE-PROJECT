-- How many rooms are booked in a particular hotel on a given date?
	SELECT SUM(total_rooms_booked) AS 'Total Rooms Booked' 		-- sum of total rooms
	FROM `bookings` 
	WHERE booking_date LIKE '2018-06-08%' AND hotel_hotel_id = 1;	-- for date 6th August,2018; and for hotel(King George Inn & Suites) with id 1 