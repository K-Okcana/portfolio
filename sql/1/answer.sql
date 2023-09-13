SELECT s.name as source_name from source s 
WHERE NOT EXISTS (SELECT * FROM client c
WHERE c.source_id = s.id)
union        
SELECT s2.name as source_name from source s2 
inner join client c2 on c2.source_id = s2.id 
inner join sale s3 on c2.id = s3.client_id 
inner join status s4  on s3.status_id = s4.id 
where s4.name = 'rejected';