-- create view named hotel_guests to get details of the guests
CREATE OR REPLACE VIEW hotel_guests AS
SELECT guest_first_name AS 'First Name', guest_last_name AS 'Last Name', guest_email_address AS 'Email Address', guest_contact_number AS 'Contact Number',country,state,zipcode
FROM guests
JOIN addresses ON addresses.address_id = guests.addresses_address_id
WHERE guests.guest_id IN
		(SELECT distinct guests_guest_id 		-- get distinct guests
		FROM bookings
		WHERE hotel_hotel_id = 1);				-- for hotel(King George Inn & Suites) with id 1 

		