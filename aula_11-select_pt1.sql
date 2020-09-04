-- Select total ordenado
select * 
from cursos
order by nome;

-- Select especifico com parametro where
select nome, carga
from cursos
where ano = '2016'
order by nome;

-- Select total com where e operador relacional
select *
from cursos
where carga > 40;

select nome, totaulas
from cursos
where idcurso between 10 and 20
order by totaulas desc, nome;

select nome, descricao, ano
from cursos
where ano in (2014, 2017, 2020)
order by nome, ano;

select nome, ano, descricao
from cursos
where totaulas < 25 and carga >= 40
order by  ano desc;