-- Create the database from a file;

BEGIN;
CREATE DATABASE codsworth;
USE codsworth;

CREATE TABLE grouping (
    -- to group together different events
                                        id INT PRIMARY KEY,
                                        name STRING,
                                        color STRING
);

CREATE TABLE events
(
    id INT PRIMARY KEY,
    name STRING,
    all_day BOOLEAN,
    grouping INT NOT NULL REFERENCES grouping (id),
    starts TIMESTAMP,
    finishes TIMESTAMP,
    repeats INTERVAL,
    location STRING,
    fixed BOOLEAN
);

INSERT INTO grouping VALUES (0, 'default', '0799c9');

END;
