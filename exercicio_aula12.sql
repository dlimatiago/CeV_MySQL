desc gafanhotos;

-- Exercicio 1
select nome
from gafanhotos
where sexo = 'F';

-- Exercicio 2
select *
from gafanhotos
where nascimento between '2000-01-01' 
	and '2015-12-31';

-- Exercicio 3
select nome
from gafanhotos
where sexo = 'M' 
	and profissao like 'programador';

-- Exercicio 4
select *
from gafanhotos
where nome like 'j%' 
	and nacionalidade = 'Brasil';

-- Exercicio 5
select nome, nacionalidade
from gafanhotos
where sexo = 'M' 
	and peso < '100' 
    and nome like '%silva%'
    and nacionalidade != 'Brasil';

-- Exercicio 6
select max(altura)
from gafanhotos
where sexo = 'M'
	and nacionalidade = 'Brasil';

-- Exercicio 7
select avg(peso)
from gafanhotos;

-- Exercicio 8
select min(peso)
from gafanhotos
where sexo = 'F' 
	and nacionalidade != 'Brasil'
    and nascimento between '1990-01-01' and '2000-12-31';

-- Exercicio 9
select count(*)
from gafanhotos
where sexo = 'F'
	and altura > '1.90';