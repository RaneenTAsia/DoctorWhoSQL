DROP FUNCTION IF EXISTS fnCompanions
GO

CREATE FUNCTION fnCompanions(@EpisodeId INT)
RETURNS VARCHAR(255) AS 
	BEGIN
		DECLARE @Result VARCHAR(255) = ''

		SELECT @Result = @Result + C.CompanionName + ', '
		From tblCompanion As C
		INNER JOIN tblEpisodeCompanion AS EC
			ON EC.CompanionId = C.CompanionID
			WHERE EC.EpisodeId = @EpisodeId
		RETURN @RESULT
	END
	GO