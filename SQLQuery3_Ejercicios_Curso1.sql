CREATE DATABASE biblioteca;
CREATE TABLE libros (autor varchar(20), titulo varchar (50), categoria varchar (20), a�o varchar (4), cantpaginas char (4), codigolibro int primary key);

insert into libros values ('Stephen King', 'La zona muerta', 'Terror', '1980', '402', '101');
insert into libros values ('Stephen King','It','Terror','2016','1504','102');
insert into libros values ('Robert Harris','Enigma','Intriga','1995','390','201');
insert into libros values ('J RR Tolkien', 'El Se�or de Los Anillos 1 La comunidad del anillo', 'Fantas�a', '1991', '548', '301' );
insert into libros values ('Ian Flening', 'Doctor No', 'Aventura', '2012', '320', '401');

select * from libros;
select * from libros where autor = 'Stephen King';
select titulo, autor from libros order by a�o;
select titulo, a�o from libros where a�o between 1980  and 1998;
select titulo, autor, a�o from libros where categoria = 'Intriga' or categoria = 'Terror'; 
select titulo, autor, a�o from libros where categoria IN ('Intriga', 'Terror') order by autor asc, a�o desc;
insert into libros (autor, titulo, categoria, codigolibro)values ('Calder�n de la Barca', 'La vida es sue�o', 'Teatro', '501');
select autor, titulo from libros;
select * from libros;
update libros set cantpaginas = 144, a�o = 1995 where codigolibro = 501;
select * from libros;
select a�o from libros;
select count(a�o) from libros; 
select DISTINCT a�o from libros; 
select a�o from libros group by a�o having count(*) >= 2;
select titulo, autor from libros where a�o = (select min(a�o) from libros);
select upper (titulo), upper (autor) from libros where titulo = (select max(titulo) from libros);