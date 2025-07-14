CREATE TABLE zepto (
  sku_id SERIAL PRIMARY KEY,
  category VARCHAR(120),
  name VARCHAR(150) NOT NULL,
  mrp NUMERIC(8,2),
  discountPercent NUMERIC(5,2),
  availableQuantity INTEGER,
  discountedSellingPrice NUMERIC(8,2),
  weightInGms INTEGER,
  outOfStock BOOLEAN,
  quantity INTEGER
);


select count(*) from zepto;

select * from zepto limit 10;

--null values
SELECT * FROM zepto
WHERE name IS NULL
OR
category IS NULL
OR
mrp IS NULL
OR
discountPercent IS NULL
OR
discountedSellingPrice IS NULL
OR
weightInGms IS NULL
OR
availableQuantity IS NULL
OR
outOfStock IS NULL
OR
quantity IS NULL;

--different product categories
select distinct category from zepto order by category;


select * from zepto where outOfStock='false' limit 10;

select outOfStock from zepto group by outOfStock;

--products in stock vs out of stock
select outOfStock , count(sku_id) from zepto
group by outOfStock;

--product names present multiple times 
select name , count(sku_id) as product_present_multiple_times
from zepto
group by name
having count(sku_id)>1
order by count(sku_id) desc;

--data cleaning
--products with price = 0
select * from zepto
where mrp=0 and discountedSellingPrice=0;

select * from zepto
where mrp=0 or discountedSellingPrice=0;

delete from zepto where mrp=0;

select count(*) from zepto;

select name , mrp , discountedSellingPrice from zepto;
--convert paise to rupees
update zepto
set mrp=mrp/100.0,
discountedSellingPrice = discountedSellingPrice/100.0;

select name , mrp , discountedSellingPrice from zepto;

-- Find the Top Discounted Products
select name , discountPercent from zepto
order by discountPercent desc;

--Average Selling Price by Category

select category , avg(discountedSellingPrice) as avg_selling_price from zepto
group by category;

-- Total Revenue Estimate (if all stock sells)
select sum(discountedSellingPrice * availableQuantity) as total_revenue from zepto;

-- Most Common Out-of-Stock Items
select name from zepto
 where outOfStock = TRUE;

-- Products Heaviest in Weight
select name , weightInGms from zepto
order by weightInGms desc
limit 10;

-- Products with poor discount but still high weight.
 
select name , weightInGms, discountedSellingPrice from zepto
where discountedSellingPrice < 1000
order by weightInGms desc;

--Price per gram/kg.
update zepto
set weightInGms= weightInGms/1000;

select name , weightInGms as weightIn_KG, discountedSellingPrice from zepto
where discountedSellingPrice < 1000
order by weightIn_KG desc;

-- update the column name
ALTER TABLE zepto
RENAME COLUMN weightInGms TO weight_In_KG;

select weight_In_KG from zepto 
order by weight_In_KG desc;

--Q7.Group the products into categories like Low, Medium, Bulk.
SELECT DISTINCT name, weight_In_KG,
CASE WHEN weight_In_KG < 1 THEN 'Low'
	WHEN weight_In_KG < 5 THEN 'Medium'
	ELSE 'Bulk'
	END AS weight_category
FROM zepto
order by weight_In_KG asc;

ALTER TABLE zepto
ADD COLUMN weight_category VARCHAR(20);

UPDATE zepto
SET weight_category = CASE
    WHEN weight_In_KG < 1 THEN 'Low'
    WHEN weight_In_KG < 5 THEN 'Medium'
    ELSE 'Bulk'
END;


SELECT * FROM zepto order by sku_id;





