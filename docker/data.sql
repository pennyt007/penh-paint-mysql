-- Load data from 'penh-dump.sql' into the 'penh-container' schema
CREATE DATABASE IF NOT EXISTS penh-paint-company;
USE penh-paint-company;
SOURCE /docker-entrypoint-initdb.d/penh-paint-company.sql;
CREATE DATABASE IF NOT EXISTS penh-paint-sidebargrid;
USE penh-paint-sidebargrid;
SOURCE /docker-entrypoint-initdb.d/penh-paint-sidebargrid.sql;
