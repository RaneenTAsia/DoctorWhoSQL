DROP PROCEDURE IF EXISTS spSummariseEpisodes;
GO

USE DoctorWho;
GO

CREATE PROCEDURE spSummariseEpisodes 
AS BEGIN

  SELECT TOP 3 C.CompanionName
  From tblCompanion AS C
  INNER JOIN tblEpisodeCompanion AS EC
  ON C.CompanionID = EC.CompanionId
  GROUP BY EC.CompanionId, C.CompanionName
  ORDER BY COUNT(EC.EpisodeId) DESC

  SELECT E.EnemyName
  From tblEnemy AS E
  INNER JOIN tblEpisodeEnemy AS EE
  ON E.EnemyId = EE.EnemyId
  GROUP BY EE.EnemyId, E.EnemyName
  ORDER BY COUNT(EpisodeId) DESC
  OFFSET 0 ROWS FETCH NEXT 3 ROWS ONLY

END;
	 
GO

EXEC spSummariseEpisodes
GO