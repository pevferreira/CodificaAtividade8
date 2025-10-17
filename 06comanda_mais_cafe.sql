SELECT 
    c.codigo,
    DATE_FORMAT(c.data, '%d/%m/%Y') AS data,
    c.mesa,
    c.nome_cliente,
    COUNT(ic.codigo_cardapio) AS tipos_cafe,
    CONCAT('R$ ', FORMAT(SUM(ic.quantidade * card.preco_unitario), 2)) AS valor_total
FROM Comanda c
INNER JOIN ItemComanda ic ON c.codigo = ic.codigo_comanda
INNER JOIN Cardapio card ON ic.codigo_cardapio = card.codigo
GROUP BY c.codigo, c.data, c.mesa, c.nome_cliente
HAVING COUNT(ic.codigo_cardapio) > 1
ORDER BY c.data;