SELECT 
	U.username 'usuario',
    IF(YEAR(MAX(H.data_reproducao)) >= 2021, 'Usuário ativo', 'Usuário inativo') 'status_usuario'
FROM 
	SpotifyClone.users U
INNER JOIN
	SpotifyClone.history H
ON 
	H.user_id = U.user_id
GROUP BY
	usuario
ORDER BY
	usuario;