select count(*) from Track;
select count(*) from Artist;Genre.Name

select * from Album
inner join Artist on Artist.ArtistId = Album.ArtistId;

select Track.Name, Genre.Name from Track
inner join Genre on Track.GenreId = Genre.GenreId
where Genre.Name = "Jazz";

select Track.Name, MediaType.Name, Genre.Name from Track
inner join MediaType on Track.MediaTypeId = MediaType.MediaTypeId
inner join Genre on Track.GenreId = Genre.GenreId
where MediaType.Name = "Protected AAC audio file" and Genre.Name = "Soundtrack";


SELECT Playlist.Name AS Playlist, Track.Name AS Track, Album.Title AS Album, Artist.Name AS Artist FROM Playlist
INNER JOIN PlaylistTrack ON Playlist.PlaylistId = PlaylistTrack.PlaylistId
JOIN Track ON PlaylistTrack.TrackId = Track.TrackId
JOIN Album ON Track.AlbumId = Album.AlbumId
JOIN Artist on Album.ArtistId = Artist.ArtistId
WHERE Playlist.Name = 'Grunge';


SELECT Playlist.Name as Playlist, COUNT(*) From Playlist 
INNER JOIN PlaylistTrack on Playlist.PlaylistId = PlaylistTrack.PlaylistId  
GROUP BY Playlist HAVING count(*) = 1;

select InvoiceDate, BillingAddress, Total from Invoice
order by InvoiceDate desc;


select EmployeeId, LastName, FirstName, HireDate from Employee
order by HireDate desc
limit 3;


select EmployeeId, LastName, FirstName, HireDate from Employee
order by HireDate desc, EmployeeId desc
limit 3;

