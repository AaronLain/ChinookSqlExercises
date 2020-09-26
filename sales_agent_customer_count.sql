select
count(c.FirstName) [Customers],
e.FirstName [Sales Agent]
from Employee e
	inner join Customer c
		on e.EmployeeId = c.SupportRepId
	inner join Invoice i
		on c.CustomerId = i.CustomerId
group by e.FirstName