-- Write SELECT statements to output each of the following with a caption:

-- All albums in your table.
SELECT record_name FROM albums;

-- All albums released before 1980.
SELECT record_name FROM albums WHERE release_date < 1980;

-- All albums by Michael Jackson:
SELECT * FROM albums WHERE artist_name = 'Michael Jackson';