-- procedure inserts a new enemy

 INSERT INTO [dbo].[tblEnemy] ( EnemyName, Description)
 VALUES ( 'Za', 'Desires Power'),
		( 'Kal', 'Desires Power'),
    	( 'Daleks', 'Desires Earth invasion/ Human extermination'),
	    ( 'Yartek', 'Wants to take control of the Conscience of Marinus in order to control the people of Marinus.'),
	    ( 'Voord', 'Wants to control a planet');

 Select * from tblEnemy;
Go

--  insert new companions

 INSERT INTO [dbo].[tblCompanion] ( CompanionName, WhoPlayed)
 VALUES ( 'Barbara Wright', 'Jacqueline Hill'),
	    ( 'Ian Chesterton', 'William Russel'),
		( 'Susan Foreman', 'Carole Ann Ford'),
		( 'Vicki', 'Maureen OBrien'),
		( 'Steven Taylor', 'Peter Purves');

 Select* from tblCompanion
 GO

 -- insert new doctors
 INSERT INTO [dbo].[tblDoctor] ( DoctorNumber, DoctorName, BirthDate, FirstEpisodeDate, LastEpisodeDate)
 VALUES ( 1, 'The First Doctor', null, null, null),
		( 2, 'The Second Doctor', null, null, null),
		( 3, 'The Third Doctor', null, null, null),
		( 4, 'The Fourth Doctor', null, null, null),
		( 5, 'The Fifth Doctor', null, null, null);

 Select * from tblDoctor;
Go

-- insert new authors
 
 INSERT INTO [dbo].[tblAuthor] (AuthorName)
 VALUES ( 'Anthony Coburn'),
		( 'Terry Nation'),
		( 'John Lucarotti'),
		( 'Peter R. Newman'),
		( 'Dennis Spooner');

 Select * from tblAuthor;
Go

 -- insert new episodes
 
 INSERT INTO [dbo].[tblEpisode] (SeriesNumber, EpisodeNumber, EpisodeType, Title, EpisodeDate, AuthorID, DoctorId, Notes)
 VALUES ( 1 , 1, 'Mystery', 'An Unearthly Child', '1963-09-07', 1, 1, null),
		( 1 , 2, 'Mystery', 'The Cave of Skulls', '1963-11-30', 1, 1, null),
		( 1 , 3, 'Mystery', 'The Forest of Fear', '1963-12-07', 1, 1, null),
		( 1 , 4, 'Mystery', 'The Firemaker', '1963-12-14', 2, 1, null),
		( 1 , 5, 'Mystery', 'The Dead Planet', '1963-12-21', 3, 1, null),
		( 1 , 6, 'Mystery', 'The Survivors' , '1963-12-28', 3, null, null);
 
 Select * from tblEpisode;
Go

 -- insert new episode enemies
 
 INSERT INTO [dbo].[tblEpisodeEnemy] (EpisodeId, EnemyId)
 VALUES ( 1, 1),
		( 1, 2),
		( 2, 1),
		( 2, 2),
		( 3, 2),
		( 3, 3),
		( 4, 1),
		( 4, 4),
		( 5, 1),
		( 5, 3),
		( 5, 5);

 Select * from tblEpisodeEnemy;
Go

 -- insert new episode companions
 
 INSERT INTO [dbo].[tblEpisodeCompanion] (EpisodeId, CompanionId)
 VALUES ( 1, 1),
		( 2, 1),
		( 2, 2),
		( 3, 3),
		( 4, 1),
		( 4, 2),
		( 4, 4),
		( 5, 1),
		( 5, 2),
		( 5, 3);
 
 Select * from tblEpisodeCompanion;
Go