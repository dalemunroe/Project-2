CREATE TABLE house_prices (
SUBURB	varchar	PRIMARY KEY,
PRICE	int	,
BEDROOMS	int	,
BATHROOMS	int	,
GARAGE	int	,
LAND_AREA	real	,
FLOOR_AREA	real	,
CBD_DIST	real	,
NEAREST_STN_DIST	real	,
DATE_SOLD	varchar	,
NEAREST_SCH_DIST	real	
);

select * FROM house_prices