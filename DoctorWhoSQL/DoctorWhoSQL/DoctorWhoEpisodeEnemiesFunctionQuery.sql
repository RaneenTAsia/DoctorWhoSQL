DROP FUNCTION IF EXISTS fnEnemies
GO

CREATE FUNCTION fnEnemies(@EpisodeId INT)
RETURNS VARCHAR(255) AS 
	BEGIN
		DECLARE @Result VARCHAR(255) = ''

		SELECT @Result = @Result + E.EnemyName + ', '
		From tblEnemy As E
		INNER JOIN tblEpisodeEnemy AS EE
			ON EE.EnemyId = E.EnemyId
			WHERE EE.EpisodeId = @EpisodeId
		RETURN @RESULT
	END
	GO
