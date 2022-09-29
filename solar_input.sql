-- Table: public.solar_metadata_waonly

-- DROP TABLE IF EXISTS public.solar_metadata_waonly;

CREATE TABLE IF NOT EXISTS public.solar_metadata_waonly
(
    post_code integer NOT NULL,
    installation_qty integer,
    rated_output double precision,
    CONSTRAINT solar_metadata_waonly_pkey PRIMARY KEY (post_code)
)

TABLESPACE pg_default;

ALTER TABLE IF EXISTS public.solar_metadata_waonly
    OWNER to postgres;