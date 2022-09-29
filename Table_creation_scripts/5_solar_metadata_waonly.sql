-- Table: public.postcode_metadata_waonly
DROP TABLE IF EXISTS public.postcode_metadata_waonly;
CREATE TABLE IF NOT EXISTS public.postcode_metadata_waonly
(
    index INTEGER NOT NULL,
	post_code INTEGER NOT NULL,
	suburb VARCHAR,
	state VARCHAR,
	lat double precision,
	long double precision,
    CONSTRAINT postcode_metadata_waonly_pkey PRIMARY KEY (index)
)
TABLESPACE pg_default;
ALTER TABLE IF EXISTS public.postcode_metadata_waonly
    OWNER to postgres;
SELECT * FROM postcode_metadata_waonly