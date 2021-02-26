SELECT InvoiceId, COUNT(InvoiceLineId) Number_of_Invoice_Line_Items
FROM InvoiceLine 
GROUP BY InvoiceId;