SELECT 
	S.songs_title "cancao",
    COUNT(U.user_id) "reproducoes"
FROM 
	SpotifyClone.songs S
INNER JOIN
	SpotifyClone.history H
ON
	H.music_playback_history = S.songs_id
INNER JOIN
	SpotifyClone.users U
ON 
	U.user_id = H.user_id
GROUP BY 
	cancao
ORDER BY
	reproducoes DESC, cancao LIMIT 2;
  