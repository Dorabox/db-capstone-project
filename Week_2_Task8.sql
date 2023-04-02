DELIMITER //
CREATE PROCEDURE CheckBooking (IN CheckDate DATE, TableNum INT)
BEGIN
SELECT IF (EXISTS(SELECT TableNumber FROM Bookings WHERE TableNumber = TableNum), CONCAT('Table ', TableNum, ' is already booked.'),CONCAT('Table ', TableNum, ' not yet booked.')) AS 'Booking Status';
END //
SELECT * FROM BOOKINGs;
DELIMITER ;
CALL CheckBooking('2022-11-12',4);