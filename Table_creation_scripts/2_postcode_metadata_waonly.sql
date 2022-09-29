-- Table: public.postcode_metadata_waonly

-- DROP TABLE IF EXISTS public.postcode_metadata_waonly;

CREATE TABLE IF NOT EXISTS public.postcode_metadata_waonly
(
    index integer NOT NULL,
    post_code integer NOT NULL,
    suburb character varying COLLATE pg_catalog."default",
    state character varying COLLATE pg_catalog."default",
    lat double precision,
    "long" double precision,
    CONSTRAINT postcode_metadata_waonly_pkey PRIMARY KEY (index),
    CONSTRAINT fk_post_code FOREIGN KEY (post_code)
        REFERENCES public.solar_metadata_waonly (post_code) MATCH SIMPLE
        ON UPDATE NO ACTION
        ON DELETE NO ACTION
        NOT VALID
)

TABLESPACE pg_default;

ALTER TABLE IF EXISTS public.postcode_metadata_waonly
    OWNER to postgres;
-- Index: fki_p

-- DROP INDEX IF EXISTS public.fki_p;

CREATE INDEX IF NOT EXISTS fki_p
    ON public.postcode_metadata_waonly USING btree
    (post_code ASC NULLS LAST)
    TABLESPACE pg_default;