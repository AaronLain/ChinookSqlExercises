select distinct p.Name [Playlist], count(t.TrackId) [No. of Tracks]
from Playlist p
	inner join PlaylistTrack pt
		on p.PlaylistId = pt.PlaylistId
	inner join Track t
		on pt.TrackId = t.TrackId
group by p.Name