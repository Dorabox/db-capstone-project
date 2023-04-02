SELECT C.CustomerID AS CustomerID, C.Name AS FullName, O.OrderID AS OrderID, O.TotalCost, M.Name AS MenuName, MI.Main AS CourseName, MI.Starter AS StarterName FROM Customer AS C 
INNER JOIN Orders AS O ON C.CustomerID = O.CustomerID
INNER JOIN Menu AS M ON O.MenuID = M.MenuID
INNER JOIN MenuItems AS MI ON M.MenuItemsID = MI.MenuItemsID
WHERE O.Quantity > 150
ORDER BY O.TotalCost ASC;