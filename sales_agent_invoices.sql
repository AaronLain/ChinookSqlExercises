select top 1
sum(i.Total) [Total Sales],
e.FirstName
from Employee e
	inner join Customer c
		on e.EmployeeId = c.SupportRepId
	inner join Invoice i
		on c.CustomerId = i.CustomerId
group by e.FirstName