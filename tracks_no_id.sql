select 
t.Name [Track],
ar.Name [Artist],
a.Title [Album],
m.Name [Media Type],
g.Name [Genre]
from Track t
	inner join InvoiceLine il
		on t.TrackId = il.TrackId
	inner join Album a
		on t.AlbumId = a.AlbumId
	inner join Artist ar
		on ar.ArtistId = a.ArtistId
	inner join MediaType m
		on t.MediaTypeId = m.MediaTypeId
	inner join Genre g
		on t.GenreId = g.GenreId
order by il.InvoiceLineId 