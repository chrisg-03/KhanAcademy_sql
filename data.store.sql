CREATE DATABASE app_store;

USE app_store;

CREATE TABLE reservation(
    table_id INTEGER PRIMARY KEY AUTO_INCREMENT,
    `date` TEXT,
    `time` INTEGER,
    booking_name TEXT,
    pax INTEGER,
    tel TEXT,
    email TEXT
);

INSERT INTO reservation(`date`, `time`, booking_name, pax, tel, email) VALUES ("08/03/23", 1200, "John", 2, "0112345678", "johndoe@gmail.com");
INSERT INTO reservation(`date`, `time`, booking_name, pax, tel, email) VALUES ("08/03/23", 1230, "Kim", 2, "0123456789", "kimpossible@gmail.com");
INSERT INTO reservation(`date`, `time`, booking_name, pax, tel, email) VALUES ("08/03/23", 1245, "Eason", 4, "0198367584", "easonator@gmail.com");
INSERT INTO reservation(`date`, `time`, booking_name, pax, tel, email) VALUES ("08/03/23", 1245, "Muhammad", 2, "0162759012", "mightym@gmail.com");
INSERT INTO reservation(`date`, `time`, booking_name, pax, tel, email) VALUES ("08/03/23", 1245, "Chong Wei", 7, "0137295629", "lcw@gmail.com");
INSERT INTO reservation(`date`, `time`, booking_name, pax, tel, email) VALUES ("08/03/23", 1330, "Alex", 2, "0127603874", "alexanderdgreat@gmail.com");
INSERT INTO reservation(`date`, `time`, booking_name, pax, tel, email) VALUES ("08/03/23", 1400, "Cleo", 4, "0163669372", "cleopetra@gmail.com");
INSERT INTO reservation(`date`, `time`, booking_name, pax, tel, email) VALUES ("08/03/23", 1800, "Oscar", 6, "01284903823", "ossie_reborn@gmail.com");
INSERT INTO reservation(`date`, `time`, booking_name, pax, tel, email) VALUES ("08/03/23", 1900, "James", 8, "0194829684", "jam.ming@gmail.com");
INSERT INTO reservation(`date`, `time`, booking_name, pax, tel, email) VALUES ("08/03/23", 1930, "Leonard", 2, "0195739576", "lenny@gmail.com");
INSERT INTO reservation(`date`, `time`, booking_name, pax, tel, email) VALUES ("08/03/23", 2000, "Jackie", 5, "0122295834", "jackiejames@gmail.com");

SELECT *
FROM reservation;

UPDATE reservation SET tel = "0195639275"
    WHERE booking_name = "Leonard" AND `time` = 1930;
UPDATE reservation SET pax = 4
    WHERE booking_name = "Kim" AND `time` = 1230;

SELECT *
FROM reservation;

DELETE FROM reservation 
    WHERE booking_name = "Jackie" AND `time` = 2000;

SELECT *
FROM reservation;

