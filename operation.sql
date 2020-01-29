
select * from tab;

select * from customer_info;

select * from hotel_info;

select * from hotel_status;

select * from transaction;

alter table customer_info add trip_no number;

alter table customer_info add trip_no number;

alter table customer_info drop column trip_no;



delete from customer_info where customer_id = 4;

select hotel_id,cost*200 from hotel_status;

select count(cost) as same_cost from hotel_status where cost=20000;

select avg(cost) as avg_cost from hotel_status;

select sum(cost) as sum_cost from hotel_status;

select hotel_id,sum(cost) from hotel_status group by hotel_id;