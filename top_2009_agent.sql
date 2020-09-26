select top 1
sum(i.Total) [Total Sales],
e.FirstName [Sales Person]
from Employee e
	inner join Customer c
		on e.EmployeeId = c.SupportRepId
	inner join Invoice i
		on c.CustomerId = i.CustomerId
where year(i.InvoiceDate) = 2009
group by e.FirstName
