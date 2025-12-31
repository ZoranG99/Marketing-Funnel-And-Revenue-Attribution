/* Question 3: Revenue Attribution & AOV
   Goal: Determine the total financial impact of each marketing channel.
*/

SELECT 
    f.origin,
    COUNT(DISTINCT i.order_id) AS total_orders,
    ROUND(SUM(i.price)::numeric, 2) AS total_revenue_gmv,
    ROUND(AVG(i.price)::numeric, 2) AS average_order_value_aov,
    -- Calculate Revenue per Lead to see "Lead Value"
    ROUND((SUM(i.price) / COUNT(DISTINCT f.mql_id))::numeric, 2) AS revenue_per_lead
FROM marketing_funnel f
INNER JOIN order_items i ON f.seller_id = i.seller_id
WHERE f.is_bridge_seller = TRUE
GROUP BY f.origin
ORDER BY total_revenue_gmv DESC;