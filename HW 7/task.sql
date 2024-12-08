-- 1) Create a View `samsBills`
CREATE VIEW samsBills AS
SELECT 
    waiters.first_name,
    waiters.surname,
    bills.bill_date,
    customers.cust_name,
    bills.bill_total
FROM 
    bills
JOIN waiters ON bills.waiter_id = waiters.waiter_id
JOIN customers ON bills.customer_id = customers.customer_id
WHERE 
    waiters.first_name = 'Sam' AND waiters.surname = 'Pitt';

-- 2) Query Using `samsBills` to See Bills Over £400
SELECT *
FROM samsBills
WHERE bill_total > 400;

-- 3) Create a View `roomTotals`
CREATE VIEW roomTotals AS
SELECT 
    rooms.room_name,
    SUM(bills.bill_total) AS total_sum
FROM 
    bills
JOIN rooms ON bills.room_id = rooms.room_id
GROUP BY 
    rooms.room_name;

-- 4) Create a View `teamTotals`
CREATE VIEW teamTotals AS
SELECT 
    CONCAT(waiters.first_name, ' ', waiters.surname) AS headwaiter_name,
    SUM(bills.bill_total) AS total_sum
FROM 
    bills
JOIN waiters ON bills.waiter_id = waiters.waiter_id
GROUP BY 
    waiters.first_name, waiters.surname;
