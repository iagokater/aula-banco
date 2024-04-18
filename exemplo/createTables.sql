CREATE TABLE IF NOT EXISTS usuarios (
	usu_id INT NOT NULL auto_increment,
    usu_nome VARCHAR(30) NOT NULL,
    usu_ativo BIT NOT NULL,
	PRIMARY KEY(usu_id)
);

CREATE TABLE IF NOT EXISTS clientes (
	usu_id INT NOT NULL AUTO_INCREMENT,
    cli_renda DECIMAL(10,2) NOT NULL DEFAULT,
    PRIMARY KEY(usu_id)
);

CREATE TABLE IF NOT EXISTS funcionarios (
	usu_id INT NOT NULL AUTO_INCREMENT,
    func_num_filhos TINYINT NOT NULL,
    func_salario DECIMAL(10,2) not null,
    PRIMARY KEY(usu_id)
);

CREATE TABLE IF NOT EXISTS contato (
	cont_id INT NOT NULL AUTO_INCREMENT,
    usu_id INT NOT NULL,
    cont_tipo VARCHAR(20) NOT NULL,
    cont_contato VARCHAR(60) NOT NULL,
    cont_principal BIT NOT NULL,
    PRIMARY KEY (cont_id)
);