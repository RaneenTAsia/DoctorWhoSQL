USE DoctorWho
GO 

CREATE TABLE tblEnemy
(
	EnemyId INT NOT NULL PRIMARY KEY,
	EnemyName VARCHAR(30),
	Description VARCHAR(255)
)

CREATE TABLE tblEpisodeEnemy
(
	EpisodeEnemyId INT NOT NULL PRIMARY KEY,
	EpisodeId INT NOT NULL,
	EnemyId INT NOT NULL
)

CREATE TABLE tblEpisode
(
	EpisodeId INT NOT NULL PRIMARY KEY,
	SeriesNumber INT,
	EpisodeNumber INT,
	EpisodeType VARCHAR(30),
	Title VARCHAR(255),
	EpisodeDate DATETIME,
	AuthorID INT NOT NULL,
	DoctorId INT NOT NULL,
	Notes VARCHAR(255)
)

CREATE TABLE tblEpisodeCompanion
(
	EpisodeCompanionId INT NOT NULL PRIMARY KEY,
	EpisodeId INT NOT NULL,
	CompanionId INT NOT NULL 
)

CREATE TABLE tblCompanion
( 
	CompanionID INT NOT NULL PRIMARY KEY,
	CompanionName VARCHAR(30),
	WhoPlayed VARCHAR(30)
)

CREATE TABLE tblDoctor
(
	DoctorId INT NOT NULL PRIMARY KEY,
	DoctorNumber INT,
	DoctorName VARCHAR(30),
	BirthDate DATETIME,
	FirstEpisodeDate DATETIME,
	LastEpisodeDate DATETIME
)

CREATE TABLE tblAuthor
(
	AuthorId INT NOT NULL PRIMARY KEY,
	AuthorName VARCHAR(30)
)

GO

ALTER TABLE tblEpisodeEnemy 
ADD FOREIGN KEY (EnemyId) REFERENCES tblEnemy(EnemyId);

ALTER TABLE tblEpisodeEnemy 
ADD FOREIGN KEY (EpisodeId) REFERENCES tblEpisode(EpisodeId);

ALTER TABLE tblEpisode
ADD FOREIGN KEY (AuthorId) REFERENCES tblAuthor(AuthorId);

ALTER TABLE tblEpisode
ADD FOREIGN KEY (DoctorId) REFERENCES tblDoctor(DoctorId);

ALTER TABLE tblEpisodeCompanion
ADD FOREIGN KEY (EpisodeId) REFERENCES tblEpisode(EpisodeId);

ALTER TABLE tblEpisodeCompanion 
ADD FOREIGN KEY (CompanionId) REFERENCES tblCompanion(CompanionId);

GO
