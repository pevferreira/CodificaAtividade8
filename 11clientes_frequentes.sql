SELECT 
    nome_cliente,
    COUNT(*) AS total_comandas,
    CONCAT('R$ ', FORMAT(SUM(valor_total), 2)) AS total_gasto
FROM (
    SELECT 
        c.nome_cliente,
        c.codigo,
        SUM(ic.quantidade * card.preco_unitario) AS valor_total
    FROM Comanda c
    INNER JOIN ItemComanda ic ON c.codigo = ic.codigo_comanda
    INNER JOIN Cardapio card ON ic.codigo_cardapio = card.codigo
    GROUP BY c.nome_cliente, c.codigo
) AS cliente_comandas
GROUP BY nome_cliente
HAVING total_comandas > 1
ORDER BY total_gasto DESC;