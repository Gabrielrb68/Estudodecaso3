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
nasc_paciente DATETIME(20) NOT NULL,
tutor_animal_idtutor_animal INT NOT NULL
  
);  

CREATE TABLE servicos(
idservico INT NOT NULL PRIMARY KEY auto_increment,
descricao_servico VARCHAR(255),
preco_servico VARCHAR(45) NOT NULL,
consulta_entrada DATETIME(20) NOT NULL,
consulta_saida DATETIME(20) NOT NULL
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

