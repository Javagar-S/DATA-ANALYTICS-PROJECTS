-- PostgreSQL database dump

-- Dumped from database version 17.2
-- Dumped by pg_dump version 17.2

-- Drop table if exists (to avoid conflicts)
DROP TABLE IF EXISTS public.netflix;

-- Create schema if not exists
CREATE SCHEMA IF NOT EXISTS public;

-- Create table netflix
CREATE TABLE public.netflix (
    show_id       VARCHAR(100),
    type          VARCHAR(200),
    title         VARCHAR(200),
    director      VARCHAR(300),
    casts         VARCHAR(2000),
    country       VARCHAR(200),
    date_added    VARCHAR(500),
    release_year  INTEGER,
    rating        VARCHAR(100),
    duration      VARCHAR(20),
    listed_in     VARCHAR(200),
    description   VARCHAR(500)
);

-- You can add data inserts here or load data separately
