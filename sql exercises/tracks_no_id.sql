SELECT Track.Name AS "Track_Name", Album.Title AS "Album_Name", MediaType.Name AS "Media_Type", Genre.Name AS "Genre"
FROM Album
JOIN Track
    ON Album.AlbumId = Track.AlbumId
JOIN MediaType
    ON Track.MediaTypeId = MediaType.MediaTypeId
JOIN Genre
    ON Track.GenreId = Genre.GenreId
