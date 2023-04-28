-- 코드를 입력하세요
SELECT PRODUCT_CODE, sum(PRICE * SALES_AMOUNT) as SALES
from PRODUCT as p
inner join OFFLINE_SALE as o
on p.PRODUCT_ID = o.PRODUCT_ID
group by p.PRODUCT_ID
order by sum(PRICE * SALES_AMOUNT) desc, PRODUCT_CODE;