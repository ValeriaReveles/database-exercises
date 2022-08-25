-- Write SELECT statements to output each of the following with a caption:
-- All albums in your table.
SELECT record_name FROM albums;

-- All albums released before 1980.
SELECT record_name FROM albums WHERE release_date < 1980;

-- All albums by Michael Jackson:
SELECT * FROM albums WHERE artist_name = 'Michael Jackson';

-- After each SELECT add an UPDATE statement to:
-- Make all the albums 10 times more popular (sales * 10)
-- update entire table "albums" and use "SET" to set the value
UPDATE albums SET sales = (sales * 10);
SELECT sales FROM albums;

-- Move all the albums before 1980 back to the 1800s.
UPDATE albums SET release_date = 1800 WHERE release_date < 1980;
SELECT * FROM albums WHERE release_date = 1800;

-- Change 'Michael Jackson' to 'Peter Jackson'
UPDATE albums SET artist_name = 'Peter Jackson' WHERE  artist_name = 'Michael Jackson';
SELECT * FROM albums WHERE artist_name = 'Peter Jackson';