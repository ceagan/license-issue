---
-- #%L
-- License Issue
-- %%
-- Copyright (C) 2016 Example Company
-- %%
-- Lorem ipsum dolor sit amet, consectetur adipiscing elit. Maecenas
-- sollicitudin aliquet dapibus. Proin auctor, tellus vel sagittis
-- consequat, velit orci porta magna, at faucibus sapien nulla et urna.
-- Duis fermentum nec lorem vitae commodo. Sed massa risus, viverra
-- pharetra tempus sed, dictum vel lorem. Donec vel erat at dui scelerisque
-- tristique. In egestas laoreet consequat. Aliquam eu justo ut erat
-- gravida varius.
-- -
-- Praesent feugiat odio magna, vitae facilisis quam
-- dapibus aliquam. Praesent aliquet, augue vel venenatis tristique, neque
-- massa aliquam felis, eget sodales nunc massa ut ipsum. Nunc nulla nisi,
-- consectetur vitae fringilla ut, convallis id ante. Nunc non arcu id
-- nulla finibus fermentum. Vivamus eu eros congue, semper enim eget,
-- tempor mauris. Cum sociis natoque penatibus et magnis dis parturient
-- montes, nascetur ridiculus mus. Nunc maximus finibus condimentum.
-- #L%
---

--- Create EXAMPLE user
CREATE USER example WITH PASSWORD 'example';
--- Create EXAMPLE database
CREATE DATABASE example OWNER example;
--- Grant EXAMPLE user access to the EXAMPLE database
GRANT ALL PRIVILEGES ON DATABASE example to example;

--- Switch to the EXAMPLE database
\c example

-- Enable PostGIS (includes raster)
CREATE EXTENSION postgis;
-- Enable Topology
CREATE EXTENSION postgis_topology;
-- fuzzy matching needed for Tiger
CREATE EXTENSION fuzzystrmatch;
-- Enable US Tiger Geocoder
CREATE EXTENSION postgis_tiger_geocoder;
