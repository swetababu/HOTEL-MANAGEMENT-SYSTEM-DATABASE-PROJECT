-- List all the hotels that have a URL available.
	SELECT * 
	FROM `hotel` 
	WHERE hotel_website IS NOT NULL;	-- get the hotels whose URL is not null