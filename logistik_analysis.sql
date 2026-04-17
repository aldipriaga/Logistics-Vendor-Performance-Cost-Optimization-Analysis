use logistik;

desc logistik;

select * from logistik;

-- buat segmentasi table --

create table dim_vendor as
select distinct
delivery_partner,
energy_type
from logistik;

-- buat kolom baru + jadikan primary key --
alter table dim_vendor
add column vendor_id int primary key auto_increment first;

select * from dim_vendor;

create table dim_products as
select distinct
package_type,
package_weight_kg,
weight_segment
from logistik;

-- buat kolom baru + jadikan primary key --
alter table dim_products
add column product_id int primary key auto_increment first;

select * from dim_products;

create table dim_gheograpy as
select distinct
region,
weather_condition,
weather_group
from logistik;

alter table dim_gheograpy
add column gheo_id int primary key auto_increment first;

select * from dim_gheograpy;

create table dim_delivery_service as 
select distinct
delivery_mode,
distance_km,
distance_segment,
vehicle_type
from logistik;

alter table dim_delivery_service
add column service_id int primary key auto_increment first;

select * from dim_delivery_service;

create table fact_orders as
select 
    v.vendor_id,
    p.product_id,
    g.gheo_id,
    s.service_id,
    l.delivery_id,
    l.cost_per_km,
    l.cost_per_kg,
    l.cost_per_unit,
    l.delivery_cost,
    l.delivery_time_hours,
    l.expected_time_hours,
    l.delayed,
    l.delivery_status,
    l.delivery_rating,
    l.gap_time_delivery
from logistik l
join dim_vendor v on l.delivery_partner = v.delivery_partner 
    and l.energy_type = v.energy_type
join dim_products p on l.package_type = p.package_type 
    and l.package_weight_kg = p.package_weight_kg 
    and l.weight_segment = p.weight_segment
join dim_gheograpy g on l.region = g.region 
    and l.weather_condition = g.weather_condition
join dim_delivery_service s on l.delivery_mode = s.delivery_mode 
    and l.distance_km = s.distance_km 
    and l.vehicle_type = s.vehicle_type;
    
alter table fact_orders
add column order_id int primary key auto_increment first;

alter table fact_orders
add constraint fk_fact_vendor
foreign key (vendor_id) references dim_vendor(vendor_id);

alter table fact_orders
add constraint fk_fact_product
foreign key (product_id) references dim_products(product_id);

alter table fact_orders
add constraint fk_fact_gheo
foreign key (gheo_id) references dim_gheograpy(gheo_id);

alter table fact_orders
add constraint fk_fact_service
foreign key (service_id) references dim_delivery_service(service_id);

desc fact_orders;

select * from fact_orders;

-- menjawab pertanyaan kondisi cuaca ekstrem (Stormy/Rainy) secara signifikan meningkatkan probabilitas keterlambatan pengiriman pada semua vendor? --
select 
    g.weather_condition,
    g.weather_group,
    avg(case when f.delayed = 'yes' then 1 else 0 end) * 100 as delay_probability_percentage
from fact_orders f
join dim_gheograpy g on f.gheo_id = g.gheo_id
group by 1, 2
order by delay_probability_percentage desc;

-- menjawab pertanyaan mode pengiriman Same Day memiliki risiko keterlambatan yang lebih tinggi dibandingkan mode Standard? --
select
	s.delivery_mode,
    avg(case when f.delayed = 'yes' then 1 else 0 end) * 100 as delay_probability_percentage
from fact_orders f
join dim_delivery_service s on f.service_id = s.service_id
group by 1
order by delay_probability_percentage desc;


