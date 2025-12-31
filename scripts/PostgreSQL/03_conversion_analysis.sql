/* Question 1: Lead-to-Deal Conversion Rate by Origin
Goal: Identify which channels provide the highest quality leads.
*/

SELECT 
    origin,
    COUNT(mql_id) AS total_leads,
    COUNT(won_date) AS closed_deals,
    ROUND((COUNT(won_date)::decimal / COUNT(mql_id)::decimal) * 100, 2) AS conversion_rate_pct
FROM marketing_funnel
GROUP BY origin
HAVING COUNT(mql_id) > 50 -- Filter out tiny channels for better statistical significance
ORDER BY conversion_rate_pct DESC;