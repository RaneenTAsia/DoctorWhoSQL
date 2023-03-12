DROP PROCEDURE IF EXISTS spSummariseEpisodes;
GO

CREATE PROCEDURE spSummariseEpisodes 
AS BEGIN
  SELECT C.CompanionName
  From tblCompanion AS C
  WHERE C.CompanionId IN(
  SELECT TOP 3 CompanionId 
  FROM tblEpisodeCompanion
  GROUP BY CompanionId
  ORDER BY COUNT(EpisodeId) desc)

  SELECT E.EnemyName
  From tblEnemy AS E
  WHERE E.EnemyId IN(
  SELECT TOP 3 EnemyId 
  FROM tblEpisodeEnemy
  GROUP BY EnemyId
  ORDER BY COUNT(EpisodeId) desc)
END;
	 
GO

EXEC spSummariseEpisodes
GO