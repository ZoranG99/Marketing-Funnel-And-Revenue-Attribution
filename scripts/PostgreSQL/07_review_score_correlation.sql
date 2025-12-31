/* Question 5: Customer Satisfaction vs. Marketing Origin
   Goal: Ensure marketing channels are bringing in high-quality sellers.
*/

SELECT
	f.origin,
	COUNT(r.review_id) AS total_reviews,
	ROUND(AVG(r.review_score)::NUMERIC, 2) AS average_review_score,
	-- Calculate the % of 5-star reviews
	ROUND((COUNT(CASE WHEN r.review_score = 5 THEN 1 END)::decimal / COUNT(r.review_id)) * 100, 2) AS five_star_rate_pct
FROM marketing_funnel f
INNER JOIN order_items i ON f.seller_id = i.seller_id
INNER JOIN order_reviews r ON i.order_id = r.order_id
WHERE f.is_bridge_seller = TRUE
GROUP BY f.origin
HAVING COUNT(r.review_id) > 20
ORDER BY average_review_score DESC;


