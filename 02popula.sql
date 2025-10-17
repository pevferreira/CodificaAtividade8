-- Inserindo cafés no cardápio
INSERT INTO Cardapio (nome, descricao, preco_unitario) VALUES
('Expresso', 'Café puro e forte, preparado sob pressão', 5.00),
('Cappuccino', 'Café expresso com leite vaporizado e espuma', 8.50),
('Latte', 'Café expresso com leite vaporizado', 7.50),
('Mocha', 'Café com chocolate e leite vaporizado', 9.00),
('Americano', 'Café expresso diluído em água quente', 6.00),
('Macchiato', 'Café expresso com uma pequena quantidade de leite', 7.00),
('Affogato', 'Sorvete com café expresso', 12.00);

-- Inserindo comandas
INSERT INTO Comanda (data, mesa, nome_cliente) VALUES
('2025-01-15', 1, 'João Silva'),
('2025-01-15', 2, 'Maria Santos'),
('2025-01-15', 3, 'Carlos Oliveira'),
('2025-01-16', 1, 'Ana Costa'),
('2025-01-16', 2, 'Pedro Martins'),
('2025-01-17', 4, 'Fernanda Lima');

-- Inserindo itens das comandas
INSERT INTO ItemComanda (codigo_comanda, codigo_cardapio, quantidade) VALUES
(1, 1, 2), -- João: 2 Expressos
(1, 2, 1), -- João: 1 Cappuccino
(2, 3, 1), -- Maria: 1 Latte
(2, 4, 1), -- Maria: 1 Mocha
(3, 1, 3), -- Carlos: 3 Expressos
(4, 2, 2), -- Ana: 2 Cappuccinos
(4, 5, 1), -- Ana: 1 Americano
(5, 6, 1), -- Pedro: 1 Macchiato
(5, 7, 1), -- Pedro: 1 Affogato
(6, 3, 2), -- Fernanda: 2 Lattes
(6, 4, 1); -- Fernanda: 1 Mocha