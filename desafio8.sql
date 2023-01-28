SELECT 
	A.artist_name AS  "artista", Alb.album_title AS "album"
FROM SpotifyClone.albums Alb
	INNER JOIN 	SpotifyClone.artist A ON 	A.artist_id = Alb.artist_id
	INNER JOIN 	SpotifyClone.artist_followers_table_name Af ON	Af.artist_id = Alb.artist_id
GROUP BY album_title, artist_name 
HAVING artist_name = "Elis Regina"
ORDER BY album_title;
