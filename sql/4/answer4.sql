select g.name as good_name
from category c
inner join category_has_good chg on c.id = chg.category_id
inner join good g on chg.good_id = g.id
where c.name = 'Cakes'
union
select g.name as good_name
from status s
inner join sale s2 on s.id =s2.status_id
inner join sale_has_good shg  on s2.id = shg.sale_id
inner join good g on shg.good_id =g.id
where s.name = 'delivering';