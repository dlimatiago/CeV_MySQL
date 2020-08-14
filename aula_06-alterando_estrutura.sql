describe pessoas; -- Pode ser comprimida usando desc
select * from pessoas;

alter
	table ganfanhotos
rename to
	pessoas;

alter 
	table pessoas
add
	column profissao varchar(10);

alter
	table pessoas
drop
	column profissao;

alter 
	table pessoas
add
	column profissao varchar(10) after nome;
    
alter 
	table pessoas
add
	codigo int first; -- Column não foi usada pois é opcional
    
alter 
	table pessoas
modify
	profissao varchar(20) not null default ''; -- Esse default '' serve para resolver o conflito já que o ser criada n terá dados
    
alter
	table pessoas
change 
	prof profissao varchar(15) not null default '';
    
-- ************************************* Usando IDEMPOTENCIA EM SQL *************************************

desc cursos;
create
	table if not exists curso(
    nome varchar(30) not null unique, -- Unique é diferente de PK o que ela faz é não deixar dois cursos com mesmo nome
    descricao text,
    carga int unsigned, -- Sem sinal, economiza byte para cada registro
    total_aulas int unsigned,
    ano year default '2016'
    )
default
	charset = utf8mb4;
    
alter 
	table cursos
add
	column idcurso int first;
alter
	table cursos
add 
	primary key(idcurso);