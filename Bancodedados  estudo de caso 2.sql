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
tutor_animal_idtutor_animal INT NOT NULL
  
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
	FOREIGN KEY (endereco_cep) REFERENCES endereco(cep),
    FOREIGN KEY (cpf_tutor) REFERENCES tutor_animal(cpf_tutor)
);

CREATE TABLE paciente_has_servico_consulta(
FOREIGN KEY (idpaciente) REFERENCES paciente(idpaciente),
    FOREIGN KEY (id_servico) REFERENCES servicos(id_servico),
FOREIGN KEY (cpf) REFERENCES funcionarios(cpf)
    

);

CREATE TABLE equipamentos_has_servicos_animais(
FOREIGN KEY (id_servico) REFERENCES servicos(id_servico),
FOREIGN KEY (idequipamentos) REFERENCES equipamentos(idequipamentos)


);

insert into endereco (cep, rua, complemento, numero_casa) values ('47-018-0514', '53614 Little Fleur Street', 'ornare imperdiet sapien urna pretium nisl ut volutpat sapien arcu', 354);
insert into endereco (cep, rua, complemento, numero_casa) values ('16-561-9077', '47 Arapahoe Circle', 'eget massa tempor convallis nulla neque libero convallis eget eleifend luctus ultricies eu nibh quisque id justo', 33);
insert into endereco (cep, rua, complemento, numero_casa) values ('70-390-0187', '745 Maple Street', 'lectus vestibulum quam sapien varius ut blandit non interdum in ante vestibulum ante ipsum primis in faucibus', 66);
insert into endereco (cep, rua, complemento, numero_casa) values ('63-337-6349', '63 American Parkway', 'lacinia sapien quis libero nullam sit amet turpis elementum ligula vehicula consequat', 291);
insert into endereco (cep, rua, complemento, numero_casa) values ('46-184-3805', '54 Meadow Vale Way', 'quam pede lobortis ligula sit amet eleifend pede libero quis orci nullam', 11);
insert into endereco (cep, rua, complemento, numero_casa) values ('58-934-7880', '45293 Montana Junction', 'sollicitudin mi sit amet lobortis sapien sapien non mi integer ac neque duis bibendum', 440);
insert into endereco (cep, rua, complemento, numero_casa) values ('24-033-5545', '4729 Arapahoe Point', 'ullamcorper purus sit amet nulla quisque arcu libero rutrum ac lobortis vel dapibus at', 363);
insert into endereco (cep, rua, complemento, numero_casa) values ('43-176-4249', '44 Westport Parkway', 'nisi vulputate nonummy maecenas tincidunt lacus at velit vivamus vel nulla eget', 399);
insert into endereco (cep, rua, complemento, numero_casa) values ('78-598-9369', '20728 Tennyson Hill', 'aliquet pulvinar sed nisl nunc rhoncus dui vel sem sed sagittis nam congue risus semper', 11);
insert into endereco (cep, rua, complemento, numero_casa) values ('16-613-9710', '828 Carey Avenue', 'mattis pulvinar nulla pede ullamcorper augue a suscipit nulla elit ac nulla sed vel', 293);

insert into funcionarios (cpf, nome_funcionario, salario, funcao) values ('15-322-1474', 'Bryanty Dellenbach', '$3691.22', 'Vestibulum quam sapien, varius ut, blandit non, interdum in, ante.');
insert into funcionarios (cpf, nome_funcionario, salario, funcao) values ('79-475-4770', 'Pattie Meiner', '$3671.23', 'Lorem ipsum dolor sit amet, consectetuer adipiscing elit.');
insert into funcionarios (cpf, nome_funcionario, salario, funcao) values ('81-975-3167', 'Emlynn Espinha', '$3143.94', 'Praesent lectus.');
insert into funcionarios (cpf, nome_funcionario, salario, funcao) values ('15-086-9521', 'Korney Knatt', '$3746.23', 'Pellentesque viverra pede ac diam.');
insert into funcionarios (cpf, nome_funcionario, salario, funcao) values ('86-384-9628', 'Myrwyn Shakspeare', '$3439.44', 'Nullam varius.');
insert into funcionarios (cpf, nome_funcionario, salario, funcao) values ('46-205-3773', 'Wallie Durbann', '$3336.47', 'Vivamus tortor.');
insert into funcionarios (cpf, nome_funcionario, salario, funcao) values ('73-395-9357', 'Lynne Milillo', '$2908.23', 'Maecenas ut massa quis augue luctus tincidunt.');
insert into funcionarios (cpf, nome_funcionario, salario, funcao) values ('07-190-2071', 'Egor Summerhayes', '$3499.88', 'Donec vitae nisi.');
insert into funcionarios (cpf, nome_funcionario, salario, funcao) values ('64-070-5086', 'Ninetta Revey', '$2820.05', 'Fusce lacus purus, aliquet at, feugiat non, pretium quis, lectus.');
insert into funcionarios (cpf, nome_funcionario, salario, funcao) values ('71-428-9054', 'Chester Rosthorn', '$3495.94', 'Nullam varius.');


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


insert into paciente (idpaciente, nome_paciente, sexo_paciente, especie_paciente, nasc_paciente) values (1, 'Bartlet Baddam', 'M', 'Armadillo, nine-banded', '15/10/2016');
insert into paciente (idpaciente, nome_paciente, sexo_paciente, especie_paciente, nasc_paciente) values (2, 'Neal Mottini', 'F', 'Leopard, indian', '28/06/2022');
insert into paciente (idpaciente, nome_paciente, sexo_paciente, especie_paciente, nasc_paciente) values (3, 'Karlene Dauber', 'M', 'Crane, stanley', '09/06/2018');
insert into paciente (idpaciente, nome_paciente, sexo_paciente, especie_paciente, nasc_paciente) values (4, 'Glenden Dean', 'M', 'Dassie', '23/07/2019');
insert into paciente (idpaciente, nome_paciente, sexo_paciente, especie_paciente, nasc_paciente) values (5, 'Glenn Yare', 'M', 'Peacock, blue', '15/02/2018');
insert into paciente (idpaciente, nome_paciente, sexo_paciente, especie_paciente, nasc_paciente) values (6, 'Lira Hearl', 'F', 'Badger, eurasian', '20/05/2019');
insert into paciente (idpaciente, nome_paciente, sexo_paciente, especie_paciente, nasc_paciente) values (7, 'Nanon Dallison', 'F', 'Greater sage grouse', '25/07/2019');
insert into paciente (idpaciente, nome_paciente, sexo_paciente, especie_paciente, nasc_paciente) values (8, 'Krystalle Dumbare', 'M', 'Purple grenadier', '09/05/2022');
insert into paciente (idpaciente, nome_paciente, sexo_paciente, especie_paciente, nasc_paciente) values (9, 'Cathryn Bidwell', 'F', 'Blacksmith plover', '26/03/2016');
insert into paciente (idpaciente, nome_paciente, sexo_paciente, especie_paciente, nasc_paciente) values (10, 'Innis Maha', 'F', 'Blackbird, red-winged', '29/10/2022');


insert into servicos (idservico, descricao_servico, preco_servico, consulta_entrada, consulta_saida) values (1, 'Donec odio justo, sollicitudin ut, suscipit a, feugiat et, eros.', '$274.29', '21.01.2022', '30/01/2022');
insert into servicos (idservico, descricao_servico, preco_servico, consulta_entrada, consulta_saida) values (2, 'Praesent blandit lacinia erat.', '$195.41', '23.01.2022', '28/01/2022');
insert into servicos (idservico, descricao_servico, preco_servico, consulta_entrada, consulta_saida) values (3, 'Vestibulum sed magna at nunc commodo placerat.', '$233.83', '14.02.2022', '25/01/2022');
insert into servicos (idservico, descricao_servico, preco_servico, consulta_entrada, consulta_saida) values (4, 'Nulla ut erat id mauris vulputate elementum.', '$218.35', '01.01.2022', '29/01/2022');
insert into servicos (idservico, descricao_servico, preco_servico, consulta_entrada, consulta_saida) values (5, 'Praesent id massa id nisl venenatis lacinia. Aenean sit amet justo.', '$200.81', '19.02.2022', '18/01/2022');
insert into servicos (idservico, descricao_servico, preco_servico, consulta_entrada, consulta_saida) values (6, 'Pellentesque eget nunc. Donec quis orci eget orci vehicula condimentum.', '$221.64', '15.02.2022', '15/01/2022');
insert into servicos (idservico, descricao_servico, preco_servico, consulta_entrada, consulta_saida) values (7, 'Cum sociis natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus. Vivamus vestibulum sagittis sapien.', '$251.96', '07.02.2022', '23/01/2022');
insert into servicos (idservico, descricao_servico, preco_servico, consulta_entrada, consulta_saida) values (8, 'Phasellus sit amet erat.', '$296.73', '03.02.2022', '14/01/2022');
insert into servicos (idservico, descricao_servico, preco_servico, consulta_entrada, consulta_saida) values (9, 'Aenean fermentum.', '$286.92', '15.02.2022', '16/01/2022');
insert into servicos (idservico, descricao_servico, preco_servico, consulta_entrada, consulta_saida) values (10, 'Proin risus.', '$209.48', '04.01.2022', '22/01/2022');

update endereco set rua = "Paul mantau",numero_casa = 41 WHERE cep = "70-390-0187";
update endereco set rua = "Suguma Street",numero_casa = 51 WHERE cep = "58-934-7880";
update endereco set rua = "Sauls Law",numero_casa = 45 WHERE cep = "43-176-4249";
update endereco set rua = "Morgan Freat",numero_casa = 32 WHERE cep = "16-561-9077";
update endereco set rua = "Brunas Street",numero_casa = 10 WHERE cep = "46-184-3805";

update equipamentos set quantidade = 12, ferramenta = "Marreta" WHERE idequipamentos = 1;
update equipamentos set quantidade = 23, ferramenta = "Bisturi" WHERE idequipamentos = 4;
update equipamentos set quantidade = 54, ferramenta = "Seringa" WHERE idequipamentos = 2;
update equipamentos set quantidade = 8, ferramenta = "Agulha" WHERE idequipamentos = 5;
update equipamentos set quantidade = 71, ferramenta = "Luva" WHERE idequipamentos = 7;

update servicos set descricao_servico = "Tudo ocorreu conforme o planejado,sem complicações", preco_servico = "$170.0" WHERE idservico = 6;
update servicos set descricao_servico = "Tudo ocorreu conforme o planejado,com algumas pequenas complicações durante o procedimento", preco_servico = "$260.0" WHERE idservico = 1;
update servicos set descricao_servico = "Houve uma grande recaida comparado a ultima sessão", preco_servico = "$663.0" WHERE idservico = 4;
update servicos set descricao_servico = "Conforme a normalidade", preco_servico = "$552.0" WHERE idservico = 2;
update servicos set descricao_servico = "Apresenta uma crescente melhora", preco_servico = "$80.90" WHERE idservico = 3;

update funcionarios set nome_funcionario = "Serena Whitehouse",funcao = "Anestesista" WHERE cpf = "15-322-1474" ;
update funcionarios set nome_funcionario = "João Cabral",funcao = "Cirurgião" WHERE cpf = "46-205-3773" ;
update funcionarios set nome_funcionario = "Wen kado hashi",funcao = "Secretario" WHERE cpf = "07-190-2071" ;
update funcionarios set nome_funcionario = "Vasco da gama",funcao = "Enfermeiro" WHERE cpf = "64-070-5086" ;
update funcionarios set nome_funcionario = "Melon Musk",funcao = "Zelador" WHERE cpf = "16-613-9710"  ;

update paciente set sexo_paciente = "M",especie_paciente = "Ornitorrinco" WHERE idpaciente = 7; 
update paciente set sexo_paciente = "M",especie_paciente = "Cachorro" WHERE idpaciente = 3; 
update paciente set sexo_paciente = "F",especie_paciente = "Cabra" WHERE idpaciente = 1; 
update paciente set sexo_paciente = "F",especie_paciente = "Ovelha" WHERE idpaciente = 9; 
update paciente set sexo_paciente = "M",especie_paciente = "Bode" WHERE idpaciente = 10; 

DELETE FROM endereco WHERE cep = "70-390-0187";
DELETE FROM endereco WHERE cep = "58-934-7880";
DELETE FROM endereco WHERE cep = "43-176-4249";
DELETE FROM endereco WHERE cep = "16-561-9077";
DELETE FROM endereco WHERE cep = "46-184-3805";

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

DELETE FROM funcionarios WHERE cpf = "15-322-1474";
DELETE FROM funcionarios WHERE cpf = "46-205-3773";
DELETE FROM funcionarios WHERE cpf = "07-190-2071";
DELETE FROM funcionarios WHERE cpf = "64-070-5086";
DELETE FROM funcionarios WHERE cpf = "16-613-9710";

DELETE FROM paciente WHERE idpaciente = "9";
DELETE FROM paciente WHERE idpaciente = "4";
DELETE FROM paciente WHERE idpaciente = "7";
DELETE FROM paciente WHERE idpaciente = "1";
DELETE FROM paciente WHERE idpaciente = "2";


