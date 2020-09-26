select 
t.Name,
il.InvoiceLineId
from Track t
	inner join InvoiceLine il
		on t.TrackId = il.TrackId
order by il.InvoiceLineId