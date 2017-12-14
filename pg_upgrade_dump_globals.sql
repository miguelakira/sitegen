--
-- PostgreSQL database cluster dump
--

SET default_transaction_read_only = off;

SET client_encoding = 'UTF8';
SET standard_conforming_strings = on;

--
-- Roles
--


-- For binary upgrade, must preserve pg_authid.oid
SELECT pg_catalog.binary_upgrade_set_next_pg_authid_oid('10'::pg_catalog.oid);

ALTER ROLE "akira" WITH SUPERUSER INHERIT CREATEROLE CREATEDB LOGIN REPLICATION BYPASSRLS;






--
-- Database creation
--

CREATE DATABASE "mydb" WITH TEMPLATE = template0 OWNER = "akira";
-- For binary upgrade, set datfrozenxid and datminmxid.
UPDATE pg_catalog.pg_database SET datfrozenxid = '858', datminmxid = '1' WHERE datname = 'mydb';
-- For binary upgrade, set datfrozenxid and datminmxid.
UPDATE pg_catalog.pg_database SET datfrozenxid = '858', datminmxid = '1' WHERE datname = 'postgres';
-- For binary upgrade, set datfrozenxid and datminmxid.
UPDATE pg_catalog.pg_database SET datfrozenxid = '858', datminmxid = '1' WHERE datname = 'template1';
REVOKE CONNECT,TEMPORARY ON DATABASE "template1" FROM PUBLIC;
GRANT CONNECT ON DATABASE "template1" TO PUBLIC;


--
-- PostgreSQL database cluster dump complete
--

