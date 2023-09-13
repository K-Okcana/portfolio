select s2.name as source_name , SUM(s.sale_sum) as  sale_sum
from sale s 
inner join client c  on c.id = s.client_id 
right outer join source s2 on c.source_id = s2.id 
group by s2.name;