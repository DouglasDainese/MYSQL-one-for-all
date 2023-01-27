SELECT 
	U.username AS 'usuario', 
	COUNT(DISTINCT H.music_playback_history) AS 'qt_de_musicas_ouvidas',
    ROUND(SUM(S.length_seconds / 60), 2) AS "total_minutos"
FROM 
	SpotifyClone.users AS U
INNER JOIN 
	SpotifyClone.history AS H
ON
	H.user_id = U.user_id
INNER JOIN 
	SpotifyClone.songs AS S
ON
	H.music_playback_history = S.songs_id
GROUP BY
	username;