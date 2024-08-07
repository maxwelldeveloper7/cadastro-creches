PRAGMA foreign_keys= ON;

CREATE TABLE administradores (
    id INTEGER PRIMARY KEY AUTOINCREMENT,
    cpf CHAR(11) NOT NULL,
    FOREIGN KEY (cpf) REFERENCES usuarios(cpf)
);

CREATE TABLE bairros(
    id INTEGER PRIMARY KEY AUTOINCREMENT,
    nome VARCHAR(255) NOT NULL
);

CREATE TABLE usuarios (
    cpf CHAR(11) PRIMARY KEY,
    nome VARCHAR(255) NOT NULL,
    telefone VARCHAR(14) NOT NULL,
    email VARCHAR(100) NOT NULL,
    senha VARCHAR(255) DEFAULT NULL
);

CREATE TABLE responsaveis(
    cpf CHAR(11) PRIMARY KEY, -- CPF do responsável
    rg VARCHAR(11) NOT NULL, -- Documento de identidade
    data_nascimento DATE NOT NULL, -- Data de nascimento do responsável
    endereco VARCHAR(100) NOT NULL, -- Endereço de residência do responsável
    numero INTEGER NOT NULL, -- Número da residência do responsável
    complemento VARCHAR(100), -- Complemento do endereço da residência do responsável
    id_bairro INTEGER NOT NULL, -- Bairro do endereço da residência do responsável
    ponto_referencia VARCHAR(255), -- Ponto de referência do responsável
    endereco_trabalho VARCHAR(100), -- Endereço de trabalho do responsável
    numero_trabalho INTEGER, -- Número de trabalho do responsável
    complemento_trabalho VARCHAR(100), -- Complemento do endereço de trabalho do responsável
    bairro_trabalho VARCHAR(255), -- Bairro do endereço de trabalho do responsável
    cidade_trabalho VARCHAR(255), -- Cidade do endereço de trabalho do responsável
    estado_trabalho CHAR(2), -- Estado do endereço de trabalho do responsável
    FOREIGN KEY (cpf) REFERENCES usuarios(cpf),
    FOREIGN KEY (id_bairro) REFERENCES bairros(id)
);


CREATE TABLE unidades_escolares(
    id INTEGER PRIMARY KEY AUTOINCREMENT,
    nome VARCHAR(255) NOT NULL,
    endereco VARCHAR(100) NOT NULL,
    numero INTEGER NOT NULL,
    complemento VARCHAR(100),
    bairro VARCHAR(100) NOT NULL,
    inep char(8) NOT NULL
);

/*

https://qedu.org.br/municipio/3144300-nanuque/busca
https://escolas.com.br/brasil/mg/nanuque

Cei Cruzeiro do Sul, Rua Juiz de Fora, 489, casa, Centro, 31289302
Cemei Elena Monteiro
Cemei Irmã Dulce
Cemei Irmã Therezinha
Cemei Maria de Nazaré
Cemei Tia Alice
Cemei Professora Maria Dalva Guimarães Braga
Creche Vovó Defa
Escola Municipal Américo Machado
Escola Municipal Miguel Viana de Oliveira
Escola Municipal Vindilino Lima
Escola Municipal Zuleide Macieira Figueiredo
Pem Vovó Idália
*/
