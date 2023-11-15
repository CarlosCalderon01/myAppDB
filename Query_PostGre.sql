/*
    # // ----- // ----- // ----- // ----- // ----- //
    # Section 1 - Country, State, City, location
    # // ----- // ----- // ----- // ----- // ----- //
*/
-- TABLA 1 - // ----- // ----- // ----- // ----- // ----- //

-- Table: public.gmtcountry

-- DROP TABLE IF EXISTS public.gmtcountry;

CREATE TABLE IF NOT EXISTS public.gmtcountry
(
    id integer NOT NULL DEFAULT nextval('gmtcountry_id_seq'::regclass),
    name text COLLATE pg_catalog."default" NOT NULL,
    alfa2 character(2) COLLATE pg_catalog."default",
    alfa3 character(3) COLLATE pg_catalog."default",
    phone text COLLATE pg_catalog."default",
    num text COLLATE pg_catalog."default",
    CONSTRAINT gmtcountry_pkey PRIMARY KEY (id)
)

TABLESPACE pg_default;

ALTER TABLE IF EXISTS public.gmtcountry
    OWNER to postgres;

-- TABLA 2 - // ----- // ----- // ----- // ----- // ----- //

-- Table: public.gmtstate

-- DROP TABLE IF EXISTS public.gmtstate;

CREATE TABLE IF NOT EXISTS public.gmtstate
(
    id integer NOT NULL DEFAULT nextval('gmtstate_id_seq'::regclass),
    gmtcountry_id integer NOT NULL DEFAULT nextval('gmtstate_gmtcountryid_seq'::regclass),
    name text COLLATE pg_catalog."default" NOT NULL,
    CONSTRAINT gmtstate_pkey PRIMARY KEY (id),
    CONSTRAINT gmtstate_gmtcountryid_fkey FOREIGN KEY (gmtcountry_id)
        REFERENCES public.gmtcountry (id) MATCH SIMPLE
        ON UPDATE NO ACTION
        ON DELETE NO ACTION
)

TABLESPACE pg_default;

ALTER TABLE IF EXISTS public.gmtstate
    OWNER to postgres;

-- TABLA 3 - // ----- // ----- // ----- // ----- // ----- //

-- Table: public.gmtcity

-- DROP TABLE IF EXISTS public.gmtcity;

CREATE TABLE IF NOT EXISTS public.gmtcity
(
    id integer NOT NULL DEFAULT nextval('gmtcity_id_seq'::regclass),
    gmtstate_id smallint NOT NULL,
    name text COLLATE pg_catalog."default" NOT NULL,
    CONSTRAINT gmtcity_pkey PRIMARY KEY (id),
    CONSTRAINT gmtcity_gmtstate_id_fkey FOREIGN KEY (gmtstate_id)
        REFERENCES public.gmtstate (id) MATCH SIMPLE
        ON UPDATE NO ACTION
        ON DELETE NO ACTION
)

TABLESPACE pg_default;

ALTER TABLE IF EXISTS public.gmtcity
    OWNER to postgres;

/*
    # // ----- // ----- // ----- // ----- // ----- //
    # Section 1 - Finish Section
    # // ----- // ----- // ----- // ----- // ----- //
*/

/*
    # // ----- // ----- // ----- // ----- // ----- //
    # Section x - 
    # // ----- // ----- // ----- // ----- // ----- //
*/

/*
    # // ----- // ----- // ----- // ----- // ----- //
    # Section x - Finish Section
    # // ----- // ----- // ----- // ----- // ----- //
*/

/*
    # // ----- // ----- // ----- // ----- // ----- //
    # Section x - 
    # // ----- // ----- // ----- // ----- // ----- //
*/

/*
    # // ----- // ----- // ----- // ----- // ----- //
    # Section x - Finish Section
    # // ----- // ----- // ----- // ----- // ----- //
*/

/*
    # // ----- // ----- // ----- // ----- // ----- //
    # Section x - 
    # // ----- // ----- // ----- // ----- // ----- //
*/

/*
    # // ----- // ----- // ----- // ----- // ----- //
    # Section x - Finish Section
    # // ----- // ----- // ----- // ----- // ----- //
*/

/*
    # // ----- // ----- // ----- // ----- // ----- //
    # Section x - 
    # // ----- // ----- // ----- // ----- // ----- //
*/

/*
    # // ----- // ----- // ----- // ----- // ----- //
    # Section x - Finish Section
    # // ----- // ----- // ----- // ----- // ----- //
*/

/*
    # // ----- // ----- // ----- // ----- // ----- //
    # Section x - 
    # // ----- // ----- // ----- // ----- // ----- //
*/

/*
    # // ----- // ----- // ----- // ----- // ----- //
    # Section x - Finish Section
    # // ----- // ----- // ----- // ----- // ----- //
*/

/*
    # // ----- // ----- // ----- // ----- // ----- //
    # Section x - 
    # // ----- // ----- // ----- // ----- // ----- //
*/

/*
    # // ----- // ----- // ----- // ----- // ----- //
    # Section x - Finish Section
    # // ----- // ----- // ----- // ----- // ----- //
*/


