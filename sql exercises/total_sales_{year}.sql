SELECT
SUM(Total),
strftime("%Y", InvoiceDate)
FROM Invoice
WHERE Invoice.InvoiceDate LIKE "%2009%" OR Invoice.InvoiceDate LIKE "%2011%"
GROUP BY strftime("%Y", InvoiceDate);

/*
OR
*/

SELECT InvoiceDate, SUM(Total)
FROM Invoice
WHERE InvoiceDate LIKE "2009%" OR InvoiceDate LIKE "2011%"
GROUP BY InvoiceDate LIKE "2009%";

/*
OR
*/

SELECT
printf("%.2f")
SUM(Total),
strftime("%Y", InvoiceDate)
FROM Invoice
WHERE Invoice.InvoiceDate LIKE "%2009%" OR Invoice.InvoiceDate LIKE "%2011%"
GROUP BY strftime("%Y", InvoiceDate);

