SELECT 
	MIN(S.pricing) "faturamento_minimo",
  MAX(S.pricing) "faturamento_maximo",
  FORMAT(AVG(S.pricing), 2) "faturamento_medio",
	FORMAT(SUM(S.pricing), 2) "faturamento_total" 
FROM 
	SpotifyClone.subscriptions S
INNER JOIN 
	SpotifyClone.users U 
ON 
	U.plans_id = S.Plans_id;