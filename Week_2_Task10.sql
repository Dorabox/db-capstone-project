DROP PROCEDURE AddBooking;
DELIMITER //
CREATE PROCEDURE AddBooking (IN BookingID INT, IN CheckDate DATE, TableNum INT, IN CustomerID INT)
BEGIN
INSERT INTO Bookings (BookingID, Date, TableNumber, CustomerID) VALUES (BookingID, CheckDate, TableNum, CustomerID);
SELECT "New Booking Added";
END //

DELIMITER ;
CALL AddBooking(9, '2022-12-30', 3, 4);