SELECT 
	S.songs_title AS "nome_musica",
    CASE 
		    WHEN S.songs_title LIKE '%Bard%' THEN REPLACE(S.songs_title, 'Bard', 'QA')
        WHEN S.songs_title LIKE '%Amar%' THEN REPLACE(S.songs_title, 'Amar', 'Code Review')
        WHEN S.songs_title LIKE '%Pais%' THEN REPLACE(S.songs_title, 'Pais', 'Pull Requests')
        WHEN S.songs_title LIKE '%SOUL%' THEN REPLACE(S.songs_title, 'SOUL', 'CODE')
        WHEN S.songs_title LIKE '%SUPERSTAR%' THEN REPLACE(S.songs_title, 'SUPERSTAR', 'SUPERDEV')
        END AS "novo_nome"
FROM SpotifyClone.songs AS S
WHERE S.songs_title LIKE '%Bard%' OR S.songs_title LIKE '%Amar%' OR S.songs_title LIKE '%Pais%' 
OR S.songs_title LIKE '%SOUL%' OR S.songs_title LIKE '%SUPERSTAR%'
ORDER BY nome_musica DESC;