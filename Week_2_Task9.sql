DELIMITER //
CREATE PROCEDURE AddValidBooking (IN CheckDate DATE, TableNum INT)
BEGIN
  START TRANSACTION;
  INSERT INTO Bookings (BookingID, Date, TableNumber, CustomerID) VALUES (5, CheckDate, TableNum,5);
  IF (SELECT COUNT(TableNumber) FROM Bookings WHERE TableNumber = TableNum) > 1 THEN
    SELECT CONCAT('Table ', TableNum, ' is already booked - booking canceled.') AS 'Booking Status';
    ROLLBACK;
  ELSE
    SELECT CONCAT('Table ', TableNum, ' is not yet booked - booking confirmed.') AS 'Booking Status';
    COMMIT;
  END IF;
END //
DELIMITER ;
CALL AddValidBooking('2022-12-17',6);
SELECT * FROM BOOKINGS;