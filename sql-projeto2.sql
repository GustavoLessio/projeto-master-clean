CREATE TABLE Servicos (
    id_servico INT PRIMARY KEY,
    desc_servico varchar(255) not null,
    FOREIGN KEY (id_cartao) references Cartao (id_cartao)
);
CREATE TABLE Cartao (
    id_cartao INT PRIMARY KEY
    );
CREATE TABLE compra (
    id_compra INT PRIMARY KEY,
    id_servico INT,
    flag boolean,
    created_at date,
    updated_at date,
    FOREIGN KEY (id_cartao) REFERENCES Cartao(id_cartao),
    FOREIGN KEY (id_servico) REFERENCES Servicos(id_servico)
);

CREATE TABLE Recompensas (
    id_recompensa INT,
    id_cartao INT,
    flag boolean,
    created_at date,
    updated_at date,
    FOREIGN KEY (id_cartao) REFERENCES Cartao(id_cartao)
);

