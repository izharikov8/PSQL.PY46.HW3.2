create table if not exists genre (
id serial primary key,
genre_name varchar(40) not null unique);

create table if not exists singer (
id serial primary key,
singer_name varchar(40) not null unique);

create table if not exists GenreSinger (
genre_id integer references genre(id),
singer_id integer references singer(id),
constraint pk primary key (genre_id, singer_id));

create table if not exists albums (
id serial primary key,
album_name varchar(40) not null unique,
album_year integer not null,
singer_id integer references singer(id));

create table if not exists SingerAlbums (
album_id integer references albums(id),
singer_id integer references singer(id),
constraint pk1 primary key (album_id, singer_id));

create table if not exists songs (
id serial primary key,
song_name varchar(40) not null unique,
duration integer not null,
album_id integer references albums(id));

create table if not exists collection (
id serial primary key,
collection_name varchar(40) not null unique,
collection_year integer not null);

create table if not exists CollectionSongs (
song_id integer references songs(id),
collection_id integer references collection(id),
constraint pk2 primary key (song_id, collection_id));