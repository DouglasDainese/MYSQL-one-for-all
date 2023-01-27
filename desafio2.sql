SELECT 
	Count(DISTINCT S.songs_title) AS 'cancoes', 
	COUNT(DISTINCT A.artist_id) AS 'artistas', 
    COUNT(DISTINCT AM.album_id) AS 'albuns'
FROM 
	SpotifyClone.artist AS A
INNER JOIN 
	SpotifyClone.songs AS S
ON 
	A.artist_id = S.artist_id
INNER JOIN
	SpotifyClone.albums AS AM
ON
	AM.artist_id = A.artist_id;