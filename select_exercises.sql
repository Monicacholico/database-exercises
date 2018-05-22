USE codeup_test_db;
SELECT * FROM albums WHERE artist like '%Pink Floyd%';
SELECT * FROM albums WHERE artist like '%Sgt. Pepper''s Lonely Hearts Club Band%';
SELECT * FROM albums WHERE artist like '%Nevermind%';
SELECT * FROM albums WHERE release_date BETWEEN 1990 AND 2000;
SELECT * FROM albums WHERE sales < 20000000;
SELECT * FROM albums WHERE genre like '%rock%';