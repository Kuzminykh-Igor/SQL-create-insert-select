CREATE TABLE IF NOT EXISTS genre (
	id_genre SERIAL PRIMARY KEY,
	name VARCHAR(64) UNIQUE NOT NULL
);
	
CREATE TABLE IF NOT EXISTS artist (
	id_artist SERIAL PRIMARY KEY,
	name VARCHAR(64) NOT NULL
);

CREATE TABLE IF NOT EXISTS genre_artist (
	id_genre INTEGER REFERENCES genre(id_genre),
	id_artist INTEGER REFERENCES artist(id_artist),
	CONSTRAINT genre_artist_pk PRIMARY KEY (id_genre, id_artist)
);
	
CREATE TABLE IF NOT EXISTS album (
	id_album SERIAL PRIMARY KEY,
	name VARCHAR(64) NOT NULL,
	year_release SMALLINT NOT NULL CHECK (year_release >= 1900)
);
	
CREATE TABLE IF NOT EXISTS album_artist (
	id_artist INTEGER REFERENCES artist(id_artist),
	id_album INTEGER REFERENCES album(id_album),
	CONSTRAINT album_artist_pk PRIMARY KEY (id_artist, id_album)
);

CREATE TABLE IF NOT EXISTS track (
	id_track SERIAL PRIMARY KEY,
	name VARCHAR(64) NOT NULL,
	duration INTEGER NOT NULL CHECK (duration > 0),
	id_album INTEGER REFERENCES album(id_album)
);

CREATE TABLE IF NOT EXISTS collection (
	id_collection SERIAL PRIMARY KEY,
	name VARCHAR(64) NOT NULL,
	year_release SMALLINT NOT NULL CHECK (year_release >= 1900)
);

CREATE TABLE IF NOT EXISTS track_collection (
	id_track INTEGER REFERENCES track(id_track),
	id_collection INTEGER REFERENCES collection(id_collection),
	CONSTRAINT track_collection_pk PRIMARY KEY (id_track, id_collection)
);