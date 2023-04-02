DROP PROCEDURE DeleteBooking;
DELIMITER //
CREATE PROCEDURE DeleteBooking (IN BookingIDS INT)
BEGIN
DELETE FROM Bookings
WHERE BookingID = BookingIDS;
SELECT CONCAT('Booking ', BookingIDS, ' Cancelled') AS Confirmation;
END //

DELIMITER ;
CALL DeleteBooking(9);