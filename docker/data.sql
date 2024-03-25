-- Load data from 'penh-dump.sql' into the 'penh-container' schema
USE penh-paint-company;
SOURCE /docker-entrypoint-initdb.d/penh-paint-company.sql;
USE penh-paint-sidebargrid;
SOURCE /docker-entrypoint-initdb.d/penh-paint-sidebargrid.sql;
