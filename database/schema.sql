-- Schema: Sistema de Gestão de Bezerras 
CREATE DATABASE IF NOT EXISTS gestao_bezerras;
USE gestao_bezerras;

CREATE TABLE CASINHA (
    casinha_id INT PRIMARY KEY,
    linha INT NOT NULL,
    coluna INT NOT NULL,
    status_visual VARCHAR(20) NOT NULL,
    ativa BOOLEAN DEFAULT TRUE
);

CREATE TABLE BEZERRA (
    id_brinco INT PRIMARY KEY,
    tag VARCHAR(50),
    data_nascimento DATE NOT NULL,
    data_entrada DATE NOT NULL,
    status_atual VARCHAR(20) NOT NULL,
    ativa BOOLEAN DEFAULT TRUE,
    casinha_id INT UNIQUE,
    -- Nao existe bezerra apontando para casa inesistente 
    CONSTRAINT fk_bezerra_casinha
        FOREIGN KEY (casinha_id) 
        REFERENCES CASINHA(casinha_id)
        ON UPDATE CASCADE
        ON DELETE SET NULL
);

CREATE TABLE MEDICAMENTO (
    medicamento_id INT AUTO_INCREMENT PRIMARY KEY,
    nome VARCHAR(100) NOT NULL,
    intervalo_dias INT NOT NULL,
    descricao_regra_dosagem TEXT
);

CREATE TABLE TRATAMENTO (
    tratamento_id INT AUTO_INCREMENT PRIMARY KEY,
    id_brinco INT NOT NULL,
    medicamento_id INT NOT NULL,
    dosagem_calculada DECIMAL(6,2) NOT NULL,
    frequencia_dia INT NOT NULL,
    dias_totais INT NOT NULL,
    dias_restantes INT NOT NULL,
    data_inicio DATE NOT NULL,
    ativo BOOLEAN DEFAULT TRUE,

    CONSTRAINT fk_tratamento_bezerra
        FOREIGN KEY (id_brinco)
        REFERENCES BEZERRA(id_brinco)
        ON UPDATE CASCADE
        ON DELETE CASCADE, -- Se BEZERRA apagada apaga o tratamento 

    CONSTRAINT fk_tratamento_medicamento
        FOREIGN KEY (medicamento_id)
        REFERENCES MEDICAMENTO(medicamento_id)
        ON UPDATE CASCADE
        ON DELETE RESTRICT
);

CREATE TABLE USUARIO (
    usuario_id INT AUTO_INCREMENT PRIMARY KEY,
    nome VARCHAR(100) NOT NULL,
    senha VARCHAR(255) NOT NULL,
    tipo ENUM('OPERADOR', 'ADMIN') NOT NULL,
    ativo BOOLEAN DEFAULT TRUE
);

CREATE TABLE REGISTRO_ROTINA ( -- log
    registro_id INT AUTO_INCREMENT PRIMARY KEY,
    data_hora DATETIME NOT NULL,
    acao VARCHAR(100) NOT NULL,
    observacao TEXT,
    usuario_id INT NOT NULL,
    casinha_id INT NOT NULL,
    id_brinco INT NOT NULL,

    CONSTRAINT fk_registro_usuario
        FOREIGN KEY (usuario_id)
        REFERENCES USUARIO(usuario_id)
        ON UPDATE CASCADE
        ON DELETE RESTRICT,

    CONSTRAINT fk_registro_casinha
        FOREIGN KEY (casinha_id)
        REFERENCES CASINHA(casinha_id)
        ON UPDATE CASCADE
        ON DELETE RESTRICT,

    CONSTRAINT fk_registro_bezerra
        FOREIGN KEY (id_brinco)
        REFERENCES BEZERRA(id_brinco)
        ON UPDATE CASCADE
        ON DELETE RESTRICT
);
