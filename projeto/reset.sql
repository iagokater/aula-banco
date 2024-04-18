CREATE DATABASE agrofleet;

use agrofleet;


CREATE TABLE IF NOT EXISTS USUARIOS (

    id_user INT AUTO_INCREMENT PRIMARY KEY,
    nome_user VARCHAR(80),
    email_user VARCHAR(80) UNIQUE,
    senha_user VARCHAR(50),
    tipo_user ENUM (“Admin”,” Funcionário”, “Bloqueado”),
    img_user VARCHAR (2000);
    ativo_user BOOLEAN,
    cod_user SMALLINT

);

CREATE TABLE IF NOT EXISTS LOCALIZACOES (
    
    id_loc INT AUTO_INCREMENT PRIMARY KEY,
    latitude_loc VARCHAR (20),
    longitude_loc VARCHAR (20),
    hora_loc DATETIME,
    opr_id INT,
    FOREIGN KEY (opr_id) REFERENCES OPERACOES_MAQUINARIO(id_opr)

);

CREATE TABLE IF NOT EXISTS OPERACOES_MAQUINARIO (
    
    id_opr INT AUTO_INCREMENT PRIMARY KEY,
    nome_opr VARCHAR (80), 
    dt_inicio_opr DATETIME, 
    dt_final_opr DATETIME, 
    status_opr ENUM (“Em Operação”, “Finalizado”, “Concluído”, “Pendente”, “Aberto”) 
    maq_id INT, 
    user_id INT,
    FOREIGN KEY (user_id) REFERENCES tipo_servico(id_maq),
    FOREIGN KEY (maq_id) REFERENCES tipo_servico(id_user)


);

CREATE TABLE IF NOT EXISTS MAQUINAS (
        
    id_maq INT AUTO_INCREMENT PRIMARY KEY,
    nome_maq VARCHAR (80), 
    placa_maq VARCHAR (8) 
    ano_fabricacao_maq SMALLINT,
    marca_maq VARCHAR (30),
    img_maq VARCHAR (2000) 

);

CREATE TABLE IF NOT EXISTS ALERTAS (
    
    id_alert INT AUTO_INCREMENT PRIMARY KEY,
    nome_alert VARCHAR(80), 
    tipo_alert ENUM(“Crítico”, “Mediano”,”Baixo”), 
    data_alert DATETIME,  
    maq_id INT,
    FOREIGN KEY (maq_id) REFERENCES MAQUINAS(id_maq)

);