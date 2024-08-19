SELECT 
    customer_id, 
    COUNT(*) AS rental_count
FROM 
    Rental
GROUP BY 
    customer_id
ORDER BY 
    rental_count DESC
OFFSET 0 ROWS FETCH NEXT 3 ROWS ONLY;