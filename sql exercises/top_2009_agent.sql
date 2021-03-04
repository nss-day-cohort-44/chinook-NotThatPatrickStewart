SELECT
    Max(Total_Sales),
    Employee,
    Year
FROM(
    SELECT
        "$" || printf("%.2f", SUM(Invoice.Total)) Total_Sales,
        Employee.FirstName ||" "|| Employee.LastName Employee,
        strftime('%Y', Invoice.InvoiceDate) Year
    FROM
        Invoice, Employee, Customer
    WHERE
        Invoice.CustomerId = Customer.CustomerId
        AND Customer.SupportRepId = Employee.EmployeeId
        AND Year = '2009'
    GROUP BY
        Employee,
        Year
) Sales