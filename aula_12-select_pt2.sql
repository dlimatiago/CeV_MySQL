-- Registros que começam com P
select *
from cursos
where nome like 'P%'; 

-- Resgistros que terminam em A
select *
from cursos
where nome like '%a'; 

-- Registros que possuem A
select *
from cursos
where nome like '%a%'; 

-- Resgistros que não possuem A
select *
from cursos
where nome not like '%a%';

-- Registros que começem com PH e terminem com P
select *
from cursos
where nome like 'ph%p';

-- Busca literal
select *
from gafanhotos
where nome like '%_silva%';

-- Usando o distinct
select distinct nacionalidade
from gafanhotos;

-- Função de agregação count

select count(*)
from cursos 
where ano >= '2016';