-- Verifica contagem de registros
SELECT 
    (SELECT COUNT(*) FROM Cardapio) AS total_cafes,
    (SELECT COUNT(*) FROM Comanda) AS total_comandas,
    (SELECT COUNT(*) FROM ItemComanda) AS total_itens;