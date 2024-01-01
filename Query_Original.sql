/*
# // ----- // ----- // ----- // ----- // ----- // ----- // ----- //
# Section 1 - Country, State, City, Neighborhood --> location
# // ----- // ----- // ----- // ----- // ----- // ----- // ----- //
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
    FOREIGN KEY (gmtcountry_id) REFERENCES GmtCountry(id)
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
    gmtcity_id SMALLINT NOT NULL,
    name TEXT NOT NULL,
    FOREIGN KEY (gmtcity_id) REFERENCES GmtCity(id)
);

/*
# // ----- // ----- // ----- // ----- // ----- // ----- // ----- //
# Section 2 - Language --> Language
# // ----- // ----- // ----- // ----- // ----- // ----- // ----- //
*/

-- TABLA DE LENGUAJES
CREATE TABLE GmtLanguage (
    id SERIAL PRIMARY KEY,
    name TEXT NOT NULL,
    iso6391 CHAR(2),
    iso6392 CHAR(3)
);

/*
# // ----- // ----- // ----- // ----- // ----- // ----- // ----- //
# Section 3 - GenderV01, GenderVX --> Genders
# // ----- // ----- // ----- // ----- // ----- // ----- // ----- //
*/

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
# // ----- // ----- // ----- // ----- // ----- // ----- // ----- //
# Section 4 - HoliDay --> Days
# // ----- // ----- // ----- // ----- // ----- // ----- // ----- //
*/

-- TABLA DE GmtHoliday
CREATE TABLE GmtHoliday (
    id SERIAL PRIMARY KEY,
    gmtcountry_id SERIAL NOT NULL,
    holiday DATE NOT NULL UNIQUE,
    titleday TEXT,
    descriptionday TEXT,
    FOREIGN KEY (gmtcountry_id) REFERENCES GmtCountry(id)
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

