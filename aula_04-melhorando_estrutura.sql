use 
	cadastro;
drop
	database cadastro;

create
	database cadastro
default 
	character set utf8mb4
default collate
	utf8mb4_unicode_ci; -- Mais atual

create
	table pessoas(
    id int not null auto_increment,
    nome varchar(30) NOT NULL,
    nascimento date,
    sexo enum('M', 'F'),
    peso decimal(5, 2),
    altura decimal(3, 2),
    nacionalidade varchar(15) default 'Brasil',
    primary key(id)
    )
default 
	charset = utf8mb4;
