CREATE INDEX idx_comanda_data ON Comanda(data);
CREATE INDEX idx_item_comanda_cardapio ON ItemComanda(codigo_cardapio);
CREATE INDEX idx_cardapio_nome ON Cardapio(nome);