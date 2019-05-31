-- List the rate for a room at a given time during the year.
	SELECT ROUND((r_type.room_cost - ((r_dis.discount_rate * r_type.room_cost)/100)), 2) AS 'Room Rate' -- get room price on the basis od discount
	FROM room_rate_discount r_dis JOIN room_type r_type 		-- join rate discount table with room type
	ON r_dis.room_type_room_type_id = r_type.room_type_id
    WHERE r_type.room_type_id 
	IN ( Select rooms_type_rooms_type_id from rooms where room_id = 1)	-- get room type id for room with id 1
    AND MONTH(NOW()) BETWEEN r_dis.start_month AND r_dis.end_month;		-- get discount rate for current month