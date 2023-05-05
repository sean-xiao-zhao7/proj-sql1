use restaurants;
select COUNT(booking_date) as num_bookings,
    FLOOR(SUM(billed)) as sum
FROM bookings
GROUP BY booking_date
HAVING SUM(billed) > 30
ORDER BY sum DESC;