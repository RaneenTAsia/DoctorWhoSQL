UPDATE tblEpisode 
SET Title = Title + '_CANCELLED'
Where DoctorId IS NULL
GO
