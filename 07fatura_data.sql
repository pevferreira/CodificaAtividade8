SELECT 
    DATE_FORMAT(c.data, '%d/%m/%Y') AS data,
    CONCAT('R$ ', FORMAT(SUM(ic.quantidade * card.preco_unitario), 2)) AS faturamento_dia
FROM Comanda c
INNER JOIN ItemComanda ic ON c.codigo = ic.codigo_comanda
INNER JOIN Cardapio card ON ic.codigo_cardapio = card.codigo
GROUP BY c.data
ORDER BY c.data;