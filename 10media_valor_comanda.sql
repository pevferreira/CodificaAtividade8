SELECT 
    DATE_FORMAT(data, '%Y-%m') AS mes,
    COUNT(*) AS total_comandas,
    CONCAT('R$ ', FORMAT(AVG(valor_total), 2)) AS media_comanda
FROM (
    SELECT 
        c.data,
        c.codigo,
        SUM(ic.quantidade * card.preco_unitario) AS valor_total
    FROM Comanda c
    INNER JOIN ItemComanda ic ON c.codigo = ic.codigo_comanda
    INNER JOIN Cardapio card ON ic.codigo_cardapio = card.codigo
    GROUP BY c.data, c.codigo
) AS comandas
GROUP BY DATE_FORMAT(data, '%Y-%m')
ORDER BY mes;