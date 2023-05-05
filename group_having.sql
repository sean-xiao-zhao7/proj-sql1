use restaurants;
select DATE_FORMAT(
        FROM_UNIXTIME(`booking_date`),
        '%Y-%m-%d %H:%i:%s'
    ) as date,
    COUNT(booking_date) as num_bookings,
    SUM(billed) as sum
FROM bookings
GROUP BY booking_date
HAVING SUM(billed) > 30
ORDER BY sum DESC;