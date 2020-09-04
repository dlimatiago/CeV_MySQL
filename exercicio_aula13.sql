/* 1 - Uma lista com as profissões dos gafanhotos  e seus respectivos quantitativos */
select profissao,
	count(nome)
from gafanhotos
group by profissao
order by count(nome) desc;

/* 2 - Quantos homens e quantas mulheres nasceram após 1 de janeiro de 2005 */

select sexo,
	count(nome)
from gafanhotos
where nascimento > '2005-01-01'
group by sexo;

/* 3 - Uma lista com gafanhotos que nasceram fora do Brasil, mostrando o país de origem e total de pessoas nascidas lá
Filtrar por países que tenha 3 ou mais gafanhotos */
select nacionalidade,
	count(*)
from gafanhotos
where nacionalidade != 'Brasil'
group by nacionalidade
having count(*) >= 3
order by count(*) desc;

/* 4 - Uma lista agrupada pela altura dos gafanhotos, mostrando quantas pessoas pesam mais de 100 kg e que
estão acima da média de altura de todos os cadastrados*/
select altura
from gafanhotos
where peso > 100
group by altura
having altura > (select avg(altura) from gafanhotos)
order by altura desc;
