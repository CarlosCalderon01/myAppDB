/*
    // ----- // ----- // ----- // ----- // ----- // ----- //
    SCRIPT FOR CREATE TABLE
    // ----- // ----- // ----- // ----- // ----- // ----- //
*/

-- TABLA DE PAISES
CREATE TABLE GmtCountry (
    id serial PRIMARY KEY,
    name text NOT NULL,
    alfa2 character(2),
    alfa3 character(3),
    phone text,
    num text
);


-- TABLA DE ESTADOS
CREATE TABLE GmtState (
    id SERIAL PRIMARY KEY,
    gmtcountry_id SERIAL NOT NULL,
    name TEXT NOT NULL,
    FOREIGN KEY (GmtCountryid) REFERENCES GmtCountry(id)
);

-- TABLA DE CIUDAD
CREATE TABLE GmtCity (
    id SERIAL PRIMARY KEY,
    gmtstate_id SMALLINT NOT NULL,
    name TEXT NOT NULL,
    FOREIGN KEY (gmtstate_id) REFERENCES GmtState(id)
);

-- TABLA DE BARRIOS
CREATE TABLE GmtNeighborhood (
    id SERIAL PRIMARY KEY,
    GmtCityid SMALLINT NOT NULL,
    name TEXT NOT NULL,
    FOREIGN KEY (GmtCityid) REFERENCES GmtCity(id)
);

-- TABLA DE LENGUAJES
CREATE TABLE GmtLanguage (
    id SERIAL PRIMARY KEY,
    name TEXT NOT NULL,
    alfa2 CHAR(2)
);

-- TABLA DE GmtGenderV01
CREATE TABLE GmtGenderV01 (
    id BOOLEAN PRIMARY KEY,
    name VARCHAR(10),
    idchar CHAR(1)
);

-- TABLA DE GmtGenderVX
CREATE TABLE GmtGenderVX (
    id SERIAL PRIMARY KEY,
    name TEXT NOT NULL UNIQUE,
    idchar CHAR(1)
);

/*
    // ----- // ----- // ----- // ----- // ----- // ----- //
    SCRIPT FOR CREATE TABLE
    // ----- // ----- // ----- // ----- // ----- // ----- //
*/

/*
    // ----- // ----- // ----- // ----- // ----- // ----- //
    EXAMPLE SCRIPT FOR QUERY
    // ----- // ----- // ----- // ----- // ----- // ----- //
*/

SELECT * FROM public.gmtlanguage;
INSERT INTO public.gmtlanguage (id, name, iso6391, iso6392) VALUES (?, ?, ?, ?);

/*
    // ----- // ----- // ----- // ----- // ----- // ----- //
    EXAMPLE SCRIPT FOR QUERY
    // ----- // ----- // ----- // ----- // ----- // ----- //
*/

-- Task Table 1
CREATE TABLE TextingTask1 (
    serialid1 SERIAL,
    text1 TEXT,
    character1 character(10),
    char1 CHAR(1),
    money1 MONEY,
    date1 DATE,
    timestamp1 timestamp
);

-- Task Table 2
CREATE TABLE GmtCountry (
    id serial PRIMARY KEY,
    name text NOT NULL,
    alfa2 character(2),
    alfa3 character(3),
    phone text,
    num text
);

