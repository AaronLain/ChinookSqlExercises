select top 1
sum(i.Total) [Total Sales],
i.BillingCountry [Country]
from Invoice i
group by i.BillingCountry
order by sum(i.Total) DESC