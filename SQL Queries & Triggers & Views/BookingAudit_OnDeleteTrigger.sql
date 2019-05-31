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

DROP TRIGGER IF EXISTS bookings_after_delete;

DELIMITER //

CREATE TRIGGER bookings_after_delete 
AFTER DELETE ON bookings
FOR EACH ROW

BEGIN
INSERT INTO Bookings_Audit VALUES
(NULL, OLD.booking_id, OLD.booking_date, OLD.duration_of_stay, OLD.`check_in_date`, OLD.`check_out_date`, OLD.`booking_payment_type`, OLD.`total_rooms_booked`, OLD.`hotel_hotel_id`, OLD.`guests_guest_id`, OLD.`employees_emp_id`, OLD.`total_amount`,"DELETED", NOW());
END//

DELIMITER ;

SET sql_notes = 1;      -- And then re-enable the warning again
