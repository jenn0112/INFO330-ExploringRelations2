/*(Question-1.sql)*/
select Customers.FirstName || ' ' || Customers.LastName AS FullName,
Invoices.InvoiceId, Invoices.InvoiceDate, Invoices.BillingCountry
from customers
join Invoices On Customers.CustomerId = Invoices.CustomerId
where Invoices.Billingcountry = 'Brazil';

/*(Question-2.sql)*/
select firstname, lastname, invoiceid
from employees
inner join invoices on employees.employeeid = invoices.invoiceid;

/*(Question-3.sql)*/
select tracks.name as track_name, artists.name as artist_name, invoice_items.InvoiceLineId as invoice_id
from invoice_items
inner join tracks on invoice_items.TrackId = tracks.TrackId
inner join albums on tracks.AlbumId = albums.AlbumId
inner join artists on albums.ArtistId = artists.ArtistId
order by invoice_items.InvoiceId ASC;

