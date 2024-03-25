SELECT Customer.CustomerID,
  Customer.FirstName,
  Customer.LastName,
  Sum(Orders.TotalDue)
From Customer
  JOIN Orders on Customer.CustomerID = Orders.CustomerID
GROUP BY Customer.CustomerID,
  FirstName,
  LastName
ORDER BY Sum(TotalDue) DESC
LIMIT 10 -- Click on Run on active connection to run