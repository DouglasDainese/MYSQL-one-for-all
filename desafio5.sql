SELECT 
	S.songs_title "cancao",
    COUNT(S.songs_id) "reproducoes"
FROM 
	SpotifyClone.songs S
INNER JOIN
	SpotifyClone.history H
ON
	H.music_playback_history = S.songs_id
GROUP BY 
	cancao
ORDER BY
	reproducoes DESC, cancao LIMIT 2;