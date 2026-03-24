--
-- PostgreSQL database dump
--

-- Dumped from database version 16.6
-- Dumped by pg_dump version 16.6

-- Started on 2024-12-09 18:20:45

SET statement_timeout = 0;
SET lock_timeout = 0;
SET idle_in_transaction_session_timeout = 0;
SET client_encoding = 'UTF8';
SET standard_conforming_strings = on;
SELECT pg_catalog.set_config('search_path', '', false);
SET check_function_bodies = false;
SET xmloption = content;
SET client_min_messages = warning;
SET row_security = off;

SET default_tablespace = '';

SET default_table_access_method = heap;

--
-- TOC entry 215 (class 1259 OID 52682)
-- Name: authors; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.authors (
    "AuthorID" integer NOT NULL,
    "Name" character varying(100),
    "Nationality" character varying(50),
    "BirthYear" integer
);


--
-- TOC entry 216 (class 1259 OID 52685)
-- Name: book_performance; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.book_performance (
    "PerformanceID" integer NOT NULL,
    "ISBN" character varying(13),
    "RegionID" integer,
    "SalesQuality" integer,
    "Revenue" numeric(12,2),
    "AverageRating" numeric(3,2)
);


--
-- TOC entry 217 (class 1259 OID 52688)
-- Name: books; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.books (
    "ISBN" character varying(13) NOT NULL,
    "Title" character varying(255),
    "AuthorID" integer,
    "PublicationYear" integer,
    "Genre" character varying(50),
    "PublisherID" integer
);


--
-- TOC entry 218 (class 1259 OID 52691)
-- Name: publishers; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.publishers (
    "PublisherID" integer NOT NULL,
    "Name" character varying(100),
    "HeadquartersLocation" character varying(100)
);


--
-- TOC entry 219 (class 1259 OID 52694)
-- Name: regions; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.regions (
    "RegionID" integer NOT NULL,
    "RegionName" character varying(50),
    "Country" character varying(50)
);


--
-- TOC entry 4855 (class 0 OID 52682)
-- Dependencies: 215
-- Data for Name: authors; Type: TABLE DATA; Schema: public; Owner: -
--

INSERT INTO public.authors VALUES (1, 'Charles Dickens', 'British', 1812);
INSERT INTO public.authors VALUES (2, 'Antoine de Saint-Exupery', 'French', 1900);
INSERT INTO public.authors VALUES (3, 'Paulo Coelho', 'Brazilian', 1947);
INSERT INTO public.authors VALUES (4, 'J.K. Rowling', 'British', 1965);
INSERT INTO public.authors VALUES (5, 'Agatha Christie', 'British', 1890);
INSERT INTO public.authors VALUES (6, 'Cao Xueqin', 'Chinese', 1715);
INSERT INTO public.authors VALUES (7, 'J.R.R. Tolkien', 'British', 1892);
INSERT INTO public.authors VALUES (8, 'Lewis Carroll', 'British', 1832);
INSERT INTO public.authors VALUES (9, 'C.S. Lewis', 'British', 1898);
INSERT INTO public.authors VALUES (10, 'H. Rider Haggard', 'British', 1856);
INSERT INTO public.authors VALUES (11, 'Dan Brown', 'American', 1964);
INSERT INTO public.authors VALUES (12, 'J.D. Salinger', 'American', 1919);
INSERT INTO public.authors VALUES (13, 'Robert James Waller', 'American', 1939);
INSERT INTO public.authors VALUES (14, 'Gabriel Garcia Marquez', 'Colombian', 1927);
INSERT INTO public.authors VALUES (15, 'Vladimir Nabokov', 'Russian-American', 1899);
INSERT INTO public.authors VALUES (16, 'Johanna Spyri', 'Swiss', 1827);
INSERT INTO public.authors VALUES (17, 'Benjamin Spock', 'American', 1903);
INSERT INTO public.authors VALUES (18, 'Lucy Maud Montgomery', 'Canadian', 1874);
INSERT INTO public.authors VALUES (19, 'Anna Sewell', 'British', 1820);


--
-- TOC entry 4856 (class 0 OID 52685)
-- Dependencies: 216
-- Data for Name: book_performance; Type: TABLE DATA; Schema: public; Owner: -
--

INSERT INTO public.book_performance VALUES (1, '9780141439600', 1, 200000000, 720000000.00, 3.87);
INSERT INTO public.book_performance VALUES (2, '9780156012195', 2, 200000000, 990000000.00, 4.32);
INSERT INTO public.book_performance VALUES (3, '9780061122415', 3, 150000000, 1380000000.00, 3.89);
INSERT INTO public.book_performance VALUES (4, '9780747532699', 1, 120000000, 1728000000.00, 4.47);
INSERT INTO public.book_performance VALUES (5, '9780062073488', 1, 100000000, 495000000.00, 4.28);
INSERT INTO public.book_performance VALUES (6, '9780140442939', 4, 100000000, 280000000.00, 4.20);
INSERT INTO public.book_performance VALUES (7, '9780547928227', 1, 100000000, 495000000.00, 4.28);
INSERT INTO public.book_performance VALUES (8, '9780486275437', 1, 100000000, 360000000.00, 4.03);
INSERT INTO public.book_performance VALUES (9, '9780064471046', 1, 85000000, 420750000.00, 4.21);
INSERT INTO public.book_performance VALUES (10, '9780375759055', 1, 83000000, 298800000.00, 3.70);
INSERT INTO public.book_performance VALUES (11, '9780307474278', 5, 80000000, 1600000000.00, 3.88);
INSERT INTO public.book_performance VALUES (12, '9780439064873', 1, 77000000, 1108800000.00, 4.43);
INSERT INTO public.book_performance VALUES (13, '9780316769488', 5, 65000000, 747500000.00, 3.81);
INSERT INTO public.book_performance VALUES (14, '9780439136365', 1, 65000000, 936000000.00, 4.56);
INSERT INTO public.book_performance VALUES (15, '9780439139601', 1, 65000000, 936000000.00, 4.55);
INSERT INTO public.book_performance VALUES (16, '9780439358071', 1, 65000000, 1170000000.00, 4.50);
INSERT INTO public.book_performance VALUES (17, '9780439785969', 1, 65000000, 1170000000.00, 4.57);
INSERT INTO public.book_performance VALUES (18, '9780545010221', 1, 65000000, 1170000000.00, 4.62);
INSERT INTO public.book_performance VALUES (19, '9780446364492', 5, 60000000, 960000000.00, 3.64);
INSERT INTO public.book_performance VALUES (20, '9780060883287', 6, 50000000, 460000000.00, 4.17);
INSERT INTO public.book_performance VALUES (21, '9780679723165', 2, 50000000, 517500000.00, 3.89);
INSERT INTO public.book_performance VALUES (22, '9780140366792', 7, 50000000, 180000000.00, 3.99);
INSERT INTO public.book_performance VALUES (23, '9780671537630', 5, 50000000, 275000000.00, 3.95);
INSERT INTO public.book_performance VALUES (24, '9780553213133', 8, 50000000, 275000000.00, 4.28);
INSERT INTO public.book_performance VALUES (25, '9780141321035', 1, 50000000, 180000000.00, 3.98);


--
-- TOC entry 4857 (class 0 OID 52688)
-- Dependencies: 217
-- Data for Name: books; Type: TABLE DATA; Schema: public; Owner: -
--

INSERT INTO public.books VALUES ('9780141439600', 'A Tale of Two Cities', 1, 1859, 'Historical fiction', 1);
INSERT INTO public.books VALUES ('9780156012195', 'The Little Prince', 2, 1943, 'Fantasy, children''s fiction', 2);
INSERT INTO public.books VALUES ('9780061122415', 'The Alchemist', 3, 1988, 'Fantasy', 3);
INSERT INTO public.books VALUES ('9780747532699', 'Harry Potter and the Philosopher''s Stone', 4, 1997, 'Fantasy, children''s fiction', 4);
INSERT INTO public.books VALUES ('9780062073488', 'And Then There Were None', 5, 1939, 'Mystery', 5);
INSERT INTO public.books VALUES ('9780140442939', 'Dream of the Red Chamber', 6, 1791, 'Family saga', 6);
INSERT INTO public.books VALUES ('9780547928227', 'The Hobbit', 7, 1937, 'Fantasy, children''s fiction', 7);
INSERT INTO public.books VALUES ('9780486275437', 'Alice''s Adventures in Wonderland', 8, 1865, 'Fantasy, absurdist fiction', 8);
INSERT INTO public.books VALUES ('9780064471046', 'The Lion, the Witch and the Wardrobe', 9, 1950, 'Fantasy, children''s fiction', 9);
INSERT INTO public.books VALUES ('9780375759055', 'She: A History of Adventure', 10, 1887, 'Adventure', 10);
INSERT INTO public.books VALUES ('9780307474278', 'The Da Vinci Code', 11, 2003, 'Mystery thriller', 11);
INSERT INTO public.books VALUES ('9780439064873', 'Harry Potter and the Chamber of Secrets', 4, 1998, 'Fantasy, children''s fiction', 4);
INSERT INTO public.books VALUES ('9780316769488', 'The Catcher in the Rye', 12, 1951, 'Coming-of-age', 12);
INSERT INTO public.books VALUES ('9780439136365', 'Harry Potter and the Prisoner of Azkaban', 4, 1999, 'Fantasy, children''s fiction', 4);
INSERT INTO public.books VALUES ('9780439139601', 'Harry Potter and the Goblet of Fire', 4, 2000, 'Fantasy, children''s fiction', 4);
INSERT INTO public.books VALUES ('9780439358071', 'Harry Potter and the Order of Phoenix', 4, 2003, 'Fantasy, children''s fiction', 4);
INSERT INTO public.books VALUES ('9780439785969', 'Harry Potter and the Half-Blood Prince', 4, 2005, 'Fantasy, children''s fiction', 4);
INSERT INTO public.books VALUES ('9780545010221', 'Harry Potter and the Deathly Hallows', 4, 2007, 'Fantasy, children''s fiction', 4);
INSERT INTO public.books VALUES ('9780446364492', 'The Bridges of Madison County', 13, 1992, 'Romance', 13);
INSERT INTO public.books VALUES ('9780060883287', 'One Hundred Years of Solitude', 14, 1967, 'Magic realism', 14);
INSERT INTO public.books VALUES ('9780679723165', 'Lolita', 15, 1955, 'Novel', 15);
INSERT INTO public.books VALUES ('9780140366792', 'Heidi', 16, 1880, 'Children''s fiction', 16);
INSERT INTO public.books VALUES ('9780671537630', 'The Common Sense Book of Baby and Child Care', 17, 1946, 'Manual', 17);
INSERT INTO public.books VALUES ('9780553213133', 'Anne of Green Gables', 18, 1908, 'Children''s novel', 18);
INSERT INTO public.books VALUES ('9780141321035', 'Black Beauty', 19, 1877, 'Children''s literature', 7);


--
-- TOC entry 4858 (class 0 OID 52691)
-- Dependencies: 218
-- Data for Name: publishers; Type: TABLE DATA; Schema: public; Owner: -
--

INSERT INTO public.publishers VALUES (1, 'Penguin Classics', 'London, United Kingdom');
INSERT INTO public.publishers VALUES (2, 'Mariner Books', 'Boston, Massachusetts, USA');
INSERT INTO public.publishers VALUES (3, 'HarperOne', 'New York, New York, USA');
INSERT INTO public.publishers VALUES (4, 'Bloomsbury', 'London, United Kingdom');
INSERT INTO public.publishers VALUES (5, 'William Morrow Paperbacks', 'New York, New York, USA');
INSERT INTO public.publishers VALUES (6, 'Houghton Mifflin Harcourt', 'Boston, Massachusetts, USA');
INSERT INTO public.publishers VALUES (7, 'Dover Publications', 'Mineola, New York, USA');
INSERT INTO public.publishers VALUES (8, 'HarperCollins', 'New York, New York, USA');
INSERT INTO public.publishers VALUES (9, 'Modern Library', 'New York, New York, USA');
INSERT INTO public.publishers VALUES (10, 'Anchor', 'New York, New York, USA');
INSERT INTO public.publishers VALUES (11, 'Scholastic', 'New York, New York, USA');
INSERT INTO public.publishers VALUES (12, 'Little, Brown and Company', 'New York, New York, USA');
INSERT INTO public.publishers VALUES (13, 'Warner Books', 'New York, New York, USA');
INSERT INTO public.publishers VALUES (14, 'Harper Perennial Modern Classics', 'New York, New York, USA');
INSERT INTO public.publishers VALUES (15, 'Vintage', 'New York, New York, USA');
INSERT INTO public.publishers VALUES (16, 'Puffin Books', 'London, United Kingdom');
INSERT INTO public.publishers VALUES (17, 'Pocket Books', 'New York, New York, USA');
INSERT INTO public.publishers VALUES (18, 'Bantam Classics', 'New York, New York, USA');


--
-- TOC entry 4859 (class 0 OID 52694)
-- Dependencies: 219
-- Data for Name: regions; Type: TABLE DATA; Schema: public; Owner: -
--

INSERT INTO public.regions VALUES (1, 'Europe', 'United Kingdom');
INSERT INTO public.regions VALUES (2, 'Europe', 'France');
INSERT INTO public.regions VALUES (3, 'South America', 'Brazil');
INSERT INTO public.regions VALUES (4, 'Asia', 'China');
INSERT INTO public.regions VALUES (5, 'North America', 'United States');
INSERT INTO public.regions VALUES (6, 'South America', 'Colombia');
INSERT INTO public.regions VALUES (7, 'Europe', 'Switzerland');
INSERT INTO public.regions VALUES (8, 'North America', 'Canada');


--
-- TOC entry 4699 (class 2606 OID 52698)
-- Name: authors AuthID; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.authors
    ADD CONSTRAINT "AuthID" PRIMARY KEY ("AuthorID");


--
-- TOC entry 4703 (class 2606 OID 52700)
-- Name: books ISBN; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.books
    ADD CONSTRAINT "ISBN" PRIMARY KEY ("ISBN");


--
-- TOC entry 4701 (class 2606 OID 52702)
-- Name: book_performance PerfID; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.book_performance
    ADD CONSTRAINT "PerfID" PRIMARY KEY ("PerformanceID");


--
-- TOC entry 4705 (class 2606 OID 52704)
-- Name: publishers PubID; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.publishers
    ADD CONSTRAINT "PubID" PRIMARY KEY ("PublisherID");


--
-- TOC entry 4707 (class 2606 OID 52706)
-- Name: regions RegID; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.regions
    ADD CONSTRAINT "RegID" PRIMARY KEY ("RegionID");


--
-- TOC entry 4708 (class 2606 OID 52707)
-- Name: book_performance BookPerformance_ISBN_fkey; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.book_performance
    ADD CONSTRAINT "BookPerformance_ISBN_fkey" FOREIGN KEY ("ISBN") REFERENCES public.books("ISBN");


--
-- TOC entry 4709 (class 2606 OID 52712)
-- Name: book_performance BookPerformance_RegionID_fkey; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.book_performance
    ADD CONSTRAINT "BookPerformance_RegionID_fkey" FOREIGN KEY ("RegionID") REFERENCES public.regions("RegionID");


--
-- TOC entry 4710 (class 2606 OID 52717)
-- Name: books Books_AuthorID_fkey; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.books
    ADD CONSTRAINT "Books_AuthorID_fkey" FOREIGN KEY ("AuthorID") REFERENCES public.authors("AuthorID");


--
-- TOC entry 4711 (class 2606 OID 52722)
-- Name: books Books_PublisherID_fkey; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.books
    ADD CONSTRAINT "Books_PublisherID_fkey" FOREIGN KEY ("PublisherID") REFERENCES public.publishers("PublisherID");


-- Completed on 2024-12-09 18:20:45

--
-- PostgreSQL database dump complete
--

