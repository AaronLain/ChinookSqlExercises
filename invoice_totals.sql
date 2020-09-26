select  
i.Total,
c.FirstName + ' ' + c.LastName as CustomerName,
i.BillingCountry,
e.FirstName + ' ' + e.LastName as SalesAgentName
from Employee e
	inner join Customer c
		on e.EmployeeId = c.SupportRepId
	inner join Invoice i
		on c.CustomerId = i.CustomerId
order by SalesAgentName