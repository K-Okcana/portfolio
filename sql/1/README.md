
## Исходные данные

База данных магазина `store` следующей структуры:

![Структура](store.png)

### Задание

Выведите список источников, из которых не было клиентов, либо клиенты пришедшие из которых не совершали заказов или отказывались от заказов. Под клиентами, которые отказывались от заказов, необходимо понимать клиентов, у которых есть заказы, которые на момент выполнения запроса находятся в состоянии 'rejected'. В запросе необходимо использовать оператор UNION для объединения выборок по разным условиям.

[Решение](answer.sql)