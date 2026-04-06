create table if not exists Genre (
	Genre_id SERIAL primary key,
	Name varchar (60) not null 
);

create table if not exists Artist (
	Artist_id SERIAL primary key,
	Name varchar (60) not null 
);

create table if not exists Album (
	Album_id SERIAL primary key,
	Name varchar (60) not null,
	Year_of_release varchar (4) not null
);

create table if not exists Track (
	Track_id SERIAL primary key,
	Name varchar (60) not null,
	Duration Time not null,
	Album_id INT REFERENCES Album(Album_id)
);

create table if not exists Collection (
	Collection_id SERIAL primary key,
	Name varchar (60) not null,
	Year_of_release varchar (4) not null
);

CREATE TABLE IF NOT EXISTS Genre_Artist (
    Genre_id INT REFERENCES Genre(Genre_id), 
    Artist_id INT REFERENCES Artist(Artist_id),
    PRIMARY KEY (Genre_id, Artist_id)
);

CREATE TABLE IF NOT EXISTS Album_Artist (
    Album_id INT REFERENCES Album(Album_id), 
    Artist_id INT REFERENCES Artist(Artist_id),
    PRIMARY KEY (Album_id, Artist_id)
);

CREATE TABLE IF NOT EXISTS Collection_Track (
    Collection_id INT REFERENCES Collection(Collection_id), 
    Track_id INT REFERENCES Track(Track_id),
    PRIMARY KEY (Collection_id, Track_id)
);
