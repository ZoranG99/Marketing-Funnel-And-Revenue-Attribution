/* Question 4: Business Segment Profitability
   Goal: Identify high-performing seller niches.
*/

SELECT
	f.business_segment,
	COUNT(DISTINCT f.seller_id) AS total_sellers,
	ROUND(SUM(i.price)::NUMERIC, 2) AS actual_gmv,
	-- Calculate Average Revenue per Seller in this segment
	ROUND((SUM(i.price) / COUNT(DISTINCT f.seller_id))::NUMERIC, 2) AS avg_revenue_per_seller
FROM marketing_funnel f
INNER JOIN order_items i ON f.seller_id = i.seller_id
WHERE f.is_bridge_seller = TRUE
	AND f.business_segment <> 'unknown'
GROUP BY f.business_segment
ORDER BY actual_gmv DESC
LIMIT 10;


