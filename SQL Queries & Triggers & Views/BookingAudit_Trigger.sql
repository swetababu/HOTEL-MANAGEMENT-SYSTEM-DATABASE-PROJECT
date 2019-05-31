USE hotel_database;

SET sql_notes = 0;      -- Temporarily disable the "Table already exists" warning
	
-- create table for bookings audit
CREATE TABLE IF NOT EXISTS hotel_database.Bookings_Audit(
 audit_id int NOT NULL PRIMARY KEY AUTO_INCREMENT,
 `booking_id` INT NOT NULL,
 `booking_date` DATETIME NULL,
 `duration_of_stay` VARCHAR(10) NULL,
 `check_in_date` DATETIME NULL,
 `check_out_date` DATETIME NULL,
 `booking_payment_type` VARCHAR(45) NULL,
 `total_rooms_booked` INT NULL,
 `hotel_hotel_id` INT NOT NULL,
 `guests_guest_id` INT NOT NULL,
 `employees_emp_id` INT NOT NULL,
 `total_amount` DECIMAL(10,2) NULL,
 action_type varchar(50) NOT NULL,
 date_updated datetime NOT NULL
);


DROP TRIGGER IF EXISTS bookings_after_insert;

DELIMITER //

CREATE TRIGGER bookings_after_insert 
AFTER INSERT ON bookings
FOR EACH ROW

BEGIN
INSERT INTO Bookings_Audit VALUES
(NEW.booking_id, NEW.booking_date, NEW.duration_of_stay, NEW.`check_in_date`, NEW.`check_out_date`, NEW.`booking_payment_type`, NEW.`total_rooms_booked`, NEW.`hotel_hotel_id`, NEW.`guests_guest_id`, NEW.`employees_emp_id`, NEW.`total_amount`,"INSERTED", NOW());
END//

DELIMITER ;


SET sql_notes = 1;      -- And then re-enable the warning again

