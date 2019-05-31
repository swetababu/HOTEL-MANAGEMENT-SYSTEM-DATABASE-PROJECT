-- How many rooms are available in a given hotel?
	SELECT  h.hotel_room_capacity - SUM(b.total_rooms_booked) 	AS 'Available Rooms'	-- get available rooms
	FROM `bookings` b JOIN hotel h
    	ON b.hotel_hotel_id = h.hotel_id
	WHERE booking_date LIKE '2018-06-08%' AND hotel_hotel_id = 1	-- for given date and for hotel(King George Inn & Suites) with id 1 