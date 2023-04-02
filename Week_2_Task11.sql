DROP PROCEDURE UpdateBooking;
DELIMITER //
CREATE PROCEDURE UpdateBooking (IN BookingIDS INT, IN CheckDate DATE)
BEGIN
UPDATE Bookings
SET Date = CheckDate
WHERE BookingID = BookingIDS;
SELECT CONCAT('Booking ', BookingIDS, ' Updated') AS Confirmation;
END //

DELIMITER ;
CALL UpdateBooking(9, '2022-12-17');