CREATE VIEW CurrentGuests AS
SELECT 
    room_id, 
    customer_id
FROM 
    Rental
WHERE 
    checkin_date = CAST(GETDATE() AS DATE)
    AND (checkout_date IS NULL OR checkout_date >= CAST(GETDATE() AS DATE));