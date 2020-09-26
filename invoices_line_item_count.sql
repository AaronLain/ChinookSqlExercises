select i.InvoiceId [Invoice Id], count(il.InvoiceLineId) [Line Item Count]
from Invoice i
	inner join InvoiceLine il
		on i.InvoiceId = il.InvoiceId
group by i.InvoiceId