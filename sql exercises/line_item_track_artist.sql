SELECT COUNT(*) AS 'Line_Item', Track.Name AS 'Track_Name', Composer AS 'Artist_Name'
    FROM InvoiceLine
    JOIN Track
        ON InvoiceLine.TrackId = Track.TrackId
    GROUP BY InvoiceId

/*Without right join being supported, is there a way to get rid of NULL artist displays?*/