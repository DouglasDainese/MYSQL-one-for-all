SELECT 
	COUNT(H.music_playback_history) AS "quantidade_musicas_no_historico"
FROM SpotifyClone.history AS H
	INNER JOIN 	SpotifyClone.users AS U ON U.user_id = H.user_id 
GROUP BY U.username HAVING username = "Barbara Liskov";
