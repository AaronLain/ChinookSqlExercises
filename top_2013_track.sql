select 
t.Name,
count(il.TrackId) [Track Count]
from Track t
	inner join InvoiceLine il
		on t.TrackId = il.TrackId
	inner join Invoice i
		on il.InvoiceId = i.InvoiceId
where year(i.InvoiceDate) = 2013
group by t.Name
order by count(il.TrackId) DESC