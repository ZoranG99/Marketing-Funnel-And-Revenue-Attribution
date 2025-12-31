/* Question 2: Sales Velocity - Average Time to Close
   Goal: Identify which marketing origins provide the "fastest" revenue.
*/

SELECT 
    origin,
    COUNT(won_date) AS closed_deals,
    -- Calculate average difference in days
    ROUND(AVG(EXTRACT(DAY FROM (won_date - first_contact_date))), 1) AS avg_days_to_close,
    -- Also get the Min and Max to see the range
    MIN(EXTRACT(DAY FROM (won_date - first_contact_date))) AS min_days,
    MAX(EXTRACT(DAY FROM (won_date - first_contact_date))) AS max_days
FROM marketing_funnel
WHERE won_date IS NOT NULL
GROUP BY origin
HAVING COUNT(won_date) > 5 -- Filter out origins with too few deals for a meaningful average
ORDER BY avg_days_to_close ASC;