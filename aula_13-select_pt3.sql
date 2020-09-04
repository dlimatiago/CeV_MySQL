select carga, 
	count(nome)
from cursos
group by carga
order by carga;

select carga,
	count(*)
from cursos
where totaulas = '30'
group by carga;

select carga,
	count(nome)
from cursos
group by carga
having count(nome) >= 5
order by carga;

select ano,
	count(*)
from cursos
where totaulas > 30
group by ano
having ano > '2013'
order by count(*) desc;

-- Se surgir a seguinte situação. E se eu quiser agrupar os cursos que tenha a carga maior que média geral de carga dos  cursos?

select carga,
	count(*)
from cursos
where ano > '2015'
group by carga
having carga > (select avg(carga) from cursos);
