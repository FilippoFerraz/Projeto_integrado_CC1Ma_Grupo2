

-- comando para criar a tabela gerentes
CREATE TABLE gerentes (
                gerente_id NUMERIC(12)  NOT NULL,
                nome       VARCHAR(50)  NOT NULL,
                bio        VARCHAR(512) NOT NULL,
                data_nasc  DATE         NOT NULL,
                hobbie     VARCHAR(50)  NOT NULL,
                interesse  VARCHAR(512) NOT NULL,
                foto       BYTEA,
                CONSTRAINT gerentes_pk PRIMARY KEY (gerente_id));
 
-- comando para adicionar comentarios referente a tabela gerentes             
COMMENT ON TABLE  gerentes            IS 'Coluna referente aos dados dos gerentes.';
COMMENT ON COLUMN gerentes.gerente_id IS 'Coluna que arquiva o id de identificação dos gerentes, "primary key" da tabela gerentes.';
COMMENT ON COLUMN gerentes.nome       IS 'Coluna que arquiva o nome dos gerentes.';
COMMENT ON COLUMN gerentes.bio        IS 'Coluna que arquiva a bio dos gerentes.';
COMMENT ON COLUMN gerentes.data_nasc  IS 'Coluna que arquiva a data de nascimento dos gerentes.';
COMMENT ON COLUMN gerentes.hobbie     IS 'Coluna que arquiva o hobbie dos gerentes.';
COMMENT ON COLUMN gerentes.interesse  IS 'Coluna que arquiva o interesse dos gerentes.';
COMMENT ON COLUMN gerentes.foto       IS 'Coluna que arquiva a foto de perfil dos gerentes.';

-- comando para criar a tabela funcionarios
CREATE TABLE funcionarios (
                funcionario_id NUMERIC(12) NOT NULL,
                hobbie         VARCHAR(50),
                interesse      VARCHAR(512),
                bio            VARCHAR(512),
                data_nasc      DATE        NOT NULL,
                nome           VARCHAR(50) NOT NULL,
                cargo          VARCHAR(50) NOT NULL,
                foto           BYTEA,
                CONSTRAINT funcionarios_pk PRIMARY KEY (funcionario_id));
               
-- comando para adicionar comentarios referente a tabela funcionarios            
COMMENT ON TABLE  funcionarios                IS 'Tabela referente aos dados dos funcionarios';
COMMENT ON COLUMN funcionarios.funcionario_id IS 'coluna que arquiva o Id de identificação dos funcionarios, "primary key" da tabela funcionarios.';
COMMENT ON COLUMN funcionarios.hobbie         IS 'Coluna que arquiva o Hobbie dos funcionarios.';
COMMENT ON COLUMN funcionarios.interesse      IS 'Coluna que arquiva o interesse dos funcionarios na empresa.';
COMMENT ON COLUMN funcionarios.bio            IS 'Coluna que arquiva a bio dos funcionarios.';
COMMENT ON COLUMN funcionarios.data_nasc      IS 'Coluna que arquiva a data de nascimento dos funcionarios.';
COMMENT ON COLUMN funcionarios.nome           IS 'Coluna que arquiva o nome dos funcionarios.';
COMMENT ON COLUMN funcionarios.cargo          IS 'Coluna que arquiva o nome do cargo dos funcionarios.';
COMMENT ON COLUMN funcionarios.foto           IS 'Coluna que arquiva a foto de perfil dos funcionarios.';

-- comando para criar a tabela talentos
CREATE TABLE talentos (
                talento_id     NUMERIC(32) NOT NULL,
                funcionario_id NUMERIC(12) NOT NULL,
                nome           VARCHAR(50) NOT NULL,
                especificacao  VARCHAR(512),
                data_registro  DATE        NOT NULL,
                CONSTRAINT talentos_pk PRIMARY KEY (talento_id, funcionario_id));
               
-- comando para adicionar comentarios referente a tabela talentos               
COMMENT ON TABLE  talentos                IS 'Tabela referente aos dados dos talentos dos funcionarios';
COMMENT ON COLUMN talentos.talento_id     IS 'Coluna que arquiva o id de identificação dos talentos dos funcionarios, "primary key" da tabela talentos.';
COMMENT ON COLUMN talentos.funcionario_id IS 'coluna que arquiva o Id de identificação dos funcionarios, "primary key" da tabela funcionarios.';
COMMENT ON COLUMN talentos.nome           IS 'Coluna que arquiva o nome dos talentos dos funcionarios.';
COMMENT ON COLUMN talentos.especificacao  IS 'Coluna que arquiva a especificação do talento dos funcionarios.';
COMMENT ON COLUMN talentos.data_registro  IS 'Coluna que arquiva a data de registro dos talentos registrados pelos funcionarios.';

-- comando para criar a tabela talento_geren
CREATE TABLE talento_geren (
                gerente_id     NUMERIC(12) NOT NULL,
                talento_id     NUMERIC(32) NOT NULL,
                funcionario_id NUMERIC(12) NOT NULL,
                data_gerenc    DATE        NOT NULL,
                CONSTRAINT talento_geren_pk PRIMARY KEY (gerente_id, talento_id, funcionario_id));
               
-- comando para adicionar comentarios referente a tabela talento_geren               
COMMENT ON TABLE  talento_geren                IS 'Tabela referente aos dados de gerenciamento dos talentos.';
COMMENT ON COLUMN talento_geren.gerente_id     IS 'Coluna que arquiva o id de identificação dos gerentes, "primary key" da tabela gerentes.';
COMMENT ON COLUMN talento_geren.talento_id     IS 'Coluna que arquiva o id de identificação dos talentos dos funcionarios, "primary key" da tabela talentos.';
COMMENT ON COLUMN talento_geren.funcionario_id IS 'coluna que arquiva o Id de identificação dos funcionarios, "primary key" da tabela funcionarios.';
COMMENT ON COLUMN talento_geren.data_gerenc    IS 'Coluna que arquiva a data de gerenciamento dos talentos.';

-- comando para criar a tabela publicacoes
CREATE TABLE publicacoes (
                publi_id       NUMERIC(32)  NOT NULL,
                funcionario_id NUMERIC(12)  NOT NULL,
                gerente_id     NUMERIC(12)  NOT NULL,
                data_envio     DATE         NOT NULL,
                conteudo       VARCHAR(667) NOT NULL,
                CONSTRAINT publicacoes_pk PRIMARY KEY (publi_id, funcionario_id, gerente_id));
               
-- comando para adicionar comentarios referente a tabela publicacoes               
COMMENT ON TABLE  publicacoes                IS 'Tabela referente aos dados das publicações publicadas pelos funcionarios e gerentes.';
COMMENT ON COLUMN publicacoes.publi_id       IS 'Coluna que arquiva o id de identifição das publicações, "primary key" da tabela publicações.';
COMMENT ON COLUMN publicacoes.funcionario_id IS 'coluna que arquiva o Id de identificação dos funcionarios, "primary key" da tabela funcionarios.';
COMMENT ON COLUMN publicacoes.gerente_id     IS 'Coluna que arquiva o id de identificação dos gerentes, "primary key" da tabela gerentes.';
COMMENT ON COLUMN publicacoes.data_envio     IS 'Coluna que arquiva a data de publicação das publicações.';
COMMENT ON COLUMN publicacoes.conteudo       IS 'Coluna que aqruiva os conteudos das publicações.';

-- comando para criar a tabela skills
CREATE TABLE skills (
                skill_id         NUMERIC(20) NOT NULL,
                funcionario_id   NUMERIC(12) NOT NULL,
                nome             VARCHAR(50) NOT NULL,
                tipo             VARCHAR(4)  NOT NULL,
                descricao        VARCHAR(256),
                CONSTRAINT skills_pk PRIMARY KEY (skill_id, funcionario_id));
               
-- comando para adicionar comentarios referente a tabela skills               
COMMENT ON TABLE  skills                IS 'Tabela referente aos dados das skills que os funcionarios possuem.';
COMMENT ON COLUMN skills.skill_id       IS 'Coluna que arquiva o id de identificaçâo da skill dos funcionarios, "primary key" da tabela skills.';
COMMENT ON COLUMN skills.funcionario_id IS 'coluna que arquiva o Id de identificação dos funcionarios, "primary key" da tabela funcionarios.';
COMMENT ON COLUMN skills.nome           IS 'Coluna que arquiva o nome das skills dos funcionarios.';
COMMENT ON COLUMN skills.tipo           IS 'Coluna que arquiva o tipo da skill dos funcionarios, sendo ou "hard" ou "soft" skills.';
COMMENT ON COLUMN skills.descricao      IS 'Coluna que arquiva a descrição da skill dos funcionarios.';

-- comando para criar a tabela geren_skill
CREATE TABLE geren_skill (
                skill_id       NUMERIC(20) NOT NULL,
                funcionario_id NUMERIC(12) NOT NULL,
                gerente_id     NUMERIC(12) NOT NULL,
                data_genrec    DATE        NOT NULL,
                CONSTRAINT geren_skill_pk PRIMARY KEY (skill_id, funcionario_id, gerente_id));
               
-- comando para adicionar comentarios referente a tabela geren_skill               
COMMENT ON TABLE  geren_skill                IS 'Tabela referente aos dados de gerenciamento das skills feito pelos gerentes.';
COMMENT ON COLUMN geren_skill.skill_id       IS 'Coluna que arquiva o id de identificaçâo da skill dos funcionarios, "primary key" da tabela skills.';
COMMENT ON COLUMN geren_skill.funcionario_id IS 'coluna que arquiva o Id de identificaçaõ dos funcionarios, "primary key" da tabela funcionarios.';
COMMENT ON COLUMN geren_skill.gerente_id     IS 'Coluna que arquiva o id de identificação dos gerentes, "primary key" da tabela gerentes.';
COMMENT ON COLUMN geren_skill.data_genrec    IS 'Coluna que arquiva a data de gerenciamento das skills.';

-- comando para criar a tabela endereco
CREATE TABLE endereco (
                end_id         NUMERIC(36) NOT NULL,
                funcionario_id NUMERIC(12) NOT NULL,
                gerente_id     NUMERIC(12) NOT NULL,
                cep            NUMERIC(8)  NOT NULL,
                numero         NUMERIC(4)  NOT NULL,
                comp           VARCHAR(50),
                CONSTRAINT endereco_pk PRIMARY KEY (end_id, funcionario_id, gerente_id));
               
-- comando para adicionar comentarios referente a tabela endereco              
COMMENT ON TABLE  endereco                IS 'Tabela referente aos dados de endereço dos funcionarios e dos gerentes.';
COMMENT ON COLUMN endereco.end_id         IS 'Tabela que arquiva o id de identificação dos funcionarios, "primary key" da tabela endereço.';
COMMENT ON COLUMN endereco.funcionario_id IS 'coluna que arquiva o Id de identificação dos funcionarios, "primary key" da tabela funcionarios.';
COMMENT ON COLUMN endereco.gerente_id     IS 'Coluna que arquiva o id de identificação dos gerentes, "primary key" da tabela gerentes.';
COMMENT ON COLUMN endereco.cep            IS 'Coluna que arquiva o cep dos funcionarios e gerentes.';
COMMENT ON COLUMN endereco.numero         IS 'Coluna que arquiva o numero da residência dos funcionarios e gerentes.';
COMMENT ON COLUMN endereco.comp           IS 'Coluna que arquiva o complemento da residência dos funcionarios e gerentes.';

-- comando para criar a tabela departamentos
CREATE TABLE departamentos (
                departamento_id   NUMERIC(4)  NOT NULL,
                funcionario_id    NUMERIC(12) NOT NULL,
                gerente_id        NUMERIC(12) NOT NULL,
                departamento_nome VARCHAR(50) NOT NULL,
                CONSTRAINT departamentos_pk PRIMARY KEY (departamento_id, funcionario_id, gerente_id));
               
-- comando para adicionar comentarios referente a tabela departamentos              
COMMENT ON TABLE  departamentos                   IS 'Tabela referente aos dados dos departamentos.';
COMMENT ON COLUMN departamentos.departamento_id   IS 'Coluna que arquiva o id de identificação dos departamentos, "primary key" da tabela departamentos.';
COMMENT ON COLUMN departamentos.funcionario_id    IS 'coluna que arquiva o Id de identificação dos funcionarios, "primary key" da tabela funcionarios.';
COMMENT ON COLUMN departamentos.gerente_id        IS 'Coluna que arquiva o id de identificação dos gerentes, "primary key" da tabela gerentes.';
COMMENT ON COLUMN departamentos.departamento_nome IS 'Coluna que arquiva o nome dos departamentos.';

-- comando para criar relacionamentos referentes as pk e fk
ALTER TABLE departamentos ADD CONSTRAINT gerentes_departamentos_fk
FOREIGN KEY (gerente_id)
REFERENCES gerentes (gerente_id)
ON DELETE NO ACTION
ON UPDATE NO ACTION
NOT DEFERRABLE;

-- comando para criar relacionamentos referentes as pk e fk
ALTER TABLE endereco ADD CONSTRAINT gerentes_endereco_fk
FOREIGN KEY (gerente_id)
REFERENCES gerentes (gerente_id)
ON DELETE NO ACTION
ON UPDATE NO ACTION
NOT DEFERRABLE;

-- comando para criar relacionamentos referentes as pk e fk
ALTER TABLE geren_skill ADD CONSTRAINT gerentes_geren_skill_fk
FOREIGN KEY (gerente_id)
REFERENCES gerentes (gerente_id)
ON DELETE NO ACTION
ON UPDATE NO ACTION
NOT DEFERRABLE;

-- comando para criar relacionamentos referentes as pk e fk
ALTER TABLE publicacoes ADD CONSTRAINT gerentes_publicacoes_fk
FOREIGN KEY (gerente_id)
REFERENCES gerentes (gerente_id)
ON DELETE NO ACTION
ON UPDATE NO ACTION
NOT DEFERRABLE;

-- comando para criar relacionamentos referentes as pk e fk
ALTER TABLE talento_geren ADD CONSTRAINT gerentes_talento_geren_fk
FOREIGN KEY (gerente_id)
REFERENCES gerentes (gerente_id)
ON DELETE NO ACTION
ON UPDATE NO ACTION
NOT DEFERRABLE;

-- comando para criar relacionamentos referentes as pk e fk
ALTER TABLE departamentos ADD CONSTRAINT funcionarios_departamentos_fk
FOREIGN KEY (funcionario_id)
REFERENCES funcionarios (funcionario_id)
ON DELETE NO ACTION
ON UPDATE NO ACTION
NOT DEFERRABLE;

-- comando para criar relacionamentos referentes as pk e fk
ALTER TABLE endereco ADD CONSTRAINT funcionarios_endereco_fk
FOREIGN KEY (funcionario_id)
REFERENCES funcionarios (funcionario_id)
ON DELETE NO ACTION
ON UPDATE NO ACTION
NOT DEFERRABLE;

-- comando para criar relacionamentos referentes as pk e fk
ALTER TABLE skills ADD CONSTRAINT funcionarios_skills_fk
FOREIGN KEY (funcionario_id)
REFERENCES funcionarios (funcionario_id)
ON DELETE NO ACTION
ON UPDATE NO ACTION
NOT DEFERRABLE;

-- comando para criar relacionamentos referentes as pk e fk
ALTER TABLE publicacoes ADD CONSTRAINT funcionarios_publicacoes_fk
FOREIGN KEY (funcionario_id)
REFERENCES funcionarios (funcionario_id)
ON DELETE NO ACTION
ON UPDATE NO ACTION
NOT DEFERRABLE;

-- comando para criar relacionamentos referentes as pk e fk
ALTER TABLE talentos ADD CONSTRAINT funcionarios_talentos_fk
FOREIGN KEY (funcionario_id)
REFERENCES funcionarios (funcionario_id)
ON DELETE NO ACTION
ON UPDATE NO ACTION
NOT DEFERRABLE;

-- comando para criar relacionamentos referentes as pk e fk
ALTER TABLE talento_geren ADD CONSTRAINT talentos_talento_geren_fk
FOREIGN KEY (talento_id, funcionario_id)
REFERENCES talentos (talento_id, funcionario_id)
ON DELETE NO ACTION
ON UPDATE NO ACTION
NOT DEFERRABLE;

-- comando para criar relacionamentos referentes as pk e fk
ALTER TABLE geren_skill ADD CONSTRAINT skills_geren_skill_fk
FOREIGN KEY (skill_id, funcionario_id)
REFERENCES skills (skill_id, funcionario_id)
ON DELETE NO ACTION
ON UPDATE NO ACTION
NOT DEFERRABLE;


