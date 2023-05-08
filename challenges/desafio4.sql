SELECT
  user_name AS pessoa_usuaria,
  IF (YEAR(MAX(ph.play_date)) >= 2021, 'Ativa', 'Inativa') AS status_pessoa_usuaria
FROM
  play_history AS ph
    INNER JOIN
  user_person AS us ON ph.user_id = us.user_id
  GROUP BY pessoa_usuaria
  ORDER BY pessoa_usuaria;