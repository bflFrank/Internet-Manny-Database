CREATE TABLE IF NOT EXISTS users(
    idUser integer primary key asc,
    studentID integer,
    username text,
    password text,
    salt text,
    first text,
    last text,
    userLevel integer default 2
);

CREATE TABLE IF NOT EXISTS movies(
    movieID INTEGER PRIMARY KEY ASC,
    movie_name TEXT NOT NULL,
    relase_date NUMERIC,
    movie_genre TEXT NOT NULL,
    movie_rating INTEGER,

);

create table if not exists awards(
    
);

create table if not exists movies(
    
);
