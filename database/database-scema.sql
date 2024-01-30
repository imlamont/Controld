USE controld;

CREATE TABLE `Games`(
    `id` BIGINT UNSIGNED NOT NULL AUTO_INCREMENT PRIMARY KEY,
    `name` CHAR(255) NOT NULL,
    `developer` CHAR(255) NULL
);

CREATE TABLE `Users` (
    `id` BIGINT UNSIGNED NOT NULL AUTO_INCREMENT PRIMARY KEY,
    `email` CHAR(255) NOT NULL,
    `password` CHAR(255) NOT NULL,
    `username` CHAR(255) NOT NULL UNIQUE
);

CREATE TABLE `Reviews`(
    `id` BIGINT UNSIGNED NOT NULL AUTO_INCREMENT PRIMARY KEY,
    `userid` BIGINT UNSIGNED NOT NULL,
    `gameid` BIGINT UNSIGNED NOT NULL,
    `text` TEXT NOT NULL,
    `rating` INT UNSIGNED NOT NULL,
    
    FOREIGN KEY (userid) REFERENCES Users(id),
    FOREIGN KEY (gameid) REFERENCES Games(id)
);

CREATE TABLE `Lists`(
    `userid` BIGINT UNSIGNED NOT NULL,
    `gameid` BIGINT UNSIGNED NOT NULL,
    `rank` INT UNSIGNED NOT NULL,
    
    PRIMARY KEY (userid, gameid),
    FOREIGN KEY (userid) REFERENCES Users(id),
    FOREIGN KEY (gameid) REFERENCES Games(id)
);