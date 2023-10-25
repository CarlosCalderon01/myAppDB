/*
    // ----- // ----- // ----- // ----- // ----- // ----- //
    SCRIPT FOR CREATE TABLE
    // ----- // ----- // ----- // ----- // ----- // ----- //
*/

-- TABLA DE PAISES
CREATE TABLE IF NOT EXISTS public.gmtcountry
(
    id smallint NOT NULL,
    name text COLLATE pg_catalog."default" NOT NULL,
    alfa2 character(2) COLLATE pg_catalog."default",
    alfa3 character(3) COLLATE pg_catalog."default",
    phone character varying(6) COLLATE pg_catalog."default",
    num character varying(6) COLLATE pg_catalog."default",
    CONSTRAINT gmtcountry_pkey PRIMARY KEY (id)
)

TABLESPACE pg_default;

ALTER TABLE IF EXISTS public.gmtcountry
    OWNER to postgres;

-- TABLA DE ESTADOS
 CREATE TABLE IF NOT EXISTS public.gmtstate
(
    id smallint NOT NULL,
    gmtcountryid smallint NOT NULL,
    name text COLLATE pg_catalog."default" NOT NULL,
    CONSTRAINT gmtstate_pkey PRIMARY KEY (id),
    CONSTRAINT gmtstate_gmtcountryid_fkey FOREIGN KEY (gmtcountryid)
        REFERENCES public.gmtcountry (id) MATCH SIMPLE
        ON UPDATE NO ACTION
        ON DELETE NO ACTION
)

TABLESPACE pg_default;

ALTER TABLE IF EXISTS public.gmtstate
    OWNER to postgres;

-- TABLA DE CIUDADES

-- TABLA DE BARRIOS

-- TABLA DE LENGUAJES
/*
    // ----- // ----- // ----- // ----- // ----- // ----- //
    SCRIPT FOR CREATE TABLE
    // ----- // ----- // ----- // ----- // ----- // ----- //
*/

-- Query for create a ?

-- Query for create a ?

-- Query for create a ?

-- Query for create a ?

-- Query for create a ?

