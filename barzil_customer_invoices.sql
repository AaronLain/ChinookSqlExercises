select 
c.FirstName + ' ' + c.LastName as Name, 
i.InvoiceId, 
i.InvoiceDate, 
i.BillingCountry 
from Invoice i
	right join Customer c
		on i.CustomerId = c.CustomerId
where BillingCountry = 'Brazil'
order by i.InvoiceId


