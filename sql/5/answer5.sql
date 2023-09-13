select c.name as name, count(s.id) as sale_num
FROM category c
left join category_has_good chg on c.id = chg.category_id
left outer join good g on g.id = chg.good_id
left join sale_has_good shg on g.id = shg.good_id
left join sale s on s.id = shg.sale_id
group by c.name;