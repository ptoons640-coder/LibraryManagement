USE library_management;

SELECT * FROM Members;

SELECT * FROM Authors;

SELECT * FROM Books;

SELECT * FROM Borrowings;

SELECT
    b.borrowing_id,
    m.member_name,
    bk.title,
    a.author_name,
    b.borrow_date,
    b.return_date
FROM Borrowings b
JOIN Members m
    ON b.member_id = m.member_id
JOIN Books bk
    ON b.book_id = bk.book_id
JOIN Authors a
    ON bk.author_id = a.author_id;