create database CadastroDeRuas ;

create table Continente (
id int not null primary key,
nome varchar (233) not null
);

create table Pais(
id int auto_increment not null primary key,
nome varchar (233) not null,
id_cont int not null,
foreign key (id_cont) references Continente (id)
);

create table Estado (
id int auto_increment not null primary key,
nome varchar (233) not null,
id_pais int not null,
foreign key (id_pais) references Pais (id)
);

create table Cidade (
id int auto_increment not null primary key,
nome varchar (233) not null,
id_estado int not null,
foreign key (id_estado) references Estado (id)
);

create table Bairro (
id int auto_increment not null primary key,
nome varchar (233) not null,
id_cidade int not null,
foreign key (id_cidade) references Cidade (id)
);

create table Rua (
id int auto_increment not null primary key,
nome varchar (233) not null,
id_bairro int not null,
foreign key (id_bairro) references Bairro (id)
);


show tables;
alter table continente drop column id;
insert into Continente ( id , nome ) Values 
('1' , 'América do Norte'),
('2' , 'América Central e Caribe'),
('3' , 'América do Sul'),
('4' , 'Europa'),
('5' , 'África');

select * from cidade;

insert into Pais ( id , nome, id_cont ) Values 
(null,'Brasil',1),
(null,'Argentina',2),
(null,'Estados Unidos',1),
(null,'Canadá',1),
(null,'França',5),
(null,'Alemanha',1),
(null,'Japao',1),
(null,'Reino Unido',4),
(null,'Itália',2),
(null,'Espanha',1),
(null,'Austrália',3),
(null,'México',1),
(null,'Rússia',5),
(null,'China',1),
(null,'Índia',4);

INSERT INTO Estado (id, nome, id_pais) VALUES
(NULL, 'São Paulo', 1),
(NULL, 'Rio de Janeiro', 1),
(NULL, 'Minas Gerais', 1),
(NULL, 'Bahia', 1),
(NULL, 'Paraná', 1),
(NULL, 'Santa Catarina', 1),
(NULL, 'Rio Grande do Sul', 1),
(NULL, 'Espírito Santo', 1),
(NULL, 'Ceará', 1),
(NULL, 'Pernambuco', 1),
(NULL, 'Maranhão', 1),
(NULL, 'Goiás', 1),
(NULL, 'Amazonas', 1),
(NULL, 'Piauí', 1),
(NULL, 'Alagoas', 1),
(NULL, 'Pará', 1),
(NULL, 'Acre', 1),
(NULL, 'Rondônia', 1),
(NULL, 'Tocantins', 1),
(NULL, 'Distrito Federal', 1),
(NULL, 'Buenos Aires', 2),
(NULL, 'Córdoba', 2),
(NULL, 'Santa Fé', 2),
(NULL, 'Mendoza', 2),
(NULL, 'Tucumán', 2),
(NULL, 'Misiones', 2),
(NULL, 'Chaco', 2),
(NULL, 'Corrientes', 2),
(NULL, 'Salta', 2),
(NULL, 'Jujuy', 2);

INSERT INTO Cidade (id, nome, id_estado) VALUES
(NULL, 'São Paulo', 1),
(NULL, 'Campinas', 1),
(NULL, 'Santos', 1),
(NULL, 'Ribeirão Preto', 1),
(NULL, 'São Bernardo do Campo', 1),
(NULL, 'Rio de Janeiro', 2),
(NULL, 'Niterói', 2),
(NULL, 'Nova Iguaçu', 2),
(NULL, 'Duque de Caxias', 2),
(NULL, 'Cabo Frio', 2),
(NULL, 'Salvador', 3),
(NULL, 'Feira de Santana', 3),
(NULL, 'Vitória da Conquista', 3),
(NULL, 'Ilhéus', 3),
(NULL, 'Juazeiro', 3),
(NULL, 'Curitiba', 4),
(NULL, 'Londrina', 4),
(NULL, 'Maringá', 4),
(NULL, 'Foz do Iguaçu', 4),
(NULL, 'Ponta Grossa', 4),
(NULL, 'Porto Alegre', 5),
(NULL, 'Caxias do Sul', 5),
(NULL, 'Pelotas', 5),
(NULL, 'Santa Maria', 5),
(NULL, 'Passo Fundo', 5),
(NULL, 'Belo Horizonte', 6),
(NULL, 'Contagem', 6),
(NULL, 'Juiz de Fora', 6),
(NULL, 'Uberlândia', 6),
(NULL, 'Governador Valadares', 6);

INSERT INTO Bairro (id, nome, id_cidade) VALUES
(NULL, 'Vila Progredior', 1),
(NULL, 'Jardim Paulista', 1),
(NULL, 'Vila Mariana', 1),
(NULL, 'Itaim Bibi', 1),
(NULL, 'Moema', 1),
(NULL, 'Botafogo', 2),
(NULL, 'Copacabana', 2),
(NULL, 'Ipanema', 2),
(NULL, 'Barra da Tijuca', 2),
(NULL, 'Leblon', 2),
(NULL, 'Pelourinho', 3),
(NULL, 'Barra', 3),
(NULL, 'Ondina', 3),
(NULL, 'Cidade Baixa', 3),
(NULL, 'Itapuã', 3),
(NULL, 'Centro', 4),
(NULL, 'Água Verde', 4),
(NULL, 'Vila Guaíra', 4),
(NULL, 'Batel', 4),
(NULL, 'Cabral', 4),
(NULL, 'Cidade Baixa', 5),
(NULL, 'Moinhos de Vento', 5),
(NULL, 'Centro Histórico', 5),
(NULL, 'Bom Fim', 5),
(NULL, 'Santa Cecília', 5),
(NULL, 'Savassi', 6),
(NULL, 'Lourdes', 6),
(NULL, 'Funcionários', 6),
(NULL, 'Serra', 6),
(NULL, 'Santo Antônio', 6);

INSERT INTO Rua (id, nome, id_bairro) VALUES
(NULL, 'Rua São Paulo', 1),
(NULL, 'Rua dos Três Corações', 1),
(NULL, 'Rua dos Três Irmãos', 1),
(NULL, 'Rua do Carmo', 1),
(NULL, 'Rua Xingu', 1),
(NULL, 'Rua Visconde de Pirajá', 2),
(NULL, 'Rua do Lavradio', 2),
(NULL, 'Rua General Severiano', 2),
(NULL, 'Rua dos Oitis', 2),
(NULL, 'Rua Francisco Otaviano', 2),
(NULL, 'Rua Baiana', 3),
(NULL, 'Rua dos Bandeirantes', 3),
(NULL, 'Rua Marechal Floriano', 3),
(NULL, 'Rua Oito de Julho', 3),
(NULL, 'Rua João de Deus', 3),
(NULL, 'Rua da Paz', 4),
(NULL, 'Rua dos Pinheiros', 4),
(NULL, 'Rua das Palmeiras', 4),
(NULL, 'Rua do Sol', 4),
(NULL, 'Rua do Galeão', 4),
(NULL, 'Rua Borges de Medeiros', 5),
(NULL, 'Rua João Pessoa', 5),
(NULL, 'Rua Princesa Isabel', 5),
(NULL, 'Rua Cardoso Pimentel', 5),
(NULL, 'Rua General Osório', 5),
(NULL, 'Rua Santo Antônio', 6),
(NULL, 'Rua Paraná', 6),
(NULL, 'Rua do Ouro', 6),
(NULL, 'Rua das Flores', 6),
(NULL, 'Rua do Acampamento', 6),
(NULL, 'Rua do Cais', 7),
(NULL, 'Rua São João', 7),
(NULL, 'Rua do Mercado', 7),
(NULL, 'Rua da Liberdade', 7),
(NULL, 'Rua das Américas', 7),
(NULL, 'Rua Camões', 8),
(NULL, 'Rua da Penha', 8),
(NULL, 'Rua Dom Pedro II', 8),
(NULL, 'Rua Pedro II', 8),
(NULL, 'Rua do Sol Nascente', 8),
(NULL, 'Rua das Laranjeiras', 9),
(NULL, 'Rua da Vitória', 9),
(NULL, 'Rua dos Bosques', 9),
(NULL, 'Rua José Bonifácio', 9),
(NULL, 'Rua da Chácara', 9);

select nome, id from rua where id = 37 ;
select * from bairro where id = 12;
select nome from cidade where id = 29;
select nome from estado where id = 9;
select nome from pais where id = 15;
select nome from continente where id = 4;

alter table estado add column (
populacao int not null );
show tables ;
---------------------------------------------------------------
update continente set populacao = 592072212 where id = 1;
update continente set populacao = 181007470 where id = 2;
update continente set populacao = 430759766 where id = 3;
update continente set populacao = 744614846 where id = 4;
update continente set populacao = 1543126438 where id = 5;
---------------------------------------------------------------
update pais set populacao = 220051512 where id = 1;
update pais set populacao = 45376763 where id = 2;
update pais set populacao = 341963408 where id = 3;
update pais set populacao = 38067903 where id = 4;
update pais set populacao = 67391582 where id = 5;
update pais set populacao = 83783942 where id = 6;
update pais set populacao = 123201945 where id = 7;
update pais set populacao = 67886011 where id = 8;
update pais set populacao = 60461826 where id = 9;
update pais set populacao = 46719142 where id = 10;
update pais set populacao = 25499884 where id = 11;
update pais set populacao = 130739927 where id = 12;
update pais set populacao = 140820810 where id = 13;
update pais set populacao = 1416043270 where id = 14;
update pais set populacao = 1409128296 where id = 15;
---------------------------------------------------------------
update estado set populacao = 46000000 where nome = 'São Paulo';
update estado set populacao = 17366189 where nome = 'Rio de Janeiro';
update estado set populacao = 21100000 where nome = 'Minas Gerais';
update estado set populacao = 14800000 where nome = 'Bahia';
update estado set populacao = 11500000 where nome = 'Paraná';
update estado set populacao = 7250000 where nome = 'Santa Catarina';
update estado set populacao = 11300000 where nome = 'Rio Grande do Sul';
update estado set populacao = 9070000 where nome = 'Espírito Santo';
update estado set populacao = 9550000 where nome = 'Ceará';
update estado set populacao = 7100000 where nome = 'Corrientes';
update estado set populacao = 7000000 where nome = 'Maranhão';
update estado set populacao = 4200000 where nome = 'Goiás';
update estado set populacao = 3300000 where nome = 'Amazonas';
update estado set populacao = 3340000 where nome = 'Piauí';
update estado set populacao = 8600000 where nome = 'Alagoas';
update estado set populacao = 800000 where nome = 'Pará';
update estado set populacao = 1800000 where nome = 'Acre';
update estado set populacao = 1600000 where nome = 'Rondônia';
update estado set populacao = 3100000 where nome = 'Tocantins';
update estado set populacao = 17300000 where nome = 'Distrito Federal';
update estado set populacao = 3800000 where nome = 'Buenos Aires';
update estado set populacao = 3500000 where nome = 'Córdoba';
update estado set populacao = 2000000 where nome = 'Santa Fé';
update estado set populacao = 1200000 where nome = 'Mendoza';
update estado set populacao = 1200000 where nome = 'Tucumán';
update estado set populacao = 1300000 where nome = 'Misiones';
update estado set populacao = 1600000 where nome = 'Chaco';
update estado set populacao = 800000 where nome = 'Corriente';
update estado set populacao = 46000000 where nome = 'Salta';
update estado set populacao = 17300000 where nome = 'Jujuy';

select * from estado ;
select nome,populacao from pais where populacao = ( select max(populacao) from pais);
select nome,populacao from estado where populacao = ( select max(populacao) from estado);





