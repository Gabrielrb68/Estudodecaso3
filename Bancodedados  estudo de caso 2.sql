CREATE DATABASE veninicao_petshop;

use veninicao_petshop;

CREATE TABLE endereco (

cep INT NOT NULL PRIMARY KEY ,
rua VARCHAR(45) NOT NULL,
complemento VARCHAR(45),
numero_casa INT NOT NULL

);

CREATE TABLE funcionarios(
cpf INT NOT NULL PRIMARY KEY,
nome_funcionario VARCHAR(255) NOT NULL ,
salario FLOAT NOT NULL,
funcao VARCHAR(45) NOT NULL

); 

CREATE TABLE tutor_animal(
cpf_tutor INT NOT NULL PRIMARY KEY,
nome_tutor VARCHAR(255) NOT NULL,
cep VARCHAR(255) NOT NULL

);

CREATE TABLE paciente(
idpaciente INT NOT NULL PRIMARY KEY auto_increment,
nome_paciente VARCHAR(255) NOT NULL,
sexo_paciente CHAR(1) NOT NULL,
especie_paciente VARCHAR(45) NOT NULL,
nasc_paciente DATETIME(6) NOT NULL,
tutor_animal_cpf_tutor INT NOT NULL,
FOREIGN KEY(tutor_animal_cpf_tutor) REFERENCES tutor_animal(cpf_tutor)
);  

CREATE TABLE servicos(
idservico INT NOT NULL PRIMARY KEY auto_increment,
descricao_servico VARCHAR(255),
preco_servico VARCHAR(45) NOT NULL,
consulta_entrada DATETIME(6) NOT NULL,
consulta_saida DATETIME(6) NOT NULL
); 

CREATE TABLE equipamentos(
idequipamentos INT NOT NULL PRIMARY KEY AUTO_INCREMENT,
quantidade VARCHAR(99) NOT NULL,
ferramenta VARCHAR(99) NOT NULL
);

CREATE TABLE endereco_has_tutor_animal(
	endereco_cep INT NOT NULL,
    tutor_animal_cpf_tutor INT NOT NULL,
    PRIMARY KEY(endereco_cep, tutor_animal_cpf_tutor),
    FOREIGN KEY (endereco_cep) REFERENCES endereco(cep),
    FOREIGN KEY (tutor_animal_cpf_tutor) REFERENCES tutor_animal(cpf_tutor)
);

CREATE TABLE paciente_has_servico_consulta(
paciente_idpaciente INT NOT NULL,
servicos_idservico INT NOT NULL,
PRIMARY KEY(paciente_idpaciente,servicos_idservico),
FOREIGN KEY (paciente_idpaciente) REFERENCES paciente(idpaciente),
    FOREIGN KEY (servicos_idservico) REFERENCES servicos(idservico)    
);

CREATE TABLE equipamentos_has_servicos_animais(
servicos_idservico INT NOT NULL,
equipamentos_idequipamentos INT NOT NULL,
funcionarios_cpf INT NOT NULL,
PRIMARY KEY(servicos_idservico,equipamentos_idequipamentos,funcionarios_cpf),
FOREIGN KEY (servicos_idservico) REFERENCES servicos(idservico),
FOREIGN KEY (equipamentos_idequipamentos) REFERENCES equipamentos(idequipamentos),
FOREIGN KEY(funcionarios_cpf) REFERENCES funcionarios(cpf)
);

insert into endereco (cep, rua, complemento, numero_casa) values (470180514, '53614 Little Fleur Street', 'ornare imperdiet sapien urna', 354);
insert into endereco (cep, rua, complemento, numero_casa) values (165619077, '47 Arapahoe Circle', 'eget massa tempor convallis nulla n', 33);
insert into endereco (cep, rua, complemento, numero_casa) values (703900187, '745 Maple Street', 'lectus vestibulum quam sapien', 66);
insert into endereco (cep, rua, complemento, numero_casa) values (633376349, '63 American Parkway', 'lacinia sapien quis libero nul', 291);
insert into endereco (cep, rua, complemento, numero_casa) values (461843805, '54 Meadow Vale Way', 'quam pede lobortis ligula sit amet', 11);
insert into endereco (cep, rua, complemento, numero_casa) values (589347880, '45293 Montana Junction', 'sollicitudin mi sit amet ', 440);
insert into endereco (cep, rua, complemento, numero_casa) values (240335545, '4729 Arapahoe Point', 'ullamcorper purus sit amet ', 363);
insert into endereco (cep, rua, complemento, numero_casa) values (431764249, '44 Westport Parkway', 'nisi vulputate nonummy ', 399);
insert into endereco (cep, rua, complemento, numero_casa) values (785989369, '20728 Tennyson Hill', 'aliquet pulvinar sed n', 11);
insert into endereco (cep, rua, complemento, numero_casa) values (166139710, '828 Carey Avenue', 'mattis pulvinar nulla pede', 293);

insert into funcionarios (cpf, nome_funcionario, salario, funcao) values (153221474, 'Bryanty Dellenbach', 3691.22, 'Vestibulum i');
insert into funcionarios (cpf, nome_funcionario, salario, funcao) values (794754770, 'Pattie Meiner', 3671.23, 'Lorem ipsum do');
insert into funcionarios (cpf, nome_funcionario, salario, funcao) values (819753167, 'Emlynn Espinha', 3143.94, 'Praesent .');
insert into funcionarios (cpf, nome_funcionario, salario, funcao) values (150869521, 'Korney Knatt', 3746.23, 'Pellentesqu');
insert into funcionarios (cpf, nome_funcionario, salario, funcao) values (863849628, 'Myrwyn Shakspeare', 3439.44, 'Nullam v');
insert into funcionarios (cpf, nome_funcionario, salario, funcao) values (462053773, 'Wallie Durbann', 3336.47, 'Vivamus t.');
insert into funcionarios (cpf, nome_funcionario, salario, funcao) values (733959357, 'Lynne Milillo', 2908.23, 'Maecenas');
insert into funcionarios (cpf, nome_funcionario, salario, funcao) values (071902071, 'Egor Summerhayes', 3499.88, 'Donec vitae nisi.');
insert into funcionarios (cpf, nome_funcionario, salario, funcao) values (640705086, 'Ninetta Revey', 2820.05, 'Fusce lac');
insert into funcionarios (cpf, nome_funcionario, salario, funcao) values (714289054, 'Chester Rosthorn', 3495.94, 'Nullam varius.');


insert into equipamentos (idequipamentos, quantidade, ferramenta) values (1, 70, 'Milrinone Lactate');
insert into equipamentos (idequipamentos, quantidade, ferramenta) values (2, 98, 'Hydralazine Hydrochloride');
insert into equipamentos (idequipamentos, quantidade, ferramenta) values (3, 85, 'Anastrozole');
insert into equipamentos (idequipamentos, quantidade, ferramenta) values (4, 66, 'Clarithromycin');
insert into equipamentos (idequipamentos, quantidade, ferramenta) values (5, 137, 'Orajel for Codl Sores Relief and Concealer');
insert into equipamentos (idequipamentos, quantidade, ferramenta) values (6, 45, 'Ibuprofen');
insert into equipamentos (idequipamentos, quantidade, ferramenta) values (7, 136, 'Tizanidine');
insert into equipamentos (idequipamentos, quantidade, ferramenta) values (8, 109, 'Goodys Extra Strength');
insert into equipamentos (idequipamentos, quantidade, ferramenta) values (9, 18, 'VENTOLIN');
insert into equipamentos (idequipamentos, quantidade, ferramenta) values (10, 39, 'ESIKA');


insert into paciente (idpaciente, nome_paciente, sexo_paciente, especie_paciente, nasc_paciente) values (1, 'Bartlet Baddam', 'M', 'Armadillo, nine-banded', 15-10-2016);
insert into paciente (idpaciente, nome_paciente, sexo_paciente, especie_paciente, nasc_paciente) values (2, 'Neal Mottini', 'F', 'Leopard, indian', 28-06-2022);
insert into paciente (idpaciente, nome_paciente, sexo_paciente, especie_paciente, nasc_paciente) values (3, 'Karlene Dauber', 'M', 'Crane, stanley', 09-06-2018);
insert into paciente (idpaciente, nome_paciente, sexo_paciente, especie_paciente, nasc_paciente) values (4, 'Glenden Dean', 'M', 'Dassie', 23-07-2019);
insert into paciente (idpaciente, nome_paciente, sexo_paciente, especie_paciente, nasc_paciente) values (5, 'Glenn Yare', 'M', 'Peacock, blue', 15-02-2018);
insert into paciente (idpaciente, nome_paciente, sexo_paciente, especie_paciente, nasc_paciente) values (6, 'Lira Hearl', 'F', 'Badger, eurasian',20-05-2019);
insert into paciente (idpaciente, nome_paciente, sexo_paciente, especie_paciente, nasc_paciente) values (7, 'Nanon Dallison', 'F', 'Greater sage grouse', 25-07-2019);
insert into paciente (idpaciente, nome_paciente, sexo_paciente, especie_paciente, nasc_paciente) values (8, 'Krystalle Dumbare', 'M', 'Purple grenadier', 09-05-2022);
insert into paciente (idpaciente, nome_paciente, sexo_paciente, especie_paciente, nasc_paciente) values (9, 'Cathryn Bidwell', 'F', 'Blacksmith plover', 26-03-2016);
insert into paciente (idpaciente, nome_paciente, sexo_paciente, especie_paciente, nasc_paciente) values (10, 'Innis Maha', 'F', 'Blackbird, red-winged', 29-10-2022);


insert into servicos (idservico, descricao_servico, preco_servico, consulta_entrada, consulta_saida) values (1, 'Donec odio justo, sollicitudin ut, suscipit a, feugiat et, eros.', '$274.29', '21.01.2022', 30-01-2022);
insert into servicos (idservico, descricao_servico, preco_servico, consulta_entrada, consulta_saida) values (2, 'Praesent blandit lacinia erat.', '$195.41', '23.01.2022', 28-01-2022);
insert into servicos (idservico, descricao_servico, preco_servico, consulta_entrada, consulta_saida) values (3, 'Vestibulum sed magna at nunc commodo placerat.', '$233.83', '14.02.2022', 25-01-2022);
insert into servicos (idservico, descricao_servico, preco_servico, consulta_entrada, consulta_saida) values (4, 'Nulla ut erat id mauris vulputate elementum.', '$218.35', '01.01.2022', 29-01-2022);
insert into servicos (idservico, descricao_servico, preco_servico, consulta_entrada, consulta_saida) values (5, 'Praesent id massa id nisl venenatis lacinia. Aenean sit amet justo.', '$200.81', '19.02.2022', 18-01-2022);
insert into servicos (idservico, descricao_servico, preco_servico, consulta_entrada, consulta_saida) values (6, 'Pellentesque eget nunc. Donec quis orci eget orci vehicula condimentum.', '$221.64', '15.02.2022', 15-01-2022);
insert into servicos (idservico, descricao_servico, preco_servico, consulta_entrada, consulta_saida) values (7, 'Cum sociis natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus. Vivamus vestibulum sagittis sapien.', '$251.96', '07.02.2022', '23/01/2022');
insert into servicos (idservico, descricao_servico, preco_servico, consulta_entrada, consulta_saida) values (8, 'Phasellus sit amet erat.', '$296.73', '03.02.2022', '14/01/2022');
insert into servicos (idservico, descricao_servico, preco_servico, consulta_entrada, consulta_saida) values (9, 'Aenean fermentum.', '$286.92', '15.02.2022', '16/01/2022');
insert into servicos (idservico, descricao_servico, preco_servico, consulta_entrada, consulta_saida) values (10, 'Proin risus.', '$209.48', '04.01.2022', '22/01/2022');

update endereco set rua = "Paul mantau",numero_casa = 41 WHERE cep = 703900187;
update endereco set rua = "Suguma Street",numero_casa = 51 WHERE cep = 589347880;
update endereco set rua = "Sauls Law",numero_casa = 45 WHERE cep = 431764249;
update endereco set rua = "Morgan Freat",numero_casa = 32 WHERE cep = 165619077;
update endereco set rua = "Brunas Street",numero_casa = 10 WHERE cep = 461843805;

update equipamentos set quantidade = 12, ferramenta = "Marreta" WHERE idequipamentos = 1;
update equipamentos set quantidade = 23, ferramenta = "Bisturi" WHERE idequipamentos = 4;
update equipamentos set quantidade = 54, ferramenta = "Seringa" WHERE idequipamentos = 2;
update equipamentos set quantidade = 8, ferramenta = "Agulha" WHERE idequipamentos = 5;
update equipamentos set quantidade = 71, ferramenta = "Luva" WHERE idequipamentos = 7;

update servicos set descricao_servico = "Tudo ocorreu conforme o planejado,sem complica????es", preco_servico = "$170.0" WHERE idservico = 6;
update servicos set descricao_servico = "Tudo ocorreu conforme o planejado,com algumas pequenas complica????es durante o procedimento", preco_servico = "$260.0" WHERE idservico = 1;
update servicos set descricao_servico = "Houve uma grande recaida comparado a ultima sess??o", preco_servico = "$663.0" WHERE idservico = 4;
update servicos set descricao_servico = "Conforme a normalidade", preco_servico = "$552.0" WHERE idservico = 2;
update servicos set descricao_servico = "Apresenta uma crescente melhora", preco_servico = "$80.90" WHERE idservico = 3;

update funcionarios set nome_funcionario = "Serena Whitehouse",funcao = "Anestesista" WHERE cpf = 153221474;
update funcionarios set nome_funcionario = "Jo??o Cabral",funcao = "Cirurgi??o" WHERE cpf = 462053773;
update funcionarios set nome_funcionario = "Wen kado hashi",funcao = "Secretario" WHERE cpf = 071902071;
update funcionarios set nome_funcionario = "Vasco da gama",funcao = "Enfermeiro" WHERE cpf = 640705086;
update funcionarios set nome_funcionario = "Melon Musk",funcao = "Zelador" WHERE cpf = 166139710;

update paciente set sexo_paciente = "M",especie_paciente = "Ornitorrinco" WHERE idpaciente = 7; 
update paciente set sexo_paciente = "M",especie_paciente = "Cachorro" WHERE idpaciente = 3; 
update paciente set sexo_paciente = "F",especie_paciente = "Cabra" WHERE idpaciente = 1; 
update paciente set sexo_paciente = "F",especie_paciente = "Ovelha" WHERE idpaciente = 9; 
update paciente set sexo_paciente = "M",especie_paciente = "Bode" WHERE idpaciente = 10; 

DELETE FROM endereco WHERE cep = 703900187;
DELETE FROM endereco WHERE cep = 589347880;
DELETE FROM endereco WHERE cep = 43176-4249;
DELETE FROM endereco WHERE cep = 165619077;
DELETE FROM endereco WHERE cep = 461843805;

DELETE FROM equipamentos WHERE idequipamentos = 1 ;
DELETE FROM equipamentos WHERE idequipamentos = 4;
DELETE FROM equipamentos WHERE idequipamentos = 2;
DELETE FROM equipamentos WHERE idequipamentos = 5;
DELETE FROM equipamentos WHERE idequipamentos = 7;

DELETE FROM servicos WHERE idservico = 1;
DELETE FROM servicos WHERE idservico = 2;
DELETE FROM servicos WHERE idservico = 3;
DELETE FROM servicos WHERE idservico = 4;
DELETE FROM servicos WHERE idservico = 8;

DELETE FROM funcionarios WHERE cpf = 153221474;
DELETE FROM funcionarios WHERE cpf = 462053773;
DELETE FROM funcionarios WHERE cpf = 071902071;
DELETE FROM funcionarios WHERE cpf = 640705086;
DELETE FROM funcionarios WHERE cpf = 166139710;

DELETE FROM paciente WHERE idpaciente = 9;
DELETE FROM paciente WHERE idpaciente = 4;
DELETE FROM paciente WHERE idpaciente = 7;
DELETE FROM paciente WHERE idpaciente = 1;
DELETE FROM paciente WHERE idpaciente = 2;


SELECT * FROM endereco ORDER BY cep ASC;
SELECT * FROM paciente ORDER BY idpaciente ASC;
SELECT * FROM funcionarios ORDER BY cpf ASC;
SELECT * FROM servicos ORDER BY idservico ASC;
SELECT * FROM equipamentos ORDER BY idequipamentos ASC;

SELECT sexo_paciente FROM paciente WHERE idpaciente = 2;
SELECT nome_funcionario FROM funcionarios WHERE cpf = 714289054;
SELECT preco_servico FROM servicos WHERE idservico = 5;
SELECT rua FROM endereco WHERE cep = 240335545;
SELECT quantidade FROM equipamentos WHERE idequipamentos = 3;



