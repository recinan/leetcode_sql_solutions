/* 1251. Average Selling Price */
SELECT P.product_id, ROUND(COALESCE(1.0*SUM(US.units*P.price)/SUM(US.units),0),2) as average_price
FROM Prices P 
FULL OUTER JOIN UnitsSold US ON P.product_id = US.product_id
AND US.purchase_date BETWEEN P.start_date AND P.end_date
GROUP BY P.product_id