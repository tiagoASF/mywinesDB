CREATE DATABASE mywinesDB
GO

USE mywinesDB
GO

CREATE TABLE denomination
(
    id SMALLINT IDENTITY(1,1),
    name VARCHAR(30) NOT NULL UNIQUE,
    CONSTRAINT PK_denomination PRIMARY KEY(id)
)
CREATE INDEX IX_denomination ON denomination(name)


CREATE TABLE geographic_coordinates
(
    id INT IDENTITY(1,1),
    latitude VARCHAR(50) NOT NULL,
    longitude VARCHAR(50) NOT NULL,
    CONSTRAINT PK_coordinates PRIMARY KEY(id)
)


CREATE TABLE winery
(
    id SMALLINT IDENTITY(1,1),
    name NVARCHAR(30) NOT NULL UNIQUE,
    country VARCHAR(30) NOT NULL,
    description VARCHAR(300),
    CONSTRAINT PK_winery PRIMARY KEY(id)
)
CREATE INDEX IX_winery_name ON winery(name)

CREATE TABLE style
(
    id TINYINT IDENTITY(1,1),
    name VARCHAR(20) NOT NULL UNIQUE,
    CONSTRAINT PK_style PRIMARY KEY(id)
)
CREATE INDEX IX_style_name ON style(name)


CREATE TABLE grape_variety
(
    id SMALLINT IDENTITY(1,1),
    name VARCHAR(30) NOT NULL UNIQUE,
    native_country VARCHAR(30),
    description VARCHAR(500),
    CONSTRAINT PK_grape PRIMARY KEY(id)
)
CREATE INDEX IX_grape_name ON grape_variety(name)

CREATE TABLE country
(
    id TINYINT IDENTITY(1,1),
    name VARCHAR(100) UNIQUE NOT NULL,
    CONSTRAINT PK_country PRIMARY KEY(id)
)
CREATE INDEX IX_country_name ON country(name)

CREATE TABLE region
(
    id SMALLINT IDENTITY(1,1),
    name VARCHAR(50) UNIQUE NOT NULL,
    CONSTRAINT PK_region PRIMARY KEY(id)
)
CREATE INDEX IX_region_name ON region(name)

CREATE TABLE subregion
(
    id SMALLINT IDENTITY(1,1),
    name VARCHAR(50) UNIQUE NOT NULL,
    CONSTRAINT PK_subregion PRIMARY KEY(id)
)
CREATE INDEX IX_subregion_name ON subregion(name)

CREATE TABLE wine_region
(
    id SMALLINT IDENTITY(1,1),
    country_id TINYINT NOT NULL,
    region_id SMALLINT NOT NULL,
    subregion_id SMALLINT,
    denomination_id SMALLINT,
    coordinates_id INT,
    CONSTRAINT PK_wine_region PRIMARY KEY(id),
    CONSTRAINT FK_wine_region_country FOREIGN KEY(country_id) 
        REFERENCES country(id),
    CONSTRAINT FK_wine_region_region FOREIGN KEY(region_id) 
        REFERENCES region(id),
    CONSTRAINT FK_wine_region_subregion FOREIGN KEY(subregion_id) 
        REFERENCES subregion(id),
    CONSTRAINT FK_wine_region_denomination FOREIGN KEY(denomination_id) 
        REFERENCES denomination(id),
    CONSTRAINT FK_wine_region_coordinates FOREIGN KEY(coordinates_id) 
        REFERENCES geographic_coordinates(id)
)

CREATE TABLE aging_vessel
(
    id TINYINT IDENTITY(1,1),
    name VARCHAR(30) UNIQUE NOT NULL,
    description VARCHAR(300),
    CONSTRAINT PK_aging_vessel PRIMARY KEY(id)
)
CREATE INDEX IX_aging_vessel_name ON aging_vessel(name)

CREATE TABLE wine
(
    id INT IDENTITY(1,1),
    label NVARCHAR(100) NOT NULL,
    harvest_year CHAR(4) NOT NULL,
    abv NUMERIC(3,1) NOT NULL,
    aging_vessel_id TINYINT NOT NULL,
    grape_variety_id SMALLINT NOT NULL,
    style_id TINYINT NOT NULL,
    wine_region_id SMALLINT NOT NULL,
    winery_id SMALLINT NOT NULL,
    CONSTRAINT PK_wine PRIMARY KEY(id),
    CONSTRAINT FK_wine_aging_vessel FOREIGN KEY(aging_vessel_id)
        REFERENCES aging_vessel(id),
    CONSTRAINT FK_wine_grape_variety FOREIGN KEY(grape_variety_id)
        REFERENCES grape_variety(id),
    CONSTRAINT FK_wine_style FOREIGN KEY(style_id)
        REFERENCES style(id),
    CONSTRAINT FK_wine_wine_region FOREIGN KEY(wine_region_id)
        REFERENCES wine_region(id),
    CONSTRAINT FK_wine_winery FOREIGN KEY(winery_id)
        REFERENCES winery(id)
)
CREATE INDEX IX_wine_label ON wine(label)
CREATE INDEX IX_wine_harvest_year ON wine(harvest_year)
CREATE INDEX IX_wine_abv ON wine(abv)



CREATE TABLE loja
(
    id INT IDENTITY(1,1),
    nome VARCHAR(30) NOT NULL,
    pais VARCHAR(30) NOT NULL DEFAULT('Brasil'),
    cidade VARCHAR(30) NOT NULL,
    coordenadas_id INT,
    CONSTRAINT PK_loja PRIMARY KEY(id),
    CONSTRAINT FK_loja_coordenadas FOREIGN KEY(coordenadas_id)
        REFERENCES coordenadas_geograficas(id)
)
CREATE INDEX IX_loja_nome on loja(nome)


CREATE TABLE armazenamento
(
    id TINYINT IDENTITY(1,1),
    forma_armazenamento VARCHAR(20) NOT NULL UNIQUE,
    CONSTRAINT PK_armazenamento PRIMARY KEY(id)
)
CREATE INDEX IX_forma_armazenamento ON armazenamento(forma_armazenamento)


CREATE TABLE perfil_vinho
(
    id INT IDENTITY(1,1),
    acidez TINYINT NOT NULL CHECK(acidez >= 1 AND acidez <= 5),
    corpo TINYINT NOT NULL CHECK(corpo >= 1 AND corpo <= 5),
    tanino TINYINT NOT NULL CHECK(tanino >= 1 AND tanino <= 5),
    fruta TINYINT NOT NULL CHECK(fruta >= 1 AND fruta <= 5),
    alcool TINYINT NOT NULL CHECK(alcool >= 1 AND alcool <= 5),
    CONSTRAINT PK_perfil PRIMARY KEY(id)
)


CREATE TABLE imagem
(
    id INT IDENTITY(1,1),
    slug VARCHAR(100) NOT NULL UNIQUE,
    CONSTRAINT PK_imagem PRIMARY KEY(id)
)


CREATE TABLE rede_social
(
    id TINYINT IDENTITY(1,1),
    nome VARCHAR(50) NOT NULL UNIQUE,
    icone_id INT NOT NULL UNIQUE,
    CONSTRAINT PK_redesocial PRIMARY KEY(id),
    CONSTRAINT FK_redesocial_imagem FOREIGN KEY(icone_id)
        REFERENCES imagem(id) 
)


CREATE TABLE enofilo
(
    id INT IDENTITY(1,1),
    nome NVARCHAR(50) NOT NULL UNIQUE,
    email VARCHAR(320) NOT NULL UNIQUE,
    biografia NVARCHAR(300),
    data_nascimento DATE NOT NULL CHECK(YEAR(GETDATE()) - YEAR(data_nascimento) >= 18),
    data_cadastro DATE DEFAULT(GETDATE()),
    data_desativacao DATE,
    esta_ativo BIT NOT NULL DEFAULT(1),
    imagem_perfil_id INT,
    CONSTRAINT PK_enofilo PRIMARY KEY(id),
    CONSTRAINT FK_enofilo_imagem FOREIGN KEY(imagem_perfil_id)
        REFERENCES imagem(id) ON DELETE CASCADE
)
CREATE INDEX IX_enofilo_nome ON enofilo(nome)
CREATE INDEX IX_enofilo_email ON enofilo(email)


CREATE TABLE rede_social_enofilo
(
    enofilo_id INT NOT NULL,
    rede_social_id TINYINT NOT NULL,
    link_usuario VARCHAR(100) NOT NULL UNIQUE,
    CONSTRAINT PK_rede_social_enofilo PRIMARY KEY(enofilo_id, rede_social_id),
    CONSTRAINT FK_rede_usuario_enofilo FOREIGN KEY(enofilo_id)
        REFERENCES enofilo(id),
    CONSTRAINT FK_rede_usuario_redesocial FOREIGN KEY(rede_social_id)
        REFERENCES rede_social(id)
)


CREATE TABLE confraria
(
    id INT IDENTITY(1,1),
    nome NVARCHAR(50) NOT NULL UNIQUE,
    descricao VARCHAR(300) NOT NULL,
    data_criacao DATE DEFAULT(GETDATE()),
    data_desativacao DATE,
    esta_ativo BIT NOT NULL DEFAULT(1),
    administrador_id INT NOT NULL,
    imagem_id INT NOT NULL,
    CONSTRAINT PK_confraria PRIMARY KEY(id),
    CONSTRAINT FK_confraria_adminstrador FOREIGN KEY(administrador_id)
        REFERENCES enofilo(id)
)
CREATE INDEX IX_confraria_nome ON confraria(nome)


CREATE TABLE participante_confraria
(
    confraria_id INT NOT NULL,
    participante_id INT NOT NULL,
    data_inicio_participacao DATE DEFAULT(GETDATE()),
    data_fim_participacao DATE,
    CONSTRAINT PK_participacao_confraria PRIMARY KEY(confraria_id, participante_id),
    CONSTRAINT FK_participanteconfraria_confraria FOREIGN KEY(confraria_id)
        REFERENCES confraria(id),
    CONSTRAINT FK_participanteconfraria_enofilo FOREIGN KEY(participante_id)
        REFERENCES enofilo(id)
)


CREATE TABLE avaliacao
(
    id INT IDENTITY(1,1),
    data DATE DEFAULT(GETDATE()),
    nota TINYINT NOT NULL CHECK(nota >= 1 AND nota <= 10),
    comentario VARCHAR(300),
    perfil_id INT NOT NULL,
    avaliador_id INT NOT NULL,
    CONSTRAINT PK_avaliacao PRIMARY KEY(id),
    CONSTRAINT FK_avaliacao_perfil FOREIGN KEY(perfil_id)
        REFERENCES perfil_vinho(id),
    CONSTRAINT FK_avaliacao_avaliador FOREIGN KEY(avaliador_id)
        REFERENCES enofilo(id)
)
CREATE INDEX IX_avaliacao_nota ON avaliacao(nota)


CREATE TABLE garrafa_adquirida
(
    id INT IDENTITY(1,1),
    data_aquisicao DATE NOT NULL,
    data_consumo DATE,
    preco_compra SMALLMONEY,
    permissao_visualizacao TINYINT DEFAULT(1),
    compra_online BIT DEFAULT(0),
    foi_presente BIT DEFAULT(0),
    foi_consumido BIT DEFAULT(0),
    descricao VARCHAR(300),
    garrafa_vinho_id INT NOT NULL,
    armazenamento_id TINYINT NOT NULL,
    loja_id INT,
    avaliacao_id INT,
    adquirente_id INT NOT NULL,
    CONSTRAINT PK_garrafa_adquirida PRIMARY KEY(id),
    CONSTRAINT FK_garrafa_adquirida_vinho FOREIGN KEY(garrafa_vinho_id)
        REFERENCES garrafa_vinho(id),
    CONSTRAINT FK_garrafa_adquirida_armazenamento FOREIGN KEY(armazenamento_id)
        REFERENCES armazenamento(id),
    CONSTRAINT FK_garrafa_adquirida_loja FOREIGN KEY(loja_id)
        REFERENCES loja(id),
    CONSTRAINT FK_garrafa_adquirida_avaliacao FOREIGN KEY(avaliacao_id)
        REFERENCES avaliacao(id),
    CONSTRAINT FK_garrafa_adquirida_adquirente FOREIGN KEY(adquirente_id)
        REFERENCES enofilo(id)
)


CREATE TABLE feedback
(
    id INT IDENTITY(1,1),
    like_or_dislike BIT NOT NULL,
    data DATE DEFAULT(GETDATE()),
    avaliacao_id INT NOT NULL,
    avaliador_id INT NOT NULL,
    CONSTRAINT PK_feedback PRIMARY KEY(id),
    CONSTRAINT FK_feedback_avaliacao FOREIGN KEY(avaliacao_id)
        REFERENCES avaliacao(id),
    CONSTRAINT FK_feedback_avaliador FOREIGN KEY(avaliador_id)
        REFERENCES enofilo(id)
)


CREATE TABLE fotografia
(
    id INT IDENTITY(1,1),
    comentario VARCHAR(300),
    slug VARCHAR(100) NOT NULL UNIQUE,
    data_inclusao DATE DEFAULT(GETDATE()),
    fotografo_id INT NOT NULL,
    CONSTRAINT PK_fotografia PRIMARY KEY(id),
    CONSTRAINT FK_fotografia_fotografo FOREIGN KEY(fotografo_id)
        REFERENCES enofilo(id)
)


CREATE TABLE garrafa_fotografia
(
    fotografia_id INT NOT NULL,
    garrafa_id INT NOT NULL,
    CONSTRAINT PK_garrafa_fotografia PRIMARY KEY(fotografia_id, garrafa_id),
    CONSTRAINT FK_garrafafotografia_fotografia FOREIGN KEY(fotografia_id)
        REFERENCES fotografia(id),
    CONSTRAINT FK_garrafafotografia_garrafa FOREIGN KEY(garrafa_id)
        REFERENCES garrafa_adquirida(id)
)