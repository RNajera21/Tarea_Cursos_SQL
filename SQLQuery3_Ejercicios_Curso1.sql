CREATE DATABASE biblioteca;
CREATE TABLE libros (autor varchar(20), titulo varchar (50), categoria varchar (20), año varchar (4), cantpaginas char (4), codigolibro int primary key);

insert into libros values ('Stephen King', 'La zona muerta', 'Terror', '1980', '402', '101');
insert into libros values ('Stephen King','It','Terror','2016','1504','102');
insert into libros values ('Robert Harris','Enigma','Intriga','1995','390','201');
insert into libros values ('J RR Tolkien', 'El Señor de Los Anillos 1 La comunidad del anillo', 'Fantasía', '1991', '548', '301' );
insert into libros values ('Ian Flening', 'Doctor No', 'Aventura', '2012', '320', '401');

select * from libros;
select * from libros where autor = 'Stephen King';
select titulo, autor from libros order by año;
select titulo, año from libros where año between 1980  and 1998;
select titulo, autor, año from libros where categoria = 'Intriga' or categoria = 'Terror'; 
select titulo, autor, año from libros where categoria IN ('Intriga', 'Terror') order by autor asc, año desc;
insert into libros (autor, titulo, categoria, codigolibro)values ('Calderón de la Barca', 'La vida es sueño', 'Teatro', '501');
select autor, titulo from libros;
select * from libros;
update libros set cantpaginas = 144, año = 1995 where codigolibro = 501;
select * from libros;
select año from libros;
select count(año) from libros; 
select DISTINCT año from libros; 
select año from libros group by año having count(*) >= 2;
select titulo, autor from libros where año = (select min(año) from libros);
select upper (titulo), upper (autor) from libros where titulo = (select max(titulo) from libros);