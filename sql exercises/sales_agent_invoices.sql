SELECT Employee.FirstName, Employee.LastName, InvoiceId
FROM Invoice
JOIN Customer
    ON Invoice.CustomerId = Customer.CustomerId
JOIN Employee
    ON Customer.SupportRepId = Employee.EmployeeId
WHERE Title LIKE "Sales Support Agent";