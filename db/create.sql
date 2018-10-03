create table movies(
    id_movie integer primary key asc,
    name text not null,
    releasedate datetime not null,
    moviegenre text not null,
    movierating integer not null
);
create table users(
    id_user integer primary key asc,
    firstname text not null,
    lastname text not null,
    dateofbirth datetime not null,
    password text not null,
    salt text not null,
    email text not null
);
create table actors(
    id_actor integer not null,
    firstname text not null,
    lastname text not null
);
create table writers(
    id_writer integer primary key asc,
    firstname text not null,
    lastname text not null
);
create table awards(
    id_award integer primary key asc,
    awardname text not null,
    awardsdate datetime not null,
    id_movie integer not null,
    foreign key(id_movie) references movies(id_movie) on delete cascade
);
create table directors(
    id_director integer primary key asc,
    firstname text not null,
    lastname text not null,
);
create table production(
    id_production integer primary key asc,
    productionname text not null
);
create table actcred(
    id_credits integer not null,
    id_actor integer not null,
    id_movie integer not null,
    foreign key(id_actor) references actors(id_actor) on delete cascade,
    foreign key(id_movie) references movies(id_movie) on delete cascade
);
create table dircred(
    id_dircred integer primary key asc,
    id_movie integer not null,
    id_director integer not null,
    foreign key(id_movie) references movies(id_movie) on delete cascade,
    foreign key(id_director) references directors(id_director) on delete cascade
);
create table prodcred(
    id_prodcred integer primary key asc,
    id_movie integer not null,
    id_production integer not null,
    foreign key(id_movie) references movies(id_movie) on delete cascade,
    foreign key(id_production) references production(id_production) on delete cascade
);
create table writercred(
    id_writercred integer primary key asc,
    id_movie integer not null,
    id_writer integer not null,
    foreign key(id_movie) references movies(id_movie) on delete cascade,
    foreign key(id_writer) references writers(id_writer) on delete cascade
);
create table awardcred(
    id_actcred integer primary key asc,
    id_movie integer not null,
    id_award integer not null,
    foreign key(id_movie) references movies(id_movie) on delete cascade,
    foreign key(id_award) references awards(id_award) on delete cascade
);
create table usercomment(
    id_usercomment integer not null,
    id_user integer not null,
    id_movie integer not null,
    movierating integer not null,
    usercomment text null,
    foreign key(id_movie) references movies(id_movie) on delete cascade,
    foreign key(id_user) references users(id_user) on delete cascade
);
