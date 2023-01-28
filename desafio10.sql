SELECT 
	S.songs_title AS "nome",
    COUNT(music_playback_history) AS "reproducoes"
FROM SpotifyClone.history AS H
	  INNER JOIN 	SpotifyClone.songs AS S ON S.songs_id = H.music_playback_history
    INNER JOIN SpotifyClone.users AS U ON U.user_id = H.user_id
    INNER JOIN SpotifyClone.subscriptions AS P ON P.Plans_id = U.plans_id
WHERE plans_name = "gratuito" OR plans_name = "pessoal"
GROUP BY nome ORDER BY nome;
