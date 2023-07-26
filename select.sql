-- Название и продолжительность самого длительного трека.
SELECT name, duration
FROM track
WHERE duration = (SELECT MAX(duration) FROM track);

-- Название треков, продолжительность которых не менее 3,5 минут.
SELECT name, duration
FROM track
WHERE duration >= 210;

-- Названия сборников, вышедших в период с 2018 по 2020 год включительно.
SELECT name, year_release
FROM collection
WHERE year_release BETWEEN 2018 AND 2020;

-- Исполнители, чьё имя состоит из одного слова.
SELECT name
FROM artist
WHERE name NOT LIKE '% %';

-- Название треков, которые содержат слово «мой» или «my».
SELECT name
FROM track
WHERE name ILIKE 'my %'	-- Где слово в начале строки
OR name ILIKE '% my'	-- Где слово в конце строки
OR name ILIKE '% my %'	-- Где слово в середине строки
OR name ILIKE 'my'		-- Где название трека состоит из одного искомого слова
OR name ILIKE 'мой %'	-- Где слово в начале строки
OR name ILIKE '% мой'	-- Где слово в конце строки
OR name ILIKE '% мой %'	-- Где слово в середине строки
OR name ILIKE 'мой';		-- Где название трека состоит из одного искомого слова

-- Количество исполнителей в каждом жанре.
SELECT name, COUNT(*) 
FROM genre AS g
LEFT JOIN genre_artist AS ga ON g.id_genre = ga.id_genre
GROUP BY name
ORDER BY COUNT(*);

-- Количество треков, вошедших в альбомы 2019–2020 годов.
SELECT COUNT(track.id_track)
FROM track
JOIN album ON track.id_album = album.id_album
WHERE year_release BETWEEN 2019 AND 2020;

-- Средняя продолжительность треков по каждому альбому.
SELECT album.name, AVG(duration)
FROM album, track
WHERE track.id_album = album.id_album
GROUP BY album.name;

-- Все исполнители, которые не выпустили альбомы в 2020 году.
SELECT artist.name
FROM artist
WHERE id_artist NOT IN (SELECT id_artist 
                        FROM album_artist
                        JOIN album ON album.id_album = album_artist.id_album
                        WHERE year_release = 2020);
                        
-- Названия сборников, в которых присутствует конкретный исполнитель (Despised Icon).
SELECT c.name
FROM collection AS c
JOIN track_collection AS tc ON tc.id_collection = c.id_collection
JOIN track AS t ON t.id_track = tc.id_track 
JOIN album AS a ON a.id_album = t.id_album
JOIN album_artist AS aa ON aa.id_album = a.id_album
JOIN artist AS art ON art.id_artist = aa.id_artist
WHERE art.name = 'Despised Icon';