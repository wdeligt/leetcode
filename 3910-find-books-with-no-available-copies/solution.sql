# Write your MySQL query statement below
WITH b AS 
(
    SELECT book_id, COUNT(book_id) AS current_borrowers
    FROM borrowing_records
    WHERE return_date IS NULL
    GROUP BY book_id
)
SELECT b.book_id, title, author, genre, publication_year, current_borrowers
FROM b
JOIN library_books l
ON b.book_id = l.book_id
WHERE b.current_borrowers = l.total_copies 
ORDER BY current_borrowers DESC, title

