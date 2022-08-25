USE valeria;

DROP TABLE IF EXISTS albums;

CREATE TABLE albums (
    id INT UNSIGNED NOT NULL AUTO_INCREMENT,
    artist_name VARCHAR(50) NOT NULL ,
    record_name  VARCHAR(100) NOT NULL,
    release_date INT UNSIGNED NOT NULL,
    sales DOUBLE PRECISION NOT NULL,
    genre VARCHAR(255) NOT NULL,

    PRIMARY KEY (id)
);