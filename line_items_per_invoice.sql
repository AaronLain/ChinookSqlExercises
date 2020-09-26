select count(Quantity) [Counts], InvoiceId 
from InvoiceLine
group by InvoiceId