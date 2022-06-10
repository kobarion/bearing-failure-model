----------------------------------------------
-- CRWU Public Bearing Dataset
----------------------------------------------

CREATE TABLE IF NOT EXISTS crwu_normal_raw (
   de       DOUBLE PRECISION NULL,
   fe       DOUBLE PRECISION NULL,
   fault    TEXT NULL,
   rpm      INTEGER NULL
);


CREATE TABLE IF NOT EXISTS crwu_de_12k_raw (
   de                DOUBLE PRECISION NULL,
   fe                DOUBLE PRECISION NULL,
   ba                DOUBLE PRECISION NULL,
   fault             TEXT NULL,
   fault_diameter    VARCHAR(3) NULL,
   fault_type        TEXT NULL,
   rpm               INTEGER NULL
);


CREATE TABLE IF NOT EXISTS crwu_de_48k_raw (
   de                DOUBLE PRECISION NULL,
   fe                DOUBLE PRECISION NULL,
   fault             TEXT NULL,
   fault_diameter    VARCHAR(3) NULL,
   fault_type        TEXT NULL,
   rpm               INTEGER NULL
);


CREATE TABLE IF NOT EXISTS crwu_fe_12k_raw (
   de                DOUBLE PRECISION NULL,
   fe                DOUBLE PRECISION NULL,
   ba                DOUBLE PRECISION NULL,
   fault             TEXT NULL,
   fault_diameter    VARCHAR(3) NULL,
   fault_type        TEXT NULL,
   rpm               INTEGER NULL
);