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

-- ORDER BY ACRESCENTE
select id, account_id, total_amt_usd
from orders
order by account_id ASC, total_amt_usd

-- WHERE
SELECT *
FROM orders
WHERE gloss_amt_usd >= 1000
LIMIT 5;

SELECT *
FROM orders
WHERE total_amt_usd < 500
LIMIT 10;

SELECT name, website, primary_poc
FROM accounts
WHERE name = 'Exxon Mobil';

-- AS
SELECT id, account_id, standard_amt_usd/standard_qty AS unit_price
FROM orders
LIMIT 10;

SELECT id, account_id,
   poster_amt_usd/(standard_amt_usd + gloss_amt_usd + poster_amt_usd) AS post_per
FROM orders
LIMIT 10;

--LIKE
SELECT name
FROM accounts
WHERE name LIKE 'C%';

-- IN
SELECT name, primary_poc, sales_rep_id
FROM accounts
WHERE name IN ('Walmart', 'Target', 'Nordstrom');

--NOT
SELECT name, primary_poc, sales_rep_id
FROM accounts
WHERE name NOT IN ('Walmart', 'Target', 'Nordstrom');

SELECT name
FROM accounts
WHERE name NOT LIKE 'C%';
