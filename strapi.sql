--
-- PostgreSQL database dump
--

-- Dumped from database version 14.2 (Debian 14.2-1.pgdg110+1)
-- Dumped by pg_dump version 14.2 (Debian 14.2-1.pgdg110+1)

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
-- Name: Studio_category; Type: TABLE; Schema: public; Owner: strapi
--

CREATE TABLE public."Studio_category" (
    id integer NOT NULL,
    name character varying(255),
    "studioId" character varying(255),
    published_at timestamp with time zone,
    created_by integer,
    updated_by integer,
    created_at timestamp with time zone DEFAULT CURRENT_TIMESTAMP,
    updated_at timestamp with time zone DEFAULT CURRENT_TIMESTAMP
);


ALTER TABLE public."Studio_category" OWNER TO strapi;

--
-- Name: Studio_category_id_seq; Type: SEQUENCE; Schema: public; Owner: strapi
--

CREATE SEQUENCE public."Studio_category_id_seq"
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public."Studio_category_id_seq" OWNER TO strapi;

--
-- Name: Studio_category_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: strapi
--

ALTER SEQUENCE public."Studio_category_id_seq" OWNED BY public."Studio_category".id;


--
-- Name: about_uses; Type: TABLE; Schema: public; Owner: strapi
--

CREATE TABLE public.about_uses (
    id integer NOT NULL,
    published_at timestamp with time zone,
    created_by integer,
    updated_by integer,
    created_at timestamp with time zone DEFAULT CURRENT_TIMESTAMP,
    updated_at timestamp with time zone DEFAULT CURRENT_TIMESTAMP
);


ALTER TABLE public.about_uses OWNER TO strapi;

--
-- Name: about_uses_components; Type: TABLE; Schema: public; Owner: strapi
--

CREATE TABLE public.about_uses_components (
    id integer NOT NULL,
    field character varying(255) NOT NULL,
    "order" integer NOT NULL,
    component_type character varying(255) NOT NULL,
    component_id integer NOT NULL,
    about_us_id integer NOT NULL
);


ALTER TABLE public.about_uses_components OWNER TO strapi;

--
-- Name: about_uses_components_id_seq; Type: SEQUENCE; Schema: public; Owner: strapi
--

CREATE SEQUENCE public.about_uses_components_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.about_uses_components_id_seq OWNER TO strapi;

--
-- Name: about_uses_components_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: strapi
--

ALTER SEQUENCE public.about_uses_components_id_seq OWNED BY public.about_uses_components.id;


--
-- Name: about_uses_id_seq; Type: SEQUENCE; Schema: public; Owner: strapi
--

CREATE SEQUENCE public.about_uses_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.about_uses_id_seq OWNER TO strapi;

--
-- Name: about_uses_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: strapi
--

ALTER SEQUENCE public.about_uses_id_seq OWNED BY public.about_uses.id;


--
-- Name: articles; Type: TABLE; Schema: public; Owner: strapi
--

CREATE TABLE public.articles (
    id integer NOT NULL,
    title character varying(255),
    description text,
    content text,
    slug character varying(255),
    category integer,
    author integer,
    published_at timestamp with time zone,
    created_by integer,
    updated_by integer,
    created_at timestamp with time zone DEFAULT CURRENT_TIMESTAMP,
    updated_at timestamp with time zone DEFAULT CURRENT_TIMESTAMP,
    course_category integer,
    likes integer,
    asdfsadf character varying(255)
);


ALTER TABLE public.articles OWNER TO strapi;

--
-- Name: articles_id_seq; Type: SEQUENCE; Schema: public; Owner: strapi
--

CREATE SEQUENCE public.articles_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.articles_id_seq OWNER TO strapi;

--
-- Name: articles_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: strapi
--

ALTER SEQUENCE public.articles_id_seq OWNED BY public.articles.id;


--
-- Name: categories; Type: TABLE; Schema: public; Owner: strapi
--

CREATE TABLE public.categories (
    id integer NOT NULL,
    name character varying(255) NOT NULL,
    slug character varying(255) NOT NULL,
    created_by integer,
    updated_by integer,
    created_at timestamp with time zone DEFAULT CURRENT_TIMESTAMP,
    updated_at timestamp with time zone DEFAULT CURRENT_TIMESTAMP
);


ALTER TABLE public.categories OWNER TO strapi;

--
-- Name: categories_id_seq; Type: SEQUENCE; Schema: public; Owner: strapi
--

CREATE SEQUENCE public.categories_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.categories_id_seq OWNER TO strapi;

--
-- Name: categories_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: strapi
--

ALTER SEQUENCE public.categories_id_seq OWNED BY public.categories.id;


--
-- Name: components_banner_banneritems; Type: TABLE; Schema: public; Owner: strapi
--

CREATE TABLE public.components_banner_banneritems (
    id integer NOT NULL,
    url character varying(255)
);


ALTER TABLE public.components_banner_banneritems OWNER TO strapi;

--
-- Name: components_banner_banneritems_id_seq; Type: SEQUENCE; Schema: public; Owner: strapi
--

CREATE SEQUENCE public.components_banner_banneritems_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.components_banner_banneritems_id_seq OWNER TO strapi;

--
-- Name: components_banner_banneritems_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: strapi
--

ALTER SEQUENCE public.components_banner_banneritems_id_seq OWNED BY public.components_banner_banneritems.id;


--
-- Name: components_banner_banners; Type: TABLE; Schema: public; Owner: strapi
--

CREATE TABLE public.components_banner_banners (
    id integer NOT NULL
);


ALTER TABLE public.components_banner_banners OWNER TO strapi;

--
-- Name: components_banner_banners_components; Type: TABLE; Schema: public; Owner: strapi
--

CREATE TABLE public.components_banner_banners_components (
    id integer NOT NULL,
    field character varying(255) NOT NULL,
    "order" integer NOT NULL,
    component_type character varying(255) NOT NULL,
    component_id integer NOT NULL,
    components_banner_banner_id integer NOT NULL
);


ALTER TABLE public.components_banner_banners_components OWNER TO strapi;

--
-- Name: components_banner_banners_components_id_seq; Type: SEQUENCE; Schema: public; Owner: strapi
--

CREATE SEQUENCE public.components_banner_banners_components_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.components_banner_banners_components_id_seq OWNER TO strapi;

--
-- Name: components_banner_banners_components_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: strapi
--

ALTER SEQUENCE public.components_banner_banners_components_id_seq OWNED BY public.components_banner_banners_components.id;


--
-- Name: components_banner_banners_id_seq; Type: SEQUENCE; Schema: public; Owner: strapi
--

CREATE SEQUENCE public.components_banner_banners_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.components_banner_banners_id_seq OWNER TO strapi;

--
-- Name: components_banner_banners_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: strapi
--

ALTER SEQUENCE public.components_banner_banners_id_seq OWNED BY public.components_banner_banners.id;


--
-- Name: components_course_courses; Type: TABLE; Schema: public; Owner: strapi
--

CREATE TABLE public.components_course_courses (
    id integer NOT NULL,
    intro text,
    feature text
);


ALTER TABLE public.components_course_courses OWNER TO strapi;

--
-- Name: components_course_courses_id_seq; Type: SEQUENCE; Schema: public; Owner: strapi
--

CREATE SEQUENCE public.components_course_courses_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.components_course_courses_id_seq OWNER TO strapi;

--
-- Name: components_course_courses_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: strapi
--

ALTER SEQUENCE public.components_course_courses_id_seq OWNED BY public.components_course_courses.id;


--
-- Name: components_decoration_heroes; Type: TABLE; Schema: public; Owner: strapi
--

CREATE TABLE public.components_decoration_heroes (
    id integer NOT NULL,
    title character varying(255)
);


ALTER TABLE public.components_decoration_heroes OWNER TO strapi;

--
-- Name: components_decoration_heroes_id_seq; Type: SEQUENCE; Schema: public; Owner: strapi
--

CREATE SEQUENCE public.components_decoration_heroes_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.components_decoration_heroes_id_seq OWNER TO strapi;

--
-- Name: components_decoration_heroes_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: strapi
--

ALTER SEQUENCE public.components_decoration_heroes_id_seq OWNED BY public.components_decoration_heroes.id;


--
-- Name: components_index_achievements; Type: TABLE; Schema: public; Owner: strapi
--

CREATE TABLE public.components_index_achievements (
    id integer NOT NULL
);


ALTER TABLE public.components_index_achievements OWNER TO strapi;

--
-- Name: components_index_achievements_id_seq; Type: SEQUENCE; Schema: public; Owner: strapi
--

CREATE SEQUENCE public.components_index_achievements_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.components_index_achievements_id_seq OWNER TO strapi;

--
-- Name: components_index_achievements_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: strapi
--

ALTER SEQUENCE public.components_index_achievements_id_seq OWNED BY public.components_index_achievements.id;


--
-- Name: components_index_features; Type: TABLE; Schema: public; Owner: strapi
--

CREATE TABLE public.components_index_features (
    id integer NOT NULL,
    describe text,
    title character varying(255)
);


ALTER TABLE public.components_index_features OWNER TO strapi;

--
-- Name: components_index_features_id_seq; Type: SEQUENCE; Schema: public; Owner: strapi
--

CREATE SEQUENCE public.components_index_features_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.components_index_features_id_seq OWNER TO strapi;

--
-- Name: components_index_features_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: strapi
--

ALTER SEQUENCE public.components_index_features_id_seq OWNED BY public.components_index_features.id;


--
-- Name: components_index_histories; Type: TABLE; Schema: public; Owner: strapi
--

CREATE TABLE public.components_index_histories (
    id integer NOT NULL,
    year character varying(255),
    content character varying(255)
);


ALTER TABLE public.components_index_histories OWNER TO strapi;

--
-- Name: components_index_histories_id_seq; Type: SEQUENCE; Schema: public; Owner: strapi
--

CREATE SEQUENCE public.components_index_histories_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.components_index_histories_id_seq OWNER TO strapi;

--
-- Name: components_index_histories_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: strapi
--

ALTER SEQUENCE public.components_index_histories_id_seq OWNED BY public.components_index_histories.id;


--
-- Name: components_index_talents; Type: TABLE; Schema: public; Owner: strapi
--

CREATE TABLE public.components_index_talents (
    id integer NOT NULL,
    describe text,
    title character varying(255)
);


ALTER TABLE public.components_index_talents OWNER TO strapi;

--
-- Name: components_index_talents_id_seq; Type: SEQUENCE; Schema: public; Owner: strapi
--

CREATE SEQUENCE public.components_index_talents_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.components_index_talents_id_seq OWNER TO strapi;

--
-- Name: components_index_talents_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: strapi
--

ALTER SEQUENCE public.components_index_talents_id_seq OWNED BY public.components_index_talents.id;


--
-- Name: components_reachdirection_reach_directions; Type: TABLE; Schema: public; Owner: strapi
--

CREATE TABLE public.components_reachdirection_reach_directions (
    id integer NOT NULL,
    "direction_ZH" character varying(255),
    "direction_EN" character varying(255)
);


ALTER TABLE public.components_reachdirection_reach_directions OWNER TO strapi;

--
-- Name: components_reachdirection_reach_directions_id_seq; Type: SEQUENCE; Schema: public; Owner: strapi
--

CREATE SEQUENCE public.components_reachdirection_reach_directions_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.components_reachdirection_reach_directions_id_seq OWNER TO strapi;

--
-- Name: components_reachdirection_reach_directions_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: strapi
--

ALTER SEQUENCE public.components_reachdirection_reach_directions_id_seq OWNED BY public.components_reachdirection_reach_directions.id;


--
-- Name: components_sections_articles; Type: TABLE; Schema: public; Owner: strapi
--

CREATE TABLE public.components_sections_articles (
    id integer NOT NULL,
    title character varying(255),
    discribe text,
    content text,
    "videoUrl" text,
    author character varying(255)
);


ALTER TABLE public.components_sections_articles OWNER TO strapi;

--
-- Name: components_sections_articles_id_seq; Type: SEQUENCE; Schema: public; Owner: strapi
--

CREATE SEQUENCE public.components_sections_articles_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.components_sections_articles_id_seq OWNER TO strapi;

--
-- Name: components_sections_articles_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: strapi
--

ALTER SEQUENCE public.components_sections_articles_id_seq OWNED BY public.components_sections_articles.id;


--
-- Name: components_sections_people; Type: TABLE; Schema: public; Owner: strapi
--

CREATE TABLE public.components_sections_people (
    id integer NOT NULL,
    name character varying(255),
    describe text
);


ALTER TABLE public.components_sections_people OWNER TO strapi;

--
-- Name: components_sections_people_id_seq; Type: SEQUENCE; Schema: public; Owner: strapi
--

CREATE SEQUENCE public.components_sections_people_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.components_sections_people_id_seq OWNER TO strapi;

--
-- Name: components_sections_people_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: strapi
--

ALTER SEQUENCE public.components_sections_people_id_seq OWNED BY public.components_sections_people.id;


--
-- Name: components_shared_seos; Type: TABLE; Schema: public; Owner: strapi
--

CREATE TABLE public.components_shared_seos (
    id integer NOT NULL,
    "metaTitle" character varying(255),
    "metaDescription" text
);


ALTER TABLE public.components_shared_seos OWNER TO strapi;

--
-- Name: components_shared_seos_id_seq; Type: SEQUENCE; Schema: public; Owner: strapi
--

CREATE SEQUENCE public.components_shared_seos_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.components_shared_seos_id_seq OWNER TO strapi;

--
-- Name: components_shared_seos_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: strapi
--

ALTER SEQUENCE public.components_shared_seos_id_seq OWNED BY public.components_shared_seos.id;


--
-- Name: components_studio_studios; Type: TABLE; Schema: public; Owner: strapi
--

CREATE TABLE public.components_studio_studios (
    id integer NOT NULL,
    describe text
);


ALTER TABLE public.components_studio_studios OWNER TO strapi;

--
-- Name: components_studio_studios_components; Type: TABLE; Schema: public; Owner: strapi
--

CREATE TABLE public.components_studio_studios_components (
    id integer NOT NULL,
    field character varying(255) NOT NULL,
    "order" integer NOT NULL,
    component_type character varying(255) NOT NULL,
    component_id integer NOT NULL,
    components_studio_studio_id integer NOT NULL
);


ALTER TABLE public.components_studio_studios_components OWNER TO strapi;

--
-- Name: components_studio_studios_components_id_seq; Type: SEQUENCE; Schema: public; Owner: strapi
--

CREATE SEQUENCE public.components_studio_studios_components_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.components_studio_studios_components_id_seq OWNER TO strapi;

--
-- Name: components_studio_studios_components_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: strapi
--

ALTER SEQUENCE public.components_studio_studios_components_id_seq OWNED BY public.components_studio_studios_components.id;


--
-- Name: components_studio_studios_id_seq; Type: SEQUENCE; Schema: public; Owner: strapi
--

CREATE SEQUENCE public.components_studio_studios_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.components_studio_studios_id_seq OWNER TO strapi;

--
-- Name: components_studio_studios_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: strapi
--

ALTER SEQUENCE public.components_studio_studios_id_seq OWNED BY public.components_studio_studios.id;


--
-- Name: core_store; Type: TABLE; Schema: public; Owner: strapi
--

CREATE TABLE public.core_store (
    id integer NOT NULL,
    key character varying(255),
    value text,
    type character varying(255),
    environment character varying(255),
    tag character varying(255)
);


ALTER TABLE public.core_store OWNER TO strapi;

--
-- Name: core_store_id_seq; Type: SEQUENCE; Schema: public; Owner: strapi
--

CREATE SEQUENCE public.core_store_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.core_store_id_seq OWNER TO strapi;

--
-- Name: core_store_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: strapi
--

ALTER SEQUENCE public.core_store_id_seq OWNED BY public.core_store.id;


--
-- Name: course_categories; Type: TABLE; Schema: public; Owner: strapi
--

CREATE TABLE public.course_categories (
    id integer NOT NULL,
    name character varying(255),
    created_by integer,
    updated_by integer,
    created_at timestamp with time zone DEFAULT CURRENT_TIMESTAMP,
    updated_at timestamp with time zone DEFAULT CURRENT_TIMESTAMP,
    slug character varying(255),
    courserid character varying(255)
);


ALTER TABLE public.course_categories OWNER TO strapi;

--
-- Name: course_categories_id_seq; Type: SEQUENCE; Schema: public; Owner: strapi
--

CREATE SEQUENCE public.course_categories_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.course_categories_id_seq OWNER TO strapi;

--
-- Name: course_categories_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: strapi
--

ALTER SEQUENCE public.course_categories_id_seq OWNED BY public.course_categories.id;


--
-- Name: course_works; Type: TABLE; Schema: public; Owner: strapi
--

CREATE TABLE public.course_works (
    id integer NOT NULL,
    published_at timestamp with time zone,
    created_by integer,
    updated_by integer,
    created_at timestamp with time zone DEFAULT CURRENT_TIMESTAMP,
    updated_at timestamp with time zone DEFAULT CURRENT_TIMESTAMP,
    title character varying(255),
    "worksId" character varying(255),
    course_category integer,
    slug character varying(255),
    discribe text,
    content text,
    videourl text,
    author character varying(255),
    likes integer
);


ALTER TABLE public.course_works OWNER TO strapi;

--
-- Name: course_works_components; Type: TABLE; Schema: public; Owner: strapi
--

CREATE TABLE public.course_works_components (
    id integer NOT NULL,
    field character varying(255) NOT NULL,
    "order" integer NOT NULL,
    component_type character varying(255) NOT NULL,
    component_id integer NOT NULL,
    course_work_id integer NOT NULL
);


ALTER TABLE public.course_works_components OWNER TO strapi;

--
-- Name: course_works_components_id_seq; Type: SEQUENCE; Schema: public; Owner: strapi
--

CREATE SEQUENCE public.course_works_components_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.course_works_components_id_seq OWNER TO strapi;

--
-- Name: course_works_components_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: strapi
--

ALTER SEQUENCE public.course_works_components_id_seq OWNED BY public.course_works_components.id;


--
-- Name: course_works_id_seq; Type: SEQUENCE; Schema: public; Owner: strapi
--

CREATE SEQUENCE public.course_works_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.course_works_id_seq OWNER TO strapi;

--
-- Name: course_works_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: strapi
--

ALTER SEQUENCE public.course_works_id_seq OWNED BY public.course_works.id;


--
-- Name: courses; Type: TABLE; Schema: public; Owner: strapi
--

CREATE TABLE public.courses (
    id integer NOT NULL,
    coursedata jsonb,
    created_by integer,
    updated_by integer,
    created_at timestamp with time zone DEFAULT CURRENT_TIMESTAMP,
    updated_at timestamp with time zone DEFAULT CURRENT_TIMESTAMP,
    gysjshintro text,
    gongyeshejishouhuifeature text
);


ALTER TABLE public.courses OWNER TO strapi;

--
-- Name: courses_components; Type: TABLE; Schema: public; Owner: strapi
--

CREATE TABLE public.courses_components (
    id integer NOT NULL,
    field character varying(255) NOT NULL,
    "order" integer NOT NULL,
    component_type character varying(255) NOT NULL,
    component_id integer NOT NULL,
    course_id integer NOT NULL
);


ALTER TABLE public.courses_components OWNER TO strapi;

--
-- Name: courses_components_id_seq; Type: SEQUENCE; Schema: public; Owner: strapi
--

CREATE SEQUENCE public.courses_components_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.courses_components_id_seq OWNER TO strapi;

--
-- Name: courses_components_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: strapi
--

ALTER SEQUENCE public.courses_components_id_seq OWNED BY public.courses_components.id;


--
-- Name: courses_id_seq; Type: SEQUENCE; Schema: public; Owner: strapi
--

CREATE SEQUENCE public.courses_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.courses_id_seq OWNER TO strapi;

--
-- Name: courses_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: strapi
--

ALTER SEQUENCE public.courses_id_seq OWNED BY public.courses.id;


--
-- Name: globals; Type: TABLE; Schema: public; Owner: strapi
--

CREATE TABLE public.globals (
    id integer NOT NULL,
    "siteName" character varying(255) NOT NULL,
    created_by integer,
    updated_by integer,
    created_at timestamp with time zone DEFAULT CURRENT_TIMESTAMP,
    updated_at timestamp with time zone DEFAULT CURRENT_TIMESTAMP
);


ALTER TABLE public.globals OWNER TO strapi;

--
-- Name: globals_components; Type: TABLE; Schema: public; Owner: strapi
--

CREATE TABLE public.globals_components (
    id integer NOT NULL,
    field character varying(255) NOT NULL,
    "order" integer NOT NULL,
    component_type character varying(255) NOT NULL,
    component_id integer NOT NULL,
    global_id integer NOT NULL
);


ALTER TABLE public.globals_components OWNER TO strapi;

--
-- Name: globals_components_id_seq; Type: SEQUENCE; Schema: public; Owner: strapi
--

CREATE SEQUENCE public.globals_components_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.globals_components_id_seq OWNER TO strapi;

--
-- Name: globals_components_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: strapi
--

ALTER SEQUENCE public.globals_components_id_seq OWNED BY public.globals_components.id;


--
-- Name: globals_id_seq; Type: SEQUENCE; Schema: public; Owner: strapi
--

CREATE SEQUENCE public.globals_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.globals_id_seq OWNER TO strapi;

--
-- Name: globals_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: strapi
--

ALTER SEQUENCE public.globals_id_seq OWNED BY public.globals.id;


--
-- Name: gong_ye_she_ji_shou_huis; Type: TABLE; Schema: public; Owner: strapi
--

CREATE TABLE public.gong_ye_she_ji_shou_huis (
    id integer NOT NULL,
    published_at timestamp with time zone,
    created_by integer,
    updated_by integer,
    created_at timestamp with time zone DEFAULT CURRENT_TIMESTAMP,
    updated_at timestamp with time zone DEFAULT CURRENT_TIMESTAMP
);


ALTER TABLE public.gong_ye_she_ji_shou_huis OWNER TO strapi;

--
-- Name: gong_ye_she_ji_shou_huis_components; Type: TABLE; Schema: public; Owner: strapi
--

CREATE TABLE public.gong_ye_she_ji_shou_huis_components (
    id integer NOT NULL,
    field character varying(255) NOT NULL,
    "order" integer NOT NULL,
    component_type character varying(255) NOT NULL,
    component_id integer NOT NULL,
    gong_ye_she_ji_shou_hui_id integer NOT NULL
);


ALTER TABLE public.gong_ye_she_ji_shou_huis_components OWNER TO strapi;

--
-- Name: gong_ye_she_ji_shou_huis_components_id_seq; Type: SEQUENCE; Schema: public; Owner: strapi
--

CREATE SEQUENCE public.gong_ye_she_ji_shou_huis_components_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.gong_ye_she_ji_shou_huis_components_id_seq OWNER TO strapi;

--
-- Name: gong_ye_she_ji_shou_huis_components_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: strapi
--

ALTER SEQUENCE public.gong_ye_she_ji_shou_huis_components_id_seq OWNED BY public.gong_ye_she_ji_shou_huis_components.id;


--
-- Name: gong_ye_she_ji_shou_huis_id_seq; Type: SEQUENCE; Schema: public; Owner: strapi
--

CREATE SEQUENCE public.gong_ye_she_ji_shou_huis_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.gong_ye_she_ji_shou_huis_id_seq OWNER TO strapi;

--
-- Name: gong_ye_she_ji_shou_huis_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: strapi
--

ALTER SEQUENCE public.gong_ye_she_ji_shou_huis_id_seq OWNED BY public.gong_ye_she_ji_shou_huis.id;


--
-- Name: graduation_img2022s; Type: TABLE; Schema: public; Owner: strapi
--

CREATE TABLE public.graduation_img2022s (
    id integer NOT NULL,
    published_at timestamp with time zone,
    created_by integer,
    updated_by integer,
    created_at timestamp with time zone DEFAULT CURRENT_TIMESTAMP,
    updated_at timestamp with time zone DEFAULT CURRENT_TIMESTAMP
);


ALTER TABLE public.graduation_img2022s OWNER TO strapi;

--
-- Name: graduation_img2022s_id_seq; Type: SEQUENCE; Schema: public; Owner: strapi
--

CREATE SEQUENCE public.graduation_img2022s_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.graduation_img2022s_id_seq OWNER TO strapi;

--
-- Name: graduation_img2022s_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: strapi
--

ALTER SEQUENCE public.graduation_img2022s_id_seq OWNED BY public.graduation_img2022s.id;


--
-- Name: graduation_works; Type: TABLE; Schema: public; Owner: strapi
--

CREATE TABLE public.graduation_works (
    id integer NOT NULL,
    title character varying(255),
    authro character varying(255),
    describe text,
    content text,
    likes integer,
    "videoUrl" character varying(255),
    published_at timestamp with time zone,
    created_by integer,
    updated_by integer,
    created_at timestamp with time zone DEFAULT CURRENT_TIMESTAMP,
    updated_at timestamp with time zone DEFAULT CURRENT_TIMESTAMP,
    author character varying(255)
);


ALTER TABLE public.graduation_works OWNER TO strapi;

--
-- Name: graduation_works_id_seq; Type: SEQUENCE; Schema: public; Owner: strapi
--

CREATE SEQUENCE public.graduation_works_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.graduation_works_id_seq OWNER TO strapi;

--
-- Name: graduation_works_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: strapi
--

ALTER SEQUENCE public.graduation_works_id_seq OWNED BY public.graduation_works.id;


--
-- Name: gysjsh; Type: TABLE; Schema: public; Owner: strapi
--

CREATE TABLE public.gysjsh (
    id integer NOT NULL,
    published_at timestamp with time zone,
    created_by integer,
    updated_by integer,
    created_at timestamp with time zone DEFAULT CURRENT_TIMESTAMP,
    updated_at timestamp with time zone DEFAULT CURRENT_TIMESTAMP
);


ALTER TABLE public.gysjsh OWNER TO strapi;

--
-- Name: gysjsh_components; Type: TABLE; Schema: public; Owner: strapi
--

CREATE TABLE public.gysjsh_components (
    id integer NOT NULL,
    field character varying(255) NOT NULL,
    "order" integer NOT NULL,
    component_type character varying(255) NOT NULL,
    component_id integer NOT NULL,
    gysjsh_id integer NOT NULL
);


ALTER TABLE public.gysjsh_components OWNER TO strapi;

--
-- Name: gysjsh_components_id_seq; Type: SEQUENCE; Schema: public; Owner: strapi
--

CREATE SEQUENCE public.gysjsh_components_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.gysjsh_components_id_seq OWNER TO strapi;

--
-- Name: gysjsh_components_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: strapi
--

ALTER SEQUENCE public.gysjsh_components_id_seq OWNED BY public.gysjsh_components.id;


--
-- Name: gysjsh_id_seq; Type: SEQUENCE; Schema: public; Owner: strapi
--

CREATE SEQUENCE public.gysjsh_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.gysjsh_id_seq OWNER TO strapi;

--
-- Name: gysjsh_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: strapi
--

ALTER SEQUENCE public.gysjsh_id_seq OWNED BY public.gysjsh.id;


--
-- Name: homepages; Type: TABLE; Schema: public; Owner: strapi
--

CREATE TABLE public.homepages (
    id integer NOT NULL,
    created_by integer,
    updated_by integer,
    created_at timestamp with time zone DEFAULT CURRENT_TIMESTAMP,
    updated_at timestamp with time zone DEFAULT CURRENT_TIMESTAMP
);


ALTER TABLE public.homepages OWNER TO strapi;

--
-- Name: homepages_components; Type: TABLE; Schema: public; Owner: strapi
--

CREATE TABLE public.homepages_components (
    id integer NOT NULL,
    field character varying(255) NOT NULL,
    "order" integer NOT NULL,
    component_type character varying(255) NOT NULL,
    component_id integer NOT NULL,
    homepage_id integer NOT NULL
);


ALTER TABLE public.homepages_components OWNER TO strapi;

--
-- Name: homepages_components_id_seq; Type: SEQUENCE; Schema: public; Owner: strapi
--

CREATE SEQUENCE public.homepages_components_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.homepages_components_id_seq OWNER TO strapi;

--
-- Name: homepages_components_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: strapi
--

ALTER SEQUENCE public.homepages_components_id_seq OWNED BY public.homepages_components.id;


--
-- Name: homepages_id_seq; Type: SEQUENCE; Schema: public; Owner: strapi
--

CREATE SEQUENCE public.homepages_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.homepages_id_seq OWNER TO strapi;

--
-- Name: homepages_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: strapi
--

ALTER SEQUENCE public.homepages_id_seq OWNED BY public.homepages.id;


--
-- Name: i18n_locales; Type: TABLE; Schema: public; Owner: strapi
--

CREATE TABLE public.i18n_locales (
    id integer NOT NULL,
    name character varying(255),
    code character varying(255),
    created_by integer,
    updated_by integer,
    created_at timestamp with time zone DEFAULT CURRENT_TIMESTAMP,
    updated_at timestamp with time zone DEFAULT CURRENT_TIMESTAMP
);


ALTER TABLE public.i18n_locales OWNER TO strapi;

--
-- Name: i18n_locales_id_seq; Type: SEQUENCE; Schema: public; Owner: strapi
--

CREATE SEQUENCE public.i18n_locales_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.i18n_locales_id_seq OWNER TO strapi;

--
-- Name: i18n_locales_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: strapi
--

ALTER SEQUENCE public.i18n_locales_id_seq OWNED BY public.i18n_locales.id;


--
-- Name: ji_chu_she_jis; Type: TABLE; Schema: public; Owner: strapi
--

CREATE TABLE public.ji_chu_she_jis (
    id integer NOT NULL,
    published_at timestamp with time zone,
    created_by integer,
    updated_by integer,
    created_at timestamp with time zone DEFAULT CURRENT_TIMESTAMP,
    updated_at timestamp with time zone DEFAULT CURRENT_TIMESTAMP
);


ALTER TABLE public.ji_chu_she_jis OWNER TO strapi;

--
-- Name: ji_chu_she_jis_components; Type: TABLE; Schema: public; Owner: strapi
--

CREATE TABLE public.ji_chu_she_jis_components (
    id integer NOT NULL,
    field character varying(255) NOT NULL,
    "order" integer NOT NULL,
    component_type character varying(255) NOT NULL,
    component_id integer NOT NULL,
    ji_chu_she_ji_id integer NOT NULL
);


ALTER TABLE public.ji_chu_she_jis_components OWNER TO strapi;

--
-- Name: ji_chu_she_jis_components_id_seq; Type: SEQUENCE; Schema: public; Owner: strapi
--

CREATE SEQUENCE public.ji_chu_she_jis_components_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.ji_chu_she_jis_components_id_seq OWNER TO strapi;

--
-- Name: ji_chu_she_jis_components_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: strapi
--

ALTER SEQUENCE public.ji_chu_she_jis_components_id_seq OWNED BY public.ji_chu_she_jis_components.id;


--
-- Name: ji_chu_she_jis_id_seq; Type: SEQUENCE; Schema: public; Owner: strapi
--

CREATE SEQUENCE public.ji_chu_she_jis_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.ji_chu_she_jis_id_seq OWNER TO strapi;

--
-- Name: ji_chu_she_jis_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: strapi
--

ALTER SEQUENCE public.ji_chu_she_jis_id_seq OWNED BY public.ji_chu_she_jis.id;


--
-- Name: news_banners; Type: TABLE; Schema: public; Owner: strapi
--

CREATE TABLE public.news_banners (
    id integer NOT NULL,
    published_at timestamp with time zone,
    created_by integer,
    updated_by integer,
    created_at timestamp with time zone DEFAULT CURRENT_TIMESTAMP,
    updated_at timestamp with time zone DEFAULT CURRENT_TIMESTAMP
);


ALTER TABLE public.news_banners OWNER TO strapi;

--
-- Name: news_banners_components; Type: TABLE; Schema: public; Owner: strapi
--

CREATE TABLE public.news_banners_components (
    id integer NOT NULL,
    field character varying(255) NOT NULL,
    "order" integer NOT NULL,
    component_type character varying(255) NOT NULL,
    component_id integer NOT NULL,
    news_banner_id integer NOT NULL
);


ALTER TABLE public.news_banners_components OWNER TO strapi;

--
-- Name: news_banners_components_id_seq; Type: SEQUENCE; Schema: public; Owner: strapi
--

CREATE SEQUENCE public.news_banners_components_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.news_banners_components_id_seq OWNER TO strapi;

--
-- Name: news_banners_components_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: strapi
--

ALTER SEQUENCE public.news_banners_components_id_seq OWNED BY public.news_banners_components.id;


--
-- Name: news_banners_id_seq; Type: SEQUENCE; Schema: public; Owner: strapi
--

CREATE SEQUENCE public.news_banners_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.news_banners_id_seq OWNER TO strapi;

--
-- Name: news_banners_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: strapi
--

ALTER SEQUENCE public.news_banners_id_seq OWNED BY public.news_banners.id;


--
-- Name: news_categories; Type: TABLE; Schema: public; Owner: strapi
--

CREATE TABLE public.news_categories (
    id integer NOT NULL,
    name character varying(255),
    published_at timestamp with time zone,
    created_by integer,
    updated_by integer,
    created_at timestamp with time zone DEFAULT CURRENT_TIMESTAMP,
    updated_at timestamp with time zone DEFAULT CURRENT_TIMESTAMP,
    "NewsId" integer
);


ALTER TABLE public.news_categories OWNER TO strapi;

--
-- Name: news_categories_id_seq; Type: SEQUENCE; Schema: public; Owner: strapi
--

CREATE SEQUENCE public.news_categories_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.news_categories_id_seq OWNER TO strapi;

--
-- Name: news_categories_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: strapi
--

ALTER SEQUENCE public.news_categories_id_seq OWNED BY public.news_categories.id;


--
-- Name: news_centers; Type: TABLE; Schema: public; Owner: strapi
--

CREATE TABLE public.news_centers (
    id integer NOT NULL,
    title character varying(255),
    published_at timestamp with time zone,
    created_by integer,
    updated_by integer,
    created_at timestamp with time zone DEFAULT CURRENT_TIMESTAMP,
    updated_at timestamp with time zone DEFAULT CURRENT_TIMESTAMP,
    author character varying(255),
    content text,
    likes integer,
    "videoImage" text,
    news_category integer,
    discribe text,
    "videoUrl" text,
    videourl text
);


ALTER TABLE public.news_centers OWNER TO strapi;

--
-- Name: news_centers_id_seq; Type: SEQUENCE; Schema: public; Owner: strapi
--

CREATE SEQUENCE public.news_centers_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.news_centers_id_seq OWNER TO strapi;

--
-- Name: news_centers_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: strapi
--

ALTER SEQUENCE public.news_centers_id_seq OWNED BY public.news_centers.id;


--
-- Name: ren_ji_gong_cheng_xues; Type: TABLE; Schema: public; Owner: strapi
--

CREATE TABLE public.ren_ji_gong_cheng_xues (
    id integer NOT NULL,
    published_at timestamp with time zone,
    created_by integer,
    updated_by integer,
    created_at timestamp with time zone DEFAULT CURRENT_TIMESTAMP,
    updated_at timestamp with time zone DEFAULT CURRENT_TIMESTAMP
);


ALTER TABLE public.ren_ji_gong_cheng_xues OWNER TO strapi;

--
-- Name: ren_ji_gong_cheng_xues_components; Type: TABLE; Schema: public; Owner: strapi
--

CREATE TABLE public.ren_ji_gong_cheng_xues_components (
    id integer NOT NULL,
    field character varying(255) NOT NULL,
    "order" integer NOT NULL,
    component_type character varying(255) NOT NULL,
    component_id integer NOT NULL,
    ren_ji_gong_cheng_xue_id integer NOT NULL
);


ALTER TABLE public.ren_ji_gong_cheng_xues_components OWNER TO strapi;

--
-- Name: ren_ji_gong_cheng_xues_components_id_seq; Type: SEQUENCE; Schema: public; Owner: strapi
--

CREATE SEQUENCE public.ren_ji_gong_cheng_xues_components_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.ren_ji_gong_cheng_xues_components_id_seq OWNER TO strapi;

--
-- Name: ren_ji_gong_cheng_xues_components_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: strapi
--

ALTER SEQUENCE public.ren_ji_gong_cheng_xues_components_id_seq OWNED BY public.ren_ji_gong_cheng_xues_components.id;


--
-- Name: ren_ji_gong_cheng_xues_id_seq; Type: SEQUENCE; Schema: public; Owner: strapi
--

CREATE SEQUENCE public.ren_ji_gong_cheng_xues_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.ren_ji_gong_cheng_xues_id_seq OWNER TO strapi;

--
-- Name: ren_ji_gong_cheng_xues_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: strapi
--

ALTER SEQUENCE public.ren_ji_gong_cheng_xues_id_seq OWNED BY public.ren_ji_gong_cheng_xues.id;


--
-- Name: she_ji_ji_chus; Type: TABLE; Schema: public; Owner: strapi
--

CREATE TABLE public.she_ji_ji_chus (
    id integer NOT NULL,
    published_at timestamp with time zone,
    created_by integer,
    updated_by integer,
    created_at timestamp with time zone DEFAULT CURRENT_TIMESTAMP,
    updated_at timestamp with time zone DEFAULT CURRENT_TIMESTAMP
);


ALTER TABLE public.she_ji_ji_chus OWNER TO strapi;

--
-- Name: she_ji_ji_chus_components; Type: TABLE; Schema: public; Owner: strapi
--

CREATE TABLE public.she_ji_ji_chus_components (
    id integer NOT NULL,
    field character varying(255) NOT NULL,
    "order" integer NOT NULL,
    component_type character varying(255) NOT NULL,
    component_id integer NOT NULL,
    she_ji_ji_chus_id integer NOT NULL
);


ALTER TABLE public.she_ji_ji_chus_components OWNER TO strapi;

--
-- Name: she_ji_ji_chus_components_id_seq; Type: SEQUENCE; Schema: public; Owner: strapi
--

CREATE SEQUENCE public.she_ji_ji_chus_components_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.she_ji_ji_chus_components_id_seq OWNER TO strapi;

--
-- Name: she_ji_ji_chus_components_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: strapi
--

ALTER SEQUENCE public.she_ji_ji_chus_components_id_seq OWNED BY public.she_ji_ji_chus_components.id;


--
-- Name: she_ji_ji_chus_id_seq; Type: SEQUENCE; Schema: public; Owner: strapi
--

CREATE SEQUENCE public.she_ji_ji_chus_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.she_ji_ji_chus_id_seq OWNER TO strapi;

--
-- Name: she_ji_ji_chus_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: strapi
--

ALTER SEQUENCE public.she_ji_ji_chus_id_seq OWNED BY public.she_ji_ji_chus.id;


--
-- Name: she_ji_tu_xues; Type: TABLE; Schema: public; Owner: strapi
--

CREATE TABLE public.she_ji_tu_xues (
    id integer NOT NULL,
    published_at timestamp with time zone,
    created_by integer,
    updated_by integer,
    created_at timestamp with time zone DEFAULT CURRENT_TIMESTAMP,
    updated_at timestamp with time zone DEFAULT CURRENT_TIMESTAMP
);


ALTER TABLE public.she_ji_tu_xues OWNER TO strapi;

--
-- Name: she_ji_tu_xues_components; Type: TABLE; Schema: public; Owner: strapi
--

CREATE TABLE public.she_ji_tu_xues_components (
    id integer NOT NULL,
    field character varying(255) NOT NULL,
    "order" integer NOT NULL,
    component_type character varying(255) NOT NULL,
    component_id integer NOT NULL,
    she_ji_tu_xue_id integer NOT NULL
);


ALTER TABLE public.she_ji_tu_xues_components OWNER TO strapi;

--
-- Name: she_ji_tu_xues_components_id_seq; Type: SEQUENCE; Schema: public; Owner: strapi
--

CREATE SEQUENCE public.she_ji_tu_xues_components_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.she_ji_tu_xues_components_id_seq OWNER TO strapi;

--
-- Name: she_ji_tu_xues_components_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: strapi
--

ALTER SEQUENCE public.she_ji_tu_xues_components_id_seq OWNED BY public.she_ji_tu_xues_components.id;


--
-- Name: she_ji_tu_xues_id_seq; Type: SEQUENCE; Schema: public; Owner: strapi
--

CREATE SEQUENCE public.she_ji_tu_xues_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.she_ji_tu_xues_id_seq OWNER TO strapi;

--
-- Name: she_ji_tu_xues_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: strapi
--

ALTER SEQUENCE public.she_ji_tu_xues_id_seq OWNED BY public.she_ji_tu_xues.id;


--
-- Name: strapi_administrator; Type: TABLE; Schema: public; Owner: strapi
--

CREATE TABLE public.strapi_administrator (
    id integer NOT NULL,
    firstname character varying(255),
    lastname character varying(255),
    username character varying(255),
    email character varying(255) NOT NULL,
    password character varying(255),
    "resetPasswordToken" character varying(255),
    "registrationToken" character varying(255),
    "isActive" boolean,
    blocked boolean,
    "preferedLanguage" character varying(255)
);


ALTER TABLE public.strapi_administrator OWNER TO strapi;

--
-- Name: strapi_administrator_id_seq; Type: SEQUENCE; Schema: public; Owner: strapi
--

CREATE SEQUENCE public.strapi_administrator_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.strapi_administrator_id_seq OWNER TO strapi;

--
-- Name: strapi_administrator_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: strapi
--

ALTER SEQUENCE public.strapi_administrator_id_seq OWNED BY public.strapi_administrator.id;


--
-- Name: strapi_permission; Type: TABLE; Schema: public; Owner: strapi
--

CREATE TABLE public.strapi_permission (
    id integer NOT NULL,
    action character varying(255) NOT NULL,
    subject character varying(255),
    properties jsonb,
    conditions jsonb,
    role integer,
    created_at timestamp with time zone DEFAULT CURRENT_TIMESTAMP,
    updated_at timestamp with time zone DEFAULT CURRENT_TIMESTAMP
);


ALTER TABLE public.strapi_permission OWNER TO strapi;

--
-- Name: strapi_permission_id_seq; Type: SEQUENCE; Schema: public; Owner: strapi
--

CREATE SEQUENCE public.strapi_permission_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.strapi_permission_id_seq OWNER TO strapi;

--
-- Name: strapi_permission_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: strapi
--

ALTER SEQUENCE public.strapi_permission_id_seq OWNED BY public.strapi_permission.id;


--
-- Name: strapi_role; Type: TABLE; Schema: public; Owner: strapi
--

CREATE TABLE public.strapi_role (
    id integer NOT NULL,
    name character varying(255) NOT NULL,
    code character varying(255) NOT NULL,
    description character varying(255),
    created_at timestamp with time zone DEFAULT CURRENT_TIMESTAMP,
    updated_at timestamp with time zone DEFAULT CURRENT_TIMESTAMP
);


ALTER TABLE public.strapi_role OWNER TO strapi;

--
-- Name: strapi_role_id_seq; Type: SEQUENCE; Schema: public; Owner: strapi
--

CREATE SEQUENCE public.strapi_role_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.strapi_role_id_seq OWNER TO strapi;

--
-- Name: strapi_role_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: strapi
--

ALTER SEQUENCE public.strapi_role_id_seq OWNED BY public.strapi_role.id;


--
-- Name: strapi_users_roles; Type: TABLE; Schema: public; Owner: strapi
--

CREATE TABLE public.strapi_users_roles (
    id integer NOT NULL,
    user_id integer,
    role_id integer
);


ALTER TABLE public.strapi_users_roles OWNER TO strapi;

--
-- Name: strapi_users_roles_id_seq; Type: SEQUENCE; Schema: public; Owner: strapi
--

CREATE SEQUENCE public.strapi_users_roles_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.strapi_users_roles_id_seq OWNER TO strapi;

--
-- Name: strapi_users_roles_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: strapi
--

ALTER SEQUENCE public.strapi_users_roles_id_seq OWNED BY public.strapi_users_roles.id;


--
-- Name: strapi_webhooks; Type: TABLE; Schema: public; Owner: strapi
--

CREATE TABLE public.strapi_webhooks (
    id integer NOT NULL,
    name character varying(255),
    url text,
    headers jsonb,
    events jsonb,
    enabled boolean
);


ALTER TABLE public.strapi_webhooks OWNER TO strapi;

--
-- Name: strapi_webhooks_id_seq; Type: SEQUENCE; Schema: public; Owner: strapi
--

CREATE SEQUENCE public.strapi_webhooks_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.strapi_webhooks_id_seq OWNER TO strapi;

--
-- Name: strapi_webhooks_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: strapi
--

ALTER SEQUENCE public.strapi_webhooks_id_seq OWNED BY public.strapi_webhooks.id;


--
-- Name: studio_categories; Type: TABLE; Schema: public; Owner: strapi
--

CREATE TABLE public.studio_categories (
    id integer NOT NULL,
    name character varying(255),
    studio_id character varying(255),
    published_at timestamp with time zone,
    created_by integer,
    updated_by integer,
    created_at timestamp with time zone DEFAULT CURRENT_TIMESTAMP,
    updated_at timestamp with time zone DEFAULT CURRENT_TIMESTAMP
);


ALTER TABLE public.studio_categories OWNER TO strapi;

--
-- Name: studio_categories_id_seq; Type: SEQUENCE; Schema: public; Owner: strapi
--

CREATE SEQUENCE public.studio_categories_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.studio_categories_id_seq OWNER TO strapi;

--
-- Name: studio_categories_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: strapi
--

ALTER SEQUENCE public.studio_categories_id_seq OWNED BY public.studio_categories.id;


--
-- Name: studio_works; Type: TABLE; Schema: public; Owner: strapi
--

CREATE TABLE public.studio_works (
    id integer NOT NULL,
    title character varying(255),
    author character varying(255),
    content text,
    "videoUrl" character varying(255),
    published_at timestamp with time zone,
    created_by integer,
    updated_by integer,
    created_at timestamp with time zone DEFAULT CURRENT_TIMESTAMP,
    updated_at timestamp with time zone DEFAULT CURRENT_TIMESTAMP,
    likes integer,
    describe character varying(255),
    studio_category integer
);


ALTER TABLE public.studio_works OWNER TO strapi;

--
-- Name: studio_works_categories; Type: TABLE; Schema: public; Owner: strapi
--

CREATE TABLE public.studio_works_categories (
    id integer NOT NULL,
    name character varying(255),
    "worksId" character varying(255),
    published_at timestamp with time zone,
    created_by integer,
    updated_by integer,
    created_at timestamp with time zone DEFAULT CURRENT_TIMESTAMP,
    updated_at timestamp with time zone DEFAULT CURRENT_TIMESTAMP,
    studio_work integer
);


ALTER TABLE public.studio_works_categories OWNER TO strapi;

--
-- Name: studio_works_categories_id_seq; Type: SEQUENCE; Schema: public; Owner: strapi
--

CREATE SEQUENCE public.studio_works_categories_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.studio_works_categories_id_seq OWNER TO strapi;

--
-- Name: studio_works_categories_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: strapi
--

ALTER SEQUENCE public.studio_works_categories_id_seq OWNED BY public.studio_works_categories.id;


--
-- Name: studio_works_id_seq; Type: SEQUENCE; Schema: public; Owner: strapi
--

CREATE SEQUENCE public.studio_works_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.studio_works_id_seq OWNER TO strapi;

--
-- Name: studio_works_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: strapi
--

ALTER SEQUENCE public.studio_works_id_seq OWNED BY public.studio_works.id;


--
-- Name: studios; Type: TABLE; Schema: public; Owner: strapi
--

CREATE TABLE public.studios (
    id integer NOT NULL,
    published_at timestamp with time zone,
    created_by integer,
    updated_by integer,
    created_at timestamp with time zone DEFAULT CURRENT_TIMESTAMP,
    updated_at timestamp with time zone DEFAULT CURRENT_TIMESTAMP
);


ALTER TABLE public.studios OWNER TO strapi;

--
-- Name: studios_components; Type: TABLE; Schema: public; Owner: strapi
--

CREATE TABLE public.studios_components (
    id integer NOT NULL,
    field character varying(255) NOT NULL,
    "order" integer NOT NULL,
    component_type character varying(255) NOT NULL,
    component_id integer NOT NULL,
    studio_id integer NOT NULL
);


ALTER TABLE public.studios_components OWNER TO strapi;

--
-- Name: studios_components_id_seq; Type: SEQUENCE; Schema: public; Owner: strapi
--

CREATE SEQUENCE public.studios_components_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.studios_components_id_seq OWNER TO strapi;

--
-- Name: studios_components_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: strapi
--

ALTER SEQUENCE public.studios_components_id_seq OWNED BY public.studios_components.id;


--
-- Name: studios_id_seq; Type: SEQUENCE; Schema: public; Owner: strapi
--

CREATE SEQUENCE public.studios_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.studios_id_seq OWNER TO strapi;

--
-- Name: studios_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: strapi
--

ALTER SEQUENCE public.studios_id_seq OWNED BY public.studios.id;


--
-- Name: upload_file; Type: TABLE; Schema: public; Owner: strapi
--

CREATE TABLE public.upload_file (
    id integer NOT NULL,
    name character varying(255) NOT NULL,
    "alternativeText" character varying(255),
    caption character varying(255),
    width integer,
    height integer,
    formats jsonb,
    hash character varying(255) NOT NULL,
    ext character varying(255),
    mime character varying(255) NOT NULL,
    size numeric(10,2) NOT NULL,
    url character varying(255) NOT NULL,
    "previewUrl" character varying(255),
    provider character varying(255) NOT NULL,
    provider_metadata jsonb,
    created_by integer,
    updated_by integer,
    created_at timestamp with time zone DEFAULT CURRENT_TIMESTAMP,
    updated_at timestamp with time zone DEFAULT CURRENT_TIMESTAMP
);


ALTER TABLE public.upload_file OWNER TO strapi;

--
-- Name: upload_file_id_seq; Type: SEQUENCE; Schema: public; Owner: strapi
--

CREATE SEQUENCE public.upload_file_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.upload_file_id_seq OWNER TO strapi;

--
-- Name: upload_file_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: strapi
--

ALTER SEQUENCE public.upload_file_id_seq OWNED BY public.upload_file.id;


--
-- Name: upload_file_morph; Type: TABLE; Schema: public; Owner: strapi
--

CREATE TABLE public.upload_file_morph (
    id integer NOT NULL,
    upload_file_id integer,
    related_id integer,
    related_type text,
    field text,
    "order" integer
);


ALTER TABLE public.upload_file_morph OWNER TO strapi;

--
-- Name: upload_file_morph_id_seq; Type: SEQUENCE; Schema: public; Owner: strapi
--

CREATE SEQUENCE public.upload_file_morph_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.upload_file_morph_id_seq OWNER TO strapi;

--
-- Name: upload_file_morph_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: strapi
--

ALTER SEQUENCE public.upload_file_morph_id_seq OWNED BY public.upload_file_morph.id;


--
-- Name: users-permissions_permission; Type: TABLE; Schema: public; Owner: strapi
--

CREATE TABLE public."users-permissions_permission" (
    id integer NOT NULL,
    type character varying(255) NOT NULL,
    controller character varying(255) NOT NULL,
    action character varying(255) NOT NULL,
    enabled boolean NOT NULL,
    policy character varying(255),
    role integer,
    created_by integer,
    updated_by integer
);


ALTER TABLE public."users-permissions_permission" OWNER TO strapi;

--
-- Name: users-permissions_permission_id_seq; Type: SEQUENCE; Schema: public; Owner: strapi
--

CREATE SEQUENCE public."users-permissions_permission_id_seq"
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public."users-permissions_permission_id_seq" OWNER TO strapi;

--
-- Name: users-permissions_permission_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: strapi
--

ALTER SEQUENCE public."users-permissions_permission_id_seq" OWNED BY public."users-permissions_permission".id;


--
-- Name: users-permissions_role; Type: TABLE; Schema: public; Owner: strapi
--

CREATE TABLE public."users-permissions_role" (
    id integer NOT NULL,
    name character varying(255) NOT NULL,
    description character varying(255),
    type character varying(255),
    created_by integer,
    updated_by integer
);


ALTER TABLE public."users-permissions_role" OWNER TO strapi;

--
-- Name: users-permissions_role_id_seq; Type: SEQUENCE; Schema: public; Owner: strapi
--

CREATE SEQUENCE public."users-permissions_role_id_seq"
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public."users-permissions_role_id_seq" OWNER TO strapi;

--
-- Name: users-permissions_role_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: strapi
--

ALTER SEQUENCE public."users-permissions_role_id_seq" OWNED BY public."users-permissions_role".id;


--
-- Name: users-permissions_user; Type: TABLE; Schema: public; Owner: strapi
--

CREATE TABLE public."users-permissions_user" (
    id integer NOT NULL,
    username character varying(255) NOT NULL,
    email character varying(255) NOT NULL,
    provider character varying(255),
    password character varying(255),
    "resetPasswordToken" character varying(255),
    "confirmationToken" character varying(255),
    confirmed boolean,
    blocked boolean,
    role integer,
    created_by integer,
    updated_by integer,
    created_at timestamp with time zone DEFAULT CURRENT_TIMESTAMP,
    updated_at timestamp with time zone DEFAULT CURRENT_TIMESTAMP
);


ALTER TABLE public."users-permissions_user" OWNER TO strapi;

--
-- Name: users-permissions_user_id_seq; Type: SEQUENCE; Schema: public; Owner: strapi
--

CREATE SEQUENCE public."users-permissions_user_id_seq"
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public."users-permissions_user_id_seq" OWNER TO strapi;

--
-- Name: users-permissions_user_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: strapi
--

ALTER SEQUENCE public."users-permissions_user_id_seq" OWNED BY public."users-permissions_user".id;


--
-- Name: writers; Type: TABLE; Schema: public; Owner: strapi
--

CREATE TABLE public.writers (
    id integer NOT NULL,
    name character varying(255),
    email character varying(255),
    created_by integer,
    updated_by integer,
    created_at timestamp with time zone DEFAULT CURRENT_TIMESTAMP,
    updated_at timestamp with time zone DEFAULT CURRENT_TIMESTAMP
);


ALTER TABLE public.writers OWNER TO strapi;

--
-- Name: writers_id_seq; Type: SEQUENCE; Schema: public; Owner: strapi
--

CREATE SEQUENCE public.writers_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.writers_id_seq OWNER TO strapi;

--
-- Name: writers_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: strapi
--

ALTER SEQUENCE public.writers_id_seq OWNED BY public.writers.id;


--
-- Name: yuan_xing_kong_zhi_yu_jiao_hus; Type: TABLE; Schema: public; Owner: strapi
--

CREATE TABLE public.yuan_xing_kong_zhi_yu_jiao_hus (
    id integer NOT NULL,
    published_at timestamp with time zone,
    created_by integer,
    updated_by integer,
    created_at timestamp with time zone DEFAULT CURRENT_TIMESTAMP,
    updated_at timestamp with time zone DEFAULT CURRENT_TIMESTAMP
);


ALTER TABLE public.yuan_xing_kong_zhi_yu_jiao_hus OWNER TO strapi;

--
-- Name: yuan_xing_kong_zhi_yu_jiao_hus_components; Type: TABLE; Schema: public; Owner: strapi
--

CREATE TABLE public.yuan_xing_kong_zhi_yu_jiao_hus_components (
    id integer NOT NULL,
    field character varying(255) NOT NULL,
    "order" integer NOT NULL,
    component_type character varying(255) NOT NULL,
    component_id integer NOT NULL,
    yuan_xing_kong_zhi_yu_jiao_hus_id integer NOT NULL
);


ALTER TABLE public.yuan_xing_kong_zhi_yu_jiao_hus_components OWNER TO strapi;

--
-- Name: yuan_xing_kong_zhi_yu_jiao_hus_components_id_seq; Type: SEQUENCE; Schema: public; Owner: strapi
--

CREATE SEQUENCE public.yuan_xing_kong_zhi_yu_jiao_hus_components_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.yuan_xing_kong_zhi_yu_jiao_hus_components_id_seq OWNER TO strapi;

--
-- Name: yuan_xing_kong_zhi_yu_jiao_hus_components_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: strapi
--

ALTER SEQUENCE public.yuan_xing_kong_zhi_yu_jiao_hus_components_id_seq OWNED BY public.yuan_xing_kong_zhi_yu_jiao_hus_components.id;


--
-- Name: yuan_xing_kong_zhi_yu_jiao_hus_id_seq; Type: SEQUENCE; Schema: public; Owner: strapi
--

CREATE SEQUENCE public.yuan_xing_kong_zhi_yu_jiao_hus_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.yuan_xing_kong_zhi_yu_jiao_hus_id_seq OWNER TO strapi;

--
-- Name: yuan_xing_kong_zhi_yu_jiao_hus_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: strapi
--

ALTER SEQUENCE public.yuan_xing_kong_zhi_yu_jiao_hus_id_seq OWNED BY public.yuan_xing_kong_zhi_yu_jiao_hus.id;


--
-- Name: Studio_category id; Type: DEFAULT; Schema: public; Owner: strapi
--

ALTER TABLE ONLY public."Studio_category" ALTER COLUMN id SET DEFAULT nextval('public."Studio_category_id_seq"'::regclass);


--
-- Name: about_uses id; Type: DEFAULT; Schema: public; Owner: strapi
--

ALTER TABLE ONLY public.about_uses ALTER COLUMN id SET DEFAULT nextval('public.about_uses_id_seq'::regclass);


--
-- Name: about_uses_components id; Type: DEFAULT; Schema: public; Owner: strapi
--

ALTER TABLE ONLY public.about_uses_components ALTER COLUMN id SET DEFAULT nextval('public.about_uses_components_id_seq'::regclass);


--
-- Name: articles id; Type: DEFAULT; Schema: public; Owner: strapi
--

ALTER TABLE ONLY public.articles ALTER COLUMN id SET DEFAULT nextval('public.articles_id_seq'::regclass);


--
-- Name: categories id; Type: DEFAULT; Schema: public; Owner: strapi
--

ALTER TABLE ONLY public.categories ALTER COLUMN id SET DEFAULT nextval('public.categories_id_seq'::regclass);


--
-- Name: components_banner_banneritems id; Type: DEFAULT; Schema: public; Owner: strapi
--

ALTER TABLE ONLY public.components_banner_banneritems ALTER COLUMN id SET DEFAULT nextval('public.components_banner_banneritems_id_seq'::regclass);


--
-- Name: components_banner_banners id; Type: DEFAULT; Schema: public; Owner: strapi
--

ALTER TABLE ONLY public.components_banner_banners ALTER COLUMN id SET DEFAULT nextval('public.components_banner_banners_id_seq'::regclass);


--
-- Name: components_banner_banners_components id; Type: DEFAULT; Schema: public; Owner: strapi
--

ALTER TABLE ONLY public.components_banner_banners_components ALTER COLUMN id SET DEFAULT nextval('public.components_banner_banners_components_id_seq'::regclass);


--
-- Name: components_course_courses id; Type: DEFAULT; Schema: public; Owner: strapi
--

ALTER TABLE ONLY public.components_course_courses ALTER COLUMN id SET DEFAULT nextval('public.components_course_courses_id_seq'::regclass);


--
-- Name: components_decoration_heroes id; Type: DEFAULT; Schema: public; Owner: strapi
--

ALTER TABLE ONLY public.components_decoration_heroes ALTER COLUMN id SET DEFAULT nextval('public.components_decoration_heroes_id_seq'::regclass);


--
-- Name: components_index_achievements id; Type: DEFAULT; Schema: public; Owner: strapi
--

ALTER TABLE ONLY public.components_index_achievements ALTER COLUMN id SET DEFAULT nextval('public.components_index_achievements_id_seq'::regclass);


--
-- Name: components_index_features id; Type: DEFAULT; Schema: public; Owner: strapi
--

ALTER TABLE ONLY public.components_index_features ALTER COLUMN id SET DEFAULT nextval('public.components_index_features_id_seq'::regclass);


--
-- Name: components_index_histories id; Type: DEFAULT; Schema: public; Owner: strapi
--

ALTER TABLE ONLY public.components_index_histories ALTER COLUMN id SET DEFAULT nextval('public.components_index_histories_id_seq'::regclass);


--
-- Name: components_index_talents id; Type: DEFAULT; Schema: public; Owner: strapi
--

ALTER TABLE ONLY public.components_index_talents ALTER COLUMN id SET DEFAULT nextval('public.components_index_talents_id_seq'::regclass);


--
-- Name: components_reachdirection_reach_directions id; Type: DEFAULT; Schema: public; Owner: strapi
--

ALTER TABLE ONLY public.components_reachdirection_reach_directions ALTER COLUMN id SET DEFAULT nextval('public.components_reachdirection_reach_directions_id_seq'::regclass);


--
-- Name: components_sections_articles id; Type: DEFAULT; Schema: public; Owner: strapi
--

ALTER TABLE ONLY public.components_sections_articles ALTER COLUMN id SET DEFAULT nextval('public.components_sections_articles_id_seq'::regclass);


--
-- Name: components_sections_people id; Type: DEFAULT; Schema: public; Owner: strapi
--

ALTER TABLE ONLY public.components_sections_people ALTER COLUMN id SET DEFAULT nextval('public.components_sections_people_id_seq'::regclass);


--
-- Name: components_shared_seos id; Type: DEFAULT; Schema: public; Owner: strapi
--

ALTER TABLE ONLY public.components_shared_seos ALTER COLUMN id SET DEFAULT nextval('public.components_shared_seos_id_seq'::regclass);


--
-- Name: components_studio_studios id; Type: DEFAULT; Schema: public; Owner: strapi
--

ALTER TABLE ONLY public.components_studio_studios ALTER COLUMN id SET DEFAULT nextval('public.components_studio_studios_id_seq'::regclass);


--
-- Name: components_studio_studios_components id; Type: DEFAULT; Schema: public; Owner: strapi
--

ALTER TABLE ONLY public.components_studio_studios_components ALTER COLUMN id SET DEFAULT nextval('public.components_studio_studios_components_id_seq'::regclass);


--
-- Name: core_store id; Type: DEFAULT; Schema: public; Owner: strapi
--

ALTER TABLE ONLY public.core_store ALTER COLUMN id SET DEFAULT nextval('public.core_store_id_seq'::regclass);


--
-- Name: course_categories id; Type: DEFAULT; Schema: public; Owner: strapi
--

ALTER TABLE ONLY public.course_categories ALTER COLUMN id SET DEFAULT nextval('public.course_categories_id_seq'::regclass);


--
-- Name: course_works id; Type: DEFAULT; Schema: public; Owner: strapi
--

ALTER TABLE ONLY public.course_works ALTER COLUMN id SET DEFAULT nextval('public.course_works_id_seq'::regclass);


--
-- Name: course_works_components id; Type: DEFAULT; Schema: public; Owner: strapi
--

ALTER TABLE ONLY public.course_works_components ALTER COLUMN id SET DEFAULT nextval('public.course_works_components_id_seq'::regclass);


--
-- Name: courses id; Type: DEFAULT; Schema: public; Owner: strapi
--

ALTER TABLE ONLY public.courses ALTER COLUMN id SET DEFAULT nextval('public.courses_id_seq'::regclass);


--
-- Name: courses_components id; Type: DEFAULT; Schema: public; Owner: strapi
--

ALTER TABLE ONLY public.courses_components ALTER COLUMN id SET DEFAULT nextval('public.courses_components_id_seq'::regclass);


--
-- Name: globals id; Type: DEFAULT; Schema: public; Owner: strapi
--

ALTER TABLE ONLY public.globals ALTER COLUMN id SET DEFAULT nextval('public.globals_id_seq'::regclass);


--
-- Name: globals_components id; Type: DEFAULT; Schema: public; Owner: strapi
--

ALTER TABLE ONLY public.globals_components ALTER COLUMN id SET DEFAULT nextval('public.globals_components_id_seq'::regclass);


--
-- Name: gong_ye_she_ji_shou_huis id; Type: DEFAULT; Schema: public; Owner: strapi
--

ALTER TABLE ONLY public.gong_ye_she_ji_shou_huis ALTER COLUMN id SET DEFAULT nextval('public.gong_ye_she_ji_shou_huis_id_seq'::regclass);


--
-- Name: gong_ye_she_ji_shou_huis_components id; Type: DEFAULT; Schema: public; Owner: strapi
--

ALTER TABLE ONLY public.gong_ye_she_ji_shou_huis_components ALTER COLUMN id SET DEFAULT nextval('public.gong_ye_she_ji_shou_huis_components_id_seq'::regclass);


--
-- Name: graduation_img2022s id; Type: DEFAULT; Schema: public; Owner: strapi
--

ALTER TABLE ONLY public.graduation_img2022s ALTER COLUMN id SET DEFAULT nextval('public.graduation_img2022s_id_seq'::regclass);


--
-- Name: graduation_works id; Type: DEFAULT; Schema: public; Owner: strapi
--

ALTER TABLE ONLY public.graduation_works ALTER COLUMN id SET DEFAULT nextval('public.graduation_works_id_seq'::regclass);


--
-- Name: gysjsh id; Type: DEFAULT; Schema: public; Owner: strapi
--

ALTER TABLE ONLY public.gysjsh ALTER COLUMN id SET DEFAULT nextval('public.gysjsh_id_seq'::regclass);


--
-- Name: gysjsh_components id; Type: DEFAULT; Schema: public; Owner: strapi
--

ALTER TABLE ONLY public.gysjsh_components ALTER COLUMN id SET DEFAULT nextval('public.gysjsh_components_id_seq'::regclass);


--
-- Name: homepages id; Type: DEFAULT; Schema: public; Owner: strapi
--

ALTER TABLE ONLY public.homepages ALTER COLUMN id SET DEFAULT nextval('public.homepages_id_seq'::regclass);


--
-- Name: homepages_components id; Type: DEFAULT; Schema: public; Owner: strapi
--

ALTER TABLE ONLY public.homepages_components ALTER COLUMN id SET DEFAULT nextval('public.homepages_components_id_seq'::regclass);


--
-- Name: i18n_locales id; Type: DEFAULT; Schema: public; Owner: strapi
--

ALTER TABLE ONLY public.i18n_locales ALTER COLUMN id SET DEFAULT nextval('public.i18n_locales_id_seq'::regclass);


--
-- Name: ji_chu_she_jis id; Type: DEFAULT; Schema: public; Owner: strapi
--

ALTER TABLE ONLY public.ji_chu_she_jis ALTER COLUMN id SET DEFAULT nextval('public.ji_chu_she_jis_id_seq'::regclass);


--
-- Name: ji_chu_she_jis_components id; Type: DEFAULT; Schema: public; Owner: strapi
--

ALTER TABLE ONLY public.ji_chu_she_jis_components ALTER COLUMN id SET DEFAULT nextval('public.ji_chu_she_jis_components_id_seq'::regclass);


--
-- Name: news_banners id; Type: DEFAULT; Schema: public; Owner: strapi
--

ALTER TABLE ONLY public.news_banners ALTER COLUMN id SET DEFAULT nextval('public.news_banners_id_seq'::regclass);


--
-- Name: news_banners_components id; Type: DEFAULT; Schema: public; Owner: strapi
--

ALTER TABLE ONLY public.news_banners_components ALTER COLUMN id SET DEFAULT nextval('public.news_banners_components_id_seq'::regclass);


--
-- Name: news_categories id; Type: DEFAULT; Schema: public; Owner: strapi
--

ALTER TABLE ONLY public.news_categories ALTER COLUMN id SET DEFAULT nextval('public.news_categories_id_seq'::regclass);


--
-- Name: news_centers id; Type: DEFAULT; Schema: public; Owner: strapi
--

ALTER TABLE ONLY public.news_centers ALTER COLUMN id SET DEFAULT nextval('public.news_centers_id_seq'::regclass);


--
-- Name: ren_ji_gong_cheng_xues id; Type: DEFAULT; Schema: public; Owner: strapi
--

ALTER TABLE ONLY public.ren_ji_gong_cheng_xues ALTER COLUMN id SET DEFAULT nextval('public.ren_ji_gong_cheng_xues_id_seq'::regclass);


--
-- Name: ren_ji_gong_cheng_xues_components id; Type: DEFAULT; Schema: public; Owner: strapi
--

ALTER TABLE ONLY public.ren_ji_gong_cheng_xues_components ALTER COLUMN id SET DEFAULT nextval('public.ren_ji_gong_cheng_xues_components_id_seq'::regclass);


--
-- Name: she_ji_ji_chus id; Type: DEFAULT; Schema: public; Owner: strapi
--

ALTER TABLE ONLY public.she_ji_ji_chus ALTER COLUMN id SET DEFAULT nextval('public.she_ji_ji_chus_id_seq'::regclass);


--
-- Name: she_ji_ji_chus_components id; Type: DEFAULT; Schema: public; Owner: strapi
--

ALTER TABLE ONLY public.she_ji_ji_chus_components ALTER COLUMN id SET DEFAULT nextval('public.she_ji_ji_chus_components_id_seq'::regclass);


--
-- Name: she_ji_tu_xues id; Type: DEFAULT; Schema: public; Owner: strapi
--

ALTER TABLE ONLY public.she_ji_tu_xues ALTER COLUMN id SET DEFAULT nextval('public.she_ji_tu_xues_id_seq'::regclass);


--
-- Name: she_ji_tu_xues_components id; Type: DEFAULT; Schema: public; Owner: strapi
--

ALTER TABLE ONLY public.she_ji_tu_xues_components ALTER COLUMN id SET DEFAULT nextval('public.she_ji_tu_xues_components_id_seq'::regclass);


--
-- Name: strapi_administrator id; Type: DEFAULT; Schema: public; Owner: strapi
--

ALTER TABLE ONLY public.strapi_administrator ALTER COLUMN id SET DEFAULT nextval('public.strapi_administrator_id_seq'::regclass);


--
-- Name: strapi_permission id; Type: DEFAULT; Schema: public; Owner: strapi
--

ALTER TABLE ONLY public.strapi_permission ALTER COLUMN id SET DEFAULT nextval('public.strapi_permission_id_seq'::regclass);


--
-- Name: strapi_role id; Type: DEFAULT; Schema: public; Owner: strapi
--

ALTER TABLE ONLY public.strapi_role ALTER COLUMN id SET DEFAULT nextval('public.strapi_role_id_seq'::regclass);


--
-- Name: strapi_users_roles id; Type: DEFAULT; Schema: public; Owner: strapi
--

ALTER TABLE ONLY public.strapi_users_roles ALTER COLUMN id SET DEFAULT nextval('public.strapi_users_roles_id_seq'::regclass);


--
-- Name: strapi_webhooks id; Type: DEFAULT; Schema: public; Owner: strapi
--

ALTER TABLE ONLY public.strapi_webhooks ALTER COLUMN id SET DEFAULT nextval('public.strapi_webhooks_id_seq'::regclass);


--
-- Name: studio_categories id; Type: DEFAULT; Schema: public; Owner: strapi
--

ALTER TABLE ONLY public.studio_categories ALTER COLUMN id SET DEFAULT nextval('public.studio_categories_id_seq'::regclass);


--
-- Name: studio_works id; Type: DEFAULT; Schema: public; Owner: strapi
--

ALTER TABLE ONLY public.studio_works ALTER COLUMN id SET DEFAULT nextval('public.studio_works_id_seq'::regclass);


--
-- Name: studio_works_categories id; Type: DEFAULT; Schema: public; Owner: strapi
--

ALTER TABLE ONLY public.studio_works_categories ALTER COLUMN id SET DEFAULT nextval('public.studio_works_categories_id_seq'::regclass);


--
-- Name: studios id; Type: DEFAULT; Schema: public; Owner: strapi
--

ALTER TABLE ONLY public.studios ALTER COLUMN id SET DEFAULT nextval('public.studios_id_seq'::regclass);


--
-- Name: studios_components id; Type: DEFAULT; Schema: public; Owner: strapi
--

ALTER TABLE ONLY public.studios_components ALTER COLUMN id SET DEFAULT nextval('public.studios_components_id_seq'::regclass);


--
-- Name: upload_file id; Type: DEFAULT; Schema: public; Owner: strapi
--

ALTER TABLE ONLY public.upload_file ALTER COLUMN id SET DEFAULT nextval('public.upload_file_id_seq'::regclass);


--
-- Name: upload_file_morph id; Type: DEFAULT; Schema: public; Owner: strapi
--

ALTER TABLE ONLY public.upload_file_morph ALTER COLUMN id SET DEFAULT nextval('public.upload_file_morph_id_seq'::regclass);


--
-- Name: users-permissions_permission id; Type: DEFAULT; Schema: public; Owner: strapi
--

ALTER TABLE ONLY public."users-permissions_permission" ALTER COLUMN id SET DEFAULT nextval('public."users-permissions_permission_id_seq"'::regclass);


--
-- Name: users-permissions_role id; Type: DEFAULT; Schema: public; Owner: strapi
--

ALTER TABLE ONLY public."users-permissions_role" ALTER COLUMN id SET DEFAULT nextval('public."users-permissions_role_id_seq"'::regclass);


--
-- Name: users-permissions_user id; Type: DEFAULT; Schema: public; Owner: strapi
--

ALTER TABLE ONLY public."users-permissions_user" ALTER COLUMN id SET DEFAULT nextval('public."users-permissions_user_id_seq"'::regclass);


--
-- Name: writers id; Type: DEFAULT; Schema: public; Owner: strapi
--

ALTER TABLE ONLY public.writers ALTER COLUMN id SET DEFAULT nextval('public.writers_id_seq'::regclass);


--
-- Name: yuan_xing_kong_zhi_yu_jiao_hus id; Type: DEFAULT; Schema: public; Owner: strapi
--

ALTER TABLE ONLY public.yuan_xing_kong_zhi_yu_jiao_hus ALTER COLUMN id SET DEFAULT nextval('public.yuan_xing_kong_zhi_yu_jiao_hus_id_seq'::regclass);


--
-- Name: yuan_xing_kong_zhi_yu_jiao_hus_components id; Type: DEFAULT; Schema: public; Owner: strapi
--

ALTER TABLE ONLY public.yuan_xing_kong_zhi_yu_jiao_hus_components ALTER COLUMN id SET DEFAULT nextval('public.yuan_xing_kong_zhi_yu_jiao_hus_components_id_seq'::regclass);


--
-- Data for Name: Studio_category; Type: TABLE DATA; Schema: public; Owner: strapi
--

COPY public."Studio_category" (id, name, "studioId", published_at, created_by, updated_by, created_at, updated_at) FROM stdin;
\.


--
-- Data for Name: about_uses; Type: TABLE DATA; Schema: public; Owner: strapi
--

COPY public.about_uses (id, published_at, created_by, updated_by, created_at, updated_at) FROM stdin;
1	2022-04-20 15:25:48.192+00	3	4	2022-04-20 15:18:37.251+00	2022-04-21 15:29:54.046+00
\.


--
-- Data for Name: about_uses_components; Type: TABLE DATA; Schema: public; Owner: strapi
--

COPY public.about_uses_components (id, field, "order", component_type, component_id, about_us_id) FROM stdin;
3	talents	1	components_index_talents	3	1
6	talents	2	components_index_talents	4	1
7	talents	3	components_index_talents	5	1
8	talents	4	components_index_talents	6	1
4	features	1	components_index_features	1	1
9	features	2	components_index_features	2	1
10	features	3	components_index_features	3	1
5	banner	1	components_banner_banners	1	1
11	history	1	components_index_histories	1	1
12	history	2	components_index_histories	2	1
13	history	3	components_index_histories	3	1
14	history	4	components_index_histories	4	1
15	history	5	components_index_histories	5	1
25	history	6	components_index_histories	14	1
26	history	7	components_index_histories	15	1
27	history	8	components_index_histories	16	1
28	history	9	components_index_histories	17	1
29	history	10	components_index_histories	18	1
30	history	11	components_index_histories	19	1
31	history	12	components_index_histories	20	1
32	history	13	components_index_histories	21	1
\.


--
-- Data for Name: articles; Type: TABLE DATA; Schema: public; Owner: strapi
--

COPY public.articles (id, title, description, content, slug, category, author, published_at, created_by, updated_by, created_at, updated_at, course_category, likes, asdfsadf) FROM stdin;
2	We love Pizza	Pizza is so delicious, specially four cheese pizza	We love pizza at Strapi, what about you?	we-love-pizza	3	1	2022-04-11 18:09:51.636+00	\N	\N	2022-04-11 18:09:51.639+00	2022-04-11 18:09:51.664+00	\N	\N	\N
5	This shrimp is awesome	Mantis shrimps, or stomatopods, are marine crustaceans of the order Stomatopoda. Some species have specialised calcified "clubs" that can strike with great power, while others have sharp forelimbs used to capture prey.	# Badass\n\nMantis shrimps, or stomatopods, are marine crustaceans of the order Stomatopoda. Some species have specialised calcified "*clubs*" that can strike with **great power**, while others have sharp forelimbs used to capture prey. They branched from other members of the class Malacostraca around 340 million years ago. Mantis shrimps typically grow to around 10 cm (3.9 in) in length. A few can reach up to 38 cm (15 in). The largest mantis shrimp ever caught had a length of 46 cm (18 in); it was caught in the Indian River near Fort Pierce, Florida, in the United States. A mantis shrimp's carapace (the bony, thick shell that covers crustaceans and some other species) covers only the rear part of the head and the first four segments of the thorax. Varieties range in color from shades of brown to vivid colors, with more than 450 species of mantis shrimps being known. They are among the most important predators in many shallow, tropical and subtropical marine habitats. However, despite being common, they are poorly understood, as many species spend most of their lives tucked away in burrows and holes.\n\nCalled "sea locusts" by ancient Assyrians, "prawn killers" in Australia, and now sometimes referred to as "thumb splitters"—because of the animal's ability to inflict painful gashes if handled incautiously—mantis shrimps have powerful claws that are used to attack and kill prey by spearing, stunning, or dismembering.\n\n<iframe width="560" height="315" src="https://www.youtube.com/embed/CW8NUCPLE1c" frameborder="0" allow="accelerometer; autoplay; encrypted-media; gyroscope; picture-in-picture" allowfullscreen></iframe>\n\nMantis shrimps have, like mantis, ravishing legs. But theirs are so resilient that they inspire the military to make the armor of the future. Above all, their speed and striking power are the responsibility of the superpowers. As the comic book The Oatmeal recounts, the squid's ravishing legs move at the speed of a bullet fired by a 22 caliber and can strike a prey in 1/3000 of a second, with a force of 1,500 Newtons. One tenth of that speed, deployed by a human arm, "would be enough to send a baseball into orbit."\n\nA speed such as it boils water around ravishing legs and creates a shock wave capable of killing a prey missed by the strike.\n\nKept in an aquarium, crustaceans make carnage by dismembering and devouring crabs, shrimps, octopuses, snails and shells (whose shells they break). They would even be able to break the windows of overly fragile aquariums.	this-shrimp-is-awesome	4	1	2022-04-11 18:09:51.636+00	\N	\N	2022-04-11 18:09:51.64+00	2022-04-11 18:09:51.666+00	\N	\N	\N
3	The internet's Own boy	Follow the story of Aaron Swartz, the boy who could change the world	# The Story of Aaron Swartz\n\nAaron Hillel Swartz (November 8, 1986 – January 11, 2013) was an American computer programmer, entrepreneur, writer, political organizer, and Internet hacktivist. He was involved in the development of the web feed format RSS, the Markdown publishing format, the organization Creative Commons, and the website framework web.py, and was a co-founder of the social news site [Reddit](https://reddit.com). He was given the title of co-founder of Reddit by Y Combinator owner [Paul Graham](https://en.wikipedia.org/wiki/Paul_Graham_(programmer)) after the formation of Not a Bug, Inc. (a merger of Swartz's project Infogami and Redbrick Solutions, a company run by Alexis Ohanian and Steve Huffman).\n\nSwartz's work also focused on civic awareness and activism. He helped launch the Progressive Change Campaign Committee in 2009 to learn more about effective online activism. In 2010, he became a research fellow at Harvard University's Safra Research Lab on Institutional Corruption, directed by Lawrence Lessig. He founded the online group Demand Progress, known for its campaign against the Stop Online Piracy Act.\n\n\n<iframe width="560" height="315" src="https://www.youtube.com/embed/PFQGjEJ9PEc" frameborder="0" allow="accelerometer; autoplay; encrypted-media; gyroscope; picture-in-picture" allowfullscreen></iframe>\n\n\nIn 2011, Swartz was arrested by Massachusetts Institute of Technology (MIT) police on state breaking-and-entering charges, after connecting a computer to the MIT network in an unmarked and unlocked closet, and setting it to download academic journal articles systematically from JSTOR using a guest user account issued to him by MIT. Federal prosecutors later charged him with two counts of wire fraud and eleven violations of the Computer Fraud and Abuse Act,[14] carrying a cumulative maximum penalty of $1 million in fines, 35 years in prison, asset forfeiture, restitution, and supervised release.\n\nSwartz declined a plea bargain under which he would have served six months in federal prison. Two days after the prosecution rejected a counter-offer by Swartz, he was found dead in his Brooklyn apartment, where he had hanged himself.\n\nIn 2013, Swartz was inducted posthumously into the [Internet Hall of Fame](https://www.internethalloffame.org//).	the-internet-s-own-boy	5	1	2022-04-11 18:09:51.636+00	\N	\N	2022-04-11 18:09:51.64+00	2022-04-11 18:09:51.666+00	\N	\N	\N
6	What's inside a Black Hole	Maybe the answer is in this article, or not...	Well, we don't know yet...	what-s-inside-a-black-hole	1	2	2022-04-11 18:09:51.636+00	\N	\N	2022-04-11 18:09:51.64+00	2022-04-11 18:09:51.668+00	\N	\N	\N
1	Beautiful picture	Description of a beautiful picture	This is an empty blog post with a beautiful picture	beautiful-picture	4	2	2022-04-11 18:09:51.636+00	\N	1	2022-04-11 18:09:51.638+00	2022-04-11 19:42:25.841+00	4	\N	\N
7	test	11111111	1dfsadgasdfsf	test	2	\N	\N	2	1	2022-04-11 18:21:00.67+00	2022-04-11 19:55:22.019+00	2	\N	\N
\.


--
-- Data for Name: categories; Type: TABLE DATA; Schema: public; Owner: strapi
--

COPY public.categories (id, name, slug, created_by, updated_by, created_at, updated_at) FROM stdin;
1	news	news	\N	\N	2022-04-11 18:09:51.01+00	2022-04-11 18:09:51.01+00
2	food	food	\N	\N	2022-04-11 18:09:51.012+00	2022-04-11 18:09:51.012+00
3	story	story	\N	\N	2022-04-11 18:09:51.012+00	2022-04-11 18:09:51.012+00
5	tech	tech	\N	\N	2022-04-11 18:09:51.012+00	2022-04-11 18:09:51.012+00
4	nature	nature	\N	\N	2022-04-11 18:09:51.012+00	2022-04-11 18:09:51.012+00
\.


--
-- Data for Name: components_banner_banneritems; Type: TABLE DATA; Schema: public; Owner: strapi
--

COPY public.components_banner_banneritems (id, url) FROM stdin;
1	http://baidu.com/
2	http://baidu.com/
4	http://baidu.com/
5	http://baidu.com/
6	http://baidu.com
7	http://baidu.com
8	http://baidu.com
9	http://baidu.com
10	http://baidu.com
11	http://baidu.com
12	http://baidu.com
13	http://baidu.com
14	http://baidu.com
15	http://baidu.com
16	http://baidu.com
17	http://baidu.com
3	http://baidu.com/
\.


--
-- Data for Name: components_banner_banners; Type: TABLE DATA; Schema: public; Owner: strapi
--

COPY public.components_banner_banners (id) FROM stdin;
1
2
3
4
5
\.


--
-- Data for Name: components_banner_banners_components; Type: TABLE DATA; Schema: public; Owner: strapi
--

COPY public.components_banner_banners_components (id, field, "order", component_type, component_id, components_banner_banner_id) FROM stdin;
1	bannerItems	1	components_banner_banneritems	1	1
2	bannerItmes	1	components_banner_banneritems	2	1
4	bannerItems1	1	components_banner_banneritems	4	1
5	bannerItmes2	1	components_banner_banneritems	5	1
6	bannerItems1	1	components_banner_banneritems	6	2
7	bannerItmes2	1	components_banner_banneritems	7	2
8	bannerItem3	1	components_banner_banneritems	8	2
9	bannerItems1	1	components_banner_banneritems	9	3
10	bannerItmes2	1	components_banner_banneritems	10	3
11	bannerItem3	1	components_banner_banneritems	11	3
12	bannerItems1	1	components_banner_banneritems	12	4
13	bannerItmes2	1	components_banner_banneritems	13	4
14	bannerItem3	1	components_banner_banneritems	14	4
15	bannerItems1	1	components_banner_banneritems	15	5
16	bannerItmes2	1	components_banner_banneritems	16	5
17	bannerItem3	1	components_banner_banneritems	17	5
3	bannerItem3	1	components_banner_banneritems	3	1
\.


--
-- Data for Name: components_course_courses; Type: TABLE DATA; Schema: public; Owner: strapi
--

COPY public.components_course_courses (id, intro, feature) FROM stdin;
1	为何要学习手绘呢？\\n不夸张的说，手绘是设计环节中最为自由的一环，是设计初期推进项目进展效率最高的手段。手绘技法娴熟的设计师，能精准、高效且富有表现力和说服力地表达想法，在团队内的沟通效率极高。高超的手绘能力能提高设计迭代的效率（在项目初期就能尝试各种方向和角度的思考），配合一些简单的模型制作，能够非常好的进行设计推进，让自己和团队成员都能更直观的预期产品的最终效果。\\n本课程主题为工业设计手绘，主要分基础教学、产品设计手绘、交通工具设计手绘三大部分。而课程内容中除了传统纸面手绘外，还加入了用数字手绘的内容。	1、课程主讲日常参与实际设计和设计教学，了解学生群体的需求和常见问题，手绘能力和技法方式常用常新。\\n2、纸面手绘及电脑数字手绘兼具。\\n3、不仅教授手绘技法，亦教授设计思维——学习临摹已有设计的P.S.D.法，简单形态原创设计手绘的基本型加减法，复杂形态原创设计手绘的P.A.S.S.法。\\n4、交通工具设计手绘内容模块，由教师本人及在职设计师联合制作。\\n5、结合课程思政，对具有中国特色的产品进行手绘演示及产品设计解析，展现国货之光。
6	为何要学习手绘呢？\\n不夸张的说，手绘是设计环节中最为自由的一环，是设计初期推进项目进展效率最高的手段。手绘技法娴熟的设计师，能精准、高效且富有表现力和说服力地表达想法，在团队内的沟通效率极高。高超的手绘能力能提高设计迭代的效率（在项目初期就能尝试各种方向和角度的思考），配合一些简单的模型制作，能够非常好的进行设计推进，让自己和团队成员都能更直观的预期产品的最终效果。\\n本课程主题为工业设计手绘，主要分基础教学、产品设计手绘、交通工具设计手绘三大部分。而课程内容中除了传统纸面手绘外，还加入了用数字手绘的内容。	1、课程主讲日常参与实际设计和设计教学，了解学生群体的需求和常见问题，手绘能力和技法方式常用常新。\\n2、纸面手绘及电脑数字手绘兼具。\\n3、不仅教授手绘技法，亦教授设计思维——学习临摹已有设计的P.S.D.法，简单形态原创设计手绘的基本型加减法，复杂形态原创设计手绘的P.A.S.S.法。\\n4、交通工具设计手绘内容模块，由教师本人及在职设计师联合制作。\\n5、结合课程思政，对具有中国特色的产品进行手绘演示及产品设计解析，展现国货之光。
5	为何要学习手绘呢？\\n不夸张的说，手绘是设计环节中最为自由的一环，是设计初期推进项目进展效率最高的手段。手绘技法娴熟的设计师，能精准、高效且富有表现力和说服力地表达想法，在团队内的沟通效率极高。高超的手绘能力能提高设计迭代的效率（在项目初期就能尝试各种方向和角度的思考），配合一些简单的模型制作，能够非常好的进行设计推进，让自己和团队成员都能更直观的预期产品的最终效果。\\n本课程主题为工业设计手绘，主要分基础教学、产品设计手绘、交通工具设计手绘三大部分。而课程内容中除了传统纸面手绘外，还加入了用数字手绘的内容。	1、课程主讲日常参与实际设计和设计教学，了解学生群体的需求和常见问题，手绘能力和技法方式常用常新。\\n2、纸面手绘及电脑数字手绘兼具。\\n3、不仅教授手绘技法，亦教授设计思维——学习临摹已有设计的P.S.D.法，简单形态原创设计手绘的基本型加减法，复杂形态原创设计手绘的P.A.S.S.法。\\n4、交通工具设计手绘内容模块，由教师本人及在职设计师联合制作。\\n5、结合课程思政，对具有中国特色的产品进行手绘演示及产品设计解析，展现国货之光。
4	为何要学习手绘呢？\\n不夸张的说，手绘是设计环节中最为自由的一环，是设计初期推进项目进展效率最高的手段。手绘技法娴熟的设计师，能精准、高效且富有表现力和说服力地表达想法，在团队内的沟通效率极高。高超的手绘能力能提高设计迭代的效率（在项目初期就能尝试各种方向和角度的思考），配合一些简单的模型制作，能够非常好的进行设计推进，让自己和团队成员都能更直观的预期产品的最终效果。\\n本课程主题为工业设计手绘，主要分基础教学、产品设计手绘、交通工具设计手绘三大部分。而课程内容中除了传统纸面手绘外，还加入了用数字手绘的内容。	1、课程主讲日常参与实际设计和设计教学，了解学生群体的需求和常见问题，手绘能力和技法方式常用常新。\\n2、纸面手绘及电脑数字手绘兼具。\\n3、不仅教授手绘技法，亦教授设计思维——学习临摹已有设计的P.S.D.法，简单形态原创设计手绘的基本型加减法，复杂形态原创设计手绘的P.A.S.S.法。\\n4、交通工具设计手绘内容模块，由教师本人及在职设计师联合制作。\\n5、结合课程思政，对具有中国特色的产品进行手绘演示及产品设计解析，展现国货之光。
3	为何要学习手绘呢？\\n不夸张的说，手绘是设计环节中最为自由的一环，是设计初期推进项目进展效率最高的手段。手绘技法娴熟的设计师，能精准、高效且富有表现力和说服力地表达想法，在团队内的沟通效率极高。高超的手绘能力能提高设计迭代的效率（在项目初期就能尝试各种方向和角度的思考），配合一些简单的模型制作，能够非常好的进行设计推进，让自己和团队成员都能更直观的预期产品的最终效果。\\n本课程主题为工业设计手绘，主要分基础教学、产品设计手绘、交通工具设计手绘三大部分。而课程内容中除了传统纸面手绘外，还加入了用数字手绘的内容。	1、课程主讲日常参与实际设计和设计教学，了解学生群体的需求和常见问题，手绘能力和技法方式常用常新。\\n2、纸面手绘及电脑数字手绘兼具。\\n3、不仅教授手绘技法，亦教授设计思维——学习临摹已有设计的P.S.D.法，简单形态原创设计手绘的基本型加减法，复杂形态原创设计手绘的P.A.S.S.法。\\n4、交通工具设计手绘内容模块，由教师本人及在职设计师联合制作。\\n5、结合课程思政，对具有中国特色的产品进行手绘演示及产品设计解析，展现国货之光。
2	gong-ye-she-ji-shou-hui	gong-ye-she-ji-shou-hui
9	为何要学习手绘呢？\\n不夸张的说，手绘是设计环节中最为自由的一环，是设计初期推进项目进展效率最高的手段。手绘技法娴熟的设计师，能精准、高效且富有表现力和说服力地表达想法，在团队内的沟通效率极高。高超的手绘能力能提高设计迭代的效率（在项目初期就能尝试各种方向和角度的思考），配合一些简单的模型制作，能够非常好的进行设计推进，让自己和团队成员都能更直观的预期产品的最终效果。\\n本课程主题为工业设计手绘，主要分基础教学、产品设计手绘、交通工具设计手绘三大部分。而课程内容中除了传统纸面手绘外，还加入了用数字手绘的内容。	1、课程主讲日常参与实际设计和设计教学，了解学生群体的需求和常见问题，手绘能力和技法方式常用常新。\\n2、纸面手绘及电脑数字手绘兼具。\\n3、不仅教授手绘技法，亦教授设计思维——学习临摹已有设计的P.S.D.法，简单形态原创设计手绘的基本型加减法，复杂形态原创设计手绘的P.A.S.S.法。\\n4、交通工具设计手绘内容模块，由教师本人及在职设计师联合制作。\\n5、结合课程思政，对具有中国特色的产品进行手绘演示及产品设计解析，展现国货之光。
10	为何要学习手绘呢？\\n不夸张的说，手绘是设计环节中最为自由的一环，是设计初期推进项目进展效率最高的手段。手绘技法娴熟的设计师，能精准、高效且富有表现力和说服力地表达想法，在团队内的沟通效率极高。高超的手绘能力能提高设计迭代的效率（在项目初期就能尝试各种方向和角度的思考），配合一些简单的模型制作，能够非常好的进行设计推进，让自己和团队成员都能更直观的预期产品的最终效果。\\n本课程主题为工业设计手绘，主要分基础教学、产品设计手绘、交通工具设计手绘三大部分。而课程内容中除了传统纸面手绘外，还加入了用数字手绘的内容。	1、课程主讲日常参与实际设计和设计教学，了解学生群体的需求和常见问题，手绘能力和技法方式常用常新。\\n2、纸面手绘及电脑数字手绘兼具。\\n3、不仅教授手绘技法，亦教授设计思维——学习临摹已有设计的P.S.D.法，简单形态原创设计手绘的基本型加减法，复杂形态原创设计手绘的P.A.S.S.法。\\n4、交通工具设计手绘内容模块，由教师本人及在职设计师联合制作。\\n5、结合课程思政，对具有中国特色的产品进行手绘演示及产品设计解析，展现国货之光。
8	zysb\n	1、课程主讲日常参与实际设计和设计教学，了解学生群体的需求和常见问题，手绘能力和技法方式常用常新。\\n2、纸面手绘及电脑数字手绘兼具。\\n3、不仅教授手绘技法，亦教授设计思维——学习临摹已有设计的P.S.D.法，简单形态原创设计手绘的基本型加减法，复杂形态原创设计手绘的P.A.S.S.法。\\n4、交通工具设计手绘内容模块，由教师本人及在职设计师联合制作。\\n5、结合课程思政，对具有中国特色的产品进行手绘演示及产品设计解析，展现国货之光。
7	为何要学习手绘呢？\n不夸张的说，手绘是设计环节中最为自由的一环，是设计初期推进项目进展效率最高的手段。手绘技法娴熟的设计师，能精准、高效且富有表现力和说服力地表达想法，在团队内的沟通效率极高。高超的手绘能力能提高设计迭代的效率（在项目初期就能尝试各种方向和角度的思考），配合一些简单的模型制作，能够非常好的进行设计推进，让自己和团队成员都能更直观的预期产品的最终效果。\n\n![99e73fc1aa1ef57cf93b73bc834d91b6.jpg](/uploads/99e73fc1aa1ef57cf93b73bc834d91b6_e4ed73cc7b.jpg)\n\n本课程主题为工业设计手绘，主要分基础教学、产品设计手绘、交通工具设计手绘三大部分。而课程内容中除了传统纸面手绘外，还加入了用数字手绘的内容。	1、课程主讲日常参与实际设计和设计教学，了解学生群体的需求和常见问题，手绘能力和技法方式常用常新。\\n2、纸面手绘及电脑数字手绘兼具。\\n3、不仅教授手绘技法，亦教授设计思维——学习临摹已有设计的P.S.D.法，简单形态原创设计手绘的基本型加减法，复杂形态原创设计手绘的P.A.S.S.法。\n \n2 、交通工具设计手绘内容模块，由教师本人及在职设计师联合制作。\\n5、结合课程思政，对具有中国特色的产品进行手绘演示及产品设计解析，展现国货之光。\n\n\n![99e73fc1aa1ef57cf93b73bc834d91b6.jpg](/uploads/99e73fc1aa1ef57cf93b73bc834d91b6_e4ed73cc7b.jpg)\n
12	为何要学习手绘呢？\n不夸张的说，手绘是设计环节中最为自由的一环，是设计初期推进项目进展效率最高的手段。手绘技法娴熟的设计师，能精准、高效且富有表现力和说服力地表达想法，在团队内的沟通效率极高。高超的手绘能力能提高设计迭代的效率（在项目初期就能尝试各种方向和角度的思考），配合一些简单的模型制作，能够非常好的进行设计推进，让自己和团队成员都能更直观的预期产品的最终效果。\n本课程主题为工业设计手绘，主要分基础教学、产品设计手绘、交通工具设计手绘三大部分。而课程内容中除了传统纸面手绘外，还加入了用数字手绘的内容。	1、课程主讲日常参与实际设计和设计教学，了解学生群体的需求和常见问题，手绘能力和技法方式常用常新。   \n2、纸面手绘及电脑数字手绘兼具。\n3、不仅教授手绘技法，亦教授设计思维——学习临摹已有设计的P.S.D.法，简单形态原创设计手绘的基本型加减法，复杂形态原创设计手绘的P.A.S.S.法。\n4、交通工具设计手绘内容模块，由教师本人及在职设计师联合制作。\\n5、结合课程思政，对具有中国特色的产品进行手绘演示及产品设计解析，展现国货之光。\n\n
13	为何要学习手绘呢？\n不夸张的说，手绘是设计环节中最为自由的一环，是设计初期推进项目进展效率最高的手段。手绘技法娴熟的设计师，能精准、高效且富有表现力和说服力地表达想法，在团队内的沟通效率极高。高超的手绘能力能提高设计迭代的效率（在项目初期就能尝试各种方向和角度的思考），配合一些简单的模型制作，能够非常好的进行设计推进，让自己和团队成员都能更直观的预期产品的最终效果。\n本课程主题为工业设计手绘，主要分基础教学、产品设计手绘、交通工具设计手绘三大部分。而课程内容中除了传统纸面手绘外，还加入了用数字手绘的内容。	1、课程主讲日常参与实际设计和设计教学，了解学生群体的需求和常见问题，手绘能力和技法方式常用常新。   \n2、纸面手绘及电脑数字手绘兼具。\n3、不仅教授手绘技法，亦教授设计思维——学习临摹已有设计的P.S.D.法，简单形态原创设计手绘的基本型加减法，复杂形态原创设计手绘的P.A.S.S.法。\n4、交通工具设计手绘内容模块，由教师本人及在职设计师联合制作。\n5、结合课程思政，对具有中国特色的产品进行手绘演示及产品设计解析，展现国货之光。\n\n
11	为何要学习手绘呢？\\n不夸张的说，手绘是设计环节中最为自由的一环，是设计初期推进项目进展效率最高的手段。手绘技法娴熟的设计师，能精准、高效且富有表现力和说服力地表达想法，在团队内的沟通效率极高。高超的手绘能力能提高设计迭代的效率（在项目初期就能尝试各种方向和角度的思考），配合一些简单的模型制作，能够非常好的进行设计推进，让自己和团队成员都能更直观的预期产品的最终效果。\\n本课程主题为工业设计手绘，主要分基础教学、产品设计手绘、交通工具设计手绘三大部分。而课程内容中除了传统纸面手绘外，还加入了用数字手绘的内容。	1、课程主讲日常参与实际设计和设计教学，了解学生群体的需求和常见问题，手绘能力和技法方式常用常新。\\n2、纸面手绘及电脑数字手绘兼具。\\n3、不仅教授手绘技法，亦教授设计思维——学习临摹已有设计的P.S.D.法，简单形态原创设计手绘的基本型加减法，复杂形态原创设计手绘的P.A.S.S.法。\\n4、交通工具设计手绘内容模块，由教师本人及在职设计师联合制作。\\n5、结合课程思政，对具有中国特色的产品进行手绘演示及产品设计解析，展现国货之光。
\.


--
-- Data for Name: components_decoration_heroes; Type: TABLE DATA; Schema: public; Owner: strapi
--

COPY public.components_decoration_heroes (id, title) FROM stdin;
1	My blog
\.


--
-- Data for Name: components_index_achievements; Type: TABLE DATA; Schema: public; Owner: strapi
--

COPY public.components_index_achievements (id) FROM stdin;
\.


--
-- Data for Name: components_index_features; Type: TABLE DATA; Schema: public; Owner: strapi
--

COPY public.components_index_features (id, describe, title) FROM stdin;
1	专业有国家精品资源共享课、国家视频公开课各1门，浙江省精品在线开放课程2门，19门数字教学课件获全国、省级奖项，以及《设计图学》等另10门在线开放课程在建中。成果“艺术设计类课程E-CO数字化生态环境构建及其学习模式改革”，获国家教育部高等学校教学成果奖二等奖。	系列国家级共享 教学资源建设为 基础的数字平台 与教学生态
2	强调多学科交叉的教学内容及边界拓展，通过课程教学储备、工作室教学拓展、实训教学联动、创造工坊教学引领等多场景教学互动，促进学生的创新实践与行业引领能力培养。拥有教育部国家工程实践教育中心建设项目2项，校外导师20余名，校外实习基地近20个，近年来学生在红点、DIA等国内外赛事获奖300余项。成果“行业特色地方高校本科拔尖人才培养的探索与实践”，获国家教育部高等学校教学成果奖二等奖。	教育部卓越工程 师计划为依托的 四位一体产教融 合培养模式
3	立足行业与区域经济发展需要，强调商业创新与产业转型升级驱动，瞄准深度实践能力和人文素养的培养，以校企联动、教育改革联动的方式，构建了工作室集群为主体的数字共享平台和学生专利创新成果孵化平台，提升了专业社会服务能力以及自主创新能力。团队有发明专利70余项，产业化设计成果200多项，帮助多家企业实现产值数十亿，孵化了素殼、片刻、为来等多个著名原创设计师品牌，上海国际家居展、东京时尚家居展、米兰国际家具展等多次行业参展。	工作室集群建设为 主体的自主创新成 果孵化与共享平台
\.


--
-- Data for Name: components_index_histories; Type: TABLE DATA; Schema: public; Owner: strapi
--

COPY public.components_index_histories (id, year, content) FROM stdin;
1	1996	工业设计成立
2	2000	获批艺术硕士学位点
3	2004	设计艺术学评为浙江省B类重点建设学科
4	2005	获批工业设计工程硕士点
5	2009	获批艺术硕士学位点
14	2011	获批设计学一级学科硕士点
15	2012	设计学入选浙江省重点学科
16	2013	教育部卓越工程师教育培养计划专业
17	2014	浙江省“十二五” 普通本科高校新兴特色专业
18	2016	浙江省一流学科A类
19	2017	浙江省“十三五” 普通本科高校特色专业
20	2019	浙江省一流本科专业建设点
21	2021	国家级一流本科专业建设点
\.


--
-- Data for Name: components_index_talents; Type: TABLE DATA; Schema: public; Owner: strapi
--

COPY public.components_index_talents (id, describe, title) FROM stdin;
3	近三年就业率达100%，离职率低，除了顾家、九阳等传统制造行业及设计公司，毕业生也就职于阿里巴巴、网易等知名互联网企业，实现了以设计为核心的跨行业多领域就业。\n	就业质量高
4	历年平均创业率高，热浪设计、素造设计、本来设计等十余家毕业生创办的设计公司已在国内享有美誉度。\n	优秀创业案例多
5	多考取浙江大学、英国皇家艺术学院、日本多摩美术大学、意大利米兰理工大学等国内外著名设计院校。	升学深造竞争力强
6	用人单位多数通过实习实训等方式提前锁定毕业生到企业就业，普遍评价学生基础扎实、业务过硬。2019年浙江省教育评估院调查数据显示，毕业生在实践动手能力、创新能力、团队协作能力、人际沟通能力和专业水平等各方面的企业评价得分均为93.33，领先于全省平均水平。	用人单位满意度高
\.


--
-- Data for Name: components_reachdirection_reach_directions; Type: TABLE DATA; Schema: public; Owner: strapi
--

COPY public.components_reachdirection_reach_directions (id, "direction_ZH", "direction_EN") FROM stdin;
1	社会公共服务系统的社会创新研究	Research on social innovation of social public Service system
2	儿童相关产品服务创新研究	Research on innovation of children related products and services
3	基于积极老龄化的友好型智慧养老设计研究	Research on friendly intelligent pension design based on active aging
4	基于材料创新的快速消费产品研究	Research on fast consumer Products based on material innovation
5	传统工艺现代文脉梳理研究	Research on traditional craft and modern context
6	阿斯顿飞发撒地方啊是的	Research on social innovation of social public Service system
7	社会公共服务系统的社会创新研究	Research on social innovation of social public Service system
8	社会公共服务系统的社会创新研究	Research on social innovation of social public Service system
9	社会公共服务系统的社会创新研究	Research on social innovation of social public Service system
\.


--
-- Data for Name: components_sections_articles; Type: TABLE DATA; Schema: public; Owner: strapi
--

COPY public.components_sections_articles (id, title, discribe, content, "videoUrl", author) FROM stdin;
1	\N	sdfsdfasdf	sadfasdfasdfasdf	sadfasdfasdfsa	zhou
\.


--
-- Data for Name: components_sections_people; Type: TABLE DATA; Schema: public; Owner: strapi
--

COPY public.components_sections_people (id, name, describe) FROM stdin;
1	梁玲琳	浙江省大学生工业设计竞赛专家委员会\n2020年至今\n\n浙江省工业设计领域专家库成员\n2021年至今\n\n澳洲莫纳什大学访学：赴建筑与设计学院（MADA）开展服务设计专题研究\n2017.11-2012.12
2	1231	浙江省大学生工业设计竞赛专家委员会\n2020年至今\n\n浙江省工业设计领域专家库成员\n2021年至今\n\n澳洲莫纳什大学访学：赴建筑与设计学院（MADA）开展服务设计专题研究\n2017.11-2012.12
3	asdfasd	浙江省大学生工业设计竞赛专家委员会\n2020年至今\n\n浙江省工业设计领域专家库成员\n2021年至今\n\n澳洲莫纳什大学访学：赴建筑与设计学院（MADA）开展服务设计专题研究\n2017.11-2012.12
4	是短发	浙江省大学生工业设计竞赛专家委员会\n2020年至今\n\n浙江省工业设计领域专家库成员\n2021年至今\n\n澳洲莫纳什大学访学：赴建筑与设计学院（MADA）开展服务设计专题研究\n2017.11-2012.12
5	啊是短发	浙江省大学生工业设计竞赛专家委员会\n2020年至今\n\n浙江省工业设计领域专家库成员\n2021年至今\n\n澳洲莫纳什大学访学：赴建筑与设计学院（MADA）开展服务设计专题研究\n2017.11-2012.12
8	是的发送地方	是的方法大概是的发光是的发光
6	撒打算大	浙江省大学生工业设计竞赛专家委员会\n2020年至今\n\n浙江省工业设计领域专家库成员\n2021年至今\n\n澳洲莫纳什大学访学：赴建筑与设计学院（MADA）开展服务设计专题研究\n2017.11-2012.12
7	沃尔沃	浙江省大学生工业设计竞赛专家委员会\n2020年至今\n\n浙江省工业设计领域专家库成员\n2021年至今\n\n澳洲莫纳什大学访学：赴建筑与设计学院（MADA）开展服务设计专题研究\n2017.11-2012.12
\.


--
-- Data for Name: components_shared_seos; Type: TABLE DATA; Schema: public; Owner: strapi
--

COPY public.components_shared_seos (id, "metaTitle", "metaDescription") FROM stdin;
1	My personal Strapi blog	Discover my SEO friendly blog built with Strapi.
2	Page	A blog made with Strapi
\.


--
-- Data for Name: components_studio_studios; Type: TABLE DATA; Schema: public; Owner: strapi
--

COPY public.components_studio_studios (id, describe) FROM stdin;
2	团队目前有专职教师29名，其中教授4名、副教授9名，博士18名（含在读），有海外留学访学经历的11人。享受国务院特殊津贴专家1名，浙江省151人才1名，浙江省学科带头人1名，浙江省优秀教师1名，浙江省教坛新秀1名，校教坛新秀5名，校三育人先进个人6名，校“521计划”拔尖人才1名、骨干人才4名，金富春教学奖2名，五四青年奖章2名，华鼎奖教金3名，双高双强教师3名，由家具行业协会认定的首批全国家具十佳设计师1名，以及浙江省十佳工业设计推进者2名。
1	团队目前有专职教师29名，其中教授4名、副教授9名，博士18名（含在读），有海外留学访学经历的11人。享受国务院特殊津贴专家1名，浙江省151人才1名，浙江省学科带头人1名，浙江省优秀教师1名，浙江省教坛新秀1名，校教坛新秀5名，校三育人先进个人6名，校“521计划”拔尖人才1名、骨干人才4名，金富春教学奖2名，五四青年奖章2名，华鼎奖教金3名，双高双强教师3名，由家具行业协会认定的首批全国家具十佳设计师1名，以及浙江省十佳工业设计推进者2名。
3	kechixu团队目前有专职教师29名，其中教授4名、副教授9名，博士18名（含在读），有海外留学访学经历的11人。享受国务院特殊津贴专家1名，浙江省151人才1名，浙江省学科带头人1名，浙江省优秀教师1名，浙江省教坛新秀1名，校教坛新秀5名，校三育人先进个人6名，校“521计划”拔尖人才1名、骨干人才4名，金富春教学奖2名，五四青年奖章2名，华鼎奖教金3名，双高双强教师3名，由家具行业协会认定的首批全国家具十佳设计师1名，以及浙江省十佳工业设计推进者2名。
4	团队目前有专职教师29名，其中教授4名、副教授9名，博士18名（含在读），有海外留学访学经历的11人。享受国务院特殊津贴专家1名，浙江省151人才1名，浙江省学科带头人1名，浙江省优秀教师1名，浙江省教坛新秀1名，校教坛新秀5名，校三育人先进个人6名，校“521计划”拔尖人才1名、骨干人才4名，金富春教学奖2名，五四青年奖章2名，华鼎奖教金3名，双高双强教师3名，由家具行业协会认定的首批全国家具十佳设计师1名，以及浙江省十佳工业设计推进者2名。
5	团队目前有专职教师29名，其中教授4名、副教授9名，博士18名（含在读），有海外留学访学经历的11人。享受国务院特殊津贴专家1名，浙江省151人才1名，浙江省学科带头人1名，浙江省优秀教师1名，浙江省教坛新秀1名，校教坛新秀5名，校三育人先进个人6名，校“521计划”拔尖人才1名、骨干人才4名，金富春教学奖2名，五四青年奖章2名，华鼎奖教金3名，双高双强教师3名，由家具行业协会认定的首批全国家具十佳设计师1名，以及浙江省十佳工业设计推进者2名。
\.


--
-- Data for Name: components_studio_studios_components; Type: TABLE DATA; Schema: public; Owner: strapi
--

COPY public.components_studio_studios_components (id, field, "order", component_type, component_id, components_studio_studio_id) FROM stdin;
1	Personnel	1	components_sections_people	1	1
2	Personnel	2	components_sections_people	2	1
3	Personnel	3	components_sections_people	3	1
4	ReachDirection	1	components_reachdirection_reach_directions	1	1
5	ReachDirection	2	components_reachdirection_reach_directions	2	1
6	ReachDirection	3	components_reachdirection_reach_directions	3	1
7	ReachDirection	4	components_reachdirection_reach_directions	4	1
8	ReachDirection	5	components_reachdirection_reach_directions	5	1
9	Personnel	1	components_sections_people	4	2
10	Personnel	2	components_sections_people	5	2
13	ReachDirection	1	components_reachdirection_reach_directions	6	2
14	Personnel	1	components_sections_people	8	3
15	ReachDirection	1	components_reachdirection_reach_directions	7	3
11	Personnel	1	components_sections_people	6	4
16	ReachDirection	1	components_reachdirection_reach_directions	8	4
12	Personnel	1	components_sections_people	7	5
17	ReachDirection	1	components_reachdirection_reach_directions	9	5
\.


--
-- Data for Name: core_store; Type: TABLE DATA; Schema: public; Owner: strapi
--

COPY public.core_store (id, key, value, type, environment, tag) FROM stdin;
54	model_def_application::ji-chu-she-ji.ji-chu-she-ji	{"uid":"application::ji-chu-she-ji.ji-chu-she-ji","collectionName":"ji_chu_she_jis","kind":"singleType","info":{"name":"Ji-Chu-She-Ji"},"options":{"increments":true,"timestamps":["created_at","updated_at"],"draftAndPublish":true},"pluginOptions":{},"attributes":{"course":{"type":"component","repeatable":false,"component":"course.course"},"published_at":{"type":"datetime","configurable":false,"writable":true,"visible":false},"created_by":{"model":"user","plugin":"admin","configurable":false,"writable":false,"visible":false,"private":true},"updated_by":{"model":"user","plugin":"admin","configurable":false,"writable":false,"visible":false,"private":true}}}	object	\N	\N
34	plugin_content_manager_configuration_content_types::plugins::upload.file	{"uid":"plugins::upload.file","settings":{"bulkable":true,"filterable":true,"searchable":true,"pageSize":10,"mainField":"name","defaultSortBy":"name","defaultSortOrder":"ASC"},"metadatas":{"id":{"edit":{},"list":{"label":"Id","searchable":true,"sortable":true}},"name":{"edit":{"label":"Name","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"Name","searchable":true,"sortable":true}},"alternativeText":{"edit":{"label":"AlternativeText","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"AlternativeText","searchable":true,"sortable":true}},"caption":{"edit":{"label":"Caption","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"Caption","searchable":true,"sortable":true}},"width":{"edit":{"label":"Width","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"Width","searchable":true,"sortable":true}},"height":{"edit":{"label":"Height","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"Height","searchable":true,"sortable":true}},"formats":{"edit":{"label":"Formats","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"Formats","searchable":false,"sortable":false}},"hash":{"edit":{"label":"Hash","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"Hash","searchable":true,"sortable":true}},"ext":{"edit":{"label":"Ext","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"Ext","searchable":true,"sortable":true}},"mime":{"edit":{"label":"Mime","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"Mime","searchable":true,"sortable":true}},"size":{"edit":{"label":"Size","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"Size","searchable":true,"sortable":true}},"url":{"edit":{"label":"Url","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"Url","searchable":true,"sortable":true}},"previewUrl":{"edit":{"label":"PreviewUrl","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"PreviewUrl","searchable":true,"sortable":true}},"provider":{"edit":{"label":"Provider","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"Provider","searchable":true,"sortable":true}},"provider_metadata":{"edit":{"label":"Provider_metadata","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"Provider_metadata","searchable":false,"sortable":false}},"related":{"edit":{"label":"Related","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"Related","searchable":false,"sortable":false}},"created_at":{"edit":{"label":"Created_at","description":"","placeholder":"","visible":false,"editable":true},"list":{"label":"Created_at","searchable":true,"sortable":true}},"updated_at":{"edit":{"label":"Updated_at","description":"","placeholder":"","visible":false,"editable":true},"list":{"label":"Updated_at","searchable":true,"sortable":true}}},"layouts":{"list":["id","name","alternativeText","caption"],"editRelations":["related"],"edit":[[{"name":"name","size":6},{"name":"alternativeText","size":6}],[{"name":"caption","size":6},{"name":"width","size":4}],[{"name":"height","size":4}],[{"name":"formats","size":12}],[{"name":"hash","size":6},{"name":"ext","size":6}],[{"name":"mime","size":6},{"name":"size","size":4}],[{"name":"url","size":6},{"name":"previewUrl","size":6}],[{"name":"provider","size":6}],[{"name":"provider_metadata","size":12}]]}}	object		
8	model_def_application::writer.writer	{"uid":"application::writer.writer","collectionName":"writers","kind":"collectionType","info":{"name":"Writer"},"options":{"increments":true,"timestamps":["created_at","updated_at"]},"attributes":{"name":{"type":"string"},"picture":{"model":"file","via":"related","allowedTypes":["images"],"plugin":"upload","required":false},"articles":{"via":"author","collection":"article","isVirtual":true},"email":{"type":"string"},"created_by":{"model":"user","plugin":"admin","configurable":false,"writable":false,"visible":false,"private":true},"updated_by":{"model":"user","plugin":"admin","configurable":false,"writable":false,"visible":false,"private":true}}}	object	\N	\N
11	model_def_strapi::role	{"uid":"strapi::role","collectionName":"strapi_role","kind":"collectionType","info":{"name":"Role","description":""},"options":{"timestamps":["created_at","updated_at"]},"pluginOptions":{"content-manager":{"visible":false},"content-type-builder":{"visible":false}},"attributes":{"name":{"type":"string","minLength":1,"unique":true,"configurable":false,"required":true},"code":{"type":"string","minLength":1,"unique":true,"configurable":false,"required":true},"description":{"type":"string","configurable":false},"users":{"configurable":false,"collection":"user","via":"roles","plugin":"admin","attribute":"user","column":"id","isVirtual":true},"permissions":{"configurable":false,"plugin":"admin","collection":"permission","via":"role","isVirtual":true}}}	object	\N	\N
5	model_def_application::category.category	{"uid":"application::category.category","collectionName":"categories","kind":"collectionType","info":{"name":"category"},"options":{"increments":true,"timestamps":["created_at","updated_at"]},"attributes":{"name":{"type":"string","required":true},"slug":{"type":"uid","targetField":"name","required":true},"articles":{"via":"category","collection":"article","isVirtual":true},"created_by":{"model":"user","plugin":"admin","configurable":false,"writable":false,"visible":false,"private":true},"updated_by":{"model":"user","plugin":"admin","configurable":false,"writable":false,"visible":false,"private":true}}}	object	\N	\N
79	model_def_application::studio-category.studio-category	{"uid":"application::studio-category.studio-category","collectionName":"studio_categories","kind":"collectionType","info":{"name":"Studio_Category"},"options":{"increments":true,"timestamps":["created_at","updated_at"],"draftAndPublish":true},"pluginOptions":{},"attributes":{"name":{"type":"string"},"studio_id":{"type":"string"},"studio_works":{"via":"studio_category","collection":"studio-works","isVirtual":true},"published_at":{"type":"datetime","configurable":false,"writable":true,"visible":false},"created_by":{"model":"user","plugin":"admin","configurable":false,"writable":false,"visible":false,"private":true},"updated_by":{"model":"user","plugin":"admin","configurable":false,"writable":false,"visible":false,"private":true}}}	object	\N	\N
7	model_def_application::homepage.homepage	{"uid":"application::homepage.homepage","collectionName":"homepages","kind":"singleType","info":{"name":"Homepage"},"options":{"increments":true,"timestamps":["created_at","updated_at"]},"attributes":{"seo":{"type":"component","repeatable":false,"component":"shared.seo"},"hero":{"type":"component","repeatable":false,"component":"sections.hero","required":true},"created_by":{"model":"user","plugin":"admin","configurable":false,"writable":false,"visible":false,"private":true},"updated_by":{"model":"user","plugin":"admin","configurable":false,"writable":false,"visible":false,"private":true}}}	object	\N	\N
2	model_def_sections.hero	{"uid":"sections.hero","collectionName":"components_decoration_heroes","info":{"name":"Hero","icon":"address-card"},"options":{"timestamps":false},"attributes":{"title":{"type":"string","required":true}}}	object	\N	\N
6	model_def_application::global.global	{"uid":"application::global.global","collectionName":"globals","kind":"singleType","info":{"name":"Global"},"options":{"increments":true,"timestamps":["created_at","updated_at"]},"attributes":{"favicon":{"model":"file","via":"related","allowedTypes":["images","files","videos"],"plugin":"upload","required":false},"siteName":{"type":"string","required":true},"defaultSeo":{"type":"component","repeatable":false,"component":"shared.seo","required":true},"created_by":{"model":"user","plugin":"admin","configurable":false,"writable":false,"visible":false,"private":true},"updated_by":{"model":"user","plugin":"admin","configurable":false,"writable":false,"visible":false,"private":true}}}	object	\N	\N
3	model_def_shared.seo	{"uid":"shared.seo","collectionName":"components_shared_seos","info":{"name":"Seo","icon":"allergies"},"options":{"timestamps":false},"attributes":{"metaTitle":{"type":"string","required":true},"metaDescription":{"type":"text","required":true},"shareImage":{"model":"file","via":"related","allowedTypes":["images"],"plugin":"upload","required":false}}}	object	\N	\N
59	model_def_application::course-works.course-works	{"uid":"application::course-works.course-works","collectionName":"course_works","kind":"collectionType","info":{"name":"CourseWorks","description":""},"options":{"increments":true,"timestamps":["created_at","updated_at"],"draftAndPublish":true},"pluginOptions":{},"attributes":{"title":{"type":"string","required":true,"unique":true,"private":false,"maxLength":30,"minLength":5},"course_category":{"via":"course_works","model":"course-category"},"discribe":{"type":"text","unique":false,"required":true,"maxLength":100,"minLength":5},"content":{"type":"richtext","required":true},"videourl":{"type":"text"},"cover":{"model":"file","via":"related","allowedTypes":["images"],"plugin":"upload","required":true,"pluginOptions":{}},"author":{"type":"string","required":true,"maxLength":30,"minLength":2},"likes":{"type":"integer","default":0},"published_at":{"type":"datetime","configurable":false,"writable":true,"visible":false},"created_by":{"model":"user","plugin":"admin","configurable":false,"writable":false,"visible":false,"private":true},"updated_by":{"model":"user","plugin":"admin","configurable":false,"writable":false,"visible":false,"private":true}}}	object	\N	\N
23	plugin_users-permissions_email	{"reset_password":{"display":"Email.template.reset_password","icon":"sync","options":{"from":{"name":"Administration Panel","email":"no-reply@strapi.io"},"response_email":"","object":"Reset password","message":"<p>We heard that you lost your password. Sorry about that!</p>\\n\\n<p>But don’t worry! You can use the following link to reset your password:</p>\\n<p><%= URL %>?code=<%= TOKEN %></p>\\n\\n<p>Thanks.</p>"}},"email_confirmation":{"display":"Email.template.email_confirmation","icon":"check-square","options":{"from":{"name":"Administration Panel","email":"no-reply@strapi.io"},"response_email":"","object":"Account confirmation","message":"<p>Thank you for registering!</p>\\n\\n<p>You have to confirm your email address. Please click on the link below.</p>\\n\\n<p><%= URL %>?confirmation=<%= CODE %></p>\\n\\n<p>Thanks.</p>"}}}	object		
81	plugin_content_manager_configuration_content_types::application::studio-category.studio-category	{"uid":"application::studio-category.studio-category","settings":{"bulkable":true,"filterable":true,"searchable":true,"pageSize":10,"mainField":"name","defaultSortBy":"name","defaultSortOrder":"ASC"},"metadatas":{"id":{"edit":{},"list":{"label":"Id","searchable":true,"sortable":true}},"name":{"edit":{"label":"Name","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"Name","searchable":true,"sortable":true}},"studio_id":{"edit":{"label":"Studio_id","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"Studio_id","searchable":true,"sortable":true}},"studio_works":{"edit":{"label":"Studio_works","description":"","placeholder":"","visible":true,"editable":true,"mainField":"title"},"list":{"label":"Studio_works","searchable":false,"sortable":false}},"created_at":{"edit":{"label":"Created_at","description":"","placeholder":"","visible":false,"editable":true},"list":{"label":"Created_at","searchable":true,"sortable":true}},"updated_at":{"edit":{"label":"Updated_at","description":"","placeholder":"","visible":false,"editable":true},"list":{"label":"Updated_at","searchable":true,"sortable":true}}},"layouts":{"list":["id","name","studio_id","created_at"],"edit":[[{"name":"name","size":6},{"name":"studio_id","size":6}]],"editRelations":["studio_works"]}}	object		
40	model_def_application::course.course	{"uid":"application::course.course","collectionName":"courses","kind":"singleType","info":{"name":"course","description":""},"options":{"increments":true,"timestamps":["created_at","updated_at"],"draftAndPublish":false},"pluginOptions":{},"attributes":{"gysjsh":{"type":"component","repeatable":false,"component":"course.course"},"jcsj":{"type":"component","repeatable":false,"component":"course.course"},"sjtx":{"type":"component","repeatable":false,"component":"course.course"},"yxkzyjh":{"type":"component","repeatable":false,"component":"course.course"},"rjgcx":{"type":"component","repeatable":false,"component":"course.course"},"created_by":{"model":"user","plugin":"admin","configurable":false,"writable":false,"visible":false,"private":true},"updated_by":{"model":"user","plugin":"admin","configurable":false,"writable":false,"visible":false,"private":true}}}	object	\N	\N
101	model_def_application::news-banner.news-banner	{"uid":"application::news-banner.news-banner","collectionName":"news_banners","kind":"singleType","info":{"name":"newsBanner"},"options":{"increments":true,"timestamps":["created_at","updated_at"],"draftAndPublish":true},"pluginOptions":{},"attributes":{"news":{"type":"component","repeatable":false,"component":"banner.banner"},"jiangzuo":{"type":"component","repeatable":false,"component":"banner.banner"},"zhanxun":{"type":"component","repeatable":false,"component":"banner.banner"},"tongzhi":{"type":"component","repeatable":false,"component":"banner.banner"},"published_at":{"type":"datetime","configurable":false,"writable":true,"visible":false},"created_by":{"model":"user","plugin":"admin","configurable":false,"writable":false,"visible":false,"private":true},"updated_by":{"model":"user","plugin":"admin","configurable":false,"writable":false,"visible":false,"private":true}}}	object	\N	\N
9	model_def_strapi::webhooks	{"uid":"strapi::webhooks","collectionName":"strapi_webhooks","info":{"name":"Strapi webhooks","description":""},"options":{"timestamps":false},"pluginOptions":{"content-manager":{"visible":false},"content-type-builder":{"visible":false}},"attributes":{"name":{"type":"string"},"url":{"type":"text"},"headers":{"type":"json"},"events":{"type":"json"},"enabled":{"type":"boolean"}}}	object	\N	\N
17	model_def_plugins::i18n.locale	{"uid":"plugins::i18n.locale","collectionName":"i18n_locales","kind":"collectionType","info":{"name":"locale","description":""},"options":{"timestamps":["created_at","updated_at"]},"pluginOptions":{"content-manager":{"visible":false},"content-type-builder":{"visible":false}},"attributes":{"name":{"type":"string","min":1,"max":50,"configurable":false},"code":{"type":"string","unique":true,"configurable":false},"created_by":{"model":"user","plugin":"admin","configurable":false,"writable":false,"visible":false,"private":true},"updated_by":{"model":"user","plugin":"admin","configurable":false,"writable":false,"visible":false,"private":true}}}	object	\N	\N
18	plugin_users-permissions_grant	{"email":{"enabled":true,"icon":"envelope"},"discord":{"enabled":false,"icon":"discord","key":"","secret":"","callback":"/auth/discord/callback","scope":["identify","email"]},"facebook":{"enabled":false,"icon":"facebook-square","key":"","secret":"","callback":"/auth/facebook/callback","scope":["email"]},"google":{"enabled":false,"icon":"google","key":"","secret":"","callback":"/auth/google/callback","scope":["email"]},"github":{"enabled":false,"icon":"github","key":"","secret":"","callback":"/auth/github/callback","scope":["user","user:email"]},"microsoft":{"enabled":false,"icon":"windows","key":"","secret":"","callback":"/auth/microsoft/callback","scope":["user.read"]},"twitter":{"enabled":false,"icon":"twitter","key":"","secret":"","callback":"/auth/twitter/callback"},"instagram":{"enabled":false,"icon":"instagram","key":"","secret":"","callback":"/auth/instagram/callback","scope":["user_profile"]},"vk":{"enabled":false,"icon":"vk","key":"","secret":"","callback":"/auth/vk/callback","scope":["email"]},"twitch":{"enabled":false,"icon":"twitch","key":"","secret":"","callback":"/auth/twitch/callback","scope":["user:read:email"]},"linkedin":{"enabled":false,"icon":"linkedin","key":"","secret":"","callback":"/auth/linkedin/callback","scope":["r_liteprofile","r_emailaddress"]},"cognito":{"enabled":false,"icon":"aws","key":"","secret":"","subdomain":"my.subdomain.com","callback":"/auth/cognito/callback","scope":["email","openid","profile"]},"reddit":{"enabled":false,"icon":"reddit","key":"","secret":"","state":true,"callback":"/auth/reddit/callback","scope":["identity"]},"auth0":{"enabled":false,"icon":"","key":"","secret":"","subdomain":"my-tenant.eu","callback":"/auth/auth0/callback","scope":["openid","email","profile"]},"cas":{"enabled":false,"icon":"book","key":"","secret":"","callback":"/auth/cas/callback","scope":["openid email"],"subdomain":"my.subdomain.com/cas"}}	object		
19	plugin_upload_settings	{"sizeOptimization":true,"responsiveDimensions":true}	object	development	
87	model_def_banner.banner	{"uid":"banner.banner","collectionName":"components_banner_banners","info":{"name":"banner","icon":"address-book","description":""},"options":{"timestamps":false},"attributes":{"bannerItems1":{"type":"component","repeatable":false,"component":"banner.banneritems"},"bannerItmes2":{"type":"component","repeatable":false,"component":"banner.banneritems"},"bannerItem3":{"type":"component","repeatable":false,"component":"banner.banneritems"}}}	object	\N	\N
22	plugin_i18n_default_locale	"en"	string		
88	model_def_banner.banneritems	{"uid":"banner.banneritems","collectionName":"components_banner_banneritems","info":{"name":"banneritems","icon":"audio-description"},"options":{"timestamps":false},"attributes":{"url":{"type":"string"},"cover":{"model":"file","via":"related","allowedTypes":["images"],"plugin":"upload","required":true,"pluginOptions":{}}}}	object	\N	\N
31	plugin_content_manager_configuration_content_types::plugins::users-permissions.role	{"uid":"plugins::users-permissions.role","settings":{"bulkable":true,"filterable":true,"searchable":true,"pageSize":10,"mainField":"name","defaultSortBy":"name","defaultSortOrder":"ASC"},"metadatas":{"id":{"edit":{},"list":{"label":"Id","searchable":true,"sortable":true}},"name":{"edit":{"label":"Name","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"Name","searchable":true,"sortable":true}},"description":{"edit":{"label":"Description","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"Description","searchable":true,"sortable":true}},"type":{"edit":{"label":"Type","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"Type","searchable":true,"sortable":true}},"permissions":{"edit":{"label":"Permissions","description":"","placeholder":"","visible":true,"editable":true,"mainField":"type"},"list":{"label":"Permissions","searchable":false,"sortable":false}},"users":{"edit":{"label":"Users","description":"","placeholder":"","visible":true,"editable":true,"mainField":"username"},"list":{"label":"Users","searchable":false,"sortable":false}}},"layouts":{"list":["id","name","description","type"],"editRelations":["permissions","users"],"edit":[[{"name":"name","size":6},{"name":"description","size":6}],[{"name":"type","size":6}]]}}	object		
32	plugin_content_manager_configuration_content_types::plugins::users-permissions.user	{"uid":"plugins::users-permissions.user","settings":{"bulkable":true,"filterable":true,"searchable":true,"pageSize":10,"mainField":"username","defaultSortBy":"username","defaultSortOrder":"ASC"},"metadatas":{"id":{"edit":{},"list":{"label":"Id","searchable":true,"sortable":true}},"username":{"edit":{"label":"Username","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"Username","searchable":true,"sortable":true}},"email":{"edit":{"label":"Email","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"Email","searchable":true,"sortable":true}},"provider":{"edit":{"label":"Provider","description":"","placeholder":"","visible":false,"editable":true},"list":{"label":"Provider","searchable":true,"sortable":true}},"password":{"edit":{"label":"Password","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"Password","searchable":true,"sortable":true}},"resetPasswordToken":{"edit":{"label":"ResetPasswordToken","description":"","placeholder":"","visible":false,"editable":true},"list":{"label":"ResetPasswordToken","searchable":true,"sortable":true}},"confirmationToken":{"edit":{"label":"ConfirmationToken","description":"","placeholder":"","visible":false,"editable":true},"list":{"label":"ConfirmationToken","searchable":true,"sortable":true}},"confirmed":{"edit":{"label":"Confirmed","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"Confirmed","searchable":true,"sortable":true}},"blocked":{"edit":{"label":"Blocked","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"Blocked","searchable":true,"sortable":true}},"role":{"edit":{"label":"Role","description":"","placeholder":"","visible":true,"editable":true,"mainField":"name"},"list":{"label":"Role","searchable":true,"sortable":true}},"created_at":{"edit":{"label":"Created_at","description":"","placeholder":"","visible":false,"editable":true},"list":{"label":"Created_at","searchable":true,"sortable":true}},"updated_at":{"edit":{"label":"Updated_at","description":"","placeholder":"","visible":false,"editable":true},"list":{"label":"Updated_at","searchable":true,"sortable":true}}},"layouts":{"list":["id","username","email","confirmed"],"editRelations":["role"],"edit":[[{"name":"username","size":6},{"name":"email","size":6}],[{"name":"password","size":6},{"name":"confirmed","size":4}],[{"name":"blocked","size":4}]]}}	object		
33	plugin_content_manager_configuration_content_types::strapi::user	{"uid":"strapi::user","settings":{"bulkable":true,"filterable":true,"searchable":true,"pageSize":10,"mainField":"firstname","defaultSortBy":"firstname","defaultSortOrder":"ASC"},"metadatas":{"id":{"edit":{},"list":{"label":"Id","searchable":true,"sortable":true}},"firstname":{"edit":{"label":"Firstname","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"Firstname","searchable":true,"sortable":true}},"lastname":{"edit":{"label":"Lastname","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"Lastname","searchable":true,"sortable":true}},"username":{"edit":{"label":"Username","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"Username","searchable":true,"sortable":true}},"email":{"edit":{"label":"Email","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"Email","searchable":true,"sortable":true}},"password":{"edit":{"label":"Password","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"Password","searchable":true,"sortable":true}},"resetPasswordToken":{"edit":{"label":"ResetPasswordToken","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"ResetPasswordToken","searchable":true,"sortable":true}},"registrationToken":{"edit":{"label":"RegistrationToken","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"RegistrationToken","searchable":true,"sortable":true}},"isActive":{"edit":{"label":"IsActive","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"IsActive","searchable":true,"sortable":true}},"roles":{"edit":{"label":"Roles","description":"","placeholder":"","visible":true,"editable":true,"mainField":"name"},"list":{"label":"Roles","searchable":false,"sortable":false}},"blocked":{"edit":{"label":"Blocked","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"Blocked","searchable":true,"sortable":true}},"preferedLanguage":{"edit":{"label":"PreferedLanguage","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"PreferedLanguage","searchable":true,"sortable":true}}},"layouts":{"list":["id","firstname","lastname","username"],"editRelations":["roles"],"edit":[[{"name":"firstname","size":6},{"name":"lastname","size":6}],[{"name":"username","size":6},{"name":"email","size":6}],[{"name":"password","size":6},{"name":"resetPasswordToken","size":6}],[{"name":"registrationToken","size":6},{"name":"isActive","size":4}],[{"name":"blocked","size":4},{"name":"preferedLanguage","size":6}]]}}	object		
37	plugin_users-permissions_advanced	{"unique_email":true,"allow_register":true,"email_confirmation":false,"email_reset_password":null,"email_confirmation_redirection":null,"default_role":"authenticated"}	object		
10	model_def_strapi::permission	{"uid":"strapi::permission","collectionName":"strapi_permission","kind":"collectionType","info":{"name":"Permission","description":""},"options":{"timestamps":["created_at","updated_at"]},"pluginOptions":{"content-manager":{"visible":false},"content-type-builder":{"visible":false}},"attributes":{"action":{"type":"string","minLength":1,"configurable":false,"required":true},"subject":{"type":"string","minLength":1,"configurable":false,"required":false},"properties":{"type":"json","configurable":false,"required":false,"default":{}},"conditions":{"type":"json","configurable":false,"required":false,"default":[]},"role":{"configurable":false,"model":"role","plugin":"admin"}}}	object	\N	\N
71	plugin_content_manager_configuration_components::studio.studio	{"uid":"studio.studio","settings":{"bulkable":true,"filterable":true,"searchable":true,"pageSize":10,"mainField":"id","defaultSortBy":"id","defaultSortOrder":"ASC"},"metadatas":{"id":{"edit":{},"list":{"label":"Id","searchable":false,"sortable":false}},"cover":{"edit":{"label":"Cover","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"Cover","searchable":false,"sortable":false}},"Personnel":{"edit":{"label":"Personnel","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"Personnel","searchable":false,"sortable":false}},"ReachDirection":{"edit":{"label":"ReachDirection","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"ReachDirection","searchable":false,"sortable":false}},"describe":{"edit":{"label":"Describe","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"Describe","searchable":false,"sortable":false}}},"layouts":{"list":["id","cover"],"edit":[[{"name":"cover","size":6}],[{"name":"Personnel","size":12}],[{"name":"describe","size":12}],[{"name":"ReachDirection","size":12}]],"editRelations":[]},"isComponent":true}	object		
27	plugin_content_manager_configuration_content_types::application::category.category	{"uid":"application::category.category","settings":{"bulkable":true,"filterable":true,"searchable":true,"pageSize":10,"mainField":"name","defaultSortBy":"name","defaultSortOrder":"ASC"},"metadatas":{"id":{"edit":{},"list":{"label":"Id","searchable":true,"sortable":true}},"name":{"edit":{"label":"Name","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"Name","searchable":true,"sortable":true}},"slug":{"edit":{"label":"Slug","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"Slug","searchable":true,"sortable":true}},"articles":{"edit":{"label":"Articles","description":"","placeholder":"","visible":true,"editable":true,"mainField":"title"},"list":{"label":"Articles","searchable":false,"sortable":false}},"created_at":{"edit":{"label":"Created_at","description":"","placeholder":"","visible":false,"editable":true},"list":{"label":"Created_at","searchable":true,"sortable":true}},"updated_at":{"edit":{"label":"Updated_at","description":"","placeholder":"","visible":false,"editable":true},"list":{"label":"Updated_at","searchable":true,"sortable":true}}},"layouts":{"list":["id","name","slug","articles"],"editRelations":["articles"],"edit":[[{"name":"name","size":6},{"name":"slug","size":6}]]}}	object		
28	plugin_content_manager_configuration_content_types::strapi::permission	{"uid":"strapi::permission","settings":{"bulkable":true,"filterable":true,"searchable":true,"pageSize":10,"mainField":"action","defaultSortBy":"action","defaultSortOrder":"ASC"},"metadatas":{"id":{"edit":{},"list":{"label":"Id","searchable":true,"sortable":true}},"action":{"edit":{"label":"Action","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"Action","searchable":true,"sortable":true}},"subject":{"edit":{"label":"Subject","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"Subject","searchable":true,"sortable":true}},"properties":{"edit":{"label":"Properties","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"Properties","searchable":false,"sortable":false}},"conditions":{"edit":{"label":"Conditions","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"Conditions","searchable":false,"sortable":false}},"role":{"edit":{"label":"Role","description":"","placeholder":"","visible":true,"editable":true,"mainField":"name"},"list":{"label":"Role","searchable":true,"sortable":true}},"created_at":{"edit":{"label":"Created_at","description":"","placeholder":"","visible":false,"editable":true},"list":{"label":"Created_at","searchable":true,"sortable":true}},"updated_at":{"edit":{"label":"Updated_at","description":"","placeholder":"","visible":false,"editable":true},"list":{"label":"Updated_at","searchable":true,"sortable":true}}},"layouts":{"list":["id","action","subject","role"],"editRelations":["role"],"edit":[[{"name":"action","size":6},{"name":"subject","size":6}],[{"name":"properties","size":12}],[{"name":"conditions","size":12}]]}}	object		
29	plugin_content_manager_configuration_content_types::strapi::role	{"uid":"strapi::role","settings":{"bulkable":true,"filterable":true,"searchable":true,"pageSize":10,"mainField":"name","defaultSortBy":"name","defaultSortOrder":"ASC"},"metadatas":{"id":{"edit":{},"list":{"label":"Id","searchable":true,"sortable":true}},"name":{"edit":{"label":"Name","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"Name","searchable":true,"sortable":true}},"code":{"edit":{"label":"Code","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"Code","searchable":true,"sortable":true}},"description":{"edit":{"label":"Description","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"Description","searchable":true,"sortable":true}},"users":{"edit":{"label":"Users","description":"","placeholder":"","visible":true,"editable":true,"mainField":"firstname"},"list":{"label":"Users","searchable":false,"sortable":false}},"permissions":{"edit":{"label":"Permissions","description":"","placeholder":"","visible":true,"editable":true,"mainField":"action"},"list":{"label":"Permissions","searchable":false,"sortable":false}},"created_at":{"edit":{"label":"Created_at","description":"","placeholder":"","visible":false,"editable":true},"list":{"label":"Created_at","searchable":true,"sortable":true}},"updated_at":{"edit":{"label":"Updated_at","description":"","placeholder":"","visible":false,"editable":true},"list":{"label":"Updated_at","searchable":true,"sortable":true}}},"layouts":{"list":["id","name","code","description"],"editRelations":["users","permissions"],"edit":[[{"name":"name","size":6},{"name":"code","size":6}],[{"name":"description","size":6}]]}}	object		
41	plugin_content_manager_configuration_content_types::application::course.course	{"uid":"application::course.course","settings":{"bulkable":true,"filterable":true,"searchable":true,"pageSize":10,"mainField":"id","defaultSortBy":"id","defaultSortOrder":"ASC"},"metadatas":{"id":{"edit":{},"list":{"label":"Id","searchable":true,"sortable":true}},"gysjsh":{"edit":{"label":"Gysjsh","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"Gysjsh","searchable":false,"sortable":false}},"jcsj":{"edit":{"label":"Jcsj","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"Jcsj","searchable":false,"sortable":false}},"sjtx":{"edit":{"label":"Sjtx","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"Sjtx","searchable":false,"sortable":false}},"yxkzyjh":{"edit":{"label":"Yxkzyjh","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"Yxkzyjh","searchable":false,"sortable":false}},"rjgcx":{"edit":{"label":"Rjgcx","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"Rjgcx","searchable":false,"sortable":false}},"created_at":{"edit":{"label":"Created_at","description":"","placeholder":"","visible":false,"editable":true},"list":{"label":"Created_at","searchable":true,"sortable":true}},"updated_at":{"edit":{"label":"Updated_at","description":"","placeholder":"","visible":false,"editable":true},"list":{"label":"Updated_at","searchable":true,"sortable":true}}},"layouts":{"list":["id","created_at","updated_at"],"edit":[[{"name":"gysjsh","size":12}],[{"name":"jcsj","size":12}],[{"name":"rjgcx","size":12}],[{"name":"sjtx","size":12}],[{"name":"yxkzyjh","size":12}]],"editRelations":[]}}	object		
13	model_def_plugins::users-permissions.permission	{"uid":"plugins::users-permissions.permission","collectionName":"users-permissions_permission","kind":"collectionType","info":{"name":"permission","description":""},"options":{"timestamps":false},"pluginOptions":{"content-manager":{"visible":false}},"attributes":{"type":{"type":"string","required":true,"configurable":false},"controller":{"type":"string","required":true,"configurable":false},"action":{"type":"string","required":true,"configurable":false},"enabled":{"type":"boolean","required":true,"configurable":false},"policy":{"type":"string","configurable":false},"role":{"model":"role","via":"permissions","plugin":"users-permissions","configurable":false},"created_by":{"model":"user","plugin":"admin","configurable":false,"writable":false,"visible":false,"private":true},"updated_by":{"model":"user","plugin":"admin","configurable":false,"writable":false,"visible":false,"private":true}}}	object	\N	\N
89	model_def_index.achievement	{"uid":"index.achievement","collectionName":"components_index_achievements","info":{"name":"achievement","icon":"backspace"},"options":{"timestamps":false},"attributes":{"photo":{"model":"file","via":"related","allowedTypes":["images"],"plugin":"upload","required":true,"pluginOptions":{}}}}	object	\N	\N
73	plugin_content_manager_configuration_components::sections.person	{"uid":"sections.person","settings":{"bulkable":true,"filterable":true,"searchable":true,"pageSize":10,"mainField":"name","defaultSortBy":"name","defaultSortOrder":"ASC"},"metadatas":{"id":{"edit":{},"list":{"label":"Id","searchable":false,"sortable":false}},"cover":{"edit":{"label":"Cover","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"Cover","searchable":false,"sortable":false}},"name":{"edit":{"label":"Name","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"Name","searchable":true,"sortable":true}},"describe":{"edit":{"label":"Describe","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"Describe","searchable":true,"sortable":true}}},"layouts":{"list":["id","cover","name","describe"],"edit":[[{"name":"cover","size":6},{"name":"name","size":6}],[{"name":"describe","size":6}]],"editRelations":[]},"isComponent":true}	object		
90	model_def_index.features	{"uid":"index.features","collectionName":"components_index_features","info":{"name":"features","icon":"arrow-alt-circle-up","description":""},"options":{"timestamps":false},"attributes":{"describe":{"type":"text"},"title":{"type":"string"},"cover":{"model":"file","via":"related","allowedTypes":["images","files","videos"],"plugin":"upload","required":false,"pluginOptions":{}}}}	object	\N	\N
38	type_setup_initHasRun	true	boolean	development	
39	core_admin_auth	{"providers":{"autoRegister":false,"defaultRole":null}}	object		
60	plugin_content_manager_configuration_components::sections.articles	{"uid":"sections.articles","settings":{"bulkable":true,"filterable":true,"searchable":true,"pageSize":10,"mainField":"author","defaultSortBy":"author","defaultSortOrder":"ASC"},"metadatas":{"id":{"edit":{},"list":{"label":"Id","searchable":false,"sortable":false}},"discribe":{"edit":{"label":"Discribe","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"Discribe","searchable":true,"sortable":true}},"content":{"edit":{"label":"Content","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"Content","searchable":false,"sortable":false}},"videoUrl":{"edit":{"label":"VideoUrl","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"VideoUrl","searchable":true,"sortable":true}},"author":{"edit":{"label":"Author","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"Author","searchable":true,"sortable":true}}},"layouts":{"list":["id","discribe","videoUrl"],"edit":[[{"name":"discribe","size":6}],[{"name":"content","size":12}],[{"name":"videoUrl","size":6},{"name":"author","size":6}]],"editRelations":[]},"isComponent":true}	object		
63	plugin_content_manager_configuration_content_types::application::news-center.news-center	{"uid":"application::news-center.news-center","settings":{"bulkable":true,"filterable":true,"searchable":true,"pageSize":10,"mainField":"title","defaultSortBy":"title","defaultSortOrder":"ASC"},"metadatas":{"id":{"edit":{},"list":{"label":"Id","searchable":true,"sortable":true}},"title":{"edit":{"label":"Title","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"Title","searchable":true,"sortable":true}},"author":{"edit":{"label":"Author","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"Author","searchable":true,"sortable":true}},"cover":{"edit":{"label":"Cover","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"Cover","searchable":false,"sortable":false}},"content":{"edit":{"label":"Content","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"Content","searchable":false,"sortable":false}},"likes":{"edit":{"label":"Likes","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"Likes","searchable":true,"sortable":true}},"videourl":{"edit":{"label":"Videourl","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"Videourl","searchable":true,"sortable":true}},"news_category":{"edit":{"label":"News_category","description":"","placeholder":"","visible":true,"editable":true,"mainField":"name"},"list":{"label":"News_category","searchable":true,"sortable":true}},"discribe":{"edit":{"label":"Discribe","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"Discribe","searchable":true,"sortable":true}},"created_at":{"edit":{"label":"Created_at","description":"","placeholder":"","visible":false,"editable":true},"list":{"label":"Created_at","searchable":true,"sortable":true}},"updated_at":{"edit":{"label":"Updated_at","description":"","placeholder":"","visible":false,"editable":true},"list":{"label":"Updated_at","searchable":true,"sortable":true}}},"layouts":{"list":["id","title","created_at","updated_at"],"edit":[[{"name":"title","size":6},{"name":"author","size":6}],[{"name":"cover","size":6}],[{"name":"content","size":12}],[{"name":"discribe","size":6},{"name":"videourl","size":6}]],"editRelations":["news_category"]}}	object		
82	plugin_content_manager_configuration_content_types::application::studio-works.studio-works	{"uid":"application::studio-works.studio-works","settings":{"bulkable":true,"filterable":true,"searchable":true,"pageSize":10,"mainField":"title","defaultSortBy":"title","defaultSortOrder":"ASC"},"metadatas":{"studio_category":{"edit":{"label":"Studio_category","description":"","placeholder":"","visible":true,"editable":true,"mainField":"name"},"list":{"label":"Studio_category","searchable":true,"sortable":true}},"created_at":{"edit":{"label":"Created_at","description":"","placeholder":"","visible":false,"editable":true},"list":{"label":"Created_at","searchable":true,"sortable":true}},"author":{"edit":{"label":"Author","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"Author","searchable":true,"sortable":true}},"describe":{"edit":{"label":"Describe","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"Describe","searchable":true,"sortable":true}},"videoUrl":{"edit":{"label":"VideoUrl","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"VideoUrl","searchable":true,"sortable":true}},"updated_at":{"edit":{"label":"Updated_at","description":"","placeholder":"","visible":false,"editable":true},"list":{"label":"Updated_at","searchable":true,"sortable":true}},"cover":{"edit":{"label":"Cover","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"Cover","searchable":false,"sortable":false}},"title":{"edit":{"label":"Title","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"Title","searchable":true,"sortable":true}},"content":{"edit":{"label":"Content","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"Content","searchable":false,"sortable":false}},"id":{"edit":{},"list":{"label":"Id","searchable":true,"sortable":true}},"likes":{"edit":{"label":"Likes","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"Likes","searchable":true,"sortable":true}}},"layouts":{"edit":[[{"name":"title","size":6},{"name":"author","size":6}],[{"name":"describe","size":6},{"name":"cover","size":6}],[{"name":"content","size":12}],[{"name":"videoUrl","size":6}]],"editRelations":["studio_category"],"list":["id","title","author","describe"]}}	object		
91	model_def_index.talents	{"uid":"index.talents","collectionName":"components_index_talents","info":{"name":"talents","icon":"align-left"},"options":{"timestamps":false},"attributes":{"describe":{"type":"text","required":true},"title":{"type":"string","required":true}}}	object	\N	\N
35	plugin_content_manager_configuration_content_types::plugins::users-permissions.permission	{"uid":"plugins::users-permissions.permission","settings":{"bulkable":true,"filterable":true,"searchable":true,"pageSize":10,"mainField":"type","defaultSortBy":"type","defaultSortOrder":"ASC"},"metadatas":{"id":{"edit":{},"list":{"label":"Id","searchable":true,"sortable":true}},"type":{"edit":{"label":"Type","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"Type","searchable":true,"sortable":true}},"controller":{"edit":{"label":"Controller","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"Controller","searchable":true,"sortable":true}},"action":{"edit":{"label":"Action","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"Action","searchable":true,"sortable":true}},"enabled":{"edit":{"label":"Enabled","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"Enabled","searchable":true,"sortable":true}},"policy":{"edit":{"label":"Policy","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"Policy","searchable":true,"sortable":true}},"role":{"edit":{"label":"Role","description":"","placeholder":"","visible":true,"editable":true,"mainField":"name"},"list":{"label":"Role","searchable":true,"sortable":true}}},"layouts":{"list":["id","type","controller","action"],"editRelations":["role"],"edit":[[{"name":"type","size":6},{"name":"controller","size":6}],[{"name":"action","size":6},{"name":"enabled","size":4}],[{"name":"policy","size":6}]]}}	object		
75	plugin_content_manager_configuration_components::reachdirection.reach-direction	{"uid":"reachdirection.reach-direction","settings":{"bulkable":true,"filterable":true,"searchable":true,"pageSize":10,"mainField":"direction_ZH","defaultSortBy":"direction_ZH","defaultSortOrder":"ASC"},"metadatas":{"id":{"edit":{},"list":{"label":"Id","searchable":false,"sortable":false}},"direction_ZH":{"edit":{"label":"Direction_ZH","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"Direction_ZH","searchable":true,"sortable":true}},"direction_EN":{"edit":{"label":"Direction_EN","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"Direction_EN","searchable":true,"sortable":true}}},"layouts":{"list":["id","direction_ZH","direction_EN"],"edit":[[{"name":"direction_ZH","size":6},{"name":"direction_EN","size":6}]],"editRelations":[]},"isComponent":true}	object		
74	model_def_reachdirection.reach-direction	{"uid":"reachdirection.reach-direction","collectionName":"components_reachdirection_reach_directions","info":{"name":"ReachDirection","icon":"arrows-alt"},"options":{"timestamps":false},"attributes":{"direction_ZH":{"type":"string"},"direction_EN":{"type":"string"}}}	object	\N	\N
58	model_def_sections.articles	{"uid":"sections.articles","collectionName":"components_sections_articles","info":{"name":"articles","icon":"bars","description":""},"options":{"timestamps":false},"attributes":{"discribe":{"type":"text"},"content":{"type":"richtext"},"videoUrl":{"type":"text"},"author":{"type":"string"}}}	object	\N	\N
85	model_def_application::graduation-img2022.graduation-img2022	{"uid":"application::graduation-img2022.graduation-img2022","collectionName":"graduation_img2022s","kind":"singleType","info":{"name":"graduationImg2022"},"options":{"increments":true,"timestamps":["created_at","updated_at"],"draftAndPublish":true},"pluginOptions":{},"attributes":{"img1":{"model":"file","via":"related","allowedTypes":["images","files","videos"],"plugin":"upload","required":false,"pluginOptions":{}},"img2":{"model":"file","via":"related","allowedTypes":["images","files","videos"],"plugin":"upload","required":false,"pluginOptions":{}},"img3":{"model":"file","via":"related","allowedTypes":["images","files","videos"],"plugin":"upload","required":false,"pluginOptions":{}},"published_at":{"type":"datetime","configurable":false,"writable":true,"visible":false},"created_by":{"model":"user","plugin":"admin","configurable":false,"writable":false,"visible":false,"private":true},"updated_by":{"model":"user","plugin":"admin","configurable":false,"writable":false,"visible":false,"private":true}}}	object	\N	\N
64	model_def_application::news-category.news-category	{"uid":"application::news-category.news-category","collectionName":"news_categories","kind":"collectionType","info":{"name":"NewsCategory","description":""},"options":{"increments":true,"timestamps":["created_at","updated_at"],"draftAndPublish":true},"pluginOptions":{},"attributes":{"name":{"type":"string"},"NewsId":{"type":"integer"},"news_centers":{"via":"news_category","collection":"news-center","isVirtual":true},"published_at":{"type":"datetime","configurable":false,"writable":true,"visible":false},"created_by":{"model":"user","plugin":"admin","configurable":false,"writable":false,"visible":false,"private":true},"updated_by":{"model":"user","plugin":"admin","configurable":false,"writable":false,"visible":false,"private":true}}}	object	\N	\N
36	plugin_content_manager_configuration_content_types::plugins::i18n.locale	{"uid":"plugins::i18n.locale","settings":{"bulkable":true,"filterable":true,"searchable":true,"pageSize":10,"mainField":"name","defaultSortBy":"name","defaultSortOrder":"ASC"},"metadatas":{"id":{"edit":{},"list":{"label":"Id","searchable":true,"sortable":true}},"name":{"edit":{"label":"Name","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"Name","searchable":true,"sortable":true}},"code":{"edit":{"label":"Code","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"Code","searchable":true,"sortable":true}},"created_at":{"edit":{"label":"Created_at","description":"","placeholder":"","visible":false,"editable":true},"list":{"label":"Created_at","searchable":true,"sortable":true}},"updated_at":{"edit":{"label":"Updated_at","description":"","placeholder":"","visible":false,"editable":true},"list":{"label":"Updated_at","searchable":true,"sortable":true}}},"layouts":{"list":["id","name","code","created_at"],"editRelations":[],"edit":[[{"name":"name","size":6},{"name":"code","size":6}]]}}	object		
65	plugin_content_manager_configuration_content_types::application::news-category.news-category	{"uid":"application::news-category.news-category","settings":{"bulkable":true,"filterable":true,"searchable":true,"pageSize":10,"mainField":"name","defaultSortBy":"name","defaultSortOrder":"ASC"},"metadatas":{"id":{"edit":{},"list":{"label":"Id","searchable":true,"sortable":true}},"name":{"edit":{"label":"Name","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"Name","searchable":true,"sortable":true}},"NewsId":{"edit":{"label":"NewsId","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"NewsId","searchable":true,"sortable":true}},"news_centers":{"edit":{"label":"News_centers","description":"","placeholder":"","visible":true,"editable":true,"mainField":"title"},"list":{"label":"News_centers","searchable":false,"sortable":false}},"created_at":{"edit":{"label":"Created_at","description":"","placeholder":"","visible":false,"editable":true},"list":{"label":"Created_at","searchable":true,"sortable":true}},"updated_at":{"edit":{"label":"Updated_at","description":"","placeholder":"","visible":false,"editable":true},"list":{"label":"Updated_at","searchable":true,"sortable":true}}},"layouts":{"list":["id","name","created_at","updated_at"],"edit":[[{"name":"name","size":6},{"name":"NewsId","size":4}]],"editRelations":["news_centers"]}}	object		
20	plugin_content_manager_configuration_components::sections.hero	{"uid":"sections.hero","settings":{"bulkable":true,"filterable":true,"searchable":true,"pageSize":10,"mainField":"title","defaultSortBy":"title","defaultSortOrder":"ASC"},"metadatas":{"id":{"edit":{},"list":{"label":"Id","searchable":false,"sortable":false}},"title":{"edit":{"label":"Title","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"Title","searchable":true,"sortable":true}}},"layouts":{"list":["id","title"],"edit":[[{"name":"title","size":6}]],"editRelations":[]},"isComponent":true}	object		
21	plugin_content_manager_configuration_components::shared.seo	{"uid":"shared.seo","settings":{"bulkable":true,"filterable":true,"searchable":true,"pageSize":10,"mainField":"metaTitle","defaultSortBy":"metaTitle","defaultSortOrder":"ASC"},"metadatas":{"id":{"edit":{},"list":{"label":"Id","searchable":false,"sortable":false}},"metaTitle":{"edit":{"label":"MetaTitle","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"MetaTitle","searchable":true,"sortable":true}},"metaDescription":{"edit":{"label":"MetaDescription","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"MetaDescription","searchable":true,"sortable":true}},"shareImage":{"edit":{"label":"ShareImage","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"ShareImage","searchable":false,"sortable":false}}},"layouts":{"list":["id","metaTitle","metaDescription","shareImage"],"edit":[[{"name":"metaTitle","size":6},{"name":"metaDescription","size":6}],[{"name":"shareImage","size":6}]],"editRelations":[]},"isComponent":true}	object		
1	model_def_strapi::core-store	{"uid":"strapi::core-store","collectionName":"core_store","info":{"name":"core_store","description":""},"options":{"timestamps":false},"pluginOptions":{"content-manager":{"visible":false},"content-type-builder":{"visible":false}},"attributes":{"key":{"type":"string"},"value":{"type":"text"},"type":{"type":"string"},"environment":{"type":"string"},"tag":{"type":"string"}}}	object	\N	\N
99	model_def_index.history	{"uid":"index.history","collectionName":"components_index_histories","info":{"name":"history","icon":"align-justify"},"options":{"timestamps":false},"attributes":{"year":{"type":"string"},"content":{"type":"string"}}}	object	\N	\N
84	plugin_content_manager_configuration_content_types::application::graduation-works.graduation-works	{"uid":"application::graduation-works.graduation-works","settings":{"bulkable":true,"filterable":true,"searchable":true,"pageSize":10,"mainField":"title","defaultSortBy":"title","defaultSortOrder":"ASC"},"metadatas":{"created_at":{"edit":{"label":"Created_at","description":"","placeholder":"","visible":false,"editable":true},"list":{"label":"Created_at","searchable":true,"sortable":true}},"author":{"edit":{"label":"Author","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"Author","searchable":true,"sortable":true}},"describe":{"edit":{"label":"Describe","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"Describe","searchable":true,"sortable":true}},"videoUrl":{"edit":{"label":"VideoUrl","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"VideoUrl","searchable":true,"sortable":true}},"updated_at":{"edit":{"label":"Updated_at","description":"","placeholder":"","visible":false,"editable":true},"list":{"label":"Updated_at","searchable":true,"sortable":true}},"cover":{"edit":{"label":"Cover","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"Cover","searchable":false,"sortable":false}},"title":{"edit":{"label":"Title","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"Title","searchable":true,"sortable":true}},"content":{"edit":{"label":"Content","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"Content","searchable":false,"sortable":false}},"id":{"edit":{},"list":{"label":"Id","searchable":true,"sortable":true}},"likes":{"edit":{"label":"Likes","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"Likes","searchable":true,"sortable":true}}},"layouts":{"edit":[[{"name":"title","size":6},{"name":"author","size":6}],[{"name":"describe","size":6},{"name":"cover","size":6}],[{"name":"content","size":12}],[{"name":"videoUrl","size":6}]],"editRelations":[],"list":["id","title","describe","author"]}}	object		
70	model_def_studio.studio	{"uid":"studio.studio","collectionName":"components_studio_studios","info":{"name":"Studio","icon":"align-center","description":""},"options":{"timestamps":false},"attributes":{"cover":{"model":"file","via":"related","allowedTypes":["images","files","videos"],"plugin":"upload","required":false,"pluginOptions":{}},"Personnel":{"type":"component","repeatable":true,"component":"sections.person"},"ReachDirection":{"type":"component","repeatable":true,"component":"reachdirection.reach-direction"},"describe":{"type":"richtext"}}}	object	\N	\N
94	plugin_content_manager_configuration_components::index.talents	{"uid":"index.talents","settings":{"bulkable":true,"filterable":true,"searchable":true,"pageSize":10,"mainField":"title","defaultSortBy":"title","defaultSortOrder":"ASC"},"metadatas":{"id":{"edit":{},"list":{"label":"Id","searchable":false,"sortable":false}},"describe":{"edit":{"label":"Describe","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"Describe","searchable":true,"sortable":true}},"title":{"edit":{"label":"Title","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"Title","searchable":true,"sortable":true}}},"layouts":{"list":["id","describe","title"],"edit":[[{"name":"describe","size":6},{"name":"title","size":6}]],"editRelations":[]},"isComponent":true}	object		
57	plugin_content_manager_configuration_content_types::application::course-category.course-category	{"uid":"application::course-category.course-category","settings":{"bulkable":true,"filterable":true,"searchable":true,"pageSize":10,"mainField":"name","defaultSortBy":"name","defaultSortOrder":"ASC"},"metadatas":{"id":{"edit":{},"list":{"label":"Id","searchable":true,"sortable":true}},"name":{"edit":{"label":"Name","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"Name","searchable":true,"sortable":true}},"slug":{"edit":{"label":"Slug","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"Slug","searchable":true,"sortable":true}},"course_works":{"edit":{"label":"Course_works","description":"","placeholder":"","visible":true,"editable":true,"mainField":"title"},"list":{"label":"Course_works","searchable":false,"sortable":false}},"courserid":{"edit":{"label":"Courserid","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"Courserid","searchable":true,"sortable":true}},"created_at":{"edit":{"label":"Created_at","description":"","placeholder":"","visible":false,"editable":true},"list":{"label":"Created_at","searchable":true,"sortable":true}},"updated_at":{"edit":{"label":"Updated_at","description":"","placeholder":"","visible":false,"editable":true},"list":{"label":"Updated_at","searchable":true,"sortable":true}}},"layouts":{"list":["id","name","created_at","updated_at"],"edit":[[{"name":"name","size":6},{"name":"slug","size":6}],[{"name":"courserid","size":6}]],"editRelations":["course_works"]}}	object		
92	model_def_application::about-us.about-us	{"uid":"application::about-us.about-us","collectionName":"about_uses","kind":"singleType","info":{"name":"About us","description":""},"options":{"increments":true,"timestamps":["created_at","updated_at"],"draftAndPublish":true},"pluginOptions":{},"attributes":{"talents":{"type":"component","repeatable":true,"component":"index.talents"},"features":{"type":"component","repeatable":true,"component":"index.features"},"banner":{"type":"component","repeatable":false,"component":"banner.banner"},"honor":{"model":"file","via":"related","allowedTypes":["images"],"plugin":"upload","required":true,"pluginOptions":{}},"history":{"type":"component","repeatable":true,"component":"index.history"},"published_at":{"type":"datetime","configurable":false,"writable":true,"visible":false},"created_by":{"model":"user","plugin":"admin","configurable":false,"writable":false,"visible":false,"private":true},"updated_by":{"model":"user","plugin":"admin","configurable":false,"writable":false,"visible":false,"private":true}}}	object	\N	\N
83	model_def_application::graduation-works.graduation-works	{"uid":"application::graduation-works.graduation-works","collectionName":"graduation_works","kind":"collectionType","info":{"name":"graduation_works","description":""},"options":{"increments":true,"timestamps":["created_at","updated_at"],"draftAndPublish":true},"pluginOptions":{},"attributes":{"title":{"type":"string","required":true},"author":{"type":"string","required":true},"describe":{"type":"text","required":true},"content":{"type":"richtext"},"cover":{"model":"file","via":"related","allowedTypes":["images"],"plugin":"upload","required":true,"pluginOptions":{}},"likes":{"type":"integer","default":0},"videoUrl":{"type":"string"},"published_at":{"type":"datetime","configurable":false,"writable":true,"visible":false},"created_by":{"model":"user","plugin":"admin","configurable":false,"writable":false,"visible":false,"private":true},"updated_by":{"model":"user","plugin":"admin","configurable":false,"writable":false,"visible":false,"private":true}}}	object	\N	\N
56	model_def_application::course-category.course-category	{"uid":"application::course-category.course-category","collectionName":"course_categories","kind":"collectionType","info":{"name":"CourseCategory","description":""},"options":{"increments":true,"timestamps":["created_at","updated_at"],"draftAndPublish":false},"pluginOptions":{},"attributes":{"name":{"type":"string"},"slug":{"type":"uid","targetField":"courserid"},"course_works":{"via":"course_category","collection":"course-works","isVirtual":true},"courserid":{"type":"string"},"created_by":{"model":"user","plugin":"admin","configurable":false,"writable":false,"visible":false,"private":true},"updated_by":{"model":"user","plugin":"admin","configurable":false,"writable":false,"visible":false,"private":true}}}	object	\N	\N
77	plugin_content_manager_configuration_content_types::application::studio.studio	{"uid":"application::studio.studio","settings":{"bulkable":true,"filterable":true,"searchable":true,"pageSize":10,"mainField":"id","defaultSortBy":"id","defaultSortOrder":"ASC"},"metadatas":{"id":{"edit":{},"list":{"label":"Id","searchable":true,"sortable":true}},"fwsjyshcx":{"edit":{"label":"Fwsjyshcx","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"Fwsjyshcx","searchable":false,"sortable":false}},"szwc":{"edit":{"label":"Szwc","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"Szwc","searchable":false,"sortable":false}},"kcxsj":{"edit":{"label":"Kcxsj","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"Kcxsj","searchable":false,"sortable":false}},"jjsj":{"edit":{"label":"Jjsj","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"Jjsj","searchable":false,"sortable":false}},"qdyjs":{"edit":{"label":"Qdyjs","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"Qdyjs","searchable":false,"sortable":false}},"created_at":{"edit":{"label":"Created_at","description":"","placeholder":"","visible":false,"editable":true},"list":{"label":"Created_at","searchable":true,"sortable":true}},"updated_at":{"edit":{"label":"Updated_at","description":"","placeholder":"","visible":false,"editable":true},"list":{"label":"Updated_at","searchable":true,"sortable":true}}},"layouts":{"list":["id","created_at","updated_at"],"editRelations":[],"edit":[[{"name":"fwsjyshcx","size":12}],[{"name":"szwc","size":12}],[{"name":"kcxsj","size":12}],[{"name":"jjsj","size":12}],[{"name":"qdyjs","size":12}]]}}	object		
43	plugin_content_manager_configuration_components::course.course	{"uid":"course.course","settings":{"bulkable":true,"filterable":true,"searchable":true,"pageSize":10,"mainField":"id","defaultSortBy":"id","defaultSortOrder":"ASC"},"metadatas":{"id":{"edit":{},"list":{"label":"Id","searchable":false,"sortable":false}},"intro":{"edit":{"label":"Intro","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"Intro","searchable":false,"sortable":false}},"feature":{"edit":{"label":"Feature","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"Feature","searchable":false,"sortable":false}},"cover":{"edit":{"label":"Cover","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"Cover","searchable":false,"sortable":false}},"titleImage":{"edit":{"label":"TitleImage","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"TitleImage","searchable":false,"sortable":false}}},"layouts":{"list":["id","cover","titleImage"],"edit":[[{"name":"intro","size":12}],[{"name":"feature","size":12}],[{"name":"cover","size":6},{"name":"titleImage","size":6}]],"editRelations":[]},"isComponent":true}	object		
44	model_def_application::gong-ye-she-ji-shou-hui.gong-ye-she-ji-shou-hui	{"uid":"application::gong-ye-she-ji-shou-hui.gong-ye-she-ji-shou-hui","collectionName":"gysjsh","kind":"singleType","info":{"name":"Gong-Ye-She-Ji-Shou-Hui","description":""},"options":{"increments":true,"timestamps":["created_at","updated_at"],"draftAndPublish":true},"pluginOptions":{},"attributes":{"course":{"type":"component","repeatable":false,"component":"course.course"},"published_at":{"type":"datetime","configurable":false,"writable":true,"visible":false},"created_by":{"model":"user","plugin":"admin","configurable":false,"writable":false,"visible":false,"private":true},"updated_by":{"model":"user","plugin":"admin","configurable":false,"writable":false,"visible":false,"private":true}}}	object	\N	\N
93	plugin_content_manager_configuration_components::banner.banner	{"uid":"banner.banner","settings":{"bulkable":true,"filterable":true,"searchable":true,"pageSize":10,"mainField":"id","defaultSortBy":"id","defaultSortOrder":"ASC"},"metadatas":{"id":{"edit":{},"list":{"label":"Id","searchable":false,"sortable":false}},"bannerItems1":{"edit":{"label":"BannerItems1","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"BannerItems1","searchable":false,"sortable":false}},"bannerItmes2":{"edit":{"label":"BannerItmes2","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"BannerItmes2","searchable":false,"sortable":false}},"bannerItem3":{"edit":{"label":"BannerItem3","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"BannerItem3","searchable":false,"sortable":false}}},"layouts":{"list":["id"],"edit":[[{"name":"bannerItem3","size":12}],[{"name":"bannerItems1","size":12}],[{"name":"bannerItmes2","size":12}]],"editRelations":[]},"isComponent":true}	object		
76	model_def_application::studio.studio	{"uid":"application::studio.studio","collectionName":"studios","kind":"singleType","info":{"name":"Studio"},"options":{"increments":true,"timestamps":["created_at","updated_at"],"draftAndPublish":true},"pluginOptions":{},"attributes":{"fwsjyshcx":{"type":"component","repeatable":false,"component":"studio.studio"},"szwc":{"type":"component","repeatable":false,"component":"studio.studio"},"kcxsj":{"type":"component","repeatable":false,"component":"studio.studio"},"jjsj":{"type":"component","repeatable":false,"component":"studio.studio"},"qdyjs":{"type":"component","repeatable":false,"component":"studio.studio"},"published_at":{"type":"datetime","configurable":false,"writable":true,"visible":false},"created_by":{"model":"user","plugin":"admin","configurable":false,"writable":false,"visible":false,"private":true},"updated_by":{"model":"user","plugin":"admin","configurable":false,"writable":false,"visible":false,"private":true}}}	object	\N	\N
24	plugin_content_manager_configuration_content_types::application::article.article	{"uid":"application::article.article","settings":{"bulkable":true,"filterable":true,"searchable":true,"pageSize":10,"mainField":"title","defaultSortBy":"title","defaultSortOrder":"ASC"},"metadatas":{"id":{"edit":{},"list":{"label":"Id","searchable":true,"sortable":true}},"title":{"edit":{"label":"Title","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"Title","searchable":true,"sortable":true}},"description":{"edit":{"label":"Description","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"Description","searchable":true,"sortable":true}},"content":{"edit":{"label":"Content","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"Content","searchable":false,"sortable":false}},"slug":{"edit":{"label":"Slug","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"Slug","searchable":true,"sortable":true}},"category":{"edit":{"label":"Category","description":"","placeholder":"","visible":true,"editable":true,"mainField":"name"},"list":{"label":"Category","searchable":true,"sortable":true}},"image":{"edit":{"label":"Image","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"Image","searchable":false,"sortable":false}},"likes":{"edit":{"label":"Likes","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"Likes","searchable":true,"sortable":true}},"asdfsadf":{"edit":{"label":"Asdfsadf","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"Asdfsadf","searchable":true,"sortable":true}},"created_at":{"edit":{"label":"Created_at","description":"","placeholder":"","visible":false,"editable":true},"list":{"label":"Created_at","searchable":true,"sortable":true}},"updated_at":{"edit":{"label":"Updated_at","description":"","placeholder":"","visible":false,"editable":true},"list":{"label":"Updated_at","searchable":true,"sortable":true}}},"layouts":{"list":["id","title","description","slug"],"edit":[[{"name":"title","size":6},{"name":"description","size":6}],[{"name":"content","size":12}],[{"name":"slug","size":6},{"name":"image","size":6}],[{"name":"asdfsadf","size":6}]],"editRelations":["category"]}}	object		
50	model_def_application::yuan-xing-kong-zhi-yu-jiao-hu.yuan-xing-kong-zhi-yu-jiao-hu	{"uid":"application::yuan-xing-kong-zhi-yu-jiao-hu.yuan-xing-kong-zhi-yu-jiao-hu","collectionName":"yuan_xing_kong_zhi_yu_jiao_hus","kind":"singleType","info":{"name":"Yuan-Xing-Kong-Zhi-Yu-Jiao-Hu","description":""},"options":{"increments":true,"timestamps":["created_at","updated_at"],"draftAndPublish":true},"pluginOptions":{},"attributes":{"course":{"type":"component","repeatable":false,"component":"course.course"},"published_at":{"type":"datetime","configurable":false,"writable":true,"visible":false},"created_by":{"model":"user","plugin":"admin","configurable":false,"writable":false,"visible":false,"private":true},"updated_by":{"model":"user","plugin":"admin","configurable":false,"writable":false,"visible":false,"private":true}}}	object	\N	\N
95	plugin_content_manager_configuration_components::index.achievement	{"uid":"index.achievement","settings":{"bulkable":true,"filterable":true,"searchable":true,"pageSize":10,"mainField":"id","defaultSortBy":"id","defaultSortOrder":"ASC"},"metadatas":{"id":{"edit":{},"list":{"label":"Id","searchable":false,"sortable":false}},"photo":{"edit":{"label":"Photo","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"Photo","searchable":false,"sortable":false}}},"layouts":{"list":["id","photo"],"edit":[[{"name":"photo","size":6}]],"editRelations":[]},"isComponent":true}	object		
61	plugin_content_manager_configuration_content_types::application::course-works.course-works	{"uid":"application::course-works.course-works","settings":{"bulkable":true,"filterable":true,"searchable":true,"pageSize":10,"mainField":"title","defaultSortBy":"id","defaultSortOrder":"ASC"},"metadatas":{"course_category":{"edit":{"label":"Course_category","description":"课程选项","placeholder":"","visible":true,"editable":true,"mainField":"name"},"list":{"label":"Course_category","searchable":true,"sortable":true}},"created_at":{"edit":{"label":"Created_at","description":"","placeholder":"","visible":false,"editable":true},"list":{"label":"Created_at","searchable":true,"sortable":true}},"author":{"edit":{"label":"Author","description":"作者","placeholder":"","visible":true,"editable":true},"list":{"label":"Author","searchable":false,"sortable":false}},"discribe":{"edit":{"label":"Discribe","description":"描述","placeholder":"","visible":true,"editable":true},"list":{"label":"Discribe","searchable":true,"sortable":true}},"videourl":{"edit":{"label":"Videourl","description":"支持BiliBili视频链接","placeholder":"","visible":true,"editable":true},"list":{"label":"Videourl","searchable":true,"sortable":true}},"updated_at":{"edit":{"label":"Updated_at","description":"","placeholder":"","visible":false,"editable":true},"list":{"label":"Updated_at","searchable":true,"sortable":true}},"cover":{"edit":{"label":"Cover","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"Cover","searchable":false,"sortable":false}},"title":{"edit":{"label":"Title","description":"文章表题","placeholder":"","visible":true,"editable":true},"list":{"label":"Title","searchable":true,"sortable":true}},"content":{"edit":{"label":"Content","description":"正文","placeholder":"","visible":true,"editable":true},"list":{"label":"Content","searchable":false,"sortable":false}},"id":{"edit":{},"list":{"label":"Id","searchable":true,"sortable":true}},"likes":{"edit":{"label":"Likes","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"Likes","searchable":true,"sortable":true}}},"layouts":{"edit":[[{"name":"title","size":6},{"name":"author","size":6}],[{"name":"discribe","size":6},{"name":"cover","size":6}],[{"name":"content","size":12}],[{"name":"videourl","size":6}]],"editRelations":["course_category"],"list":["id","title","discribe","course_category"]}}	object		
48	model_def_application::she-ji-tu-xue.she-ji-tu-xue	{"uid":"application::she-ji-tu-xue.she-ji-tu-xue","collectionName":"she_ji_tu_xues","kind":"singleType","info":{"name":"She-Ji-Tu-Xue","description":""},"options":{"increments":true,"timestamps":["created_at","updated_at"],"draftAndPublish":true},"pluginOptions":{},"attributes":{"course":{"type":"component","repeatable":false,"component":"course.course"},"published_at":{"type":"datetime","configurable":false,"writable":true,"visible":false},"created_by":{"model":"user","plugin":"admin","configurable":false,"writable":false,"visible":false,"private":true},"updated_by":{"model":"user","plugin":"admin","configurable":false,"writable":false,"visible":false,"private":true}}}	object	\N	\N
46	model_def_application::she-ji-ji-chu.she-ji-ji-chu	{"uid":"application::she-ji-ji-chu.she-ji-ji-chu","collectionName":"she_ji_ji_chus","kind":"singleType","info":{"name":"Ji-Chu-She-Ji","description":""},"options":{"increments":true,"timestamps":["created_at","updated_at"],"draftAndPublish":true},"pluginOptions":{},"attributes":{"course":{"type":"component","repeatable":false,"component":"course.course"},"published_at":{"type":"datetime","configurable":false,"writable":true,"visible":false},"created_by":{"model":"user","plugin":"admin","configurable":false,"writable":false,"visible":false,"private":true},"updated_by":{"model":"user","plugin":"admin","configurable":false,"writable":false,"visible":false,"private":true}}}	object	\N	\N
14	model_def_plugins::users-permissions.role	{"uid":"plugins::users-permissions.role","collectionName":"users-permissions_role","kind":"collectionType","info":{"name":"role","description":""},"options":{"timestamps":false},"pluginOptions":{"content-manager":{"visible":false}},"attributes":{"name":{"type":"string","minLength":3,"required":true,"configurable":false},"description":{"type":"string","configurable":false},"type":{"type":"string","unique":true,"configurable":false},"permissions":{"collection":"permission","via":"role","plugin":"users-permissions","configurable":false,"isVirtual":true},"users":{"collection":"user","via":"role","configurable":false,"plugin":"users-permissions","isVirtual":true},"created_by":{"model":"user","plugin":"admin","configurable":false,"writable":false,"visible":false,"private":true},"updated_by":{"model":"user","plugin":"admin","configurable":false,"writable":false,"visible":false,"private":true}}}	object	\N	\N
100	plugin_content_manager_configuration_components::index.history	{"uid":"index.history","settings":{"bulkable":true,"filterable":true,"searchable":true,"pageSize":10,"mainField":"year","defaultSortBy":"year","defaultSortOrder":"ASC"},"metadatas":{"id":{"edit":{},"list":{"label":"Id","searchable":false,"sortable":false}},"year":{"edit":{"label":"Year","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"Year","searchable":true,"sortable":true}},"content":{"edit":{"label":"Content","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"Content","searchable":true,"sortable":true}}},"layouts":{"list":["id","year","content"],"edit":[[{"name":"year","size":6},{"name":"content","size":6}]],"editRelations":[]},"isComponent":true}	object		
72	model_def_sections.person	{"uid":"sections.person","collectionName":"components_sections_people","info":{"name":"person","icon":"adjust"},"options":{"timestamps":false},"attributes":{"cover":{"model":"file","via":"related","allowedTypes":["images","files","videos"],"plugin":"upload","required":false,"pluginOptions":{}},"name":{"type":"string"},"describe":{"type":"text"}}}	object	\N	\N
96	plugin_content_manager_configuration_components::banner.banneritems	{"uid":"banner.banneritems","settings":{"bulkable":true,"filterable":true,"searchable":true,"pageSize":10,"mainField":"url","defaultSortBy":"url","defaultSortOrder":"ASC"},"metadatas":{"id":{"edit":{},"list":{"label":"Id","searchable":false,"sortable":false}},"url":{"edit":{"label":"Url","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"Url","searchable":true,"sortable":true}},"cover":{"edit":{"label":"Cover","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"Cover","searchable":false,"sortable":false}}},"layouts":{"list":["id","url","cover"],"edit":[[{"name":"url","size":6},{"name":"cover","size":6}]],"editRelations":[]},"isComponent":true}	object		
52	model_def_application::ren-ji-gong-cheng-xue.ren-ji-gong-cheng-xue	{"uid":"application::ren-ji-gong-cheng-xue.ren-ji-gong-cheng-xue","collectionName":"ren_ji_gong_cheng_xues","kind":"singleType","info":{"name":"Ren-Ji-Gong-Cheng-Xue","description":""},"options":{"increments":true,"timestamps":["created_at","updated_at"],"draftAndPublish":true},"pluginOptions":{},"attributes":{"course":{"type":"component","repeatable":false,"component":"course.course"},"published_at":{"type":"datetime","configurable":false,"writable":true,"visible":false},"created_by":{"model":"user","plugin":"admin","configurable":false,"writable":false,"visible":false,"private":true},"updated_by":{"model":"user","plugin":"admin","configurable":false,"writable":false,"visible":false,"private":true}}}	object	\N	\N
78	model_def_application::studios.studios	{"uid":"application::studios.studios","collectionName":"Studio_category","kind":"collectionType","info":{"name":"Studio_category"},"options":{"increments":true,"timestamps":["created_at","updated_at"],"draftAndPublish":true},"pluginOptions":{},"attributes":{"name":{"type":"string"},"studioId":{"type":"string"},"published_at":{"type":"datetime","configurable":false,"writable":true,"visible":false},"created_by":{"model":"user","plugin":"admin","configurable":false,"writable":false,"visible":false,"private":true},"updated_by":{"model":"user","plugin":"admin","configurable":false,"writable":false,"visible":false,"private":true}}}	object	\N	\N
68	model_def_application::studio-works-category.studio-works-category	{"uid":"application::studio-works-category.studio-works-category","collectionName":"studio_works_categories","kind":"collectionType","info":{"name":"StudioWorksCategory"},"options":{"increments":true,"timestamps":["created_at","updated_at"],"draftAndPublish":true},"pluginOptions":{},"attributes":{"name":{"type":"string"},"worksId":{"type":"string"},"studio_work":{"via":"studio_works_categories","model":"studio-works"},"published_at":{"type":"datetime","configurable":false,"writable":true,"visible":false},"created_by":{"model":"user","plugin":"admin","configurable":false,"writable":false,"visible":false,"private":true},"updated_by":{"model":"user","plugin":"admin","configurable":false,"writable":false,"visible":false,"private":true}}}	object	\N	\N
66	model_def_application::studio-works.studio-works	{"uid":"application::studio-works.studio-works","collectionName":"studio_works","kind":"collectionType","info":{"name":"StudioWorks"},"options":{"increments":true,"timestamps":["created_at","updated_at"],"draftAndPublish":true},"pluginOptions":{},"attributes":{"title":{"type":"string"},"author":{"type":"string"},"describe":{"type":"string"},"cover":{"model":"file","via":"related","allowedTypes":["images","files","videos"],"plugin":"upload","required":false,"pluginOptions":{}},"content":{"type":"richtext"},"likes":{"type":"integer","default":0},"videoUrl":{"type":"string"},"studio_category":{"model":"studio-category","via":"studio_works"},"published_at":{"type":"datetime","configurable":false,"writable":true,"visible":false},"created_by":{"model":"user","plugin":"admin","configurable":false,"writable":false,"visible":false,"private":true},"updated_by":{"model":"user","plugin":"admin","configurable":false,"writable":false,"visible":false,"private":true}}}	object	\N	\N
62	model_def_application::news-center.news-center	{"uid":"application::news-center.news-center","collectionName":"news_centers","kind":"collectionType","info":{"name":"NewsCenter","description":""},"options":{"increments":true,"timestamps":["created_at","updated_at"],"draftAndPublish":true},"pluginOptions":{},"attributes":{"title":{"type":"string","required":true},"author":{"type":"string","required":true},"cover":{"model":"file","via":"related","allowedTypes":["images"],"plugin":"upload","required":true,"pluginOptions":{}},"content":{"type":"richtext","required":true},"likes":{"type":"integer"},"videourl":{"type":"text"},"news_category":{"model":"news-category","via":"news_centers"},"discribe":{"type":"text"},"published_at":{"type":"datetime","configurable":false,"writable":true,"visible":false},"created_by":{"model":"user","plugin":"admin","configurable":false,"writable":false,"visible":false,"private":true},"updated_by":{"model":"user","plugin":"admin","configurable":false,"writable":false,"visible":false,"private":true}}}	object	\N	\N
4	model_def_application::article.article	{"uid":"application::article.article","collectionName":"articles","kind":"collectionType","info":{"name":"article","description":""},"options":{"increments":true,"timestamps":["created_at","updated_at"],"draftAndPublish":true},"pluginOptions":{},"attributes":{"title":{"type":"string","required":true},"description":{"type":"text","required":true},"content":{"type":"richtext","required":true},"slug":{"type":"uid","targetField":"title","required":true},"category":{"model":"category","via":"articles"},"image":{"model":"file","via":"related","allowedTypes":["files","images","videos"],"plugin":"upload","required":true,"pluginOptions":{}},"likes":{"type":"integer","private":true},"asdfsadf":{"type":"string"},"published_at":{"type":"datetime","configurable":false,"writable":true,"visible":false},"created_by":{"model":"user","plugin":"admin","configurable":false,"writable":false,"visible":false,"private":true},"updated_by":{"model":"user","plugin":"admin","configurable":false,"writable":false,"visible":false,"private":true}}}	object	\N	\N
42	model_def_course.course	{"uid":"course.course","collectionName":"components_course_courses","info":{"name":"course","icon":"drafting-compass","description":""},"options":{"timestamps":false},"attributes":{"intro":{"type":"richtext"},"feature":{"type":"richtext"},"cover":{"model":"file","via":"related","allowedTypes":["images","files","videos"],"plugin":"upload","required":false,"pluginOptions":{}},"titleImage":{"model":"file","via":"related","allowedTypes":["images","files","videos"],"plugin":"upload","required":false,"pluginOptions":{}}}}	object	\N	\N
97	plugin_content_manager_configuration_components::index.features	{"uid":"index.features","settings":{"bulkable":true,"filterable":true,"searchable":true,"pageSize":10,"mainField":"title","defaultSortBy":"title","defaultSortOrder":"ASC"},"metadatas":{"id":{"edit":{},"list":{"label":"Id","searchable":false,"sortable":false}},"describe":{"edit":{"label":"Describe","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"Describe","searchable":true,"sortable":true}},"title":{"edit":{"label":"Title","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"Title","searchable":true,"sortable":true}},"cover":{"edit":{"label":"Cover","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"Cover","searchable":false,"sortable":false}}},"layouts":{"list":["id","describe","title","cover"],"edit":[[{"name":"describe","size":6},{"name":"title","size":6}],[{"name":"cover","size":6}]],"editRelations":[]},"isComponent":true}	object		
86	plugin_content_manager_configuration_content_types::application::graduation-img2022.graduation-img2022	{"uid":"application::graduation-img2022.graduation-img2022","settings":{"bulkable":true,"filterable":true,"searchable":true,"pageSize":10,"mainField":"id","defaultSortBy":"id","defaultSortOrder":"ASC"},"metadatas":{"id":{"edit":{},"list":{"label":"Id","searchable":true,"sortable":true}},"img1":{"edit":{"label":"Img1","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"Img1","searchable":false,"sortable":false}},"img2":{"edit":{"label":"Img2","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"Img2","searchable":false,"sortable":false}},"img3":{"edit":{"label":"Img3","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"Img3","searchable":false,"sortable":false}},"created_at":{"edit":{"label":"Created_at","description":"","placeholder":"","visible":false,"editable":true},"list":{"label":"Created_at","searchable":true,"sortable":true}},"updated_at":{"edit":{"label":"Updated_at","description":"","placeholder":"","visible":false,"editable":true},"list":{"label":"Updated_at","searchable":true,"sortable":true}}},"layouts":{"list":["id","img1","img2","img3"],"editRelations":[],"edit":[[{"name":"img1","size":6},{"name":"img2","size":6}],[{"name":"img3","size":6}]]}}	object		
15	model_def_plugins::users-permissions.user	{"uid":"plugins::users-permissions.user","collectionName":"users-permissions_user","kind":"collectionType","info":{"name":"user","description":""},"options":{"draftAndPublish":false,"timestamps":["created_at","updated_at"]},"attributes":{"username":{"type":"string","minLength":3,"unique":true,"configurable":false,"required":true},"email":{"type":"email","minLength":6,"configurable":false,"required":true},"provider":{"type":"string","configurable":false},"password":{"type":"password","minLength":6,"configurable":false,"private":true},"resetPasswordToken":{"type":"string","configurable":false,"private":true},"confirmationToken":{"type":"string","configurable":false,"private":true},"confirmed":{"type":"boolean","default":false,"configurable":false},"blocked":{"type":"boolean","default":false,"configurable":false},"role":{"model":"role","via":"users","plugin":"users-permissions","configurable":false},"created_by":{"model":"user","plugin":"admin","configurable":false,"writable":false,"visible":false,"private":true},"updated_by":{"model":"user","plugin":"admin","configurable":false,"writable":false,"visible":false,"private":true}}}	object	\N	\N
98	plugin_content_manager_configuration_content_types::application::about-us.about-us	{"uid":"application::about-us.about-us","settings":{"bulkable":true,"filterable":true,"searchable":true,"pageSize":10,"mainField":"id","defaultSortBy":"id","defaultSortOrder":"ASC"},"metadatas":{"id":{"edit":{},"list":{"label":"Id","searchable":true,"sortable":true}},"talents":{"edit":{"label":"Talents","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"Talents","searchable":false,"sortable":false}},"features":{"edit":{"label":"Features","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"Features","searchable":false,"sortable":false}},"banner":{"edit":{"label":"Banner","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"Banner","searchable":false,"sortable":false}},"honor":{"edit":{"label":"Honor","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"Honor","searchable":false,"sortable":false}},"history":{"edit":{"label":"History","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"History","searchable":false,"sortable":false}},"created_at":{"edit":{"label":"Created_at","description":"","placeholder":"","visible":false,"editable":true},"list":{"label":"Created_at","searchable":true,"sortable":true}},"updated_at":{"edit":{"label":"Updated_at","description":"","placeholder":"","visible":false,"editable":true},"list":{"label":"Updated_at","searchable":true,"sortable":true}}},"layouts":{"list":["id","created_at","updated_at","honor"],"edit":[[{"name":"talents","size":12}],[{"name":"features","size":12}],[{"name":"banner","size":12}],[{"name":"honor","size":6}],[{"name":"history","size":12}]],"editRelations":[]}}	object		
102	plugin_content_manager_configuration_content_types::application::news-banner.news-banner	{"uid":"application::news-banner.news-banner","settings":{"bulkable":true,"filterable":true,"searchable":true,"pageSize":10,"mainField":"id","defaultSortBy":"id","defaultSortOrder":"ASC"},"metadatas":{"id":{"edit":{},"list":{"label":"Id","searchable":true,"sortable":true}},"news":{"edit":{"label":"News","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"News","searchable":false,"sortable":false}},"jiangzuo":{"edit":{"label":"Jiangzuo","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"Jiangzuo","searchable":false,"sortable":false}},"zhanxun":{"edit":{"label":"Zhanxun","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"Zhanxun","searchable":false,"sortable":false}},"tongzhi":{"edit":{"label":"Tongzhi","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"Tongzhi","searchable":false,"sortable":false}},"created_at":{"edit":{"label":"Created_at","description":"","placeholder":"","visible":false,"editable":true},"list":{"label":"Created_at","searchable":true,"sortable":true}},"updated_at":{"edit":{"label":"Updated_at","description":"","placeholder":"","visible":false,"editable":true},"list":{"label":"Updated_at","searchable":true,"sortable":true}}},"layouts":{"list":["id","created_at","updated_at"],"editRelations":[],"edit":[[{"name":"news","size":12}],[{"name":"jiangzuo","size":12}],[{"name":"zhanxun","size":12}],[{"name":"tongzhi","size":12}]]}}	object		
12	model_def_strapi::user	{"uid":"strapi::user","collectionName":"strapi_administrator","kind":"collectionType","info":{"name":"User","description":""},"options":{"timestamps":false},"pluginOptions":{"content-manager":{"visible":false},"content-type-builder":{"visible":false}},"attributes":{"firstname":{"type":"string","unique":false,"minLength":1,"configurable":false,"required":false},"lastname":{"type":"string","unique":false,"minLength":1,"configurable":false,"required":false},"username":{"type":"string","unique":false,"configurable":false,"required":false},"email":{"type":"email","minLength":6,"configurable":false,"required":true,"unique":true,"private":true},"password":{"type":"password","minLength":6,"configurable":false,"required":false,"private":true},"resetPasswordToken":{"type":"string","configurable":false,"private":true},"registrationToken":{"type":"string","configurable":false,"private":true},"isActive":{"type":"boolean","default":false,"configurable":false,"private":true},"roles":{"collection":"role","collectionName":"strapi_users_roles","via":"users","dominant":true,"plugin":"admin","configurable":false,"private":true,"attribute":"role","column":"id","isVirtual":true},"blocked":{"type":"boolean","default":false,"configurable":false,"private":true},"preferedLanguage":{"type":"string","configurable":false,"required":false}}}	object	\N	\N
16	model_def_plugins::upload.file	{"uid":"plugins::upload.file","collectionName":"upload_file","kind":"collectionType","info":{"name":"file","description":""},"options":{"timestamps":["created_at","updated_at"]},"pluginOptions":{"content-manager":{"visible":false},"content-type-builder":{"visible":false}},"attributes":{"name":{"type":"string","configurable":false,"required":true},"alternativeText":{"type":"string","configurable":false},"caption":{"type":"string","configurable":false},"width":{"type":"integer","configurable":false},"height":{"type":"integer","configurable":false},"formats":{"type":"json","configurable":false},"hash":{"type":"string","configurable":false,"required":true},"ext":{"type":"string","configurable":false},"mime":{"type":"string","configurable":false,"required":true},"size":{"type":"decimal","configurable":false,"required":true},"url":{"type":"string","configurable":false,"required":true},"previewUrl":{"type":"string","configurable":false},"provider":{"type":"string","configurable":false,"required":true},"provider_metadata":{"type":"json","configurable":false},"related":{"collection":"*","filter":"field","configurable":false},"created_by":{"model":"user","plugin":"admin","configurable":false,"writable":false,"visible":false,"private":true},"updated_by":{"model":"user","plugin":"admin","configurable":false,"writable":false,"visible":false,"private":true}}}	object	\N	\N
\.


--
-- Data for Name: course_categories; Type: TABLE DATA; Schema: public; Owner: strapi
--

COPY public.course_categories (id, name, created_by, updated_by, created_at, updated_at, slug, courserid) FROM stdin;
1	工业设计手绘	1	1	2022-04-11 19:40:38.335+00	2022-04-11 19:40:38.344+00	gysjsh	gysjsh
3	设计图学	1	1	2022-04-11 19:41:26.887+00	2022-04-11 19:41:26.896+00	sjtx	sjtx
4	原型控制与交互	1	1	2022-04-11 19:41:47.923+00	2022-04-11 19:41:47.929+00	yxkzyjh	yxkzyjh
5	人机工程学	1	1	2022-04-11 19:42:10.381+00	2022-04-11 19:42:10.387+00	rjgcx	rjgcx
2	基础设计	1	1	2022-04-11 19:41:13.569+00	2022-04-11 20:28:48.177+00	jcsj	jcsj
\.


--
-- Data for Name: course_works; Type: TABLE DATA; Schema: public; Owner: strapi
--

COPY public.course_works (id, published_at, created_by, updated_by, created_at, updated_at, title, "worksId", course_category, slug, discribe, content, videourl, author, likes) FROM stdin;
21	2022-04-12 13:27:35.846+00	3	1	2022-04-12 13:27:23.569+00	2022-04-13 14:55:45.188+00	ID进行时|专业建设科学与设计智能化专题	\N	2	\N	幸福长街\n一共有五个部分，每经过一个部分都会有不同的装置动起来，很有趣呢！作品中包含了中国近代的变迁，也很有意思。\n	## 我操\n# 好屌\n\n![ac3072658d5864b7c76ebcc35ee1f9d7.jpg](/uploads/ac3072658d5864b7c76ebcc35ee1f9d7_bd961995f7.jpg)\n\n幸福长街\n一共有五个部分，每经过一个部分都会有不同的装置动起来，很有趣呢！作品中包含了中国近代的变迁，也很有意思。\n\n![296137a7ecd6d51a79fe937c29e7ee95.jpg](/uploads/296137a7ecd6d51a79fe937c29e7ee95_c2aabf85f4.jpg)\n\n```js\nimport { FC } from "react";\nimport { ReactNode } from "react";\nimport ReactMarkdown from "react-markdown";\n\ninterface Iprops {\n  // children: ReactNode;\n  content: string;\n}\n```\n\n	\N	周龙狗	51
1	2022-04-11 20:02:37.28+00	1	1	2022-04-11 20:02:10.348+00	2022-04-19 18:49:37.938+00	专业建设 19级产品设计《材料整合设计》课程展	asdasda	2	asdfasdfasdf	2021年国家主席习近平出席领导人气候峰会并发表题为《共同构建人与自然生命共同体》的重要讲话	《材料整合设计》课程以中国传统竹材、纤维材料为研究对象，探索本土材料的可持续发展路径。课程的核心愿景是从材料的视角，为设计者提供创意灵感和运用材料设计的方法。课程教学路径从四个层面逐次展开，包括核心层面—材料认知、拓展层面-材料设计维度辨析、创新层面-材料应用情景创建与概念设计、实践层面—原型测试与制作。\n\n课程开展过程中，设计成员们全面思考产品设计的各个阶段、各个方面、各个环节中的环境问题。从开发新概念、选择对环境影响小的材料、减少材料使用量、优化生产技术、优化分销系统、降低产品在使用阶段对环境的影响、优化产品初始生命、优化产品再利用等方面，共同构想传统材料的未来。希望通过本次课程的开展，拓宽学生对于本土、地域材料的认识并完成一些独立化的思考和设计实践，增强民族认同、文化自信。\n\n![3773e5c1709709a1bc07d5ec8c1cea29.jpg](/uploads/3773e5c1709709a1bc07d5ec8c1cea29_29f95b5bab.jpg)\n\n授课教师：吴珏 李超\n2022.01.04\n01 竹角——膨化粗纤维食品\n成员介绍\n\n柳路鹏 邵兆毅 陈俊轩\n\n\n\n\n课题简介\n\n课题以膨化零食与含膳食纤维食品为设计目标，将膨化食品的口感和不溶性膳食粗纤维结合，利用鲜竹笋、马铃薯全粉等原料进行新一代膨化快消食品纤维向创新性转化，在保留脆、薄的口感的同时，赋予其高含量的膳食纤维，让人们在享受膨化零食的同时，补充三餐里欠缺的粗纤维。\n\n![9176ab991a2bbcb8e2e032bd57bb6c37.jpg](/uploads/9176ab991a2bbcb8e2e032bd57bb6c37_df37b552f5.jpg)\n02\n蜡竹——多用途防水燃烧品\n成员介绍\n\n黄晓龙  韩兆鑫  罗炜\n\n课题简介\n\n当前国内煤炭价格居高不下，**课题通过对竹材加工废料的再利用**，将竹废料变燃料，希望为竹类新生物质能源创新提供新的思路。课题从竹材加工过程中的剩余物入手，改变它目前只能燃烧，丢弃的状态，通过与蜡复合基材制作新型生物质防水燃烧材料，并将其加工成可燃产品。该产品具有防水、耐燃烧、易加工且方便加工成多种形态的优势，是可适用于多种户外场景的新型燃烧产品。\n![67ecec39e4c84d7e9891d8ffc93fe24c.jpg](/uploads/67ecec39e4c84d7e9891d8ffc93fe24c_7924b0f5bc.jpg)\n\n\n1.sdfsdfsa\n2. sdfsdfsdf\n3. sdfs\n\n\n> sdfasdfdfdsfgdsfgdsfgdsffasdfasdf\n\n- sdfasdfasdf\n- dsfasdfasdfas\n- sdfas\n\n# sadfasdfasdafsfd\n## sdfsfsdfsf\n\n![999a5486f9707017f759a478fcfbb229.jpg](/uploads/999a5486f9707017f759a478fcfbb229_e8a02713f8.jpg)\n	12F4113794	sdfsd	26
27	2022-04-12 13:47:26.561+00	3	3	2022-04-12 13:47:24.298+00	2022-04-18 12:37:47.747+00	ID毕业季NEXT LAB | 数字文创，福一 DESIGN	\N	2	\N	文化 / 科技 / 艺术 / 生活\n每一个节点都是一种可能\n每一次交汇都有一段故事\n11号到19号\n我们相聚浙图\n感受文化，体验科技，解构艺术，重塑生活	文化 / 科技 / 艺术 / 生活\n每一个节点都是一种可能\n每一次交汇都有一段故事\n11号到19号\n我们相聚浙图\n感受文化，体验科技，解构艺术，重塑生活\n\n![e707f1fe14916ed43bb35558d3cc501c.jpg](/uploads/e707f1fe14916ed43bb35558d3cc501c_7ca09836f1.jpg)\n\n\n	\N	周小飞	6
29	2022-04-12 13:50:18.523+00	3	3	2022-04-12 13:50:16.892+00	2022-04-12 13:50:18.545+00	ID毕业季2018毕业设计展优秀作品回顾	\N	2	\N	距离在浙江图书馆展出的工业设计系毕业设计展已经过去一周多了，小伙伴们有没有至今仍印象深刻的作品呢？接下来小编将带你们回顾一下毕业设计展的优秀作品，看看“浙理”设计师心中的“小宝贝们”。	距离在浙江图书馆展出的工业设计系毕业设计展已经过去一周多了，小伙伴们有没有至今仍印象深刻的作品呢？接下来小编将带你们回顾一下毕业设计展的优秀作品，看看“浙理”设计师心中的“小宝贝们”。\n![ac3072658d5864b7c76ebcc35ee1f9d7.jpg](/uploads/ac3072658d5864b7c76ebcc35ee1f9d7_bd961995f7.jpg)\n	\N	大威天龙	0
28	2022-04-12 13:48:45.811+00	3	1	2022-04-12 13:48:43.746+00	2022-04-18 12:36:55.592+00	杨朝生: 文化创意的设计思维	\N	2	\N	继昨天小编为大家推荐一位大佬后，大家是否从讲座中get到一些idea呢？今天，小编又将为大家安利一个新的讲座哦！\n\n2018研究生学术论坛\n2018毕业设计暨工作室成果展 \n工业设计系列学术讲座	继昨天小编为大家推荐一位大佬后，大家是否从讲座中get到一些idea呢？今天，小编又将为大家安利一个新的讲座哦！\n\n2018研究生学术论坛\n\n\n2018毕业设计暨工作室成果展\n\n\n工业设计系列学术讲座\n\n> quote\n> quote hello\n\n\n\n![999a5486f9707017f759a478fcfbb229.jpg](/uploads/999a5486f9707017f759a478fcfbb229_e8a02713f8.jpg)\n	\N	周大龙	11
25	2022-04-12 13:43:31.454+00	3	3	2022-04-12 13:43:07.649+00	2022-04-18 12:42:32.933+00	"新征程 • 新起点 "浙理工业设计毕业作品展——家具设计篇	\N	2	\N	基于商用空间属性下	基于商用空间属性下\n\n临时性的交流空间家具系统设计\n\n设计者：蔡陈腾\n指导老师：李雪莲\n\n![99e73fc1aa1ef57cf93b73bc834d91b6.jpg](/uploads/99e73fc1aa1ef57cf93b73bc834d91b6_e4ed73cc7b.jpg)\n\nThe Thinker\n\n无意识休憩行为下的情感化坐具设计\n\n设计者：王子睿\n指导老师：李超\n\n\n![999a5486f9707017f759a478fcfbb229.jpg](/uploads/999a5486f9707017f759a478fcfbb229_e8a02713f8.jpg)\n	\N	周飞飞	19
20	2022-04-12 13:24:09.828+00	3	1	2022-04-12 13:24:07.787+00	2022-04-19 18:50:10.005+00	来自学姐学长的力量|分享会回顾李夏：北欧设计文化与服务设计	\N	2	\N	2020年12月17日下午，理工优秀毕业生、奥斯陆建筑与设计学院设计学硕士、用户体验设计师李夏以《北欧设计文化与服务设计》为主题进行了分享。	Q：在北欧,传统产品设计与服务设计的薪资有什么差别？\nA：薪资差别不大,不过传统产品设计提供的岗位较少,并不会一直产出,大多会延续之前的设计。\n\n![7c4b1e1d773b28c0aaf8222b72beb5a6.jpg](/uploads/7c4b1e1d773b28c0aaf8222b72beb5a6_72368a446b.jpg)\n\n![83cadbe66010393b576fad5110a3f7a5.jpg](/uploads/83cadbe66010393b576fad5110a3f7a5_ae2b6f0800.jpg)\n\nQ：留学和直接工作对从事设计会有什么影响？\nA：从我自己本身来说，留学让我了解到一个地方的真实情况，我发现当地情况与书上网上说的很不一样。留学让我亲身感受到当地人民的生活态度、价值观，这对我产生的影响是比较大的，对设计师来说，较强的共情能力能更好了解目标用户的真正诉求，而只有当生活在一个地方，才能深入了解一个地方的人民和文化。    \nQ：学姐对未来交互行业的需求和趋势有什么看法。\nA：我个人是持乐观态度的，因为技术支持、影响、引导着设计。不过在这个智能快速发展的时代下我们应该避免简单、机械的工作以防止被机器人所代替，我们应该朝向高层的，框架型的工作发展。	1o3411J7Y3	周龙猫	16
30	\N	1	1	2022-04-13 16:02:52.956+00	2022-04-13 16:07:55.227+00	123123123	\N	1	\N	123123	23412341234	\N	123123	0
22	2022-04-12 13:31:23.829+00	3	3	2022-04-12 13:31:08.031+00	2022-04-20 13:55:42.799+00	ID 进行时|论坛回顾鱼缸“新零售体验创新”	\N	2	\N	梁玲琳《消费升级环境下的母婴产品体验创新》	梁玲琳《消费升级环境下的母婴产品体验创新》\n梁玲琳老师从自己的YAN DESIGN工作室的主要设计方向服务设计与社会创新、产品整合创新，来介绍在当下消费升级环境下母婴产品体验的创新。\n\n![56c73f4e6dd472d4c93376bc6d3763d7.jpg](/uploads/56c73f4e6dd472d4c93376bc6d3763d7_2d106ff262.jpg)\n\n1.母婴产品的用户认知\n母婴用品拥有万亿级的市场并且还在高速增长，其中包括了孕妇产品、婴童产品、孕妇服务、婴童服务四大类，而婴童产品与服务之和占比超过90%。服务及内容消费占比增大，垂直业务向泛母婴生态发展。\n2.母婴产品的用户画像洞察\n产品体验特征（婴童）：重复的行为，天然蕴含不确定性和可变性\n用户特征（婴童）：自我驱动，热衷于自己寻找和挖掘产品体验变化，需求动态发展\n产品体验特征（家长）：从众购买，泛社交\n\n![9a8fb9894802b9aed4bc74a848d65b8a.jpg](/uploads/9a8fb9894802b9aed4bc74a848d65b8a_e67737bae8.jpg)\n\n用户特征（家长）：代入性看待婴童产品体验的多维性；结果导向+环境导向，偏静态需求。\n3.母婴产品的多元化场景探索\n对多元化的场景探索路径有：基于用户行为链的多触电出行体验创造；基于材料应用的交互情境多维度赋能；基于社会创新的泛母婴教育生态构建。	\N	周鱼飞	20
11	2022-04-12 13:01:23.549+00	3	3	2022-04-12 13:01:20.458+00	2022-04-18 12:34:46.713+00	专业建设2021“晕”染色工作坊回顾	\N	2	\N	啊啊啊啊啊啊	2021.12.26-2022.01.09，在浙江理工大学艺术与设计学院材料与家居实验室展开了为期两周的“晕”染色坊活动，共有来自工业设计、产品设计、视觉传达设计、数字媒体艺术、风景园林和建筑设计专业的20余名学生参加。活动通过从身边常见植物或果蔬中提取色素，利用自然“晕”染方式对片状木材进行染色，探索色彩与纹案的奥秘。\n\n![ce36a95dee7067ce9f6d712b2524dbfc.jpg](/uploads/ce36a95dee7067ce9f6d712b2524dbfc_bdf01962d4.jpg)\n![02bf1c2ee2f428081eee1717ae43cb73.jpg](/uploads/02bf1c2ee2f428081eee1717ae43cb73_b0313f3d4b.jpg)\n![9300470eeedcb492790cfdfc6a425c55.jpg](/uploads/9300470eeedcb492790cfdfc6a425c55_868770ff33.jpg)\n![5f3cf9fa524e7133169a70739232a38f.jpg](/uploads/5f3cf9fa524e7133169a70739232a38f_04c17dde36.jpg)\n	\N	啊啊啊	11
10	2022-04-12 13:01:56.298+00	3	1	2022-04-12 12:58:47.818+00	2022-04-18 12:35:00.145+00	专业建设 2021“晕”染色工作坊回顾	\N	2	\N	啊啊啊啊啊啊啊啊啊啊	2021.12.26-2022.01.09，在浙江理工大学艺术与设计学院材料与家居实验室展开了为期两周的“晕”染色坊活动，共有来自工业设计、产品设计、视觉传达设计、数字媒体艺术、风景园林和建筑设计专业的20余名学生参加。活动通过从身边常见植物或果蔬中提取色素，利用自然“晕”染方式对片状木材进行染色，探索色彩与纹案的奥秘。\\\n\n![5f3cf9fa524e7133169a70739232a38f.jpg](/uploads/5f3cf9fa524e7133169a70739232a38f_04c17dde36.jpg)\n  \n\n项目支持：\n教育部人文社会科学研究规划青年基金项目\n(20YJC760037)\n浙江省教育厅一般科研项目\n(Y201942302)\n浙江理工大学浙江省丝绸与时尚文化研究中心培育课题\n\n(ZSFCRC202103PY)\n![9300470eeedcb492790cfdfc6a425c55.jpg](/uploads/9300470eeedcb492790cfdfc6a425c55_868770ff33.jpg)\n\n![02bf1c2ee2f428081eee1717ae43cb73.jpg](/uploads/02bf1c2ee2f428081eee1717ae43cb73_b0313f3d4b.jpg)\n\n![ce36a95dee7067ce9f6d712b2524dbfc.jpg](/uploads/ce36a95dee7067ce9f6d712b2524dbfc_bdf01962d4.jpg)\n	\N	啊啊啊	9
31	2022-04-14 11:58:29.422+00	1	1	2022-04-14 11:58:27.483+00	2022-04-21 14:28:16.321+00	12312312	\N	1	\N	123124t2345	xsdfgsdfgdasdfasdfasdf	\N	123123	129
16	2022-04-12 13:14:12.778+00	3	3	2022-04-12 13:14:11.073+00	2022-04-13 17:22:39.881+00	专业建设18级工业设计《展示设计》课程展预告	\N	2	\N	展示设计课程模型汇报展	展示设计课程模型汇报展\n一门研究形式、空间、信息、人流的课\n\n![4abd6540ae47a4f1ffdf609d10fc3800.jpg](/uploads/4abd6540ae47a4f1ffdf609d10fc3800_39aeb47a70.jpg)\n\n\n时间\n2021 / 05 / 12 - 2021 / 05 / 14\n\n\n地点\n浙江理工大学艺术与设计学院21号楼大厅\n\n\n参展对象\n2018级工业设计（1）班学生\n\n\n指导老师\n沈嘉\n\n\n主办单位\n浙江理工大学艺术与设计学院工业设计系\n	\N	周龙鸡	8
14	2022-04-12 13:10:16.295+00	3	3	2022-04-12 13:10:14.956+00	2022-04-12 14:03:56.563+00	专业建设工业设计系列课程与思政展	\N	2	\N	工业设计系列课程与思政展	工业设计系列课程与思政展\n\n【时间】\n\n2022年1月4日-1月9日\n\n【地点】\n\n浙江理工大学艺术与设计学院21号楼大厅\n\n【参展课程】\n\n《心理行为与设计》\n浙江省高等学校课程思政教学研究项目支撑课程\n\n《材料整合设计》\n艺术与设计学院课程思政示范课程\n\n《原型控制与交互》\n浙江理工大学校级线上一流课程	\N	周龙鸟	0
19	2022-04-12 13:20:47.527+00	3	3	2022-04-12 13:20:39.092+00	2022-04-17 17:30:25.956+00	专业建设18级工业设计《原型控制与交互》	\N	2	\N	了很多老师同学进行参观体验，下面就跟小编一起回顾这些优秀的作品吧！	2021.1.4-1.8，18级工业设计的学生们在浙江理工大学众创空间进行了「原型控制与交互」的课程成果展示。期间有不少有趣精彩的设计吸引了很多老师同学进行参观体验，下面就跟小编一起回顾这些优秀的作品吧！\n\n![296137a7ecd6d51a79fe937c29e7ee95.jpg](/uploads/296137a7ecd6d51a79fe937c29e7ee95_c2aabf85f4.jpg)\n\n![ac3072658d5864b7c76ebcc35ee1f9d7.jpg](/uploads/ac3072658d5864b7c76ebcc35ee1f9d7_bd961995f7.jpg)\n\n\n课程说明\n本课程以Arduino和Processing为技术基础，将设计创意通过逻辑化的编程与电子电路实现，突出设计思维在创意设计过程中的重要作用，强调人-机-环境的和谐交互，关注交互产品的设计美学。\n\n\n\n优秀作品\n\n01 Fruits Paradise\n成员介绍：\n李忠蕾、谷一希、王浩琪、邹琳琦\n\n产品介绍：\n“Fruits Paradise”作为一款儿童感统玩具，将儿童益智游戏与感统训练结合在一起，通过RFID卡可切换不同难度的游戏等级。\n\n“Fruits Paradise”还配备有相应的绘本，为儿童营造故事感，从而达到锻炼儿童感觉统合能力的目的。\n\n选用西瓜、苹果、香蕉、猕猴桃、柠檬五种不同特点的水果，从颜	\N	周龙熊	10
24	2022-04-12 13:39:03.127+00	3	3	2022-04-12 13:39:01.42+00	2022-04-19 18:10:51.151+00	ID进行时|工作坊预告浙江理工大学×日本多摩美术大学联合	\N	2	\N	●利用不可视现象进行产品设计	●利用不可视现象进行产品设计\n目に見えない現象を利用したプロダクトデザイン\nProduct design utilizing invisible phenomena\n\n●运用风、声、香的元素进行服务设计\n風、音、香りのサービスデザイン\nService design of Wind, Sound, Fragrance、\n\n![63ae5cff6bb4662eec3e4b1ea5723119.jpg](/uploads/63ae5cff6bb4662eec3e4b1ea5723119_c465933768.jpg)\n\n	\N	都筑响一	96
12	2022-04-12 13:06:55.632+00	3	3	2022-04-12 13:06:51.588+00	2022-04-18 12:35:04.644+00	专业建设20级工业设计《人机工程学》课程展	\N	2	\N	请问惹人突然寓意欧	课程简介\n《人机工程学》课程以心理为圆心，生理为半径，结合环境等限制因素，研究如何实现人、机、环境之间的最佳匹配，从而建立起“人－机（产品）－环境”之间和谐关系，创造安全、健康、舒适、美好的生产和生活。\n\n课程在学习以人为核心的“人-机-环境”专业知识内容体系基础上，进一步强调以人为本、社会责任、自信尊重的人文核心，以及新时代背景下融合科技精神与人文精神的人机创新设计素养，树立“一体共益”的创新设计理念与设计价值追求，具有很强的理论性与实践性。\n\n![1e0ad758b9f9e46ea45de154946dfb38.jpg](/uploads/1e0ad758b9f9e46ea45de154946dfb38_900c3758a0.jpg)\n\n\n主题：精神共富，社会共益\n本次课程结合当下中国和浙江“共同富裕”的本质规定和奋斗目标，选取中国文化精粹集中的博物馆为对象，通过对其展陈设施和场景的人机创新设计，进一步凸显以设计促进文化传播，以创新推进精神共富的目标，让学生在实践博物馆展陈人机创新设计的同时，进一步理解系统和谐观念下对设计价值、文化传承、精神文明等内容的深入思考，理解社会一体共益的价值理念和社会责任。\n\n作业要求\n选取一个博物馆及其代表性的展品，从人机工程学的角度展开创新设计：\n1. “以人为本”：在关注用户生理要求的同时，更加关注当下用户对博物馆及其展陈的认知、需求与情感，体现人机创新设计中以人为本的核心理念以及满足人民美好生活需要的目标。\n2. “人机交互技术”：以博物馆展陈设施为载体，特别关注数字时代下用户的生理心理需求以及新的人机交互技术与理念的应用，加强以产品为中介的“文化+技术”的融合。\n3. “博物馆环境”：关注博物馆环境的特殊性，并将其应用到具体的产品人机创新设计中，构建“人－机－环境”之间和谐关系和系统体系。\n4. \n![9c193abfb98f98f30df0a27c38a07f6d.jpg](/uploads/9c193abfb98f98f30df0a27c38a07f6d_2803bee016.jpg)\n	\N	请问	11
23	2022-04-12 13:36:28.24+00	3	3	2022-04-12 13:36:25.676+00	2022-04-16 07:39:30.228+00	舍间质物 纳新特辑丨2019舍间质物等待与你相遇	\N	2	\N	舍间质物工作室从属于浙江理工大学家具设计中心	舍间质物工作室从属于浙江理工大学家具设计中心，工作室内设家具产品研发与品牌咨询服务和自主创新研发与设计师推广平台两个版块。\n团队不仅有校内专业导师还有资深的行业内设计师作为校外导师全职指导，以及一群来自浙江理工、中国计量、米兰理工等高校的年轻优秀设计师。\n\n![83cadbe66010393b576fad5110a3f7a5.jpg](/uploads/83cadbe66010393b576fad5110a3f7a5_ae2b6f0800.jpg)\n\n舍间质物工作室从属于浙江理工大学家具设计中心，工作室内设家具产品研发与品牌咨询服务和自主创新研发与设计师推广平台两个版块。\n团队不仅有校内专业导师还有资深的行业内设计师作为校外导师全职指导，以及一群来自浙江理工、中国计量、米兰理工等高校的年轻优秀设计师。\n\n![ce36a95dee7067ce9f6d712b2524dbfc.jpg](/uploads/ce36a95dee7067ce9f6d712b2524dbfc_bdf01962d4.jpg)\n\n研发服务版块涵盖：产品全生命周期整合设计；家具品牌策划与营销方案；产品空间与软装整合设计；产品视觉推广整合设计。\n我们可以为工作室同学提供与国内知名家具品牌合作机会。指导同学为品牌提供产品设计及周边设计的解决方案，并深入工厂、协助打样及量产。	\N	周翔飞	91
18	2022-04-12 13:18:56.603+00	3	1	2022-04-12 13:18:53.865+00	2022-04-13 19:12:58.195+00	专业建设 19级工业设计《后疫情时代下的设计	\N	2	\N	2021.1.11-1.17,19级工业设计的学生们在浙江理工大学21号楼2楼大厅进行了	2021.1.11-1.17,19级工业设计的学生们在浙江理工大学21号楼2楼大厅进行了「后疫情时代下的设计」的课程结果展示。期间有不少新颖有趣的设计,下面就和小编一起来回顾这些优秀的作品吧！\n\n\n![9a8fb9894802b9aed4bc74a848d65b8a.jpg](/uploads/9a8fb9894802b9aed4bc74a848d65b8a_e67737bae8.jpg)\n\n![940d147d4bbb83d10b40cf5cad62051a.jpg](/uploads/940d147d4bbb83d10b40cf5cad62051a_82aeb80575.jpg)\n\n课 程 简 介\n\n产品只有当它在一个环境中被人所使用的时候，才能实现它的价值，同时随着社会的发展，产品在“方便”、“舒适”、“可靠”、“价值”、“安全”和“效率”等方面的评价也越来越被人们所重视，因此解决“人－产品－环境”的之间关系的人机工程成为了产品设计中重要的内容。\n人机工程学课程以心理学、生理学、解剖学、人体测量学等学科为基础，以心理为圆心，生理为半径，研究如何使“人－机（产品）－环境”系统的设计符合人的身体结构和生理心理特点，以实现人、机、环境之间的最佳匹配，使处于不同条件下的人能有效的、安全的、健康和舒适的进行工作与生活，从而建立起“人－机（产品）－环境”之间和谐关系，具有很强的理论性与实践性。	\N	周龙兔	3
15	2022-04-12 13:12:43.788+00	3	3	2022-04-12 13:12:40.774+00	2022-04-12 14:04:03.227+00	专业建设18级产品设计《展示设计》课程展	\N	2	\N	《展示设计》课程核心内容	前言 \n\n《展示设计》课程核心内容是从空间体验视角，研究主题信息传递的方法。课程教学路径从两个部分展开。前期从人、物、时、场调研，进行相关信息梳理，策划展示主题思想。其次根据展示内容进行功能分区，提炼主视觉形象。然后通过草图和草模方式，进行空间形式语言推敲，并综合运用展品、展具、灯光、色彩、平面视觉等多种要素，进行主题空间场景营造。让参观者在空间中游览穿行，沉浸过程中获得信息，感受展示主题，达到信息传递的目的。\n \n本次课程教学采用校企联合模式依托实际课题“白木文化博物馆”开展。联合企业浙江裕华家居材料有限公司进行了课程调研、场地测绘。联合企业酷家乐云设计平台进行线上教学成果展示。希望通过本次课程的开展，让大家学习和掌握主题策划和空间建构的方法，场景塑造的方法，并强化学生对实际课题提出设计方案的能力。\n\n![db671de3e26896f80bc6dca2e4f06925.jpg](/uploads/db671de3e26896f80bc6dca2e4f06925_835d60af45.jpg)\n\n![500aa414bdd4a632f734bc45f1015b5f.jpg](/uploads/500aa414bdd4a632f734bc45f1015b5f_e8b1812bbc.jpg)\n	\N	周龙鸭	0
13	2022-04-12 13:08:44.429+00	3	3	2022-04-12 13:08:41.935+00	2022-04-18 12:35:07.86+00	专业建设19级工业设计《原型控制与交互》	\N	2	\N	哈斯啊u和DS	![6214c39cc748060f24535570c1296019.jpg](/uploads/6214c39cc748060f24535570c1296019_05917e9ece.jpg)\n\n2022年1月4日-2022年1月9日，19级工业设计的学生在浙江理工大学21号楼大厅进行了「工业设计系列课程与思政展」的成果展示。期间有不少新颖有趣的设计，下面就跟小编一起回顾一下「原型控制与交互」课程中优秀的作品吧！\n\n\n 课程介绍 \n\n《原型控制与交互》以Arduino为技术基础，整合科技、文化与艺术等现代技术手段和多学科知识，将设计创意通过逻辑化的编程与电子电路实现，突出设计思维在创意设计过程中的重要作用，强调人-机-环境的和谐交互，关注交互产品的设计美学。 \n\n\n 展览主题：特殊共生 \n\n\n人类世界绰约多姿的魅力是多种生活方式不断碰撞的结果。不同人群的生活方式应该被尊重，生活质量与水准也应该跟随社会的发展及时革新。为特殊人群寻找身体与心灵的栖居地，不仅彰显人文关怀，更契合了我国“十四五”规划中“提升特殊人群关爱服务水平，保障特殊人群群体发展机会”的重要任务。\n\n	\N	周龙飞	8
17	2022-04-12 13:16:59.51+00	3	3	2022-04-12 13:16:58.32+00	2022-04-12 14:04:20.019+00	专业建设18级产品设计《材料整合设计》	\N	2	\N	《材料整合设计》课程的核心愿景是从材料的视角	前言 \n\n\n《材料整合设计》课程的核心愿景是从材料的视角，为设计者提供创意灵感和运用材料设计的方法。课程教学路径从四个层面逐次展开，包括核心层面—材料认知、拓展层面-材料设计维度辨析、创新层面-材料应用情景创建与概念设计、实践层面—原型测试与制作。在课程的学习过程中，同学们最初通过实验和调研获取材料技术特性和体验特征，之后从工程应用、美学体验、智能交互、环境保护四个方向思考并拓展材料应用的维度，利用具体特性激发创意点并探讨材料创新应用场景和适用人群，最终将创意原型制作出来。\n课程主题为“竹+ (BAMBOO+)”，本次选取了可持续绿色材料——竹材为基础材料。在遭遇环境恶化、生态危机的情况下，如何重新思考和定位材料的角色并做出举措，为未来的可持续发展做贡献是设计的重要议题；此外，竹作为中国传统的纤维材料，我们也希望通过本次课程的开展，拓宽学生对于本土、地域材料的认识，并完成一些独立化的思考和设计实践。\n                                       \n授课教师：吴珏 李超\n2021.01.06\n2022. \n![16f49ba887c16b669e9edfe9aa324ce8.jpg](/uploads/16f49ba887c16b669e9edfe9aa324ce8_f5282354a0.jpg)\n	\N	周龙猪	0
26	2022-04-12 13:45:11.189+00	3	3	2022-04-12 13:45:08.926+00	2022-04-18 12:39:35.095+00	ID FORUM×MEET UP| 预告 蔡烈超:重塑	\N	2	\N	MARIO TSAI STUDIO	MARIO TSAI STUDIO\n\nMARIO TSAI STUDIO was founded in Hangzhou in the summer of 2014, is a research-oriented design studio that takes the design thinking output as the core, explores the potential attributes of materials and new application methods, and adheres to the sustainable design method. \n\n\n\nMARIO TSAI STUDIO provides furniture design, industrial product design, art installation design and interior design,also provides consulting services such as strategy and art direction for the brand. \n\n\n\nMARIO TSAI STUDIO has provided design and branding services to brands and customers from China, Italy, Denmark and Norway, including Shangxia, Zaozuo, The Beast, Ferm living, Woud, Northern and many more. MARIO TSAI STUDIO has exhibited in the world’s toppest exhibitions such as Milan Design week, Stockholm Furniture Fair since 2015, Mario Tsai was nominated ‘Rising Star’ in Stockholm Furniture Fair in 2017, and the projects of MARIO TSAI STUDIO have been published on the most famous design webs and magazines such as Dezeen, Wallpaper, Designboom, Designmilk, Gooood,  Elle decoration, AD, Tatler and so on.	\N	周大飞	14
\.


--
-- Data for Name: course_works_components; Type: TABLE DATA; Schema: public; Owner: strapi
--

COPY public.course_works_components (id, field, "order", component_type, component_id, course_work_id) FROM stdin;
1	articles	1	components_sections_articles	1	1
\.


--
-- Data for Name: courses; Type: TABLE DATA; Schema: public; Owner: strapi
--

COPY public.courses (id, coursedata, created_by, updated_by, created_at, updated_at, gysjshintro, gongyeshejishouhuifeature) FROM stdin;
1	{"jcsj": {"intro": "基础设计为何要学习手绘呢？\\n不夸张的说，手绘是设计环节中最为自由的一环，是设计初期推进项目进展效率最高的手段。手绘技法娴熟的设计师，能精准、高效且富有表现力和说服力地表达想法，在团队内的沟通效率极高。高超的手绘能力能提高设计迭代的效率（在项目初期就能尝试各种方向和角度的思考），配合一些简单的模型制作，能够非常好的进行设计推进，让自己和团队成员都能更直观的预期产品的最终效果。\\n本课程主题为工业设计手绘，主要分基础教学、产品设计手绘、交通工具设计手绘三大部分。而课程内容中除了传统纸面手绘外，还加入了用数字手绘的内容。", "feature": "1、课程主讲日常参与实际设计和设计教学，了解学生群体的需求和常见问题，手绘能力和技法方式常用常新。\\n2、纸面手绘及电脑数字手绘兼具。\\n3、不仅教授手绘技法，亦教授设计思维——学习临摹已有设计的P.S.D.法，简单形态原创设计手绘的基本型加减法，复杂形态原创设计手绘的P.A.S.S.法。\\n4、交通工具设计手绘内容模块，由教师本人及在职设计师联合制作。\\n5、结合课程思政，对具有中国特色的产品进行手绘演示及产品设计解析，展现国货之光。", "imageUrl": "img/course/cover/gysjsh.png", "titleImageUrl": "img/course/cover/gysjsht.svg"}, "sjtx": {"intro": "设计图学为何要学习手绘呢？\\n不夸张的说，手绘是设计环节中最为自由的一环，是设计初期推进项目进展效率最高的手段。手绘技法娴熟的设计师，能精准、高效且富有表现力和说服力地表达想法，在团队内的沟通效率极高。高超的手绘能力能提高设计迭代的效率（在项目初期就能尝试各种方向和角度的思考），配合一些简单的模型制作，能够非常好的进行设计推进，让自己和团队成员都能更直观的预期产品的最终效果。\\n本课程主题为工业设计手绘，主要分基础教学、产品设计手绘、交通工具设计手绘三大部分。而课程内容中除了传统纸面手绘外，还加入了用数字手绘的内容。", "feature": "1、课程主讲日常参与实际设计和设计教学，了解学生群体的需求和常见问题，手绘能力和技法方式常用常新。\\n2、纸面手绘及电脑数字手绘兼具。\\n3、不仅教授手绘技法，亦教授设计思维——学习临摹已有设计的P.S.D.法，简单形态原创设计手绘的基本型加减法，复杂形态原创设计手绘的P.A.S.S.法。\\n4、交通工具设计手绘内容模块，由教师本人及在职设计师联合制作。\\n5、结合课程思政，对具有中国特色的产品进行手绘演示及产品设计解析，展现国货之光。", "imageUrl": "img/course/cover/gysjsh.png", "titleImageUrl": "img/course/cover/gysjsht.svg"}, "rjgcx": {"intro": "人机工程学为何要学习手绘呢？\\n不夸张的说，手绘是设计环节中最为自由的一环，是设计初期推进项目进展效率最高的手段。手绘技法娴熟的设计师，能精准、高效且富有表现力和说服力地表达想法，在团队内的沟通效率极高。高超的手绘能力能提高设计迭代的效率（在项目初期就能尝试各种方向和角度的思考），配合一些简单的模型制作，能够非常好的进行设计推进，让自己和团队成员都能更直观的预期产品的最终效果。\\n本课程主题为工业设计手绘，主要分基础教学、产品设计手绘、交通工具设计手绘三大部分。而课程内容中除了传统纸面手绘外，还加入了用数字手绘的内容。", "feature": "1、课程主讲日常参与实际设计和设计教学，了解学生群体的需求和常见问题，手绘能力和技法方式常用常新。\\n2、纸面手绘及电脑数字手绘兼具。\\n3、不仅教授手绘技法，亦教授设计思维——学习临摹已有设计的P.S.D.法，简单形态原创设计手绘的基本型加减法，复杂形态原创设计手绘的P.A.S.S.法。\\n4、交通工具设计手绘内容模块，由教师本人及在职设计师联合制作。\\n5、结合课程思政，对具有中国特色的产品进行手绘演示及产品设计解析，展现国货之光。", "imageUrl": "img/course/cover/gysjsh.png", "titleImageUrl": "img/course/cover/gysjsht.svg"}, "gysjsh": {"intro": "为何要学习手绘呢？\\n不夸张的说，手绘是设计环节中最为自由的一环，是设计初期推进项目进展效率最高的手段。手绘技法娴熟的设计师，能精准、高效且富有表现力和说服力地表达想法，在团队内的沟通效率极高。高超的手绘能力能提高设计迭代的效率（在项目初期就能尝试各种方向和角度的思考），配合一些简单的模型制作，能够非常好的进行设计推进，让自己和团队成员都能更直观的预期产品的最终效果。\\n本课程主题为工业设计手绘，主要分基础教学、产品设计手绘、交通工具设计手绘三大部分。而课程内容中除了传统纸面手绘外，还加入了用数字手绘的内容。", "feature": "1、课程主讲日常参与实际设计和设计教学，了解学生群体的需求和常见问题，手绘能力和技法方式常用常新。\\n2、纸面手绘及电脑数字手绘兼具。\\n3、不仅教授手绘技法，亦教授设计思维——学习临摹已有设计的P.S.D.法，简单形态原创设计手绘的基本型加减法，复杂形态原创设计手绘的P.A.S.S.法。\\n4、交通工具设计手绘内容模块，由教师本人及在职设计师联合制作。\\n5、结合课程思政，对具有中国特色的产品进行手绘演示及产品设计解析，展现国货之光。", "imageUrl": "img/course/cover/gysjsh.png", "titleImageUrl": "img/course/cover/gysjsht.svg"}, "yxkzyjh": {"intro": "原型控制与交互为何要学习手绘呢？\\n不夸张的说，手绘是设计环节中最为自由的一环，是设计初期推进项目进展效率最高的手段。手绘技法娴熟的设计师，能精准、高效且富有表现力和说服力地表达想法，在团队内的沟通效率极高。高超的手绘能力能提高设计迭代的效率（在项目初期就能尝试各种方向和角度的思考），配合一些简单的模型制作，能够非常好的进行设计推进，让自己和团队成员都能更直观的预期产品的最终效果。\\n本课程主题为工业设计手绘，主要分基础教学、产品设计手绘、交通工具设计手绘三大部分。而课程内容中除了传统纸面手绘外，还加入了用数字手绘的内容。", "feature": "1、课程主讲日常参与实际设计和设计教学，了解学生群体的需求和常见问题，手绘能力和技法方式常用常新。\\n2、纸面手绘及电脑数字手绘兼具。\\n3、不仅教授手绘技法，亦教授设计思维——学习临摹已有设计的P.S.D.法，简单形态原创设计手绘的基本型加减法，复杂形态原创设计手绘的P.A.S.S.法。\\n4、交通工具设计手绘内容模块，由教师本人及在职设计师联合制作。\\n5、结合课程思政，对具有中国特色的产品进行手绘演示及产品设计解析，展现国货之光。", "imageUrl": "img/course/cover/gysjsh.png", "titleImageUrl": "img/course/cover/gysjsht.svg"}}	1	1	2022-04-11 18:12:30.143+00	2022-04-14 11:57:53.53+00	\N	\N
\.


--
-- Data for Name: courses_components; Type: TABLE DATA; Schema: public; Owner: strapi
--

COPY public.courses_components (id, field, "order", component_type, component_id, course_id) FROM stdin;
3	sjtu	1	components_course_courses	9	1
4	yxkzyju	1	components_course_courses	10	1
1	gysjsh	1	components_course_courses	7	1
2	jcsj	1	components_course_courses	8	1
6	sjtx	1	components_course_courses	12	1
7	yxkzyjh	1	components_course_courses	13	1
5	rjgcx	1	components_course_courses	11	1
\.


--
-- Data for Name: globals; Type: TABLE DATA; Schema: public; Owner: strapi
--

COPY public.globals (id, "siteName", created_by, updated_by, created_at, updated_at) FROM stdin;
1	Strapi Blog	\N	\N	2022-04-11 18:09:52.22+00	2022-04-11 18:09:52.22+00
\.


--
-- Data for Name: globals_components; Type: TABLE DATA; Schema: public; Owner: strapi
--

COPY public.globals_components (id, field, "order", component_type, component_id, global_id) FROM stdin;
1	defaultSeo	1	components_shared_seos	2	1
\.


--
-- Data for Name: gong_ye_she_ji_shou_huis; Type: TABLE DATA; Schema: public; Owner: strapi
--

COPY public.gong_ye_she_ji_shou_huis (id, published_at, created_by, updated_by, created_at, updated_at) FROM stdin;
1	2022-04-11 19:05:07.25+00	1	1	2022-04-11 19:04:49.875+00	2022-04-11 19:05:07.276+00
\.


--
-- Data for Name: gong_ye_she_ji_shou_huis_components; Type: TABLE DATA; Schema: public; Owner: strapi
--

COPY public.gong_ye_she_ji_shou_huis_components (id, field, "order", component_type, component_id, gong_ye_she_ji_shou_hui_id) FROM stdin;
1	course	1	components_course_courses	1	1
\.


--
-- Data for Name: graduation_img2022s; Type: TABLE DATA; Schema: public; Owner: strapi
--

COPY public.graduation_img2022s (id, published_at, created_by, updated_by, created_at, updated_at) FROM stdin;
1	2022-04-19 17:44:26.136+00	1	1	2022-04-19 17:44:24.515+00	2022-04-19 17:44:26.163+00
\.


--
-- Data for Name: graduation_works; Type: TABLE DATA; Schema: public; Owner: strapi
--

COPY public.graduation_works (id, title, authro, describe, content, likes, "videoUrl", published_at, created_by, updated_by, created_at, updated_at, author) FROM stdin;
1	test	\N	Brilliant. The project I had was in a subfolder, and that fixed it. – \nslhck\n Jun 3, 2020 at 16:53\nThis fixed it for me! I'd just searched all over github issues to try various solutions, this is the only one that worked. We have eslint in a /backend and /client folder for context. – \nSneaksta\n Aug 12, 2020 at 2:40\n1\n@Julez is {PATH_TO_CLIENT} something we need to replace, or is it a special variable we can use as is? I have a bunch of packages in my monorepo under package/** can I use a glob? – \nmesqueeb\n Mar 28, 2021 at 12:10\n@mesqueeb Its something you need to change relative to your project. i was just showing it for reference. – \nJulez\n May 17, 2021 at 12:58	Brilliant. The project I had was in a subfolder, and that fixed it. – \nslhck\n Jun 3, 2020 at 16:53\nThis fixed it for me! I'd just searched all over github issues to try various solutions, this is the only one that worked. We have eslint in a /backend and /client folder for context. – \nSneaksta\n Aug 12, 2020 at 2:40\n1\n@Julez is {PATH_TO_CLIENT} something we need to replace, or is it a special variable we can use as is? I have a bunch of packages in my monorepo under package/** can I use a glob? – \nmesqueeb\n Mar 28, 2021 at 12:10\n@mesqueeb Its something you need to change relative to your project. i was just showing it for reference. – \nJulez\n May 17, 2021 at 12:58	32	\N	2022-04-19 07:19:30.269+00	1	1	2022-04-19 07:19:18.789+00	2022-04-19 18:11:06.542+00	sdfsdf
6	2035山地多场景应用型概念农用机械设计	\N	我的设计名为Polestar Agriculture 2035，是一款定位于2035年，专为山地农业设计的概念农用机械。	我的设计名为Polestar Agriculture 2035，是一款定位于2035年，专为山地农业设计的概念农用机械。2035对于全球，尤其是中国来说是极为特殊的一年。随着经济社会的发展，人口城镇化比例的升高，大规模乡间农田的经营方式将产生新的变化。我国的山地面积占国土总面积的33%，作业种类繁多，机械化程度低，拥有极大的发展潜力。随着乡间劳动力人口的减少，机械化高新设备有了介入的空间，Polestar Agriculture 2035可以通过加装不同的功能模块，针对性地解决山地农业生产过程中的问题，为生产者带来令人惊喜的操作感受和极大的便利。\n\n![148e3518f3b0b4b607bbaec2f6bed700.jpg](/uploads/148e3518f3b0b4b607bbaec2f6bed700_56eaff0bb6.jpg)\n\n\n	0	1yS4y1w7V1	2022-04-20 14:11:22.666+00	3	3	2022-04-20 14:06:52.181+00	2022-04-20 14:11:22.682+00	张博文
2	基于高速形态的新能源超级跑车概念设计	\N	This design project is based on the future ultra-hybrid engineering platform to explore the design p	This design project is based on the future ultra-hybrid engineering platform to explore the design possibilities of the next-generation Ferrari hyper car.The design process is based on the principle of styling following function and driven by extreme aerodynamics, in order to create an emotional dynamic styling language. Ferrari is a legendary racing brand, especially in Formula One field. The goal is to make this Ferrari Aero concept as a real road-legal racing car. While having incredible power output, It will catch up the proportion and characteristics of the Formula One racing car and have the same efficient aerodynamic performance. Of course, like many other classic Ferrari models, pure beauty is essential.\n\n![5bf6b659693961cbb155c8204b8f2fc4.jpg](/uploads/5bf6b659693961cbb155c8204b8f2fc4_bdf979b52d.jpg)\n	0	\N	2022-04-20 13:55:24.208+00	3	3	2022-04-20 13:55:21.757+00	2022-04-20 14:02:35.701+00	李昂孚
4	针对两轮出行的 智能产品以及开发平台设计	\N	本设计包括“答鹰”智能头盔系列，以及针对两轮出行的开发平台。	本设计包括“答鹰”智能头盔系列，以及针对两轮出行的开发平台。其中，“答鹰”智能头盔的主要创新点在于其智能语音交互功能，让用户可以更安全、方便地骑行。并与互联网结合，让智能头盔变为一个可持续提升的智能助手。而开放平台以“答鹰”头盔为核心，一方面为开发者提供了将设备、应用、数据等内容快速接入“答鹰”的途径，另一方面整合了芯片、模组的硬件能力，旨在帮助开发者快速完成产品开发，建立两轮出行产品生态圈，实现技术与数据的共赢。该项目为指导老师带领的实际开发项目。\n\n![505f6851d4704d12e6cfa35472688ee5.jpg](/uploads/505f6851d4704d12e6cfa35472688ee5_692dba942d.jpg)\n	0	\N	2022-04-20 13:59:51.43+00	3	3	2022-04-20 13:59:49.405+00	2022-04-20 14:02:49.999+00	朱佳莹 罗佳
5	中国物流卡车司机车内生活用品设计	\N	卡车司机作为“公路上的游牧民族”。	，自然应该像游牧民族那样拥有自己独特的生活方式。在卡车这样一个“蜗居”空间，利用垂直收纳的原理显然是比较合理的。因此采用悬挂式收纳的方式以及折叠桌的理念，设计了这一系列为了解决卡车内做饭问题和厨具及洗漱用品的收纳问题的产品。\n\n![23e6193a0ed406c6407b82007422bacc.jpg](/uploads/23e6193a0ed406c6407b82007422bacc_3f48a0dc86.jpg)\n	0	\N	2022-04-20 14:01:19.81+00	3	3	2022-04-20 14:01:17.37+00	2022-04-20 14:01:19.828+00	贾文星
8	后疫情时代杭州西站进出口核验系统	\N	 该闸机聚焦“后疫情”和“杭州西”两大特点，在功能上改进了一般闸机的使用流程和视觉引导	 该闸机聚焦“后疫情”和“杭州西”两大特点，在功能上改进了一般闸机的使用流程和视觉引导，并融合了健康码检测模块，致力于使乘客快速安全通行；在造型上以杭州西站的“云”和“玉”主题为基础，蕴含科技云特色和良渚玉文化的内涵，体现“玉礼九州，云出余杭”新形象。\n\n![969a6099dec0dba1630cd166c638bda9.jpg](/uploads/969a6099dec0dba1630cd166c638bda9_07e6e86d79.jpg)\n	0	\N	2022-04-20 14:16:42.662+00	3	3	2022-04-20 14:16:40.673+00	2022-04-20 14:16:42.677+00	王娅欣
3	基于多点定位技术	\N	信息社会迅速发展的背后，形成了老年人难以跨越的数字鸿沟。	基于多点定位技术的医院便捷式导诊设备\n\n作者：徐建新\n指导老师：张一弛\n\n信息社会迅速发展的背后，形成了老年人难以跨越的数字鸿沟。现有大型医院空间布局繁杂，导视系统复杂难懂，智能产品使用存在障碍等等问题无疑给老年人就诊带来了巨大的困难。\n本作品试图用设计的手法来辅助老年人就医，在整个就医过程中扮演帮助者和陪伴者的角色，在解决痛点的同时，试图推动老年人了解数字，拥抱数字。使其通过自己一定努力在智能产品的帮助下独立完成就医，获得内心的成就感和归属感。\n作品和医院就诊系统挂钩，重新整合和优化了老年患者获取就医流程信息的方式，使其更透明和个体化。产品部分主要分为共享手持产品，充电底座和刷卡器。老年人可以便捷地通过手持产品实时了解路线导航，流程引导，排号信息等等。简洁的造型的交互方式，充分考虑了老年人的生理特性和操作习惯。\n\n![b9be040ce792a93441f2012a2918f376.jpg](/uploads/b9be040ce792a93441f2012a2918f376_521a00c837.jpg)\n	0	\N	2022-04-20 13:57:44.457+00	3	3	2022-04-20 13:57:31.033+00	2022-04-20 14:02:12.271+00	徐建新
7	2030极星简奢交通工具设计	\N	设计定位介于量产车与“新物种”之间。	设计定位介于量产车与“新物种”之间。设计方案以“简奢”为主题，并以“Z世代”的代际偏好重新定义“简奢”的概念和内涵，驱动了聚焦于外饰造型的“简奢”交通工具，其目的是以外饰造型作为“简奢”体验的物理介质。除此之外，将“简奢”体验延申到交通出行的系统层面，在交通出行方式上作了一些前瞻的探讨，暨通过造型的物理介质与新型的交通出行方式两个方向，使得人们从现代的焦虑生活中释放出来，从而传达形式上与体验上的“简奢”感受。	0	\N	2022-04-20 14:12:59.499+00	3	3	2022-04-20 14:12:57.417+00	2022-04-20 14:12:59.517+00	陈致语
\.


--
-- Data for Name: gysjsh; Type: TABLE DATA; Schema: public; Owner: strapi
--

COPY public.gysjsh (id, published_at, created_by, updated_by, created_at, updated_at) FROM stdin;
1	2022-04-11 19:09:33.373+00	1	1	2022-04-11 19:09:23.894+00	2022-04-11 19:22:29.298+00
\.


--
-- Data for Name: gysjsh_components; Type: TABLE DATA; Schema: public; Owner: strapi
--

COPY public.gysjsh_components (id, field, "order", component_type, component_id, gysjsh_id) FROM stdin;
1	course	1	components_course_courses	2	1
\.


--
-- Data for Name: homepages; Type: TABLE DATA; Schema: public; Owner: strapi
--

COPY public.homepages (id, created_by, updated_by, created_at, updated_at) FROM stdin;
1	\N	\N	2022-04-11 18:09:51.037+00	2022-04-11 18:09:51.037+00
\.


--
-- Data for Name: homepages_components; Type: TABLE DATA; Schema: public; Owner: strapi
--

COPY public.homepages_components (id, field, "order", component_type, component_id, homepage_id) FROM stdin;
1	seo	1	components_shared_seos	1	1
2	hero	1	components_decoration_heroes	1	1
\.


--
-- Data for Name: i18n_locales; Type: TABLE DATA; Schema: public; Owner: strapi
--

COPY public.i18n_locales (id, name, code, created_by, updated_by, created_at, updated_at) FROM stdin;
1	English (en)	en	\N	\N	2022-04-11 18:09:49.233+00	2022-04-11 18:09:49.233+00
\.


--
-- Data for Name: ji_chu_she_jis; Type: TABLE DATA; Schema: public; Owner: strapi
--

COPY public.ji_chu_she_jis (id, published_at, created_by, updated_by, created_at, updated_at) FROM stdin;
1	2022-04-11 19:18:40.042+00	1	1	2022-04-11 19:18:38.92+00	2022-04-11 19:19:34.224+00
\.


--
-- Data for Name: ji_chu_she_jis_components; Type: TABLE DATA; Schema: public; Owner: strapi
--

COPY public.ji_chu_she_jis_components (id, field, "order", component_type, component_id, ji_chu_she_ji_id) FROM stdin;
1	course	1	components_course_courses	3	1
\.


--
-- Data for Name: news_banners; Type: TABLE DATA; Schema: public; Owner: strapi
--

COPY public.news_banners (id, published_at, created_by, updated_by, created_at, updated_at) FROM stdin;
1	2022-04-21 14:07:34.454+00	1	1	2022-04-21 14:02:21.408+00	2022-04-21 14:07:34.571+00
\.


--
-- Data for Name: news_banners_components; Type: TABLE DATA; Schema: public; Owner: strapi
--

COPY public.news_banners_components (id, field, "order", component_type, component_id, news_banner_id) FROM stdin;
1	news	1	components_banner_banners	2	1
2	jiangzuo	1	components_banner_banners	3	1
3	zhanxun	1	components_banner_banners	4	1
4	tongzhi	1	components_banner_banners	5	1
\.


--
-- Data for Name: news_categories; Type: TABLE DATA; Schema: public; Owner: strapi
--

COPY public.news_categories (id, name, published_at, created_by, updated_by, created_at, updated_at, "NewsId") FROM stdin;
1	讲座	2022-04-16 14:52:33.774+00	1	1	2022-04-16 14:52:30.594+00	2022-04-16 14:52:33.786+00	1
2	通知	2022-04-16 14:52:48.999+00	1	1	2022-04-16 14:52:45.231+00	2022-04-16 14:52:49.012+00	2
3	展讯	2022-04-16 14:53:02.186+00	1	1	2022-04-16 14:52:56.87+00	2022-04-16 14:53:02.202+00	3
\.


--
-- Data for Name: news_centers; Type: TABLE DATA; Schema: public; Owner: strapi
--

COPY public.news_centers (id, title, published_at, created_by, updated_by, created_at, updated_at, author, content, likes, "videoImage", news_category, discribe, "videoUrl", videourl) FROM stdin;
3	李夏：北欧设计文化与服务设计	2022-04-16 15:00:54.801+00	3	3	2022-04-16 15:00:53.117+00	2022-04-17 17:41:51.87+00	胡蕤睿	关于北欧设计\n\n生活态度：向往温暖、舒适\n价值模式：詹代法则\n设计准则：通用设计、全民设计、全方位设计\n设计理念：日常生活而设计、民主设计的思想、人文功能主义\n服务设计的思维方法与常用模型\n\n思维方法：\n要结合实际去使用这些工具。首先要明确自己的能力以及设计的类型。其次充分理解一个设计思维方法的底层逻辑，明确设计思维方法中的每个步骤的意义和适用范围，每个步骤都有自己适用的情况，然后再根据自己设计的类型去做选择和取舍。	4	\N	1	\N	\N	\N
4	ZSTU iOS Club 启动仪式&首次培训会成功举办	2022-04-17 13:15:53.178+00	3	3	2022-04-17 13:15:49.765+00	2022-04-17 17:29:45.994+00	Caroline A. Jones	12月8日下午13:30，ZSTU iOS Club启动仪式暨首次培训会于浙江理工大学艺术与设计学院21#A202隆重举行，让我们一同回顾精彩瞬间！\n\n![a894487b7fba527a876182850bd57872.jpg](/uploads/a894487b7fba527a876182850bd57872_3059f0cdd9.jpg)\n\n启动仪式参会嘉宾有浙江理工大学艺术与设计学院副院长周赳教授，浙江理工大学艺术与设计学院副书记胡坚，浙江理工大学瓯海研究院院长吴群教授，浙江省iOS创新实践联盟理事长、浙江大学计算机科学与技术学院张克俊副教授，话机世界股份有限公司智慧教育事业部总经理刘根保先生，话机世界股份有限公司智慧教育事业部冯永先生，浙江大学iOS Club社长、WWDC2019获奖者俞佳兴同学，首任社长陈荟夙同学。启动仪式暨首次培训会由俱乐部指导老师沈丹妮主持。\n	2	\N	2	\N	\N	\N
2	讲座预告 建筑表皮——产品形态的延伸	2022-04-16 14:59:50.162+00	3	3	2022-04-16 14:59:48.38+00	2022-04-18 12:35:22.153+00	Caroline A. Jones	讲座主题\n建筑表皮——产品形态的延伸\n\n\n主讲人\n郑学松\n\n国家级幕墙专家\n全国幕墙工程评优专家组成员\n浙江省幕墙专家\n杭州市招投标中心评标专家\n高级工程师\n\n\n时间\n2021/6/3（周四）13：30	6	\N	1	\N	\N	\N
5	竹钢——一种代表未来绿色发展方向的新型材料	2022-04-17 13:20:05.781+00	3	3	2022-04-17 13:19:58.783+00	2022-04-17 13:20:05.799+00	都筑响一	讲座主题\n竹钢\n一种代表未来绿色发展方向的新型材料\n\n\n主讲人\n       于文吉，中国林业科学研究院二级研究员，博士生导师；木材工业国家工程中心首席科学家，国家林业和草原局重组材料工程技术中心主任；国家林业和草原教学名师。主要从事生物质重组材料、无醛（低醛）人造板和秸秆资源高效利用领域的研究。\n       主持973计划、863计划、国家自然科学基金、科技攻关、科技支撑、十三五重点研发计划专项、林业公益性行业专项等项目200多项。先后获得国家科技进步奖一等奖1项、国家科技进步二等奖2项、省部级科技进步奖10余项。\n\n\n时间\n2021年4月8日（周四） 15：30\n\n\n地点\n浙江理工大学行政楼一楼报告厅（一）\n\n\n主办单位\n浙江理工大学艺术与设计学院\n	\N	\N	1	\N	\N	\N
6	李夏：北欧设计文化与服务设计	2022-04-17 13:21:21.766+00	3	3	2022-04-17 13:21:12.98+00	2022-04-17 13:21:21.792+00	都筑响一	北欧设计文化与服务设计\n北欧设计理念以及北欧文化对其的影响\n服务设计的设计方法和工具\n\n\n分享人简介\n李夏院校经历\n\n2015 - 2018  设计学硕士 - 奥斯陆建筑与设计学院 \n2016 - 2017  研究生期间交换 - 米兰理工大学\n2012  短期设计课程 - 伦敦中央圣马丁艺术与设计学院\n2011- 2015  工业设计工学学士- 浙江理工大学\n\n工作经历\n2019 - 至今  用户体验设计师\n2018  自由设计师\n\n\n时间\n2020年12月17日（周四） 13：30 - 15：30\n\n\n\n地点\n浙江理工大学 21号楼 D315\n\n\n主办单位	\N	\N	1	\N	\N	\N
8	周立钢：工业设计的商业价值与机会	2022-04-17 13:25:42.048+00	3	3	2022-04-17 13:25:38.559+00	2022-04-17 13:25:42.066+00	都筑响一	消费趋势变革\n目前市场的消费趋势变革，关键点在于人、货、场三者的关系。\n在人方面，主要聚焦在用户发生了变化。人们的消费逐渐转变为个性化社交化的行为，而人们购买产品的动机，也变得无序化离散化。但由于互联网的功能，我们的每次购买行为，又是数据化的，是可以被记录、分析、保存的。\n在货方面，关键是产品发生了变化。周立钢先生用“Made in China”为例，指出在过去十几年，这个标签往往会让购买进口产品外国产品的国人感到一丝失望和遗憾，但近几年我们越来越能够感受到，这个标签正逐渐变成质量的象征，逐渐变成让消费者感到放心的标志。\n在场方面，变化尤为突出的是平台的变化。近几年异军突起的电商，直播带货，双十一屡创新高的网络购物，无一不为新品牌的诞生创造了新的平台，也为设计师创业提供了新的道路。\n	\N	\N	1	\N	\N	\N
10	周立钢：工业设计的商业价值与机会	2022-04-17 13:30:00.206+00	3	3	2022-04-17 13:29:58.559+00	2022-04-21 15:41:39.689+00	Caroline A. Jones	浙江理工大学有幸邀请到了专家周立钢来我校做讲座\n欢迎周立钢莅临本校！\n01\n报告题目\n《工业设计的商业价值与机会》\n02\n报告内容\n业设计的定义、价值与未来的商业机会\n新品牌孵化与爆品设计案例实战分享\n03\n专家介绍	5	\N	1	\N	\N	\N
11	2020工业设计毕业设计优秀作品云展	2022-04-17 13:32:53.188+00	3	3	2022-04-17 13:32:51.391+00	2022-04-17 13:32:53.208+00	Caroline A. Jones	设计说明：\nduet是一套针对3-6岁儿童的音乐启蒙教育产品，基于学前儿童内心听觉培养理论，由手风琴、打击垫和线上APP三者共同组成，旨在通过简单、有趣的操作让儿童在音乐演奏的过程中培养对不同音乐要素如音高、节奏、肢体的感知能力和音乐学习兴趣。同时它建立了家长与儿童协作编曲的合作关系，形成家庭互动音乐教育新体验。乐器以儿童容易完成的“拍”、“拉”两个动作为主要交互方式，与APP通过蓝牙连接，调用软音源进行发声。该模式下儿童在实体产品的操作也会被同步到软件端，家长可以通过叠加音轨和声效等对儿童即兴创作的音乐进行完善，从而形成更加立体、丰富的音乐作品。儿童也可以通过游戏化的合奏游戏感受不同声部在音乐中的作用，培养立体的音乐思维与协作能力。同时APP还具备音乐社交模块，用户可以发布完成的音乐作品，也可以是查看其他人的作品，提供集展示、社交于一体的互动平台。\n\nQ&A：\nQ：用一句话形容一下你的作品吗？\nA：打造家庭互动音乐教育新体验。\nQ：您设计的出发点是什么？\nA：决定做音乐教育的主题肯定还是因为自己的兴趣，我做的是针对学前儿童的音乐启蒙教育，希望小孩子能通过一些简单、趣味性强的操作探索一些不同的声音效果，培养一些对基本音乐构成要素的感知能力，当然主要还是以激发小孩子的音乐兴趣和创造力为主。我觉得每个小孩子小时候都会敲敲打打制作一些节奏或者是哼一些旋律，反正我是这样的，做这样一个系统其实也是希望能把小孩子的这些即兴创作的灵感记录下来，家长可以跟小朋友一起在对这些片段进行加工润色，最后能产出一个完整的音乐作品。在这个过程中不仅能培养小朋友的音乐素养，也能一定程度上增进亲子之间的互动，最后还能产出音乐作品，在我看来这样一个过程是很有意思的。\n\nQ：在毕业设计中，您认为遇到困难或者说挑战是什么呢？您是如何应对的呢？\nA：疫情在家那段时间主要是前期调研、方案迭代还有一部分硬件部分的研究，主要是在后两者问题比较多，在家做模型会困难一点，出方案的时候免不了要做一些草模试验它的操作方式还有人机尺寸，我觉得尤其做这种人机交互产品前期模型一定要做大量的模型、配合简单的硬件功能去测试，看它到底真实使用状态是什么样的，功能实现可行性怎么样，不然就是空画一堆草图；再有就是跟老师线上汇报的时候其实还是不如面对面交流来的效率高，这就要求汇报的时候要注意整理自己的逻辑和汇报的内容。\n\nQ：这次毕业设计的过程中，您收获了什么呢？\nA：本次毕业设计对我而言是一次非常有意义的挑战，无论是从概念引入、问题发现、设计方案、产品落地、模型制作都有着各自的难点和问题。尽管每个阶段前期都做了大量的调研，仍不能保证实际操作中的完美，让我深深地意识到了自己仍有很大的进步发展空间。在造型设计过程中不断对产品形态进行调整、增加细节以保证产品质感，在结构设计中不断调整连接、固定和支撑部件以确保与内部硬件相匹配；在硬件开发上，作为非专业人员在研究的过程中经历了情绪的大起大落，终于在同学的细心帮助和指导下重拾信心。纵观整个设计过程，我对自己的最终产出还是比较满意的，希望能在日后的设计中保持这份热情，保持开放的心态接触其他领域的知识，在本次设计过程中收获的经验能够在日后学有所用。	\N	\N	3	\N	\N	\N
9	柴春雷：新时期设计人才的培养探索——教学与科研	2022-04-17 13:27:58.279+00	3	3	2022-04-17 13:27:56.457+00	2022-04-21 15:41:42.276+00	陈辰昕	浙江理工大学有幸邀请到了浙江大学的柴春雷老师来我校做有关新时期设计人才培养探索的相关讲座\n热烈欢迎柴春雷老师莅临本校！\n\n感兴趣的老师同学们快来关注下面的讲座相关信息\n千万不要错过学习的好机会啦~\n\n\n\n\n讲座主题\n新时期设计人才的培养探索——教学与科研\n\n\n专家简介\n柴春雷\n\n浙江大学工业设计系主任\n浙江大学现代工业设计研究所副所长\n\n\n时间\n2020年11月12日（周四） 14：00 - 15：30	1	\N	1	\N	\N	\N
19	2018毕业设计展优秀作品回顾	2022-04-17 13:57:35.051+00	3	3	2022-04-17 13:57:32.303+00	2022-04-17 13:57:35.071+00	Caroline A. Jones	距离在浙江图书馆展出的工业设计系毕业设计展已经过去一周多了，小伙伴们有没有至今仍印象深刻的作品呢？接下来小编将带你们回顾一下毕业设计展的优秀作品，看看“浙理”设计师心中的“小宝贝们”。\n该座椅的灵感来源是折纸，将折纸结构与座椅人机结合，制作时以一整张板为基础，通过面片弯折形成薄壳结构，同时保证椅子的强度；以虚线打孔为媒介，通过一体翻边的背靠，既形成强度又富有视觉特征，同时也富有光影效果。	\N	\N	3	\N	\N	\N
16	Circle	2022-04-17 13:42:46.24+00	3	3	2022-04-17 13:42:44.564+00	2022-04-17 13:42:46.258+00	李佳璐	将平面化的设计语言融入小家具中，从造型、材料、颜色等多个方面着手，来平衡当代青年对于审美和储物的需求。让家具在不影响美的前提下，进行需求功能分区的细分，以及对年轻化小家具—衣架材质的探索设计出性价比较高、个性化较强的年轻化小家具。\n\n![0278492b490d33cedecdb8a163c6a224.jpg](/uploads/0278492b490d33cedecdb8a163c6a224_b670483a2a.jpg)\n	\N	\N	3	\N	\N	\N
13	TURNING 2019浙江理工大学工业设计毕业设计展之家具设计篇	2022-04-17 13:37:07.528+00	3	3	2022-04-17 13:37:04.056+00	2022-04-18 12:38:07.023+00	请问	两件作品都具有体量小、易搬迁、易收纳的特点。其中「UNBRELLA」伞几借鉴中国传统油纸伞的开合方式，改进部件与部件的结合方式，通过一根绳的伸长缩短来使家具高度根据需求可随意变化，使用方式简单，便于收纳拆装，更加便于平板化运输安装。\n\n![d6b62db289b695539debaccaabced63f.jpg](/uploads/d6b62db289b695539debaccaabced63f_1eeeb6f732.jpg)\n\n\n\n	7	\N	3	\N	\N	\N
15	TURNING 2019浙江理工大学工业设计毕业设计展之家具设计篇	2022-04-17 13:39:57.592+00	3	3	2022-04-17 13:39:54.505+00	2022-04-17 13:39:57.61+00	周飞飞	由“踢毽子”这一项儿时的活动得到启发，根据人在运动时的标志性动作进行简化修改到最后这个形态。给人带来的直观感受是活泼，清新。不同高度的圆托可以摆放和悬挂不同的物品，满足需求。运用几何形态中的圆弧来表现实现人与家具的交互。既保证可以存放不同高度的衣物，底盘可以适当收纳一些杂物。	\N	\N	3	\N	\N	\N
18	「Ycube」有机生长家具	2022-04-17 13:47:08.208+00	3	3	2022-04-17 13:47:06.217+00	2022-04-17 13:47:08.229+00	秦敏	「Ycube」是一款有机生长家具，作为「YHOME」定义年轻人新的生活方式的子品牌，「Ycube」一直秉承着为家，多一种可能。家是个人生活习惯反应的有机生命体，因为是你，所以房子变成了家，你想要的「Ycube」更懂你。\n\n![25d32d61416187deb453590ecc37bc7c.jpg](/uploads/25d32d61416187deb453590ecc37bc7c_98f85c59da.jpg)\n\n椅子主要是运用多层板拼接成一个薄壳结构的椅子。\n主要解决的问题分别是形态问题和木板与木板之间的链接问题。\n\n	\N	\N	3	\N	\N	\N
17	「Ylight」租房青年便携灯具	2022-04-17 13:44:40.03+00	3	3	2022-04-17 13:44:38.104+00	2022-04-17 13:44:40.051+00	陈侠妮	这是一套为租房青年而设计的系列灯具，采用了杜邦纸与亚克力的材质，在灯光下会展现出特殊的纹理效果。作品命名为「Ylight」，以此传达「带走属于你的光」的理念。频繁搬家的租房青年们，将属于自己的光带走，照亮下一个住所。利用风琴纸折纸的工艺，将灯具转换成包袋。「Ylight」采用平板化的设计结构，材质轻盈，不会给搬家带来负担。	\N	\N	3	\N	\N	\N
21	Marking 2016：展品大综述，高颜值和实力派都要有	2022-04-17 14:02:12.933+00	3	3	2022-04-17 14:02:05.376+00	2022-04-17 14:02:12.952+00	周翔飞	作品名称：Folding Mat 折垫\n设计师：嵇晓晖\n\n![5621833b4065e465866447265b25880d.jpg](/uploads/5621833b4065e465866447265b25880d_9e7cf8239e.jpg)\n\n![0c1a1a9648b653ba53837fb496ed7ad4.jpg](/uploads/0c1a1a9648b653ba53837fb496ed7ad4_d3be50f85a.jpg)\n\n![213e03b5bea8e4df466736829734802d.jpg](/uploads/213e03b5bea8e4df466736829734802d_d8e18bd8b9.jpg)\n	\N	\N	3	\N	\N	\N
20	线象·设计·生活·艺术	2022-04-17 13:59:09.853+00	3	3	2022-04-17 13:59:07.931+00	2022-04-17 13:59:09.872+00	周鱼飞	Hi，亲爱的小伙伴们~\n我们以非常隆重的形式——外展\n来呈现我们的新产品~\n\n以下，是我们带来的作品，\n请认真看，\n是朝气的线象，\n是一直青春的我们~\n	\N	\N	3	\N	\N	\N
14	TURNING 2019浙江理工大学工业设计毕业设计展之家具设计篇	2022-04-17 13:38:44.043+00	3	3	2022-04-17 13:38:41.429+00	2022-04-18 12:36:33.36+00	周翔飞	LET’S THINK收纳空间利用硬性与软性的材质碰撞，通过便捷可拆卸的便利收纳实现可以让儿童自己定义家具。个性化的外观，可以激发儿童对于事物探索的好奇心并锻炼儿童的动手能力。D.O.G.O从儿童家具益智性与趣味性的方向出发，让家具在家庭环境中由静态转变为动态的角色，让儿童与家具之间产生互动，培养儿童动手能力和动脑能力。\n\n![9451c0380d836c99d96254438ab1a374.jpg](/uploads/9451c0380d836c99d96254438ab1a374_0e6d7a95f8.jpg)\n	5	\N	3	\N	\N	\N
1	喜讯 | 浙江理工大学2021中国设计智造大奖再创佳绩	2022-04-16 14:58:32.976+00	3	3	2022-04-16 14:58:29.683+00	2022-04-21 11:50:22.599+00	都筑响一	获奖作品\n\n![213e03b5bea8e4df466736829734802d.jpg](/uploads/213e03b5bea8e4df466736829734802d_d8e18bd8b9.jpg)\n\n《1900椅》\n1900栏杆椅提供了一种短暂休憩的解决方案，以及更多坐姿形态可能性的思考。另外它能够拆装、堆叠，方便运输和存放。\n——浙江理工大学家《2012桌》\n自然是数字定律塑造出来的。结合数字化设计的桌腿像枝条向外延伸以支撑住不规则形态的桌面；桌面通过数学逻辑进行不同排列以适应不同空间类型，面板采用彩色分层无甲醛密度板，产生分层效果，赋予产品趣味性 。\n——浙江理工大中国设计智造大奖 (DIA) 是我国工业设计领域首个国际化的学院奖，由中国美术学院于2015 年设立，旨在弘扬设计者和企业家的想象力和创造力。大奖为企业提供了一个促进国际贸易，扩大国际连通，挖掘商业机会的平台。旨向“民生·产业·未来”，以人为本，以想象力建构新方式，以生活、生产、 生态融合为关键，强调人机互动深度学习，促进文化创新与科技创新共生，以实现社会与经济多维成功，是一种以顶层设计策略整合人类社会网络，引领 生产、物流、销售、服务全链的设计协同活动 。\n部分内容转载自 浙江理工大学家具设计中心\nhttps://mp.weixin.qq.com/s/O3xyce2y6PODG6z5rqSLaw\n	20	\N	2	\N	\N	\N
12	2020工业设计毕业设计优秀作品云展（下）	2022-04-17 13:34:00.629+00	3	3	2022-04-17 13:33:53.947+00	2022-04-18 12:39:17.55+00	啊啊啊	设计说明：\n本次毕业设计的主题是儿童能力教育课程服务设计，以5-6岁幼小衔接阶段的儿童为对象，研究能力教育这一种新兴教育方式，通过儿童积极行为分类评价系统将儿童能力划为六个维度构建课程框架，融入儿童职业体验和IP形象，以绘本故事的方式表现，形成专为幼小衔接阶段儿童设计的能力培养教育课程服务系统。本系统从儿童心理出发，用积极的内容和积极的方式培养积极心理品质，进而达到开发潜能、减负增效、塑造积极向上心态和奠基幸福人生的目的。\n\n使用线上课程和线下课程相结合的教育模式。在线上以故事情节介入学前教育，通过建立IP形象，设计与课程框架紧密结合的交互式绘本故事，并配套相应课程主题的AR故事卡片等附加课程教具，根据5-6岁幼小衔接阶段的儿童心理、生理特点去引导和帮助孩子；在线下建立儿童课程体验中心，随着APP端的课程进展进行相关活动，开发孩子的性格优势，将线下体验中心打造成性格优势开发中心+亲子活动园+线下零售店的模式。	9	\N	3	\N	\N	\N
7	喜讯！浙理学子2020年工业设计国赛和省赛连获佳绩	2022-04-17 13:24:10.968+00	3	3	2022-04-17 13:24:07.797+00	2022-04-20 16:25:31.667+00	Caroline A. Jones	近日，2020年全国大学生工业设计大赛的获奖名单正式公布。我校学子作品历经分赛区、主赛区激烈角逐，从全国千余所高校的近4万件作品中脱颖而出，斩获10项殊荣，获得中国新锐设计银奖2项，铜奖2项，优秀奖5项和最佳人气奖1项。我校教师团队荣获优秀组织奖。\n \n全国大学生工业设计大赛是由教育部高等学校工业设计专业分指导委员会指导，全国工业设计一流专业建设协同创新平台等多单位联合主办的全国大学生学科竞技类赛事。大赛自2012至今已成功举办五届。本届大赛以“万物始新•设计无界”为主题，面向工业设计学科的前沿趋势，大赛在全国31个分赛区开展作品角逐。大赛倡导以工匠精神为核心的工业精神，引导参赛者树立崇高的理想和良好的职业道德，致力于培养崇尚劳动、敬业守信、精益求精、敢于创新的文化创意及制造业的领军人才。此次获奖是对我校工业设计专业师生实践与落实“课程群+工作室+创造工坊+实训平台”四位一体产教融合、联动教学理念与模式的充分肯定。\n \n此外，在刚落幕的第12届浙江省工业设计竞赛中我校学子同样表现出色。本届省赛主题为“食”，我校学子设计以独到的创意和丰富的人文关怀荣获一等奖5项、二等奖8项，以及三等奖7项。保持了我校在历届浙江省工业设计竞赛中的获奖优势。\n\n![8c3518de262ac1aed365053d87405e03.jpg](/uploads/8c3518de262ac1aed365053d87405e03_3c62b6b3f8.jpg)\n	5	\N	2	\N	\N	\N
\.


--
-- Data for Name: ren_ji_gong_cheng_xues; Type: TABLE DATA; Schema: public; Owner: strapi
--

COPY public.ren_ji_gong_cheng_xues (id, published_at, created_by, updated_by, created_at, updated_at) FROM stdin;
1	\N	1	1	2022-04-11 19:18:44.03+00	2022-04-11 19:19:30.976+00
\.


--
-- Data for Name: ren_ji_gong_cheng_xues_components; Type: TABLE DATA; Schema: public; Owner: strapi
--

COPY public.ren_ji_gong_cheng_xues_components (id, field, "order", component_type, component_id, ren_ji_gong_cheng_xue_id) FROM stdin;
1	course	1	components_course_courses	4	1
\.


--
-- Data for Name: she_ji_ji_chus; Type: TABLE DATA; Schema: public; Owner: strapi
--

COPY public.she_ji_ji_chus (id, published_at, created_by, updated_by, created_at, updated_at) FROM stdin;
\.


--
-- Data for Name: she_ji_ji_chus_components; Type: TABLE DATA; Schema: public; Owner: strapi
--

COPY public.she_ji_ji_chus_components (id, field, "order", component_type, component_id, she_ji_ji_chus_id) FROM stdin;
\.


--
-- Data for Name: she_ji_tu_xues; Type: TABLE DATA; Schema: public; Owner: strapi
--

COPY public.she_ji_tu_xues (id, published_at, created_by, updated_by, created_at, updated_at) FROM stdin;
1	\N	1	1	2022-04-11 19:18:53.03+00	2022-04-11 19:19:25.814+00
\.


--
-- Data for Name: she_ji_tu_xues_components; Type: TABLE DATA; Schema: public; Owner: strapi
--

COPY public.she_ji_tu_xues_components (id, field, "order", component_type, component_id, she_ji_tu_xue_id) FROM stdin;
1	course	1	components_course_courses	5	1
\.


--
-- Data for Name: strapi_administrator; Type: TABLE DATA; Schema: public; Owner: strapi
--

COPY public.strapi_administrator (id, firstname, lastname, username, email, password, "resetPasswordToken", "registrationToken", "isActive", blocked, "preferedLanguage") FROM stdin;
1	longfei	Zhou	\N	i0.0ia@qq.com	$2a$10$HMcz6ciqpl1gCPX9Hcm.NOfysqajdT8Epno8/YiuYAr7U.3OuV5qW	\N	\N	t	\N	\N
2	yuao	wang	\N	2342@qweqw.com	$2a$10$efhVxtD3PrJ.fUYhqJhbd.btt7etfhSmibMOWWMaoF5taHatbmT5e	\N	7daad810276e3982f2283ec83aeb4e4df70ab555	t	\N	\N
3	mengyuan	mao	\N	943194835@qq.com	$2a$10$PEpd4YRYwnABQdoZw3fQUuef4johh7js4C4MJg9bY1bdLlGMPASi2	\N	fc9f282276321a252e39528467ff489ae36b317d	t	\N	\N
4	zy	s	\N	sbsbsb@qq.com	$2a$10$sWZitcPDLaUK3gOCltwFn.qq0yHWMk2U8LzXFvAtWmlxXvWt1qSOK	\N	80a0fe66f6b5fc0cbc4267d6b1e2540711137b53	t	\N	\N
\.


--
-- Data for Name: strapi_permission; Type: TABLE DATA; Schema: public; Owner: strapi
--

COPY public.strapi_permission (id, action, subject, properties, conditions, role, created_at, updated_at) FROM stdin;
1341	plugins::content-manager.explorer.create	application::studio-works.studio-works	{"fields": ["author", "content", "cover", "describe", "likes", "studio_category", "title", "videoUrl"]}	[]	2	2022-04-20 13:48:55.803+00	2022-04-20 13:48:55.812+00
705	plugins::content-manager.explorer.create	application::course.course	{"fields": ["gysjsh.intro", "gysjsh.feature", "gysjsh.cover", "gysjsh.titleImage", "jcsj.intro", "jcsj.feature", "jcsj.cover", "jcsj.titleImage", "sjtx.intro", "sjtx.feature", "sjtx.cover", "sjtx.titleImage", "yxkzyjh.intro", "yxkzyjh.feature", "yxkzyjh.cover", "yxkzyjh.titleImage", "rjgcx.intro", "rjgcx.feature", "rjgcx.cover", "rjgcx.titleImage"]}	[]	1	2022-04-12 14:09:49.912+00	2022-04-12 14:09:49.932+00
1508	plugins::content-manager.explorer.read	application::about-us.about-us	{"fields": ["talents.describe", "talents.title", "features.describe", "features.title", "features.cover", "banner.bannerItems1.url", "banner.bannerItems1.cover", "banner.bannerItmes2.url", "banner.bannerItmes2.cover", "banner.bannerItem3.url", "banner.bannerItem3.cover", "honor", "history.year", "history.content"]}	[]	1	2022-04-21 13:33:29.389+00	2022-04-21 13:33:29.405+00
716	plugins::content-manager.explorer.create	application::course.course	{"fields": ["gysjsh.cover", "gysjsh.feature", "gysjsh.intro", "gysjsh.titleImage", "jcsj.cover", "jcsj.feature", "jcsj.intro", "jcsj.titleImage", "rjgcx.cover", "rjgcx.feature", "rjgcx.intro", "rjgcx.titleImage", "sjtx.cover", "sjtx.feature", "sjtx.intro", "sjtx.titleImage", "yxkzyjh.cover", "yxkzyjh.feature", "yxkzyjh.intro", "yxkzyjh.titleImage"]}	[]	2	2022-04-12 14:10:34.258+00	2022-04-12 14:10:34.263+00
580	plugins::content-manager.explorer.read	application::course-category.course-category	{"fields": ["name", "slug", "course_works", "courserid"]}	[]	1	2022-04-11 20:03:02.104+00	2022-04-11 20:03:02.125+00
746	plugins::content-manager.explorer.create	application::course-works.course-works	{"fields": ["title", "course_category", "discribe", "content", "videourl", "cover", "author", "likes"]}	[]	1	2022-04-13 12:13:09.292+00	2022-04-13 12:13:09.31+00
1348	plugins::content-manager.explorer.create	application::studio.studio	{"fields": ["fwsjyshcx.Personnel.cover", "fwsjyshcx.Personnel.describe", "fwsjyshcx.Personnel.name", "fwsjyshcx.ReachDirection.direction_EN", "fwsjyshcx.ReachDirection.direction_ZH", "fwsjyshcx.cover", "fwsjyshcx.describe", "jjsj.Personnel.cover", "jjsj.Personnel.describe", "jjsj.Personnel.name", "jjsj.ReachDirection.direction_EN", "jjsj.ReachDirection.direction_ZH", "jjsj.cover", "jjsj.describe", "kcxsj.Personnel.cover", "kcxsj.Personnel.describe", "kcxsj.Personnel.name", "kcxsj.ReachDirection.direction_EN", "kcxsj.ReachDirection.direction_ZH", "kcxsj.cover", "kcxsj.describe", "qdyjs.Personnel.cover", "qdyjs.Personnel.describe", "qdyjs.Personnel.name", "qdyjs.ReachDirection.direction_EN", "qdyjs.ReachDirection.direction_ZH", "qdyjs.cover", "qdyjs.describe", "szwc.Personnel.cover", "szwc.Personnel.describe", "szwc.Personnel.name", "szwc.ReachDirection.direction_EN", "szwc.ReachDirection.direction_ZH", "szwc.cover", "szwc.describe"]}	[]	2	2022-04-20 13:49:04.273+00	2022-04-20 13:49:04.286+00
821	plugins::content-manager.explorer.delete	application::news-center.news-center	{}	[]	2	2022-04-16 14:45:22.792+00	2022-04-16 14:45:22.805+00
1564	plugins::content-manager.explorer.delete	application::news-banner.news-banner	{}	[]	2	2022-04-21 14:03:47.96+00	2022-04-21 14:03:47.985+00
1574	plugins::content-manager.explorer.delete	application::graduation-img2022.graduation-img2022	{}	[]	1	2022-04-21 15:04:43.979+00	2022-04-21 15:04:44.001+00
1587	plugins::content-manager.explorer.publish	application::graduation-img2022.graduation-img2022	{}	[]	1	2022-04-21 15:04:44.032+00	2022-04-21 15:04:44.056+00
1405	plugins::content-manager.explorer.publish	application::about-us.about-us	{}	[]	2	2022-04-20 15:06:08.59+00	2022-04-20 15:06:08.598+00
1504	plugins::content-manager.explorer.delete	application::graduation-works.graduation-works	{}	["admin::is-creator"]	3	2022-04-21 12:47:48.34+00	2022-04-21 12:47:48.361+00
1140	plugins::content-manager.explorer.read	application::studio.studio	{"fields": ["fwsjyshcx.cover", "fwsjyshcx.Personnel.cover", "fwsjyshcx.Personnel.name", "fwsjyshcx.Personnel.describe", "fwsjyshcx.ReachDirection.direction_ZH", "fwsjyshcx.ReachDirection.direction_EN", "fwsjyshcx.describe", "szwc.cover", "szwc.Personnel.cover", "szwc.Personnel.name", "szwc.Personnel.describe", "szwc.ReachDirection.direction_ZH", "szwc.ReachDirection.direction_EN", "szwc.describe", "kcxsj.cover", "kcxsj.Personnel.cover", "kcxsj.Personnel.name", "kcxsj.Personnel.describe", "kcxsj.ReachDirection.direction_ZH", "kcxsj.ReachDirection.direction_EN", "kcxsj.describe", "jjsj.cover", "jjsj.Personnel.cover", "jjsj.Personnel.name", "jjsj.Personnel.describe", "jjsj.ReachDirection.direction_ZH", "jjsj.ReachDirection.direction_EN", "jjsj.describe", "qdyjs.cover", "qdyjs.Personnel.cover", "qdyjs.Personnel.name", "qdyjs.Personnel.describe", "qdyjs.ReachDirection.direction_ZH", "qdyjs.ReachDirection.direction_EN", "qdyjs.describe"]}	[]	1	2022-04-18 16:30:54.591+00	2022-04-18 16:30:54.611+00
1235	plugins::content-manager.explorer.create	application::studio-works.studio-works	{"fields": ["title", "author", "describe", "cover", "content", "likes", "videoUrl", "studio_category"]}	[]	1	2022-04-18 18:26:15.029+00	2022-04-18 18:26:15.047+00
1494	plugins::content-manager.explorer.update	application::about-us.about-us	{"fields": ["talents.describe", "talents.title", "features.describe", "features.title", "features.cover", "banner.bannerItem3.url", "banner.bannerItem3.cover", "honor", "history.year", "history.content"]}	[]	2	2022-04-21 12:12:46.619+00	2022-04-21 13:33:29.618+00
1330	plugins::content-manager.explorer.read	application::course-works.course-works	{"fields": ["author", "content", "course_category", "cover", "discribe", "likes", "title", "videourl"]}	[]	2	2022-04-20 13:48:55.765+00	2022-04-20 13:48:55.779+00
21	plugins::upload.assets.update	\N	{}	[]	2	2022-04-11 18:09:52.687+00	2022-04-11 18:09:52.695+00
23	plugins::upload.assets.create	\N	{}	[]	2	2022-04-11 18:09:52.687+00	2022-04-11 18:09:52.697+00
48	plugins::upload.assets.create	\N	{}	[]	3	2022-04-11 18:09:52.827+00	2022-04-11 18:09:52.84+00
68	plugins::content-manager.explorer.update	plugins::users-permissions.user	{"fields": ["username", "email", "provider", "password", "resetPasswordToken", "confirmationToken", "confirmed", "blocked", "role"]}	[]	1	2022-04-11 18:09:52.969+00	2022-04-11 18:09:52.989+00
75	plugins::content-type-builder.read	\N	{}	[]	1	2022-04-11 18:09:53.016+00	2022-04-11 18:09:53.033+00
86	plugins::i18n.locale.update	\N	{}	[]	1	2022-04-11 18:09:53.073+00	2022-04-11 18:09:53.088+00
97	plugins::users-permissions.providers.update	\N	{}	[]	1	2022-04-11 18:09:53.116+00	2022-04-11 18:09:53.132+00
107	admin::webhooks.update	\N	{}	[]	1	2022-04-11 18:09:53.165+00	2022-04-11 18:09:53.182+00
24	plugins::upload.read	\N	{}	[]	2	2022-04-11 18:09:52.687+00	2022-04-11 18:09:52.7+00
706	plugins::content-manager.explorer.update	application::course.course	{"fields": ["gysjsh.intro", "gysjsh.feature", "gysjsh.cover", "gysjsh.titleImage", "jcsj.intro", "jcsj.feature", "jcsj.cover", "jcsj.titleImage", "sjtx.intro", "sjtx.feature", "sjtx.cover", "sjtx.titleImage", "yxkzyjh.intro", "yxkzyjh.feature", "yxkzyjh.cover", "yxkzyjh.titleImage", "rjgcx.intro", "rjgcx.feature", "rjgcx.cover", "rjgcx.titleImage"]}	[]	1	2022-04-12 14:09:49.915+00	2022-04-12 14:09:49.931+00
49	plugins::upload.assets.update	\N	{}	["admin::is-creator"]	3	2022-04-11 18:09:52.828+00	2022-04-11 18:09:52.84+00
1536	plugins::content-manager.explorer.create	application::news-banner.news-banner	{"fields": ["news.bannerItems1.url", "news.bannerItems1.cover", "news.bannerItmes2.url", "news.bannerItmes2.cover", "news.bannerItem3.url", "news.bannerItem3.cover", "jiangzuo.bannerItems1.url", "jiangzuo.bannerItems1.cover", "jiangzuo.bannerItmes2.url", "jiangzuo.bannerItmes2.cover", "jiangzuo.bannerItem3.url", "jiangzuo.bannerItem3.cover", "zhanxun.bannerItems1.url", "zhanxun.bannerItems1.cover", "zhanxun.bannerItmes2.url", "zhanxun.bannerItmes2.cover", "zhanxun.bannerItem3.url", "zhanxun.bannerItem3.cover", "tongzhi.bannerItems1.url", "tongzhi.bannerItems1.cover", "tongzhi.bannerItmes2.url", "tongzhi.bannerItmes2.cover", "tongzhi.bannerItem3.url", "tongzhi.bannerItem3.cover"]}	[]	1	2022-04-21 14:00:00.237+00	2022-04-21 14:00:00.25+00
65	plugins::content-manager.explorer.update	application::category.category	{"fields": ["name", "slug", "articles"]}	[]	1	2022-04-11 18:09:52.966+00	2022-04-11 18:09:52.99+00
80	plugins::upload.assets.update	\N	{}	[]	1	2022-04-11 18:09:53.019+00	2022-04-11 18:09:53.041+00
91	plugins::content-manager.collection-types.configure-view	\N	{}	[]	1	2022-04-11 18:09:53.075+00	2022-04-11 18:09:53.092+00
101	plugins::users-permissions.advanced-settings.update	\N	{}	[]	1	2022-04-11 18:09:53.122+00	2022-04-11 18:09:53.139+00
111	admin::users.update	\N	{}	[]	1	2022-04-11 18:09:53.172+00	2022-04-11 18:09:53.19+00
1535	plugins::content-manager.explorer.update	application::news-banner.news-banner	{"fields": ["news.bannerItems1.url", "news.bannerItems1.cover", "news.bannerItmes2.url", "news.bannerItmes2.cover", "news.bannerItem3.url", "news.bannerItem3.cover", "jiangzuo.bannerItems1.url", "jiangzuo.bannerItems1.cover", "jiangzuo.bannerItmes2.url", "jiangzuo.bannerItmes2.cover", "jiangzuo.bannerItem3.url", "jiangzuo.bannerItem3.cover", "zhanxun.bannerItems1.url", "zhanxun.bannerItems1.cover", "zhanxun.bannerItmes2.url", "zhanxun.bannerItmes2.cover", "zhanxun.bannerItem3.url", "zhanxun.bannerItem3.cover", "tongzhi.bannerItems1.url", "tongzhi.bannerItems1.cover", "tongzhi.bannerItmes2.url", "tongzhi.bannerItmes2.cover", "tongzhi.bannerItem3.url", "tongzhi.bannerItem3.cover"]}	[]	1	2022-04-21 14:00:00.234+00	2022-04-21 14:00:00.251+00
717	plugins::content-manager.explorer.read	application::course.course	{"fields": ["gysjsh.cover", "gysjsh.feature", "gysjsh.intro", "gysjsh.titleImage", "jcsj.cover", "jcsj.feature", "jcsj.intro", "jcsj.titleImage", "rjgcx.cover", "rjgcx.feature", "rjgcx.intro", "rjgcx.titleImage", "sjtx.cover", "sjtx.feature", "sjtx.intro", "sjtx.titleImage", "yxkzyjh.cover", "yxkzyjh.feature", "yxkzyjh.intro", "yxkzyjh.titleImage"]}	[]	2	2022-04-12 14:10:34.258+00	2022-04-12 14:10:34.265+00
1306	plugins::content-manager.explorer.update	application::graduation-img2022.graduation-img2022	{"fields": ["img1", "img2", "img3"]}	[]	1	2022-04-19 17:43:11.145+00	2022-04-19 17:43:11.163+00
747	plugins::content-manager.explorer.read	application::course-works.course-works	{"fields": ["title", "course_category", "discribe", "content", "videourl", "cover", "author", "likes"]}	[]	1	2022-04-13 12:13:09.295+00	2022-04-13 12:13:09.311+00
1495	plugins::content-manager.explorer.create	application::about-us.about-us	{"fields": ["talents.describe", "talents.title", "features.describe", "features.title", "features.cover", "banner.bannerItem3.url", "banner.bannerItem3.cover", "honor", "history.year", "history.content"]}	[]	2	2022-04-21 12:12:46.62+00	2022-04-21 13:33:29.62+00
822	plugins::content-manager.explorer.publish	application::news-center.news-center	{}	[]	2	2022-04-16 14:45:22.795+00	2022-04-16 14:45:22.807+00
1236	plugins::content-manager.explorer.read	application::studio-works.studio-works	{"fields": ["title", "author", "describe", "cover", "content", "likes", "videoUrl", "studio_category"]}	[]	1	2022-04-18 18:26:15.032+00	2022-04-18 18:26:15.047+00
1331	plugins::content-manager.explorer.delete	application::graduation-works.graduation-works	{}	[]	2	2022-04-20 13:48:55.768+00	2022-04-20 13:48:55.779+00
1141	plugins::content-manager.explorer.create	application::studio.studio	{"fields": ["fwsjyshcx.cover", "fwsjyshcx.Personnel.cover", "fwsjyshcx.Personnel.name", "fwsjyshcx.Personnel.describe", "fwsjyshcx.ReachDirection.direction_ZH", "fwsjyshcx.ReachDirection.direction_EN", "fwsjyshcx.describe", "szwc.cover", "szwc.Personnel.cover", "szwc.Personnel.name", "szwc.Personnel.describe", "szwc.ReachDirection.direction_ZH", "szwc.ReachDirection.direction_EN", "szwc.describe", "kcxsj.cover", "kcxsj.Personnel.cover", "kcxsj.Personnel.name", "kcxsj.Personnel.describe", "kcxsj.ReachDirection.direction_ZH", "kcxsj.ReachDirection.direction_EN", "kcxsj.describe", "jjsj.cover", "jjsj.Personnel.cover", "jjsj.Personnel.name", "jjsj.Personnel.describe", "jjsj.ReachDirection.direction_ZH", "jjsj.ReachDirection.direction_EN", "jjsj.describe", "qdyjs.cover", "qdyjs.Personnel.cover", "qdyjs.Personnel.name", "qdyjs.Personnel.describe", "qdyjs.ReachDirection.direction_ZH", "qdyjs.ReachDirection.direction_EN", "qdyjs.describe"]}	[]	1	2022-04-18 16:30:54.591+00	2022-04-18 16:30:54.611+00
1505	plugins::content-manager.explorer.read	application::studio-works.studio-works	{"fields": ["author", "content", "cover", "describe", "likes", "studio_category", "title", "videoUrl"]}	["admin::is-creator"]	3	2022-04-21 12:47:48.343+00	2022-04-21 12:47:48.361+00
1340	plugins::content-manager.explorer.update	application::news-center.news-center	{"fields": ["author", "content", "cover", "discribe", "likes", "news_category", "title", "videourl"]}	[]	2	2022-04-20 13:48:55.803+00	2022-04-20 13:48:55.814+00
1352	plugins::content-manager.explorer.publish	application::graduation-img2022.graduation-img2022	{}	[]	2	2022-04-20 13:49:04.274+00	2022-04-20 13:49:04.29+00
25	plugins::upload.assets.download	\N	{}	[]	2	2022-04-11 18:09:52.689+00	2022-04-11 18:09:52.7+00
1506	plugins::content-manager.explorer.update	application::studio-works.studio-works	{"fields": ["author", "content", "cover", "describe", "likes", "studio_category", "title", "videoUrl"]}	["admin::is-creator"]	3	2022-04-21 12:47:48.348+00	2022-04-21 12:47:48.366+00
707	plugins::content-manager.explorer.read	application::course.course	{"fields": ["gysjsh.intro", "gysjsh.feature", "gysjsh.cover", "gysjsh.titleImage", "jcsj.intro", "jcsj.feature", "jcsj.cover", "jcsj.titleImage", "sjtx.intro", "sjtx.feature", "sjtx.cover", "sjtx.titleImage", "yxkzyjh.intro", "yxkzyjh.feature", "yxkzyjh.cover", "yxkzyjh.titleImage", "rjgcx.intro", "rjgcx.feature", "rjgcx.cover", "rjgcx.titleImage"]}	[]	1	2022-04-12 14:09:49.915+00	2022-04-12 14:09:49.931+00
47	plugins::upload.read	\N	{}	["admin::is-creator"]	3	2022-04-11 18:09:52.824+00	2022-04-11 18:09:52.838+00
1307	plugins::content-manager.explorer.read	application::graduation-img2022.graduation-img2022	{"fields": ["img1", "img2", "img3"]}	[]	1	2022-04-19 17:43:11.145+00	2022-04-19 17:43:11.163+00
718	plugins::content-manager.explorer.update	application::course.course	{"fields": ["gysjsh.cover", "gysjsh.feature", "gysjsh.intro", "gysjsh.titleImage", "jcsj.cover", "jcsj.feature", "jcsj.intro", "jcsj.titleImage", "rjgcx.cover", "rjgcx.feature", "rjgcx.intro", "rjgcx.titleImage", "sjtx.cover", "sjtx.feature", "sjtx.intro", "sjtx.titleImage", "yxkzyjh.cover", "yxkzyjh.feature", "yxkzyjh.intro", "yxkzyjh.titleImage"]}	[]	2	2022-04-12 14:10:34.259+00	2022-04-12 14:10:34.266+00
87	plugins::i18n.locale.read	\N	{}	[]	1	2022-04-11 18:09:53.072+00	2022-04-11 18:09:53.089+00
98	plugins::users-permissions.email-templates.read	\N	{}	[]	1	2022-04-11 18:09:53.119+00	2022-04-11 18:09:53.135+00
109	admin::users.create	\N	{}	[]	1	2022-04-11 18:09:53.169+00	2022-04-11 18:09:53.19+00
1584	plugins::content-manager.explorer.publish	application::about-us.about-us	{}	[]	1	2022-04-21 15:04:44.031+00	2022-04-21 15:04:44.048+00
1566	plugins::content-manager.explorer.create	application::news-banner.news-banner	{"fields": ["jiangzuo.bannerItem3.cover", "jiangzuo.bannerItem3.url", "jiangzuo.bannerItems1.cover", "jiangzuo.bannerItems1.url", "jiangzuo.bannerItmes2.cover", "jiangzuo.bannerItmes2.url", "news.bannerItem3.cover", "news.bannerItem3.url", "news.bannerItems1.cover", "news.bannerItems1.url", "news.bannerItmes2.cover", "news.bannerItmes2.url", "tongzhi.bannerItem3.cover", "tongzhi.bannerItem3.url", "tongzhi.bannerItems1.cover", "tongzhi.bannerItems1.url", "tongzhi.bannerItmes2.cover", "tongzhi.bannerItmes2.url", "zhanxun.bannerItem3.cover", "zhanxun.bannerItem3.url", "zhanxun.bannerItems1.cover", "zhanxun.bannerItems1.url", "zhanxun.bannerItmes2.cover", "zhanxun.bannerItmes2.url"]}	[]	2	2022-04-21 14:03:47.961+00	2022-04-21 14:03:47.988+00
1237	plugins::content-manager.explorer.update	application::studio-category.studio-category	{"fields": ["name", "studio_id", "studio_works"]}	[]	1	2022-04-18 18:26:15.032+00	2022-04-18 18:26:15.046+00
1332	plugins::content-manager.explorer.publish	application::graduation-works.graduation-works	{}	[]	2	2022-04-20 13:48:55.768+00	2022-04-20 13:48:55.779+00
1342	plugins::content-manager.explorer.read	application::studio-works.studio-works	{"fields": ["author", "content", "cover", "describe", "likes", "studio_category", "title", "videoUrl"]}	[]	2	2022-04-20 13:48:55.803+00	2022-04-20 13:48:55.815+00
855	plugins::content-manager.explorer.read	application::news-category.news-category	{"fields": ["name", "NewsId", "news_centers"]}	[]	1	2022-04-16 14:53:37.982+00	2022-04-16 14:53:38.001+00
1142	plugins::content-manager.explorer.update	application::studio.studio	{"fields": ["fwsjyshcx.cover", "fwsjyshcx.Personnel.cover", "fwsjyshcx.Personnel.name", "fwsjyshcx.Personnel.describe", "fwsjyshcx.ReachDirection.direction_ZH", "fwsjyshcx.ReachDirection.direction_EN", "fwsjyshcx.describe", "szwc.cover", "szwc.Personnel.cover", "szwc.Personnel.name", "szwc.Personnel.describe", "szwc.ReachDirection.direction_ZH", "szwc.ReachDirection.direction_EN", "szwc.describe", "kcxsj.cover", "kcxsj.Personnel.cover", "kcxsj.Personnel.name", "kcxsj.Personnel.describe", "kcxsj.ReachDirection.direction_ZH", "kcxsj.ReachDirection.direction_EN", "kcxsj.describe", "jjsj.cover", "jjsj.Personnel.cover", "jjsj.Personnel.name", "jjsj.Personnel.describe", "jjsj.ReachDirection.direction_ZH", "jjsj.ReachDirection.direction_EN", "jjsj.describe", "qdyjs.cover", "qdyjs.Personnel.cover", "qdyjs.Personnel.name", "qdyjs.Personnel.describe", "qdyjs.ReachDirection.direction_ZH", "qdyjs.ReachDirection.direction_EN", "qdyjs.describe"]}	[]	1	2022-04-18 16:30:54.594+00	2022-04-18 16:30:54.61+00
1591	plugins::content-manager.explorer.publish	application::studio-category.studio-category	{}	[]	1	2022-04-21 15:04:44.087+00	2022-04-21 15:04:44.101+00
1575	plugins::content-manager.explorer.delete	application::news-banner.news-banner	{}	[]	1	2022-04-21 15:04:43.979+00	2022-04-21 15:04:43.998+00
1351	plugins::content-manager.explorer.delete	application::graduation-img2022.graduation-img2022	{}	[]	2	2022-04-20 13:49:04.274+00	2022-04-20 13:49:04.286+00
1496	plugins::content-manager.explorer.read	application::about-us.about-us	{"fields": ["talents.describe", "talents.title", "features.describe", "features.title", "features.cover", "banner.bannerItem3.url", "banner.bannerItem3.cover", "honor", "history.year", "history.content"]}	[]	2	2022-04-21 12:12:46.621+00	2022-04-21 13:33:29.616+00
26	plugins::upload.assets.copy-link	\N	{}	[]	2	2022-04-11 18:09:52.689+00	2022-04-11 18:09:52.7+00
1308	plugins::content-manager.explorer.create	application::graduation-img2022.graduation-img2022	{"fields": ["img1", "img2", "img3"]}	[]	1	2022-04-19 17:43:11.146+00	2022-04-19 17:43:11.163+00
50	plugins::upload.assets.download	\N	{}	[]	3	2022-04-11 18:09:52.828+00	2022-04-11 18:09:52.84+00
1028	plugins::content-manager.explorer.create	application::news-center.news-center	{"fields": ["title", "author", "cover", "content", "likes", "videourl", "news_category", "discribe"]}	[]	1	2022-04-17 17:25:40.239+00	2022-04-17 17:25:40.269+00
83	plugins::upload.assets.copy-link	\N	{}	[]	1	2022-04-11 18:09:53.064+00	2022-04-11 18:09:53.081+00
93	plugins::users-permissions.roles.read	\N	{}	[]	1	2022-04-11 18:09:53.111+00	2022-04-11 18:09:53.127+00
103	admin::marketplace.plugins.install	\N	{}	[]	1	2022-04-11 18:09:53.159+00	2022-04-11 18:09:53.179+00
115	admin::roles.read	\N	{}	[]	1	2022-04-11 18:09:53.213+00	2022-04-11 18:09:53.226+00
583	plugins::content-manager.explorer.create	application::course-category.course-category	{"fields": ["name", "slug", "course_works", "courserid"]}	[]	1	2022-04-11 20:03:02.107+00	2022-04-11 20:03:02.125+00
702	plugins::content-manager.explorer.publish	application::course-works.course-works	{}	[]	2	2022-04-12 12:39:19.946+00	2022-04-12 12:39:19.962+00
751	plugins::content-manager.explorer.update	application::course-works.course-works	{"fields": ["title", "course_category", "discribe", "content", "videourl", "cover", "author", "likes"]}	[]	1	2022-04-13 12:13:09.296+00	2022-04-13 12:13:09.313+00
1585	plugins::content-manager.explorer.publish	application::article.article	{}	[]	1	2022-04-21 15:04:44.031+00	2022-04-21 15:04:44.056+00
1567	plugins::content-manager.explorer.update	application::news-banner.news-banner	{"fields": ["jiangzuo.bannerItem3.cover", "jiangzuo.bannerItem3.url", "jiangzuo.bannerItems1.cover", "jiangzuo.bannerItems1.url", "jiangzuo.bannerItmes2.cover", "jiangzuo.bannerItmes2.url", "news.bannerItem3.cover", "news.bannerItem3.url", "news.bannerItems1.cover", "news.bannerItems1.url", "news.bannerItmes2.cover", "news.bannerItmes2.url", "tongzhi.bannerItem3.cover", "tongzhi.bannerItem3.url", "tongzhi.bannerItems1.cover", "tongzhi.bannerItems1.url", "tongzhi.bannerItmes2.cover", "tongzhi.bannerItmes2.url", "zhanxun.bannerItem3.cover", "zhanxun.bannerItem3.url", "zhanxun.bannerItems1.cover", "zhanxun.bannerItems1.url", "zhanxun.bannerItmes2.cover", "zhanxun.bannerItmes2.url"]}	[]	2	2022-04-21 14:03:47.962+00	2022-04-21 14:03:47.989+00
1333	plugins::content-manager.explorer.update	application::course-works.course-works	{"fields": ["author", "content", "course_category", "cover", "discribe", "likes", "title", "videourl"]}	[]	2	2022-04-20 13:48:55.768+00	2022-04-20 13:48:55.783+00
856	plugins::content-manager.explorer.update	application::news-category.news-category	{"fields": ["name", "NewsId", "news_centers"]}	[]	1	2022-04-16 14:53:37.981+00	2022-04-16 14:53:38.001+00
1346	plugins::content-manager.explorer.read	application::studio.studio	{"fields": ["fwsjyshcx.Personnel.cover", "fwsjyshcx.Personnel.describe", "fwsjyshcx.Personnel.name", "fwsjyshcx.ReachDirection.direction_EN", "fwsjyshcx.ReachDirection.direction_ZH", "fwsjyshcx.cover", "fwsjyshcx.describe", "jjsj.Personnel.cover", "jjsj.Personnel.describe", "jjsj.Personnel.name", "jjsj.ReachDirection.direction_EN", "jjsj.ReachDirection.direction_ZH", "jjsj.cover", "jjsj.describe", "kcxsj.Personnel.cover", "kcxsj.Personnel.describe", "kcxsj.Personnel.name", "kcxsj.ReachDirection.direction_EN", "kcxsj.ReachDirection.direction_ZH", "kcxsj.cover", "kcxsj.describe", "qdyjs.Personnel.cover", "qdyjs.Personnel.describe", "qdyjs.Personnel.name", "qdyjs.ReachDirection.direction_EN", "qdyjs.ReachDirection.direction_ZH", "qdyjs.cover", "qdyjs.describe", "szwc.Personnel.cover", "szwc.Personnel.describe", "szwc.Personnel.name", "szwc.ReachDirection.direction_EN", "szwc.ReachDirection.direction_ZH", "szwc.cover", "szwc.describe"]}	[]	2	2022-04-20 13:49:04.271+00	2022-04-20 13:49:04.283+00
1511	plugins::content-manager.explorer.update	application::about-us.about-us	{"fields": ["talents.describe", "talents.title", "features.describe", "features.title", "features.cover", "banner.bannerItems1.url", "banner.bannerItems1.cover", "banner.bannerItmes2.url", "banner.bannerItmes2.cover", "banner.bannerItem3.url", "banner.bannerItem3.cover", "honor", "history.year", "history.content"]}	[]	1	2022-04-21 13:33:29.39+00	2022-04-21 13:33:29.406+00
1576	plugins::content-manager.explorer.delete	application::course-works.course-works	{}	[]	1	2022-04-21 15:04:43.979+00	2022-04-21 15:04:44.001+00
1497	plugins::content-manager.explorer.update	application::course-works.course-works	{"fields": ["author", "content", "course_category", "cover", "discribe", "likes", "title", "videourl"]}	["admin::is-creator"]	3	2022-04-21 12:47:48.153+00	2022-04-21 12:47:48.343+00
1538	plugins::content-manager.explorer.read	application::news-banner.news-banner	{"fields": ["news.bannerItems1.url", "news.bannerItems1.cover", "news.bannerItmes2.url", "news.bannerItmes2.cover", "news.bannerItem3.url", "news.bannerItem3.cover", "jiangzuo.bannerItems1.url", "jiangzuo.bannerItems1.cover", "jiangzuo.bannerItmes2.url", "jiangzuo.bannerItmes2.cover", "jiangzuo.bannerItem3.url", "jiangzuo.bannerItem3.cover", "zhanxun.bannerItems1.url", "zhanxun.bannerItems1.cover", "zhanxun.bannerItmes2.url", "zhanxun.bannerItmes2.cover", "zhanxun.bannerItem3.url", "zhanxun.bannerItem3.cover", "tongzhi.bannerItems1.url", "tongzhi.bannerItems1.cover", "tongzhi.bannerItmes2.url", "tongzhi.bannerItmes2.cover", "tongzhi.bannerItem3.url", "tongzhi.bannerItem3.cover"]}	[]	1	2022-04-21 14:00:00.237+00	2022-04-21 14:00:00.257+00
1565	plugins::content-manager.explorer.read	application::news-banner.news-banner	{"fields": ["jiangzuo.bannerItem3.cover", "jiangzuo.bannerItem3.url", "jiangzuo.bannerItems1.cover", "jiangzuo.bannerItems1.url", "jiangzuo.bannerItmes2.cover", "jiangzuo.bannerItmes2.url", "news.bannerItem3.cover", "news.bannerItem3.url", "news.bannerItems1.cover", "news.bannerItems1.url", "news.bannerItmes2.cover", "news.bannerItmes2.url", "tongzhi.bannerItem3.cover", "tongzhi.bannerItem3.url", "tongzhi.bannerItems1.cover", "tongzhi.bannerItems1.url", "tongzhi.bannerItmes2.cover", "tongzhi.bannerItmes2.url", "zhanxun.bannerItem3.cover", "zhanxun.bannerItem3.url", "zhanxun.bannerItems1.cover", "zhanxun.bannerItems1.url", "zhanxun.bannerItmes2.cover", "zhanxun.bannerItmes2.url"]}	[]	2	2022-04-21 14:03:47.96+00	2022-04-21 14:03:47.987+00
51	plugins::upload.assets.copy-link	\N	{}	[]	3	2022-04-11 18:09:52.831+00	2022-04-11 18:09:52.842+00
56	plugins::content-manager.explorer.create	application::category.category	{"fields": ["name", "slug", "articles"]}	[]	1	2022-04-11 18:09:52.909+00	2022-04-11 18:09:52.931+00
79	plugins::email.settings.read	\N	{}	[]	1	2022-04-11 18:09:53.019+00	2022-04-11 18:09:53.037+00
88	plugins::i18n.locale.delete	\N	{}	[]	1	2022-04-11 18:09:53.073+00	2022-04-11 18:09:53.089+00
99	plugins::users-permissions.email-templates.update	\N	{}	[]	1	2022-04-11 18:09:53.119+00	2022-04-11 18:09:53.136+00
108	admin::webhooks.delete	\N	{}	[]	1	2022-04-11 18:09:53.168+00	2022-04-11 18:09:53.19+00
1577	plugins::content-manager.explorer.delete	application::news-category.news-category	{}	[]	1	2022-04-21 15:04:43.979+00	2022-04-21 15:04:44.001+00
1588	plugins::content-manager.explorer.publish	application::graduation-works.graduation-works	{}	[]	1	2022-04-21 15:04:44.035+00	2022-04-21 15:04:44.053+00
1029	plugins::content-manager.explorer.update	application::news-center.news-center	{"fields": ["title", "author", "cover", "content", "likes", "videourl", "news_category", "discribe"]}	[]	1	2022-04-17 17:25:40.24+00	2022-04-17 17:25:40.269+00
1498	plugins::content-manager.explorer.create	application::course-works.course-works	{"fields": ["author", "content", "course_category", "cover", "discribe", "likes", "title", "videourl"]}	["admin::is-creator"]	3	2022-04-21 12:47:48.153+00	2022-04-21 12:47:48.333+00
1594	plugins::content-manager.explorer.publish	application::studio.studio	{}	[]	1	2022-04-21 15:04:44.09+00	2022-04-21 15:04:44.103+00
1334	plugins::content-manager.explorer.read	application::news-center.news-center	{"fields": ["author", "content", "cover", "discribe", "likes", "news_category", "title", "videourl"]}	[]	2	2022-04-20 13:48:55.769+00	2022-04-20 13:48:55.783+00
1507	plugins::content-manager.explorer.delete	application::studio-works.studio-works	{}	["admin::is-creator"]	3	2022-04-21 12:47:48.364+00	2022-04-21 12:47:48.377+00
1344	plugins::content-manager.explorer.update	application::studio-works.studio-works	{"fields": ["author", "content", "cover", "describe", "likes", "studio_category", "title", "videoUrl"]}	[]	2	2022-04-20 13:48:55.808+00	2022-04-20 13:48:55.819+00
1355	plugins::content-manager.explorer.create	application::graduation-img2022.graduation-img2022	{"fields": ["img1", "img2", "img3"]}	[]	2	2022-04-20 13:49:04.274+00	2022-04-20 13:49:04.29+00
1407	plugins::content-manager.explorer.delete	application::about-us.about-us	{}	[]	2	2022-04-20 15:06:08.591+00	2022-04-20 15:06:08.6+00
1568	plugins::content-manager.explorer.publish	application::news-banner.news-banner	{}	[]	2	2022-04-21 14:03:47.987+00	2022-04-21 14:03:47.996+00
1335	plugins::content-manager.explorer.update	application::graduation-works.graduation-works	{"fields": ["author", "content", "cover", "describe", "likes", "title", "videoUrl"]}	[]	2	2022-04-20 13:48:55.769+00	2022-04-20 13:48:55.783+00
84	plugins::i18n.locale.create	\N	{}	[]	1	2022-04-11 18:09:53.07+00	2022-04-11 18:09:53.084+00
95	plugins::users-permissions.roles.update	\N	{}	[]	1	2022-04-11 18:09:53.114+00	2022-04-11 18:09:53.13+00
104	admin::marketplace.plugins.uninstall	\N	{}	[]	1	2022-04-11 18:09:53.162+00	2022-04-11 18:09:53.179+00
113	admin::roles.create	\N	{}	[]	1	2022-04-11 18:09:53.212+00	2022-04-11 18:09:53.226+00
1287	plugins::content-manager.explorer.update	application::graduation-works.graduation-works	{"fields": ["title", "author", "describe", "content", "cover", "likes", "videoUrl"]}	[]	1	2022-04-19 07:17:30.481+00	2022-04-19 07:17:30.499+00
1240	plugins::content-manager.explorer.update	application::studio-works.studio-works	{"fields": ["title", "author", "describe", "cover", "content", "likes", "videoUrl", "studio_category"]}	[]	1	2022-04-18 18:26:15.032+00	2022-04-18 18:26:15.05+00
1343	plugins::content-manager.explorer.publish	application::studio-works.studio-works	{}	[]	2	2022-04-20 13:48:55.808+00	2022-04-20 13:48:55.819+00
1349	plugins::content-manager.explorer.update	application::graduation-img2022.graduation-img2022	{"fields": ["img1", "img2", "img3"]}	[]	2	2022-04-20 13:49:04.274+00	2022-04-20 13:49:04.285+00
1499	plugins::content-manager.explorer.read	application::course-works.course-works	{"fields": ["author", "content", "course_category", "cover", "discribe", "likes", "title", "videourl"]}	["admin::is-creator"]	3	2022-04-21 12:47:48.153+00	2022-04-21 12:47:48.343+00
1578	plugins::content-manager.explorer.delete	application::graduation-works.graduation-works	{}	[]	1	2022-04-21 15:04:43.979+00	2022-04-21 15:04:44.001+00
1586	plugins::content-manager.explorer.publish	application::course-works.course-works	{}	[]	1	2022-04-21 15:04:44.032+00	2022-04-21 15:04:44.056+00
1031	plugins::content-manager.explorer.read	application::news-center.news-center	{"fields": ["title", "author", "cover", "content", "likes", "videourl", "news_category", "discribe"]}	[]	1	2022-04-17 17:25:40.24+00	2022-04-17 17:25:40.275+00
585	plugins::content-manager.explorer.update	application::course-category.course-category	{"fields": ["name", "slug", "course_works", "courserid"]}	[]	1	2022-04-11 20:03:02.108+00	2022-04-11 20:03:02.128+00
81	plugins::upload.assets.create	\N	{}	[]	1	2022-04-11 18:09:53.019+00	2022-04-11 18:09:53.041+00
89	plugins::content-manager.single-types.configure-view	\N	{}	[]	1	2022-04-11 18:09:53.075+00	2022-04-11 18:09:53.086+00
96	plugins::users-permissions.providers.read	\N	{}	[]	1	2022-04-11 18:09:53.116+00	2022-04-11 18:09:53.132+00
106	admin::webhooks.read	\N	{}	[]	1	2022-04-11 18:09:53.165+00	2022-04-11 18:09:53.183+00
116	admin::roles.delete	\N	{}	[]	1	2022-04-11 18:09:53.218+00	2022-04-11 18:09:53.228+00
696	plugins::content-manager.explorer.delete	application::course.course	{}	[]	2	2022-04-12 12:39:19.943+00	2022-04-12 12:39:19.958+00
1569	plugins::content-manager.explorer.delete	application::article.article	{}	[]	1	2022-04-21 15:04:43.975+00	2022-04-21 15:04:43.995+00
1336	plugins::content-manager.explorer.read	application::graduation-works.graduation-works	{"fields": ["author", "content", "cover", "describe", "likes", "title", "videoUrl"]}	[]	2	2022-04-20 13:48:55.768+00	2022-04-20 13:48:55.783+00
1570	plugins::content-manager.explorer.delete	application::category.category	{}	[]	1	2022-04-21 15:04:43.975+00	2022-04-21 15:04:43.995+00
1500	plugins::content-manager.explorer.create	application::graduation-works.graduation-works	{"fields": ["author", "content", "cover", "describe", "likes", "title", "videoUrl"]}	["admin::is-creator"]	3	2022-04-21 12:47:48.34+00	2022-04-21 12:47:48.355+00
1241	plugins::content-manager.explorer.read	application::studio-category.studio-category	{"fields": ["name", "studio_id", "studio_works"]}	[]	1	2022-04-18 18:26:15.033+00	2022-04-18 18:26:15.05+00
1345	plugins::content-manager.explorer.delete	application::studio-works.studio-works	{}	[]	2	2022-04-20 13:48:55.808+00	2022-04-20 13:48:55.819+00
1350	plugins::content-manager.explorer.read	application::graduation-img2022.graduation-img2022	{"fields": ["img1", "img2", "img3"]}	[]	2	2022-04-20 13:49:04.274+00	2022-04-20 13:49:04.286+00
1581	plugins::content-manager.explorer.delete	plugins::users-permissions.user	{}	[]	1	2022-04-21 15:04:44.029+00	2022-04-21 15:04:44.048+00
1583	plugins::content-manager.explorer.delete	application::studio.studio	{}	[]	1	2022-04-21 15:04:44.028+00	2022-04-21 15:04:44.053+00
1590	plugins::content-manager.explorer.publish	application::news-category.news-category	{}	[]	1	2022-04-21 15:04:44.087+00	2022-04-21 15:04:44.098+00
58	plugins::content-manager.explorer.read	application::category.category	{"fields": ["name", "slug", "articles"]}	[]	1	2022-04-11 18:09:52.909+00	2022-04-11 18:09:52.935+00
78	plugins::upload.read	\N	{}	[]	1	2022-04-11 18:09:53.019+00	2022-04-11 18:09:53.041+00
90	plugins::content-manager.components.configure-layout	\N	{}	[]	1	2022-04-11 18:09:53.075+00	2022-04-11 18:09:53.092+00
100	plugins::users-permissions.advanced-settings.read	\N	{}	[]	1	2022-04-11 18:09:53.122+00	2022-04-11 18:09:53.139+00
110	admin::users.read	\N	{}	[]	1	2022-04-11 18:09:53.171+00	2022-04-11 18:09:53.19+00
1571	plugins::content-manager.explorer.delete	application::course.course	{}	[]	1	2022-04-21 15:04:43.975+00	2022-04-21 15:04:43.995+00
1337	plugins::content-manager.explorer.create	application::news-center.news-center	{"fields": ["author", "content", "cover", "discribe", "likes", "news_category", "title", "videourl"]}	[]	2	2022-04-20 13:48:55.768+00	2022-04-20 13:48:55.783+00
782	plugins::content-manager.explorer.read	application::article.article	{"fields": ["title", "description", "content", "slug", "category", "image", "likes", "asdfsadf"]}	[]	1	2022-04-16 14:42:51.009+00	2022-04-16 14:42:51.031+00
1354	plugins::content-manager.explorer.delete	application::studio.studio	{}	[]	2	2022-04-20 13:49:04.274+00	2022-04-20 13:49:04.29+00
1580	plugins::content-manager.explorer.delete	application::studio-category.studio-category	{}	[]	1	2022-04-21 15:04:44.028+00	2022-04-21 15:04:44.049+00
1289	plugins::content-manager.explorer.create	application::graduation-works.graduation-works	{"fields": ["title", "author", "describe", "content", "cover", "likes", "videoUrl"]}	[]	1	2022-04-19 07:17:30.482+00	2022-04-19 07:17:30.499+00
1592	plugins::content-manager.explorer.publish	application::news-center.news-center	{}	[]	1	2022-04-21 15:04:44.087+00	2022-04-21 15:04:44.101+00
1515	plugins::content-manager.explorer.create	application::about-us.about-us	{"fields": ["talents.describe", "talents.title", "features.describe", "features.title", "features.cover", "banner.bannerItems1.url", "banner.bannerItems1.cover", "banner.bannerItmes2.url", "banner.bannerItmes2.cover", "banner.bannerItem3.url", "banner.bannerItem3.cover", "honor", "history.year", "history.content"]}	[]	1	2022-04-21 13:33:29.394+00	2022-04-21 13:33:29.41+00
1501	plugins::content-manager.explorer.read	application::graduation-works.graduation-works	{"fields": ["author", "content", "cover", "describe", "likes", "title", "videoUrl"]}	["admin::is-creator"]	3	2022-04-21 12:47:48.34+00	2022-04-21 12:47:48.354+00
54	plugins::content-manager.explorer.create	plugins::users-permissions.user	{"fields": ["username", "email", "provider", "password", "resetPasswordToken", "confirmationToken", "confirmed", "blocked", "role"]}	[]	1	2022-04-11 18:09:52.908+00	2022-04-11 18:09:52.927+00
63	plugins::content-manager.explorer.read	plugins::users-permissions.user	{"fields": ["username", "email", "provider", "password", "resetPasswordToken", "confirmationToken", "confirmed", "blocked", "role"]}	[]	1	2022-04-11 18:09:52.963+00	2022-04-11 18:09:52.983+00
1572	plugins::content-manager.explorer.delete	application::course-category.course-category	{}	[]	1	2022-04-21 15:04:43.978+00	2022-04-21 15:04:43.994+00
85	plugins::upload.settings.read	\N	{}	[]	1	2022-04-11 18:09:53.07+00	2022-04-11 18:09:53.084+00
94	plugins::users-permissions.roles.delete	\N	{}	[]	1	2022-04-11 18:09:53.114+00	2022-04-11 18:09:53.13+00
105	admin::webhooks.create	\N	{}	[]	1	2022-04-11 18:09:53.162+00	2022-04-11 18:09:53.179+00
114	admin::roles.update	\N	{}	[]	1	2022-04-11 18:09:53.213+00	2022-04-11 18:09:53.224+00
1579	plugins::content-manager.explorer.delete	application::news-center.news-center	{}	[]	1	2022-04-21 15:04:44.025+00	2022-04-21 15:04:44.042+00
783	plugins::content-manager.explorer.update	application::article.article	{"fields": ["title", "description", "content", "slug", "category", "image", "likes", "asdfsadf"]}	[]	1	2022-04-16 14:42:51.01+00	2022-04-16 14:42:51.031+00
861	plugins::content-manager.explorer.create	application::news-category.news-category	{"fields": ["name", "NewsId", "news_centers"]}	[]	1	2022-04-16 14:53:37.983+00	2022-04-16 14:53:38.008+00
1338	plugins::content-manager.explorer.create	application::course-works.course-works	{"fields": ["author", "content", "course_category", "cover", "discribe", "likes", "title", "videourl"]}	[]	2	2022-04-20 13:48:55.769+00	2022-04-20 13:48:55.783+00
1353	plugins::content-manager.explorer.update	application::studio.studio	{"fields": ["fwsjyshcx.Personnel.cover", "fwsjyshcx.Personnel.describe", "fwsjyshcx.Personnel.name", "fwsjyshcx.ReachDirection.direction_EN", "fwsjyshcx.ReachDirection.direction_ZH", "fwsjyshcx.cover", "fwsjyshcx.describe", "jjsj.Personnel.cover", "jjsj.Personnel.describe", "jjsj.Personnel.name", "jjsj.ReachDirection.direction_EN", "jjsj.ReachDirection.direction_ZH", "jjsj.cover", "jjsj.describe", "kcxsj.Personnel.cover", "kcxsj.Personnel.describe", "kcxsj.Personnel.name", "kcxsj.ReachDirection.direction_EN", "kcxsj.ReachDirection.direction_ZH", "kcxsj.cover", "kcxsj.describe", "qdyjs.Personnel.cover", "qdyjs.Personnel.describe", "qdyjs.Personnel.name", "qdyjs.ReachDirection.direction_EN", "qdyjs.ReachDirection.direction_ZH", "qdyjs.cover", "qdyjs.describe", "szwc.Personnel.cover", "szwc.Personnel.describe", "szwc.Personnel.name", "szwc.ReachDirection.direction_EN", "szwc.ReachDirection.direction_ZH", "szwc.cover", "szwc.describe"]}	[]	2	2022-04-20 13:49:04.274+00	2022-04-20 13:49:04.29+00
1589	plugins::content-manager.explorer.publish	application::news-banner.news-banner	{}	[]	1	2022-04-21 15:04:44.081+00	2022-04-21 15:04:44.096+00
1502	plugins::content-manager.explorer.update	application::graduation-works.graduation-works	{"fields": ["author", "content", "cover", "describe", "likes", "title", "videoUrl"]}	["admin::is-creator"]	3	2022-04-21 12:47:48.34+00	2022-04-21 12:47:48.355+00
1290	plugins::content-manager.explorer.read	application::graduation-works.graduation-works	{"fields": ["title", "author", "describe", "content", "cover", "likes", "videoUrl"]}	[]	1	2022-04-19 07:17:30.482+00	2022-04-19 07:17:30.5+00
82	plugins::upload.assets.download	\N	{}	[]	1	2022-04-11 18:09:53.059+00	2022-04-11 18:09:53.078+00
92	plugins::users-permissions.roles.create	\N	{}	[]	1	2022-04-11 18:09:53.103+00	2022-04-11 18:09:53.118+00
102	admin::marketplace.read	\N	{}	[]	1	2022-04-11 18:09:53.148+00	2022-04-11 18:09:53.168+00
112	admin::users.delete	\N	{}	[]	1	2022-04-11 18:09:53.204+00	2022-04-11 18:09:53.221+00
647	plugins::content-manager.explorer.delete	application::course-works.course-works	{}	["admin::is-creator"]	3	2022-04-11 20:16:40.284+00	2022-04-11 20:16:40.291+00
699	plugins::content-manager.explorer.delete	application::course-works.course-works	{}	[]	2	2022-04-12 12:39:19.946+00	2022-04-12 12:39:19.96+00
784	plugins::content-manager.explorer.create	application::article.article	{"fields": ["title", "description", "content", "slug", "category", "image", "likes", "asdfsadf"]}	[]	1	2022-04-16 14:42:51.01+00	2022-04-16 14:42:51.031+00
1573	plugins::content-manager.explorer.delete	application::about-us.about-us	{}	[]	1	2022-04-21 15:04:43.978+00	2022-04-21 15:04:43.994+00
1582	plugins::content-manager.explorer.delete	application::studio-works.studio-works	{}	[]	1	2022-04-21 15:04:44.028+00	2022-04-21 15:04:44.049+00
1244	plugins::content-manager.explorer.create	application::studio-category.studio-category	{"fields": ["name", "studio_id", "studio_works"]}	[]	1	2022-04-18 18:26:15.034+00	2022-04-18 18:26:15.055+00
1339	plugins::content-manager.explorer.create	application::graduation-works.graduation-works	{"fields": ["author", "content", "cover", "describe", "likes", "title", "videoUrl"]}	[]	2	2022-04-20 13:48:55.768+00	2022-04-20 13:48:55.783+00
1593	plugins::content-manager.explorer.publish	application::studio-works.studio-works	{}	[]	1	2022-04-21 15:04:44.087+00	2022-04-21 15:04:44.101+00
1347	plugins::content-manager.explorer.publish	application::studio.studio	{}	[]	2	2022-04-20 13:49:04.271+00	2022-04-20 13:49:04.283+00
1503	plugins::content-manager.explorer.create	application::studio-works.studio-works	{"fields": ["author", "content", "cover", "describe", "likes", "studio_category", "title", "videoUrl"]}	["admin::is-creator"]	3	2022-04-21 12:47:48.341+00	2022-04-21 12:47:48.357+00
\.


--
-- Data for Name: strapi_role; Type: TABLE DATA; Schema: public; Owner: strapi
--

COPY public.strapi_role (id, name, code, description, created_at, updated_at) FROM stdin;
1	Super Admin	strapi-super-admin	Super Admins can access and manage all features and settings.	2022-04-11 18:09:52.526+00	2022-04-11 18:09:52.526+00
3	Author	strapi-author	Authors can manage the content they have created.	2022-04-11 18:09:52.563+00	2022-04-11 18:09:52.563+00
2	Editor	strapi-editor	Editors can manage and publish contents including those of other users.	2022-04-11 18:09:52.548+00	2022-04-11 18:09:52.548+00
\.


--
-- Data for Name: strapi_users_roles; Type: TABLE DATA; Schema: public; Owner: strapi
--

COPY public.strapi_users_roles (id, user_id, role_id) FROM stdin;
1	1	1
3	2	3
4	3	2
5	4	2
\.


--
-- Data for Name: strapi_webhooks; Type: TABLE DATA; Schema: public; Owner: strapi
--

COPY public.strapi_webhooks (id, name, url, headers, events, enabled) FROM stdin;
\.


--
-- Data for Name: studio_categories; Type: TABLE DATA; Schema: public; Owner: strapi
--

COPY public.studio_categories (id, name, studio_id, published_at, created_by, updated_by, created_at, updated_at) FROM stdin;
1	服务设计与社会创新	1	2022-04-18 18:17:14.469+00	1	1	2022-04-18 18:17:11.816+00	2022-04-18 18:17:14.481+00
2	家具设计	2	2022-04-18 18:17:28.228+00	1	1	2022-04-18 18:17:25.094+00	2022-04-18 18:17:28.24+00
3	器道研究所	3	2022-04-18 18:17:40.226+00	1	1	2022-04-18 18:17:34.095+00	2022-04-18 18:17:40.241+00
4	数字文创	4	2022-04-18 18:17:55.795+00	1	1	2022-04-18 18:17:53.331+00	2022-04-18 18:17:55.809+00
5	家具设计	5	2022-04-18 18:18:09.917+00	1	1	2022-04-18 18:18:07.64+00	2022-04-18 18:18:09.931+00
\.


--
-- Data for Name: studio_works; Type: TABLE DATA; Schema: public; Owner: strapi
--

COPY public.studio_works (id, title, author, content, "videoUrl", published_at, created_by, updated_by, created_at, updated_at, likes, describe, studio_category) FROM stdin;
6	The Thinker 无意识休憩行为下的情感化坐具设计	王子睿	I Think , so am I. 以蹲为形，四肢聚合，求思片刻。我们的无意识行为往往映射出更为深层的隐性需求，坐具在实现休憩的基本功能的同时，正逐渐与就坐者之间形成一种互动关系，使用者还需要在精神上与物体有所交流。将任意的身体姿态交给The Thinker，我们尽可以自由地放松、独处与思考。\n\n![ed95e29d2fbadfc4ca64e57c8a36a0c3.jpg](/uploads/ed95e29d2fbadfc4ca64e57c8a36a0c3_25d5f36b1e.jpg)\n\n	\N	2022-04-20 14:37:42.625+00	3	3	2022-04-20 14:37:40.286+00	2022-04-20 14:37:42.642+00	0	\N	5
2	儿童财商教育服务体系及产品设计	赵律夫	设计说明：\n本产品为儿童财商教育服务体系及产品设计，服务于不同年龄层的小学阶段学生，以价值为主线对财商教育智商根据小学不同年龄层学生的不同认知水平将财商知识分为三个部分，分别对应三个阶段的三套桌游产品。帮助儿童循序渐进地通过游戏的方式体会经济生活的基本概念和理财知识，培养生活所需的基本常识。分别对应三个阶段的三套桌游产品。\n\n![b04d8a69e0844839b1dab8dfeb2bcf84.jpg](/uploads/b04d8a69e0844839b1dab8dfeb2bcf84_c45ca7362d.jpg)\n	\N	2022-04-20 14:25:29.406+00	3	3	2022-04-20 14:25:21.763+00	2022-04-20 14:25:29.423+00	0	本产品为儿童财商教育服务体系及产品设计	1
1	dfasdfasdfasdf	sdfasdf	I have the following packages installed as dev deps:\n\n{\n    "babel-eslint": "^10.0.2",\n    "eslint": "^6.0.1",\n    "eslint-config-prettier": "^5.1.0",\n    "eslint-plugin-import": "^2.18.0",\n    "eslint-plugin-prettier": "^3.1.0",\n}\nAnd this is my .eslintrc file:\n\n{\n    "parser": "babel-eslint",\n    "plugins": ["import", "prettier"],\n    "extends": [\n        "eslint:recommended",\n        "plugin:import/errors",\n        "plugin:import/warnings",\n        "prettier"\n    ],\n    "settings": {\n        "import/resolver": {\n            "node": {\n                "extensions": [".js"]\n            }\n        }\n    },\n    "env": {\n        "es6": true,\n        "browser": false,\n        "node": true,\n        "jquery": false,\n        "jest": true\n    },\n    "rules": {\n        "quotes": 0,\n        "no-console": 1,\n        "no-debugger": 1,\n        "no-var": 1,\n        "no-trailing-spaces": 0,\n        "eol-last": 0,\n        "no-underscore-dangle": 0,\n        "no-alert": 0,\n        "no-lone-blocks": 0,\n        "import/extensions": 1,\n        "import/no-named-as-default": 0,\n        "prettier/prettier": [\n            "error",\n            {\n                "singleQuote": true\n            }\n        ]\n    },\n    "globals": {\n        "Atomics": false,\n        "SharedArrayBuffer": false\n    }\n}\nI have Format on Save on. When I run eslint --fix, it works properly. But when I hit save, I get the following error. It doesn't work for any plugin, even though I have all of them installed.\nimage	\N	2022-04-18 18:27:16.546+00	1	1	2022-04-18 18:27:11.893+00	2022-04-19 18:10:15.51+00	5	sdfasdfasdf	1
5	公共空间的坐具系统设计	羊鸿鑫	对于临时的公共空间，生活节奏飞快的人们往往呈现出即来即走的状态，很多时候家具提供用户休憩的时间点很短暂，这便启示我们从使用时长角度重新思考，临时坐具的概念由此产生。本次设计，通过用户可能发生的随机行为指导社交需求，拓展产品的功能边界，运用元件化、趣味化等思路展开的一次可行性尝试。\n\n![eb06df7d6861fa6d823f70c81b874532.jpg](/uploads/eb06df7d6861fa6d823f70c81b874532_48da2e0376.jpg)\n	\N	2022-04-20 14:35:09.524+00	3	3	2022-04-20 14:35:06.238+00	2022-04-20 14:35:09.54+00	0	\N	4
3	面向拖延现象的创意桌面产品设计	蔡承毅	设计说明：\nFLOW是一套面向拖延现象设计的创意桌面产品，着眼于间接性踌躇满志的时间自由分配人群，以Button无线充电底座、Todobox便签收纳盒和Spotlight氛围灯三件产品基础功能之间的联动介入用户拖延行为，依托物联网进行产品联动和自动动态调整，营造更为人性化的工作环境，提高用户工作专注度以及养成合理规划习惯。\n\n![592e2e421e3346a6d41664a165b27cff.jpg](/uploads/592e2e421e3346a6d41664a165b27cff_356dfeb070.jpg)\n	\N	2022-04-20 14:28:36.712+00	3	3	2022-04-20 14:28:34.856+00	2022-04-20 14:28:36.728+00	0	FLOW是一套面向拖延现象设计的创意桌面产品	2
4	基于中国传统乐器交互方式的玩具设计	范硕珍	作品聚焦于演奏中国传统乐器时的交互动作，解构了四大类乐器，从中提取出了五个基础动作，分别为“按”、“吹”、“拨”、“拉”、“敲”。将这五个动作分别设计为五个玩具动作模块。选取相应动作模块进行连接，即可演奏出对应乐器的声音。只需要模仿动作便可演奏乐器，降低了传统乐器玩具的学习成本和使用门槛。\n打破中国乐器的传统外形规定，利用DIY积木搭建形式让孩子发挥想象力，去创造出他们心目中的中国乐器，同时培养儿童的创造力和动手能力。在玩耍的过程中，对中国传统乐器进行探索和认知，加深儿童对于中国传统乐器的理解，激发他们对中国传统乐器的兴趣。\n\n![f27eeab98c26e1cf69db1fe961899586.jpg](/uploads/f27eeab98c26e1cf69db1fe961899586_cc2928bf62.jpg)\n	\N	2022-04-20 14:33:23.517+00	3	3	2022-04-20 14:33:21.412+00	2022-04-20 14:33:23.537+00	0	作品聚焦于演奏中国传统乐器时的交互动作	3
\.


--
-- Data for Name: studio_works_categories; Type: TABLE DATA; Schema: public; Owner: strapi
--

COPY public.studio_works_categories (id, name, "worksId", published_at, created_by, updated_by, created_at, updated_at, studio_work) FROM stdin;
1	服务设计与社会创新	1	2022-04-17 14:24:17.474+00	1	1	2022-04-17 14:24:11.138+00	2022-04-17 14:24:17.489+00	\N
2	数字文创	2	2022-04-17 14:24:41.99+00	1	1	2022-04-17 14:24:40.117+00	2022-04-17 14:24:42.012+00	\N
3	可持续设计	3	2022-04-17 14:25:20.994+00	1	1	2022-04-17 14:25:18.57+00	2022-04-17 14:25:21.008+00	\N
4	家具设计	4	2022-04-17 14:25:35.38+00	1	1	2022-04-17 14:25:33.741+00	2022-04-17 14:25:35.394+00	\N
5	器道研究所	5	2022-04-17 14:25:51.213+00	1	1	2022-04-17 14:25:49.768+00	2022-04-17 14:25:51.227+00	\N
\.


--
-- Data for Name: studios; Type: TABLE DATA; Schema: public; Owner: strapi
--

COPY public.studios (id, published_at, created_by, updated_by, created_at, updated_at) FROM stdin;
1	2022-04-18 16:41:20.215+00	1	1	2022-04-18 16:40:22.113+00	2022-04-18 17:59:13.543+00
\.


--
-- Data for Name: studios_components; Type: TABLE DATA; Schema: public; Owner: strapi
--

COPY public.studios_components (id, field, "order", component_type, component_id, studio_id) FROM stdin;
1	fwsjyshcx	1	components_studio_studios	1	1
2	szwc	1	components_studio_studios	2	1
3	kcxsj	1	components_studio_studios	3	1
4	jjsj	1	components_studio_studios	4	1
5	qdyjs	1	components_studio_studios	5	1
\.


--
-- Data for Name: upload_file; Type: TABLE DATA; Schema: public; Owner: strapi
--

COPY public.upload_file (id, name, "alternativeText", caption, width, height, formats, hash, ext, mime, size, url, "previewUrl", provider, provider_metadata, created_by, updated_by, created_at, updated_at) FROM stdin;
1	default-image.png	\N	\N	1208	715	{"large": {"ext": ".png", "url": "/uploads/large_default_image_849e5c0940.png", "hash": "large_default_image_849e5c0940", "mime": "image/png", "name": "large_default-image.png", "path": null, "size": 423.75, "width": 1000, "height": 592}, "small": {"ext": ".png", "url": "/uploads/small_default_image_849e5c0940.png", "hash": "small_default_image_849e5c0940", "mime": "image/png", "name": "small_default-image.png", "path": null, "size": 114.01, "width": 500, "height": 296}, "medium": {"ext": ".png", "url": "/uploads/medium_default_image_849e5c0940.png", "hash": "medium_default_image_849e5c0940", "mime": "image/png", "name": "medium_default-image.png", "path": null, "size": 250.27, "width": 750, "height": 444}, "thumbnail": {"ext": ".png", "url": "/uploads/thumbnail_default_image_849e5c0940.png", "hash": "thumbnail_default_image_849e5c0940", "mime": "image/png", "name": "thumbnail_default-image.png", "path": null, "size": 27.69, "width": 245, "height": 145}}	default_image_849e5c0940	.png	image/png	297.42	/uploads/default_image_849e5c0940.png	\N	local	\N	\N	\N	2022-04-11 18:09:51.299+00	2022-04-11 18:09:51.299+00
2	daviddoe@strapi.io.jpg	\N	\N	2418	2711	{"large": {"ext": ".jpg", "url": "/uploads/large_daviddoe_strapi_io_9211f49d31.jpg", "hash": "large_daviddoe_strapi_io_9211f49d31", "mime": "image/jpeg", "name": "large_daviddoe@strapi.io.jpg", "path": null, "size": 74, "width": 892, "height": 1000}, "small": {"ext": ".jpg", "url": "/uploads/small_daviddoe_strapi_io_9211f49d31.jpg", "hash": "small_daviddoe_strapi_io_9211f49d31", "mime": "image/jpeg", "name": "small_daviddoe@strapi.io.jpg", "path": null, "size": 22.69, "width": 446, "height": 500}, "medium": {"ext": ".jpg", "url": "/uploads/medium_daviddoe_strapi_io_9211f49d31.jpg", "hash": "medium_daviddoe_strapi_io_9211f49d31", "mime": "image/jpeg", "name": "medium_daviddoe@strapi.io.jpg", "path": null, "size": 44.52, "width": 669, "height": 750}, "thumbnail": {"ext": ".jpg", "url": "/uploads/thumbnail_daviddoe_strapi_io_9211f49d31.jpg", "hash": "thumbnail_daviddoe_strapi_io_9211f49d31", "mime": "image/jpeg", "name": "thumbnail_daviddoe@strapi.io.jpg", "path": null, "size": 4.37, "width": 139, "height": 156}}	daviddoe_strapi_io_9211f49d31	.jpg	image/jpeg	587.69	/uploads/daviddoe_strapi_io_9211f49d31.jpg	\N	local	\N	\N	\N	2022-04-11 18:09:51.552+00	2022-04-11 18:09:51.552+00
3	sarahbaker@strapi.io.jpg	\N	\N	3321	2746	{"large": {"ext": ".jpg", "url": "/uploads/large_sarahbaker_strapi_io_a47cacff69.jpg", "hash": "large_sarahbaker_strapi_io_a47cacff69", "mime": "image/jpeg", "name": "large_sarahbaker@strapi.io.jpg", "path": null, "size": 102.14, "width": 1000, "height": 827}, "small": {"ext": ".jpg", "url": "/uploads/small_sarahbaker_strapi_io_a47cacff69.jpg", "hash": "small_sarahbaker_strapi_io_a47cacff69", "mime": "image/jpeg", "name": "small_sarahbaker@strapi.io.jpg", "path": null, "size": 30.78, "width": 500, "height": 413}, "medium": {"ext": ".jpg", "url": "/uploads/medium_sarahbaker_strapi_io_a47cacff69.jpg", "hash": "medium_sarahbaker_strapi_io_a47cacff69", "mime": "image/jpeg", "name": "medium_sarahbaker@strapi.io.jpg", "path": null, "size": 59.92, "width": 750, "height": 620}, "thumbnail": {"ext": ".jpg", "url": "/uploads/thumbnail_sarahbaker_strapi_io_a47cacff69.jpg", "hash": "thumbnail_sarahbaker_strapi_io_a47cacff69", "mime": "image/jpeg", "name": "thumbnail_sarahbaker@strapi.io.jpg", "path": null, "size": 6.87, "width": 189, "height": 156}}	sarahbaker_strapi_io_a47cacff69	.jpg	image/jpeg	698.27	/uploads/sarahbaker_strapi_io_a47cacff69.jpg	\N	local	\N	\N	\N	2022-04-11 18:09:51.601+00	2022-04-11 18:09:51.601+00
4	the-internet-s-own-boy.jpg	\N	\N	1200	707	{"large": {"ext": ".jpg", "url": "/uploads/large_the_internet_s_own_boy_9022e67c84.jpg", "hash": "large_the_internet_s_own_boy_9022e67c84", "mime": "image/jpeg", "name": "large_the-internet-s-own-boy.jpg", "path": null, "size": 70.3, "width": 1000, "height": 589}, "small": {"ext": ".jpg", "url": "/uploads/small_the_internet_s_own_boy_9022e67c84.jpg", "hash": "small_the_internet_s_own_boy_9022e67c84", "mime": "image/jpeg", "name": "small_the-internet-s-own-boy.jpg", "path": null, "size": 24.99, "width": 500, "height": 295}, "medium": {"ext": ".jpg", "url": "/uploads/medium_the_internet_s_own_boy_9022e67c84.jpg", "hash": "medium_the_internet_s_own_boy_9022e67c84", "mime": "image/jpeg", "name": "medium_the-internet-s-own-boy.jpg", "path": null, "size": 46.12, "width": 750, "height": 442}, "thumbnail": {"ext": ".jpg", "url": "/uploads/thumbnail_the_internet_s_own_boy_9022e67c84.jpg", "hash": "thumbnail_the_internet_s_own_boy_9022e67c84", "mime": "image/jpeg", "name": "thumbnail_the-internet-s-own-boy.jpg", "path": null, "size": 8.37, "width": 245, "height": 144}}	the_internet_s_own_boy_9022e67c84	.jpg	image/jpeg	91.55	/uploads/the_internet_s_own_boy_9022e67c84.jpg	\N	local	\N	\N	\N	2022-04-11 18:09:51.965+00	2022-04-11 18:09:51.965+00
6	what-s-inside-a-black-hole.jpg	\N	\N	800	466	{"small": {"ext": ".jpg", "url": "/uploads/small_what_s_inside_a_black_hole_797a7e5606.jpg", "hash": "small_what_s_inside_a_black_hole_797a7e5606", "mime": "image/jpeg", "name": "small_what-s-inside-a-black-hole.jpg", "path": null, "size": 4.08, "width": 500, "height": 291}, "medium": {"ext": ".jpg", "url": "/uploads/medium_what_s_inside_a_black_hole_797a7e5606.jpg", "hash": "medium_what_s_inside_a_black_hole_797a7e5606", "mime": "image/jpeg", "name": "medium_what-s-inside-a-black-hole.jpg", "path": null, "size": 7.13, "width": 750, "height": 437}, "thumbnail": {"ext": ".jpg", "url": "/uploads/thumbnail_what_s_inside_a_black_hole_797a7e5606.jpg", "hash": "thumbnail_what_s_inside_a_black_hole_797a7e5606", "mime": "image/jpeg", "name": "thumbnail_what-s-inside-a-black-hole.jpg", "path": null, "size": 1.74, "width": 245, "height": 143}}	what_s_inside_a_black_hole_797a7e5606	.jpg	image/jpeg	7.50	/uploads/what_s_inside_a_black_hole_797a7e5606.jpg	\N	local	\N	\N	\N	2022-04-11 18:09:51.967+00	2022-04-11 18:09:51.967+00
7	a-bug-is-becoming-a-meme-on-the-internet.jpg	\N	\N	3628	2419	{"large": {"ext": ".jpg", "url": "/uploads/large_a_bug_is_becoming_a_meme_on_the_internet_62aef2d60e.jpg", "hash": "large_a_bug_is_becoming_a_meme_on_the_internet_62aef2d60e", "mime": "image/jpeg", "name": "large_a-bug-is-becoming-a-meme-on-the-internet.jpg", "path": null, "size": 51.29, "width": 1000, "height": 667}, "small": {"ext": ".jpg", "url": "/uploads/small_a_bug_is_becoming_a_meme_on_the_internet_62aef2d60e.jpg", "hash": "small_a_bug_is_becoming_a_meme_on_the_internet_62aef2d60e", "mime": "image/jpeg", "name": "small_a-bug-is-becoming-a-meme-on-the-internet.jpg", "path": null, "size": 19.44, "width": 500, "height": 333}, "medium": {"ext": ".jpg", "url": "/uploads/medium_a_bug_is_becoming_a_meme_on_the_internet_62aef2d60e.jpg", "hash": "medium_a_bug_is_becoming_a_meme_on_the_internet_62aef2d60e", "mime": "image/jpeg", "name": "medium_a-bug-is-becoming-a-meme-on-the-internet.jpg", "path": null, "size": 33.47, "width": 750, "height": 500}, "thumbnail": {"ext": ".jpg", "url": "/uploads/thumbnail_a_bug_is_becoming_a_meme_on_the_internet_62aef2d60e.jpg", "hash": "thumbnail_a_bug_is_becoming_a_meme_on_the_internet_62aef2d60e", "mime": "image/jpeg", "name": "thumbnail_a-bug-is-becoming-a-meme-on-the-internet.jpg", "path": null, "size": 6.93, "width": 234, "height": 156}}	a_bug_is_becoming_a_meme_on_the_internet_62aef2d60e	.jpg	image/jpeg	198.85	/uploads/a_bug_is_becoming_a_meme_on_the_internet_62aef2d60e.jpg	\N	local	\N	\N	\N	2022-04-11 18:09:52.148+00	2022-04-11 18:09:52.148+00
9	we-love-pizza.jpg	\N	\N	3782	2522	{"large": {"ext": ".jpg", "url": "/uploads/large_we_love_pizza_5176e4417c.jpg", "hash": "large_we_love_pizza_5176e4417c", "mime": "image/jpeg", "name": "large_we-love-pizza.jpg", "path": null, "size": 180.65, "width": 1000, "height": 667}, "small": {"ext": ".jpg", "url": "/uploads/small_we_love_pizza_5176e4417c.jpg", "hash": "small_we_love_pizza_5176e4417c", "mime": "image/jpeg", "name": "small_we-love-pizza.jpg", "path": null, "size": 52.78, "width": 500, "height": 333}, "medium": {"ext": ".jpg", "url": "/uploads/medium_we_love_pizza_5176e4417c.jpg", "hash": "medium_we_love_pizza_5176e4417c", "mime": "image/jpeg", "name": "medium_we-love-pizza.jpg", "path": null, "size": 106.44, "width": 750, "height": 500}, "thumbnail": {"ext": ".jpg", "url": "/uploads/thumbnail_we_love_pizza_5176e4417c.jpg", "hash": "thumbnail_we_love_pizza_5176e4417c", "mime": "image/jpeg", "name": "thumbnail_we-love-pizza.jpg", "path": null, "size": 13.94, "width": 234, "height": 156}}	we_love_pizza_5176e4417c	.jpg	image/jpeg	955.02	/uploads/we_love_pizza_5176e4417c.jpg	\N	local	\N	\N	\N	2022-04-11 18:09:52.188+00	2022-04-11 18:09:52.188+00
8	beautiful-picture.jpg	\N	\N	3824	2548	{"large": {"ext": ".jpg", "url": "/uploads/large_beautiful_picture_d9a3fc5544.jpg", "hash": "large_beautiful_picture_d9a3fc5544", "mime": "image/jpeg", "name": "large_beautiful-picture.jpg", "path": null, "size": 83.75, "width": 1000, "height": 666}, "small": {"ext": ".jpg", "url": "/uploads/small_beautiful_picture_d9a3fc5544.jpg", "hash": "small_beautiful_picture_d9a3fc5544", "mime": "image/jpeg", "name": "small_beautiful-picture.jpg", "path": null, "size": 23.55, "width": 500, "height": 333}, "medium": {"ext": ".jpg", "url": "/uploads/medium_beautiful_picture_d9a3fc5544.jpg", "hash": "medium_beautiful_picture_d9a3fc5544", "mime": "image/jpeg", "name": "medium_beautiful-picture.jpg", "path": null, "size": 48.01, "width": 750, "height": 500}, "thumbnail": {"ext": ".jpg", "url": "/uploads/thumbnail_beautiful_picture_d9a3fc5544.jpg", "hash": "thumbnail_beautiful_picture_d9a3fc5544", "mime": "image/jpeg", "name": "thumbnail_beautiful-picture.jpg", "path": null, "size": 6.63, "width": 234, "height": 156}}	beautiful_picture_d9a3fc5544	.jpg	image/jpeg	585.12	/uploads/beautiful_picture_d9a3fc5544.jpg	\N	local	\N	\N	\N	2022-04-11 18:09:52.15+00	2022-04-11 18:09:52.15+00
10	favicon.png	\N	\N	512	512	{"small": {"ext": ".png", "url": "/uploads/small_favicon_1f4dfeef96.png", "hash": "small_favicon_1f4dfeef96", "mime": "image/png", "name": "small_favicon.png", "path": null, "size": 28.98, "width": 500, "height": 500}, "thumbnail": {"ext": ".png", "url": "/uploads/thumbnail_favicon_1f4dfeef96.png", "hash": "thumbnail_favicon_1f4dfeef96", "mime": "image/png", "name": "thumbnail_favicon.png", "path": null, "size": 6.27, "width": 156, "height": 156}}	favicon_1f4dfeef96	.png	image/png	5.26	/uploads/favicon_1f4dfeef96.png	\N	local	\N	\N	\N	2022-04-11 18:09:52.312+00	2022-04-11 18:09:52.312+00
11	default-image.png	\N	\N	1208	715	{"large": {"ext": ".png", "url": "/uploads/large_default_image_50f3c60b89.png", "hash": "large_default_image_50f3c60b89", "mime": "image/png", "name": "large_default-image.png", "path": null, "size": 423.75, "width": 1000, "height": 592}, "small": {"ext": ".png", "url": "/uploads/small_default_image_50f3c60b89.png", "hash": "small_default_image_50f3c60b89", "mime": "image/png", "name": "small_default-image.png", "path": null, "size": 114.01, "width": 500, "height": 296}, "medium": {"ext": ".png", "url": "/uploads/medium_default_image_50f3c60b89.png", "hash": "medium_default_image_50f3c60b89", "mime": "image/png", "name": "medium_default-image.png", "path": null, "size": 250.27, "width": 750, "height": 444}, "thumbnail": {"ext": ".png", "url": "/uploads/thumbnail_default_image_50f3c60b89.png", "hash": "thumbnail_default_image_50f3c60b89", "mime": "image/png", "name": "thumbnail_default-image.png", "path": null, "size": 27.69, "width": 245, "height": 145}}	default_image_50f3c60b89	.png	image/png	297.42	/uploads/default_image_50f3c60b89.png	\N	local	\N	\N	\N	2022-04-11 18:09:52.487+00	2022-04-11 18:09:52.487+00
38	Group 404.png			780	190	{"small": {"ext": ".png", "url": "/uploads/small_Group_404_627ad222e7.png", "hash": "small_Group_404_627ad222e7", "mime": "image/png", "name": "small_Group 404.png", "path": null, "size": 34.84, "width": 500, "height": 122}, "medium": {"ext": ".png", "url": "/uploads/medium_Group_404_627ad222e7.png", "hash": "medium_Group_404_627ad222e7", "mime": "image/png", "name": "medium_Group 404.png", "path": null, "size": 58.04, "width": 750, "height": 183}, "thumbnail": {"ext": ".png", "url": "/uploads/thumbnail_Group_404_627ad222e7.png", "hash": "thumbnail_Group_404_627ad222e7", "mime": "image/png", "name": "thumbnail_Group 404.png", "path": null, "size": 13.47, "width": 245, "height": 60}}	Group_404_627ad222e7	.png	image/png	13.02	/uploads/Group_404_627ad222e7.png	\N	local	\N	3	3	2022-04-12 14:58:07.011+00	2022-04-12 14:58:07.028+00
13	3773e5c1709709a1bc07d5ec8c1cea29.jpg			1080	1523	{"large": {"ext": ".jpg", "url": "/uploads/large_3773e5c1709709a1bc07d5ec8c1cea29_29f95b5bab.jpg", "hash": "large_3773e5c1709709a1bc07d5ec8c1cea29_29f95b5bab", "mime": "image/jpeg", "name": "large_3773e5c1709709a1bc07d5ec8c1cea29.jpg", "path": null, "size": 149.07, "width": 709, "height": 1000}, "small": {"ext": ".jpg", "url": "/uploads/small_3773e5c1709709a1bc07d5ec8c1cea29_29f95b5bab.jpg", "hash": "small_3773e5c1709709a1bc07d5ec8c1cea29_29f95b5bab", "mime": "image/jpeg", "name": "small_3773e5c1709709a1bc07d5ec8c1cea29.jpg", "path": null, "size": 52.95, "width": 355, "height": 500}, "medium": {"ext": ".jpg", "url": "/uploads/medium_3773e5c1709709a1bc07d5ec8c1cea29_29f95b5bab.jpg", "hash": "medium_3773e5c1709709a1bc07d5ec8c1cea29_29f95b5bab", "mime": "image/jpeg", "name": "medium_3773e5c1709709a1bc07d5ec8c1cea29.jpg", "path": null, "size": 96.1, "width": 532, "height": 750}, "thumbnail": {"ext": ".jpg", "url": "/uploads/thumbnail_3773e5c1709709a1bc07d5ec8c1cea29_29f95b5bab.jpg", "hash": "thumbnail_3773e5c1709709a1bc07d5ec8c1cea29_29f95b5bab", "mime": "image/jpeg", "name": "thumbnail_3773e5c1709709a1bc07d5ec8c1cea29.jpg", "path": null, "size": 13, "width": 111, "height": 156}}	3773e5c1709709a1bc07d5ec8c1cea29_29f95b5bab	.jpg	image/jpeg	266.33	/uploads/3773e5c1709709a1bc07d5ec8c1cea29_29f95b5bab.jpg	\N	local	\N	3	3	2022-04-12 12:42:58.703+00	2022-04-12 12:42:58.715+00
12	Mask group (1).png			390	292	{"thumbnail": {"ext": ".png", "url": "/uploads/thumbnail_Mask_group_1_df36e4a9d1.png", "hash": "thumbnail_Mask_group_1_df36e4a9d1", "mime": "image/png", "name": "thumbnail_Mask group (1).png", "path": null, "size": 45.56, "width": 208, "height": 156}}	Mask_group_1_df36e4a9d1	.png	image/png	132.91	/uploads/Mask_group_1_df36e4a9d1.png	\N	local	\N	1	1	2022-04-11 19:22:23.92+00	2022-04-12 15:14:34.668+00
14	9176ab991a2bbcb8e2e032bd57bb6c37.jpg			1080	810	{"large": {"ext": ".jpg", "url": "/uploads/large_9176ab991a2bbcb8e2e032bd57bb6c37_df37b552f5.jpg", "hash": "large_9176ab991a2bbcb8e2e032bd57bb6c37_df37b552f5", "mime": "image/jpeg", "name": "large_9176ab991a2bbcb8e2e032bd57bb6c37.jpg", "path": null, "size": 126.86, "width": 1000, "height": 750}, "small": {"ext": ".jpg", "url": "/uploads/small_9176ab991a2bbcb8e2e032bd57bb6c37_df37b552f5.jpg", "hash": "small_9176ab991a2bbcb8e2e032bd57bb6c37_df37b552f5", "mime": "image/jpeg", "name": "small_9176ab991a2bbcb8e2e032bd57bb6c37.jpg", "path": null, "size": 37.76, "width": 500, "height": 375}, "medium": {"ext": ".jpg", "url": "/uploads/medium_9176ab991a2bbcb8e2e032bd57bb6c37_df37b552f5.jpg", "hash": "medium_9176ab991a2bbcb8e2e032bd57bb6c37_df37b552f5", "mime": "image/jpeg", "name": "medium_9176ab991a2bbcb8e2e032bd57bb6c37.jpg", "path": null, "size": 79.62, "width": 750, "height": 563}, "thumbnail": {"ext": ".jpg", "url": "/uploads/thumbnail_9176ab991a2bbcb8e2e032bd57bb6c37_df37b552f5.jpg", "hash": "thumbnail_9176ab991a2bbcb8e2e032bd57bb6c37_df37b552f5", "mime": "image/jpeg", "name": "thumbnail_9176ab991a2bbcb8e2e032bd57bb6c37.jpg", "path": null, "size": 7.7, "width": 208, "height": 156}}	9176ab991a2bbcb8e2e032bd57bb6c37_df37b552f5	.jpg	image/jpeg	142.61	/uploads/9176ab991a2bbcb8e2e032bd57bb6c37_df37b552f5.jpg	\N	local	\N	3	3	2022-04-12 12:47:35.865+00	2022-04-12 12:47:35.874+00
15	67ecec39e4c84d7e9891d8ffc93fe24c.jpg			959	719	{"small": {"ext": ".jpg", "url": "/uploads/small_67ecec39e4c84d7e9891d8ffc93fe24c_7924b0f5bc.jpg", "hash": "small_67ecec39e4c84d7e9891d8ffc93fe24c_7924b0f5bc", "mime": "image/jpeg", "name": "small_67ecec39e4c84d7e9891d8ffc93fe24c.jpg", "path": null, "size": 18.39, "width": 500, "height": 375}, "medium": {"ext": ".jpg", "url": "/uploads/medium_67ecec39e4c84d7e9891d8ffc93fe24c_7924b0f5bc.jpg", "hash": "medium_67ecec39e4c84d7e9891d8ffc93fe24c_7924b0f5bc", "mime": "image/jpeg", "name": "medium_67ecec39e4c84d7e9891d8ffc93fe24c.jpg", "path": null, "size": 33.1, "width": 750, "height": 562}, "thumbnail": {"ext": ".jpg", "url": "/uploads/thumbnail_67ecec39e4c84d7e9891d8ffc93fe24c_7924b0f5bc.jpg", "hash": "thumbnail_67ecec39e4c84d7e9891d8ffc93fe24c_7924b0f5bc", "mime": "image/jpeg", "name": "thumbnail_67ecec39e4c84d7e9891d8ffc93fe24c.jpg", "path": null, "size": 5.11, "width": 208, "height": 156}}	67ecec39e4c84d7e9891d8ffc93fe24c_7924b0f5bc	.jpg	image/jpeg	45.81	/uploads/67ecec39e4c84d7e9891d8ffc93fe24c_7924b0f5bc.jpg	\N	local	\N	3	3	2022-04-12 12:50:29.558+00	2022-04-12 12:50:29.574+00
39	Group 411.png			780	190	{"small": {"ext": ".png", "url": "/uploads/small_Group_411_25d2f49a3d.png", "hash": "small_Group_411_25d2f49a3d", "mime": "image/png", "name": "small_Group 411.png", "path": null, "size": 33.79, "width": 500, "height": 122}, "medium": {"ext": ".png", "url": "/uploads/medium_Group_411_25d2f49a3d.png", "hash": "medium_Group_411_25d2f49a3d", "mime": "image/png", "name": "medium_Group 411.png", "path": null, "size": 56, "width": 750, "height": 183}, "thumbnail": {"ext": ".png", "url": "/uploads/thumbnail_Group_411_25d2f49a3d.png", "hash": "thumbnail_Group_411_25d2f49a3d", "mime": "image/png", "name": "thumbnail_Group 411.png", "path": null, "size": 13.07, "width": 245, "height": 60}}	Group_411_25d2f49a3d	.png	image/png	12.55	/uploads/Group_411_25d2f49a3d.png	\N	local	\N	3	3	2022-04-12 15:09:09.357+00	2022-04-12 15:09:09.366+00
41	Group 415 (1).png			780	190	{"small": {"ext": ".png", "url": "/uploads/small_Group_415_1_bb28f8edc4.png", "hash": "small_Group_415_1_bb28f8edc4", "mime": "image/png", "name": "small_Group 415 (1).png", "path": null, "size": 36.35, "width": 500, "height": 122}, "medium": {"ext": ".png", "url": "/uploads/medium_Group_415_1_bb28f8edc4.png", "hash": "medium_Group_415_1_bb28f8edc4", "mime": "image/png", "name": "medium_Group 415 (1).png", "path": null, "size": 60.82, "width": 750, "height": 183}, "thumbnail": {"ext": ".png", "url": "/uploads/thumbnail_Group_415_1_bb28f8edc4.png", "hash": "thumbnail_Group_415_1_bb28f8edc4", "mime": "image/png", "name": "thumbnail_Group 415 (1).png", "path": null, "size": 14.13, "width": 245, "height": 60}}	Group_415_1_bb28f8edc4	.png	image/png	13.70	/uploads/Group_415_1_bb28f8edc4.png	\N	local	\N	3	3	2022-04-12 15:14:34.818+00	2022-04-12 15:14:34.831+00
16	5f3cf9fa524e7133169a70739232a38f.jpg			1080	608	{"large": {"ext": ".jpg", "url": "/uploads/large_5f3cf9fa524e7133169a70739232a38f_04c17dde36.jpg", "hash": "large_5f3cf9fa524e7133169a70739232a38f_04c17dde36", "mime": "image/jpeg", "name": "large_5f3cf9fa524e7133169a70739232a38f.jpg", "path": null, "size": 43.56, "width": 1000, "height": 563}, "small": {"ext": ".jpg", "url": "/uploads/small_5f3cf9fa524e7133169a70739232a38f_04c17dde36.jpg", "hash": "small_5f3cf9fa524e7133169a70739232a38f_04c17dde36", "mime": "image/jpeg", "name": "small_5f3cf9fa524e7133169a70739232a38f.jpg", "path": null, "size": 15.65, "width": 500, "height": 281}, "medium": {"ext": ".jpg", "url": "/uploads/medium_5f3cf9fa524e7133169a70739232a38f_04c17dde36.jpg", "hash": "medium_5f3cf9fa524e7133169a70739232a38f_04c17dde36", "mime": "image/jpeg", "name": "medium_5f3cf9fa524e7133169a70739232a38f.jpg", "path": null, "size": 29.09, "width": 750, "height": 422}, "thumbnail": {"ext": ".jpg", "url": "/uploads/thumbnail_5f3cf9fa524e7133169a70739232a38f_04c17dde36.jpg", "hash": "thumbnail_5f3cf9fa524e7133169a70739232a38f_04c17dde36", "mime": "image/jpeg", "name": "thumbnail_5f3cf9fa524e7133169a70739232a38f.jpg", "path": null, "size": 5.56, "width": 245, "height": 138}}	5f3cf9fa524e7133169a70739232a38f_04c17dde36	.jpg	image/jpeg	47.64	/uploads/5f3cf9fa524e7133169a70739232a38f_04c17dde36.jpg	\N	local	\N	3	3	2022-04-12 12:55:19.404+00	2022-04-12 12:55:19.416+00
17	9300470eeedcb492790cfdfc6a425c55.jpg			1080	810	{"large": {"ext": ".jpg", "url": "/uploads/large_9300470eeedcb492790cfdfc6a425c55_868770ff33.jpg", "hash": "large_9300470eeedcb492790cfdfc6a425c55_868770ff33", "mime": "image/jpeg", "name": "large_9300470eeedcb492790cfdfc6a425c55.jpg", "path": null, "size": 125.28, "width": 1000, "height": 750}, "small": {"ext": ".jpg", "url": "/uploads/small_9300470eeedcb492790cfdfc6a425c55_868770ff33.jpg", "hash": "small_9300470eeedcb492790cfdfc6a425c55_868770ff33", "mime": "image/jpeg", "name": "small_9300470eeedcb492790cfdfc6a425c55.jpg", "path": null, "size": 42.95, "width": 500, "height": 375}, "medium": {"ext": ".jpg", "url": "/uploads/medium_9300470eeedcb492790cfdfc6a425c55_868770ff33.jpg", "hash": "medium_9300470eeedcb492790cfdfc6a425c55_868770ff33", "mime": "image/jpeg", "name": "medium_9300470eeedcb492790cfdfc6a425c55.jpg", "path": null, "size": 82.83, "width": 750, "height": 563}, "thumbnail": {"ext": ".jpg", "url": "/uploads/thumbnail_9300470eeedcb492790cfdfc6a425c55_868770ff33.jpg", "hash": "thumbnail_9300470eeedcb492790cfdfc6a425c55_868770ff33", "mime": "image/jpeg", "name": "thumbnail_9300470eeedcb492790cfdfc6a425c55.jpg", "path": null, "size": 10.56, "width": 208, "height": 156}}	9300470eeedcb492790cfdfc6a425c55_868770ff33	.jpg	image/jpeg	138.65	/uploads/9300470eeedcb492790cfdfc6a425c55_868770ff33.jpg	\N	local	\N	3	3	2022-04-12 12:56:09.464+00	2022-04-12 12:56:09.474+00
19	ce36a95dee7067ce9f6d712b2524dbfc.jpg			1080	768	{"large": {"ext": ".jpg", "url": "/uploads/large_ce36a95dee7067ce9f6d712b2524dbfc_bdf01962d4.jpg", "hash": "large_ce36a95dee7067ce9f6d712b2524dbfc_bdf01962d4", "mime": "image/jpeg", "name": "large_ce36a95dee7067ce9f6d712b2524dbfc.jpg", "path": null, "size": 1431.27, "width": 1000, "height": 711}, "small": {"ext": ".jpg", "url": "/uploads/small_ce36a95dee7067ce9f6d712b2524dbfc_bdf01962d4.jpg", "hash": "small_ce36a95dee7067ce9f6d712b2524dbfc_bdf01962d4", "mime": "image/jpeg", "name": "small_ce36a95dee7067ce9f6d712b2524dbfc.jpg", "path": null, "size": 387.34, "width": 500, "height": 356}, "medium": {"ext": ".jpg", "url": "/uploads/medium_ce36a95dee7067ce9f6d712b2524dbfc_bdf01962d4.jpg", "hash": "medium_ce36a95dee7067ce9f6d712b2524dbfc_bdf01962d4", "mime": "image/jpeg", "name": "medium_ce36a95dee7067ce9f6d712b2524dbfc.jpg", "path": null, "size": 836.36, "width": 750, "height": 533}, "thumbnail": {"ext": ".jpg", "url": "/uploads/thumbnail_ce36a95dee7067ce9f6d712b2524dbfc_bdf01962d4.jpg", "hash": "thumbnail_ce36a95dee7067ce9f6d712b2524dbfc_bdf01962d4", "mime": "image/jpeg", "name": "thumbnail_ce36a95dee7067ce9f6d712b2524dbfc.jpg", "path": null, "size": 82.08, "width": 219, "height": 156}}	ce36a95dee7067ce9f6d712b2524dbfc_bdf01962d4	.jpg	image/jpeg	833.42	/uploads/ce36a95dee7067ce9f6d712b2524dbfc_bdf01962d4.jpg	\N	local	\N	3	3	2022-04-12 12:57:33.602+00	2022-04-12 12:57:33.615+00
20	63ae5cff6bb4662eec3e4b1ea5723119.jpg			1080	608	{"large": {"ext": ".jpg", "url": "/uploads/large_63ae5cff6bb4662eec3e4b1ea5723119_c465933768.jpg", "hash": "large_63ae5cff6bb4662eec3e4b1ea5723119_c465933768", "mime": "image/jpeg", "name": "large_63ae5cff6bb4662eec3e4b1ea5723119.jpg", "path": null, "size": 526.87, "width": 1000, "height": 563}, "small": {"ext": ".jpg", "url": "/uploads/small_63ae5cff6bb4662eec3e4b1ea5723119_c465933768.jpg", "hash": "small_63ae5cff6bb4662eec3e4b1ea5723119_c465933768", "mime": "image/jpeg", "name": "small_63ae5cff6bb4662eec3e4b1ea5723119.jpg", "path": null, "size": 205.88, "width": 500, "height": 281}, "medium": {"ext": ".jpg", "url": "/uploads/medium_63ae5cff6bb4662eec3e4b1ea5723119_c465933768.jpg", "hash": "medium_63ae5cff6bb4662eec3e4b1ea5723119_c465933768", "mime": "image/jpeg", "name": "medium_63ae5cff6bb4662eec3e4b1ea5723119.jpg", "path": null, "size": 359.03, "width": 750, "height": 422}, "thumbnail": {"ext": ".jpg", "url": "/uploads/thumbnail_63ae5cff6bb4662eec3e4b1ea5723119_c465933768.jpg", "hash": "thumbnail_63ae5cff6bb4662eec3e4b1ea5723119_c465933768", "mime": "image/jpeg", "name": "thumbnail_63ae5cff6bb4662eec3e4b1ea5723119.jpg", "path": null, "size": 72.72, "width": 245, "height": 138}}	63ae5cff6bb4662eec3e4b1ea5723119_c465933768	.jpg	image/jpeg	241.18	/uploads/63ae5cff6bb4662eec3e4b1ea5723119_c465933768.jpg	\N	local	\N	3	3	2022-04-12 13:04:53.823+00	2022-04-12 13:04:53.832+00
21	1e0ad758b9f9e46ea45de154946dfb38.jpg			1080	675	{"large": {"ext": ".jpg", "url": "/uploads/large_1e0ad758b9f9e46ea45de154946dfb38_900c3758a0.jpg", "hash": "large_1e0ad758b9f9e46ea45de154946dfb38_900c3758a0", "mime": "image/jpeg", "name": "large_1e0ad758b9f9e46ea45de154946dfb38.jpg", "path": null, "size": 277.15, "width": 1000, "height": 625}, "small": {"ext": ".jpg", "url": "/uploads/small_1e0ad758b9f9e46ea45de154946dfb38_900c3758a0.jpg", "hash": "small_1e0ad758b9f9e46ea45de154946dfb38_900c3758a0", "mime": "image/jpeg", "name": "small_1e0ad758b9f9e46ea45de154946dfb38.jpg", "path": null, "size": 100.14, "width": 500, "height": 313}, "medium": {"ext": ".jpg", "url": "/uploads/medium_1e0ad758b9f9e46ea45de154946dfb38_900c3758a0.jpg", "hash": "medium_1e0ad758b9f9e46ea45de154946dfb38_900c3758a0", "mime": "image/jpeg", "name": "medium_1e0ad758b9f9e46ea45de154946dfb38.jpg", "path": null, "size": 180.98, "width": 750, "height": 469}, "thumbnail": {"ext": ".jpg", "url": "/uploads/thumbnail_1e0ad758b9f9e46ea45de154946dfb38_900c3758a0.jpg", "hash": "thumbnail_1e0ad758b9f9e46ea45de154946dfb38_900c3758a0", "mime": "image/jpeg", "name": "thumbnail_1e0ad758b9f9e46ea45de154946dfb38.jpg", "path": null, "size": 35.03, "width": 245, "height": 153}}	1e0ad758b9f9e46ea45de154946dfb38_900c3758a0	.jpg	image/jpeg	202.00	/uploads/1e0ad758b9f9e46ea45de154946dfb38_900c3758a0.jpg	\N	local	\N	3	3	2022-04-12 13:05:49.192+00	2022-04-12 13:05:49.202+00
22	9c193abfb98f98f30df0a27c38a07f6d.jpg			1080	764	{"large": {"ext": ".jpg", "url": "/uploads/large_9c193abfb98f98f30df0a27c38a07f6d_2803bee016.jpg", "hash": "large_9c193abfb98f98f30df0a27c38a07f6d_2803bee016", "mime": "image/jpeg", "name": "large_9c193abfb98f98f30df0a27c38a07f6d.jpg", "path": null, "size": 134.37, "width": 1000, "height": 707}, "small": {"ext": ".jpg", "url": "/uploads/small_9c193abfb98f98f30df0a27c38a07f6d_2803bee016.jpg", "hash": "small_9c193abfb98f98f30df0a27c38a07f6d_2803bee016", "mime": "image/jpeg", "name": "small_9c193abfb98f98f30df0a27c38a07f6d.jpg", "path": null, "size": 42.23, "width": 500, "height": 354}, "medium": {"ext": ".jpg", "url": "/uploads/medium_9c193abfb98f98f30df0a27c38a07f6d_2803bee016.jpg", "hash": "medium_9c193abfb98f98f30df0a27c38a07f6d_2803bee016", "mime": "image/jpeg", "name": "medium_9c193abfb98f98f30df0a27c38a07f6d.jpg", "path": null, "size": 83.54, "width": 750, "height": 531}, "thumbnail": {"ext": ".jpg", "url": "/uploads/thumbnail_9c193abfb98f98f30df0a27c38a07f6d_2803bee016.jpg", "hash": "thumbnail_9c193abfb98f98f30df0a27c38a07f6d_2803bee016", "mime": "image/jpeg", "name": "thumbnail_9c193abfb98f98f30df0a27c38a07f6d.jpg", "path": null, "size": 10.98, "width": 221, "height": 156}}	9c193abfb98f98f30df0a27c38a07f6d_2803bee016	.jpg	image/jpeg	151.29	/uploads/9c193abfb98f98f30df0a27c38a07f6d_2803bee016.jpg	\N	local	\N	3	3	2022-04-12 13:06:42.007+00	2022-04-12 13:06:42.017+00
23	6214c39cc748060f24535570c1296019.jpg			930	1282	\N	6214c39cc748060f24535570c1296019_05917e9ece	.jpg	image/jpeg	7332.21	/uploads/6214c39cc748060f24535570c1296019_05917e9ece.jpg	\N	local	\N	3	3	2022-04-12 13:08:07.395+00	2022-04-12 13:08:07.41+00
40	Group 413 (1).png			780	190	{"small": {"ext": ".png", "url": "/uploads/small_Group_413_1_df7c9bd135.png", "hash": "small_Group_413_1_df7c9bd135", "mime": "image/png", "name": "small_Group 413 (1).png", "path": null, "size": 37.8, "width": 500, "height": 122}, "medium": {"ext": ".png", "url": "/uploads/medium_Group_413_1_df7c9bd135.png", "hash": "medium_Group_413_1_df7c9bd135", "mime": "image/png", "name": "medium_Group 413 (1).png", "path": null, "size": 63.27, "width": 750, "height": 183}, "thumbnail": {"ext": ".png", "url": "/uploads/thumbnail_Group_413_1_df7c9bd135.png", "hash": "thumbnail_Group_413_1_df7c9bd135", "mime": "image/png", "name": "thumbnail_Group 413 (1).png", "path": null, "size": 14.74, "width": 245, "height": 60}}	Group_413_1_df7c9bd135	.png	image/png	13.15	/uploads/Group_413_1_df7c9bd135.png	\N	local	\N	3	3	2022-04-12 15:11:57.181+00	2022-04-12 15:11:57.19+00
42	Group 417.png			780	190	{"small": {"ext": ".png", "url": "/uploads/small_Group_417_9b9faade0b.png", "hash": "small_Group_417_9b9faade0b", "mime": "image/png", "name": "small_Group 417.png", "path": null, "size": 39.27, "width": 500, "height": 122}, "medium": {"ext": ".png", "url": "/uploads/medium_Group_417_9b9faade0b.png", "hash": "medium_Group_417_9b9faade0b", "mime": "image/png", "name": "medium_Group 417.png", "path": null, "size": 65.87, "width": 750, "height": 183}, "thumbnail": {"ext": ".png", "url": "/uploads/thumbnail_Group_417_9b9faade0b.png", "hash": "thumbnail_Group_417_9b9faade0b", "mime": "image/png", "name": "thumbnail_Group 417.png", "path": null, "size": 15.23, "width": 245, "height": 60}}	Group_417_9b9faade0b	.png	image/png	14.79	/uploads/Group_417_9b9faade0b.png	\N	local	\N	3	3	2022-04-12 15:16:47.555+00	2022-04-12 15:16:47.563+00
24	e707f1fe14916ed43bb35558d3cc501c.jpg			1080	1796	{"large": {"ext": ".jpg", "url": "/uploads/large_e707f1fe14916ed43bb35558d3cc501c_7ca09836f1.jpg", "hash": "large_e707f1fe14916ed43bb35558d3cc501c_7ca09836f1", "mime": "image/jpeg", "name": "large_e707f1fe14916ed43bb35558d3cc501c.jpg", "path": null, "size": 128.16, "width": 601, "height": 1000}, "small": {"ext": ".jpg", "url": "/uploads/small_e707f1fe14916ed43bb35558d3cc501c_7ca09836f1.jpg", "hash": "small_e707f1fe14916ed43bb35558d3cc501c_7ca09836f1", "mime": "image/jpeg", "name": "small_e707f1fe14916ed43bb35558d3cc501c.jpg", "path": null, "size": 36.98, "width": 301, "height": 500}, "medium": {"ext": ".jpg", "url": "/uploads/medium_e707f1fe14916ed43bb35558d3cc501c_7ca09836f1.jpg", "hash": "medium_e707f1fe14916ed43bb35558d3cc501c_7ca09836f1", "mime": "image/jpeg", "name": "medium_e707f1fe14916ed43bb35558d3cc501c.jpg", "path": null, "size": 76.13, "width": 451, "height": 750}, "thumbnail": {"ext": ".jpg", "url": "/uploads/thumbnail_e707f1fe14916ed43bb35558d3cc501c_7ca09836f1.jpg", "hash": "thumbnail_e707f1fe14916ed43bb35558d3cc501c_7ca09836f1", "mime": "image/jpeg", "name": "thumbnail_e707f1fe14916ed43bb35558d3cc501c.jpg", "path": null, "size": 5.4, "width": 94, "height": 156}}	e707f1fe14916ed43bb35558d3cc501c_7ca09836f1	.jpg	image/jpeg	341.52	/uploads/e707f1fe14916ed43bb35558d3cc501c_7ca09836f1.jpg	\N	local	\N	3	3	2022-04-12 13:09:47.566+00	2022-04-12 13:09:47.578+00
26	500aa414bdd4a632f734bc45f1015b5f.jpg			1280	3520	{"large": {"ext": ".jpg", "url": "/uploads/large_500aa414bdd4a632f734bc45f1015b5f_e8b1812bbc.jpg", "hash": "large_500aa414bdd4a632f734bc45f1015b5f_e8b1812bbc", "mime": "image/jpeg", "name": "large_500aa414bdd4a632f734bc45f1015b5f.jpg", "path": null, "size": 67.75, "width": 364, "height": 1000}, "small": {"ext": ".jpg", "url": "/uploads/small_500aa414bdd4a632f734bc45f1015b5f_e8b1812bbc.jpg", "hash": "small_500aa414bdd4a632f734bc45f1015b5f_e8b1812bbc", "mime": "image/jpeg", "name": "small_500aa414bdd4a632f734bc45f1015b5f.jpg", "path": null, "size": 22.96, "width": 182, "height": 500}, "medium": {"ext": ".jpg", "url": "/uploads/medium_500aa414bdd4a632f734bc45f1015b5f_e8b1812bbc.jpg", "hash": "medium_500aa414bdd4a632f734bc45f1015b5f_e8b1812bbc", "mime": "image/jpeg", "name": "medium_500aa414bdd4a632f734bc45f1015b5f.jpg", "path": null, "size": 42.56, "width": 273, "height": 750}, "thumbnail": {"ext": ".jpg", "url": "/uploads/thumbnail_500aa414bdd4a632f734bc45f1015b5f_e8b1812bbc.jpg", "hash": "thumbnail_500aa414bdd4a632f734bc45f1015b5f_e8b1812bbc", "mime": "image/jpeg", "name": "thumbnail_500aa414bdd4a632f734bc45f1015b5f.jpg", "path": null, "size": 3.59, "width": 57, "height": 156}}	500aa414bdd4a632f734bc45f1015b5f_e8b1812bbc	.jpg	image/jpeg	443.73	/uploads/500aa414bdd4a632f734bc45f1015b5f_e8b1812bbc.jpg	\N	local	\N	3	3	2022-04-12 13:11:57.931+00	2022-04-12 13:11:57.938+00
27	4abd6540ae47a4f1ffdf609d10fc3800.jpg			1280	2637	{"large": {"ext": ".jpg", "url": "/uploads/large_4abd6540ae47a4f1ffdf609d10fc3800_39aeb47a70.jpg", "hash": "large_4abd6540ae47a4f1ffdf609d10fc3800_39aeb47a70", "mime": "image/jpeg", "name": "large_4abd6540ae47a4f1ffdf609d10fc3800.jpg", "path": null, "size": 58.47, "width": 485, "height": 1000}, "small": {"ext": ".jpg", "url": "/uploads/small_4abd6540ae47a4f1ffdf609d10fc3800_39aeb47a70.jpg", "hash": "small_4abd6540ae47a4f1ffdf609d10fc3800_39aeb47a70", "mime": "image/jpeg", "name": "small_4abd6540ae47a4f1ffdf609d10fc3800.jpg", "path": null, "size": 20.46, "width": 243, "height": 500}, "medium": {"ext": ".jpg", "url": "/uploads/medium_4abd6540ae47a4f1ffdf609d10fc3800_39aeb47a70.jpg", "hash": "medium_4abd6540ae47a4f1ffdf609d10fc3800_39aeb47a70", "mime": "image/jpeg", "name": "medium_4abd6540ae47a4f1ffdf609d10fc3800.jpg", "path": null, "size": 37.9, "width": 364, "height": 750}, "thumbnail": {"ext": ".jpg", "url": "/uploads/thumbnail_4abd6540ae47a4f1ffdf609d10fc3800_39aeb47a70.jpg", "hash": "thumbnail_4abd6540ae47a4f1ffdf609d10fc3800_39aeb47a70", "mime": "image/jpeg", "name": "thumbnail_4abd6540ae47a4f1ffdf609d10fc3800.jpg", "path": null, "size": 3.46, "width": 76, "height": 156}}	4abd6540ae47a4f1ffdf609d10fc3800_39aeb47a70	.jpg	image/jpeg	244.30	/uploads/4abd6540ae47a4f1ffdf609d10fc3800_39aeb47a70.jpg	\N	local	\N	3	3	2022-04-12 13:13:55.656+00	2022-04-12 13:13:55.666+00
25	db671de3e26896f80bc6dca2e4f06925.jpg			1280	2286	{"large": {"ext": ".jpg", "url": "/uploads/large_db671de3e26896f80bc6dca2e4f06925_835d60af45.jpg", "hash": "large_db671de3e26896f80bc6dca2e4f06925_835d60af45", "mime": "image/jpeg", "name": "large_db671de3e26896f80bc6dca2e4f06925.jpg", "path": null, "size": 79.44, "width": 560, "height": 1000}, "small": {"ext": ".jpg", "url": "/uploads/small_db671de3e26896f80bc6dca2e4f06925_835d60af45.jpg", "hash": "small_db671de3e26896f80bc6dca2e4f06925_835d60af45", "mime": "image/jpeg", "name": "small_db671de3e26896f80bc6dca2e4f06925.jpg", "path": null, "size": 26.03, "width": 280, "height": 500}, "medium": {"ext": ".jpg", "url": "/uploads/medium_db671de3e26896f80bc6dca2e4f06925_835d60af45.jpg", "hash": "medium_db671de3e26896f80bc6dca2e4f06925_835d60af45", "mime": "image/jpeg", "name": "medium_db671de3e26896f80bc6dca2e4f06925.jpg", "path": null, "size": 50.56, "width": 420, "height": 750}, "thumbnail": {"ext": ".jpg", "url": "/uploads/thumbnail_db671de3e26896f80bc6dca2e4f06925_835d60af45.jpg", "hash": "thumbnail_db671de3e26896f80bc6dca2e4f06925_835d60af45", "mime": "image/jpeg", "name": "thumbnail_db671de3e26896f80bc6dca2e4f06925.jpg", "path": null, "size": 4.12, "width": 87, "height": 156}}	db671de3e26896f80bc6dca2e4f06925_835d60af45	.jpg	image/jpeg	299.69	/uploads/db671de3e26896f80bc6dca2e4f06925_835d60af45.jpg	\N	local	\N	3	3	2022-04-12 13:11:57.854+00	2022-04-12 13:12:13.428+00
29	16f49ba887c16b669e9edfe9aa324ce8.jpg			1080	1527	{"large": {"ext": ".jpg", "url": "/uploads/large_16f49ba887c16b669e9edfe9aa324ce8_f5282354a0.jpg", "hash": "large_16f49ba887c16b669e9edfe9aa324ce8_f5282354a0", "mime": "image/jpeg", "name": "large_16f49ba887c16b669e9edfe9aa324ce8.jpg", "path": null, "size": 79.19, "width": 707, "height": 1000}, "small": {"ext": ".jpg", "url": "/uploads/small_16f49ba887c16b669e9edfe9aa324ce8_f5282354a0.jpg", "hash": "small_16f49ba887c16b669e9edfe9aa324ce8_f5282354a0", "mime": "image/jpeg", "name": "small_16f49ba887c16b669e9edfe9aa324ce8.jpg", "path": null, "size": 28.29, "width": 354, "height": 500}, "medium": {"ext": ".jpg", "url": "/uploads/medium_16f49ba887c16b669e9edfe9aa324ce8_f5282354a0.jpg", "hash": "medium_16f49ba887c16b669e9edfe9aa324ce8_f5282354a0", "mime": "image/jpeg", "name": "medium_16f49ba887c16b669e9edfe9aa324ce8.jpg", "path": null, "size": 50.5, "width": 530, "height": 750}, "thumbnail": {"ext": ".jpg", "url": "/uploads/thumbnail_16f49ba887c16b669e9edfe9aa324ce8_f5282354a0.jpg", "hash": "thumbnail_16f49ba887c16b669e9edfe9aa324ce8_f5282354a0", "mime": "image/jpeg", "name": "thumbnail_16f49ba887c16b669e9edfe9aa324ce8.jpg", "path": null, "size": 4.66, "width": 110, "height": 156}}	16f49ba887c16b669e9edfe9aa324ce8_f5282354a0	.jpg	image/jpeg	139.41	/uploads/16f49ba887c16b669e9edfe9aa324ce8_f5282354a0.jpg	\N	local	\N	3	3	2022-04-12 13:15:56.519+00	2022-04-12 13:15:56.531+00
28	56c73f4e6dd472d4c93376bc6d3763d7.jpg			1080	1527	{"large": {"ext": ".jpg", "url": "/uploads/large_56c73f4e6dd472d4c93376bc6d3763d7_2d106ff262.jpg", "hash": "large_56c73f4e6dd472d4c93376bc6d3763d7_2d106ff262", "mime": "image/jpeg", "name": "large_56c73f4e6dd472d4c93376bc6d3763d7.jpg", "path": null, "size": 79.19, "width": 707, "height": 1000}, "small": {"ext": ".jpg", "url": "/uploads/small_56c73f4e6dd472d4c93376bc6d3763d7_2d106ff262.jpg", "hash": "small_56c73f4e6dd472d4c93376bc6d3763d7_2d106ff262", "mime": "image/jpeg", "name": "small_56c73f4e6dd472d4c93376bc6d3763d7.jpg", "path": null, "size": 28.29, "width": 354, "height": 500}, "medium": {"ext": ".jpg", "url": "/uploads/medium_56c73f4e6dd472d4c93376bc6d3763d7_2d106ff262.jpg", "hash": "medium_56c73f4e6dd472d4c93376bc6d3763d7_2d106ff262", "mime": "image/jpeg", "name": "medium_56c73f4e6dd472d4c93376bc6d3763d7.jpg", "path": null, "size": 50.5, "width": 530, "height": 750}, "thumbnail": {"ext": ".jpg", "url": "/uploads/thumbnail_56c73f4e6dd472d4c93376bc6d3763d7_2d106ff262.jpg", "hash": "thumbnail_56c73f4e6dd472d4c93376bc6d3763d7_2d106ff262", "mime": "image/jpeg", "name": "thumbnail_56c73f4e6dd472d4c93376bc6d3763d7.jpg", "path": null, "size": 4.66, "width": 110, "height": 156}}	56c73f4e6dd472d4c93376bc6d3763d7_2d106ff262	.jpg	image/jpeg	139.41	/uploads/56c73f4e6dd472d4c93376bc6d3763d7_2d106ff262.jpg	\N	local	\N	3	3	2022-04-12 13:15:56.504+00	2022-04-12 13:16:11.134+00
30	9a8fb9894802b9aed4bc74a848d65b8a.jpg			1080	764	{"large": {"ext": ".jpg", "url": "/uploads/large_9a8fb9894802b9aed4bc74a848d65b8a_e67737bae8.jpg", "hash": "large_9a8fb9894802b9aed4bc74a848d65b8a_e67737bae8", "mime": "image/jpeg", "name": "large_9a8fb9894802b9aed4bc74a848d65b8a.jpg", "path": null, "size": 60.2, "width": 1000, "height": 707}, "small": {"ext": ".jpg", "url": "/uploads/small_9a8fb9894802b9aed4bc74a848d65b8a_e67737bae8.jpg", "hash": "small_9a8fb9894802b9aed4bc74a848d65b8a_e67737bae8", "mime": "image/jpeg", "name": "small_9a8fb9894802b9aed4bc74a848d65b8a.jpg", "path": null, "size": 20.87, "width": 500, "height": 354}, "medium": {"ext": ".jpg", "url": "/uploads/medium_9a8fb9894802b9aed4bc74a848d65b8a_e67737bae8.jpg", "hash": "medium_9a8fb9894802b9aed4bc74a848d65b8a_e67737bae8", "mime": "image/jpeg", "name": "medium_9a8fb9894802b9aed4bc74a848d65b8a.jpg", "path": null, "size": 39.79, "width": 750, "height": 531}, "thumbnail": {"ext": ".jpg", "url": "/uploads/thumbnail_9a8fb9894802b9aed4bc74a848d65b8a_e67737bae8.jpg", "hash": "thumbnail_9a8fb9894802b9aed4bc74a848d65b8a_e67737bae8", "mime": "image/jpeg", "name": "thumbnail_9a8fb9894802b9aed4bc74a848d65b8a.jpg", "path": null, "size": 5.8, "width": 221, "height": 156}}	9a8fb9894802b9aed4bc74a848d65b8a_e67737bae8	.jpg	image/jpeg	67.55	/uploads/9a8fb9894802b9aed4bc74a848d65b8a_e67737bae8.jpg	\N	local	\N	3	3	2022-04-12 13:18:34.377+00	2022-04-12 13:18:34.392+00
31	940d147d4bbb83d10b40cf5cad62051a.jpg			1080	607	{"large": {"ext": ".jpg", "url": "/uploads/large_940d147d4bbb83d10b40cf5cad62051a_82aeb80575.jpg", "hash": "large_940d147d4bbb83d10b40cf5cad62051a_82aeb80575", "mime": "image/jpeg", "name": "large_940d147d4bbb83d10b40cf5cad62051a.jpg", "path": null, "size": 44.95, "width": 1000, "height": 562}, "small": {"ext": ".jpg", "url": "/uploads/small_940d147d4bbb83d10b40cf5cad62051a_82aeb80575.jpg", "hash": "small_940d147d4bbb83d10b40cf5cad62051a_82aeb80575", "mime": "image/jpeg", "name": "small_940d147d4bbb83d10b40cf5cad62051a.jpg", "path": null, "size": 17.53, "width": 500, "height": 281}, "medium": {"ext": ".jpg", "url": "/uploads/medium_940d147d4bbb83d10b40cf5cad62051a_82aeb80575.jpg", "hash": "medium_940d147d4bbb83d10b40cf5cad62051a_82aeb80575", "mime": "image/jpeg", "name": "medium_940d147d4bbb83d10b40cf5cad62051a.jpg", "path": null, "size": 30.28, "width": 750, "height": 422}, "thumbnail": {"ext": ".jpg", "url": "/uploads/thumbnail_940d147d4bbb83d10b40cf5cad62051a_82aeb80575.jpg", "hash": "thumbnail_940d147d4bbb83d10b40cf5cad62051a_82aeb80575", "mime": "image/jpeg", "name": "thumbnail_940d147d4bbb83d10b40cf5cad62051a.jpg", "path": null, "size": 6.73, "width": 245, "height": 138}}	940d147d4bbb83d10b40cf5cad62051a_82aeb80575	.jpg	image/jpeg	49.13	/uploads/940d147d4bbb83d10b40cf5cad62051a_82aeb80575.jpg	\N	local	\N	3	3	2022-04-12 13:18:34.389+00	2022-04-12 13:18:34.4+00
32	296137a7ecd6d51a79fe937c29e7ee95.jpg			1080	921	{"large": {"ext": ".jpg", "url": "/uploads/large_296137a7ecd6d51a79fe937c29e7ee95_c2aabf85f4.jpg", "hash": "large_296137a7ecd6d51a79fe937c29e7ee95_c2aabf85f4", "mime": "image/jpeg", "name": "large_296137a7ecd6d51a79fe937c29e7ee95.jpg", "path": null, "size": 103.25, "width": 1000, "height": 853}, "small": {"ext": ".jpg", "url": "/uploads/small_296137a7ecd6d51a79fe937c29e7ee95_c2aabf85f4.jpg", "hash": "small_296137a7ecd6d51a79fe937c29e7ee95_c2aabf85f4", "mime": "image/jpeg", "name": "small_296137a7ecd6d51a79fe937c29e7ee95.jpg", "path": null, "size": 40.96, "width": 500, "height": 426}, "medium": {"ext": ".jpg", "url": "/uploads/medium_296137a7ecd6d51a79fe937c29e7ee95_c2aabf85f4.jpg", "hash": "medium_296137a7ecd6d51a79fe937c29e7ee95_c2aabf85f4", "mime": "image/jpeg", "name": "medium_296137a7ecd6d51a79fe937c29e7ee95.jpg", "path": null, "size": 71.34, "width": 750, "height": 640}, "thumbnail": {"ext": ".jpg", "url": "/uploads/thumbnail_296137a7ecd6d51a79fe937c29e7ee95_c2aabf85f4.jpg", "hash": "thumbnail_296137a7ecd6d51a79fe937c29e7ee95_c2aabf85f4", "mime": "image/jpeg", "name": "thumbnail_296137a7ecd6d51a79fe937c29e7ee95.jpg", "path": null, "size": 9.63, "width": 183, "height": 156}}	296137a7ecd6d51a79fe937c29e7ee95_c2aabf85f4	.jpg	image/jpeg	110.06	/uploads/296137a7ecd6d51a79fe937c29e7ee95_c2aabf85f4.jpg	\N	local	\N	3	3	2022-04-12 13:20:24.925+00	2022-04-12 13:20:24.936+00
33	ac3072658d5864b7c76ebcc35ee1f9d7.jpg			1080	1528	{"large": {"ext": ".jpg", "url": "/uploads/large_ac3072658d5864b7c76ebcc35ee1f9d7_bd961995f7.jpg", "hash": "large_ac3072658d5864b7c76ebcc35ee1f9d7_bd961995f7", "mime": "image/jpeg", "name": "large_ac3072658d5864b7c76ebcc35ee1f9d7.jpg", "path": null, "size": 85.13, "width": 707, "height": 1000}, "small": {"ext": ".jpg", "url": "/uploads/small_ac3072658d5864b7c76ebcc35ee1f9d7_bd961995f7.jpg", "hash": "small_ac3072658d5864b7c76ebcc35ee1f9d7_bd961995f7", "mime": "image/jpeg", "name": "small_ac3072658d5864b7c76ebcc35ee1f9d7.jpg", "path": null, "size": 26.3, "width": 353, "height": 500}, "medium": {"ext": ".jpg", "url": "/uploads/medium_ac3072658d5864b7c76ebcc35ee1f9d7_bd961995f7.jpg", "hash": "medium_ac3072658d5864b7c76ebcc35ee1f9d7_bd961995f7", "mime": "image/jpeg", "name": "medium_ac3072658d5864b7c76ebcc35ee1f9d7.jpg", "path": null, "size": 50.78, "width": 530, "height": 750}, "thumbnail": {"ext": ".jpg", "url": "/uploads/thumbnail_ac3072658d5864b7c76ebcc35ee1f9d7_bd961995f7.jpg", "hash": "thumbnail_ac3072658d5864b7c76ebcc35ee1f9d7_bd961995f7", "mime": "image/jpeg", "name": "thumbnail_ac3072658d5864b7c76ebcc35ee1f9d7.jpg", "path": null, "size": 3.59, "width": 110, "height": 156}}	ac3072658d5864b7c76ebcc35ee1f9d7_bd961995f7	.jpg	image/jpeg	162.74	/uploads/ac3072658d5864b7c76ebcc35ee1f9d7_bd961995f7.jpg	\N	local	\N	3	3	2022-04-12 13:20:24.983+00	2022-04-12 13:20:24.992+00
34	7c4b1e1d773b28c0aaf8222b72beb5a6.jpg			1080	718	{"large": {"ext": ".jpg", "url": "/uploads/large_7c4b1e1d773b28c0aaf8222b72beb5a6_72368a446b.jpg", "hash": "large_7c4b1e1d773b28c0aaf8222b72beb5a6_72368a446b", "mime": "image/jpeg", "name": "large_7c4b1e1d773b28c0aaf8222b72beb5a6.jpg", "path": null, "size": 50.11, "width": 1000, "height": 665}, "small": {"ext": ".jpg", "url": "/uploads/small_7c4b1e1d773b28c0aaf8222b72beb5a6_72368a446b.jpg", "hash": "small_7c4b1e1d773b28c0aaf8222b72beb5a6_72368a446b", "mime": "image/jpeg", "name": "small_7c4b1e1d773b28c0aaf8222b72beb5a6.jpg", "path": null, "size": 17.64, "width": 500, "height": 332}, "medium": {"ext": ".jpg", "url": "/uploads/medium_7c4b1e1d773b28c0aaf8222b72beb5a6_72368a446b.jpg", "hash": "medium_7c4b1e1d773b28c0aaf8222b72beb5a6_72368a446b", "mime": "image/jpeg", "name": "medium_7c4b1e1d773b28c0aaf8222b72beb5a6.jpg", "path": null, "size": 32.88, "width": 750, "height": 499}, "thumbnail": {"ext": ".jpg", "url": "/uploads/thumbnail_7c4b1e1d773b28c0aaf8222b72beb5a6_72368a446b.jpg", "hash": "thumbnail_7c4b1e1d773b28c0aaf8222b72beb5a6_72368a446b", "mime": "image/jpeg", "name": "thumbnail_7c4b1e1d773b28c0aaf8222b72beb5a6.jpg", "path": null, "size": 5.87, "width": 235, "height": 156}}	7c4b1e1d773b28c0aaf8222b72beb5a6_72368a446b	.jpg	image/jpeg	54.70	/uploads/7c4b1e1d773b28c0aaf8222b72beb5a6_72368a446b.jpg	\N	local	\N	3	3	2022-04-12 13:23:36.554+00	2022-04-12 13:23:36.564+00
35	83cadbe66010393b576fad5110a3f7a5.jpg			1019	1019	{"large": {"ext": ".jpg", "url": "/uploads/large_83cadbe66010393b576fad5110a3f7a5_ae2b6f0800.jpg", "hash": "large_83cadbe66010393b576fad5110a3f7a5_ae2b6f0800", "mime": "image/jpeg", "name": "large_83cadbe66010393b576fad5110a3f7a5.jpg", "path": null, "size": 87.92, "width": 1000, "height": 1000}, "small": {"ext": ".jpg", "url": "/uploads/small_83cadbe66010393b576fad5110a3f7a5_ae2b6f0800.jpg", "hash": "small_83cadbe66010393b576fad5110a3f7a5_ae2b6f0800", "mime": "image/jpeg", "name": "small_83cadbe66010393b576fad5110a3f7a5.jpg", "path": null, "size": 31.78, "width": 500, "height": 500}, "medium": {"ext": ".jpg", "url": "/uploads/medium_83cadbe66010393b576fad5110a3f7a5_ae2b6f0800.jpg", "hash": "medium_83cadbe66010393b576fad5110a3f7a5_ae2b6f0800", "mime": "image/jpeg", "name": "medium_83cadbe66010393b576fad5110a3f7a5.jpg", "path": null, "size": 59.03, "width": 750, "height": 750}, "thumbnail": {"ext": ".jpg", "url": "/uploads/thumbnail_83cadbe66010393b576fad5110a3f7a5_ae2b6f0800.jpg", "hash": "thumbnail_83cadbe66010393b576fad5110a3f7a5_ae2b6f0800", "mime": "image/jpeg", "name": "thumbnail_83cadbe66010393b576fad5110a3f7a5.jpg", "path": null, "size": 4.83, "width": 156, "height": 156}}	83cadbe66010393b576fad5110a3f7a5_ae2b6f0800	.jpg	image/jpeg	88.90	/uploads/83cadbe66010393b576fad5110a3f7a5_ae2b6f0800.jpg	\N	local	\N	3	3	2022-04-12 13:23:36.608+00	2022-04-12 13:23:36.617+00
18	02bf1c2ee2f428081eee1717ae43cb73.jpg			1080	720	{"large": {"ext": ".jpg", "url": "/uploads/large_02bf1c2ee2f428081eee1717ae43cb73_b0313f3d4b.jpg", "hash": "large_02bf1c2ee2f428081eee1717ae43cb73_b0313f3d4b", "mime": "image/jpeg", "name": "large_02bf1c2ee2f428081eee1717ae43cb73.jpg", "path": null, "size": 77.48, "width": 1000, "height": 667}, "small": {"ext": ".jpg", "url": "/uploads/small_02bf1c2ee2f428081eee1717ae43cb73_b0313f3d4b.jpg", "hash": "small_02bf1c2ee2f428081eee1717ae43cb73_b0313f3d4b", "mime": "image/jpeg", "name": "small_02bf1c2ee2f428081eee1717ae43cb73.jpg", "path": null, "size": 29.16, "width": 500, "height": 333}, "medium": {"ext": ".jpg", "url": "/uploads/medium_02bf1c2ee2f428081eee1717ae43cb73_b0313f3d4b.jpg", "hash": "medium_02bf1c2ee2f428081eee1717ae43cb73_b0313f3d4b", "mime": "image/jpeg", "name": "medium_02bf1c2ee2f428081eee1717ae43cb73.jpg", "path": null, "size": 51.75, "width": 750, "height": 500}, "thumbnail": {"ext": ".jpg", "url": "/uploads/thumbnail_02bf1c2ee2f428081eee1717ae43cb73_b0313f3d4b.jpg", "hash": "thumbnail_02bf1c2ee2f428081eee1717ae43cb73_b0313f3d4b", "mime": "image/jpeg", "name": "thumbnail_02bf1c2ee2f428081eee1717ae43cb73.jpg", "path": null, "size": 10.23, "width": 234, "height": 156}}	02bf1c2ee2f428081eee1717ae43cb73_b0313f3d4b	.jpg	image/jpeg	84.15	/uploads/02bf1c2ee2f428081eee1717ae43cb73_b0313f3d4b.jpg	\N	local	\N	3	3	2022-04-12 12:56:48.11+00	2022-04-12 13:35:08.289+00
36	99e73fc1aa1ef57cf93b73bc834d91b6.jpg			1080	733	{"large": {"ext": ".jpg", "url": "/uploads/large_99e73fc1aa1ef57cf93b73bc834d91b6_e4ed73cc7b.jpg", "hash": "large_99e73fc1aa1ef57cf93b73bc834d91b6_e4ed73cc7b", "mime": "image/jpeg", "name": "large_99e73fc1aa1ef57cf93b73bc834d91b6.jpg", "path": null, "size": 76.46, "width": 1000, "height": 679}, "small": {"ext": ".jpg", "url": "/uploads/small_99e73fc1aa1ef57cf93b73bc834d91b6_e4ed73cc7b.jpg", "hash": "small_99e73fc1aa1ef57cf93b73bc834d91b6_e4ed73cc7b", "mime": "image/jpeg", "name": "small_99e73fc1aa1ef57cf93b73bc834d91b6.jpg", "path": null, "size": 27.95, "width": 500, "height": 339}, "medium": {"ext": ".jpg", "url": "/uploads/medium_99e73fc1aa1ef57cf93b73bc834d91b6_e4ed73cc7b.jpg", "hash": "medium_99e73fc1aa1ef57cf93b73bc834d91b6_e4ed73cc7b", "mime": "image/jpeg", "name": "medium_99e73fc1aa1ef57cf93b73bc834d91b6.jpg", "path": null, "size": 51.68, "width": 750, "height": 509}, "thumbnail": {"ext": ".jpg", "url": "/uploads/thumbnail_99e73fc1aa1ef57cf93b73bc834d91b6_e4ed73cc7b.jpg", "hash": "thumbnail_99e73fc1aa1ef57cf93b73bc834d91b6_e4ed73cc7b", "mime": "image/jpeg", "name": "thumbnail_99e73fc1aa1ef57cf93b73bc834d91b6.jpg", "path": null, "size": 8.44, "width": 230, "height": 156}}	99e73fc1aa1ef57cf93b73bc834d91b6_e4ed73cc7b	.jpg	image/jpeg	83.59	/uploads/99e73fc1aa1ef57cf93b73bc834d91b6_e4ed73cc7b.jpg	\N	local	\N	3	3	2022-04-12 13:40:05.437+00	2022-04-12 13:40:05.448+00
37	999a5486f9707017f759a478fcfbb229.jpg			1080	513	{"large": {"ext": ".jpg", "url": "/uploads/large_999a5486f9707017f759a478fcfbb229_e8a02713f8.jpg", "hash": "large_999a5486f9707017f759a478fcfbb229_e8a02713f8", "mime": "image/jpeg", "name": "large_999a5486f9707017f759a478fcfbb229.jpg", "path": null, "size": 18.85, "width": 1000, "height": 475}, "small": {"ext": ".jpg", "url": "/uploads/small_999a5486f9707017f759a478fcfbb229_e8a02713f8.jpg", "hash": "small_999a5486f9707017f759a478fcfbb229_e8a02713f8", "mime": "image/jpeg", "name": "small_999a5486f9707017f759a478fcfbb229.jpg", "path": null, "size": 7.41, "width": 500, "height": 237}, "medium": {"ext": ".jpg", "url": "/uploads/medium_999a5486f9707017f759a478fcfbb229_e8a02713f8.jpg", "hash": "medium_999a5486f9707017f759a478fcfbb229_e8a02713f8", "mime": "image/jpeg", "name": "medium_999a5486f9707017f759a478fcfbb229.jpg", "path": null, "size": 12.65, "width": 750, "height": 356}, "thumbnail": {"ext": ".jpg", "url": "/uploads/thumbnail_999a5486f9707017f759a478fcfbb229_e8a02713f8.jpg", "hash": "thumbnail_999a5486f9707017f759a478fcfbb229_e8a02713f8", "mime": "image/jpeg", "name": "thumbnail_999a5486f9707017f759a478fcfbb229.jpg", "path": null, "size": 3.06, "width": 245, "height": 116}}	999a5486f9707017f759a478fcfbb229_e8a02713f8	.jpg	image/jpeg	19.71	/uploads/999a5486f9707017f759a478fcfbb229_e8a02713f8.jpg	\N	local	\N	3	3	2022-04-12 13:42:55.948+00	2022-04-12 13:42:55.957+00
43	213e03b5bea8e4df466736829734802d.jpg			1080	497	{"large": {"ext": ".jpg", "url": "/uploads/large_213e03b5bea8e4df466736829734802d_d8e18bd8b9.jpg", "hash": "large_213e03b5bea8e4df466736829734802d_d8e18bd8b9", "mime": "image/jpeg", "name": "large_213e03b5bea8e4df466736829734802d.jpg", "path": null, "size": 982.02, "width": 1000, "height": 460}, "small": {"ext": ".jpg", "url": "/uploads/small_213e03b5bea8e4df466736829734802d_d8e18bd8b9.jpg", "hash": "small_213e03b5bea8e4df466736829734802d_d8e18bd8b9", "mime": "image/jpeg", "name": "small_213e03b5bea8e4df466736829734802d.jpg", "path": null, "size": 271.32, "width": 500, "height": 230}, "medium": {"ext": ".jpg", "url": "/uploads/medium_213e03b5bea8e4df466736829734802d_d8e18bd8b9.jpg", "hash": "medium_213e03b5bea8e4df466736829734802d_d8e18bd8b9", "mime": "image/jpeg", "name": "medium_213e03b5bea8e4df466736829734802d.jpg", "path": null, "size": 577.72, "width": 750, "height": 345}, "thumbnail": {"ext": ".jpg", "url": "/uploads/thumbnail_213e03b5bea8e4df466736829734802d_d8e18bd8b9.jpg", "hash": "thumbnail_213e03b5bea8e4df466736829734802d_d8e18bd8b9", "mime": "image/jpeg", "name": "thumbnail_213e03b5bea8e4df466736829734802d.jpg", "path": null, "size": 71.61, "width": 245, "height": 113}}	213e03b5bea8e4df466736829734802d_d8e18bd8b9	.jpg	image/jpeg	775.89	/uploads/213e03b5bea8e4df466736829734802d_d8e18bd8b9.jpg	\N	local	\N	3	3	2022-04-16 14:56:27.526+00	2022-04-16 14:56:27.54+00
44	100077995b4b32d5024d0fe6d16c90d8.jpg			1280	1777	{"large": {"ext": ".jpg", "url": "/uploads/large_100077995b4b32d5024d0fe6d16c90d8_522557382c.jpg", "hash": "large_100077995b4b32d5024d0fe6d16c90d8_522557382c", "mime": "image/jpeg", "name": "large_100077995b4b32d5024d0fe6d16c90d8.jpg", "path": null, "size": 72.09, "width": 720, "height": 1000}, "small": {"ext": ".jpg", "url": "/uploads/small_100077995b4b32d5024d0fe6d16c90d8_522557382c.jpg", "hash": "small_100077995b4b32d5024d0fe6d16c90d8_522557382c", "mime": "image/jpeg", "name": "small_100077995b4b32d5024d0fe6d16c90d8.jpg", "path": null, "size": 25.54, "width": 360, "height": 500}, "medium": {"ext": ".jpg", "url": "/uploads/medium_100077995b4b32d5024d0fe6d16c90d8_522557382c.jpg", "hash": "medium_100077995b4b32d5024d0fe6d16c90d8_522557382c", "mime": "image/jpeg", "name": "medium_100077995b4b32d5024d0fe6d16c90d8.jpg", "path": null, "size": 46.87, "width": 540, "height": 750}, "thumbnail": {"ext": ".jpg", "url": "/uploads/thumbnail_100077995b4b32d5024d0fe6d16c90d8_522557382c.jpg", "hash": "thumbnail_100077995b4b32d5024d0fe6d16c90d8_522557382c", "mime": "image/jpeg", "name": "thumbnail_100077995b4b32d5024d0fe6d16c90d8.jpg", "path": null, "size": 4.31, "width": 112, "height": 156}}	100077995b4b32d5024d0fe6d16c90d8_522557382c	.jpg	image/jpeg	159.31	/uploads/100077995b4b32d5024d0fe6d16c90d8_522557382c.jpg	\N	local	\N	3	3	2022-04-16 14:59:23.809+00	2022-04-16 14:59:23.817+00
45	a894487b7fba527a876182850bd57872.jpg			1080	720	{"large": {"ext": ".jpg", "url": "/uploads/large_a894487b7fba527a876182850bd57872_3059f0cdd9.jpg", "hash": "large_a894487b7fba527a876182850bd57872_3059f0cdd9", "mime": "image/jpeg", "name": "large_a894487b7fba527a876182850bd57872.jpg", "path": null, "size": 98.2, "width": 1000, "height": 667}, "small": {"ext": ".jpg", "url": "/uploads/small_a894487b7fba527a876182850bd57872_3059f0cdd9.jpg", "hash": "small_a894487b7fba527a876182850bd57872_3059f0cdd9", "mime": "image/jpeg", "name": "small_a894487b7fba527a876182850bd57872.jpg", "path": null, "size": 33.92, "width": 500, "height": 333}, "medium": {"ext": ".jpg", "url": "/uploads/medium_a894487b7fba527a876182850bd57872_3059f0cdd9.jpg", "hash": "medium_a894487b7fba527a876182850bd57872_3059f0cdd9", "mime": "image/jpeg", "name": "medium_a894487b7fba527a876182850bd57872.jpg", "path": null, "size": 64.37, "width": 750, "height": 500}, "thumbnail": {"ext": ".jpg", "url": "/uploads/thumbnail_a894487b7fba527a876182850bd57872_3059f0cdd9.jpg", "hash": "thumbnail_a894487b7fba527a876182850bd57872_3059f0cdd9", "mime": "image/jpeg", "name": "thumbnail_a894487b7fba527a876182850bd57872.jpg", "path": null, "size": 10.38, "width": 234, "height": 156}}	a894487b7fba527a876182850bd57872_3059f0cdd9	.jpg	image/jpeg	108.31	/uploads/a894487b7fba527a876182850bd57872_3059f0cdd9.jpg	\N	local	\N	3	3	2022-04-17 13:14:47.6+00	2022-04-17 13:14:47.614+00
46	c9adc3c63230c7591a544df386877633.jpg			1080	1527	{"large": {"ext": ".jpg", "url": "/uploads/large_c9adc3c63230c7591a544df386877633_1d3631269e.jpg", "hash": "large_c9adc3c63230c7591a544df386877633_1d3631269e", "mime": "image/jpeg", "name": "large_c9adc3c63230c7591a544df386877633.jpg", "path": null, "size": 146.48, "width": 707, "height": 1000}, "small": {"ext": ".jpg", "url": "/uploads/small_c9adc3c63230c7591a544df386877633_1d3631269e.jpg", "hash": "small_c9adc3c63230c7591a544df386877633_1d3631269e", "mime": "image/jpeg", "name": "small_c9adc3c63230c7591a544df386877633.jpg", "path": null, "size": 41.41, "width": 354, "height": 500}, "medium": {"ext": ".jpg", "url": "/uploads/medium_c9adc3c63230c7591a544df386877633_1d3631269e.jpg", "hash": "medium_c9adc3c63230c7591a544df386877633_1d3631269e", "mime": "image/jpeg", "name": "medium_c9adc3c63230c7591a544df386877633.jpg", "path": null, "size": 83.1, "width": 530, "height": 750}, "thumbnail": {"ext": ".jpg", "url": "/uploads/thumbnail_c9adc3c63230c7591a544df386877633_1d3631269e.jpg", "hash": "thumbnail_c9adc3c63230c7591a544df386877633_1d3631269e", "mime": "image/jpeg", "name": "thumbnail_c9adc3c63230c7591a544df386877633.jpg", "path": null, "size": 4.15, "width": 110, "height": 156}}	c9adc3c63230c7591a544df386877633_1d3631269e	.jpg	image/jpeg	301.09	/uploads/c9adc3c63230c7591a544df386877633_1d3631269e.jpg	\N	local	\N	3	3	2022-04-17 13:19:25.867+00	2022-04-17 13:19:25.877+00
47	8c3518de262ac1aed365053d87405e03.jpg			554	138	{"small": {"ext": ".jpg", "url": "/uploads/small_8c3518de262ac1aed365053d87405e03_3c62b6b3f8.jpg", "hash": "small_8c3518de262ac1aed365053d87405e03_3c62b6b3f8", "mime": "image/jpeg", "name": "small_8c3518de262ac1aed365053d87405e03.jpg", "path": null, "size": 60.5, "width": 500, "height": 125}, "thumbnail": {"ext": ".jpg", "url": "/uploads/thumbnail_8c3518de262ac1aed365053d87405e03_3c62b6b3f8.jpg", "hash": "thumbnail_8c3518de262ac1aed365053d87405e03_3c62b6b3f8", "mime": "image/jpeg", "name": "thumbnail_8c3518de262ac1aed365053d87405e03.jpg", "path": null, "size": 17.27, "width": 245, "height": 61}}	8c3518de262ac1aed365053d87405e03_3c62b6b3f8	.jpg	image/jpeg	50.34	/uploads/8c3518de262ac1aed365053d87405e03_3c62b6b3f8.jpg	\N	local	\N	3	3	2022-04-17 13:22:25.228+00	2022-04-17 13:22:25.236+00
48	b28e849e5345ad87f569ce3a002d2cdd.jpg			1080	608	{"large": {"ext": ".jpg", "url": "/uploads/large_b28e849e5345ad87f569ce3a002d2cdd_6371e379b5.jpg", "hash": "large_b28e849e5345ad87f569ce3a002d2cdd_6371e379b5", "mime": "image/jpeg", "name": "large_b28e849e5345ad87f569ce3a002d2cdd.jpg", "path": null, "size": 40.03, "width": 1000, "height": 563}, "small": {"ext": ".jpg", "url": "/uploads/small_b28e849e5345ad87f569ce3a002d2cdd_6371e379b5.jpg", "hash": "small_b28e849e5345ad87f569ce3a002d2cdd_6371e379b5", "mime": "image/jpeg", "name": "small_b28e849e5345ad87f569ce3a002d2cdd.jpg", "path": null, "size": 15.16, "width": 500, "height": 281}, "medium": {"ext": ".jpg", "url": "/uploads/medium_b28e849e5345ad87f569ce3a002d2cdd_6371e379b5.jpg", "hash": "medium_b28e849e5345ad87f569ce3a002d2cdd_6371e379b5", "mime": "image/jpeg", "name": "medium_b28e849e5345ad87f569ce3a002d2cdd.jpg", "path": null, "size": 26.87, "width": 750, "height": 422}, "thumbnail": {"ext": ".jpg", "url": "/uploads/thumbnail_b28e849e5345ad87f569ce3a002d2cdd_6371e379b5.jpg", "hash": "thumbnail_b28e849e5345ad87f569ce3a002d2cdd_6371e379b5", "mime": "image/jpeg", "name": "thumbnail_b28e849e5345ad87f569ce3a002d2cdd.jpg", "path": null, "size": 5.59, "width": 245, "height": 138}}	b28e849e5345ad87f569ce3a002d2cdd_6371e379b5	.jpg	image/jpeg	42.38	/uploads/b28e849e5345ad87f569ce3a002d2cdd_6371e379b5.jpg	\N	local	\N	3	3	2022-04-17 13:24:57.462+00	2022-04-17 13:24:57.471+00
49	6c34b0b83e5c6308504cd7d988c47ad7.jpg			1280	1706	{"large": {"ext": ".jpg", "url": "/uploads/large_6c34b0b83e5c6308504cd7d988c47ad7_c8451f3ae1.jpg", "hash": "large_6c34b0b83e5c6308504cd7d988c47ad7_c8451f3ae1", "mime": "image/jpeg", "name": "large_6c34b0b83e5c6308504cd7d988c47ad7.jpg", "path": null, "size": 70.05, "width": 750, "height": 1000}, "small": {"ext": ".jpg", "url": "/uploads/small_6c34b0b83e5c6308504cd7d988c47ad7_c8451f3ae1.jpg", "hash": "small_6c34b0b83e5c6308504cd7d988c47ad7_c8451f3ae1", "mime": "image/jpeg", "name": "small_6c34b0b83e5c6308504cd7d988c47ad7.jpg", "path": null, "size": 25.82, "width": 375, "height": 500}, "medium": {"ext": ".jpg", "url": "/uploads/medium_6c34b0b83e5c6308504cd7d988c47ad7_c8451f3ae1.jpg", "hash": "medium_6c34b0b83e5c6308504cd7d988c47ad7_c8451f3ae1", "mime": "image/jpeg", "name": "medium_6c34b0b83e5c6308504cd7d988c47ad7.jpg", "path": null, "size": 45.7, "width": 563, "height": 750}, "thumbnail": {"ext": ".jpg", "url": "/uploads/thumbnail_6c34b0b83e5c6308504cd7d988c47ad7_c8451f3ae1.jpg", "hash": "thumbnail_6c34b0b83e5c6308504cd7d988c47ad7_c8451f3ae1", "mime": "image/jpeg", "name": "thumbnail_6c34b0b83e5c6308504cd7d988c47ad7.jpg", "path": null, "size": 4.49, "width": 117, "height": 156}}	6c34b0b83e5c6308504cd7d988c47ad7_c8451f3ae1	.jpg	image/jpeg	143.70	/uploads/6c34b0b83e5c6308504cd7d988c47ad7_c8451f3ae1.jpg	\N	local	\N	3	3	2022-04-17 13:27:30.407+00	2022-04-17 13:27:30.425+00
50	12a3935ff3be2c28c68dc8474567b450.jpg			1080	628	{"large": {"ext": ".jpg", "url": "/uploads/large_12a3935ff3be2c28c68dc8474567b450_cc797a85fe.jpg", "hash": "large_12a3935ff3be2c28c68dc8474567b450_cc797a85fe", "mime": "image/jpeg", "name": "large_12a3935ff3be2c28c68dc8474567b450.jpg", "path": null, "size": 53.73, "width": 1000, "height": 581}, "small": {"ext": ".jpg", "url": "/uploads/small_12a3935ff3be2c28c68dc8474567b450_cc797a85fe.jpg", "hash": "small_12a3935ff3be2c28c68dc8474567b450_cc797a85fe", "mime": "image/jpeg", "name": "small_12a3935ff3be2c28c68dc8474567b450.jpg", "path": null, "size": 19.36, "width": 500, "height": 291}, "medium": {"ext": ".jpg", "url": "/uploads/medium_12a3935ff3be2c28c68dc8474567b450_cc797a85fe.jpg", "hash": "medium_12a3935ff3be2c28c68dc8474567b450_cc797a85fe", "mime": "image/jpeg", "name": "medium_12a3935ff3be2c28c68dc8474567b450.jpg", "path": null, "size": 35.21, "width": 750, "height": 436}, "thumbnail": {"ext": ".jpg", "url": "/uploads/thumbnail_12a3935ff3be2c28c68dc8474567b450_cc797a85fe.jpg", "hash": "thumbnail_12a3935ff3be2c28c68dc8474567b450_cc797a85fe", "mime": "image/jpeg", "name": "thumbnail_12a3935ff3be2c28c68dc8474567b450.jpg", "path": null, "size": 6.69, "width": 245, "height": 142}}	12a3935ff3be2c28c68dc8474567b450_cc797a85fe	.jpg	image/jpeg	58.13	/uploads/12a3935ff3be2c28c68dc8474567b450_cc797a85fe.jpg	\N	local	\N	3	3	2022-04-17 13:31:38.563+00	2022-04-17 13:31:38.573+00
51	d6b62db289b695539debaccaabced63f.jpg			820	491	{"small": {"ext": ".jpg", "url": "/uploads/small_d6b62db289b695539debaccaabced63f_1eeeb6f732.jpg", "hash": "small_d6b62db289b695539debaccaabced63f_1eeeb6f732", "mime": "image/jpeg", "name": "small_d6b62db289b695539debaccaabced63f.jpg", "path": null, "size": 12.44, "width": 500, "height": 299}, "medium": {"ext": ".jpg", "url": "/uploads/medium_d6b62db289b695539debaccaabced63f_1eeeb6f732.jpg", "hash": "medium_d6b62db289b695539debaccaabced63f_1eeeb6f732", "mime": "image/jpeg", "name": "medium_d6b62db289b695539debaccaabced63f.jpg", "path": null, "size": 22.05, "width": 750, "height": 449}, "thumbnail": {"ext": ".jpg", "url": "/uploads/thumbnail_d6b62db289b695539debaccaabced63f_1eeeb6f732.jpg", "hash": "thumbnail_d6b62db289b695539debaccaabced63f_1eeeb6f732", "mime": "image/jpeg", "name": "thumbnail_d6b62db289b695539debaccaabced63f.jpg", "path": null, "size": 4.6, "width": 245, "height": 147}}	d6b62db289b695539debaccaabced63f_1eeeb6f732	.jpg	image/jpeg	23.22	/uploads/d6b62db289b695539debaccaabced63f_1eeeb6f732.jpg	\N	local	\N	3	3	2022-04-17 13:36:37.445+00	2022-04-17 13:36:37.456+00
62	Group 434.png			780	190	{"small": {"ext": ".png", "url": "/uploads/small_Group_434_51eccd7bbd.png", "hash": "small_Group_434_51eccd7bbd", "mime": "image/png", "name": "small_Group 434.png", "path": null, "size": 25.37, "width": 500, "height": 122}, "medium": {"ext": ".png", "url": "/uploads/medium_Group_434_51eccd7bbd.png", "hash": "medium_Group_434_51eccd7bbd", "mime": "image/png", "name": "medium_Group 434.png", "path": null, "size": 41.89, "width": 750, "height": 183}, "thumbnail": {"ext": ".png", "url": "/uploads/thumbnail_Group_434_51eccd7bbd.png", "hash": "thumbnail_Group_434_51eccd7bbd", "mime": "image/png", "name": "thumbnail_Group 434.png", "path": null, "size": 10.5, "width": 245, "height": 60}}	Group_434_51eccd7bbd	.png	image/png	10.14	/uploads/Group_434_51eccd7bbd.png	\N	local	\N	1	1	2022-04-18 16:42:57.321+00	2022-04-18 16:42:57.33+00
52	9451c0380d836c99d96254438ab1a374.jpg			1000	750	{"small": {"ext": ".jpg", "url": "/uploads/small_9451c0380d836c99d96254438ab1a374_0e6d7a95f8.jpg", "hash": "small_9451c0380d836c99d96254438ab1a374_0e6d7a95f8", "mime": "image/jpeg", "name": "small_9451c0380d836c99d96254438ab1a374.jpg", "path": null, "size": 22.15, "width": 500, "height": 375}, "medium": {"ext": ".jpg", "url": "/uploads/medium_9451c0380d836c99d96254438ab1a374_0e6d7a95f8.jpg", "hash": "medium_9451c0380d836c99d96254438ab1a374_0e6d7a95f8", "mime": "image/jpeg", "name": "medium_9451c0380d836c99d96254438ab1a374.jpg", "path": null, "size": 42.46, "width": 750, "height": 563}, "thumbnail": {"ext": ".jpg", "url": "/uploads/thumbnail_9451c0380d836c99d96254438ab1a374_0e6d7a95f8.jpg", "hash": "thumbnail_9451c0380d836c99d96254438ab1a374_0e6d7a95f8", "mime": "image/jpeg", "name": "thumbnail_9451c0380d836c99d96254438ab1a374.jpg", "path": null, "size": 5.56, "width": 208, "height": 156}}	9451c0380d836c99d96254438ab1a374_0e6d7a95f8	.jpg	image/jpeg	62.90	/uploads/9451c0380d836c99d96254438ab1a374_0e6d7a95f8.jpg	\N	local	\N	3	3	2022-04-17 13:37:59.004+00	2022-04-17 13:37:59.016+00
53	0c1a1a9648b653ba53837fb496ed7ad4.jpg			1057	1440	{"large": {"ext": ".jpg", "url": "/uploads/large_0c1a1a9648b653ba53837fb496ed7ad4_d3be50f85a.jpg", "hash": "large_0c1a1a9648b653ba53837fb496ed7ad4_d3be50f85a", "mime": "image/jpeg", "name": "large_0c1a1a9648b653ba53837fb496ed7ad4.jpg", "path": null, "size": 40.39, "width": 734, "height": 1000}, "small": {"ext": ".jpg", "url": "/uploads/small_0c1a1a9648b653ba53837fb496ed7ad4_d3be50f85a.jpg", "hash": "small_0c1a1a9648b653ba53837fb496ed7ad4_d3be50f85a", "mime": "image/jpeg", "name": "small_0c1a1a9648b653ba53837fb496ed7ad4.jpg", "path": null, "size": 15.05, "width": 367, "height": 500}, "medium": {"ext": ".jpg", "url": "/uploads/medium_0c1a1a9648b653ba53837fb496ed7ad4_d3be50f85a.jpg", "hash": "medium_0c1a1a9648b653ba53837fb496ed7ad4_d3be50f85a", "mime": "image/jpeg", "name": "medium_0c1a1a9648b653ba53837fb496ed7ad4.jpg", "path": null, "size": 26.71, "width": 551, "height": 750}, "thumbnail": {"ext": ".jpg", "url": "/uploads/thumbnail_0c1a1a9648b653ba53837fb496ed7ad4_d3be50f85a.jpg", "hash": "thumbnail_0c1a1a9648b653ba53837fb496ed7ad4_d3be50f85a", "mime": "image/jpeg", "name": "thumbnail_0c1a1a9648b653ba53837fb496ed7ad4.jpg", "path": null, "size": 3.41, "width": 115, "height": 156}}	0c1a1a9648b653ba53837fb496ed7ad4_d3be50f85a	.jpg	image/jpeg	63.78	/uploads/0c1a1a9648b653ba53837fb496ed7ad4_d3be50f85a.jpg	\N	local	\N	3	3	2022-04-17 13:39:37.704+00	2022-04-17 13:39:37.717+00
54	0278492b490d33cedecdb8a163c6a224.jpg			746	1303	{"large": {"ext": ".jpg", "url": "/uploads/large_0278492b490d33cedecdb8a163c6a224_b670483a2a.jpg", "hash": "large_0278492b490d33cedecdb8a163c6a224_b670483a2a", "mime": "image/jpeg", "name": "large_0278492b490d33cedecdb8a163c6a224.jpg", "path": null, "size": 35.01, "width": 573, "height": 1000}, "small": {"ext": ".jpg", "url": "/uploads/small_0278492b490d33cedecdb8a163c6a224_b670483a2a.jpg", "hash": "small_0278492b490d33cedecdb8a163c6a224_b670483a2a", "mime": "image/jpeg", "name": "small_0278492b490d33cedecdb8a163c6a224.jpg", "path": null, "size": 13.66, "width": 286, "height": 500}, "medium": {"ext": ".jpg", "url": "/uploads/medium_0278492b490d33cedecdb8a163c6a224_b670483a2a.jpg", "hash": "medium_0278492b490d33cedecdb8a163c6a224_b670483a2a", "mime": "image/jpeg", "name": "medium_0278492b490d33cedecdb8a163c6a224.jpg", "path": null, "size": 23.39, "width": 429, "height": 750}, "thumbnail": {"ext": ".jpg", "url": "/uploads/thumbnail_0278492b490d33cedecdb8a163c6a224_b670483a2a.jpg", "hash": "thumbnail_0278492b490d33cedecdb8a163c6a224_b670483a2a", "mime": "image/jpeg", "name": "thumbnail_0278492b490d33cedecdb8a163c6a224.jpg", "path": null, "size": 3.01, "width": 89, "height": 156}}	0278492b490d33cedecdb8a163c6a224_b670483a2a	.jpg	image/jpeg	46.84	/uploads/0278492b490d33cedecdb8a163c6a224_b670483a2a.jpg	\N	local	\N	3	3	2022-04-17 13:40:30.805+00	2022-04-17 13:40:30.815+00
55	b44ae6ca9afd35559d2210776ef3bb3b.jpg			1080	720	{"large": {"ext": ".jpg", "url": "/uploads/large_b44ae6ca9afd35559d2210776ef3bb3b_0e81ed56d0.jpg", "hash": "large_b44ae6ca9afd35559d2210776ef3bb3b_0e81ed56d0", "mime": "image/jpeg", "name": "large_b44ae6ca9afd35559d2210776ef3bb3b.jpg", "path": null, "size": 28.42, "width": 1000, "height": 667}, "small": {"ext": ".jpg", "url": "/uploads/small_b44ae6ca9afd35559d2210776ef3bb3b_0e81ed56d0.jpg", "hash": "small_b44ae6ca9afd35559d2210776ef3bb3b_0e81ed56d0", "mime": "image/jpeg", "name": "small_b44ae6ca9afd35559d2210776ef3bb3b.jpg", "path": null, "size": 10.39, "width": 500, "height": 333}, "medium": {"ext": ".jpg", "url": "/uploads/medium_b44ae6ca9afd35559d2210776ef3bb3b_0e81ed56d0.jpg", "hash": "medium_b44ae6ca9afd35559d2210776ef3bb3b_0e81ed56d0", "mime": "image/jpeg", "name": "medium_b44ae6ca9afd35559d2210776ef3bb3b.jpg", "path": null, "size": 18.82, "width": 750, "height": 500}, "thumbnail": {"ext": ".jpg", "url": "/uploads/thumbnail_b44ae6ca9afd35559d2210776ef3bb3b_0e81ed56d0.jpg", "hash": "thumbnail_b44ae6ca9afd35559d2210776ef3bb3b_0e81ed56d0", "mime": "image/jpeg", "name": "thumbnail_b44ae6ca9afd35559d2210776ef3bb3b.jpg", "path": null, "size": 3.53, "width": 234, "height": 156}}	b44ae6ca9afd35559d2210776ef3bb3b_0e81ed56d0	.jpg	image/jpeg	28.86	/uploads/b44ae6ca9afd35559d2210776ef3bb3b_0e81ed56d0.jpg	\N	local	\N	3	3	2022-04-17 13:43:56.627+00	2022-04-17 13:43:56.637+00
56	25d32d61416187deb453590ecc37bc7c.jpg			720	480	{"small": {"ext": ".jpg", "url": "/uploads/small_25d32d61416187deb453590ecc37bc7c_98f85c59da.jpg", "hash": "small_25d32d61416187deb453590ecc37bc7c_98f85c59da", "mime": "image/jpeg", "name": "small_25d32d61416187deb453590ecc37bc7c.jpg", "path": null, "size": 21.59, "width": 500, "height": 333}, "thumbnail": {"ext": ".jpg", "url": "/uploads/thumbnail_25d32d61416187deb453590ecc37bc7c_98f85c59da.jpg", "hash": "thumbnail_25d32d61416187deb453590ecc37bc7c_98f85c59da", "mime": "image/jpeg", "name": "thumbnail_25d32d61416187deb453590ecc37bc7c.jpg", "path": null, "size": 7.25, "width": 234, "height": 156}}	25d32d61416187deb453590ecc37bc7c_98f85c59da	.jpg	image/jpeg	32.81	/uploads/25d32d61416187deb453590ecc37bc7c_98f85c59da.jpg	\N	local	\N	3	3	2022-04-17 13:45:28.624+00	2022-04-17 13:45:28.634+00
63	Group 435.png			780	190	{"small": {"ext": ".png", "url": "/uploads/small_Group_435_fe2326b362.png", "hash": "small_Group_435_fe2326b362", "mime": "image/png", "name": "small_Group 435.png", "path": null, "size": 25.78, "width": 500, "height": 122}, "medium": {"ext": ".png", "url": "/uploads/medium_Group_435_fe2326b362.png", "hash": "medium_Group_435_fe2326b362", "mime": "image/png", "name": "medium_Group 435.png", "path": null, "size": 42.84, "width": 750, "height": 183}, "thumbnail": {"ext": ".png", "url": "/uploads/thumbnail_Group_435_fe2326b362.png", "hash": "thumbnail_Group_435_fe2326b362", "mime": "image/png", "name": "thumbnail_Group 435.png", "path": null, "size": 10.55, "width": 245, "height": 60}}	Group_435_fe2326b362	.png	image/png	10.53	/uploads/Group_435_fe2326b362.png	\N	local	\N	1	1	2022-04-18 16:43:09.686+00	2022-04-18 16:43:09.694+00
57	5621833b4065e465866447265b25880d.jpg			1280	853	{"large": {"ext": ".jpg", "url": "/uploads/large_5621833b4065e465866447265b25880d_9e7cf8239e.jpg", "hash": "large_5621833b4065e465866447265b25880d_9e7cf8239e", "mime": "image/jpeg", "name": "large_5621833b4065e465866447265b25880d.jpg", "path": null, "size": 58.68, "width": 1000, "height": 666}, "small": {"ext": ".jpg", "url": "/uploads/small_5621833b4065e465866447265b25880d_9e7cf8239e.jpg", "hash": "small_5621833b4065e465866447265b25880d_9e7cf8239e", "mime": "image/jpeg", "name": "small_5621833b4065e465866447265b25880d.jpg", "path": null, "size": 21.19, "width": 500, "height": 333}, "medium": {"ext": ".jpg", "url": "/uploads/medium_5621833b4065e465866447265b25880d_9e7cf8239e.jpg", "hash": "medium_5621833b4065e465866447265b25880d_9e7cf8239e", "mime": "image/jpeg", "name": "medium_5621833b4065e465866447265b25880d.jpg", "path": null, "size": 38.85, "width": 750, "height": 500}, "thumbnail": {"ext": ".jpg", "url": "/uploads/thumbnail_5621833b4065e465866447265b25880d_9e7cf8239e.jpg", "hash": "thumbnail_5621833b4065e465866447265b25880d_9e7cf8239e", "mime": "image/jpeg", "name": "thumbnail_5621833b4065e465866447265b25880d.jpg", "path": null, "size": 7, "width": 234, "height": 156}}	5621833b4065e465866447265b25880d_9e7cf8239e	.jpg	image/jpeg	62.27	/uploads/5621833b4065e465866447265b25880d_9e7cf8239e.jpg	\N	local	\N	3	3	2022-04-17 14:01:02.859+00	2022-04-17 14:01:02.869+00
58	Group 432.png			780	190	{"small": {"ext": ".png", "url": "/uploads/small_Group_432_720792ebbe.png", "hash": "small_Group_432_720792ebbe", "mime": "image/png", "name": "small_Group 432.png", "path": null, "size": 26.64, "width": 500, "height": 122}, "medium": {"ext": ".png", "url": "/uploads/medium_Group_432_720792ebbe.png", "hash": "medium_Group_432_720792ebbe", "mime": "image/png", "name": "medium_Group 432.png", "path": null, "size": 44.77, "width": 750, "height": 183}, "thumbnail": {"ext": ".png", "url": "/uploads/thumbnail_Group_432_720792ebbe.png", "hash": "thumbnail_Group_432_720792ebbe", "mime": "image/png", "name": "thumbnail_Group 432.png", "path": null, "size": 10.7, "width": 245, "height": 60}}	Group_432_720792ebbe	.png	image/png	11.19	/uploads/Group_432_720792ebbe.png	\N	local	\N	1	1	2022-04-18 16:32:09.5+00	2022-04-18 16:32:09.511+00
59	Pexels Photo by Ron Lach.png			360	504	{"small": {"ext": ".png", "url": "/uploads/small_Pexels_Photo_by_Ron_Lach_21a1390385.png", "hash": "small_Pexels_Photo_by_Ron_Lach_21a1390385", "mime": "image/png", "name": "small_Pexels Photo by Ron Lach.png", "path": null, "size": 184.76, "width": 357, "height": 500}, "thumbnail": {"ext": ".png", "url": "/uploads/thumbnail_Pexels_Photo_by_Ron_Lach_21a1390385.png", "hash": "thumbnail_Pexels_Photo_by_Ron_Lach_21a1390385", "mime": "image/png", "name": "thumbnail_Pexels Photo by Ron Lach.png", "path": null, "size": 23.42, "width": 111, "height": 156}}	Pexels_Photo_by_Ron_Lach_21a1390385	.png	image/png	127.38	/uploads/Pexels_Photo_by_Ron_Lach_21a1390385.png	\N	local	\N	1	1	2022-04-18 16:38:02.566+00	2022-04-18 16:38:02.576+00
60	Group 429.png			780	190	{"small": {"ext": ".png", "url": "/uploads/small_Group_429_2169a6ca20.png", "hash": "small_Group_429_2169a6ca20", "mime": "image/png", "name": "small_Group 429.png", "path": null, "size": 25.42, "width": 500, "height": 122}, "medium": {"ext": ".png", "url": "/uploads/medium_Group_429_2169a6ca20.png", "hash": "medium_Group_429_2169a6ca20", "mime": "image/png", "name": "medium_Group 429.png", "path": null, "size": 41.96, "width": 750, "height": 183}, "thumbnail": {"ext": ".png", "url": "/uploads/thumbnail_Group_429_2169a6ca20.png", "hash": "thumbnail_Group_429_2169a6ca20", "mime": "image/png", "name": "thumbnail_Group 429.png", "path": null, "size": 10.44, "width": 245, "height": 60}}	Group_429_2169a6ca20	.png	image/png	10.18	/uploads/Group_429_2169a6ca20.png	\N	local	\N	1	1	2022-04-18 16:42:36.451+00	2022-04-18 16:42:36.466+00
61	Group 433.png			780	190	{"small": {"ext": ".png", "url": "/uploads/small_Group_433_962dfac9c6.png", "hash": "small_Group_433_962dfac9c6", "mime": "image/png", "name": "small_Group 433.png", "path": null, "size": 25.67, "width": 500, "height": 122}, "medium": {"ext": ".png", "url": "/uploads/medium_Group_433_962dfac9c6.png", "hash": "medium_Group_433_962dfac9c6", "mime": "image/png", "name": "medium_Group 433.png", "path": null, "size": 42.55, "width": 750, "height": 183}, "thumbnail": {"ext": ".png", "url": "/uploads/thumbnail_Group_433_962dfac9c6.png", "hash": "thumbnail_Group_433_962dfac9c6", "mime": "image/png", "name": "thumbnail_Group 433.png", "path": null, "size": 10.45, "width": 245, "height": 60}}	Group_433_962dfac9c6	.png	image/png	10.44	/uploads/Group_433_962dfac9c6.png	\N	local	\N	1	1	2022-04-18 16:42:47.369+00	2022-04-18 16:42:47.377+00
64	1.png			2434	48	{"large": {"ext": ".png", "url": "/uploads/large_1_3054e7cd2b.png", "hash": "large_1_3054e7cd2b", "mime": "image/png", "name": "large_1.png", "path": null, "size": 25.32, "width": 1000, "height": 20}, "small": {"ext": ".png", "url": "/uploads/small_1_3054e7cd2b.png", "hash": "small_1_3054e7cd2b", "mime": "image/png", "name": "small_1.png", "path": null, "size": 7.84, "width": 500, "height": 10}, "medium": {"ext": ".png", "url": "/uploads/medium_1_3054e7cd2b.png", "hash": "medium_1_3054e7cd2b", "mime": "image/png", "name": "medium_1.png", "path": null, "size": 14.6, "width": 750, "height": 15}, "thumbnail": {"ext": ".png", "url": "/uploads/thumbnail_1_3054e7cd2b.png", "hash": "thumbnail_1_3054e7cd2b", "mime": "image/png", "name": "thumbnail_1.png", "path": null, "size": 2.2, "width": 245, "height": 5}}	1_3054e7cd2b	.png	image/png	9.47	/uploads/1_3054e7cd2b.png	\N	local	\N	1	1	2022-04-19 17:44:08.305+00	2022-04-19 17:44:08.314+00
65	2.png			1251	76	{"large": {"ext": ".png", "url": "/uploads/large_2_a9af3c9cd9.png", "hash": "large_2_a9af3c9cd9", "mime": "image/png", "name": "large_2.png", "path": null, "size": 48.7, "width": 1000, "height": 61}, "small": {"ext": ".png", "url": "/uploads/small_2_a9af3c9cd9.png", "hash": "small_2_a9af3c9cd9", "mime": "image/png", "name": "small_2.png", "path": null, "size": 18.69, "width": 500, "height": 30}, "medium": {"ext": ".png", "url": "/uploads/medium_2_a9af3c9cd9.png", "hash": "medium_2_a9af3c9cd9", "mime": "image/png", "name": "medium_2.png", "path": null, "size": 33.47, "width": 750, "height": 46}, "thumbnail": {"ext": ".png", "url": "/uploads/thumbnail_2_a9af3c9cd9.png", "hash": "thumbnail_2_a9af3c9cd9", "mime": "image/png", "name": "thumbnail_2.png", "path": null, "size": 6.15, "width": 245, "height": 15}}	2_a9af3c9cd9	.png	image/png	12.09	/uploads/2_a9af3c9cd9.png	\N	local	\N	1	1	2022-04-19 17:44:15.943+00	2022-04-19 17:44:15.952+00
66	3.png			336	336	{"thumbnail": {"ext": ".png", "url": "/uploads/thumbnail_3_7b2cb44abf.png", "hash": "thumbnail_3_7b2cb44abf", "mime": "image/png", "name": "thumbnail_3.png", "path": null, "size": 50.65, "width": 156, "height": 156}}	3_7b2cb44abf	.png	image/png	109.87	/uploads/3_7b2cb44abf.png	\N	local	\N	1	1	2022-04-19 17:44:22.299+00	2022-04-19 17:44:22.308+00
67	5bf6b659693961cbb155c8204b8f2fc4.jpg			1280	552	{"large": {"ext": ".jpg", "url": "/uploads/large_5bf6b659693961cbb155c8204b8f2fc4_bdf979b52d.jpg", "hash": "large_5bf6b659693961cbb155c8204b8f2fc4_bdf979b52d", "mime": "image/jpeg", "name": "large_5bf6b659693961cbb155c8204b8f2fc4.jpg", "path": null, "size": 449.13, "width": 1000, "height": 431}, "small": {"ext": ".jpg", "url": "/uploads/small_5bf6b659693961cbb155c8204b8f2fc4_bdf979b52d.jpg", "hash": "small_5bf6b659693961cbb155c8204b8f2fc4_bdf979b52d", "mime": "image/jpeg", "name": "small_5bf6b659693961cbb155c8204b8f2fc4.jpg", "path": null, "size": 136.93, "width": 500, "height": 216}, "medium": {"ext": ".jpg", "url": "/uploads/medium_5bf6b659693961cbb155c8204b8f2fc4_bdf979b52d.jpg", "hash": "medium_5bf6b659693961cbb155c8204b8f2fc4_bdf979b52d", "mime": "image/jpeg", "name": "medium_5bf6b659693961cbb155c8204b8f2fc4.jpg", "path": null, "size": 274.78, "width": 750, "height": 323}, "thumbnail": {"ext": ".jpg", "url": "/uploads/thumbnail_5bf6b659693961cbb155c8204b8f2fc4_bdf979b52d.jpg", "hash": "thumbnail_5bf6b659693961cbb155c8204b8f2fc4_bdf979b52d", "mime": "image/jpeg", "name": "thumbnail_5bf6b659693961cbb155c8204b8f2fc4.jpg", "path": null, "size": 40.51, "width": 245, "height": 106}}	5bf6b659693961cbb155c8204b8f2fc4_bdf979b52d	.jpg	image/jpeg	439.60	/uploads/5bf6b659693961cbb155c8204b8f2fc4_bdf979b52d.jpg	\N	local	\N	3	3	2022-04-20 13:54:23.486+00	2022-04-20 13:54:23.5+00
68	b9be040ce792a93441f2012a2918f376.jpg			1080	810	{"large": {"ext": ".jpg", "url": "/uploads/large_b9be040ce792a93441f2012a2918f376_521a00c837.jpg", "hash": "large_b9be040ce792a93441f2012a2918f376_521a00c837", "mime": "image/jpeg", "name": "large_b9be040ce792a93441f2012a2918f376.jpg", "path": null, "size": 36.12, "width": 1000, "height": 750}, "small": {"ext": ".jpg", "url": "/uploads/small_b9be040ce792a93441f2012a2918f376_521a00c837.jpg", "hash": "small_b9be040ce792a93441f2012a2918f376_521a00c837", "mime": "image/jpeg", "name": "small_b9be040ce792a93441f2012a2918f376.jpg", "path": null, "size": 12.93, "width": 500, "height": 375}, "medium": {"ext": ".jpg", "url": "/uploads/medium_b9be040ce792a93441f2012a2918f376_521a00c837.jpg", "hash": "medium_b9be040ce792a93441f2012a2918f376_521a00c837", "mime": "image/jpeg", "name": "medium_b9be040ce792a93441f2012a2918f376.jpg", "path": null, "size": 23.78, "width": 750, "height": 563}, "thumbnail": {"ext": ".jpg", "url": "/uploads/thumbnail_b9be040ce792a93441f2012a2918f376_521a00c837.jpg", "hash": "thumbnail_b9be040ce792a93441f2012a2918f376_521a00c837", "mime": "image/jpeg", "name": "thumbnail_b9be040ce792a93441f2012a2918f376.jpg", "path": null, "size": 3.78, "width": 208, "height": 156}}	b9be040ce792a93441f2012a2918f376_521a00c837	.jpg	image/jpeg	37.75	/uploads/b9be040ce792a93441f2012a2918f376_521a00c837.jpg	\N	local	\N	3	3	2022-04-20 13:57:24.442+00	2022-04-20 13:57:24.453+00
69	505f6851d4704d12e6cfa35472688ee5.jpg			1080	2880	{"large": {"ext": ".jpg", "url": "/uploads/large_505f6851d4704d12e6cfa35472688ee5_692dba942d.jpg", "hash": "large_505f6851d4704d12e6cfa35472688ee5_692dba942d", "mime": "image/jpeg", "name": "large_505f6851d4704d12e6cfa35472688ee5.jpg", "path": null, "size": 60.16, "width": 375, "height": 1000}, "small": {"ext": ".jpg", "url": "/uploads/small_505f6851d4704d12e6cfa35472688ee5_692dba942d.jpg", "hash": "small_505f6851d4704d12e6cfa35472688ee5_692dba942d", "mime": "image/jpeg", "name": "small_505f6851d4704d12e6cfa35472688ee5.jpg", "path": null, "size": 20.36, "width": 188, "height": 500}, "medium": {"ext": ".jpg", "url": "/uploads/medium_505f6851d4704d12e6cfa35472688ee5_692dba942d.jpg", "hash": "medium_505f6851d4704d12e6cfa35472688ee5_692dba942d", "mime": "image/jpeg", "name": "medium_505f6851d4704d12e6cfa35472688ee5.jpg", "path": null, "size": 38.93, "width": 281, "height": 750}, "thumbnail": {"ext": ".jpg", "url": "/uploads/thumbnail_505f6851d4704d12e6cfa35472688ee5_692dba942d.jpg", "hash": "thumbnail_505f6851d4704d12e6cfa35472688ee5_692dba942d", "mime": "image/jpeg", "name": "thumbnail_505f6851d4704d12e6cfa35472688ee5.jpg", "path": null, "size": 3.46, "width": 59, "height": 156}}	505f6851d4704d12e6cfa35472688ee5_692dba942d	.jpg	image/jpeg	296.92	/uploads/505f6851d4704d12e6cfa35472688ee5_692dba942d.jpg	\N	local	\N	3	3	2022-04-20 13:59:22.483+00	2022-04-20 13:59:22.495+00
70	23e6193a0ed406c6407b82007422bacc.jpg			1080	648	{"large": {"ext": ".jpg", "url": "/uploads/large_23e6193a0ed406c6407b82007422bacc_3f48a0dc86.jpg", "hash": "large_23e6193a0ed406c6407b82007422bacc_3f48a0dc86", "mime": "image/jpeg", "name": "large_23e6193a0ed406c6407b82007422bacc.jpg", "path": null, "size": 82.13, "width": 1000, "height": 600}, "small": {"ext": ".jpg", "url": "/uploads/small_23e6193a0ed406c6407b82007422bacc_3f48a0dc86.jpg", "hash": "small_23e6193a0ed406c6407b82007422bacc_3f48a0dc86", "mime": "image/jpeg", "name": "small_23e6193a0ed406c6407b82007422bacc.jpg", "path": null, "size": 25.49, "width": 500, "height": 300}, "medium": {"ext": ".jpg", "url": "/uploads/medium_23e6193a0ed406c6407b82007422bacc_3f48a0dc86.jpg", "hash": "medium_23e6193a0ed406c6407b82007422bacc_3f48a0dc86", "mime": "image/jpeg", "name": "medium_23e6193a0ed406c6407b82007422bacc.jpg", "path": null, "size": 49.49, "width": 750, "height": 450}, "thumbnail": {"ext": ".jpg", "url": "/uploads/thumbnail_23e6193a0ed406c6407b82007422bacc_3f48a0dc86.jpg", "hash": "thumbnail_23e6193a0ed406c6407b82007422bacc_3f48a0dc86", "mime": "image/jpeg", "name": "thumbnail_23e6193a0ed406c6407b82007422bacc.jpg", "path": null, "size": 8.73, "width": 245, "height": 147}}	23e6193a0ed406c6407b82007422bacc_3f48a0dc86	.jpg	image/jpeg	94.95	/uploads/23e6193a0ed406c6407b82007422bacc_3f48a0dc86.jpg	\N	local	\N	3	3	2022-04-20 14:00:57.797+00	2022-04-20 14:00:57.807+00
71	148e3518f3b0b4b607bbaec2f6bed700.jpg			1080	527	{"large": {"ext": ".jpg", "url": "/uploads/large_148e3518f3b0b4b607bbaec2f6bed700_56eaff0bb6.jpg", "hash": "large_148e3518f3b0b4b607bbaec2f6bed700_56eaff0bb6", "mime": "image/jpeg", "name": "large_148e3518f3b0b4b607bbaec2f6bed700.jpg", "path": null, "size": 431.26, "width": 1000, "height": 488}, "small": {"ext": ".jpg", "url": "/uploads/small_148e3518f3b0b4b607bbaec2f6bed700_56eaff0bb6.jpg", "hash": "small_148e3518f3b0b4b607bbaec2f6bed700_56eaff0bb6", "mime": "image/jpeg", "name": "small_148e3518f3b0b4b607bbaec2f6bed700.jpg", "path": null, "size": 117.24, "width": 500, "height": 244}, "medium": {"ext": ".jpg", "url": "/uploads/medium_148e3518f3b0b4b607bbaec2f6bed700_56eaff0bb6.jpg", "hash": "medium_148e3518f3b0b4b607bbaec2f6bed700_56eaff0bb6", "mime": "image/jpeg", "name": "medium_148e3518f3b0b4b607bbaec2f6bed700.jpg", "path": null, "size": 247.75, "width": 750, "height": 366}, "thumbnail": {"ext": ".jpg", "url": "/uploads/thumbnail_148e3518f3b0b4b607bbaec2f6bed700_56eaff0bb6.jpg", "hash": "thumbnail_148e3518f3b0b4b607bbaec2f6bed700_56eaff0bb6", "mime": "image/jpeg", "name": "thumbnail_148e3518f3b0b4b607bbaec2f6bed700.jpg", "path": null, "size": 37.49, "width": 245, "height": 120}}	148e3518f3b0b4b607bbaec2f6bed700_56eaff0bb6	.jpg	image/jpeg	393.08	/uploads/148e3518f3b0b4b607bbaec2f6bed700_56eaff0bb6.jpg	\N	local	\N	3	3	2022-04-20 14:05:30.017+00	2022-04-20 14:05:30.032+00
72	bf798e791b379717be317739a77261e3.jpg			1080	608	{"large": {"ext": ".jpg", "url": "/uploads/large_bf798e791b379717be317739a77261e3_538dec5993.jpg", "hash": "large_bf798e791b379717be317739a77261e3_538dec5993", "mime": "image/jpeg", "name": "large_bf798e791b379717be317739a77261e3.jpg", "path": null, "size": 77.25, "width": 1000, "height": 563}, "small": {"ext": ".jpg", "url": "/uploads/small_bf798e791b379717be317739a77261e3_538dec5993.jpg", "hash": "small_bf798e791b379717be317739a77261e3_538dec5993", "mime": "image/jpeg", "name": "small_bf798e791b379717be317739a77261e3.jpg", "path": null, "size": 24.29, "width": 500, "height": 281}, "medium": {"ext": ".jpg", "url": "/uploads/medium_bf798e791b379717be317739a77261e3_538dec5993.jpg", "hash": "medium_bf798e791b379717be317739a77261e3_538dec5993", "mime": "image/jpeg", "name": "medium_bf798e791b379717be317739a77261e3.jpg", "path": null, "size": 48.52, "width": 750, "height": 422}, "thumbnail": {"ext": ".jpg", "url": "/uploads/thumbnail_bf798e791b379717be317739a77261e3_538dec5993.jpg", "hash": "thumbnail_bf798e791b379717be317739a77261e3_538dec5993", "mime": "image/jpeg", "name": "thumbnail_bf798e791b379717be317739a77261e3.jpg", "path": null, "size": 7.37, "width": 245, "height": 138}}	bf798e791b379717be317739a77261e3_538dec5993	.jpg	image/jpeg	84.98	/uploads/bf798e791b379717be317739a77261e3_538dec5993.jpg	\N	local	\N	3	3	2022-04-20 14:12:52.068+00	2022-04-20 14:12:52.077+00
73	969a6099dec0dba1630cd166c638bda9.jpg			1080	608	{"large": {"ext": ".jpg", "url": "/uploads/large_969a6099dec0dba1630cd166c638bda9_07e6e86d79.jpg", "hash": "large_969a6099dec0dba1630cd166c638bda9_07e6e86d79", "mime": "image/jpeg", "name": "large_969a6099dec0dba1630cd166c638bda9.jpg", "path": null, "size": 44.28, "width": 1000, "height": 563}, "small": {"ext": ".jpg", "url": "/uploads/small_969a6099dec0dba1630cd166c638bda9_07e6e86d79.jpg", "hash": "small_969a6099dec0dba1630cd166c638bda9_07e6e86d79", "mime": "image/jpeg", "name": "small_969a6099dec0dba1630cd166c638bda9.jpg", "path": null, "size": 14.24, "width": 500, "height": 281}, "medium": {"ext": ".jpg", "url": "/uploads/medium_969a6099dec0dba1630cd166c638bda9_07e6e86d79.jpg", "hash": "medium_969a6099dec0dba1630cd166c638bda9_07e6e86d79", "mime": "image/jpeg", "name": "medium_969a6099dec0dba1630cd166c638bda9.jpg", "path": null, "size": 27.66, "width": 750, "height": 422}, "thumbnail": {"ext": ".jpg", "url": "/uploads/thumbnail_969a6099dec0dba1630cd166c638bda9_07e6e86d79.jpg", "hash": "thumbnail_969a6099dec0dba1630cd166c638bda9_07e6e86d79", "mime": "image/jpeg", "name": "thumbnail_969a6099dec0dba1630cd166c638bda9.jpg", "path": null, "size": 4.85, "width": 245, "height": 138}}	969a6099dec0dba1630cd166c638bda9_07e6e86d79	.jpg	image/jpeg	48.45	/uploads/969a6099dec0dba1630cd166c638bda9_07e6e86d79.jpg	\N	local	\N	3	3	2022-04-20 14:14:28.055+00	2022-04-20 14:14:28.065+00
74	b04d8a69e0844839b1dab8dfeb2bcf84.jpg			1080	2880	{"large": {"ext": ".jpg", "url": "/uploads/large_b04d8a69e0844839b1dab8dfeb2bcf84_c45ca7362d.jpg", "hash": "large_b04d8a69e0844839b1dab8dfeb2bcf84_c45ca7362d", "mime": "image/jpeg", "name": "large_b04d8a69e0844839b1dab8dfeb2bcf84.jpg", "path": null, "size": 75.76, "width": 375, "height": 1000}, "small": {"ext": ".jpg", "url": "/uploads/small_b04d8a69e0844839b1dab8dfeb2bcf84_c45ca7362d.jpg", "hash": "small_b04d8a69e0844839b1dab8dfeb2bcf84_c45ca7362d", "mime": "image/jpeg", "name": "small_b04d8a69e0844839b1dab8dfeb2bcf84.jpg", "path": null, "size": 26.16, "width": 188, "height": 500}, "medium": {"ext": ".jpg", "url": "/uploads/medium_b04d8a69e0844839b1dab8dfeb2bcf84_c45ca7362d.jpg", "hash": "medium_b04d8a69e0844839b1dab8dfeb2bcf84_c45ca7362d", "mime": "image/jpeg", "name": "medium_b04d8a69e0844839b1dab8dfeb2bcf84.jpg", "path": null, "size": 48.63, "width": 281, "height": 750}, "thumbnail": {"ext": ".jpg", "url": "/uploads/thumbnail_b04d8a69e0844839b1dab8dfeb2bcf84_c45ca7362d.jpg", "hash": "thumbnail_b04d8a69e0844839b1dab8dfeb2bcf84_c45ca7362d", "mime": "image/jpeg", "name": "thumbnail_b04d8a69e0844839b1dab8dfeb2bcf84.jpg", "path": null, "size": 4.05, "width": 59, "height": 156}}	b04d8a69e0844839b1dab8dfeb2bcf84_c45ca7362d	.jpg	image/jpeg	367.27	/uploads/b04d8a69e0844839b1dab8dfeb2bcf84_c45ca7362d.jpg	\N	local	\N	3	3	2022-04-20 14:18:25.559+00	2022-04-20 14:18:25.577+00
75	592e2e421e3346a6d41664a165b27cff.jpg			1080	640	{"large": {"ext": ".jpg", "url": "/uploads/large_592e2e421e3346a6d41664a165b27cff_356dfeb070.jpg", "hash": "large_592e2e421e3346a6d41664a165b27cff_356dfeb070", "mime": "image/jpeg", "name": "large_592e2e421e3346a6d41664a165b27cff.jpg", "path": null, "size": 223.28, "width": 1000, "height": 593}, "small": {"ext": ".jpg", "url": "/uploads/small_592e2e421e3346a6d41664a165b27cff_356dfeb070.jpg", "hash": "small_592e2e421e3346a6d41664a165b27cff_356dfeb070", "mime": "image/jpeg", "name": "small_592e2e421e3346a6d41664a165b27cff.jpg", "path": null, "size": 78.94, "width": 500, "height": 296}, "medium": {"ext": ".jpg", "url": "/uploads/medium_592e2e421e3346a6d41664a165b27cff_356dfeb070.jpg", "hash": "medium_592e2e421e3346a6d41664a165b27cff_356dfeb070", "mime": "image/jpeg", "name": "medium_592e2e421e3346a6d41664a165b27cff.jpg", "path": null, "size": 145.23, "width": 750, "height": 444}, "thumbnail": {"ext": ".jpg", "url": "/uploads/thumbnail_592e2e421e3346a6d41664a165b27cff_356dfeb070.jpg", "hash": "thumbnail_592e2e421e3346a6d41664a165b27cff_356dfeb070", "mime": "image/jpeg", "name": "thumbnail_592e2e421e3346a6d41664a165b27cff.jpg", "path": null, "size": 27.95, "width": 245, "height": 145}}	592e2e421e3346a6d41664a165b27cff_356dfeb070	.jpg	image/jpeg	158.73	/uploads/592e2e421e3346a6d41664a165b27cff_356dfeb070.jpg	\N	local	\N	3	3	2022-04-20 14:27:22.744+00	2022-04-20 14:27:22.753+00
76	f27eeab98c26e1cf69db1fe961899586.jpg			1080	606	{"large": {"ext": ".jpg", "url": "/uploads/large_f27eeab98c26e1cf69db1fe961899586_cc2928bf62.jpg", "hash": "large_f27eeab98c26e1cf69db1fe961899586_cc2928bf62", "mime": "image/jpeg", "name": "large_f27eeab98c26e1cf69db1fe961899586.jpg", "path": null, "size": 42.19, "width": 1000, "height": 561}, "small": {"ext": ".jpg", "url": "/uploads/small_f27eeab98c26e1cf69db1fe961899586_cc2928bf62.jpg", "hash": "small_f27eeab98c26e1cf69db1fe961899586_cc2928bf62", "mime": "image/jpeg", "name": "small_f27eeab98c26e1cf69db1fe961899586.jpg", "path": null, "size": 14.72, "width": 500, "height": 281}, "medium": {"ext": ".jpg", "url": "/uploads/medium_f27eeab98c26e1cf69db1fe961899586_cc2928bf62.jpg", "hash": "medium_f27eeab98c26e1cf69db1fe961899586_cc2928bf62", "mime": "image/jpeg", "name": "medium_f27eeab98c26e1cf69db1fe961899586.jpg", "path": null, "size": 27.41, "width": 750, "height": 421}, "thumbnail": {"ext": ".jpg", "url": "/uploads/thumbnail_f27eeab98c26e1cf69db1fe961899586_cc2928bf62.jpg", "hash": "thumbnail_f27eeab98c26e1cf69db1fe961899586_cc2928bf62", "mime": "image/jpeg", "name": "thumbnail_f27eeab98c26e1cf69db1fe961899586.jpg", "path": null, "size": 5.4, "width": 245, "height": 137}}	f27eeab98c26e1cf69db1fe961899586_cc2928bf62	.jpg	image/jpeg	45.26	/uploads/f27eeab98c26e1cf69db1fe961899586_cc2928bf62.jpg	\N	local	\N	3	3	2022-04-20 14:33:07.102+00	2022-04-20 14:33:07.114+00
77	eb06df7d6861fa6d823f70c81b874532.jpg			1080	720	\N	eb06df7d6861fa6d823f70c81b874532_48da2e0376	.jpg	image/jpeg	213.01	/uploads/eb06df7d6861fa6d823f70c81b874532_48da2e0376.jpg	\N	local	\N	3	3	2022-04-20 14:34:23.656+00	2022-04-20 14:34:23.666+00
78	ed95e29d2fbadfc4ca64e57c8a36a0c3.jpg			1080	513	{"large": {"ext": ".jpg", "url": "/uploads/large_ed95e29d2fbadfc4ca64e57c8a36a0c3_25d5f36b1e.jpg", "hash": "large_ed95e29d2fbadfc4ca64e57c8a36a0c3_25d5f36b1e", "mime": "image/jpeg", "name": "large_ed95e29d2fbadfc4ca64e57c8a36a0c3.jpg", "path": null, "size": 18.69, "width": 1000, "height": 475}, "small": {"ext": ".jpg", "url": "/uploads/small_ed95e29d2fbadfc4ca64e57c8a36a0c3_25d5f36b1e.jpg", "hash": "small_ed95e29d2fbadfc4ca64e57c8a36a0c3_25d5f36b1e", "mime": "image/jpeg", "name": "small_ed95e29d2fbadfc4ca64e57c8a36a0c3.jpg", "path": null, "size": 7.33, "width": 500, "height": 237}, "medium": {"ext": ".jpg", "url": "/uploads/medium_ed95e29d2fbadfc4ca64e57c8a36a0c3_25d5f36b1e.jpg", "hash": "medium_ed95e29d2fbadfc4ca64e57c8a36a0c3_25d5f36b1e", "mime": "image/jpeg", "name": "medium_ed95e29d2fbadfc4ca64e57c8a36a0c3.jpg", "path": null, "size": 12.52, "width": 750, "height": 356}, "thumbnail": {"ext": ".jpg", "url": "/uploads/thumbnail_ed95e29d2fbadfc4ca64e57c8a36a0c3_25d5f36b1e.jpg", "hash": "thumbnail_ed95e29d2fbadfc4ca64e57c8a36a0c3_25d5f36b1e", "mime": "image/jpeg", "name": "thumbnail_ed95e29d2fbadfc4ca64e57c8a36a0c3.jpg", "path": null, "size": 3.05, "width": 245, "height": 116}}	ed95e29d2fbadfc4ca64e57c8a36a0c3_25d5f36b1e	.jpg	image/jpeg	19.67	/uploads/ed95e29d2fbadfc4ca64e57c8a36a0c3_25d5f36b1e.jpg	\N	local	\N	3	3	2022-04-20 14:36:57.594+00	2022-04-20 14:36:57.604+00
79	Group 534.png			2496	1486	{"large": {"ext": ".png", "url": "/uploads/large_Group_534_d226ca0ce5.png", "hash": "large_Group_534_d226ca0ce5", "mime": "image/png", "name": "large_Group 534.png", "path": null, "size": 1511.36, "width": 1000, "height": 595}, "small": {"ext": ".png", "url": "/uploads/small_Group_534_d226ca0ce5.png", "hash": "small_Group_534_d226ca0ce5", "mime": "image/png", "name": "small_Group 534.png", "path": null, "size": 414.96, "width": 500, "height": 298}, "medium": {"ext": ".png", "url": "/uploads/medium_Group_534_d226ca0ce5.png", "hash": "medium_Group_534_d226ca0ce5", "mime": "image/png", "name": "medium_Group 534.png", "path": null, "size": 888.06, "width": 750, "height": 447}, "thumbnail": {"ext": ".png", "url": "/uploads/thumbnail_Group_534_d226ca0ce5.png", "hash": "thumbnail_Group_534_d226ca0ce5", "mime": "image/png", "name": "thumbnail_Group 534.png", "path": null, "size": 108.19, "width": 245, "height": 146}}	Group_534_d226ca0ce5	.png	image/png	4267.96	/uploads/Group_534_d226ca0ce5.png	\N	local	\N	3	3	2022-04-20 15:18:27.239+00	2022-04-20 15:18:27.251+00
80	unsplash_Pzyk_baaV1Y.png			444	295	{"thumbnail": {"ext": ".png", "url": "/uploads/thumbnail_unsplash_Pzyk_baa_V1_Y_e481aadd01.png", "hash": "thumbnail_unsplash_Pzyk_baa_V1_Y_e481aadd01", "mime": "image/png", "name": "thumbnail_unsplash_Pzyk_baaV1Y.png", "path": null, "size": 74.48, "width": 235, "height": 156}}	unsplash_Pzyk_baa_V1_Y_e481aadd01	.png	image/png	158.68	/uploads/unsplash_Pzyk_baa_V1_Y_e481aadd01.png	\N	local	\N	3	3	2022-04-20 15:29:44.342+00	2022-04-20 15:29:44.352+00
81	unsplash_Im7lZjxeLhg.png			222	148	\N	unsplash_Im7l_Zjxe_Lhg_6d98134c3d	.png	image/png	21.83	/uploads/unsplash_Im7l_Zjxe_Lhg_6d98134c3d.png	\N	local	\N	3	3	2022-04-20 15:30:38.49+00	2022-04-20 15:30:38.499+00
83	3760027bd0c7f9e87c809d6c7d97dfb889353594.png@1036w.png			1036	1381	{"large": {"ext": ".png", "url": "/uploads/large_3760027bd0c7f9e87c809d6c7d97dfb889353594_png_1036w_5c8455e7e7.png", "hash": "large_3760027bd0c7f9e87c809d6c7d97dfb889353594_png_1036w_5c8455e7e7", "mime": "image/png", "name": "large_3760027bd0c7f9e87c809d6c7d97dfb889353594.png@1036w.png", "path": null, "size": 712.56, "width": 750, "height": 1000}, "small": {"ext": ".png", "url": "/uploads/small_3760027bd0c7f9e87c809d6c7d97dfb889353594_png_1036w_5c8455e7e7.png", "hash": "small_3760027bd0c7f9e87c809d6c7d97dfb889353594_png_1036w_5c8455e7e7", "mime": "image/png", "name": "small_3760027bd0c7f9e87c809d6c7d97dfb889353594.png@1036w.png", "path": null, "size": 205.68, "width": 375, "height": 500}, "medium": {"ext": ".png", "url": "/uploads/medium_3760027bd0c7f9e87c809d6c7d97dfb889353594_png_1036w_5c8455e7e7.png", "hash": "medium_3760027bd0c7f9e87c809d6c7d97dfb889353594_png_1036w_5c8455e7e7", "mime": "image/png", "name": "medium_3760027bd0c7f9e87c809d6c7d97dfb889353594.png@1036w.png", "path": null, "size": 424.28, "width": 563, "height": 750}, "thumbnail": {"ext": ".png", "url": "/uploads/thumbnail_3760027bd0c7f9e87c809d6c7d97dfb889353594_png_1036w_5c8455e7e7.png", "hash": "thumbnail_3760027bd0c7f9e87c809d6c7d97dfb889353594_png_1036w_5c8455e7e7", "mime": "image/png", "name": "thumbnail_3760027bd0c7f9e87c809d6c7d97dfb889353594.png@1036w.png", "path": null, "size": 26.47, "width": 117, "height": 156}}	3760027bd0c7f9e87c809d6c7d97dfb889353594_png_1036w_5c8455e7e7	.png	image/png	724.69	/uploads/3760027bd0c7f9e87c809d6c7d97dfb889353594_png_1036w_5c8455e7e7.png	\N	local	\N	3	3	2022-04-21 14:49:55.31+00	2022-04-21 14:49:55.324+00
82	unsplash_GI6L2pkiZgQ.png			222	148	\N	unsplash_GI_6_L2pki_Zg_Q_9d410ed88a	.png	image/png	54.08	/uploads/unsplash_GI_6_L2pki_Zg_Q_9d410ed88a.png	\N	local	\N	3	4	2022-04-20 15:31:17.283+00	2022-04-21 15:27:10.724+00
\.


--
-- Data for Name: upload_file_morph; Type: TABLE DATA; Schema: public; Owner: strapi
--

COPY public.upload_file_morph (id, upload_file_id, related_id, related_type, field, "order") FROM stdin;
1	1	1	components_shared_seos	shareImage	1
2	2	1	writers	picture	1
3	3	2	writers	picture	1
4	4	3	articles	image	1
5	6	6	articles	image	1
9	9	2	articles	image	1
10	10	1	globals	favicon	1
11	11	2	components_shared_seos	shareImage	1
12	9	1	components_course_courses	cover	1
168	43	1	news_centers	cover	1
169	44	2	news_centers	cover	1
170	34	3	news_centers	cover	1
171	45	4	news_centers	cover	1
18	12	2	components_course_courses	cover	1
172	46	5	news_centers	cover	1
173	34	6	news_centers	cover	1
21	6	9	components_course_courses	cover	1
22	7	10	components_course_courses	cover	1
175	47	7	news_centers	cover	1
25	8	1	articles	image	1
110	32	21	course_works	cover	1
176	48	8	news_centers	cover	1
177	49	9	news_centers	cover	1
178	48	10	news_centers	cover	1
179	50	11	news_centers	cover	1
116	4	28	course_works	cover	1
181	50	12	news_centers	cover	1
182	51	13	news_centers	cover	1
183	52	14	news_centers	cover	1
184	53	15	news_centers	cover	1
185	54	16	news_centers	cover	1
186	55	17	news_centers	cover	1
187	56	18	news_centers	cover	1
188	51	19	news_centers	cover	1
189	54	20	news_centers	cover	1
191	57	21	news_centers	cover	1
147	31	18	course_works	cover	1
149	19	10	course_works	cover	1
151	37	30	course_works	cover	1
152	12	7	components_course_courses	cover	1
153	38	7	components_course_courses	titleImage	1
154	6	8	components_course_courses	cover	1
73	33	22	course_works	cover	1
74	18	23	course_works	cover	1
75	28	24	course_works	cover	1
155	39	8	components_course_courses	titleImage	1
77	36	25	course_works	cover	1
78	36	26	course_works	cover	1
79	33	27	course_works	cover	1
81	7	29	course_works	cover	1
84	19	11	course_works	cover	1
85	20	12	course_works	cover	1
86	23	13	course_works	cover	1
87	24	14	course_works	cover	1
88	25	15	course_works	cover	1
89	27	16	course_works	cover	1
90	28	17	course_works	cover	1
92	33	19	course_works	cover	1
221	59	1	components_sections_people	cover	1
156	7	12	components_course_courses	cover	1
157	41	12	components_course_courses	titleImage	1
158	9	13	components_course_courses	cover	1
159	42	13	components_course_courses	titleImage	1
160	12	11	components_course_courses	cover	1
161	40	11	components_course_courses	titleImage	1
222	59	2	components_sections_people	cover	1
163	29	31	course_works	cover	1
223	59	3	components_sections_people	cover	1
224	58	1	components_studio_studios	cover	1
225	59	4	components_sections_people	cover	1
226	59	5	components_sections_people	cover	1
227	60	2	components_studio_studios	cover	1
228	59	8	components_sections_people	cover	1
229	61	3	components_studio_studios	cover	1
230	59	6	components_sections_people	cover	1
231	62	4	components_studio_studios	cover	1
232	59	7	components_sections_people	cover	1
233	63	5	components_studio_studios	cover	1
234	46	1	studio_works	cover	1
235	55	1	graduation_works	cover	1
236	64	1	graduation_img2022s	img1	1
237	65	1	graduation_img2022s	img2	1
238	66	1	graduation_img2022s	img3	1
241	13	1	course_works	cover	1
242	34	20	course_works	cover	1
243	70	5	graduation_works	cover	1
244	68	3	graduation_works	cover	1
245	67	2	graduation_works	cover	1
246	69	4	graduation_works	cover	1
248	71	6	graduation_works	cover	1
249	72	7	graduation_works	cover	1
250	73	8	graduation_works	cover	1
251	74	2	studio_works	cover	1
252	75	3	studio_works	cover	1
253	76	4	studio_works	cover	1
254	77	5	studio_works	cover	1
255	78	6	studio_works	cover	1
301	81	6	components_banner_banneritems	cover	1
302	79	7	components_banner_banneritems	cover	1
303	73	8	components_banner_banneritems	cover	1
304	56	9	components_banner_banneritems	cover	1
280	82	1	components_banner_banneritems	cover	1
281	80	2	components_banner_banneritems	cover	1
305	47	10	components_banner_banneritems	cover	1
306	78	11	components_banner_banneritems	cover	1
307	81	12	components_banner_banneritems	cover	1
308	75	13	components_banner_banneritems	cover	1
309	55	14	components_banner_banneritems	cover	1
287	75	4	components_banner_banneritems	cover	1
288	77	5	components_banner_banneritems	cover	1
310	29	15	components_banner_banneritems	cover	1
311	32	16	components_banner_banneritems	cover	1
312	48	17	components_banner_banneritems	cover	1
339	80	1	components_index_features	cover	1
340	81	2	components_index_features	cover	1
341	82	3	components_index_features	cover	1
342	80	3	components_banner_banneritems	cover	1
343	79	1	about_uses	honor	1
\.


--
-- Data for Name: users-permissions_permission; Type: TABLE DATA; Schema: public; Owner: strapi
--

COPY public."users-permissions_permission" (id, type, controller, action, enabled, policy, role, created_by, updated_by) FROM stdin;
1	application	article	count	f		1	\N	\N
2	application	article	count	f		2	\N	\N
7	application	article	find	f		1	\N	\N
6	application	article	delete	f		1	\N	\N
5	application	article	delete	f		2	\N	\N
10	application	article	create	f		2	\N	\N
4	application	article	create	f		1	\N	\N
9	application	article	findone	f		1	\N	\N
11	application	article	update	f		2	\N	\N
12	application	category	count	f		2	\N	\N
13	application	category	create	f		1	\N	\N
15	application	article	update	f		1	\N	\N
14	application	category	count	f		1	\N	\N
16	application	category	create	f		2	\N	\N
221	application	course	find	t		2	\N	\N
17	application	category	delete	f		1	\N	\N
18	application	category	delete	f		2	\N	\N
19	application	category	find	f		1	\N	\N
263	application	course-category	create	f		1	\N	\N
273	application	course-category	update	f		1	\N	\N
381	application	graduation-works	delete	f		1	\N	\N
389	application	graduation-img2022	delete	f		1	\N	\N
21	application	category	findone	f		1	\N	\N
23	application	category	update	f		1	\N	\N
25	application	category	update	f		2	\N	\N
353	application	studio-category	delete	f		2	\N	\N
354	application	studio-category	delete	f		1	\N	\N
290	application	news-center	delete	f		1	\N	\N
297	application	news-center	update	f		1	\N	\N
363	application	studio-category	update	f		1	\N	\N
50	content-manager	collection-types	bulkdelete	f		1	\N	\N
49	content-manager	collection-types	bulkdelete	f		2	\N	\N
51	content-manager	collection-types	create	f		1	\N	\N
52	content-manager	collection-types	create	f		2	\N	\N
53	content-manager	collection-types	delete	f		1	\N	\N
57	content-manager	collection-types	findone	f		1	\N	\N
55	content-manager	collection-types	find	f		2	\N	\N
56	content-manager	collection-types	find	f		1	\N	\N
54	content-manager	collection-types	delete	f		2	\N	\N
58	content-manager	collection-types	findone	f		2	\N	\N
59	content-manager	collection-types	previewmanyrelations	f		1	\N	\N
60	content-manager	collection-types	previewmanyrelations	f		2	\N	\N
61	content-manager	collection-types	publish	f		1	\N	\N
62	content-manager	collection-types	publish	f		2	\N	\N
63	content-manager	collection-types	unpublish	f		1	\N	\N
65	content-manager	collection-types	update	f		1	\N	\N
66	content-manager	collection-types	update	f		2	\N	\N
64	content-manager	collection-types	unpublish	f		2	\N	\N
68	content-manager	components	findcomponentconfiguration	f		2	\N	\N
67	content-manager	components	findcomponentconfiguration	f		1	\N	\N
69	content-manager	components	findcomponents	f		1	\N	\N
70	content-manager	components	findcomponents	f		2	\N	\N
71	content-manager	components	updatecomponentconfiguration	f		1	\N	\N
72	content-manager	content-types	findcontenttypeconfiguration	f		1	\N	\N
73	content-manager	components	updatecomponentconfiguration	f		2	\N	\N
77	content-manager	content-types	findcontenttypessettings	f		1	\N	\N
80	content-manager	content-types	updatecontenttypeconfiguration	f		2	\N	\N
78	content-manager	content-types	findcontenttypessettings	f		2	\N	\N
79	content-manager	content-types	updatecontenttypeconfiguration	f		1	\N	\N
81	content-manager	relations	find	f		1	\N	\N
82	content-manager	relations	find	f		2	\N	\N
87	content-manager	single-types	find	f		1	\N	\N
88	content-manager	single-types	find	f		2	\N	\N
89	content-manager	single-types	publish	f		1	\N	\N
91	content-manager	single-types	unpublish	f		1	\N	\N
93	content-manager	uid	checkuidavailability	f		1	\N	\N
98	content-type-builder	builder	getreservednames	f		2	\N	\N
97	content-type-builder	builder	getreservednames	f		1	\N	\N
100	content-type-builder	componentcategories	deletecategory	f		2	\N	\N
8	application	article	find	t		2	\N	\N
20	application	category	find	t		2	\N	\N
3	application	article	findone	t		2	\N	\N
22	application	category	findone	t		2	\N	\N
75	content-manager	content-types	findcontenttypes	f		1	\N	\N
85	content-manager	single-types	delete	f		1	\N	\N
96	content-manager	uid	generateuid	f		2	\N	\N
106	content-type-builder	components	deletecomponent	f		2	\N	\N
115	content-type-builder	contenttypes	createcontenttype	f		1	\N	\N
122	content-type-builder	contenttypes	getcontenttypes	f		2	\N	\N
134	i18n	iso-locales	listisolocales	f		2	\N	\N
143	upload	upload	count	f		1	\N	\N
153	upload	upload	search	f		2	\N	\N
163	users-permissions	auth	emailconfirmation	f		1	\N	\N
173	users-permissions	auth	sendemailconfirmation	f		2	\N	\N
182	users-permissions	user	findone	f		1	\N	\N
193	users-permissions	userspermissions	deleterole	f		2	\N	\N
202	users-permissions	userspermissions	getrole	f		1	\N	\N
215	users-permissions	userspermissions	updateadvancedsettings	f		1	\N	\N
222	application	course	delete	f		2	\N	\N
264	application	course-category	count	f		2	\N	\N
274	application	course-category	update	f		2	\N	\N
289	application	news-center	create	f		2	\N	\N
390	application	graduation-img2022	delete	f		2	\N	\N
355	application	studio-category	count	f		1	\N	\N
364	application	studio-category	update	f		2	\N	\N
382	application	graduation-works	findone	f		1	\N	\N
76	content-manager	content-types	findcontenttypes	f		2	\N	\N
86	content-manager	single-types	delete	f		2	\N	\N
94	content-manager	uid	checkuidavailability	f		2	\N	\N
104	content-type-builder	components	createcomponent	f		2	\N	\N
111	content-type-builder	components	updatecomponent	f		1	\N	\N
123	content-type-builder	contenttypes	updatecontenttype	f		1	\N	\N
133	i18n	iso-locales	listisolocales	f		1	\N	\N
144	upload	upload	count	f		2	\N	\N
152	upload	upload	search	f		1	\N	\N
162	users-permissions	auth	connect	t		2	\N	\N
172	users-permissions	user	count	f		1	\N	\N
181	users-permissions	user	find	f		1	\N	\N
191	users-permissions	userspermissions	deleterole	f		1	\N	\N
201	users-permissions	userspermissions	getproviders	f		1	\N	\N
211	users-permissions	userspermissions	searchusers	f		1	\N	\N
223	application	course	find	f		1	\N	\N
265	application	course-category	count	f		1	\N	\N
288	application	news-center	delete	f		2	\N	\N
383	application	graduation-works	find	t		2	\N	\N
391	application	graduation-img2022	find	t		2	\N	\N
356	application	studio-category	find	f		1	\N	\N
90	content-manager	single-types	publish	f		2	\N	\N
99	content-type-builder	componentcategories	deletecategory	f		1	\N	\N
110	content-type-builder	components	getcomponents	f		2	\N	\N
120	content-type-builder	contenttypes	getcontenttype	f		2	\N	\N
129	email	email	test	f		1	\N	\N
139	i18n	locales	listlocales	f		1	\N	\N
150	upload	upload	findone	f		2	\N	\N
159	users-permissions	auth	callback	f		1	\N	\N
168	users-permissions	auth	register	t		2	\N	\N
178	users-permissions	user	destroy	f		2	\N	\N
188	users-permissions	user	update	f		2	\N	\N
199	users-permissions	userspermissions	getpermissions	f		2	\N	\N
210	users-permissions	userspermissions	index	f		2	\N	\N
220	users-permissions	userspermissions	updaterole	f		2	\N	\N
224	application	course	delete	f		1	\N	\N
266	application	course-category	delete	f		2	\N	\N
392	application	graduation-img2022	find	f		1	\N	\N
287	application	news-center	count	f		1	\N	\N
357	application	studio-category	count	f		2	\N	\N
384	application	graduation-works	delete	f		2	\N	\N
84	content-manager	single-types	createorupdate	f		2	\N	\N
95	content-manager	uid	generateuid	f		1	\N	\N
105	content-type-builder	components	deletecomponent	f		1	\N	\N
116	content-type-builder	contenttypes	createcontenttype	f		2	\N	\N
126	email	email	getsettings	f		2	\N	\N
136	i18n	locales	createlocale	f		2	\N	\N
146	upload	upload	destroy	f		2	\N	\N
155	upload	upload	updatesettings	f		1	\N	\N
166	users-permissions	auth	forgotpassword	f		1	\N	\N
174	users-permissions	user	count	f		2	\N	\N
186	users-permissions	user	me	t		2	\N	\N
196	users-permissions	userspermissions	getemailtemplate	f		1	\N	\N
206	users-permissions	userspermissions	getroles	f		2	\N	\N
216	users-permissions	userspermissions	updateemailtemplate	f		2	\N	\N
225	application	course	update	f		1	\N	\N
267	application	course-category	delete	f		1	\N	\N
393	application	graduation-img2022	update	f		1	\N	\N
291	application	news-center	count	t		2	\N	\N
298	application	news-center	update	t		2	\N	\N
358	application	studio-category	create	f		2	\N	\N
385	application	graduation-works	find	f		1	\N	\N
101	content-type-builder	componentcategories	editcategory	f		1	\N	\N
113	content-type-builder	connections	getconnections	f		1	\N	\N
125	email	email	getsettings	f		1	\N	\N
135	i18n	locales	createlocale	f		1	\N	\N
145	upload	upload	destroy	f		1	\N	\N
156	upload	upload	updatesettings	f		2	\N	\N
165	users-permissions	auth	emailconfirmation	t		2	\N	\N
176	users-permissions	user	create	f		2	\N	\N
185	users-permissions	user	me	t		1	\N	\N
194	users-permissions	userspermissions	getadvancedsettings	f		2	\N	\N
205	users-permissions	userspermissions	getroles	f		1	\N	\N
212	users-permissions	userspermissions	updateemailtemplate	f		1	\N	\N
226	application	course	update	f		2	\N	\N
386	application	graduation-works	findone	t		2	\N	\N
268	application	course-category	find	t		2	\N	\N
292	application	news-center	findone	f		1	\N	\N
394	application	graduation-img2022	update	f		2	\N	\N
359	application	studio-category	create	f		1	\N	\N
103	content-type-builder	components	createcomponent	f		1	\N	\N
112	content-type-builder	components	updatecomponent	f		2	\N	\N
124	content-type-builder	contenttypes	updatecontenttype	f		2	\N	\N
132	i18n	content-types	getnonlocalizedattributes	f		2	\N	\N
142	i18n	locales	updatelocale	f		2	\N	\N
151	upload	upload	getsettings	f		1	\N	\N
161	users-permissions	auth	connect	t		1	\N	\N
171	users-permissions	auth	sendemailconfirmation	f		1	\N	\N
183	users-permissions	user	find	f		2	\N	\N
192	users-permissions	userspermissions	getadvancedsettings	f		1	\N	\N
203	users-permissions	userspermissions	getproviders	f		2	\N	\N
214	users-permissions	userspermissions	updateadvancedsettings	f		2	\N	\N
269	application	course-category	findone	f		1	\N	\N
294	application	news-center	create	f		1	\N	\N
395	application	about-us	update	f		2	\N	\N
360	application	studio-category	findone	f		1	\N	\N
107	content-type-builder	components	getcomponent	f		1	\N	\N
117	content-type-builder	contenttypes	deletecontenttype	f		1	\N	\N
127	email	email	send	f		1	\N	\N
137	i18n	locales	deletelocale	f		2	\N	\N
148	upload	upload	findone	f		1	\N	\N
158	upload	upload	upload	f		2	\N	\N
170	users-permissions	auth	resetpassword	f		1	\N	\N
180	users-permissions	user	destroyall	f		2	\N	\N
190	users-permissions	userspermissions	createrole	f		2	\N	\N
200	users-permissions	userspermissions	getpolicies	f		2	\N	\N
209	users-permissions	userspermissions	index	f		1	\N	\N
217	users-permissions	userspermissions	updateproviders	f		1	\N	\N
270	application	course-category	create	f		2	\N	\N
396	application	about-us	delete	f		2	\N	\N
293	application	news-center	find	t		2	\N	\N
361	application	studio-category	find	f		2	\N	\N
108	content-type-builder	components	getcomponent	f		2	\N	\N
118	content-type-builder	contenttypes	deletecontenttype	f		2	\N	\N
128	email	email	send	f		2	\N	\N
138	i18n	locales	deletelocale	f		1	\N	\N
147	upload	upload	find	f		1	\N	\N
157	upload	upload	upload	f		1	\N	\N
167	users-permissions	auth	register	f		1	\N	\N
177	users-permissions	user	destroy	f		1	\N	\N
187	users-permissions	user	update	f		1	\N	\N
197	users-permissions	userspermissions	getpermissions	f		1	\N	\N
208	users-permissions	userspermissions	getroutes	f		1	\N	\N
219	users-permissions	userspermissions	updaterole	f		1	\N	\N
271	application	course-category	find	f		1	\N	\N
295	application	news-center	find	f		1	\N	\N
397	application	about-us	find	t		2	\N	\N
362	application	studio-category	findone	f		2	\N	\N
109	content-type-builder	components	getcomponents	f		1	\N	\N
119	content-type-builder	contenttypes	getcontenttype	f		1	\N	\N
130	email	email	test	f		2	\N	\N
140	i18n	locales	listlocales	f		2	\N	\N
149	upload	upload	find	f		2	\N	\N
160	users-permissions	auth	callback	t		2	\N	\N
169	users-permissions	auth	resetpassword	t		2	\N	\N
179	users-permissions	user	destroyall	f		1	\N	\N
189	users-permissions	userspermissions	createrole	f		1	\N	\N
198	users-permissions	userspermissions	getpolicies	f		1	\N	\N
207	users-permissions	userspermissions	getroutes	f		2	\N	\N
218	users-permissions	userspermissions	updateproviders	f		2	\N	\N
272	application	course-category	findone	f		2	\N	\N
398	application	about-us	find	f		1	\N	\N
296	application	news-center	findone	t		2	\N	\N
365	application	studio-works	create	f		1	\N	\N
286	application	course-works	update	f		1	\N	\N
276	application	course-works	count	t		2	\N	\N
300	application	news-category	count	f		2	\N	\N
299	application	news-category	create	f		2	\N	\N
309	application	news-category	update	f		1	\N	\N
399	application	about-us	delete	f		1	\N	\N
366	application	studio-works	find	f		1	\N	\N
375	application	studio-works	update	f		1	\N	\N
275	application	course-works	create	f		2	\N	\N
301	application	news-category	delete	f		2	\N	\N
400	application	about-us	update	f		1	\N	\N
367	application	studio-works	create	f		2	\N	\N
285	application	course-works	update	t		2	\N	\N
376	application	studio-works	update	t		2	\N	\N
277	application	course-works	create	f		1	\N	\N
302	application	news-category	create	f		1	\N	\N
401	application	news-banner	update	f		2	\N	\N
368	application	studio-works	delete	f		2	\N	\N
278	application	course-works	count	f		1	\N	\N
303	application	news-category	delete	f		1	\N	\N
403	application	news-banner	update	f		1	\N	\N
369	application	studio-works	count	t		2	\N	\N
402	application	news-banner	find	t		2	\N	\N
279	application	course-works	findone	f		1	\N	\N
304	application	news-category	find	f		2	\N	\N
310	application	news-category	update	f		2	\N	\N
404	application	news-banner	find	f		1	\N	\N
370	application	studio-works	count	f		1	\N	\N
282	application	course-works	delete	f		2	\N	\N
306	application	news-category	count	f		1	\N	\N
405	application	news-banner	delete	f		2	\N	\N
371	application	studio-works	findone	f		1	\N	\N
281	application	course-works	find	t		2	\N	\N
305	application	news-category	findone	f		1	\N	\N
335	application	studio	update	f		2	\N	\N
372	application	studio-works	find	t		2	\N	\N
406	application	news-banner	delete	f		1	\N	\N
280	application	course-works	delete	f		1	\N	\N
307	application	news-category	find	f		1	\N	\N
336	application	studio	update	f		1	\N	\N
373	application	studio-works	delete	f		1	\N	\N
283	application	course-works	find	f		1	\N	\N
308	application	news-category	findone	f		2	\N	\N
337	application	studio	find	f		1	\N	\N
374	application	studio-works	findone	t		2	\N	\N
377	application	graduation-works	count	t		2	\N	\N
284	application	course-works	findone	t		2	\N	\N
338	application	studio	delete	f		2	\N	\N
339	application	studio	find	t		2	\N	\N
378	application	graduation-works	create	f		2	\N	\N
340	application	studio	delete	f		1	\N	\N
379	application	graduation-works	count	f		1	\N	\N
387	application	graduation-works	update	f		1	\N	\N
74	content-manager	content-types	findcontenttypeconfiguration	f		2	\N	\N
83	content-manager	single-types	createorupdate	f		1	\N	\N
92	content-manager	single-types	unpublish	f		2	\N	\N
102	content-type-builder	componentcategories	editcategory	f		2	\N	\N
114	content-type-builder	connections	getconnections	f		2	\N	\N
121	content-type-builder	contenttypes	getcontenttypes	f		1	\N	\N
131	i18n	content-types	getnonlocalizedattributes	f		1	\N	\N
141	i18n	locales	updatelocale	f		1	\N	\N
154	upload	upload	getsettings	f		2	\N	\N
164	users-permissions	auth	forgotpassword	t		2	\N	\N
175	users-permissions	user	create	f		1	\N	\N
184	users-permissions	user	findone	f		2	\N	\N
195	users-permissions	userspermissions	getemailtemplate	f		2	\N	\N
204	users-permissions	userspermissions	getrole	f		2	\N	\N
213	users-permissions	userspermissions	searchusers	f		2	\N	\N
388	application	graduation-works	update	t		2	\N	\N
380	application	graduation-works	create	f		1	\N	\N
\.


--
-- Data for Name: users-permissions_role; Type: TABLE DATA; Schema: public; Owner: strapi
--

COPY public."users-permissions_role" (id, name, description, type, created_by, updated_by) FROM stdin;
1	Authenticated	Default role given to authenticated user.	authenticated	\N	\N
2	Public	Default role given to unauthenticated user.	public	\N	\N
\.


--
-- Data for Name: users-permissions_user; Type: TABLE DATA; Schema: public; Owner: strapi
--

COPY public."users-permissions_user" (id, username, email, provider, password, "resetPasswordToken", "confirmationToken", confirmed, blocked, role, created_by, updated_by, created_at, updated_at) FROM stdin;
\.


--
-- Data for Name: writers; Type: TABLE DATA; Schema: public; Owner: strapi
--

COPY public.writers (id, name, email, created_by, updated_by, created_at, updated_at) FROM stdin;
1	David Doe	daviddoe@strapi.io	\N	\N	2022-04-11 18:09:51.322+00	2022-04-11 18:09:51.322+00
2	Sarah Baker	sarahbaker@strapi.io	\N	\N	2022-04-11 18:09:51.323+00	2022-04-11 18:09:51.323+00
\.


--
-- Data for Name: yuan_xing_kong_zhi_yu_jiao_hus; Type: TABLE DATA; Schema: public; Owner: strapi
--

COPY public.yuan_xing_kong_zhi_yu_jiao_hus (id, published_at, created_by, updated_by, created_at, updated_at) FROM stdin;
1	\N	1	1	2022-04-11 19:18:59.221+00	2022-04-11 19:19:19.158+00
\.


--
-- Data for Name: yuan_xing_kong_zhi_yu_jiao_hus_components; Type: TABLE DATA; Schema: public; Owner: strapi
--

COPY public.yuan_xing_kong_zhi_yu_jiao_hus_components (id, field, "order", component_type, component_id, yuan_xing_kong_zhi_yu_jiao_hus_id) FROM stdin;
1	course	1	components_course_courses	6	1
\.


--
-- Name: Studio_category_id_seq; Type: SEQUENCE SET; Schema: public; Owner: strapi
--

SELECT pg_catalog.setval('public."Studio_category_id_seq"', 1, false);


--
-- Name: about_uses_components_id_seq; Type: SEQUENCE SET; Schema: public; Owner: strapi
--

SELECT pg_catalog.setval('public.about_uses_components_id_seq', 33, true);


--
-- Name: about_uses_id_seq; Type: SEQUENCE SET; Schema: public; Owner: strapi
--

SELECT pg_catalog.setval('public.about_uses_id_seq', 1, true);


--
-- Name: articles_id_seq; Type: SEQUENCE SET; Schema: public; Owner: strapi
--

SELECT pg_catalog.setval('public.articles_id_seq', 7, true);


--
-- Name: categories_id_seq; Type: SEQUENCE SET; Schema: public; Owner: strapi
--

SELECT pg_catalog.setval('public.categories_id_seq', 5, true);


--
-- Name: components_banner_banneritems_id_seq; Type: SEQUENCE SET; Schema: public; Owner: strapi
--

SELECT pg_catalog.setval('public.components_banner_banneritems_id_seq', 17, true);


--
-- Name: components_banner_banners_components_id_seq; Type: SEQUENCE SET; Schema: public; Owner: strapi
--

SELECT pg_catalog.setval('public.components_banner_banners_components_id_seq', 17, true);


--
-- Name: components_banner_banners_id_seq; Type: SEQUENCE SET; Schema: public; Owner: strapi
--

SELECT pg_catalog.setval('public.components_banner_banners_id_seq', 5, true);


--
-- Name: components_course_courses_id_seq; Type: SEQUENCE SET; Schema: public; Owner: strapi
--

SELECT pg_catalog.setval('public.components_course_courses_id_seq', 13, true);


--
-- Name: components_decoration_heroes_id_seq; Type: SEQUENCE SET; Schema: public; Owner: strapi
--

SELECT pg_catalog.setval('public.components_decoration_heroes_id_seq', 1, true);


--
-- Name: components_index_achievements_id_seq; Type: SEQUENCE SET; Schema: public; Owner: strapi
--

SELECT pg_catalog.setval('public.components_index_achievements_id_seq', 1, false);


--
-- Name: components_index_features_id_seq; Type: SEQUENCE SET; Schema: public; Owner: strapi
--

SELECT pg_catalog.setval('public.components_index_features_id_seq', 4, true);


--
-- Name: components_index_histories_id_seq; Type: SEQUENCE SET; Schema: public; Owner: strapi
--

SELECT pg_catalog.setval('public.components_index_histories_id_seq', 22, true);


--
-- Name: components_index_talents_id_seq; Type: SEQUENCE SET; Schema: public; Owner: strapi
--

SELECT pg_catalog.setval('public.components_index_talents_id_seq', 6, true);


--
-- Name: components_reachdirection_reach_directions_id_seq; Type: SEQUENCE SET; Schema: public; Owner: strapi
--

SELECT pg_catalog.setval('public.components_reachdirection_reach_directions_id_seq', 9, true);


--
-- Name: components_sections_articles_id_seq; Type: SEQUENCE SET; Schema: public; Owner: strapi
--

SELECT pg_catalog.setval('public.components_sections_articles_id_seq', 1, true);


--
-- Name: components_sections_people_id_seq; Type: SEQUENCE SET; Schema: public; Owner: strapi
--

SELECT pg_catalog.setval('public.components_sections_people_id_seq', 8, true);


--
-- Name: components_shared_seos_id_seq; Type: SEQUENCE SET; Schema: public; Owner: strapi
--

SELECT pg_catalog.setval('public.components_shared_seos_id_seq', 2, true);


--
-- Name: components_studio_studios_components_id_seq; Type: SEQUENCE SET; Schema: public; Owner: strapi
--

SELECT pg_catalog.setval('public.components_studio_studios_components_id_seq', 17, true);


--
-- Name: components_studio_studios_id_seq; Type: SEQUENCE SET; Schema: public; Owner: strapi
--

SELECT pg_catalog.setval('public.components_studio_studios_id_seq', 5, true);


--
-- Name: core_store_id_seq; Type: SEQUENCE SET; Schema: public; Owner: strapi
--

SELECT pg_catalog.setval('public.core_store_id_seq', 102, true);


--
-- Name: course_categories_id_seq; Type: SEQUENCE SET; Schema: public; Owner: strapi
--

SELECT pg_catalog.setval('public.course_categories_id_seq', 6, true);


--
-- Name: course_works_components_id_seq; Type: SEQUENCE SET; Schema: public; Owner: strapi
--

SELECT pg_catalog.setval('public.course_works_components_id_seq', 1, true);


--
-- Name: course_works_id_seq; Type: SEQUENCE SET; Schema: public; Owner: strapi
--

SELECT pg_catalog.setval('public.course_works_id_seq', 31, true);


--
-- Name: courses_components_id_seq; Type: SEQUENCE SET; Schema: public; Owner: strapi
--

SELECT pg_catalog.setval('public.courses_components_id_seq', 7, true);


--
-- Name: courses_id_seq; Type: SEQUENCE SET; Schema: public; Owner: strapi
--

SELECT pg_catalog.setval('public.courses_id_seq', 1, true);


--
-- Name: globals_components_id_seq; Type: SEQUENCE SET; Schema: public; Owner: strapi
--

SELECT pg_catalog.setval('public.globals_components_id_seq', 1, true);


--
-- Name: globals_id_seq; Type: SEQUENCE SET; Schema: public; Owner: strapi
--

SELECT pg_catalog.setval('public.globals_id_seq', 1, true);


--
-- Name: gong_ye_she_ji_shou_huis_components_id_seq; Type: SEQUENCE SET; Schema: public; Owner: strapi
--

SELECT pg_catalog.setval('public.gong_ye_she_ji_shou_huis_components_id_seq', 1, true);


--
-- Name: gong_ye_she_ji_shou_huis_id_seq; Type: SEQUENCE SET; Schema: public; Owner: strapi
--

SELECT pg_catalog.setval('public.gong_ye_she_ji_shou_huis_id_seq', 1, true);


--
-- Name: graduation_img2022s_id_seq; Type: SEQUENCE SET; Schema: public; Owner: strapi
--

SELECT pg_catalog.setval('public.graduation_img2022s_id_seq', 1, true);


--
-- Name: graduation_works_id_seq; Type: SEQUENCE SET; Schema: public; Owner: strapi
--

SELECT pg_catalog.setval('public.graduation_works_id_seq', 8, true);


--
-- Name: gysjsh_components_id_seq; Type: SEQUENCE SET; Schema: public; Owner: strapi
--

SELECT pg_catalog.setval('public.gysjsh_components_id_seq', 1, true);


--
-- Name: gysjsh_id_seq; Type: SEQUENCE SET; Schema: public; Owner: strapi
--

SELECT pg_catalog.setval('public.gysjsh_id_seq', 1, true);


--
-- Name: homepages_components_id_seq; Type: SEQUENCE SET; Schema: public; Owner: strapi
--

SELECT pg_catalog.setval('public.homepages_components_id_seq', 2, true);


--
-- Name: homepages_id_seq; Type: SEQUENCE SET; Schema: public; Owner: strapi
--

SELECT pg_catalog.setval('public.homepages_id_seq', 1, true);


--
-- Name: i18n_locales_id_seq; Type: SEQUENCE SET; Schema: public; Owner: strapi
--

SELECT pg_catalog.setval('public.i18n_locales_id_seq', 1, true);


--
-- Name: ji_chu_she_jis_components_id_seq; Type: SEQUENCE SET; Schema: public; Owner: strapi
--

SELECT pg_catalog.setval('public.ji_chu_she_jis_components_id_seq', 1, true);


--
-- Name: ji_chu_she_jis_id_seq; Type: SEQUENCE SET; Schema: public; Owner: strapi
--

SELECT pg_catalog.setval('public.ji_chu_she_jis_id_seq', 1, true);


--
-- Name: news_banners_components_id_seq; Type: SEQUENCE SET; Schema: public; Owner: strapi
--

SELECT pg_catalog.setval('public.news_banners_components_id_seq', 4, true);


--
-- Name: news_banners_id_seq; Type: SEQUENCE SET; Schema: public; Owner: strapi
--

SELECT pg_catalog.setval('public.news_banners_id_seq', 1, true);


--
-- Name: news_categories_id_seq; Type: SEQUENCE SET; Schema: public; Owner: strapi
--

SELECT pg_catalog.setval('public.news_categories_id_seq', 3, true);


--
-- Name: news_centers_id_seq; Type: SEQUENCE SET; Schema: public; Owner: strapi
--

SELECT pg_catalog.setval('public.news_centers_id_seq', 21, true);


--
-- Name: ren_ji_gong_cheng_xues_components_id_seq; Type: SEQUENCE SET; Schema: public; Owner: strapi
--

SELECT pg_catalog.setval('public.ren_ji_gong_cheng_xues_components_id_seq', 1, true);


--
-- Name: ren_ji_gong_cheng_xues_id_seq; Type: SEQUENCE SET; Schema: public; Owner: strapi
--

SELECT pg_catalog.setval('public.ren_ji_gong_cheng_xues_id_seq', 1, true);


--
-- Name: she_ji_ji_chus_components_id_seq; Type: SEQUENCE SET; Schema: public; Owner: strapi
--

SELECT pg_catalog.setval('public.she_ji_ji_chus_components_id_seq', 1, false);


--
-- Name: she_ji_ji_chus_id_seq; Type: SEQUENCE SET; Schema: public; Owner: strapi
--

SELECT pg_catalog.setval('public.she_ji_ji_chus_id_seq', 1, false);


--
-- Name: she_ji_tu_xues_components_id_seq; Type: SEQUENCE SET; Schema: public; Owner: strapi
--

SELECT pg_catalog.setval('public.she_ji_tu_xues_components_id_seq', 1, true);


--
-- Name: she_ji_tu_xues_id_seq; Type: SEQUENCE SET; Schema: public; Owner: strapi
--

SELECT pg_catalog.setval('public.she_ji_tu_xues_id_seq', 1, true);


--
-- Name: strapi_administrator_id_seq; Type: SEQUENCE SET; Schema: public; Owner: strapi
--

SELECT pg_catalog.setval('public.strapi_administrator_id_seq', 4, true);


--
-- Name: strapi_permission_id_seq; Type: SEQUENCE SET; Schema: public; Owner: strapi
--

SELECT pg_catalog.setval('public.strapi_permission_id_seq', 1594, true);


--
-- Name: strapi_role_id_seq; Type: SEQUENCE SET; Schema: public; Owner: strapi
--

SELECT pg_catalog.setval('public.strapi_role_id_seq', 3, true);


--
-- Name: strapi_users_roles_id_seq; Type: SEQUENCE SET; Schema: public; Owner: strapi
--

SELECT pg_catalog.setval('public.strapi_users_roles_id_seq', 5, true);


--
-- Name: strapi_webhooks_id_seq; Type: SEQUENCE SET; Schema: public; Owner: strapi
--

SELECT pg_catalog.setval('public.strapi_webhooks_id_seq', 1, false);


--
-- Name: studio_categories_id_seq; Type: SEQUENCE SET; Schema: public; Owner: strapi
--

SELECT pg_catalog.setval('public.studio_categories_id_seq', 5, true);


--
-- Name: studio_works_categories_id_seq; Type: SEQUENCE SET; Schema: public; Owner: strapi
--

SELECT pg_catalog.setval('public.studio_works_categories_id_seq', 5, true);


--
-- Name: studio_works_id_seq; Type: SEQUENCE SET; Schema: public; Owner: strapi
--

SELECT pg_catalog.setval('public.studio_works_id_seq', 6, true);


--
-- Name: studios_components_id_seq; Type: SEQUENCE SET; Schema: public; Owner: strapi
--

SELECT pg_catalog.setval('public.studios_components_id_seq', 5, true);


--
-- Name: studios_id_seq; Type: SEQUENCE SET; Schema: public; Owner: strapi
--

SELECT pg_catalog.setval('public.studios_id_seq', 1, true);


--
-- Name: upload_file_id_seq; Type: SEQUENCE SET; Schema: public; Owner: strapi
--

SELECT pg_catalog.setval('public.upload_file_id_seq', 83, true);


--
-- Name: upload_file_morph_id_seq; Type: SEQUENCE SET; Schema: public; Owner: strapi
--

SELECT pg_catalog.setval('public.upload_file_morph_id_seq', 343, true);


--
-- Name: users-permissions_permission_id_seq; Type: SEQUENCE SET; Schema: public; Owner: strapi
--

SELECT pg_catalog.setval('public."users-permissions_permission_id_seq"', 406, true);


--
-- Name: users-permissions_role_id_seq; Type: SEQUENCE SET; Schema: public; Owner: strapi
--

SELECT pg_catalog.setval('public."users-permissions_role_id_seq"', 2, true);


--
-- Name: users-permissions_user_id_seq; Type: SEQUENCE SET; Schema: public; Owner: strapi
--

SELECT pg_catalog.setval('public."users-permissions_user_id_seq"', 1, false);


--
-- Name: writers_id_seq; Type: SEQUENCE SET; Schema: public; Owner: strapi
--

SELECT pg_catalog.setval('public.writers_id_seq', 2, true);


--
-- Name: yuan_xing_kong_zhi_yu_jiao_hus_components_id_seq; Type: SEQUENCE SET; Schema: public; Owner: strapi
--

SELECT pg_catalog.setval('public.yuan_xing_kong_zhi_yu_jiao_hus_components_id_seq', 1, true);


--
-- Name: yuan_xing_kong_zhi_yu_jiao_hus_id_seq; Type: SEQUENCE SET; Schema: public; Owner: strapi
--

SELECT pg_catalog.setval('public.yuan_xing_kong_zhi_yu_jiao_hus_id_seq', 1, true);


--
-- Name: Studio_category Studio_category_pkey; Type: CONSTRAINT; Schema: public; Owner: strapi
--

ALTER TABLE ONLY public."Studio_category"
    ADD CONSTRAINT "Studio_category_pkey" PRIMARY KEY (id);


--
-- Name: about_uses_components about_uses_components_pkey; Type: CONSTRAINT; Schema: public; Owner: strapi
--

ALTER TABLE ONLY public.about_uses_components
    ADD CONSTRAINT about_uses_components_pkey PRIMARY KEY (id);


--
-- Name: about_uses about_uses_pkey; Type: CONSTRAINT; Schema: public; Owner: strapi
--

ALTER TABLE ONLY public.about_uses
    ADD CONSTRAINT about_uses_pkey PRIMARY KEY (id);


--
-- Name: articles articles_pkey; Type: CONSTRAINT; Schema: public; Owner: strapi
--

ALTER TABLE ONLY public.articles
    ADD CONSTRAINT articles_pkey PRIMARY KEY (id);


--
-- Name: articles articles_slug_unique; Type: CONSTRAINT; Schema: public; Owner: strapi
--

ALTER TABLE ONLY public.articles
    ADD CONSTRAINT articles_slug_unique UNIQUE (slug);


--
-- Name: categories categories_pkey; Type: CONSTRAINT; Schema: public; Owner: strapi
--

ALTER TABLE ONLY public.categories
    ADD CONSTRAINT categories_pkey PRIMARY KEY (id);


--
-- Name: categories categories_slug_unique; Type: CONSTRAINT; Schema: public; Owner: strapi
--

ALTER TABLE ONLY public.categories
    ADD CONSTRAINT categories_slug_unique UNIQUE (slug);


--
-- Name: components_banner_banneritems components_banner_banneritems_pkey; Type: CONSTRAINT; Schema: public; Owner: strapi
--

ALTER TABLE ONLY public.components_banner_banneritems
    ADD CONSTRAINT components_banner_banneritems_pkey PRIMARY KEY (id);


--
-- Name: components_banner_banners_components components_banner_banners_components_pkey; Type: CONSTRAINT; Schema: public; Owner: strapi
--

ALTER TABLE ONLY public.components_banner_banners_components
    ADD CONSTRAINT components_banner_banners_components_pkey PRIMARY KEY (id);


--
-- Name: components_banner_banners components_banner_banners_pkey; Type: CONSTRAINT; Schema: public; Owner: strapi
--

ALTER TABLE ONLY public.components_banner_banners
    ADD CONSTRAINT components_banner_banners_pkey PRIMARY KEY (id);


--
-- Name: components_course_courses components_course_courses_pkey; Type: CONSTRAINT; Schema: public; Owner: strapi
--

ALTER TABLE ONLY public.components_course_courses
    ADD CONSTRAINT components_course_courses_pkey PRIMARY KEY (id);


--
-- Name: components_decoration_heroes components_decoration_heroes_pkey; Type: CONSTRAINT; Schema: public; Owner: strapi
--

ALTER TABLE ONLY public.components_decoration_heroes
    ADD CONSTRAINT components_decoration_heroes_pkey PRIMARY KEY (id);


--
-- Name: components_index_achievements components_index_achievements_pkey; Type: CONSTRAINT; Schema: public; Owner: strapi
--

ALTER TABLE ONLY public.components_index_achievements
    ADD CONSTRAINT components_index_achievements_pkey PRIMARY KEY (id);


--
-- Name: components_index_features components_index_features_pkey; Type: CONSTRAINT; Schema: public; Owner: strapi
--

ALTER TABLE ONLY public.components_index_features
    ADD CONSTRAINT components_index_features_pkey PRIMARY KEY (id);


--
-- Name: components_index_histories components_index_histories_pkey; Type: CONSTRAINT; Schema: public; Owner: strapi
--

ALTER TABLE ONLY public.components_index_histories
    ADD CONSTRAINT components_index_histories_pkey PRIMARY KEY (id);


--
-- Name: components_index_talents components_index_talents_pkey; Type: CONSTRAINT; Schema: public; Owner: strapi
--

ALTER TABLE ONLY public.components_index_talents
    ADD CONSTRAINT components_index_talents_pkey PRIMARY KEY (id);


--
-- Name: components_reachdirection_reach_directions components_reachdirection_reach_directions_pkey; Type: CONSTRAINT; Schema: public; Owner: strapi
--

ALTER TABLE ONLY public.components_reachdirection_reach_directions
    ADD CONSTRAINT components_reachdirection_reach_directions_pkey PRIMARY KEY (id);


--
-- Name: components_sections_articles components_sections_articles_pkey; Type: CONSTRAINT; Schema: public; Owner: strapi
--

ALTER TABLE ONLY public.components_sections_articles
    ADD CONSTRAINT components_sections_articles_pkey PRIMARY KEY (id);


--
-- Name: components_sections_people components_sections_people_pkey; Type: CONSTRAINT; Schema: public; Owner: strapi
--

ALTER TABLE ONLY public.components_sections_people
    ADD CONSTRAINT components_sections_people_pkey PRIMARY KEY (id);


--
-- Name: components_shared_seos components_shared_seos_pkey; Type: CONSTRAINT; Schema: public; Owner: strapi
--

ALTER TABLE ONLY public.components_shared_seos
    ADD CONSTRAINT components_shared_seos_pkey PRIMARY KEY (id);


--
-- Name: components_studio_studios_components components_studio_studios_components_pkey; Type: CONSTRAINT; Schema: public; Owner: strapi
--

ALTER TABLE ONLY public.components_studio_studios_components
    ADD CONSTRAINT components_studio_studios_components_pkey PRIMARY KEY (id);


--
-- Name: components_studio_studios components_studio_studios_pkey; Type: CONSTRAINT; Schema: public; Owner: strapi
--

ALTER TABLE ONLY public.components_studio_studios
    ADD CONSTRAINT components_studio_studios_pkey PRIMARY KEY (id);


--
-- Name: core_store core_store_pkey; Type: CONSTRAINT; Schema: public; Owner: strapi
--

ALTER TABLE ONLY public.core_store
    ADD CONSTRAINT core_store_pkey PRIMARY KEY (id);


--
-- Name: course_categories course_categories_pkey; Type: CONSTRAINT; Schema: public; Owner: strapi
--

ALTER TABLE ONLY public.course_categories
    ADD CONSTRAINT course_categories_pkey PRIMARY KEY (id);


--
-- Name: course_categories course_categories_slug_unique; Type: CONSTRAINT; Schema: public; Owner: strapi
--

ALTER TABLE ONLY public.course_categories
    ADD CONSTRAINT course_categories_slug_unique UNIQUE (slug);


--
-- Name: course_works_components course_works_components_pkey; Type: CONSTRAINT; Schema: public; Owner: strapi
--

ALTER TABLE ONLY public.course_works_components
    ADD CONSTRAINT course_works_components_pkey PRIMARY KEY (id);


--
-- Name: course_works course_works_pkey; Type: CONSTRAINT; Schema: public; Owner: strapi
--

ALTER TABLE ONLY public.course_works
    ADD CONSTRAINT course_works_pkey PRIMARY KEY (id);


--
-- Name: course_works course_works_slug_unique; Type: CONSTRAINT; Schema: public; Owner: strapi
--

ALTER TABLE ONLY public.course_works
    ADD CONSTRAINT course_works_slug_unique UNIQUE (slug);


--
-- Name: course_works course_works_title_unique; Type: CONSTRAINT; Schema: public; Owner: strapi
--

ALTER TABLE ONLY public.course_works
    ADD CONSTRAINT course_works_title_unique UNIQUE (title);


--
-- Name: course_works course_works_worksid_unique; Type: CONSTRAINT; Schema: public; Owner: strapi
--

ALTER TABLE ONLY public.course_works
    ADD CONSTRAINT course_works_worksid_unique UNIQUE ("worksId");


--
-- Name: courses_components courses_components_pkey; Type: CONSTRAINT; Schema: public; Owner: strapi
--

ALTER TABLE ONLY public.courses_components
    ADD CONSTRAINT courses_components_pkey PRIMARY KEY (id);


--
-- Name: courses courses_pkey; Type: CONSTRAINT; Schema: public; Owner: strapi
--

ALTER TABLE ONLY public.courses
    ADD CONSTRAINT courses_pkey PRIMARY KEY (id);


--
-- Name: globals_components globals_components_pkey; Type: CONSTRAINT; Schema: public; Owner: strapi
--

ALTER TABLE ONLY public.globals_components
    ADD CONSTRAINT globals_components_pkey PRIMARY KEY (id);


--
-- Name: globals globals_pkey; Type: CONSTRAINT; Schema: public; Owner: strapi
--

ALTER TABLE ONLY public.globals
    ADD CONSTRAINT globals_pkey PRIMARY KEY (id);


--
-- Name: gong_ye_she_ji_shou_huis_components gong_ye_she_ji_shou_huis_components_pkey; Type: CONSTRAINT; Schema: public; Owner: strapi
--

ALTER TABLE ONLY public.gong_ye_she_ji_shou_huis_components
    ADD CONSTRAINT gong_ye_she_ji_shou_huis_components_pkey PRIMARY KEY (id);


--
-- Name: gong_ye_she_ji_shou_huis gong_ye_she_ji_shou_huis_pkey; Type: CONSTRAINT; Schema: public; Owner: strapi
--

ALTER TABLE ONLY public.gong_ye_she_ji_shou_huis
    ADD CONSTRAINT gong_ye_she_ji_shou_huis_pkey PRIMARY KEY (id);


--
-- Name: graduation_img2022s graduation_img2022s_pkey; Type: CONSTRAINT; Schema: public; Owner: strapi
--

ALTER TABLE ONLY public.graduation_img2022s
    ADD CONSTRAINT graduation_img2022s_pkey PRIMARY KEY (id);


--
-- Name: graduation_works graduation_works_pkey; Type: CONSTRAINT; Schema: public; Owner: strapi
--

ALTER TABLE ONLY public.graduation_works
    ADD CONSTRAINT graduation_works_pkey PRIMARY KEY (id);


--
-- Name: gysjsh_components gysjsh_components_pkey; Type: CONSTRAINT; Schema: public; Owner: strapi
--

ALTER TABLE ONLY public.gysjsh_components
    ADD CONSTRAINT gysjsh_components_pkey PRIMARY KEY (id);


--
-- Name: gysjsh gysjsh_pkey; Type: CONSTRAINT; Schema: public; Owner: strapi
--

ALTER TABLE ONLY public.gysjsh
    ADD CONSTRAINT gysjsh_pkey PRIMARY KEY (id);


--
-- Name: homepages_components homepages_components_pkey; Type: CONSTRAINT; Schema: public; Owner: strapi
--

ALTER TABLE ONLY public.homepages_components
    ADD CONSTRAINT homepages_components_pkey PRIMARY KEY (id);


--
-- Name: homepages homepages_pkey; Type: CONSTRAINT; Schema: public; Owner: strapi
--

ALTER TABLE ONLY public.homepages
    ADD CONSTRAINT homepages_pkey PRIMARY KEY (id);


--
-- Name: i18n_locales i18n_locales_code_unique; Type: CONSTRAINT; Schema: public; Owner: strapi
--

ALTER TABLE ONLY public.i18n_locales
    ADD CONSTRAINT i18n_locales_code_unique UNIQUE (code);


--
-- Name: i18n_locales i18n_locales_pkey; Type: CONSTRAINT; Schema: public; Owner: strapi
--

ALTER TABLE ONLY public.i18n_locales
    ADD CONSTRAINT i18n_locales_pkey PRIMARY KEY (id);


--
-- Name: ji_chu_she_jis_components ji_chu_she_jis_components_pkey; Type: CONSTRAINT; Schema: public; Owner: strapi
--

ALTER TABLE ONLY public.ji_chu_she_jis_components
    ADD CONSTRAINT ji_chu_she_jis_components_pkey PRIMARY KEY (id);


--
-- Name: ji_chu_she_jis ji_chu_she_jis_pkey; Type: CONSTRAINT; Schema: public; Owner: strapi
--

ALTER TABLE ONLY public.ji_chu_she_jis
    ADD CONSTRAINT ji_chu_she_jis_pkey PRIMARY KEY (id);


--
-- Name: news_banners_components news_banners_components_pkey; Type: CONSTRAINT; Schema: public; Owner: strapi
--

ALTER TABLE ONLY public.news_banners_components
    ADD CONSTRAINT news_banners_components_pkey PRIMARY KEY (id);


--
-- Name: news_banners news_banners_pkey; Type: CONSTRAINT; Schema: public; Owner: strapi
--

ALTER TABLE ONLY public.news_banners
    ADD CONSTRAINT news_banners_pkey PRIMARY KEY (id);


--
-- Name: news_categories news_categories_pkey; Type: CONSTRAINT; Schema: public; Owner: strapi
--

ALTER TABLE ONLY public.news_categories
    ADD CONSTRAINT news_categories_pkey PRIMARY KEY (id);


--
-- Name: news_centers news_centers_pkey; Type: CONSTRAINT; Schema: public; Owner: strapi
--

ALTER TABLE ONLY public.news_centers
    ADD CONSTRAINT news_centers_pkey PRIMARY KEY (id);


--
-- Name: ren_ji_gong_cheng_xues_components ren_ji_gong_cheng_xues_components_pkey; Type: CONSTRAINT; Schema: public; Owner: strapi
--

ALTER TABLE ONLY public.ren_ji_gong_cheng_xues_components
    ADD CONSTRAINT ren_ji_gong_cheng_xues_components_pkey PRIMARY KEY (id);


--
-- Name: ren_ji_gong_cheng_xues ren_ji_gong_cheng_xues_pkey; Type: CONSTRAINT; Schema: public; Owner: strapi
--

ALTER TABLE ONLY public.ren_ji_gong_cheng_xues
    ADD CONSTRAINT ren_ji_gong_cheng_xues_pkey PRIMARY KEY (id);


--
-- Name: she_ji_ji_chus_components she_ji_ji_chus_components_pkey; Type: CONSTRAINT; Schema: public; Owner: strapi
--

ALTER TABLE ONLY public.she_ji_ji_chus_components
    ADD CONSTRAINT she_ji_ji_chus_components_pkey PRIMARY KEY (id);


--
-- Name: she_ji_ji_chus she_ji_ji_chus_pkey; Type: CONSTRAINT; Schema: public; Owner: strapi
--

ALTER TABLE ONLY public.she_ji_ji_chus
    ADD CONSTRAINT she_ji_ji_chus_pkey PRIMARY KEY (id);


--
-- Name: she_ji_tu_xues_components she_ji_tu_xues_components_pkey; Type: CONSTRAINT; Schema: public; Owner: strapi
--

ALTER TABLE ONLY public.she_ji_tu_xues_components
    ADD CONSTRAINT she_ji_tu_xues_components_pkey PRIMARY KEY (id);


--
-- Name: she_ji_tu_xues she_ji_tu_xues_pkey; Type: CONSTRAINT; Schema: public; Owner: strapi
--

ALTER TABLE ONLY public.she_ji_tu_xues
    ADD CONSTRAINT she_ji_tu_xues_pkey PRIMARY KEY (id);


--
-- Name: strapi_administrator strapi_administrator_email_unique; Type: CONSTRAINT; Schema: public; Owner: strapi
--

ALTER TABLE ONLY public.strapi_administrator
    ADD CONSTRAINT strapi_administrator_email_unique UNIQUE (email);


--
-- Name: strapi_administrator strapi_administrator_pkey; Type: CONSTRAINT; Schema: public; Owner: strapi
--

ALTER TABLE ONLY public.strapi_administrator
    ADD CONSTRAINT strapi_administrator_pkey PRIMARY KEY (id);


--
-- Name: strapi_permission strapi_permission_pkey; Type: CONSTRAINT; Schema: public; Owner: strapi
--

ALTER TABLE ONLY public.strapi_permission
    ADD CONSTRAINT strapi_permission_pkey PRIMARY KEY (id);


--
-- Name: strapi_role strapi_role_code_unique; Type: CONSTRAINT; Schema: public; Owner: strapi
--

ALTER TABLE ONLY public.strapi_role
    ADD CONSTRAINT strapi_role_code_unique UNIQUE (code);


--
-- Name: strapi_role strapi_role_name_unique; Type: CONSTRAINT; Schema: public; Owner: strapi
--

ALTER TABLE ONLY public.strapi_role
    ADD CONSTRAINT strapi_role_name_unique UNIQUE (name);


--
-- Name: strapi_role strapi_role_pkey; Type: CONSTRAINT; Schema: public; Owner: strapi
--

ALTER TABLE ONLY public.strapi_role
    ADD CONSTRAINT strapi_role_pkey PRIMARY KEY (id);


--
-- Name: strapi_users_roles strapi_users_roles_pkey; Type: CONSTRAINT; Schema: public; Owner: strapi
--

ALTER TABLE ONLY public.strapi_users_roles
    ADD CONSTRAINT strapi_users_roles_pkey PRIMARY KEY (id);


--
-- Name: strapi_webhooks strapi_webhooks_pkey; Type: CONSTRAINT; Schema: public; Owner: strapi
--

ALTER TABLE ONLY public.strapi_webhooks
    ADD CONSTRAINT strapi_webhooks_pkey PRIMARY KEY (id);


--
-- Name: studio_categories studio_categories_pkey; Type: CONSTRAINT; Schema: public; Owner: strapi
--

ALTER TABLE ONLY public.studio_categories
    ADD CONSTRAINT studio_categories_pkey PRIMARY KEY (id);


--
-- Name: studio_works_categories studio_works_categories_pkey; Type: CONSTRAINT; Schema: public; Owner: strapi
--

ALTER TABLE ONLY public.studio_works_categories
    ADD CONSTRAINT studio_works_categories_pkey PRIMARY KEY (id);


--
-- Name: studio_works studio_works_pkey; Type: CONSTRAINT; Schema: public; Owner: strapi
--

ALTER TABLE ONLY public.studio_works
    ADD CONSTRAINT studio_works_pkey PRIMARY KEY (id);


--
-- Name: studios_components studios_components_pkey; Type: CONSTRAINT; Schema: public; Owner: strapi
--

ALTER TABLE ONLY public.studios_components
    ADD CONSTRAINT studios_components_pkey PRIMARY KEY (id);


--
-- Name: studios studios_pkey; Type: CONSTRAINT; Schema: public; Owner: strapi
--

ALTER TABLE ONLY public.studios
    ADD CONSTRAINT studios_pkey PRIMARY KEY (id);


--
-- Name: upload_file_morph upload_file_morph_pkey; Type: CONSTRAINT; Schema: public; Owner: strapi
--

ALTER TABLE ONLY public.upload_file_morph
    ADD CONSTRAINT upload_file_morph_pkey PRIMARY KEY (id);


--
-- Name: upload_file upload_file_pkey; Type: CONSTRAINT; Schema: public; Owner: strapi
--

ALTER TABLE ONLY public.upload_file
    ADD CONSTRAINT upload_file_pkey PRIMARY KEY (id);


--
-- Name: users-permissions_permission users-permissions_permission_pkey; Type: CONSTRAINT; Schema: public; Owner: strapi
--

ALTER TABLE ONLY public."users-permissions_permission"
    ADD CONSTRAINT "users-permissions_permission_pkey" PRIMARY KEY (id);


--
-- Name: users-permissions_role users-permissions_role_pkey; Type: CONSTRAINT; Schema: public; Owner: strapi
--

ALTER TABLE ONLY public."users-permissions_role"
    ADD CONSTRAINT "users-permissions_role_pkey" PRIMARY KEY (id);


--
-- Name: users-permissions_role users-permissions_role_type_unique; Type: CONSTRAINT; Schema: public; Owner: strapi
--

ALTER TABLE ONLY public."users-permissions_role"
    ADD CONSTRAINT "users-permissions_role_type_unique" UNIQUE (type);


--
-- Name: users-permissions_user users-permissions_user_pkey; Type: CONSTRAINT; Schema: public; Owner: strapi
--

ALTER TABLE ONLY public."users-permissions_user"
    ADD CONSTRAINT "users-permissions_user_pkey" PRIMARY KEY (id);


--
-- Name: users-permissions_user users-permissions_user_username_unique; Type: CONSTRAINT; Schema: public; Owner: strapi
--

ALTER TABLE ONLY public."users-permissions_user"
    ADD CONSTRAINT "users-permissions_user_username_unique" UNIQUE (username);


--
-- Name: writers writers_pkey; Type: CONSTRAINT; Schema: public; Owner: strapi
--

ALTER TABLE ONLY public.writers
    ADD CONSTRAINT writers_pkey PRIMARY KEY (id);


--
-- Name: yuan_xing_kong_zhi_yu_jiao_hus_components yuan_xing_kong_zhi_yu_jiao_hus_components_pkey; Type: CONSTRAINT; Schema: public; Owner: strapi
--

ALTER TABLE ONLY public.yuan_xing_kong_zhi_yu_jiao_hus_components
    ADD CONSTRAINT yuan_xing_kong_zhi_yu_jiao_hus_components_pkey PRIMARY KEY (id);


--
-- Name: yuan_xing_kong_zhi_yu_jiao_hus yuan_xing_kong_zhi_yu_jiao_hus_pkey; Type: CONSTRAINT; Schema: public; Owner: strapi
--

ALTER TABLE ONLY public.yuan_xing_kong_zhi_yu_jiao_hus
    ADD CONSTRAINT yuan_xing_kong_zhi_yu_jiao_hus_pkey PRIMARY KEY (id);


--
-- Name: about_uses_components about_us_id_fk; Type: FK CONSTRAINT; Schema: public; Owner: strapi
--

ALTER TABLE ONLY public.about_uses_components
    ADD CONSTRAINT about_us_id_fk FOREIGN KEY (about_us_id) REFERENCES public.about_uses(id) ON DELETE CASCADE;


--
-- Name: components_banner_banners_components components_banner_banner_id_fk; Type: FK CONSTRAINT; Schema: public; Owner: strapi
--

ALTER TABLE ONLY public.components_banner_banners_components
    ADD CONSTRAINT components_banner_banner_id_fk FOREIGN KEY (components_banner_banner_id) REFERENCES public.components_banner_banners(id) ON DELETE CASCADE;


--
-- Name: components_studio_studios_components components_studio_studio_id_fk; Type: FK CONSTRAINT; Schema: public; Owner: strapi
--

ALTER TABLE ONLY public.components_studio_studios_components
    ADD CONSTRAINT components_studio_studio_id_fk FOREIGN KEY (components_studio_studio_id) REFERENCES public.components_studio_studios(id) ON DELETE CASCADE;


--
-- Name: courses_components course_id_fk; Type: FK CONSTRAINT; Schema: public; Owner: strapi
--

ALTER TABLE ONLY public.courses_components
    ADD CONSTRAINT course_id_fk FOREIGN KEY (course_id) REFERENCES public.courses(id) ON DELETE CASCADE;


--
-- Name: course_works_components course_work_id_fk; Type: FK CONSTRAINT; Schema: public; Owner: strapi
--

ALTER TABLE ONLY public.course_works_components
    ADD CONSTRAINT course_work_id_fk FOREIGN KEY (course_work_id) REFERENCES public.course_works(id) ON DELETE CASCADE;


--
-- Name: globals_components global_id_fk; Type: FK CONSTRAINT; Schema: public; Owner: strapi
--

ALTER TABLE ONLY public.globals_components
    ADD CONSTRAINT global_id_fk FOREIGN KEY (global_id) REFERENCES public.globals(id) ON DELETE CASCADE;


--
-- Name: gong_ye_she_ji_shou_huis_components gong_ye_she_ji_shou_hui_id_fk; Type: FK CONSTRAINT; Schema: public; Owner: strapi
--

ALTER TABLE ONLY public.gong_ye_she_ji_shou_huis_components
    ADD CONSTRAINT gong_ye_she_ji_shou_hui_id_fk FOREIGN KEY (gong_ye_she_ji_shou_hui_id) REFERENCES public.gong_ye_she_ji_shou_huis(id) ON DELETE CASCADE;


--
-- Name: gysjsh_components gysjsh_id_fk; Type: FK CONSTRAINT; Schema: public; Owner: strapi
--

ALTER TABLE ONLY public.gysjsh_components
    ADD CONSTRAINT gysjsh_id_fk FOREIGN KEY (gysjsh_id) REFERENCES public.gysjsh(id) ON DELETE CASCADE;


--
-- Name: homepages_components homepage_id_fk; Type: FK CONSTRAINT; Schema: public; Owner: strapi
--

ALTER TABLE ONLY public.homepages_components
    ADD CONSTRAINT homepage_id_fk FOREIGN KEY (homepage_id) REFERENCES public.homepages(id) ON DELETE CASCADE;


--
-- Name: ji_chu_she_jis_components ji_chu_she_ji_id_fk; Type: FK CONSTRAINT; Schema: public; Owner: strapi
--

ALTER TABLE ONLY public.ji_chu_she_jis_components
    ADD CONSTRAINT ji_chu_she_ji_id_fk FOREIGN KEY (ji_chu_she_ji_id) REFERENCES public.ji_chu_she_jis(id) ON DELETE CASCADE;


--
-- Name: news_banners_components news_banner_id_fk; Type: FK CONSTRAINT; Schema: public; Owner: strapi
--

ALTER TABLE ONLY public.news_banners_components
    ADD CONSTRAINT news_banner_id_fk FOREIGN KEY (news_banner_id) REFERENCES public.news_banners(id) ON DELETE CASCADE;


--
-- Name: ren_ji_gong_cheng_xues_components ren_ji_gong_cheng_xue_id_fk; Type: FK CONSTRAINT; Schema: public; Owner: strapi
--

ALTER TABLE ONLY public.ren_ji_gong_cheng_xues_components
    ADD CONSTRAINT ren_ji_gong_cheng_xue_id_fk FOREIGN KEY (ren_ji_gong_cheng_xue_id) REFERENCES public.ren_ji_gong_cheng_xues(id) ON DELETE CASCADE;


--
-- Name: she_ji_ji_chus_components she_ji_ji_chus_id_fk; Type: FK CONSTRAINT; Schema: public; Owner: strapi
--

ALTER TABLE ONLY public.she_ji_ji_chus_components
    ADD CONSTRAINT she_ji_ji_chus_id_fk FOREIGN KEY (she_ji_ji_chus_id) REFERENCES public.she_ji_ji_chus(id) ON DELETE CASCADE;


--
-- Name: she_ji_tu_xues_components she_ji_tu_xue_id_fk; Type: FK CONSTRAINT; Schema: public; Owner: strapi
--

ALTER TABLE ONLY public.she_ji_tu_xues_components
    ADD CONSTRAINT she_ji_tu_xue_id_fk FOREIGN KEY (she_ji_tu_xue_id) REFERENCES public.she_ji_tu_xues(id) ON DELETE CASCADE;


--
-- Name: studios_components studio_id_fk; Type: FK CONSTRAINT; Schema: public; Owner: strapi
--

ALTER TABLE ONLY public.studios_components
    ADD CONSTRAINT studio_id_fk FOREIGN KEY (studio_id) REFERENCES public.studios(id) ON DELETE CASCADE;


--
-- Name: yuan_xing_kong_zhi_yu_jiao_hus_components yuan_xing_kong_zhi_yu_jiao_hus_id_fk; Type: FK CONSTRAINT; Schema: public; Owner: strapi
--

ALTER TABLE ONLY public.yuan_xing_kong_zhi_yu_jiao_hus_components
    ADD CONSTRAINT yuan_xing_kong_zhi_yu_jiao_hus_id_fk FOREIGN KEY (yuan_xing_kong_zhi_yu_jiao_hus_id) REFERENCES public.yuan_xing_kong_zhi_yu_jiao_hus(id) ON DELETE CASCADE;


--
-- PostgreSQL database dump complete
--

