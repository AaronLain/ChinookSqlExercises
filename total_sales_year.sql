select sum(all Total) [Total]
from Invoice
where year(InvoiceDate) between 2009 and 2011
group by year(InvoiceDate) 

