INSERT INTO `addresses`(`address_id`, `address_line1`, `address_line2`, `city`, `state`, `country`, `zipcode`)
VALUES 
	 (1,49, 'Dave Street', 'Kitchener','ON','Canada','N2C 2P6'),
	 (2,64, 'Victoria Street', 'Kitchener','ON','Canada','N2C 2M6'),
	 (3,79, 'Connaught Street', 'London','ON','Canada','N2C 2K3'),
	 (4,45, 'Sweden St. Street', 'London','ON','Canada','N2A 0E4'),
	 (5,60, 'Lincoln Street', 'Guelph','ON','Canada','N2C 2E8'),
	 (6,20400, 'Phoenix', NULL,'AZ','USA','AZ85027'),
	 (7,8033, 'King George Boulevard', 'Surrey','BC','Canada','V3W 5B4'),
	 (8,1565, 'E South St', 'Globe','AZ','USA','85501'),
	 (9,32, ' Gandhi Road', 'Mumbai','Maharashtra','India','534076'),
	 (10,706, 'Idle rd', 'Saskatoon','SK','Bangladesh','S2L 562'),
	 (11,45, 'Vanier Park', 'Kitchener','ON','Canada','Sd3 d35'),
	 (12,41, 'Greenfield', 'London','ON','Canada','234 987'),
	 (13,89, 'Jacob Rd', 'Paris','ON','Canada','467 289'),
	 (14,85, 'Martin Street', 'Ottawa','BC','Canada','263 987'),
	 (15,78, 'Josseph St. Street', 'Guelph','BC','Canada','267 387'),
	 (16,156, 'James Road', NULL,'AZ','USA','263 762'),
	 (17,7598, 'Atomic Street', 'Ottawa','New York','USA','756 145'),
	 (18,5476, 'Saint Jake Rd', 'NULL','San Jose','USA','675 846'),
	 (19,7465, 'Thames Rd', 'NUll','Gujarat','India','145 895');

-- insert into star ratings table
INSERT INTO `star_ratings`(`star_rating`, `star_rating_image`) 
VALUES
	(1,"/images/one_star.jpg"),
	(2,"/images/two_star.jpg"),
	(3,"/images/three_star.jpg"),
	(4,"/images/four_star.jpg"),
	(5,"/images/five_star.jpg");

INSERT INTO `department`(`department_id`, `department_name`, `department_description`)
VALUES
	(1,'Kitchen','cooking'),
	(2,'Cleaning','sweep and mop'),
	(3,'Front Staff','handle bookings and query resolution'),
	(4,'Management','handles customer and resolve complaints'),
	(5,'Commute','pick up and drop');
	
INSERT INTO `room_type`(`room_type_id`, `room_type_name`, `room_cost`, `room_type_description`, `smoke_friendly`, `pet_friendly`)
 VALUES 
	(1, 'Standard Room','103',"1 King Bed 323-sq-foot (30-sq-meter) room with city views",0,1),
	(2, 'Standard Twin Room','123',"Two Twin Bed 323-sq-foot (30-sq-meter) room with city views",1,1),
	(3, 'Executive Room','130',"1 King Bed 323-sq-foot (30-sq-meter) room with city views",0,0),
	(4, 'Club Room','159',"2 King Bed 323-sq-foot (30-sq-meter) room with city views",1,1);
	
INSERT INTO `guests`(`guest_id`, `guest_first_name`, `guest_last_name`, `guest_contact_number`, `guest_email_address`, `guest_credit_card`, `guest_id_proof`, `addresses_address_id`)
VALUES 
	(1,'Jane','Doe','132-456-8564','jane.doe@gmail.com',NULL,'/images/drivingLicense1023',1),
	(2,'Jerry','Thachter','564-896-4752','jerry.ytsvg@gmail.com',NULL,'/images/passport45612',2),
	(3,'Rihanna','Perry','745-986-7451','rih.vfdj89@gmail.com',NULL,'/images/drivingLicense4889',3),
	(4,'Mathew','Jose','489-624-8633','mathew.jose@gmail.com',NULL,'/images/drivingLicense8945',4),
	(5,'Jessica','Smith','487-956-8963','jess.smith@gmail.com',NULL,'/images/passport7896',5);
	
INSERT INTO `room_rate_discount`(`discount_id`, `discount_rate`, `start_month`, `end_month`, `room_type_room_type_id`)
 VALUES
	(1,50,1,3,1),
	(2,15,6,8,1),
	(3,15,9,12,1),
	(4,0,4,6,1),
	(1,50,1,3,2),
	(2,80,6,8,2),
	(3,15,9,12,2),
	(4,0,4,6,2),
	(1,50,1,3,3),
	(2,80,6,8,3),
	(3,15,9,12,3),
	(4,0,4,6,3);
	
INSERT INTO `hotel_chain`(`hotel_chain_id`, `hotel_chain_name`, `hotel_chain_contact_number`, `hotel_chain_email_address`, `hotel_chain_website`, `hotel_chain_head_office_address_id`) 
VALUES
	(1,'Best Western Hotels','456-865-8956','bw123@gmail.com','https://www.bestwestern.com/',6),
	(2,'China Town Hotels','110-526-5647','chinatown123@gmail.com','https://www.chinatown.com/',16),
	(3,'Elite Hotels','546-874-6547','elite.tea213@gmail.com','https://www.elitendhe.com/',17),
	(4,'Cosmopolitan Hotels','852-741-9765','cosmo.hotels123@gmail.com','https://www.cosmopolitan.com/',18),
	(5,'Prestige Hotels','657-784-3647','prestige2453@gmail.com','https://www.prestige.com/',19);
	
INSERT INTO `hotel`(`hotel_id`, `hotel_name`, `hotel_contact_number`, `hotel_email_address`, `hotel_website`, `hotel_description`, `hotel_floor_count`, `hotel_room_capacity`, `hotel_chain_id`, `addresses_address_id`, `star_ratings_star_rating`, `check_in_time`, `check_out_time`)
	VALUES 
		(1,'King George Inn & Suites','604-502-9564','kgi123@gmail.com','https://www.kgi123.com/','A 2-mile drive from Besh Ba Gowah Archaeological Park.',5,45,1,7,4,'12:00:00','23:00:00'),
		(2,'Copper Hills Inn','547-964-9564','chinni123@gmail.com','https://www.chin23.com/','A 2-mile drive from Besh Ba Gowah Archaeological Park.',6,55,1,8,5,'12:00:00','23:00:00'),
		(3,'Sawmill Inn','547-964-3452','sawmill.inn@gmail.com','https://www.chin23.com/','A 3-mile drive from Fairview Park.',4,50,1,9,5,'12:00:00','23:00:00'),
		(4,'Northgate Inn','547-876-5422','northgate.inn@gmail.com','https://www.chin23.com/','A 4-mile drive from Conestoga Mall',3,40,1,10,5,'12:00:00','23:00:00');
		
	
INSERT INTO `rooms`(`room_id`, `room_number`, `rooms_type_rooms_type_id`, `hotel_hotel_id`)
 VALUES 
	(1,1101,1,1),
	(2,1102,1,1),
	(3,1103,1,1),
	(4,1104,1,1),
	(5,1105,1,1),
	(6,1106,1,1),
	(7,1107,1,1),
	(8,1108,1,1),
	(9,1109,1,1),
	(10,1110,1,1),
	(11,1111,1,1),
	(12,1112,1,1),
	(13,1113,1,1),
	(14,1114,1,1),
	(15,1115,1,1),
	(16,1116,1,1),
	(17,1117,2,1),
	(18,1118,2,1),
	(19,1119,2,1),
	(20,1120,2,1),
	(21,1121,2,1),
	(22,1122,2,1),
	(23,1123,2,1),
	(24,1124,2,1),
	(25,1125,2,1),
	(26,1126,2,1),
	(27,1127,2,1),
	(28,1128,2,1),
	(29,1129,2,1),
	(30,1130,2,1),
	(31,1131,2,1),
	(32,1132,2,1),
	(33,1133,2,1),
	(34,1134,2,1),
	(35,1135,2,1);
	
INSERT INTO `hotel_services`(`service_id`, `service_name`, `service_description`, `service_cost`, `hotel_hotel_id`)
 VALUES
	(1,'24-hour Room Service','There will be 24-hour Room Service to take care of customers needs',20,1),
	(2,'Currency Exchange','Foreign Currency Exchange facility available',80,1),
	(3,'Laundry','Laundry/Dry Cleaning available same day',10,1),
	(4,'Entertainment Room','Book and watch movies',50,2),
	(5,'Swimming Pool','Pool access to all the guests',100,2),
	(6,'Gym','24 Hour Gym',140,2);
	
INSERT INTO `employees`(`emp_id`, `emp_first_name`, `emp_last_name`, `emp_designation`, `emp_contact_number`, `emp_email_address`, `department_department_id`, `addresses_address_id`, `hotel_hotel_id`)
 VALUES 
 (1,'Jen','Fen','Waiter','123-789-7896','jen.rds@gmail.com',1,11,1),
 (2,'Tom','Pitt','Manager','565-789-7896','tom.pit@gmail.com',3,12,1),
 (3,'David','Lawrence','Cashier','852-789-7896','david.lawr@gmail.com',2,13,1),
 (4,'Joseph','Aniston','Cook','765-789-7896','joseph.anis@gmail.com',2,14,1),
 (5,'Jeny','Patel','Manager','531-789-7896','jeny.patel@gmail.com',3,15,1);
 
INSERT INTO `hotel_chain_has_hotel`(`hotel_chains_hotel_chain_id`, `hotels_hotel_id`)
 VALUES
 (1,1),
 (1,2),
 (1,3),
 (1,4),
 (2,3),
 (2,4);
 
INSERT INTO `bookings` (`booking_id`, `booking_date`, `duration_of_stay`, `check_in_date`, `check_out_date`, `booking_payment_type`, `total_rooms_booked`, `hotel_hotel_id`, `guests_guest_id`, `employees_emp_id`, `total_amount`)
 VALUES
	('1', '2018-08-08 00:00:00', '5', '2018-08-10 12:00:00', '2018-08-15 23:00:00', 'cash', '1', '1', '1', '3', '590'),
	('2', '2018-06-08 00:00:00', '20', '2018-06-08 12:00:00', '2018-06-28 23:00:00', 'card', '1', '1', '2', '1', '2300'),
	('3', '2018-06-08 00:00:00', '10', '2018-06-08 12:00:00', '2018-06-18 23:00:00', 'card', '1', '1', '1', '3', '1100'),
	('4', '2018-06-08 00:00:00', '2', '2018-06-08 12:00:00', '2018-06-10 23:00:00', 'card', '1', '1', '4', '1', '290'),
	('5', '2018-06-08 00:00:00', '3', '2018-06-08 12:00:00', '2018-06-11 23:00:00', 'card', '1', '1', '2', '3', '350'),
	('6', '2018-06-08 00:00:00', '5', '2018-06-08 12:00:00', '2018-06-13 23:00:00', 'card', '1', '1', '3', '3', '570'),
	('7', '2018-08-13 00:00:00', '2', '2018-06-13 12:00:00', '2018-06-15 23:00:00', 'cash', '2', '1', '5', '4', '280'),
	('8', '2018-08-10 00:00:00', '3', '2018-08-11 12:00:00', '2018-08-13 23:00:00', 'card', '1', '1', '3', '3', '350'),
	('9', '2018-08-10 00:00:00', '5', '2018-08-12 12:00:00', '2018-08-16 23:00:00', 'card', '1', '1', '4', '3', '570'),
	('10', '2018-08-14 00:00:00', '2', '2018-08-15 12:00:00', '2018-08-17 23:00:00', 'cash', '2', '1', '5', '4', '280'),
	('11', '2018-08-14 00:00:00', '5', '2018-08-16 12:00:00', '2018-08-21 23:00:00', 'cash', '1', '1', '1', '3', '590'),
	('12', '2018-08-14 00:00:00', '20', '2018-08-17 12:00:00', '2018-09-07 23:00:00', 'card', '1', '1', '2', '1', '2300'),
	('13', '2018-08-14 00:00:00', '10', '2018-08-15 12:00:00', '2018-08-25 23:00:00', 'card', '1', '1', '1', '3', '1100'),
	('14', '2018-08-14 00:00:00', '2', '2018-08-16 12:00:00', '2018-08-18 23:00:00', 'card', '2', '1', '4', '1', '290'),
	('15', '2018-08-14 00:00:00', '3', '2018-08-17 12:00:00', '2018-08-20 23:00:00', 'card', '3', '1', '2', '3', '350');
	
	
INSERT INTO `rooms_booked` (`rooms_booked_id`, `bookings_booking_id`, `rooms_room_id`) 
VALUES 
('1', '1', '1'),
('2', '2', '2'),
('3', '2', '3'),
('4', '2', '4'),
('5', '2', '5'),
('6', '2', '6'),
('7', '7', '7'),
('8', '7', '8'),
('9', '6', '9'),
('10','8','10'),
('11','9','11'),
('12','10','12'),
('13','10','13'),
('14', '11', '14'),
('15', '12', '15'),
('16', '13', '16'),
('17', '14', '17'),
('18', '14', '18'),
('19', '15', '19'),
('20', '15', '20'),
('21', '15', '21');


INSERT INTO `hotel_services_used_by_guests` (`service_used_id`, `hotel_services_service_id`, `bookings_booking_id`) 
VALUES ('1', '1', '2'),
 ('2', '2', '2'),
 ('3', '3', '2');