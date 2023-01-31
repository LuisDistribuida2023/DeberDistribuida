CREATE TABLE authors
(
    id serial PRIMARY KEY,
    first_name varchar(255),
    last_name  varchar(255)
);

insert into authors(first_name, last_name) values ('Vicente', 'Fernandez');
insert into authors(first_name, last_name) values ('Ted', 'Corleon');
insert into authors(first_name, last_name) values ('Henry', 'Ferris');
insert into authors(first_name, last_name) values ('Sin', 'Esperanza');

ALTER TABLE books
    OWNER TO postgres;

ALTER TABLE books
DROP
COLUMN author,
	ADD COLUMN author_id int,
	ADD constraint fk_authors
	foreign key (author_id)
	references authors(id);


update books
set author_id = 1
where id = 1;
update books
set author_id = 2
where id = 2;
update books
set author_id = 3
where id = 3;
update books
set author_id = 4
where id = 4;