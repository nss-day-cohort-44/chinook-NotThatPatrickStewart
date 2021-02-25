SELECT Total Invoice_Total, Customer.FirstName Customer_FirstName, Customer.LastName Customer_LastName, Customer.Country Customer_Country, Employee.FirstName Employee_FirstName, Employee.LastName Employee_LastName
FROM Invoice 
JOIN Customer
    ON Invoice.CustomerId = Customer.CustomerId
JOIN Employee
    ON Customer.SupportRepId = Employee.EmployeeId
WHERE Title LIKE "Sales Support Agent";