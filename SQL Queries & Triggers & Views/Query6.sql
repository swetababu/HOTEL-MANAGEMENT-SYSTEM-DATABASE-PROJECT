-- List all the unique countries hotels are located in.
	SELECT DISTINCT country					-- unique countries
	FROM addresses
	WHERE address_id IN 					-- compare to get addresses of hotels
		( SELECT  addresses_address_id		-- address id of hotels
		  FROM hotel);