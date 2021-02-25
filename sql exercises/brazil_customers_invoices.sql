SELECT FirstName, LastName, InvoiceId, InvoiceDate, BillingCountry
FROM Invoice
JOIN Customer
    ON Invoice.BillingCountry = Customer.Country
WHERE BillingCountry LIKE "Brazil";