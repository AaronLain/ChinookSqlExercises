select FirstName, LastName, CustomerId, Country 
from Customer 
except 
select FirstName, LastName, CustomerId, Country = 'USA'
from Customer
