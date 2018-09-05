create table if not exists users(
    idUser integer primary key asc,
    studentID integer,
    username text,
    password text,
    salt text,
    first text,
    last text,
    userLevel integer default 2
);
