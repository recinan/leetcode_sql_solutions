/* 1068. Product Sales Analysis I */
SELECT P.product_name, S.year, S.price 
FROM Product AS P
RIGHT JOIN Sales AS S ON P.product_id = S.product_id
GROUP BY P.product_name , S.year, S.price ,S.sale_id