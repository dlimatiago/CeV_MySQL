use cadastro;
create table if not exists assiste(
	id int auto_increment not null,
    data date,
    idgafanhoto int,
    idcurso int,
    primary key(id),
    foreign key(idgafanhoto) references gafanhotos(id),
    foreign key(idcurso) references cursos(idcurso)
) default charset=utf8mb4;

insert into assiste values 
	(default, '2014-03-01', 1, 2);

select * from assiste;

-- Fazendo o join com 3 tabelas

select g.nome,
	c.nome
from gafanhotos as g
join assiste as a
on a.idgafanhoto = g.id
join cursos c
on a.idcurso = c.idcurso
order by g.nome;