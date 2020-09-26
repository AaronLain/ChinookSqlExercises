select count(i.InvoiceId) [Invoice Count], i.BillingCountry [Billing Country]
from Invoice i
group by i.BillingCountry