-- How many distinct guest have made bookings for a particular month?
	SELECT guest_first_name, guest_last_name,guest_contact_number
	FROM guests
	WHERE guest_id IN 
		( SELECT distinct guests_guest_id 		-- get distinct guests
		  FROM bookings
		  WHERE MONTH(check_in_date) = 8);		-- bookings for the month of August