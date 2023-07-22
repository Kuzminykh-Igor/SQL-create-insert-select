INSERT INTO genre (name)
VALUES ('metalcore'),
       ('death metal'),
       ('alternative metal'),
       ('rap'),
       ('jazz');

INSERT INTO artist (name)
VALUES ('Despised Icon'),
       ('Emmure'),
       ('Orbit Culture'),
       ('Behemoth'),
       ('Katatonia'),
       ('Cyhra'),
       ('Eminem'),
       ('Robin McKelle');

INSERT INTO genre_artist (id_genre, id_artist)
VALUES (1, 1),
       (1, 2),
       (2, 3),
       (2, 4),
       (3, 5),
       (3, 6),
       (4, 7),
       (5, 8);

INSERT INTO album (name, year_release)
VALUES ('Purgatory', 2019),
       ('Hindsight', 2020),
       ('Nija', 2021),
       ('I Loved You at Your Darkest', 2018),
       ('Dead Air', 2020),
       ('No Halos in Hell', 2019),
       ('Relapse', 2009),
       ('Melodic Canvas', 2018);

INSERT INTO album_artist (id_artist, id_album)
VALUES (1, 1),
       (2, 2),
       (3, 3),
       (4, 4),
       (5, 5),
       (6, 6),
       (7, 7),
       (8, 8);

INSERT INTO track (name, duration, id_album)
VALUES ('Snake in the Grass', 201, 1),
       ('Vies Anges', 173, 1),
       ('Trash Folder', 123, 2),
       ('Gypsy Disco', 121, 2),
       ('North Star of Nija', 314, 3),
       ('Mirrorslave', 298, 3),
       ('Ecclesia Diabolica Catholica', 289, 4),
       ('Bartzabel', 301, 4),
       ('My Twin', 218, 5),
       ('Deliberation', 237, 5),
       ('Out of My Life', 197, 6),
       ('Bye Bye Forever', 230, 6),
       ('My Mom', 319, 7),
       ('My Darling', 319, 7),
       ('It Wont End Up', 343, 8);

INSERT INTO collection (name, year_release)
VALUES ('Rhythmic waves', 2023),
       ('Sounds of emotions', 2022),
       ('Magic of melodies', 2021),
       ('Musical journeys', 2020),
       ('Fantastic sounds', 2019),
       ('Energy of rhythm', 2019),
       ('Legendary Harmony', 2020),
       ('Melancholic rhythm', 2018);

INSERT INTO track_collection (id_track, id_collection)
VALUES (1, 1),
       (4, 1),
       (5, 1),
       (12, 1),
       (2, 2),
       (3, 2),
       (6, 2),
       (10, 2),
       (3, 3),
       (5, 3),
       (9, 3),
       (12, 3),
       (1, 4),
       (4, 4),
       (9, 4),
       (13, 4),
       (7, 5),
       (8, 5),
       (11, 5),
       (15, 5),
       (1, 6),
       (7, 6),
       (11, 6),
       (15, 6),
       (2, 7),
       (4, 7),
       (9, 7),
       (10, 7),
       (8, 8),
       (13, 8),
       (14, 8),
       (15, 8);