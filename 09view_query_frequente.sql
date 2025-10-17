-- View para relatório diário
CREATE VIEW VW_Relatorio_Diario AS
SELECT 
    c.data,
    COUNT(DISTINCT c.codigo) AS total_comandas,
    SUM(ic.quantidade) AS total_cafes_vendidos,
    SUM(ic.quantidade * card.preco_unitario) AS faturamento_total
FROM Comanda c
INNER JOIN ItemComanda ic ON c.codigo = ic.codigo_comanda
INNER JOIN Cardapio card ON ic.codigo_cardapio = card.codigo
GROUP BY c.data;

-- View para top produtos
CREATE VIEW VW_Top_Produtos AS
SELECT 
    card.nome,
    SUM(ic.quantidade) AS total_vendido,
    SUM(ic.quantidade * card.preco_unitario) AS faturamento
FROM ItemComanda ic
INNER JOIN Cardapio card ON ic.codigo_cardapio = card.codigo
GROUP BY card.codigo, card.nome
ORDER BY total_vendido DESC;