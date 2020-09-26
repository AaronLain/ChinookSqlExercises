select 
t.Name [Track],
ar.Name [Artist],
il.InvoiceLineId [Line Item Id]
from Track t
	inner join InvoiceLine il
		on t.TrackId = il.TrackId
	inner join Album a
		on t.AlbumId = a.AlbumId
	inner join Artist ar
		on ar.ArtistId = a.ArtistId
order by il.InvoiceLineId 