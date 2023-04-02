DELIMITER //
CREATE PROCEDURE CancelOrder(IN OrderID INT)
BEGIN
SELECT concat('Order', CONVERT(OrderID, CHAR), ' is cancelled') AS Confirmation;
END
//
CALL CancelOrder(5)