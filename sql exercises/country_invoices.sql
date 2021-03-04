SELECT COUNT(InvoiceId) AS 'Invoices_per_Country', BillingCountry AS 'Country'
FROM Invoice
GROUP BY BillingCountry