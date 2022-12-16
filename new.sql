SELECT *
FROM orders
LIMIT 10;


-- ORDER BY
select id, occurred_at, total_amt_usd
from orders
ORDER BY occurred_at
LIMIT 10

-- ORDER BY DECRESCENTE
select id, account_id, total_amt_usd
from orders
order by account_id DESC, total_amt_usd
