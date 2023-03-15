-- procedure inserts a new enemy
DROP PROCEDURE IF EXISTS p_tblEnemy_insert;
GO
USE DoctorWho
go

CREATE PROCEDURE p_tblEnemy_insert (@EnemyName VARCHAR(30), @Description VARCHAR(255))
AS BEGIN
  INSERT INTO [dbo].[tblEnemy] ( EnemyName, Description)
  VALUES (@EnemyName, @Description);
END;
GO
 
 EXEC p_tblEnemy_insert @EnemyName = 'Za', @Description = 'Desires Power';
 EXEC p_tblEnemy_insert @EnemyName = 'Kal', @Description = 'Desires Power';
 EXEC p_tblEnemy_insert @EnemyName = 'Daleks', @Description = 'Desires Earth invasion/ Human extermination';
 EXEC p_tblEnemy_insert @EnemyName = 'Yartek', @Description = 'Wants to take control of the Conscience of Marinus in order to control the people of Marinus.';
 EXEC p_tblEnemy_insert @EnemyName = 'Voord', @Description = 'Wants to control a planet';

 Select * from tblEnemy;
Go

-- procedure inserts a new companion
DROP PROCEDURE IF EXISTS p_tblCompanion_insert;
GO

CREATE PROCEDURE p_tblCompanion_insert (@CompanionName VARCHAR(30), @WhoPlayed VARCHAR(255))
AS BEGIN
  INSERT INTO [dbo].[tblCompanion] ( CompanionName, WhoPlayed)
  VALUES (@CompanionName, @WhoPlayed);
END;
GO

 EXEC p_tblCompanion_insert @CompanionName = 'Barbara Wright', @WhoPlayed = 'Jacqueline Hill';
 EXEC p_tblCompanion_insert @CompanionName = 'Ian Chesterton', @WhoPlayed = 'William Russel';
 EXEC p_tblCompanion_insert @CompanionName = 'Susan Foreman', @WhoPlayed = 'Carole Ann Ford';
 EXEC p_tblCompanion_insert @CompanionName = 'Vicki', @WhoPlayed = 'Maureen OBrien';
 EXEC p_tblCompanion_insert @CompanionName = 'Steven Taylor', @WhoPlayed = 'Peter Purves';

 Select* from tblCompanion
 GO

 -- procedure inserts a new doctor
DROP PROCEDURE IF EXISTS p_tblDoctor_insert;
GO

CREATE PROCEDURE p_tblDoctor_insert (@DoctorNumber INT, @DoctorName VARCHAR(30), @BirthDate DATETIME, @FirstEpisodeDate DATETIME, @LastEpisodeDate DATETIME)
AS BEGIN
  INSERT INTO [dbo].[tblDoctor] ( DoctorNumber, DoctorName, BirthDate, FirstEpisodeDate, LastEpisodeDate)
  VALUES (@DoctorNumber, @DoctorName, @BirthDate, @FirstEpisodeDate, @LastEpisodeDate);
END;
GO
 
 EXEC p_tblDoctor_insert @DoctorNumber = 1, @DoctorName = 'The First Doctor', @BirthDate=null, @FirstEpisodeDate=null, @LastEpisodeDate=null;
 EXEC p_tblDoctor_insert @DoctorNumber = 2, @DoctorName = 'The Second Doctor', @BirthDate=null, @FirstEpisodeDate=null, @LastEpisodeDate=null;
 EXEC p_tblDoctor_insert @DoctorNumber = 3, @DoctorName = 'The Third Doctor', @BirthDate=null, @FirstEpisodeDate=null, @LastEpisodeDate=null;
 EXEC p_tblDoctor_insert @DoctorNumber = 4, @DoctorName = 'The Fourth Doctor', @BirthDate=null, @FirstEpisodeDate=null, @LastEpisodeDate=null;
 EXEC p_tblDoctor_insert @DoctorNumber = 5, @DoctorName = 'The Fifth Doctor', @BirthDate=null, @FirstEpisodeDate=null, @LastEpisodeDate=null;

 Select * from tblDoctor;
Go

-- procedure inserts a new author
DROP PROCEDURE IF EXISTS p_tblAuthor_insert;
GO

CREATE PROCEDURE p_tblAuthor_insert (@AuthorName VARCHAR(30))
AS BEGIN
  INSERT INTO [dbo].[tblAuthor] (AuthorName)
  VALUES (@AuthorName);
END;
GO
 
 EXEC p_tblAuthor_insert @AuthorName = 'Anthony Coburn';
 EXEC p_tblAuthor_insert @AuthorName = 'Terry Nation';
 EXEC p_tblAuthor_insert @AuthorName = 'John Lucarotti';
 EXEC p_tblAuthor_insert @AuthorName = 'Peter R. Newman';
 EXEC p_tblAuthor_insert @AuthorName = 'Dennis Spooner';

 Select * from tblAuthor;
Go

 -- procedure inserts a new episode
DROP PROCEDURE IF EXISTS p_tblEpisode_insert;
GO

CREATE PROCEDURE p_tblEpisode_insert (@SeriesNumber INT, @EpisodeNumber INT, @EpisodeType VARCHAR(30), @Title VARCHAR(255), @EpisodeDate DATE, @AuthorId INT, @DoctorId INT, @Notes VARCHAR(255))
AS BEGIN
  INSERT INTO [dbo].[tblEpisode] (SeriesNumber, EpisodeNumber, EpisodeType, Title, EpisodeDate, AuthorID, DoctorId, Notes)
  VALUES (@SeriesNumber, @EpisodeNumber, @EpisodeType, @Title, @EpisodeDate,@AuthorId, @DoctorId, @Notes);
END;
GO
 
 EXEC p_tblEpisode_insert @SeriesNumber=1 , @EpisodeNumber = 1, @EpisodeType = 'Mystery', @Title = 'An Unearthly Child', @EpisodeDate = '1963-09-07',@AuthorId = 1, @DoctorId = 1, @Notes = null;
 EXEC p_tblEpisode_insert @SeriesNumber=1 , @EpisodeNumber = 2, @EpisodeType = 'Mystery', @Title = 'The Cave of Skulls' , @EpisodeDate = '1963-11-30',@AuthorId = 1, @DoctorId = 1, @Notes = null;
 EXEC p_tblEpisode_insert @SeriesNumber=1 , @EpisodeNumber = 3, @EpisodeType = 'Mystery', @Title = 'The Forest of Fear' , @EpisodeDate = '1963-12-07',@AuthorId = 1, @DoctorId = 1, @Notes = null;
 EXEC p_tblEpisode_insert @SeriesNumber=1 , @EpisodeNumber = 4, @EpisodeType = 'Mystery', @Title = 'The Firemaker' , @EpisodeDate = '1963-12-14',@AuthorId = 2, @DoctorId = 1, @Notes = null;
 EXEC p_tblEpisode_insert @SeriesNumber=1 , @EpisodeNumber = 5, @EpisodeType = 'Mystery', @Title = 'The Dead Planet' , @EpisodeDate = '1963-12-21',@AuthorId = 3, @DoctorId = 1, @Notes = null;
 EXEC p_tblEpisode_insert @SeriesNumber=1 , @EpisodeNumber = 6, @EpisodeType = 'Mystery', @Title = 'The Survivors' , @EpisodeDate = '1963-12-28',@AuthorId = 3, @DoctorId = null, @Notes = null;
 
 Select * from tblEpisode;
Go

 -- procedure inserts a new episode enemy
DROP PROCEDURE IF EXISTS p_tblEpisodeEnemy_insert;
GO

CREATE PROCEDURE p_tblEpisodeEnemy_insert (@EpisodeId INT, @EnemyId INT)
AS BEGIN
  INSERT INTO [dbo].[tblEpisodeEnemy] (EpisodeId, EnemyId)
  VALUES (@EpisodeId, @EnemyId);
END;
GO
 
 EXEC p_tblEpisodeEnemy_insert @EpisodeId = 1, @EnemyId = 1;
 EXEC p_tblEpisodeEnemy_insert @EpisodeId = 1, @EnemyId = 2;
 EXEC p_tblEpisodeEnemy_insert @EpisodeId = 2, @EnemyId = 1;
 EXEC p_tblEpisodeEnemy_insert @EpisodeId = 2, @EnemyId = 2;
 EXEC p_tblEpisodeEnemy_insert @EpisodeId = 3, @EnemyId = 2;
 EXEC p_tblEpisodeEnemy_insert @EpisodeId = 3, @EnemyId = 3;
 EXEC p_tblEpisodeEnemy_insert @EpisodeId = 4, @EnemyId = 1;
 EXEC p_tblEpisodeEnemy_insert @EpisodeId = 4, @EnemyId = 4;
 EXEC p_tblEpisodeEnemy_insert @EpisodeId = 5, @EnemyId = 1;
 EXEC p_tblEpisodeEnemy_insert @EpisodeId = 5, @EnemyId = 3;
 EXEC p_tblEpisodeEnemy_insert @EpisodeId = 5, @EnemyId = 5;

 Select * from tblEpisodeEnemy;
Go

 -- procedure inserts a new companion
DROP PROCEDURE IF EXISTS p_tblEpisodeCompanion_insert;
GO

CREATE PROCEDURE p_tblEpisodeCompanion_insert (@EpisodeId INT, @CompanionId INT)
AS BEGIN
  INSERT INTO [dbo].[tblEpisodeCompanion] (EpisodeId, CompanionId)
  VALUES (@EpisodeId, @CompanionId);
END;
GO
 
 EXEC p_tblEpisodeCompanion_insert @EpisodeId = 1, @CompanionId = 1;
 EXEC p_tblEpisodeCompanion_insert @EpisodeId = 2, @CompanionId = 1;
 EXEC p_tblEpisodeCompanion_insert @EpisodeId = 2, @CompanionId = 2;
 EXEC p_tblEpisodeCompanion_insert @EpisodeId = 3, @CompanionId = 3;
 EXEC p_tblEpisodeCompanion_insert @EpisodeId = 4, @CompanionId = 1;
 EXEC p_tblEpisodeCompanion_insert @EpisodeId = 4, @CompanionId = 2;
 EXEC p_tblEpisodeCompanion_insert @EpisodeId = 4, @CompanionId = 4;
 EXEC p_tblEpisodeCompanion_insert @EpisodeId = 5, @CompanionId = 1;
 EXEC p_tblEpisodeCompanion_insert @EpisodeId = 5, @CompanionId = 2;
 EXEC p_tblEpisodeCompanion_insert @EpisodeId = 5, @CompanionId = 3;
 
 Select * from tblEpisodeCompanion;
Go