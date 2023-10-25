/*
    // ----- // ----- // ----- // ----- // ----- // ----- //
    SCRIPT FOR CREATE TABLE
    // ----- // ----- // ----- // ----- // ----- // ----- //
*/

-- TABLA DE PAISES
CREATE TABLE GmtCountry (
    id SERIAL PRIMARY KEY,
    name TEXT NOT NULL,
    alfa2 CHAR(2),
    alfa3 CHAR(3),
    phone VARCHAR(6),
    num VARCHAR(6)
);

-- TABLA DE ESTADOS
CREATE TABLE GmtState (
    id SERIAL PRIMARY KEY,
    GmtCountryid SMALLINT NOT NULL,
    name TEXT NOT NULL,
    FOREIGN KEY (GmtCountryid) REFERENCES GmtCountry(id)
);

-- TABLA DE CIUDAD
CREATE TABLE GmtCity (
    id SERIAL PRIMARY KEY,
    GmtStateid SMALLINT NOT NULL,
    name TEXT NOT NULL,
    FOREIGN KEY (GmtStateid) REFERENCES GmtState(id)
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
    iso6391 CHAR(2),
    iso6392 CHAR(3)
);

/*
    // ----- // ----- // ----- // ----- // ----- // ----- //
    SCRIPT FOR CREATE TABLE
    // ----- // ----- // ----- // ----- // ----- // ----- //
*/

/*
    // ----- // ----- // ----- // ----- // ----- // ----- //
    SCRIPT FOR INSERT QUERY
    // ----- // ----- // ----- // ----- // ----- // ----- //
*/

INSERT INTO public.gmtcountry(
	id, name, alfa2, alfa3, phone, num)
	VALUES (?, ?, ?, ?, ?, ?);

INSERT INTO public.gmtstate(
	id, gmtcountryid, name)
	VALUES (?, ?, ?);

/*
    // ----- // ----- // ----- // ----- // ----- // ----- //
    SCRIPT FOR INSERT QUERY
    // ----- // ----- // ----- // ----- // ----- // ----- //
*/