SELECT OrderItem.OrderId,
  Orders.TotalDue,
  Round(SUM(Product.Price * OrderItem.Quantity),2) as NewTotalDue
FROM OrderItem
  JOIN Product ON OrderItem.ProductID = Product.ProductID
  JOIN Orders ON OrderItem.OrderID = Orders.OrderID
GROUP BY OrderItem.OrderId,
  Orders.TotalDue
Having Orders.TotalDue = NewTotalDue

-- Checking the 2 values are equal