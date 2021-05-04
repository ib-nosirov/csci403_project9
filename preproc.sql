CREATE TABLE btc (
    day DATE,
    price REAL,
    total_btc REAL,
    hash_rate REAL,
    difficulty REAL,
    output_volume REAL
);

CREATE TABLE tsla (
    day DATE,
    price REAL
);

CREATE TABLE pollution (
    country_name TEXT,
    country_code TEXT,
    2010 FLOAT,
    2011 FLOAT,
    2012 FLOAT,
    2013 FLOAT,
    2014 FLOAT,
    2015 FLOAT,
    2016 FLOAT,
    2017 FLOAT,
);

\COPY btc FROM 'C:\Users\NoorE\Downloads\BitCoin.csv' DELIMITER ',' CSV HEADER;
\COPY tsla FROM 'C:\Users\NoorE\Downloads\TSLA.csv' DELIMITER ',' CSV HEADER;
\COPY pollution FROM 'C:\Users\NoorE\Downloads\pollution.csv' DELIMITER ',' CSV HEADER;

GRANT USAGE ON SCHEMA nmalik TO inosirov, davidesposito;
GRANT ALL ON TABLE btc TO inosirov, davidesposito;
GRANT ALL ON TABLE tsla TO inosirov, davidesposito;
GRANT ALL ON TABLE pollution TO inosirov, davidesposito;