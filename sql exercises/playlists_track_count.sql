SELECT COUNT(PlaylistTrack.PlayListId) AS 'Tracks_in_Playlist', Playlist.Name AS 'Playlist_Name'
    FROM Playlist
    JOIN PlaylistTrack
        ON Playlist.PlaylistId = PlaylistTrack.PlaylistId
    GROUP BY Playlist.Name