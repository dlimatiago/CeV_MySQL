insert 
	into cursos values
 ('1','HTML4','Curso de HTML5', '40','37','2014'),
    ('2','Algoritmos','Lógica de Programação','20','15','2014'),
    ('3','Photoshop','Dicas de Photoshop CC','10','8','2014'),
    ('4','PGP','Curso de PHP para iniciantes','40','20','2010'),
    ('5','Jarva','Introdução à Linguagem Java','10','29','2000'),
    ('6','MySQL','Banco de Dados MySQL','30','15','2016'),
    ('7','Word','Curso completo de Word','40','30','2016'),
    ('8','Sapateado','Danças Rítmicas','40','30','2018'),
    ('9','Cozinha Árabe','Aprenda a fazer Kibe','40','30','2018'),
    ('10','Youtuber','Gerar polêmica e ganhar inscritos','5','2','2018');
    
-- Atualizando a linha usasse a seguinte sintaxe

update cursos
set nome = 'HTML5'
where idcurso = 1;
    
update cursos
set nome = 'PHP', ano = 2015
where idcurso = 4;

-- É possível usar um comando para limitar o numero de linhas afetadas
-- Caso tenha algum erro.
update cursos
set nome = 'Java', carga = 40, ano = 2015
where idcurso = 5
limit 1;

-- O comando pode ser muito perigoso se não for usado corretamente
-- Exemplo:
update cursos
set carga = 800, ano = 2050
where ano = 2018
limit 2;
-- mesmo tendo 3 registro de 2050, o limit faz que apenas a primeira linha delas seja modificada

-- O comando updates modifica as linhas mas não exclui elas de la, por isso, se usa o comando delete.
delete from cursos
where idcurso = 8;

delete from cursos
where ano = 2050
limit 2;

select *
from cursos;

-- É possível apagar todos os dados da tabela e pra isso se usa o comando truncate

truncate table cursos;
