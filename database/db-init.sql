USE controld-db;
CREATE TABLE test( 
    id int AUTO_INCREMENT primary key,
    stuff varchar(100)
);

CREATE UNIQUE INDEX id ON test();

INSERT INTO test(stuff) VALUES ('a');