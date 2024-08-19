SELECT 
    c.customer_id, 
    c.name + ' ' + c.lastname AS fullname, 
    r.room_id
FROM 
    Rental 
JOIN 
    customer c ON rt.customer_id = c.customer_id
JOIN 
    room r ON rt.room_id = r.room_id;