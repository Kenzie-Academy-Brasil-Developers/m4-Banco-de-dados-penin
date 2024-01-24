SELECT
    *
FROM
    books;

SELECT
    *
FROM
    books
    JOIN books_categories ON books.id = books_categories."bookId"
    JOIN categories ON categories."id" = books_categories."categoryId"
WHERE
    categories."name" = 'Fantasia';
    

SELECT
    books."id" AS "booksId",
    books."name" AS "booksName",
    books."pages" AS "booksPages",
    books."creatdAt" AS "booksCreatAt",
    books."updatedAt" AS "booksUpdateAt",
    categories."id" AS "categoryId",
    categories."name" AS "categoryName",
    categories."creatdAt" AS "categoryCreatAt",
    categories."updatedAt" AS "categoryUpdateAt"
FROM
    books
    JOIN books_categories ON books."id" = books_categories."bookId"
    JOIN categories ON categories."id" = books_categories."categoryId";


SELECT
    books."id" AS "booksId",
    books."name" AS "booksName",
    books."pages" AS "booksPages",
    books."creatdAt" AS "booksCreatAt",
    books."updatedAt" AS "booksUpdateAt",
    authors."id" AS "authorId",
    authors."name" AS "authorName",
    authors."bio" AS "aothorBIO"
FROM
    books
    JOIN authors ON authors."id" = books."authorId";