{{ config(materialized='table') }}
SELECT ca."categoryId",
       ca."categoryName",
	   ca."description",
	   p."productId",
	   p."productName",
	   p."supplierId",
	   p."quantityPerUnit",
	   p."unitPrice",
	   p."unitsInStock",
	   p."unitsOnOrder",
	   p."reorderLevel",
	   p."discontinued"
from {{ ref('stgcategories') }} ca
Join{{ ref('stgproducts') }} p 
on ca."categoryId" = p."categoryId"      