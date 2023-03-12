DELETE FROM tblCompanion 
WHERE CompanionId NOT IN (
	SELECT CompanionId 
	FROM tblEpisodeCompanion
)
GO
