select * from sales;

select * from people;

select s.SaleDate, s.amount, p.Salesperson, s.SPID, p.SPID from sales s join people p on p.SPID = s.SPID;

select s.saledate, s.amount, pr.Product from sales s left join products pr on pr.pid = s.pid;

select s.SaleDate, s.amount, p.Salesperson, pr.Product, p.Team from sales s join people p on p.SPID = s.SPID join products pr on pr.pid = s.pid;

select s.SaleDate, s.amount, p.Salesperson, pr.Product, p.Team from sales s join people p on p.SPID = s.SPID join products pr on pr.pid = s.pid where s.Amount < 500 and p.Team = 'Delish';

select s.SaleDate, s.amount, p.Salesperson, pr.Product, p.Team from sales s join people p on p.SPID = s.SPID join products pr on pr.pid = s.pid join geo g on g.geoid = s.geoid where s.Amount < 500 and p.Team  = '' and g.Geo in ('New Zealand', 'India');

select s.SaleDate, s.amount, p.Salesperson, pr.Product, p.Team from sales s join people p on p.SPID = s.SPID join products pr on pr.pid = s.pid join geo g on g.geoid = s.geoid where s.Amount < 500 and p.Team  = '' and g.Geo in ('New Zealand', 'India') order by SaleDate;

select geoID, sum(amount), avg(amount), sum(boxes) from sales group by geoID;

select g.geo, sum(amount), avg(amount), sum(boxes) from sales s join geo g on s.GeoID = g.GeoID group by g.Geo;

select pr.Category, p.team, sum(boxes), sum(amount)  from sales s join people p on p.spid = s.spid join products pr on pr.pid = s.pid group by pr.category, p.team;

select pr.product, sum(s.amount) as 'Total amount' from sales s join products pr on pr.pid = s.pid group by pr.Product  order by 'Total amount' desc;

select pr.product, sum(s.amount) as 'Total amount' from sales s join products pr on pr.pid = s.pid group by pr.Product  order by 'Total amount' desc limit 10;