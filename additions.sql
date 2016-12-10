
-- table contours
CREATE TABLE contours (
	contour geometry,
	ele integer
	);


-- table params
CREATE TABLE params (
	key varchar(20),
	txt varchar(20),
	num integer,
	CONSTRAINT pk_key PRIMARY KEY (key)
	);

INSERT INTO params VALUES ('buffer','256',256);
INSERT INTO params VALUES ('y_bleed','128',128);
INSERT INTO params VALUES ('x_bleed','128',128);
