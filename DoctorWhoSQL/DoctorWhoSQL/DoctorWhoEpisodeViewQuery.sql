DROP VIEW IF EXISTS viewEpisodes
GO

CREATE VIEW viewEpisodes AS
	SELECT A.AuthorName, D.DoctorName, dbo.fnCompanions(E.EpisodeId) AS Companions, dbo.fnEnemies(E.EpisodeId) AS Enemies
	FROM tblEpisode AS E
	INNER JOIN tblAuthor AS A ON E.AuthorId = A.AuthorId
	INNER JOIN tblDoctor AS D ON E.DoctorId = D.DoctorId
GO

SELECT * FROM viewEpisodes
GO