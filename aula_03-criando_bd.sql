create
	database cadastro;
use 
	cadastro;
create
	table pessoas(
    nome varchar(50),
    idade tinyint,
    sexo varchar(12),
    peso float,
    altura float,
    nacionalidade varchar(20)
    );
describe
	pessoas;