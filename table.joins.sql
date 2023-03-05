/* sources 
https://disctopia.com/8-famous-musicians-and-their-unusual-hobbies/
https://www.nme.com/photos/the-weird-and-wonderful-secret-hobbies-of-your-favourite-musicians-2579092
https://www.thetoptens.com/music/hobbies-musicians/
*/

USE sql_practice;

CREATE TABLE music(
    id INT PRIMARY KEY,
    mceleb_id INT,
    `name` TEXT,
    songs TEXT,
    `year` INT
);

CREATE TABLE hobbies(
    celeb_id INT PRIMARY KEY AUTO_INCREMENT,
    hobby TEXT
);

INSERT INTO music VALUES (1, 1, "Michael Jackson", "Billie Jean", 1982);
INSERT INTO music VALUES (2, 1, "Michael Jackson", "Thriller", 1982);
INSERT INTO music VALUES (3, 1, "Michael Jackson", "Beat it", 1982);
INSERT INTO music VALUES (4, 1, "Michael Jackson", "Man in the Mirror", 1988);
INSERT INTO music VALUES (5, 2, "John Coltrane", "Naima", 1959);
INSERT INTO music VALUES (6, 2, "John Coltrane", "Naima", 1959);
INSERT INTO music VALUES (7, 3, "Tom Jones", "Delilah", 1968);
INSERT INTO music VALUES (8, 3, "Tom Jones", "Sex Bomb", 1999);
INSERT INTO music VALUES (9, 4, "Courtney Love", "Doll Parts", 1994);
INSERT INTO music VALUES (10, 5, "Jack White", "Seven Nation Army", 2003);
INSERT INTO music VALUES (11, 5, "Jack White", "Steady, as She Goes", 2006);
INSERT INTO music VALUES (12, 6, "Charles Watts", "Paint it, Black", 1966);
INSERT INTO music VALUES (13, 7, "Rod Stewart", "Da Ya Think I'm Sexy?", 1978);
INSERT INTO music VALUES (14, 7, "Rod Stewart", "Sailing", 1975);
INSERT INTO music VALUES (15, 8, "Flea", "Californication", 1999);
INSERT INTO music VALUES (16, 8, "Flea", "Can't Stop", 2002);
INSERT INTO music VALUES (17, 8, "Flea", "Black Summer", 2022);
INSERT INTO music VALUES (18, 9, "Eric Clapton", "Tears in Heaven", 1992);
INSERT INTO music VALUES (19, 9, "Eric Clapton", "Layla", 1970);

INSERT INTO hobbies VALUES (1, "Mechanic");
INSERT INTO hobbies VALUES (2, "Gardening");
INSERT INTO hobbies VALUES (3, "Architecture");
INSERT INTO hobbies VALUES (4, "Collecting Dolls");
INSERT INTO hobbies VALUES (5, "Upholstering");
INSERT INTO hobbies VALUES (6, "Vintage Car Collector");
INSERT INTO hobbies VALUES (7, "Train Modelling");
INSERT INTO hobbies VALUES (8, "Chess");
INSERT INTO hobbies VALUES (9, "Fishing");


SELECT music.name, hobbies.hobby
FROM music
    JOIN hobbies
    ON music.mceleb_id = hobbies.celeb_id
GROUP BY music.name;

