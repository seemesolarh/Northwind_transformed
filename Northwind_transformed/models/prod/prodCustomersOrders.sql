{{ config(materialized='table') }}
select c."customerId", 
       c."contactTitle",
       c."phone",
       c."companyName",
	   c."contactName",
	   o."orderId",
	   o."employeeId",
	   o."freight",
	   o."orderDate",
	   o."requiredDate",
	   o."shipCountry",
	   o."shippedDate",
	   o."shipCity",
	   o."shipPostalCode",
	   o."shipAddress"
from {{ ref('stgcustomers') }} c
Join{{ ref('stgorders') }}o
On c."customerId" = o."customerId"