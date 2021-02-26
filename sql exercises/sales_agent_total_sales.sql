SELECT Employee.FirstName ||" "|| Employee.LastName Employee_Name,
    printf("%.2f", SUM(Invoice.Total)) AS Total_Sales
FROM Invoice 
JOIN Customer
    ON Invoice.CustomerId = Customer.CustomerId
JOIN Employee
    ON Customer.SupportRepId = Employee.EmployeeId
GROUP BY Employee_Name