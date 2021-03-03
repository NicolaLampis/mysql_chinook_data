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


select Track.Name as Track, sum(InvoiceLine.UnitPrice * InvoiceLine.Quantity) from Track 
inner join InvoiceLine on Track.TrackId = InvoiceLine.TrackId
where Track.Name = "The Woman King";


SELECT Artist.Name AS Artist, COUNT(Track.TrackId) AS Track FROM Artist
JOIN Album ON Artist.ArtistId = Album.ArtistId
JOIN Track ON Album.AlbumId = Track.AlbumId
GROUP BY Artist.Name
ORDER BY COUNT(Artist.Name)
DESC LIMIT 5;


INSERT INTO Track (Name, AlbumId, MediaTypeId, GenreId, Composer, Milliseconds, Bytes, UnitPrice) 
VALUES ("Twilight", 348, 2, 1, "U2", 210000, 1234, 0.99);

INSERT INTO Track (Name, AlbumId, MediaTypeId, GenreId, Composer, Milliseconds, Bytes, UnitPrice) 
VALUES ("An Cat Dubh", 348, 2, 1, "U2", 110000, 1234, 0.99);

INSERT INTO Track (Name, AlbumId, MediaTypeId, GenreId, Composer, Milliseconds, Bytes, UnitPrice) 
VALUES ("Into the Heart", 348, 2, 1, "U2", 200000, 1234, 0.99);

INSERT INTO Track (Name, AlbumId, MediaTypeId, GenreId, Composer, Milliseconds, Bytes, UnitPrice) 
VALUES ("Out of Control", 348, 2, 1, "U2", 100000, 1234, 0.99);

INSERT INTO Track (Name, AlbumId, MediaTypeId, GenreId, Composer, Milliseconds, Bytes, UnitPrice) 
VALUES ("Stories for Boys", 348, 2, 1, "U2", 150000, 1234, 0.99);

INSERT INTO Track (Name, AlbumId, MediaTypeId, GenreId, Composer, Milliseconds, Bytes, UnitPrice) 
VALUES ("The Ocean", 348, 2, 1, "U2", 175000, 1234, 0.99);

INSERT INTO Track (Name, AlbumId, MediaTypeId, GenreId, Composer, Milliseconds, Bytes, UnitPrice) 
VALUES ("A Day Without Me", 348, 2, 1, "U2", 185000, 1234, 0.99);


INSERT INTO Track
    (Name, AlbumId, MediaTypeId, GenreId, Composer, Milliseconds, Bytes, UnitPrice)
VALUES
    ("Another Time, Another Place", 348, 2, 1, "U2", 210000, 1234, 0.99),
    ("The Electric Co.", 348, 2, 1, "U2", 200000, 1234, 0.99),
    ("Shadows and Tall Trees", 348, 2, 1, "U2", 150000, 1234, 0.99);