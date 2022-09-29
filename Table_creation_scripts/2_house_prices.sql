-- Table: public.house_prices

-- DROP TABLE IF EXISTS public.house_prices;

CREATE TABLE IF NOT EXISTS public.house_prices
(
    suburb character varying COLLATE pg_catalog."default" NOT NULL,
    price integer,
    bedrooms integer,
    bathrooms integer,
    garage integer,
    land_area real,
    floor_area real,
    cbd_dist real,
    nearest_stn_dist real,
    date_sold character varying COLLATE pg_catalog."default",
    nearest_sch_dist real
)

TABLESPACE pg_default;

ALTER TABLE IF EXISTS public.house_prices
    OWNER to postgres;