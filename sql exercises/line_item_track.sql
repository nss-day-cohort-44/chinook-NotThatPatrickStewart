SELECT InvoiceLineId AS 'Line_Id', Track.Name AS 'Track_Name'
    FROM InvoiceLine
    JOIN Track
        ON InvoiceLine.TrackId = Track.TrackId;