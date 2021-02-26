SELECT COUNT(*) AS 'Line_Item', Track.Name AS 'Track_Name'
    FROM InvoiceLine
    JOIN Track
        ON InvoiceLine.TrackId = Track.TrackId
    GROUP BY InvoiceId