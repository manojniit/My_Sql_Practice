select SaleDate, Amount, Customers, Boxes from sales;

select SaleDate, Amount, Customers, Amount/ Boxes from sales;

Select SaleDate, Amount, Customers, Amount / Boxes as 'Amount per box' from sales;

Select * from sales where Amount > 15000 and Boxes > 500;

Select * from sales where Amount > 15000 order by Amount;

Select * from sales where Amount > 15000 order by Amount desc;

Select * from sales where Customers > 100 order by Amount desc;

Select * from sales where GeoID = 'g1' order by PID, Amount desc;

Select * from sales where Amount > 10000 and SaleDate >= '2022-01-01';

Select SaleDate, Amount from sales where Amount > 10000 and year(SaleDate) = 2022 order by Amount desc;

select * from sales where Boxes > 0 and Boxes <= 50;

select * from sales where Boxes between 0 and 50;

select SaleDate, amount, Boxes, weekday(SaleDate) as 'Day of Week' from sales;

select SaleDate, amount, Boxes, weekday(SaleDate) as 'Day of Week' from sales where weekday(SaleDate) = 4;

Select * from people;

select * from people where Team = 'Delish' or Team = 'Jucies'; 

Select * from people where Team in ('Delish', 'Jucies');

select * from people where Salesperson like 'M%';

select * from people where Salesperson like '%M%';

select * from sales;

select SaleDate, Amount,
				case 	when amount < 1000 then 'Under 1k'
						when amount < 5000 then 'Under 5k'
                        when amount < 10000 then 'Under 10k'
					else '10k or more'
				end as 'Amount Category'
from sales;


