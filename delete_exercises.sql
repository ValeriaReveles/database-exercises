-- Write SELECT statements for:
-- Albums released after 1991
SELECT * FROM albums WHERE release_date > 1991;

-- Albums with the genre 'disco'
SELECT * FROM albums WHERE genre = 'disco';

-- Albums by 'Whitney Houston' (...or maybe an artist of your choice)
SELECT * FROM albums WHERE artist_name = 'Whitney Houston';


-- Convert the SELECT statements to DELETE:
-- DELETE key word does not work with * wildcard:

DELETE FROM albums WHERE release_date > 1991;

DELETE FROM albums WHERE genre = 'disco';

DELETE FROM albums WHERE artist_name = 'Whitney Houston';