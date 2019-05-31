-- How many hotels are in a hotel chain?
	SELECT count(*) AS 'Total Hotels' 		-- count of total hotels
	FROM hotel_chain_has_hotel 
	WHERE hotel_chains_hotel_chain_id = 1;  -- for hotel chain 'best western hotels'