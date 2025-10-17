CREATE TABLE Cardapio (
    codigo INT PRIMARY KEY AUTO_INCREMENT,
    nome VARCHAR(100) NOT NULL UNIQUE,
    descricao TEXT,
    preco_unitario DECIMAL(10,2) NOT NULL
);


CREATE TABLE Comanda (
    codigo INT PRIMARY KEY AUTO_INCREMENT,
    data DATE NOT NULL,
    mesa INT NOT NULL,
    nome_cliente VARCHAR(100) NOT NULL
);


CREATE TABLE ItemComanda (
    codigo_comanda INT,
    codigo_cardapio INT,
    quantidade INT NOT NULL CHECK (quantidade > 0),
    PRIMARY KEY (codigo_comanda, codigo_cardapio),
    FOREIGN KEY (codigo_comanda) REFERENCES Comanda(codigo) ON DELETE CASCADE,
    FOREIGN KEY (codigo_cardapio) REFERENCES Cardapio(codigo) ON DELETE CASCADE
);